; ModuleID = 'kernel/locking/semaphore.c'
source_filename = "kernel/locking/semaphore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_down: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad down ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_down_interruptible: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad down_interruptible ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_down_killable: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad down_killable ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_down_trylock: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad down_trylock ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_down_timeout: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad down_timeout ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_up: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad up ; .previous"

%struct.static_call_key = type { ptr, %union.anon.1 }
%union.anon.1 = type { i64 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.2 }
%struct.atomic_t = type { i32 }
%union.anon.2 = type { i64 }
%struct.pcpu_hot = type { %union.anon.3 }
%union.anon.3 = type { %struct.anon.4, [16 x i8] }
%struct.anon.4 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.cpumask = type { [1 x i64] }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.semaphore_waiter = type { %struct.list_head, ptr, i8 }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i64, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, ptr, [32 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, %union.rcu_special, %struct.list_head, ptr, i64, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i16, i64, %struct.restart_block, i32, i32, i64, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, ptr, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, %struct.task_io_accounting, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.mutex, i32, ptr, %struct.mutex, %struct.list_head, ptr, i16, i16, ptr, i32, i32, i64, i32, i32, i32, i32, %struct.callback_head, %struct.tlbflush_unmap_batch, ptr, %struct.page_frag, ptr, i32, i32, i64, i64, i64, i64, ptr, ptr, %struct.kmap_ctrl, %struct.callback_head, %struct.refcount_struct, i32, ptr, %struct.timer_list, ptr, %struct.refcount_struct, ptr, ptr, i64, i64, i64, %struct.callback_head, i32, %struct.llist_head, %struct.llist_head, %struct.callback_head, [48 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i64, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.5, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.5 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, i64, i64, %struct.list_head, i32, i64, i64, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i64, [16 x i8], %struct.sched_avg }
%struct.load_weight = type { i64, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i64, i64, i64, %struct.util_est }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i64, i64, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [32 x i8] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i64, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i64, ptr, ptr }
%struct.restart_block = type { i64, ptr, %union.anon.7 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.13, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.16 }
%union.anon.13 = type { %struct.anon.14 }
%struct.anon.14 = type { i64, i64 }
%union.anon.16 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }

@__UNIQUE_ID___addressable_down312 = internal global ptr @down, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_down_interruptible313 = internal global ptr @down_interruptible, section ".discard.addressable", align 8, !dbg !4119
@__UNIQUE_ID___addressable_down_killable314 = internal global ptr @down_killable, section ".discard.addressable", align 8, !dbg !4121
@__UNIQUE_ID___addressable_down_trylock315 = internal global ptr @down_trylock, section ".discard.addressable", align 8, !dbg !4123
@__UNIQUE_ID___addressable_down_timeout316 = internal global ptr @down_timeout, section ".discard.addressable", align 8, !dbg !4125
@__UNIQUE_ID___addressable_up317 = internal global ptr @up, section ".discard.addressable", align 8, !dbg !4127
@might_resched.__UNIQUE_ID___addressable___SCK__might_resched2 = internal global ptr @__SCK__might_resched, section ".discard.addressable", align 8, !dbg !4129
@__SCK__might_resched = external dso_local global %struct.static_call_key, align 8
@__tracepoint_contention_begin = external dso_local global %struct.tracepoint, align 8
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str = private unnamed_addr constant [28 x i8] c"include/trace/events/lock.h\00", align 1, !dbg !4133
@trace_contention_begin.__UNIQUE_ID___addressable___SCK__tp_func_contention_begin298 = internal global ptr @__SCK__tp_func_contention_begin, section ".discard.addressable", align 8, !dbg !4139
@__SCK__tp_func_contention_begin = external dso_local global %struct.static_call_key, align 8
@trace_contention_begin.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace299 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !4168
@__SCK__preempt_schedule_notrace = external dso_local global %struct.static_call_key, align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@__tracepoint_contention_end = external dso_local global %struct.tracepoint, align 8
@trace_contention_end.__UNIQUE_ID___addressable___SCK__tp_func_contention_end306 = internal global ptr @__SCK__tp_func_contention_end, section ".discard.addressable", align 8, !dbg !4170
@__SCK__tp_func_contention_end = external dso_local global %struct.static_call_key, align 8
@trace_contention_end.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace307 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !4199
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID___addressable_down312, ptr @__UNIQUE_ID___addressable_down_interruptible313, ptr @__UNIQUE_ID___addressable_down_killable314, ptr @__UNIQUE_ID___addressable_down_trylock315, ptr @__UNIQUE_ID___addressable_down_timeout316, ptr @__UNIQUE_ID___addressable_up317, ptr @might_resched.__UNIQUE_ID___addressable___SCK__might_resched2, ptr @trace_contention_begin.__UNIQUE_ID___addressable___SCK__tp_func_contention_begin298, ptr @trace_contention_begin.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace299, ptr @trace_contention_end.__UNIQUE_ID___addressable___SCK__tp_func_contention_end306, ptr @trace_contention_end.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace307], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @down(ptr noundef %sem) #0 section ".sched.text" align 16 !dbg !4211 {
entry:
  %sem.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy10 = alloca i64, align 8
  %__dummy211 = alloca i64, align 8
  %tmp14 = alloca i32, align 4
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !4222, metadata !DIExpression()), !dbg !4232
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #12, !dbg !4233
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4223, metadata !DIExpression()), !dbg !4234
  br label %do.body, !dbg !4235

do.body:                                          ; preds = %entry
  call void @might_resched() #13, !dbg !4236
  br label %do.cond, !dbg !4236

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4236

do.end:                                           ; preds = %do.cond
  br label %do.body1, !dbg !4238

do.body1:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #12, !dbg !4239
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4224, metadata !DIExpression()), !dbg !4239
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #12, !dbg !4239
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4227, metadata !DIExpression()), !dbg !4239
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !4239
  %conv = zext i1 %cmp to i32, !dbg !4239
  store i32 1, ptr %tmp, align 4, !dbg !4239
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #12, !dbg !4240
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #12, !dbg !4240
  %0 = load i32, ptr %tmp, align 4, !dbg !4239
  %1 = load ptr, ptr %sem.addr, align 8, !dbg !4240
  %lock = getelementptr inbounds %struct.semaphore, ptr %1, i32 0, i32 0, !dbg !4240
  %call = call i64 @_raw_spin_lock_irqsave(ptr noundef %lock) #13, !dbg !4240
  store i64 %call, ptr %flags, align 8, !dbg !4240
  br label %do.cond2, !dbg !4240

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !4240

do.end3:                                          ; preds = %do.cond2
  %2 = load ptr, ptr %sem.addr, align 8, !dbg !4241
  %count = getelementptr inbounds %struct.semaphore, ptr %2, i32 0, i32 1, !dbg !4241
  %3 = load i32, ptr %count, align 4, !dbg !4241
  %cmp4 = icmp ugt i32 %3, 0, !dbg !4241
  %lnot = xor i1 %cmp4, true, !dbg !4241
  %lnot6 = xor i1 %lnot, true, !dbg !4241
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !4241
  %conv7 = sext i32 %lnot.ext to i64, !dbg !4241
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 1), !dbg !4241
  %tobool = icmp ne i64 %expval, 0, !dbg !4241
  br i1 %tobool, label %if.then, label %if.else, !dbg !4243

if.then:                                          ; preds = %do.end3
  %4 = load ptr, ptr %sem.addr, align 8, !dbg !4244
  %count8 = getelementptr inbounds %struct.semaphore, ptr %4, i32 0, i32 1, !dbg !4245
  %5 = load i32, ptr %count8, align 4, !dbg !4246
  %dec = add i32 %5, -1, !dbg !4246
  store i32 %dec, ptr %count8, align 4, !dbg !4246
  br label %if.end, !dbg !4244

if.else:                                          ; preds = %do.end3
  %6 = load ptr, ptr %sem.addr, align 8, !dbg !4247
  call void @__down(ptr noundef %6) #13, !dbg !4248
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.body9, !dbg !4249

do.body9:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy10) #12, !dbg !4250
  call void @llvm.dbg.declare(metadata ptr %__dummy10, metadata !4228, metadata !DIExpression()), !dbg !4250
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy211) #12, !dbg !4250
  call void @llvm.dbg.declare(metadata ptr %__dummy211, metadata !4231, metadata !DIExpression()), !dbg !4250
  %cmp12 = icmp eq ptr %__dummy10, %__dummy211, !dbg !4250
  %conv13 = zext i1 %cmp12 to i32, !dbg !4250
  store i32 1, ptr %tmp14, align 4, !dbg !4250
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy211) #12, !dbg !4251
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy10) #12, !dbg !4251
  %7 = load i32, ptr %tmp14, align 4, !dbg !4250
  %8 = load ptr, ptr %sem.addr, align 8, !dbg !4251
  %lock15 = getelementptr inbounds %struct.semaphore, ptr %8, i32 0, i32 0, !dbg !4251
  %9 = load i64, ptr %flags, align 8, !dbg !4251
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock15, i64 noundef %9) #13, !dbg !4251
  br label %do.cond16, !dbg !4251

do.cond16:                                        ; preds = %do.body9
  br label %do.end17, !dbg !4251

do.end17:                                         ; preds = %do.cond16
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #12, !dbg !4252
  ret void, !dbg !4252
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_resched() #3 align 16 !dbg !4131 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__might_resched, ptr %tmp, align 8, !dbg !4253
  %0 = load ptr, ptr %tmp, align 8, !dbg !4253
  %call = call i32 %0() #13, !dbg !4255
  ret void, !dbg !4256
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4257 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__down(ptr noundef %sem) #6 section ".sched.text" align 16 !dbg !4262 {
entry:
  %sem.addr = alloca ptr, align 8
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !4264, metadata !DIExpression()), !dbg !4265
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !4266
  %call = call i32 @__down_common(ptr noundef %0, i64 noundef 2, i64 noundef 9223372036854775807) #13, !dbg !4267
  ret void, !dbg !4268
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4269 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #4 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @down_interruptible(ptr noundef %sem) #0 section ".sched.text" align 16 !dbg !4272 {
entry:
  %sem.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %result = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy11 = alloca i64, align 8
  %__dummy212 = alloca i64, align 8
  %tmp15 = alloca i32, align 4
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !4276, metadata !DIExpression()), !dbg !4287
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #12, !dbg !4288
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4277, metadata !DIExpression()), !dbg !4289
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #12, !dbg !4290
  call void @llvm.dbg.declare(metadata ptr %result, metadata !4278, metadata !DIExpression()), !dbg !4291
  store i32 0, ptr %result, align 4, !dbg !4291
  br label %do.body, !dbg !4292

do.body:                                          ; preds = %entry
  call void @might_resched() #13, !dbg !4293
  br label %do.cond, !dbg !4293

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4293

do.end:                                           ; preds = %do.cond
  br label %do.body1, !dbg !4295

do.body1:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #12, !dbg !4296
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4279, metadata !DIExpression()), !dbg !4296
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #12, !dbg !4296
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4282, metadata !DIExpression()), !dbg !4296
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !4296
  %conv = zext i1 %cmp to i32, !dbg !4296
  store i32 1, ptr %tmp, align 4, !dbg !4296
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #12, !dbg !4297
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #12, !dbg !4297
  %0 = load i32, ptr %tmp, align 4, !dbg !4296
  %1 = load ptr, ptr %sem.addr, align 8, !dbg !4297
  %lock = getelementptr inbounds %struct.semaphore, ptr %1, i32 0, i32 0, !dbg !4297
  %call = call i64 @_raw_spin_lock_irqsave(ptr noundef %lock) #13, !dbg !4297
  store i64 %call, ptr %flags, align 8, !dbg !4297
  br label %do.cond2, !dbg !4297

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !4297

do.end3:                                          ; preds = %do.cond2
  %2 = load ptr, ptr %sem.addr, align 8, !dbg !4298
  %count = getelementptr inbounds %struct.semaphore, ptr %2, i32 0, i32 1, !dbg !4298
  %3 = load i32, ptr %count, align 4, !dbg !4298
  %cmp4 = icmp ugt i32 %3, 0, !dbg !4298
  %lnot = xor i1 %cmp4, true, !dbg !4298
  %lnot6 = xor i1 %lnot, true, !dbg !4298
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !4298
  %conv7 = sext i32 %lnot.ext to i64, !dbg !4298
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 1), !dbg !4298
  %tobool = icmp ne i64 %expval, 0, !dbg !4298
  br i1 %tobool, label %if.then, label %if.else, !dbg !4300

if.then:                                          ; preds = %do.end3
  %4 = load ptr, ptr %sem.addr, align 8, !dbg !4301
  %count8 = getelementptr inbounds %struct.semaphore, ptr %4, i32 0, i32 1, !dbg !4302
  %5 = load i32, ptr %count8, align 4, !dbg !4303
  %dec = add i32 %5, -1, !dbg !4303
  store i32 %dec, ptr %count8, align 4, !dbg !4303
  br label %if.end, !dbg !4301

if.else:                                          ; preds = %do.end3
  %6 = load ptr, ptr %sem.addr, align 8, !dbg !4304
  %call9 = call i32 @__down_interruptible(ptr noundef %6) #13, !dbg !4305
  store i32 %call9, ptr %result, align 4, !dbg !4306
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.body10, !dbg !4307

do.body10:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy11) #12, !dbg !4308
  call void @llvm.dbg.declare(metadata ptr %__dummy11, metadata !4283, metadata !DIExpression()), !dbg !4308
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy212) #12, !dbg !4308
  call void @llvm.dbg.declare(metadata ptr %__dummy212, metadata !4286, metadata !DIExpression()), !dbg !4308
  %cmp13 = icmp eq ptr %__dummy11, %__dummy212, !dbg !4308
  %conv14 = zext i1 %cmp13 to i32, !dbg !4308
  store i32 1, ptr %tmp15, align 4, !dbg !4308
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy212) #12, !dbg !4309
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy11) #12, !dbg !4309
  %7 = load i32, ptr %tmp15, align 4, !dbg !4308
  %8 = load ptr, ptr %sem.addr, align 8, !dbg !4309
  %lock16 = getelementptr inbounds %struct.semaphore, ptr %8, i32 0, i32 0, !dbg !4309
  %9 = load i64, ptr %flags, align 8, !dbg !4309
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock16, i64 noundef %9) #13, !dbg !4309
  br label %do.cond17, !dbg !4309

do.cond17:                                        ; preds = %do.body10
  br label %do.end18, !dbg !4309

do.end18:                                         ; preds = %do.cond17
  %10 = load i32, ptr %result, align 4, !dbg !4310
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #12, !dbg !4311
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #12, !dbg !4311
  ret i32 %10, !dbg !4312
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__down_interruptible(ptr noundef %sem) #6 section ".sched.text" align 16 !dbg !4313 {
entry:
  %sem.addr = alloca ptr, align 8
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !4315, metadata !DIExpression()), !dbg !4316
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !4317
  %call = call i32 @__down_common(ptr noundef %0, i64 noundef 1, i64 noundef 9223372036854775807) #13, !dbg !4318
  ret i32 %call, !dbg !4319
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @down_killable(ptr noundef %sem) #0 section ".sched.text" align 16 !dbg !4320 {
entry:
  %sem.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %result = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy11 = alloca i64, align 8
  %__dummy212 = alloca i64, align 8
  %tmp15 = alloca i32, align 4
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !4322, metadata !DIExpression()), !dbg !4333
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #12, !dbg !4334
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4323, metadata !DIExpression()), !dbg !4335
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #12, !dbg !4336
  call void @llvm.dbg.declare(metadata ptr %result, metadata !4324, metadata !DIExpression()), !dbg !4337
  store i32 0, ptr %result, align 4, !dbg !4337
  br label %do.body, !dbg !4338

do.body:                                          ; preds = %entry
  call void @might_resched() #13, !dbg !4339
  br label %do.cond, !dbg !4339

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4339

do.end:                                           ; preds = %do.cond
  br label %do.body1, !dbg !4341

do.body1:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #12, !dbg !4342
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4325, metadata !DIExpression()), !dbg !4342
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #12, !dbg !4342
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4328, metadata !DIExpression()), !dbg !4342
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !4342
  %conv = zext i1 %cmp to i32, !dbg !4342
  store i32 1, ptr %tmp, align 4, !dbg !4342
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #12, !dbg !4343
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #12, !dbg !4343
  %0 = load i32, ptr %tmp, align 4, !dbg !4342
  %1 = load ptr, ptr %sem.addr, align 8, !dbg !4343
  %lock = getelementptr inbounds %struct.semaphore, ptr %1, i32 0, i32 0, !dbg !4343
  %call = call i64 @_raw_spin_lock_irqsave(ptr noundef %lock) #13, !dbg !4343
  store i64 %call, ptr %flags, align 8, !dbg !4343
  br label %do.cond2, !dbg !4343

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !4343

do.end3:                                          ; preds = %do.cond2
  %2 = load ptr, ptr %sem.addr, align 8, !dbg !4344
  %count = getelementptr inbounds %struct.semaphore, ptr %2, i32 0, i32 1, !dbg !4344
  %3 = load i32, ptr %count, align 4, !dbg !4344
  %cmp4 = icmp ugt i32 %3, 0, !dbg !4344
  %lnot = xor i1 %cmp4, true, !dbg !4344
  %lnot6 = xor i1 %lnot, true, !dbg !4344
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !4344
  %conv7 = sext i32 %lnot.ext to i64, !dbg !4344
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 1), !dbg !4344
  %tobool = icmp ne i64 %expval, 0, !dbg !4344
  br i1 %tobool, label %if.then, label %if.else, !dbg !4346

if.then:                                          ; preds = %do.end3
  %4 = load ptr, ptr %sem.addr, align 8, !dbg !4347
  %count8 = getelementptr inbounds %struct.semaphore, ptr %4, i32 0, i32 1, !dbg !4348
  %5 = load i32, ptr %count8, align 4, !dbg !4349
  %dec = add i32 %5, -1, !dbg !4349
  store i32 %dec, ptr %count8, align 4, !dbg !4349
  br label %if.end, !dbg !4347

if.else:                                          ; preds = %do.end3
  %6 = load ptr, ptr %sem.addr, align 8, !dbg !4350
  %call9 = call i32 @__down_killable(ptr noundef %6) #13, !dbg !4351
  store i32 %call9, ptr %result, align 4, !dbg !4352
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.body10, !dbg !4353

do.body10:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy11) #12, !dbg !4354
  call void @llvm.dbg.declare(metadata ptr %__dummy11, metadata !4329, metadata !DIExpression()), !dbg !4354
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy212) #12, !dbg !4354
  call void @llvm.dbg.declare(metadata ptr %__dummy212, metadata !4332, metadata !DIExpression()), !dbg !4354
  %cmp13 = icmp eq ptr %__dummy11, %__dummy212, !dbg !4354
  %conv14 = zext i1 %cmp13 to i32, !dbg !4354
  store i32 1, ptr %tmp15, align 4, !dbg !4354
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy212) #12, !dbg !4355
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy11) #12, !dbg !4355
  %7 = load i32, ptr %tmp15, align 4, !dbg !4354
  %8 = load ptr, ptr %sem.addr, align 8, !dbg !4355
  %lock16 = getelementptr inbounds %struct.semaphore, ptr %8, i32 0, i32 0, !dbg !4355
  %9 = load i64, ptr %flags, align 8, !dbg !4355
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock16, i64 noundef %9) #13, !dbg !4355
  br label %do.cond17, !dbg !4355

do.cond17:                                        ; preds = %do.body10
  br label %do.end18, !dbg !4355

do.end18:                                         ; preds = %do.cond17
  %10 = load i32, ptr %result, align 4, !dbg !4356
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #12, !dbg !4357
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #12, !dbg !4357
  ret i32 %10, !dbg !4358
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__down_killable(ptr noundef %sem) #6 section ".sched.text" align 16 !dbg !4359 {
entry:
  %sem.addr = alloca ptr, align 8
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !4361, metadata !DIExpression()), !dbg !4362
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !4363
  %call = call i32 @__down_common(ptr noundef %0, i64 noundef 258, i64 noundef 9223372036854775807) #13, !dbg !4364
  ret i32 %call, !dbg !4365
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @down_trylock(ptr noundef %sem) #0 section ".sched.text" align 16 !dbg !4366 {
entry:
  %sem.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %count = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy8 = alloca i64, align 8
  %__dummy29 = alloca i64, align 8
  %tmp12 = alloca i32, align 4
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !4368, metadata !DIExpression()), !dbg !4379
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #12, !dbg !4380
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4369, metadata !DIExpression()), !dbg !4381
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #12, !dbg !4382
  call void @llvm.dbg.declare(metadata ptr %count, metadata !4370, metadata !DIExpression()), !dbg !4383
  br label %do.body, !dbg !4384

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #12, !dbg !4385
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4371, metadata !DIExpression()), !dbg !4385
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #12, !dbg !4385
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4374, metadata !DIExpression()), !dbg !4385
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !4385
  %conv = zext i1 %cmp to i32, !dbg !4385
  store i32 1, ptr %tmp, align 4, !dbg !4385
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #12, !dbg !4386
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #12, !dbg !4386
  %0 = load i32, ptr %tmp, align 4, !dbg !4385
  %1 = load ptr, ptr %sem.addr, align 8, !dbg !4386
  %lock = getelementptr inbounds %struct.semaphore, ptr %1, i32 0, i32 0, !dbg !4386
  %call = call i64 @_raw_spin_lock_irqsave(ptr noundef %lock) #13, !dbg !4386
  store i64 %call, ptr %flags, align 8, !dbg !4386
  br label %do.cond, !dbg !4386

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4386

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %sem.addr, align 8, !dbg !4387
  %count1 = getelementptr inbounds %struct.semaphore, ptr %2, i32 0, i32 1, !dbg !4388
  %3 = load i32, ptr %count1, align 4, !dbg !4388
  %sub = sub i32 %3, 1, !dbg !4389
  store i32 %sub, ptr %count, align 4, !dbg !4390
  %4 = load i32, ptr %count, align 4, !dbg !4391
  %cmp2 = icmp sge i32 %4, 0, !dbg !4391
  %lnot = xor i1 %cmp2, true, !dbg !4391
  %lnot4 = xor i1 %lnot, true, !dbg !4391
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !4391
  %conv5 = sext i32 %lnot.ext to i64, !dbg !4391
  %expval = call i64 @llvm.expect.i64(i64 %conv5, i64 1), !dbg !4391
  %tobool = icmp ne i64 %expval, 0, !dbg !4391
  br i1 %tobool, label %if.then, label %if.end, !dbg !4393

if.then:                                          ; preds = %do.end
  %5 = load i32, ptr %count, align 4, !dbg !4394
  %6 = load ptr, ptr %sem.addr, align 8, !dbg !4395
  %count6 = getelementptr inbounds %struct.semaphore, ptr %6, i32 0, i32 1, !dbg !4396
  store i32 %5, ptr %count6, align 4, !dbg !4397
  br label %if.end, !dbg !4395

if.end:                                           ; preds = %if.then, %do.end
  br label %do.body7, !dbg !4398

do.body7:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy8) #12, !dbg !4399
  call void @llvm.dbg.declare(metadata ptr %__dummy8, metadata !4375, metadata !DIExpression()), !dbg !4399
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy29) #12, !dbg !4399
  call void @llvm.dbg.declare(metadata ptr %__dummy29, metadata !4378, metadata !DIExpression()), !dbg !4399
  %cmp10 = icmp eq ptr %__dummy8, %__dummy29, !dbg !4399
  %conv11 = zext i1 %cmp10 to i32, !dbg !4399
  store i32 1, ptr %tmp12, align 4, !dbg !4399
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy29) #12, !dbg !4400
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy8) #12, !dbg !4400
  %7 = load i32, ptr %tmp12, align 4, !dbg !4399
  %8 = load ptr, ptr %sem.addr, align 8, !dbg !4400
  %lock13 = getelementptr inbounds %struct.semaphore, ptr %8, i32 0, i32 0, !dbg !4400
  %9 = load i64, ptr %flags, align 8, !dbg !4400
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock13, i64 noundef %9) #13, !dbg !4400
  br label %do.cond14, !dbg !4400

do.cond14:                                        ; preds = %do.body7
  br label %do.end15, !dbg !4400

do.end15:                                         ; preds = %do.cond14
  %10 = load i32, ptr %count, align 4, !dbg !4401
  %cmp16 = icmp slt i32 %10, 0, !dbg !4402
  %conv17 = zext i1 %cmp16 to i32, !dbg !4402
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #12, !dbg !4403
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #12, !dbg !4403
  ret i32 %conv17, !dbg !4404
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @down_timeout(ptr noundef %sem, i64 noundef %timeout) #0 section ".sched.text" align 16 !dbg !4405 {
entry:
  %sem.addr = alloca ptr, align 8
  %timeout.addr = alloca i64, align 8
  %flags = alloca i64, align 8
  %result = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy11 = alloca i64, align 8
  %__dummy212 = alloca i64, align 8
  %tmp15 = alloca i32, align 4
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !4409, metadata !DIExpression()), !dbg !4421
  store i64 %timeout, ptr %timeout.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timeout.addr, metadata !4410, metadata !DIExpression()), !dbg !4422
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #12, !dbg !4423
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4411, metadata !DIExpression()), !dbg !4424
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #12, !dbg !4425
  call void @llvm.dbg.declare(metadata ptr %result, metadata !4412, metadata !DIExpression()), !dbg !4426
  store i32 0, ptr %result, align 4, !dbg !4426
  br label %do.body, !dbg !4427

do.body:                                          ; preds = %entry
  call void @might_resched() #13, !dbg !4428
  br label %do.cond, !dbg !4428

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4428

do.end:                                           ; preds = %do.cond
  br label %do.body1, !dbg !4430

do.body1:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #12, !dbg !4431
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4413, metadata !DIExpression()), !dbg !4431
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #12, !dbg !4431
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4416, metadata !DIExpression()), !dbg !4431
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !4431
  %conv = zext i1 %cmp to i32, !dbg !4431
  store i32 1, ptr %tmp, align 4, !dbg !4431
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #12, !dbg !4432
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #12, !dbg !4432
  %0 = load i32, ptr %tmp, align 4, !dbg !4431
  %1 = load ptr, ptr %sem.addr, align 8, !dbg !4432
  %lock = getelementptr inbounds %struct.semaphore, ptr %1, i32 0, i32 0, !dbg !4432
  %call = call i64 @_raw_spin_lock_irqsave(ptr noundef %lock) #13, !dbg !4432
  store i64 %call, ptr %flags, align 8, !dbg !4432
  br label %do.cond2, !dbg !4432

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !4432

do.end3:                                          ; preds = %do.cond2
  %2 = load ptr, ptr %sem.addr, align 8, !dbg !4433
  %count = getelementptr inbounds %struct.semaphore, ptr %2, i32 0, i32 1, !dbg !4433
  %3 = load i32, ptr %count, align 4, !dbg !4433
  %cmp4 = icmp ugt i32 %3, 0, !dbg !4433
  %lnot = xor i1 %cmp4, true, !dbg !4433
  %lnot6 = xor i1 %lnot, true, !dbg !4433
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !4433
  %conv7 = sext i32 %lnot.ext to i64, !dbg !4433
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 1), !dbg !4433
  %tobool = icmp ne i64 %expval, 0, !dbg !4433
  br i1 %tobool, label %if.then, label %if.else, !dbg !4435

if.then:                                          ; preds = %do.end3
  %4 = load ptr, ptr %sem.addr, align 8, !dbg !4436
  %count8 = getelementptr inbounds %struct.semaphore, ptr %4, i32 0, i32 1, !dbg !4437
  %5 = load i32, ptr %count8, align 4, !dbg !4438
  %dec = add i32 %5, -1, !dbg !4438
  store i32 %dec, ptr %count8, align 4, !dbg !4438
  br label %if.end, !dbg !4436

if.else:                                          ; preds = %do.end3
  %6 = load ptr, ptr %sem.addr, align 8, !dbg !4439
  %7 = load i64, ptr %timeout.addr, align 8, !dbg !4440
  %call9 = call i32 @__down_timeout(ptr noundef %6, i64 noundef %7) #13, !dbg !4441
  store i32 %call9, ptr %result, align 4, !dbg !4442
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.body10, !dbg !4443

do.body10:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy11) #12, !dbg !4444
  call void @llvm.dbg.declare(metadata ptr %__dummy11, metadata !4417, metadata !DIExpression()), !dbg !4444
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy212) #12, !dbg !4444
  call void @llvm.dbg.declare(metadata ptr %__dummy212, metadata !4420, metadata !DIExpression()), !dbg !4444
  %cmp13 = icmp eq ptr %__dummy11, %__dummy212, !dbg !4444
  %conv14 = zext i1 %cmp13 to i32, !dbg !4444
  store i32 1, ptr %tmp15, align 4, !dbg !4444
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy212) #12, !dbg !4445
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy11) #12, !dbg !4445
  %8 = load i32, ptr %tmp15, align 4, !dbg !4444
  %9 = load ptr, ptr %sem.addr, align 8, !dbg !4445
  %lock16 = getelementptr inbounds %struct.semaphore, ptr %9, i32 0, i32 0, !dbg !4445
  %10 = load i64, ptr %flags, align 8, !dbg !4445
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock16, i64 noundef %10) #13, !dbg !4445
  br label %do.cond17, !dbg !4445

do.cond17:                                        ; preds = %do.body10
  br label %do.end18, !dbg !4445

do.end18:                                         ; preds = %do.cond17
  %11 = load i32, ptr %result, align 4, !dbg !4446
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #12, !dbg !4447
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #12, !dbg !4447
  ret i32 %11, !dbg !4448
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__down_timeout(ptr noundef %sem, i64 noundef %timeout) #6 section ".sched.text" align 16 !dbg !4449 {
entry:
  %sem.addr = alloca ptr, align 8
  %timeout.addr = alloca i64, align 8
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !4451, metadata !DIExpression()), !dbg !4453
  store i64 %timeout, ptr %timeout.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timeout.addr, metadata !4452, metadata !DIExpression()), !dbg !4454
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !4455
  %1 = load i64, ptr %timeout.addr, align 8, !dbg !4456
  %call = call i32 @__down_common(ptr noundef %0, i64 noundef 2, i64 noundef %1) #13, !dbg !4457
  ret i32 %call, !dbg !4458
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @up(ptr noundef %sem) #0 section ".sched.text" align 16 !dbg !4459 {
entry:
  %sem.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy6 = alloca i64, align 8
  %__dummy27 = alloca i64, align 8
  %tmp10 = alloca i32, align 4
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !4461, metadata !DIExpression()), !dbg !4471
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #12, !dbg !4472
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4462, metadata !DIExpression()), !dbg !4473
  br label %do.body, !dbg !4474

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #12, !dbg !4475
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4463, metadata !DIExpression()), !dbg !4475
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #12, !dbg !4475
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4466, metadata !DIExpression()), !dbg !4475
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !4475
  %conv = zext i1 %cmp to i32, !dbg !4475
  store i32 1, ptr %tmp, align 4, !dbg !4475
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #12, !dbg !4476
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #12, !dbg !4476
  %0 = load i32, ptr %tmp, align 4, !dbg !4475
  %1 = load ptr, ptr %sem.addr, align 8, !dbg !4476
  %lock = getelementptr inbounds %struct.semaphore, ptr %1, i32 0, i32 0, !dbg !4476
  %call = call i64 @_raw_spin_lock_irqsave(ptr noundef %lock) #13, !dbg !4476
  store i64 %call, ptr %flags, align 8, !dbg !4476
  br label %do.cond, !dbg !4476

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4476

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %sem.addr, align 8, !dbg !4477
  %wait_list = getelementptr inbounds %struct.semaphore, ptr %2, i32 0, i32 2, !dbg !4477
  %call1 = call i32 @list_empty(ptr noundef %wait_list) #13, !dbg !4477
  %tobool = icmp ne i32 %call1, 0, !dbg !4477
  %lnot = xor i1 %tobool, true, !dbg !4477
  %lnot2 = xor i1 %lnot, true, !dbg !4477
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4477
  %conv3 = sext i32 %lnot.ext to i64, !dbg !4477
  %expval = call i64 @llvm.expect.i64(i64 %conv3, i64 1), !dbg !4477
  %tobool4 = icmp ne i64 %expval, 0, !dbg !4477
  br i1 %tobool4, label %if.then, label %if.else, !dbg !4479

if.then:                                          ; preds = %do.end
  %3 = load ptr, ptr %sem.addr, align 8, !dbg !4480
  %count = getelementptr inbounds %struct.semaphore, ptr %3, i32 0, i32 1, !dbg !4481
  %4 = load i32, ptr %count, align 4, !dbg !4482
  %inc = add i32 %4, 1, !dbg !4482
  store i32 %inc, ptr %count, align 4, !dbg !4482
  br label %if.end, !dbg !4480

if.else:                                          ; preds = %do.end
  %5 = load ptr, ptr %sem.addr, align 8, !dbg !4483
  call void @__up(ptr noundef %5) #13, !dbg !4484
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.body5, !dbg !4485

do.body5:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy6) #12, !dbg !4486
  call void @llvm.dbg.declare(metadata ptr %__dummy6, metadata !4467, metadata !DIExpression()), !dbg !4486
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy27) #12, !dbg !4486
  call void @llvm.dbg.declare(metadata ptr %__dummy27, metadata !4470, metadata !DIExpression()), !dbg !4486
  %cmp8 = icmp eq ptr %__dummy6, %__dummy27, !dbg !4486
  %conv9 = zext i1 %cmp8 to i32, !dbg !4486
  store i32 1, ptr %tmp10, align 4, !dbg !4486
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy27) #12, !dbg !4487
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy6) #12, !dbg !4487
  %6 = load i32, ptr %tmp10, align 4, !dbg !4486
  %7 = load ptr, ptr %sem.addr, align 8, !dbg !4487
  %lock11 = getelementptr inbounds %struct.semaphore, ptr %7, i32 0, i32 0, !dbg !4487
  %8 = load i64, ptr %flags, align 8, !dbg !4487
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock11, i64 noundef %8) #13, !dbg !4487
  br label %do.cond12, !dbg !4487

do.cond12:                                        ; preds = %do.body5
  br label %do.end13, !dbg !4487

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #12, !dbg !4488
  ret void, !dbg !4488
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #7 align 16 !dbg !4489 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !4496, metadata !DIExpression()), !dbg !4497
  br label %do.body, !dbg !4498

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4500

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !4498
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !4498
  %1 = load volatile ptr, ptr %next, align 8, !dbg !4498
  store ptr %1, ptr %tmp, align 8, !dbg !4500
  %2 = load ptr, ptr %tmp, align 8, !dbg !4498
  %3 = load ptr, ptr %head.addr, align 8, !dbg !4502
  %cmp = icmp eq ptr %2, %3, !dbg !4503
  %conv = zext i1 %cmp to i32, !dbg !4503
  ret i32 %conv, !dbg !4504
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__up(ptr noundef %sem) #6 section ".sched.text" align 16 !dbg !4505 {
entry:
  %sem.addr = alloca ptr, align 8
  %waiter = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !4507, metadata !DIExpression()), !dbg !4511
  call void @llvm.lifetime.start.p0(i64 8, ptr %waiter) #12, !dbg !4512
  call void @llvm.dbg.declare(metadata ptr %waiter, metadata !4508, metadata !DIExpression()), !dbg !4513
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #12, !dbg !4514
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4509, metadata !DIExpression()), !dbg !4514
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !4514
  %wait_list = getelementptr inbounds %struct.semaphore, ptr %0, i32 0, i32 2, !dbg !4514
  %next = getelementptr inbounds %struct.list_head, ptr %wait_list, i32 0, i32 0, !dbg !4514
  %1 = load ptr, ptr %next, align 8, !dbg !4514
  store ptr %1, ptr %__mptr, align 8, !dbg !4514
  %2 = load ptr, ptr %__mptr, align 8, !dbg !4514
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !4514
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4514
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #12, !dbg !4515
  %3 = load ptr, ptr %tmp, align 8, !dbg !4514
  store ptr %3, ptr %waiter, align 8, !dbg !4513
  %4 = load ptr, ptr %waiter, align 8, !dbg !4516
  %list = getelementptr inbounds %struct.semaphore_waiter, ptr %4, i32 0, i32 0, !dbg !4517
  call void @list_del(ptr noundef %list) #13, !dbg !4518
  %5 = load ptr, ptr %waiter, align 8, !dbg !4519
  %up = getelementptr inbounds %struct.semaphore_waiter, ptr %5, i32 0, i32 2, !dbg !4520
  store i8 1, ptr %up, align 8, !dbg !4521
  %6 = load ptr, ptr %waiter, align 8, !dbg !4522
  %task = getelementptr inbounds %struct.semaphore_waiter, ptr %6, i32 0, i32 1, !dbg !4523
  %7 = load ptr, ptr %task, align 8, !dbg !4523
  %call = call i32 @wake_up_process(ptr noundef %7) #13, !dbg !4524
  call void @llvm.lifetime.end.p0(i64 8, ptr %waiter) #12, !dbg !4525
  ret void, !dbg !4525
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__down_common(ptr noundef %sem, i64 noundef %state, i64 noundef %timeout) #7 section ".sched.text" align 16 !dbg !4526 {
entry:
  %sem.addr = alloca ptr, align 8
  %state.addr = alloca i64, align 8
  %timeout.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !4530, metadata !DIExpression()), !dbg !4534
  store i64 %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !4531, metadata !DIExpression()), !dbg !4535
  store i64 %timeout, ptr %timeout.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timeout.addr, metadata !4532, metadata !DIExpression()), !dbg !4536
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #12, !dbg !4537
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4533, metadata !DIExpression()), !dbg !4538
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !4539
  call void @trace_contention_begin(ptr noundef %0, i32 noundef 0) #13, !dbg !4540
  %1 = load ptr, ptr %sem.addr, align 8, !dbg !4541
  %2 = load i64, ptr %state.addr, align 8, !dbg !4542
  %3 = load i64, ptr %timeout.addr, align 8, !dbg !4543
  %call = call i32 @___down_common(ptr noundef %1, i64 noundef %2, i64 noundef %3) #13, !dbg !4544
  store i32 %call, ptr %ret, align 4, !dbg !4545
  %4 = load ptr, ptr %sem.addr, align 8, !dbg !4546
  %5 = load i32, ptr %ret, align 4, !dbg !4547
  call void @trace_contention_end(ptr noundef %4, i32 noundef %5) #13, !dbg !4548
  %6 = load i32, ptr %ret, align 4, !dbg !4549
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #12, !dbg !4550
  ret i32 %6, !dbg !4551
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_contention_begin(ptr noundef %lock, i32 noundef %flags) #7 align 16 !dbg !4141 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
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
  %__UNIQUE_ID_rcu296 = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %tmp45 = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4145, metadata !DIExpression()), !dbg !4552
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4146, metadata !DIExpression()), !dbg !4552
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_contention_begin, i32 0, i32 1)) #13, !dbg !4553
  br i1 %call, label %if.then, label %if.end68, !dbg !4552

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4553

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__idx) #12, !dbg !4554
  call void @llvm.dbg.declare(metadata ptr %__idx, metadata !4147, metadata !DIExpression()), !dbg !4554
  store i32 0, ptr %__idx, align 4, !dbg !4554
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #12, !dbg !4555
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4150, metadata !DIExpression()), !dbg !4555
  br label %do.body1, !dbg !4555

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !4556
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4153, metadata !DIExpression()), !dbg !4556
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4556
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4556
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !4555
  br label %do.cond, !dbg !4556

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !4556

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #12, !dbg !4557
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4155, metadata !DIExpression()), !dbg !4557
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 2)) #12, !dbg !4557, !srcloc !4558
  store i32 %1, ptr %pfo_val__, align 4, !dbg !4557
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !4557
  %conv = zext i32 %2 to i64, !dbg !4557
  %conv2 = trunc i64 %conv to i32, !dbg !4557
  store i32 %conv2, ptr %tmp, align 4, !dbg !4557
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #12, !dbg !4555
  %3 = load i32, ptr %tmp, align 4, !dbg !4557
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !4555
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !4555
  store i32 %4, ptr %tmp3, align 4, !dbg !4555
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #12, !dbg !4559
  %5 = load i32, ptr %tmp3, align 4, !dbg !4555
  %call4 = call zeroext i1 @cpu_online(i32 noundef %5) #13, !dbg !4559
  br i1 %call4, label %if.end, label %if.then5, !dbg !4554

if.then5:                                         ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4559

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !4560
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4157, metadata !DIExpression()), !dbg !4560
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !4560
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !4561
  %tobool = icmp ne i32 %6, 0, !dbg !4561
  %lnot = xor i1 %tobool, true, !dbg !4561
  %lnot6 = xor i1 %lnot, true, !dbg !4561
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !4561
  %conv7 = sext i32 %lnot.ext to i64, !dbg !4561
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !4561
  %tobool8 = icmp ne i64 %expval, 0, !dbg !4561
  br i1 %tobool8, label %if.then9, label %if.end22, !dbg !4560

if.then9:                                         ; preds = %if.end
  br label %do.body10, !dbg !4561

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !4562
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4160, metadata !DIExpression()), !dbg !4562
  store i32 2307, ptr %__flags, align 4, !dbg !4562
  br label %do.body11, !dbg !4562

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !4563

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !4563

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !4562

do.body14:                                        ; preds = %do.end13
  %7 = load i32, ptr %__flags, align 4, !dbg !4565
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 120, i32 %7, i64 12) #12, !dbg !4565, !srcloc !4567
  br label %do.cond15, !dbg !4565

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !4565

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !4562

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !4568

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !4568

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !4561
  br label %do.cond20, !dbg !4562

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !4562

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !4562

if.end22:                                         ; preds = %do.end21, %if.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !4560
  %tobool24 = icmp ne i32 %8, 0, !dbg !4560
  %lnot25 = xor i1 %tobool24, true, !dbg !4560
  %lnot27 = xor i1 %lnot25, true, !dbg !4560
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !4560
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !4560
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !4560
  store i64 %expval30, ptr %tmp23, align 8, !dbg !4561
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !4570
  %9 = load i64, ptr %tmp23, align 8, !dbg !4560
  %tobool31 = icmp ne i64 %9, 0, !dbg !4570
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !4554

if.then32:                                        ; preds = %if.end22
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4570

if.end33:                                         ; preds = %if.end22
  br label %do.body34, !dbg !4554

do.body34:                                        ; preds = %if.end33
  call void @__preempt_count_add(i32 noundef 1) #13, !dbg !4571
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !4571, !srcloc !4573
  br label %do.cond35, !dbg !4571

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !4571

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !4554

do.body37:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #12, !dbg !4574
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !4163, metadata !DIExpression()), !dbg !4574
  call void @llvm.lifetime.start.p0(i64 8, ptr %__data) #12, !dbg !4574
  call void @llvm.dbg.declare(metadata ptr %__data, metadata !4165, metadata !DIExpression()), !dbg !4574
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu296) #12, !dbg !4575
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu296, metadata !4166, metadata !DIExpression()), !dbg !4575
  br label %do.body38, !dbg !4576

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !4578

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !4578

do.end40:                                         ; preds = %do.cond39
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_contention_begin, i32 0, i32 8), align 8, !dbg !4576
  store ptr %10, ptr %tmp41, align 8, !dbg !4578
  %11 = load ptr, ptr %tmp41, align 8, !dbg !4576
  store ptr %11, ptr %__UNIQUE_ID_rcu296, align 8, !dbg !4575
  %12 = load ptr, ptr %__UNIQUE_ID_rcu296, align 8, !dbg !4575
  store ptr %12, ptr %tmp42, align 8, !dbg !4575
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu296) #12, !dbg !4574
  %13 = load ptr, ptr %tmp42, align 8, !dbg !4575
  store ptr %13, ptr %it_func_ptr, align 8, !dbg !4574
  %14 = load ptr, ptr %it_func_ptr, align 8, !dbg !4580
  %tobool43 = icmp ne ptr %14, null, !dbg !4580
  br i1 %tobool43, label %if.then44, label %if.end47, !dbg !4574

if.then44:                                        ; preds = %do.end40
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !4582
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %15, i32 0, i32 1, !dbg !4582
  %16 = load ptr, ptr %data, align 8, !dbg !4582
  store ptr %16, ptr %__data, align 8, !dbg !4582
  store ptr @__SCT__tp_func_contention_begin, ptr %tmp45, align 8, !dbg !4584
  %17 = load ptr, ptr %tmp45, align 8, !dbg !4584
  %18 = load ptr, ptr %__data, align 8, !dbg !4582
  %19 = load ptr, ptr %lock.addr, align 8, !dbg !4582
  %20 = load i32, ptr %flags.addr, align 4, !dbg !4582
  %call46 = call i32 %17(ptr noundef %18, ptr noundef %19, i32 noundef %20) #13, !dbg !4582
  br label %if.end47, !dbg !4582

if.end47:                                         ; preds = %if.then44, %do.end40
  call void @llvm.lifetime.end.p0(i64 8, ptr %__data) #12, !dbg !4554
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #12, !dbg !4554
  br label %do.cond48, !dbg !4574

do.cond48:                                        ; preds = %if.end47
  br label %do.end49, !dbg !4574

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !4554

do.body50:                                        ; preds = %do.end49
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !4586, !srcloc !4588
  %call51 = call zeroext i1 @__preempt_count_dec_and_test() #13, !dbg !4589
  %lnot52 = xor i1 %call51, true, !dbg !4589
  %lnot54 = xor i1 %lnot52, true, !dbg !4589
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !4589
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !4589
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !4589
  %tobool58 = icmp ne i64 %expval57, 0, !dbg !4589
  br i1 %tobool58, label %if.then59, label %if.end63, !dbg !4586

if.then59:                                        ; preds = %do.body50
  br label %do.body60, !dbg !4589

do.body60:                                        ; preds = %if.then59
  %21 = call i64 @llvm.read_register.i64(metadata !4201), !dbg !4591
  %22 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %21) #12, !dbg !4591, !srcloc !4593
  call void @llvm.write_register.i64(metadata !4201, i64 %22), !dbg !4591
  br label %do.cond61, !dbg !4591

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !4591

do.end62:                                         ; preds = %do.cond61
  br label %if.end63, !dbg !4591

if.end63:                                         ; preds = %do.end62, %do.body50
  br label %do.cond64, !dbg !4586

do.cond64:                                        ; preds = %if.end63
  br label %do.end65, !dbg !4586

do.end65:                                         ; preds = %do.cond64
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4553
  br label %cleanup, !dbg !4553

cleanup:                                          ; preds = %do.end65, %if.then32, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__idx) #12, !dbg !4553
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end68
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end67, !dbg !4554

do.end67:                                         ; preds = %cleanup.cont
  br label %if.end68, !dbg !4554

if.end68:                                         ; preds = %cleanup, %do.end67, %entry
  ret void, !dbg !4552

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @___down_common(ptr noundef %sem, i64 noundef %state, i64 noundef %timeout) #7 section ".sched.text" align 16 !dbg !4594 {
entry:
  %retval = alloca i32, align 4
  %sem.addr = alloca ptr, align 8
  %state.addr = alloca i64, align 8
  %timeout.addr = alloca i64, align 8
  %waiter = alloca %struct.semaphore_waiter, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !4596, metadata !DIExpression()), !dbg !4602
  store i64 %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !4597, metadata !DIExpression()), !dbg !4603
  store i64 %timeout, ptr %timeout.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timeout.addr, metadata !4598, metadata !DIExpression()), !dbg !4604
  call void @llvm.lifetime.start.p0(i64 32, ptr %waiter) #12, !dbg !4605
  call void @llvm.dbg.declare(metadata ptr %waiter, metadata !4599, metadata !DIExpression()), !dbg !4606
  %list = getelementptr inbounds %struct.semaphore_waiter, ptr %waiter, i32 0, i32 0, !dbg !4607
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !4608
  %wait_list = getelementptr inbounds %struct.semaphore, ptr %0, i32 0, i32 2, !dbg !4609
  call void @list_add_tail(ptr noundef %list, ptr noundef %wait_list) #13, !dbg !4610
  %call = call ptr @get_current() #13, !dbg !4611
  %task = getelementptr inbounds %struct.semaphore_waiter, ptr %waiter, i32 0, i32 1, !dbg !4612
  store ptr %call, ptr %task, align 8, !dbg !4613
  %up = getelementptr inbounds %struct.semaphore_waiter, ptr %waiter, i32 0, i32 2, !dbg !4614
  store i8 0, ptr %up, align 8, !dbg !4615
  br label %for.cond, !dbg !4616

for.cond:                                         ; preds = %if.end28, %entry
  %1 = load i64, ptr %state.addr, align 8, !dbg !4617
  %conv = trunc i64 %1 to i32, !dbg !4617
  %call1 = call ptr @get_current() #13, !dbg !4622
  %call2 = call i32 @signal_pending_state(i32 noundef %conv, ptr noundef %call1) #13, !dbg !4623
  %tobool = icmp ne i32 %call2, 0, !dbg !4623
  br i1 %tobool, label %if.then, label %if.end, !dbg !4624

if.then:                                          ; preds = %for.cond
  br label %interrupted, !dbg !4625

if.end:                                           ; preds = %for.cond
  %2 = load i64, ptr %timeout.addr, align 8, !dbg !4626
  %cmp = icmp sle i64 %2, 0, !dbg !4626
  %lnot = xor i1 %cmp, true, !dbg !4626
  %lnot4 = xor i1 %lnot, true, !dbg !4626
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !4626
  %conv5 = sext i32 %lnot.ext to i64, !dbg !4626
  %expval = call i64 @llvm.expect.i64(i64 %conv5, i64 0), !dbg !4626
  %tobool6 = icmp ne i64 %expval, 0, !dbg !4626
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !4628

if.then7:                                         ; preds = %if.end
  br label %timed_out, !dbg !4629

if.end8:                                          ; preds = %if.end
  br label %do.body, !dbg !4630

do.body:                                          ; preds = %if.end8
  br label %do.body9, !dbg !4631

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !4633

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !4633

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !4631

do.body10:                                        ; preds = %do.end
  br label %do.body11, !dbg !4635

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !4637

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !4637

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !4635

do.body14:                                        ; preds = %do.end13
  %3 = load i64, ptr %state.addr, align 8, !dbg !4639
  %conv15 = trunc i64 %3 to i32, !dbg !4639
  %call16 = call ptr @get_current() #13, !dbg !4639
  %__state = getelementptr inbounds %struct.task_struct, ptr %call16, i32 0, i32 1, !dbg !4639
  store volatile i32 %conv15, ptr %__state, align 8, !dbg !4639
  br label %do.cond17, !dbg !4639

do.cond17:                                        ; preds = %do.body14
  br label %do.end18, !dbg !4639

do.end18:                                         ; preds = %do.cond17
  br label %do.cond19, !dbg !4635

do.cond19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !4635

do.end20:                                         ; preds = %do.cond19
  br label %do.cond21, !dbg !4631

do.cond21:                                        ; preds = %do.end20
  br label %do.end22, !dbg !4631

do.end22:                                         ; preds = %do.cond21
  %4 = load ptr, ptr %sem.addr, align 8, !dbg !4641
  %lock = getelementptr inbounds %struct.semaphore, ptr %4, i32 0, i32 0, !dbg !4641
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #13, !dbg !4641
  %5 = load i64, ptr %timeout.addr, align 8, !dbg !4642
  %call23 = call i64 @schedule_timeout(i64 noundef %5) #13, !dbg !4643
  store i64 %call23, ptr %timeout.addr, align 8, !dbg !4644
  %6 = load ptr, ptr %sem.addr, align 8, !dbg !4645
  %lock24 = getelementptr inbounds %struct.semaphore, ptr %6, i32 0, i32 0, !dbg !4645
  call void @_raw_spin_lock_irq(ptr noundef %lock24) #13, !dbg !4645
  %up25 = getelementptr inbounds %struct.semaphore_waiter, ptr %waiter, i32 0, i32 2, !dbg !4646
  %7 = load i8, ptr %up25, align 8, !dbg !4646, !range !4648, !noundef !507
  %tobool26 = trunc i8 %7 to i1, !dbg !4646
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !4649

if.then27:                                        ; preds = %do.end22
  store i32 0, ptr %retval, align 4, !dbg !4650
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4650

if.end28:                                         ; preds = %do.end22
  br label %for.cond, !dbg !4651, !llvm.loop !4652

timed_out:                                        ; preds = %if.then7
  call void @llvm.dbg.label(metadata !4600), !dbg !4656
  %list29 = getelementptr inbounds %struct.semaphore_waiter, ptr %waiter, i32 0, i32 0, !dbg !4657
  call void @list_del(ptr noundef %list29) #13, !dbg !4658
  store i32 -62, ptr %retval, align 4, !dbg !4659
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4659

interrupted:                                      ; preds = %if.then
  call void @llvm.dbg.label(metadata !4601), !dbg !4660
  %list30 = getelementptr inbounds %struct.semaphore_waiter, ptr %waiter, i32 0, i32 0, !dbg !4661
  call void @list_del(ptr noundef %list30) #13, !dbg !4662
  store i32 -4, ptr %retval, align 4, !dbg !4663
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4663

cleanup:                                          ; preds = %interrupted, %timed_out, %if.then27
  call void @llvm.lifetime.end.p0(i64 32, ptr %waiter) #12, !dbg !4664
  %8 = load i32, ptr %retval, align 4, !dbg !4664
  ret i32 %8, !dbg !4664
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_contention_end(ptr noundef %lock, i32 noundef %ret) #7 align 16 !dbg !4172 {
entry:
  %lock.addr = alloca ptr, align 8
  %ret.addr = alloca i32, align 4
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
  %__UNIQUE_ID_rcu304 = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %tmp45 = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4176, metadata !DIExpression()), !dbg !4665
  store i32 %ret, ptr %ret.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ret.addr, metadata !4177, metadata !DIExpression()), !dbg !4665
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_contention_end, i32 0, i32 1)) #13, !dbg !4666
  br i1 %call, label %if.then, label %if.end68, !dbg !4665

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4666

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__idx) #12, !dbg !4667
  call void @llvm.dbg.declare(metadata ptr %__idx, metadata !4178, metadata !DIExpression()), !dbg !4667
  store i32 0, ptr %__idx, align 4, !dbg !4667
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #12, !dbg !4668
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4181, metadata !DIExpression()), !dbg !4668
  br label %do.body1, !dbg !4668

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !4669
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4184, metadata !DIExpression()), !dbg !4669
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4669
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4669
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !4668
  br label %do.cond, !dbg !4669

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !4669

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #12, !dbg !4670
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4186, metadata !DIExpression()), !dbg !4670
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 2)) #12, !dbg !4670, !srcloc !4671
  store i32 %1, ptr %pfo_val__, align 4, !dbg !4670
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !4670
  %conv = zext i32 %2 to i64, !dbg !4670
  %conv2 = trunc i64 %conv to i32, !dbg !4670
  store i32 %conv2, ptr %tmp, align 4, !dbg !4670
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #12, !dbg !4668
  %3 = load i32, ptr %tmp, align 4, !dbg !4670
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !4668
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !4668
  store i32 %4, ptr %tmp3, align 4, !dbg !4668
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #12, !dbg !4672
  %5 = load i32, ptr %tmp3, align 4, !dbg !4668
  %call4 = call zeroext i1 @cpu_online(i32 noundef %5) #13, !dbg !4672
  br i1 %call4, label %if.end, label %if.then5, !dbg !4667

if.then5:                                         ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4672

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !4673
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4188, metadata !DIExpression()), !dbg !4673
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !4673
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !4674
  %tobool = icmp ne i32 %6, 0, !dbg !4674
  %lnot = xor i1 %tobool, true, !dbg !4674
  %lnot6 = xor i1 %lnot, true, !dbg !4674
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !4674
  %conv7 = sext i32 %lnot.ext to i64, !dbg !4674
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !4674
  %tobool8 = icmp ne i64 %expval, 0, !dbg !4674
  br i1 %tobool8, label %if.then9, label %if.end22, !dbg !4673

if.then9:                                         ; preds = %if.end
  br label %do.body10, !dbg !4674

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !4675
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4191, metadata !DIExpression()), !dbg !4675
  store i32 2307, ptr %__flags, align 4, !dbg !4675
  br label %do.body11, !dbg !4675

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !4676

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !4676

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !4675

do.body14:                                        ; preds = %do.end13
  %7 = load i32, ptr %__flags, align 4, !dbg !4678
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 139, i32 %7, i64 12) #12, !dbg !4678, !srcloc !4680
  br label %do.cond15, !dbg !4678

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !4678

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !4675

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !4681

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !4681

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !4674
  br label %do.cond20, !dbg !4675

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !4675

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !4675

if.end22:                                         ; preds = %do.end21, %if.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !4673
  %tobool24 = icmp ne i32 %8, 0, !dbg !4673
  %lnot25 = xor i1 %tobool24, true, !dbg !4673
  %lnot27 = xor i1 %lnot25, true, !dbg !4673
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !4673
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !4673
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !4673
  store i64 %expval30, ptr %tmp23, align 8, !dbg !4674
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !4683
  %9 = load i64, ptr %tmp23, align 8, !dbg !4673
  %tobool31 = icmp ne i64 %9, 0, !dbg !4683
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !4667

if.then32:                                        ; preds = %if.end22
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4683

if.end33:                                         ; preds = %if.end22
  br label %do.body34, !dbg !4667

do.body34:                                        ; preds = %if.end33
  call void @__preempt_count_add(i32 noundef 1) #13, !dbg !4684
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !4684, !srcloc !4686
  br label %do.cond35, !dbg !4684

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !4684

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !4667

do.body37:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #12, !dbg !4687
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !4194, metadata !DIExpression()), !dbg !4687
  call void @llvm.lifetime.start.p0(i64 8, ptr %__data) #12, !dbg !4687
  call void @llvm.dbg.declare(metadata ptr %__data, metadata !4196, metadata !DIExpression()), !dbg !4687
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu304) #12, !dbg !4688
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu304, metadata !4197, metadata !DIExpression()), !dbg !4688
  br label %do.body38, !dbg !4689

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !4691

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !4691

do.end40:                                         ; preds = %do.cond39
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_contention_end, i32 0, i32 8), align 8, !dbg !4689
  store ptr %10, ptr %tmp41, align 8, !dbg !4691
  %11 = load ptr, ptr %tmp41, align 8, !dbg !4689
  store ptr %11, ptr %__UNIQUE_ID_rcu304, align 8, !dbg !4688
  %12 = load ptr, ptr %__UNIQUE_ID_rcu304, align 8, !dbg !4688
  store ptr %12, ptr %tmp42, align 8, !dbg !4688
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu304) #12, !dbg !4687
  %13 = load ptr, ptr %tmp42, align 8, !dbg !4688
  store ptr %13, ptr %it_func_ptr, align 8, !dbg !4687
  %14 = load ptr, ptr %it_func_ptr, align 8, !dbg !4693
  %tobool43 = icmp ne ptr %14, null, !dbg !4693
  br i1 %tobool43, label %if.then44, label %if.end47, !dbg !4687

if.then44:                                        ; preds = %do.end40
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !4695
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %15, i32 0, i32 1, !dbg !4695
  %16 = load ptr, ptr %data, align 8, !dbg !4695
  store ptr %16, ptr %__data, align 8, !dbg !4695
  store ptr @__SCT__tp_func_contention_end, ptr %tmp45, align 8, !dbg !4697
  %17 = load ptr, ptr %tmp45, align 8, !dbg !4697
  %18 = load ptr, ptr %__data, align 8, !dbg !4695
  %19 = load ptr, ptr %lock.addr, align 8, !dbg !4695
  %20 = load i32, ptr %ret.addr, align 4, !dbg !4695
  %call46 = call i32 %17(ptr noundef %18, ptr noundef %19, i32 noundef %20) #13, !dbg !4695
  br label %if.end47, !dbg !4695

if.end47:                                         ; preds = %if.then44, %do.end40
  call void @llvm.lifetime.end.p0(i64 8, ptr %__data) #12, !dbg !4667
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #12, !dbg !4667
  br label %do.cond48, !dbg !4687

do.cond48:                                        ; preds = %if.end47
  br label %do.end49, !dbg !4687

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !4667

do.body50:                                        ; preds = %do.end49
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !4699, !srcloc !4701
  %call51 = call zeroext i1 @__preempt_count_dec_and_test() #13, !dbg !4702
  %lnot52 = xor i1 %call51, true, !dbg !4702
  %lnot54 = xor i1 %lnot52, true, !dbg !4702
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !4702
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !4702
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !4702
  %tobool58 = icmp ne i64 %expval57, 0, !dbg !4702
  br i1 %tobool58, label %if.then59, label %if.end63, !dbg !4699

if.then59:                                        ; preds = %do.body50
  br label %do.body60, !dbg !4702

do.body60:                                        ; preds = %if.then59
  %21 = call i64 @llvm.read_register.i64(metadata !4201), !dbg !4704
  %22 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %21) #12, !dbg !4704, !srcloc !4706
  call void @llvm.write_register.i64(metadata !4201, i64 %22), !dbg !4704
  br label %do.cond61, !dbg !4704

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !4704

do.end62:                                         ; preds = %do.cond61
  br label %if.end63, !dbg !4704

if.end63:                                         ; preds = %do.end62, %do.body50
  br label %do.cond64, !dbg !4699

do.cond64:                                        ; preds = %if.end63
  br label %do.end65, !dbg !4699

do.end65:                                         ; preds = %do.cond64
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4666
  br label %cleanup, !dbg !4666

cleanup:                                          ; preds = %do.end65, %if.then32, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__idx) #12, !dbg !4666
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end68
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end67, !dbg !4667

do.end67:                                         ; preds = %cleanup.cont
  br label %if.end68, !dbg !4667

if.end68:                                         ; preds = %cleanup, %do.end67, %entry
  ret void, !dbg !4665

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #3 align 16 !dbg !4707 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !4723, metadata !DIExpression()), !dbg !4724
  %0 = load ptr, ptr %key.addr, align 8, !dbg !4725
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #13, !dbg !4726
  ret i1 %call, !dbg !4727
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpu_online(i32 noundef %cpu) #7 align 16 !dbg !4728 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4732, metadata !DIExpression()), !dbg !4733
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !4734
  %call = call zeroext i1 @cpumask_test_cpu(i32 noundef %0, ptr noundef @__cpu_online_mask) #13, !dbg !4735
  ret i1 %call, !dbg !4736
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #3 align 16 !dbg !4737 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !4740, metadata !DIExpression()), !dbg !4747
  br label %do.body, !dbg !4748

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #12, !dbg !4749
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !4741, metadata !DIExpression()), !dbg !4749
  %0 = load i32, ptr %val.addr, align 4, !dbg !4749
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !4749
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !4749

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !4749
  %cmp = icmp eq i32 %2, 1, !dbg !4749
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !4749

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !4749
  %cmp1 = icmp eq i32 %3, -1, !dbg !4749
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !4749

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !4749
  br label %cond.end, !dbg !4749

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !4749

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !4749
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !4749
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !4750
  %cmp2 = icmp eq i32 %5, 1, !dbg !4750
  br i1 %cmp2, label %if.then, label %if.else, !dbg !4749

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1)) #12, !dbg !4751, !srcloc !4753
  br label %if.end8, !dbg !4750

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !4754
  %cmp3 = icmp eq i32 %6, -1, !dbg !4754
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !4750

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1)) #12, !dbg !4755, !srcloc !4757
  br label %if.end, !dbg !4754

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !4754

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #12, !dbg !4758
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !4743, metadata !DIExpression()), !dbg !4758
  %7 = load i32, ptr %val.addr, align 4, !dbg !4758
  %conv = sext i32 %7 to i64, !dbg !4758
  %and = and i64 %conv, 4294967295, !dbg !4758
  %conv7 = trunc i64 %and to i32, !dbg !4758
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !4758
  %8 = load i32, ptr %pto_val__, align 4, !dbg !4758
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1)) #12, !dbg !4758, !srcloc !4759
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #12, !dbg !4754
  br label %do.cond, !dbg !4758

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !4758

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #12, !dbg !4748
  br label %do.end10, !dbg !4749

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !4760
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_contention_begin(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #3 align 16 !dbg !4761 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #12, !dbg !4765
  call void @llvm.dbg.declare(metadata ptr %c, metadata !4763, metadata !DIExpression()), !dbg !4765
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1)) #12, !dbg !4765, !srcloc !4766
  %1 = icmp ult i8 %0, 2, !dbg !4765
  call void @llvm.assume(i1 %1), !dbg !4765
  store i8 %0, ptr %c, align 1, !dbg !4765
  %2 = load i8, ptr %c, align 1, !dbg !4765, !range !4648, !noundef !507
  %tobool = trunc i8 %2 to i1, !dbg !4765
  %frombool = zext i1 %tobool to i8, !dbg !4765
  store i8 %frombool, ptr %tmp, align 1, !dbg !4765
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #12, !dbg !4767
  %3 = load i8, ptr %tmp, align 1, !dbg !4765, !range !4648, !noundef !507
  %tobool1 = trunc i8 %3 to i1, !dbg !4765
  ret i1 %tobool1, !dbg !4768
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #8

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #3 align 16 !dbg !4769 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !4774, metadata !DIExpression()), !dbg !4777
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !4775, metadata !DIExpression()), !dbg !4778
  %0 = load ptr, ptr %key.addr, align 8, !dbg !4779
  %1 = load i8, ptr %branch.addr, align 1, !dbg !4780, !range !4648, !noundef !507
  %tobool = trunc i8 %1 to i1, !dbg !4780
  %conv = zext i1 %tobool to i32, !dbg !4780
  %or = or i32 2, %conv, !dbg !4781
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #12
          to label %asm.fallthrough [label %l_yes], !dbg !4782, !srcloc !4783

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !4784
  br label %return, !dbg !4784

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !4776), !dbg !4785
  store i1 true, ptr %retval, align 1, !dbg !4786
  br label %return, !dbg !4786

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !4787
  ret i1 %2, !dbg !4787
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_test_cpu(i32 noundef %cpu, ptr noundef %cpumask) #3 align 16 !dbg !4788 {
entry:
  %cpu.addr = alloca i32, align 4
  %cpumask.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4792, metadata !DIExpression()), !dbg !4794
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !4793, metadata !DIExpression()), !dbg !4795
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !4796
  %call = call i32 @cpumask_check(i32 noundef %0) #13, !dbg !4796
  %conv = zext i32 %call to i64, !dbg !4796
  %1 = load ptr, ptr %cpumask.addr, align 8, !dbg !4796
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !4796
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !4796
  %call1 = call zeroext i1 @_test_bit(i64 noundef %conv, ptr noundef %arraydecay) #13, !dbg !4796
  ret i1 %call1, !dbg !4797
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !4798 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4806, metadata !DIExpression()), !dbg !4808
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4807, metadata !DIExpression()), !dbg !4809
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4810
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4811
  %div = udiv i64 %1, 64, !dbg !4811
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !4812
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #13, !dbg !4813
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4814
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4815
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !4816
  ret i1 %call, !dbg !4817
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_check(i32 noundef %cpu) #3 align 16 !dbg !4818 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4822, metadata !DIExpression()), !dbg !4823
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !4824
  call void @cpu_max_bits_warn(i32 noundef %0, i32 noundef 64) #13, !dbg !4825
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !4826
  ret i32 %1, !dbg !4827
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !4828 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4836, metadata !DIExpression()), !dbg !4838
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4837, metadata !DIExpression()), !dbg !4839
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4840
  %1 = load i64, ptr %size.addr, align 8, !dbg !4841
  %conv = trunc i64 %1 to i32, !dbg !4841
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #13, !dbg !4842
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4843
  %3 = load i64, ptr %size.addr, align 8, !dbg !4843
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #13, !dbg !4843
  ret void, !dbg !4844
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !4845 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4848, metadata !DIExpression()), !dbg !4850
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4849, metadata !DIExpression()), !dbg !4851
  %0 = load i64, ptr %nr.addr, align 8, !dbg !4852
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4853
  br i1 %1, label %cond.true, label %cond.false, !dbg !4853

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4854
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4855
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !4856
  %conv = zext i1 %call to i32, !dbg !4856
  br label %cond.end, !dbg !4853

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !4857
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !4858
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #13, !dbg !4859
  %conv2 = zext i1 %call1 to i32, !dbg !4859
  br label %cond.end, !dbg !4853

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !4853
  %tobool = icmp ne i32 %cond, 0, !dbg !4853
  ret i1 %tobool, !dbg !4860
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #7 align 16 !dbg !4861 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4866, metadata !DIExpression()), !dbg !4868
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4867, metadata !DIExpression()), !dbg !4869
  ret i1 true, !dbg !4870
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #7 align 16 !dbg !4871 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4876, metadata !DIExpression()), !dbg !4879
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4877, metadata !DIExpression()), !dbg !4880
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4878, metadata !DIExpression()), !dbg !4881
  ret void, !dbg !4882
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !4883 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4887, metadata !DIExpression()), !dbg !4889
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4888, metadata !DIExpression()), !dbg !4890
  %0 = load i64, ptr %nr.addr, align 8, !dbg !4891
  %and = and i64 %0, 63, !dbg !4892
  %shl = shl i64 1, %and, !dbg !4893
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !4894
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4895
  %shr = ashr i64 %2, 6, !dbg !4896
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !4894
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !4894
  %and1 = and i64 %shl, %3, !dbg !4897
  %cmp = icmp ne i64 %and1, 0, !dbg !4898
  ret i1 %cmp, !dbg !4899
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !4900 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4902, metadata !DIExpression()), !dbg !4905
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4903, metadata !DIExpression()), !dbg !4906
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #12, !dbg !4907
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !4904, metadata !DIExpression()), !dbg !4908
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4909
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4910
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #12, !dbg !4911, !srcloc !4912
  %3 = icmp ult i8 %2, 2, !dbg !4911
  call void @llvm.assume(i1 %3), !dbg !4911
  store i8 %2, ptr %oldbit, align 1, !dbg !4911
  %4 = load i8, ptr %oldbit, align 1, !dbg !4913, !range !4648, !noundef !507
  %tobool = trunc i8 %4 to i1, !dbg !4913
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #12, !dbg !4914
  ret i1 %tobool, !dbg !4915
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_max_bits_warn(i32 noundef %cpu, i32 noundef %bits) #3 align 16 !dbg !4916 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4920, metadata !DIExpression()), !dbg !4922
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !4921, metadata !DIExpression()), !dbg !4923
  ret void, !dbg !4924
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #7 align 16 !dbg !4925 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4929, metadata !DIExpression()), !dbg !4931
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !4930, metadata !DIExpression()), !dbg !4932
  %0 = load ptr, ptr %new.addr, align 8, !dbg !4933
  %1 = load ptr, ptr %head.addr, align 8, !dbg !4934
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !4935
  %2 = load ptr, ptr %prev, align 8, !dbg !4935
  %3 = load ptr, ptr %head.addr, align 8, !dbg !4936
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #13, !dbg !4937
  ret void, !dbg !4938
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #3 align 16 !dbg !4939 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #12, !dbg !4950
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4944, metadata !DIExpression()), !dbg !4950
  br label %do.body, !dbg !4950

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !4951
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4946, metadata !DIExpression()), !dbg !4951
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4951
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4951
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !4950
  br label %do.cond, !dbg !4951

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4951

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #12, !dbg !4952
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4948, metadata !DIExpression()), !dbg !4952
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #14, !dbg !4952, !srcloc !4953
  store i64 %1, ptr %pfo_val__, align 8, !dbg !4952
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !4952
  %3 = inttoptr i64 %2 to ptr, !dbg !4952
  store ptr %3, ptr %tmp, align 8, !dbg !4952
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #12, !dbg !4950
  %4 = load ptr, ptr %tmp, align 8, !dbg !4952
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !4950
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !4950
  store ptr %5, ptr %tmp1, align 8, !dbg !4950
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #12, !dbg !4954
  %6 = load ptr, ptr %tmp1, align 8, !dbg !4950
  ret ptr %6, !dbg !4955
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @signal_pending_state(i32 noundef %state, ptr noundef %p) #7 align 16 !dbg !4956 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !4960, metadata !DIExpression()), !dbg !4962
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4961, metadata !DIExpression()), !dbg !4963
  %0 = load i32, ptr %state.addr, align 4, !dbg !4964
  %and = and i32 %0, 257, !dbg !4966
  %tobool = icmp ne i32 %and, 0, !dbg !4966
  br i1 %tobool, label %if.end, label %if.then, !dbg !4967

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4968
  br label %return, !dbg !4968

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8, !dbg !4969
  %call = call i32 @signal_pending(ptr noundef %1) #13, !dbg !4971
  %tobool1 = icmp ne i32 %call, 0, !dbg !4971
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !4972

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !4973
  br label %return, !dbg !4973

if.end3:                                          ; preds = %if.end
  %2 = load i32, ptr %state.addr, align 4, !dbg !4974
  %and4 = and i32 %2, 1, !dbg !4975
  %tobool5 = icmp ne i32 %and4, 0, !dbg !4975
  br i1 %tobool5, label %lor.end, label %lor.rhs, !dbg !4976

lor.rhs:                                          ; preds = %if.end3
  %3 = load ptr, ptr %p.addr, align 8, !dbg !4977
  %call6 = call i32 @__fatal_signal_pending(ptr noundef %3) #13, !dbg !4978
  %tobool7 = icmp ne i32 %call6, 0, !dbg !4976
  br label %lor.end, !dbg !4976

lor.end:                                          ; preds = %lor.rhs, %if.end3
  %4 = phi i1 [ true, %if.end3 ], [ %tobool7, %lor.rhs ]
  %lor.ext = zext i1 %4 to i32, !dbg !4976
  store i32 %lor.ext, ptr %retval, align 4, !dbg !4979
  br label %return, !dbg !4979

return:                                           ; preds = %lor.end, %if.then2, %if.then
  %5 = load i32, ptr %retval, align 4, !dbg !4980
  ret i32 %5, !dbg !4980
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4981 dso_local void @_raw_spin_unlock_irq(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4984 dso_local i64 @schedule_timeout(i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4987 dso_local void @_raw_spin_lock_irq(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #7 align 16 !dbg !4988 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4992, metadata !DIExpression()), !dbg !4993
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !4994
  call void @__list_del_entry(ptr noundef %0) #13, !dbg !4995
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !4996
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !4997
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !4998
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !4999
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !5000
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !5001
  ret void, !dbg !5002
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #7 align 16 !dbg !5003 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5007, metadata !DIExpression()), !dbg !5010
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5008, metadata !DIExpression()), !dbg !5011
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5009, metadata !DIExpression()), !dbg !5012
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5013
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !5015
  %2 = load ptr, ptr %next.addr, align 8, !dbg !5016
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13, !dbg !5017
  br i1 %call, label %if.end, label %if.then, !dbg !5018

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !5019

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !5020
  %4 = load ptr, ptr %next.addr, align 8, !dbg !5021
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !5022
  store ptr %3, ptr %prev1, align 8, !dbg !5023
  %5 = load ptr, ptr %next.addr, align 8, !dbg !5024
  %6 = load ptr, ptr %new.addr, align 8, !dbg !5025
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !5026
  store ptr %5, ptr %next2, align 8, !dbg !5027
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !5028
  %8 = load ptr, ptr %new.addr, align 8, !dbg !5029
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !5030
  store ptr %7, ptr %prev3, align 8, !dbg !5031
  br label %do.body, !dbg !5032

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !5033

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !5035

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !5033

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !5037
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !5037
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !5037
  store volatile ptr %9, ptr %next6, align 8, !dbg !5037
  br label %do.end7, !dbg !5037

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !5033

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !5039
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #7 align 16 !dbg !5040 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5044, metadata !DIExpression()), !dbg !5047
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5045, metadata !DIExpression()), !dbg !5048
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5046, metadata !DIExpression()), !dbg !5049
  ret i1 true, !dbg !5050
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @signal_pending(ptr noundef %p) #7 align 16 !dbg !5051 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5055, metadata !DIExpression()), !dbg !5056
  %0 = load ptr, ptr %p.addr, align 8, !dbg !5057
  %call = call i32 @test_tsk_thread_flag(ptr noundef %0, i32 noundef 17) #13, !dbg !5057
  %tobool = icmp ne i32 %call, 0, !dbg !5057
  %lnot = xor i1 %tobool, true, !dbg !5057
  %lnot1 = xor i1 %lnot, true, !dbg !5057
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5057
  %conv = sext i32 %lnot.ext to i64, !dbg !5057
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5057
  %tobool2 = icmp ne i64 %expval, 0, !dbg !5057
  br i1 %tobool2, label %if.then, label %if.end, !dbg !5059

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !5060
  br label %return, !dbg !5060

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8, !dbg !5061
  %call3 = call i32 @task_sigpending(ptr noundef %1) #13, !dbg !5062
  store i32 %call3, ptr %retval, align 4, !dbg !5063
  br label %return, !dbg !5063

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5064
  ret i32 %2, !dbg !5064
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__fatal_signal_pending(ptr noundef %p) #7 align 16 !dbg !5065 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5067, metadata !DIExpression()), !dbg !5068
  %0 = load ptr, ptr %p.addr, align 8, !dbg !5069
  %pending = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 109, !dbg !5069
  %signal = getelementptr inbounds %struct.sigpending, ptr %pending, i32 0, i32 1, !dbg !5069
  %call = call i32 @sigismember(ptr noundef %signal, i32 noundef 9) #13, !dbg !5069
  %tobool = icmp ne i32 %call, 0, !dbg !5069
  %lnot = xor i1 %tobool, true, !dbg !5069
  %lnot1 = xor i1 %lnot, true, !dbg !5069
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5069
  %conv = sext i32 %lnot.ext to i64, !dbg !5069
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5069
  %conv2 = trunc i64 %expval to i32, !dbg !5069
  ret i32 %conv2, !dbg !5070
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @test_tsk_thread_flag(ptr noundef %tsk, i32 noundef %flag) #7 align 16 !dbg !5071 {
entry:
  %tsk.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !5075, metadata !DIExpression()), !dbg !5077
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !5076, metadata !DIExpression()), !dbg !5078
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !5079
  %thread_info = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 0, !dbg !5079
  %1 = load i32, ptr %flag.addr, align 4, !dbg !5080
  %call = call i32 @test_ti_thread_flag(ptr noundef %thread_info, i32 noundef %1) #13, !dbg !5081
  ret i32 %call, !dbg !5082
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @task_sigpending(ptr noundef %p) #7 align 16 !dbg !5083 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5085, metadata !DIExpression()), !dbg !5086
  %0 = load ptr, ptr %p.addr, align 8, !dbg !5087
  %call = call i32 @test_tsk_thread_flag(ptr noundef %0, i32 noundef 2) #13, !dbg !5087
  %tobool = icmp ne i32 %call, 0, !dbg !5087
  %lnot = xor i1 %tobool, true, !dbg !5087
  %lnot1 = xor i1 %lnot, true, !dbg !5087
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5087
  %conv = sext i32 %lnot.ext to i64, !dbg !5087
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5087
  %conv2 = trunc i64 %expval to i32, !dbg !5087
  ret i32 %conv2, !dbg !5088
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @test_ti_thread_flag(ptr noundef %ti, i32 noundef %flag) #7 align 16 !dbg !5089 {
entry:
  %ti.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %ti, ptr %ti.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ti.addr, metadata !5095, metadata !DIExpression()), !dbg !5097
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !5096, metadata !DIExpression()), !dbg !5098
  %0 = load i32, ptr %flag.addr, align 4, !dbg !5099
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !5099
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !5099

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ti.addr, align 8, !dbg !5099
  %flags = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 0, !dbg !5099
  %3 = ptrtoint ptr %flags to i64, !dbg !5099
  %cmp = icmp ne i64 %3, 0, !dbg !5099
  %conv = zext i1 %cmp to i32, !dbg !5099
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !5099
  br i1 %4, label %land.lhs.true1, label %cond.false, !dbg !5099

land.lhs.true1:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %ti.addr, align 8, !dbg !5099
  %flags2 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 0, !dbg !5099
  %6 = ptrtoint ptr %flags2 to i64, !dbg !5099
  %cmp3 = icmp ne i64 %6, 0, !dbg !5099
  br i1 %cmp3, label %land.lhs.true5, label %cond.false, !dbg !5099

land.lhs.true5:                                   ; preds = %land.lhs.true1
  %7 = load ptr, ptr %ti.addr, align 8, !dbg !5099
  %flags6 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 0, !dbg !5099
  %8 = load i64, ptr %flags6, align 8, !dbg !5099
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !5099
  br i1 %9, label %cond.true, label %cond.false, !dbg !5099

cond.true:                                        ; preds = %land.lhs.true5
  %10 = load i32, ptr %flag.addr, align 4, !dbg !5099
  %conv7 = sext i32 %10 to i64, !dbg !5099
  %11 = load ptr, ptr %ti.addr, align 8, !dbg !5099
  %flags8 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 0, !dbg !5099
  %call = call zeroext i1 @const_test_bit(i64 noundef %conv7, ptr noundef %flags8) #13, !dbg !5099
  %conv9 = zext i1 %call to i32, !dbg !5099
  br label %cond.end, !dbg !5099

cond.false:                                       ; preds = %land.lhs.true5, %land.lhs.true1, %land.lhs.true, %entry
  %12 = load i32, ptr %flag.addr, align 4, !dbg !5099
  %conv10 = sext i32 %12 to i64, !dbg !5099
  %13 = load ptr, ptr %ti.addr, align 8, !dbg !5099
  %flags11 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 0, !dbg !5099
  %call12 = call zeroext i1 @_test_bit(i64 noundef %conv10, ptr noundef %flags11) #13, !dbg !5099
  %conv13 = zext i1 %call12 to i32, !dbg !5099
  br label %cond.end, !dbg !5099

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv9, %cond.true ], [ %conv13, %cond.false ], !dbg !5099
  ret i32 %cond, !dbg !5100
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !5101 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5104, metadata !DIExpression()), !dbg !5109
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5105, metadata !DIExpression()), !dbg !5110
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #12, !dbg !5111
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5106, metadata !DIExpression()), !dbg !5112
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5113
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5114
  %div = udiv i64 %1, 64, !dbg !5114
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5115
  store ptr %add.ptr, ptr %p, align 8, !dbg !5112
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #12, !dbg !5116
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !5107, metadata !DIExpression()), !dbg !5117
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5118
  %rem = urem i64 %2, 64, !dbg !5118
  %shl = shl i64 1, %rem, !dbg !5118
  store i64 %shl, ptr %mask, align 8, !dbg !5117
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #12, !dbg !5119
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5108, metadata !DIExpression()), !dbg !5120
  %3 = load ptr, ptr %p, align 8, !dbg !5121
  %4 = load i64, ptr %3, align 8, !dbg !5122
  store i64 %4, ptr %val, align 8, !dbg !5120
  %5 = load i64, ptr %val, align 8, !dbg !5123
  %6 = load i64, ptr %mask, align 8, !dbg !5124
  %and = and i64 %5, %6, !dbg !5125
  %tobool = icmp ne i64 %and, 0, !dbg !5126
  %lnot = xor i1 %tobool, true, !dbg !5126
  %lnot1 = xor i1 %lnot, true, !dbg !5127
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #12, !dbg !5128
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #12, !dbg !5128
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #12, !dbg !5128
  ret i1 %lnot1, !dbg !5129
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sigismember(ptr noundef %set, i32 noundef %_sig) #7 align 16 !dbg !5130 {
entry:
  %set.addr = alloca ptr, align 8
  %_sig.addr = alloca i32, align 4
  %sig = alloca i64, align 8
  store ptr %set, ptr %set.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !5136, metadata !DIExpression()), !dbg !5139
  store i32 %_sig, ptr %_sig.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %_sig.addr, metadata !5137, metadata !DIExpression()), !dbg !5140
  call void @llvm.lifetime.start.p0(i64 8, ptr %sig) #12, !dbg !5141
  call void @llvm.dbg.declare(metadata ptr %sig, metadata !5138, metadata !DIExpression()), !dbg !5142
  %0 = load i32, ptr %_sig.addr, align 4, !dbg !5143
  %sub = sub i32 %0, 1, !dbg !5144
  %conv = sext i32 %sub to i64, !dbg !5143
  store i64 %conv, ptr %sig, align 8, !dbg !5142
  %1 = load ptr, ptr %set.addr, align 8, !dbg !5145
  %sig1 = getelementptr inbounds %struct.sigset_t, ptr %1, i32 0, i32 0, !dbg !5147
  %arrayidx = getelementptr [1 x i64], ptr %sig1, i64 0, i64 0, !dbg !5145
  %2 = load i64, ptr %arrayidx, align 8, !dbg !5145
  %3 = load i64, ptr %sig, align 8, !dbg !5148
  %shr = lshr i64 %2, %3, !dbg !5149
  %and = and i64 1, %shr, !dbg !5150
  %conv2 = trunc i64 %and to i32, !dbg !5151
  call void @llvm.lifetime.end.p0(i64 8, ptr %sig) #12, !dbg !5152
  ret i32 %conv2, !dbg !5153
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #7 align 16 !dbg !5154 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5156, metadata !DIExpression()), !dbg !5157
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5158
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #13, !dbg !5160
  br i1 %call, label %if.end, label %if.then, !dbg !5161

if.then:                                          ; preds = %entry
  br label %return, !dbg !5162

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5163
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5164
  %2 = load ptr, ptr %prev, align 8, !dbg !5164
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !5165
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !5166
  %4 = load ptr, ptr %next, align 8, !dbg !5166
  call void @__list_del(ptr noundef %2, ptr noundef %4) #13, !dbg !5167
  br label %return, !dbg !5168

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5168
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #7 align 16 !dbg !5169 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5173, metadata !DIExpression()), !dbg !5174
  ret i1 true, !dbg !5175
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #7 align 16 !dbg !5176 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5178, metadata !DIExpression()), !dbg !5180
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5179, metadata !DIExpression()), !dbg !5181
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !5182
  %1 = load ptr, ptr %next.addr, align 8, !dbg !5183
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5184
  store ptr %0, ptr %prev1, align 8, !dbg !5185
  br label %do.body, !dbg !5186

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5187

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !5189

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !5187

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !5191
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !5191
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !5191
  store volatile ptr %2, ptr %next4, align 8, !dbg !5191
  br label %do.end5, !dbg !5191

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !5187

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !5193
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_contention_end(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5194 dso_local i32 @wake_up_process(ptr noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #9 = { nocallback nounwind }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { noredzone }
attributes #14 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!4201}
!llvm.module.flags = !{!4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209}
!llvm.ident = !{!4210}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_down312", scope: !2, file: !3, line: 66, type: !93, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/locking/.semaphore.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/locking/semaphore\22 -D KBUILD_BASENAME=\22semaphore\22 -D KBUILD_MODNAME=\22semaphore\22 -D __KBUILD_MODNAME=kmod_semaphore -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/locking/semaphore.ll kernel/locking/semaphore.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !92, globals: !4118, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "kernel/locking/semaphore.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8e045756835ca60e2b4db89fb3e6cbc8")
!4 = !{!5, !11, !16, !24, !31, !39, !55, !62, !68, !73, !79, !85}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !12, line: 65, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!13 = !{!14, !15}
!14 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!15 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !17, line: 9, baseType: !7, size: 32, elements: !18)
!17 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!18 = !{!19, !20, !21, !22, !23}
!19 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!20 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!21 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!22 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!23 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !25, line: 312, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!26 = !{!27, !28, !29, !30}
!27 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!28 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!29 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!30 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !32, line: 68, baseType: !7, size: 32, elements: !33)
!32 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!33 = !{!34, !35, !36, !37, !38}
!34 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!35 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!36 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!37 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!38 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !40, line: 1325, baseType: !7, size: 32, elements: !41)
!40 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!41 = !{!42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54}
!42 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!43 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!44 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!45 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!46 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!47 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!48 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!49 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!50 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!51 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!52 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!53 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!54 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !56, line: 15, baseType: !7, size: 32, elements: !57)
!56 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!57 = !{!58, !59, !60, !61}
!58 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!59 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!60 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!61 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !63, line: 26, baseType: !7, size: 32, elements: !64)
!63 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!64 = !{!65, !66, !67}
!65 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!66 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!67 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !69, line: 2052, baseType: !7, size: 32, elements: !70)
!69 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!70 = !{!71, !72}
!71 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!72 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !74, line: 54, baseType: !7, size: 32, elements: !75)
!74 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!75 = !{!76, !77, !78}
!76 = !DIEnumerator(name: "USRQUOTA", value: 0)
!77 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!78 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !80, line: 16, baseType: !7, size: 32, elements: !81)
!80 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!81 = !{!82, !83, !84}
!82 = !DIEnumerator(name: "TT_NONE", value: 0)
!83 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!84 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !86, line: 51, baseType: !7, size: 32, elements: !87)
!86 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!87 = !{!88, !89, !90, !91}
!88 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!89 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!90 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!91 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!92 = !{!93, !94, !103, !104, !105, !106, !107, !110, !117, !126, !7, !127, !131, !133, !134, !135, !4110, !4111, !4112}
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !99, line: 190, size: 128, elements: !100)
!99 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!100 = !{!101, !102}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !98, file: !99, line: 191, baseType: !97, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !98, file: !99, line: 191, baseType: !97, size: 64, offset: 64)
!103 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!106 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !112, line: 26, size: 192, elements: !113)
!112 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!113 = !{!114, !115, !116}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !111, file: !112, line: 27, baseType: !93, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !111, file: !112, line: 28, baseType: !93, size: 64, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !111, file: !112, line: 29, baseType: !105, size: 32, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !120, line: 19, size: 64, elements: !121)
!120 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!121 = !{!122}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !119, file: !120, line: 19, baseType: !123, size: 64)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 64, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 1)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !128, line: 21, baseType: !129)
!128 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !130, line: 27, baseType: !7)
!130 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !137, line: 746, size: 58368, elements: !138)
!137 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!138 = !{!139, !147, !148, !149, !159, !160, !161, !162, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !249, !260, !387, !391, !394, !425, !426, !427, !428, !432, !434, !435, !436, !437, !438, !439, !450, !451, !454, !455, !456, !457, !458, !459, !460, !461, !468, !469, !476, !477, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3276, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3324, !3330, !3331, !3332, !3333, !3334, !3336, !3339, !3346, !3351, !3354, !3357, !3360, !3386, !3524, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3562, !3563, !3564, !3573, !3581, !3582, !3583, !3584, !3585, !3590, !3591, !3592, !3595, !3596, !3599, !3602, !3605, !3613, !3616, !3617, !3703, !3704, !3705, !3706, !3707, !3713, !3714, !3715, !3716, !3719, !3720, !3723, !3726, !3727, !3730, !3731, !3732, !3735, !3736, !3737, !3738, !3739, !3740, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3772, !3773, !3779, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3791, !3863, !3865, !3866, !3867, !3868, !3869, !3870, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3887, !3888, !3889}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !136, file: !137, line: 752, baseType: !140, size: 192)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !141, line: 56, size: 192, elements: !142)
!141 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!142 = !{!143, !144, !145, !146}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !140, file: !141, line: 57, baseType: !106, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !140, file: !141, line: 58, baseType: !106, size: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !140, file: !141, line: 59, baseType: !127, size: 32, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !140, file: !141, line: 61, baseType: !127, size: 32, offset: 160)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !136, file: !137, line: 754, baseType: !7, size: 32, offset: 192)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !136, file: !137, line: 767, baseType: !93, size: 64, offset: 256)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !136, file: !137, line: 768, baseType: !150, size: 32, offset: 320)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !151, line: 113, baseType: !152)
!151 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !151, line: 111, size: 32, elements: !153)
!153 = !{!154}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !152, file: !151, line: 112, baseType: !155, size: 32)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !99, line: 174, baseType: !156)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !99, line: 172, size: 32, elements: !157)
!157 = !{!158}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !156, file: !99, line: 173, baseType: !105, size: 32)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !136, file: !137, line: 770, baseType: !7, size: 32, offset: 352)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !136, file: !137, line: 771, baseType: !7, size: 32, offset: 384)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !136, file: !137, line: 774, baseType: !105, size: 32, offset: 416)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !136, file: !137, line: 775, baseType: !163, size: 128, offset: 448)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !164, line: 58, size: 128, elements: !165)
!164 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!165 = !{!166, !172, !177, !181}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !163, file: !164, line: 59, baseType: !167, size: 64)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !168, line: 60, size: 64, elements: !169)
!168 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!169 = !{!170}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !167, file: !168, line: 61, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, scope: !163, file: !164, line: 60, baseType: !173, size: 32, offset: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !163, file: !164, line: 60, size: 32, elements: !174)
!174 = !{!175, !176}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !173, file: !164, line: 61, baseType: !7, size: 32)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !173, file: !164, line: 62, baseType: !155, size: 32)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !163, file: !164, line: 65, baseType: !178, size: 16, offset: 96)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !128, line: 19, baseType: !179)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !130, line: 24, baseType: !180)
!180 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !163, file: !164, line: 65, baseType: !178, size: 16, offset: 112)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !136, file: !137, line: 776, baseType: !7, size: 32, offset: 576)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !136, file: !137, line: 777, baseType: !106, size: 64, offset: 640)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !136, file: !137, line: 778, baseType: !135, size: 64, offset: 704)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !136, file: !137, line: 787, baseType: !105, size: 32, offset: 768)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !136, file: !137, line: 788, baseType: !105, size: 32, offset: 800)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !136, file: !137, line: 790, baseType: !105, size: 32, offset: 832)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !136, file: !137, line: 792, baseType: !105, size: 32, offset: 864)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !136, file: !137, line: 793, baseType: !105, size: 32, offset: 896)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !136, file: !137, line: 794, baseType: !105, size: 32, offset: 928)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !136, file: !137, line: 795, baseType: !7, size: 32, offset: 960)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !136, file: !137, line: 797, baseType: !193, size: 2048, offset: 1024)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !137, line: 551, size: 2048, elements: !194)
!194 = !{!195, !200, !208, !212, !213, !214, !215, !216, !217, !218, !219, !223, !224, !225, !226, !228, !231, !232, !233}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !193, file: !137, line: 553, baseType: !196, size: 128)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !137, line: 411, size: 128, elements: !197)
!197 = !{!198, !199}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !196, file: !137, line: 412, baseType: !106, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !196, file: !137, line: 413, baseType: !127, size: 32, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !193, file: !137, line: 554, baseType: !201, size: 192, align: 64, offset: 128)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !202, line: 5, size: 192, align: 64, elements: !203)
!202 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!203 = !{!204, !205, !207}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !201, file: !202, line: 6, baseType: !106, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !201, file: !202, line: 7, baseType: !206, size: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !201, file: !202, line: 8, baseType: !206, size: 64, offset: 128)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !193, file: !137, line: 555, baseType: !209, size: 64, offset: 320)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !128, line: 23, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !130, line: 31, baseType: !211)
!211 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !193, file: !137, line: 556, baseType: !209, size: 64, offset: 384)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !193, file: !137, line: 558, baseType: !98, size: 128, offset: 448)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !193, file: !137, line: 559, baseType: !7, size: 32, offset: 576)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !193, file: !137, line: 561, baseType: !209, size: 64, offset: 640)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !193, file: !137, line: 562, baseType: !209, size: 64, offset: 704)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !193, file: !137, line: 563, baseType: !209, size: 64, offset: 768)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !193, file: !137, line: 564, baseType: !209, size: 64, offset: 832)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !193, file: !137, line: 565, baseType: !220, size: 64, offset: 896)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !128, line: 22, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !130, line: 30, baseType: !222)
!222 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !193, file: !137, line: 566, baseType: !209, size: 64, offset: 960)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !193, file: !137, line: 568, baseType: !209, size: 64, offset: 1024)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !193, file: !137, line: 571, baseType: !105, size: 32, offset: 1088)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !193, file: !137, line: 572, baseType: !227, size: 64, offset: 1152)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !193, file: !137, line: 574, baseType: !229, size: 64, offset: 1216)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !137, line: 49, flags: DIFlagFwdDecl)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !193, file: !137, line: 576, baseType: !229, size: 64, offset: 1280)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !193, file: !137, line: 578, baseType: !106, size: 64, offset: 1344)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !193, file: !137, line: 588, baseType: !234, size: 512, align: 512, offset: 1536)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !137, line: 497, size: 512, align: 512, elements: !235)
!235 = !{!236, !237, !238, !239, !240, !241, !242, !243, !244}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !234, file: !137, line: 498, baseType: !209, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !234, file: !137, line: 499, baseType: !209, size: 64, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !234, file: !137, line: 500, baseType: !209, size: 64, offset: 128)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !234, file: !137, line: 501, baseType: !127, size: 32, offset: 192)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !234, file: !137, line: 502, baseType: !127, size: 32, offset: 224)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !234, file: !137, line: 503, baseType: !106, size: 64, offset: 256)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !234, file: !137, line: 504, baseType: !106, size: 64, offset: 320)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !234, file: !137, line: 505, baseType: !106, size: 64, offset: 384)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !234, file: !137, line: 506, baseType: !245, size: 64, align: 64, offset: 448)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !137, line: 445, size: 64, align: 64, elements: !246)
!246 = !{!247, !248}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !245, file: !137, line: 446, baseType: !7, size: 32)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !245, file: !137, line: 447, baseType: !7, size: 32, offset: 32)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !136, file: !137, line: 798, baseType: !250, size: 384, offset: 3072)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !137, line: 592, size: 384, elements: !251)
!251 = !{!252, !253, !254, !255, !256, !257, !258}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !250, file: !137, line: 593, baseType: !98, size: 128)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !250, file: !137, line: 594, baseType: !106, size: 64, offset: 128)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !250, file: !137, line: 595, baseType: !106, size: 64, offset: 192)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !250, file: !137, line: 596, baseType: !7, size: 32, offset: 256)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !250, file: !137, line: 597, baseType: !180, size: 16, offset: 288)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !250, file: !137, line: 598, baseType: !180, size: 16, offset: 304)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !250, file: !137, line: 600, baseType: !259, size: 64, offset: 320)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !136, file: !137, line: 799, baseType: !261, size: 1792, offset: 3456)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !137, line: 610, size: 1792, elements: !262)
!262 = !{!263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !384, !385}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !261, file: !137, line: 611, baseType: !201, size: 192, align: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !261, file: !137, line: 618, baseType: !209, size: 64, offset: 192)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !261, file: !137, line: 619, baseType: !209, size: 64, offset: 256)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !261, file: !137, line: 620, baseType: !209, size: 64, offset: 320)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !261, file: !137, line: 621, baseType: !209, size: 64, offset: 384)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !261, file: !137, line: 622, baseType: !209, size: 64, offset: 448)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !261, file: !137, line: 629, baseType: !220, size: 64, offset: 512)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !261, file: !137, line: 630, baseType: !209, size: 64, offset: 576)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !261, file: !137, line: 631, baseType: !7, size: 32, offset: 640)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !261, file: !137, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !261, file: !137, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !261, file: !137, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !261, file: !137, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !261, file: !137, line: 662, baseType: !277, size: 512, offset: 704)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !12, line: 118, size: 512, elements: !278)
!278 = !{!279, !287, !288, !293, !380, !381, !382, !383}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !277, file: !12, line: 119, baseType: !280, size: 256)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !281, line: 9, size: 256, elements: !282)
!281 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!282 = !{!283, !284}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !280, file: !281, line: 10, baseType: !201, size: 192, align: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !280, file: !281, line: 11, baseType: !285, size: 64, offset: 192)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !286, line: 29, baseType: !220)
!286 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !277, file: !12, line: 120, baseType: !285, size: 64, offset: 256)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !277, file: !12, line: 121, baseType: !289, size: 64, offset: 320)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{!11, !292}
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !277, file: !12, line: 122, baseType: !294, size: 64, offset: 384)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !12, line: 159, size: 512, align: 512, elements: !296)
!296 = !{!297, !348, !349, !353, !363, !364, !375, !379}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !295, file: !12, line: 160, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !12, line: 215, size: 4608, align: 512, elements: !300)
!300 = !{!301, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !299, file: !12, line: 216, baseType: !302, size: 32)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !303, line: 23, baseType: !304)
!303 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !303, line: 14, size: 32, elements: !305)
!305 = !{!306}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !304, file: !303, line: 15, baseType: !307, size: 32)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !308, line: 44, baseType: !309)
!308 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !308, line: 14, size: 32, elements: !310)
!310 = !{!311}
!311 = !DIDerivedType(tag: DW_TAG_member, scope: !309, file: !308, line: 15, baseType: !312, size: 32)
!312 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !309, file: !308, line: 15, size: 32, elements: !313)
!313 = !{!314, !315, !323}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !312, file: !308, line: 16, baseType: !155, size: 32)
!315 = !DIDerivedType(tag: DW_TAG_member, scope: !312, file: !308, line: 24, baseType: !316, size: 16)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !312, file: !308, line: 24, size: 16, elements: !317)
!317 = !{!318, !322}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !316, file: !308, line: 25, baseType: !319, size: 8)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !128, line: 17, baseType: !320)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !130, line: 21, baseType: !321)
!321 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !316, file: !308, line: 26, baseType: !319, size: 8, offset: 8)
!323 = !DIDerivedType(tag: DW_TAG_member, scope: !312, file: !308, line: 28, baseType: !324, size: 32)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !312, file: !308, line: 28, size: 32, elements: !325)
!325 = !{!326, !327}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !324, file: !308, line: 29, baseType: !178, size: 16)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !324, file: !308, line: 30, baseType: !178, size: 16, offset: 16)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !299, file: !12, line: 217, baseType: !7, size: 32, offset: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !299, file: !12, line: 218, baseType: !7, size: 32, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !299, file: !12, line: 219, baseType: !7, size: 32, offset: 96)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !299, file: !12, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !299, file: !12, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !299, file: !12, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !299, file: !12, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !299, file: !12, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !299, file: !12, line: 226, baseType: !7, size: 32, offset: 160)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !299, file: !12, line: 227, baseType: !180, size: 16, offset: 192)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !299, file: !12, line: 228, baseType: !180, size: 16, offset: 208)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !299, file: !12, line: 229, baseType: !7, size: 32, offset: 224)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !299, file: !12, line: 235, baseType: !285, size: 64, offset: 256)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !299, file: !12, line: 236, baseType: !292, size: 64, offset: 320)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !299, file: !12, line: 237, baseType: !285, size: 64, offset: 384)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !299, file: !12, line: 238, baseType: !292, size: 64, offset: 448)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !299, file: !12, line: 239, baseType: !345, size: 4096, align: 512, offset: 512)
!345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 4096, align: 512, elements: !346)
!346 = !{!347}
!347 = !DISubrange(count: 8)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !295, file: !12, line: 161, baseType: !7, size: 32, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !295, file: !12, line: 162, baseType: !350, size: 32, offset: 96)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !99, line: 32, baseType: !351)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !352, line: 96, baseType: !105)
!352 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!353 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !295, file: !12, line: 163, baseType: !354, size: 32, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !355, line: 274, baseType: !356)
!355 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !355, line: 274, size: 32, elements: !357)
!357 = !{!358}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !356, file: !355, line: 274, baseType: !359, size: 32)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !355, line: 69, baseType: !360)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !355, line: 64, size: 32, elements: !361)
!361 = !{!362}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !360, file: !355, line: 65, baseType: !7, size: 32)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !295, file: !12, line: 164, baseType: !292, size: 64, offset: 192)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !295, file: !12, line: 165, baseType: !365, size: 128, offset: 256)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !281, line: 14, size: 128, elements: !366)
!366 = !{!367}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !365, file: !281, line: 15, baseType: !368, size: 128)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !202, line: 26, size: 128, elements: !369)
!369 = !{!370, !374}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !368, file: !202, line: 27, baseType: !371, size: 64)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !202, line: 12, size: 64, elements: !372)
!372 = !{!373}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !371, file: !202, line: 13, baseType: !206, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !368, file: !202, line: 28, baseType: !206, size: 64, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !295, file: !12, line: 166, baseType: !376, size: 64, offset: 384)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DISubroutineType(types: !378)
!378 = !{!285}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !295, file: !12, line: 167, baseType: !285, size: 64, offset: 448)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !277, file: !12, line: 123, baseType: !319, size: 8, offset: 448)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !277, file: !12, line: 124, baseType: !319, size: 8, offset: 456)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !277, file: !12, line: 125, baseType: !319, size: 8, offset: 464)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !277, file: !12, line: 126, baseType: !319, size: 8, offset: 472)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !261, file: !137, line: 671, baseType: !277, size: 512, offset: 1216)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !261, file: !137, line: 679, baseType: !386, size: 64, offset: 1728)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !136, file: !137, line: 800, baseType: !388, size: 64, offset: 5248)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !390)
!390 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !137, line: 800, flags: DIFlagFwdDecl)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !136, file: !137, line: 809, baseType: !392, size: 64, offset: 5312)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !137, line: 70, flags: DIFlagFwdDecl)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !136, file: !137, line: 825, baseType: !395, size: 2048, align: 512, offset: 5632)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !137, line: 509, size: 2048, align: 512, elements: !396)
!396 = !{!397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !395, file: !137, line: 511, baseType: !209, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !395, file: !137, line: 512, baseType: !209, size: 64, offset: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !395, file: !137, line: 513, baseType: !209, size: 64, offset: 128)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !395, file: !137, line: 514, baseType: !209, size: 64, offset: 192)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !395, file: !137, line: 515, baseType: !209, size: 64, offset: 256)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !395, file: !137, line: 516, baseType: !209, size: 64, offset: 320)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !395, file: !137, line: 518, baseType: !209, size: 64, offset: 384)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !395, file: !137, line: 519, baseType: !209, size: 64, offset: 448)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !395, file: !137, line: 520, baseType: !220, size: 64, offset: 512)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !395, file: !137, line: 522, baseType: !209, size: 64, offset: 576)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !395, file: !137, line: 523, baseType: !209, size: 64, offset: 640)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !395, file: !137, line: 524, baseType: !220, size: 64, offset: 704)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !395, file: !137, line: 526, baseType: !220, size: 64, offset: 768)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !395, file: !137, line: 527, baseType: !209, size: 64, offset: 832)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !395, file: !137, line: 529, baseType: !209, size: 64, offset: 896)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !395, file: !137, line: 530, baseType: !209, size: 64, offset: 960)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !395, file: !137, line: 531, baseType: !209, size: 64, offset: 1024)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !395, file: !137, line: 532, baseType: !209, size: 64, offset: 1088)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !395, file: !137, line: 533, baseType: !209, size: 64, offset: 1152)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !395, file: !137, line: 535, baseType: !209, size: 64, offset: 1216)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !395, file: !137, line: 536, baseType: !209, size: 64, offset: 1280)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !395, file: !137, line: 537, baseType: !209, size: 64, offset: 1344)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !395, file: !137, line: 538, baseType: !209, size: 64, offset: 1408)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !395, file: !137, line: 539, baseType: !209, size: 64, offset: 1472)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !395, file: !137, line: 540, baseType: !209, size: 64, offset: 1536)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !395, file: !137, line: 541, baseType: !209, size: 64, offset: 1600)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !395, file: !137, line: 542, baseType: !209, size: 64, offset: 1664)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !395, file: !137, line: 543, baseType: !209, size: 64, offset: 1728)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !136, file: !137, line: 833, baseType: !7, size: 32, offset: 7680)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !136, file: !137, line: 836, baseType: !7, size: 32, offset: 7712)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !136, file: !137, line: 837, baseType: !105, size: 32, offset: 7744)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !136, file: !137, line: 838, baseType: !429, size: 64, offset: 7808)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !431)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !120, line: 19, baseType: !119)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !136, file: !137, line: 839, baseType: !433, size: 64, offset: 7872)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !136, file: !137, line: 840, baseType: !431, size: 64, offset: 7936)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !136, file: !137, line: 841, baseType: !93, size: 64, offset: 8000)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !136, file: !137, line: 843, baseType: !180, size: 16, offset: 8064)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !136, file: !137, line: 845, baseType: !180, size: 16, offset: 8080)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !136, file: !137, line: 848, baseType: !105, size: 32, offset: 8096)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !136, file: !137, line: 849, baseType: !440, size: 32, offset: 8128)
!440 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !137, line: 718, size: 32, elements: !441)
!441 = !{!442, !449}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !440, file: !137, line: 724, baseType: !443, size: 32)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !440, file: !137, line: 719, size: 32, elements: !444)
!444 = !{!445, !446, !447, !448}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !443, file: !137, line: 720, baseType: !319, size: 8)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !443, file: !137, line: 721, baseType: !319, size: 8, offset: 8)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !443, file: !137, line: 722, baseType: !319, size: 8, offset: 16)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !443, file: !137, line: 723, baseType: !319, size: 8, offset: 24)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !440, file: !137, line: 725, baseType: !127, size: 32)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !136, file: !137, line: 850, baseType: !98, size: 128, offset: 8192)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !136, file: !137, line: 851, baseType: !452, size: 64, offset: 8320)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !137, line: 60, flags: DIFlagFwdDecl)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !136, file: !137, line: 855, baseType: !106, size: 64, offset: 8384)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !136, file: !137, line: 856, baseType: !319, size: 8, offset: 8448)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !136, file: !137, line: 857, baseType: !319, size: 8, offset: 8456)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !136, file: !137, line: 858, baseType: !105, size: 32, offset: 8480)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !136, file: !137, line: 859, baseType: !98, size: 128, offset: 8512)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !136, file: !137, line: 860, baseType: !105, size: 32, offset: 8640)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !136, file: !137, line: 861, baseType: !98, size: 128, offset: 8704)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !136, file: !137, line: 873, baseType: !462, size: 256, offset: 8832)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !137, line: 376, size: 256, elements: !463)
!463 = !{!464, !465, !466, !467}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !462, file: !137, line: 381, baseType: !106, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !462, file: !137, line: 384, baseType: !211, size: 64, offset: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !462, file: !137, line: 389, baseType: !211, size: 64, offset: 128)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !462, file: !137, line: 392, baseType: !211, size: 64, offset: 192)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !136, file: !137, line: 875, baseType: !98, size: 128, offset: 9088)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !136, file: !137, line: 877, baseType: !470, size: 320, offset: 9216)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !471, line: 86, size: 320, elements: !472)
!471 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!472 = !{!473, !474, !475}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !470, file: !471, line: 87, baseType: !105, size: 32)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !470, file: !471, line: 88, baseType: !98, size: 128, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !470, file: !471, line: 89, baseType: !98, size: 128, offset: 192)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !136, file: !137, line: 878, baseType: !201, size: 192, align: 64, offset: 9536)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !136, file: !137, line: 881, baseType: !478, size: 64, offset: 9728)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !40, line: 733, size: 10240, elements: !480)
!480 = !{!481, !3195}
!481 = !DIDerivedType(tag: DW_TAG_member, scope: !479, file: !40, line: 734, baseType: !482, size: 10240)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !479, file: !40, line: 734, size: 10240, elements: !483)
!483 = !{!484, !488, !510, !3074, !3075, !3076, !3077, !3078, !3079, !3086, !3087, !3088, !3094, !3095, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3127, !3129, !3132, !3175, !3176, !3177, !3180, !3181, !3182, !3185, !3186, !3187, !3193, !3194}
!484 = !DIDerivedType(tag: DW_TAG_member, scope: !482, file: !40, line: 739, baseType: !485, size: 512, align: 512)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !482, file: !40, line: 739, size: 512, align: 512, elements: !486)
!486 = !{!487}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !485, file: !40, line: 747, baseType: !155, size: 32)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !482, file: !40, line: 750, baseType: !489, size: 128, offset: 512)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !490, line: 218, size: 128, elements: !491)
!490 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!491 = !{!492, !508, !509}
!492 = !DIDerivedType(tag: DW_TAG_member, scope: !489, file: !490, line: 219, baseType: !493, size: 32)
!493 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !489, file: !490, line: 219, size: 32, elements: !494)
!494 = !{!495, !504}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !493, file: !490, line: 220, baseType: !496, size: 32)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !497, line: 29, baseType: !498)
!497 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !497, line: 17, size: 32, elements: !499)
!499 = !{!500}
!500 = !DIDerivedType(tag: DW_TAG_member, scope: !498, file: !497, line: 18, baseType: !501, size: 32)
!501 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !498, file: !497, line: 18, size: 32, elements: !502)
!502 = !{!503}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !501, file: !497, line: 19, baseType: !304, size: 32)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !493, file: !490, line: 221, baseType: !505)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !490, line: 197, baseType: !506)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !490, line: 197, elements: !507)
!507 = !{}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !489, file: !490, line: 223, baseType: !7, size: 32, offset: 32)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !489, file: !490, line: 224, baseType: !93, size: 64, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !482, file: !40, line: 752, baseType: !511, size: 64, offset: 640)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DISubroutineType(types: !513)
!513 = !{!106, !514, !106, !106, !106, !106}
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !69, line: 994, size: 1856, align: 64, elements: !516)
!516 = !{!517, !531, !532, !534, !541, !553, !556, !557, !681, !891, !900, !3064, !3065, !3066, !3067, !3068, !3069, !3071, !3072, !3073}
!517 = !DIDerivedType(tag: DW_TAG_member, scope: !515, file: !69, line: 995, baseType: !518, size: 128)
!518 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !515, file: !69, line: 995, size: 128, elements: !519)
!519 = !{!520, !521, !530}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !518, file: !69, line: 996, baseType: !167, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !518, file: !69, line: 997, baseType: !522, size: 128, align: 64)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !99, line: 232, size: 128, align: 64, elements: !523)
!523 = !{!524, !526}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !522, file: !99, line: 233, baseType: !525, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !522, file: !99, line: 234, baseType: !527, size: 64, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{null, !525}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !518, file: !69, line: 998, baseType: !7, size: 32)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !515, file: !69, line: 1005, baseType: !496, size: 32, offset: 128)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !515, file: !69, line: 1006, baseType: !533, size: 32, offset: 160)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !99, line: 156, baseType: !7)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !515, file: !69, line: 1007, baseType: !535, size: 64, offset: 192)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !536, line: 13, baseType: !537)
!536 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !99, line: 181, baseType: !538)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !99, line: 179, size: 64, elements: !539)
!539 = !{!540}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !538, file: !99, line: 180, baseType: !220, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !515, file: !69, line: 1008, baseType: !542, size: 256, offset: 256)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !543, line: 66, size: 256, elements: !544)
!543 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!544 = !{!545, !546, !547, !552}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !542, file: !543, line: 67, baseType: !535, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !542, file: !543, line: 68, baseType: !302, size: 32, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !542, file: !543, line: 70, baseType: !548, size: 32, offset: 96)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !549, line: 15, size: 32, elements: !550)
!549 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!550 = !{!551}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !548, file: !549, line: 20, baseType: !155, size: 32)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !542, file: !543, line: 72, baseType: !98, size: 128, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !515, file: !69, line: 1009, baseType: !554, size: 64, offset: 512)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !99, line: 52, baseType: !555)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !352, line: 88, baseType: !222)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !515, file: !69, line: 1010, baseType: !7, size: 32, offset: 576)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !515, file: !69, line: 1011, baseType: !558, size: 256, offset: 640)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !69, line: 948, size: 256, elements: !559)
!559 = !{!560, !583, !671, !672, !679, !680}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !558, file: !69, line: 949, baseType: !561, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !562, line: 34, baseType: !563)
!562 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !562, line: 25, size: 64, elements: !564)
!564 = !{!565}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !563, file: !562, line: 26, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !567, line: 27, baseType: !568)
!567 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !567, line: 13, size: 64, elements: !569)
!569 = !{!570, !582}
!570 = !DIDerivedType(tag: DW_TAG_member, scope: !568, file: !567, line: 14, baseType: !571, size: 32)
!571 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !568, file: !567, line: 14, size: 32, elements: !572)
!572 = !{!573, !574}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !571, file: !567, line: 15, baseType: !155, size: 32)
!574 = !DIDerivedType(tag: DW_TAG_member, scope: !571, file: !567, line: 16, baseType: !575, size: 32)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !571, file: !567, line: 16, size: 32, elements: !576)
!576 = !{!577, !578}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !575, file: !567, line: 18, baseType: !319, size: 8)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !575, file: !567, line: 19, baseType: !579, size: 24, offset: 8)
!579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 24, elements: !580)
!580 = !{!581}
!581 = !DISubrange(count: 3)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !568, file: !567, line: 26, baseType: !307, size: 32, offset: 32)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !558, file: !69, line: 950, baseType: !584, size: 64, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !17, line: 59, size: 768, elements: !586)
!586 = !{!587, !588, !589, !590, !603, !604, !611, !612}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !585, file: !17, line: 61, baseType: !150, size: 32)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !585, file: !17, line: 62, baseType: !7, size: 32, offset: 32)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !585, file: !17, line: 63, baseType: !496, size: 32, offset: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !585, file: !17, line: 65, baseType: !591, size: 256, offset: 128)
!591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !592, size: 256, elements: !601)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !99, line: 194, size: 64, elements: !593)
!593 = !{!594}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !592, file: !99, line: 195, baseType: !595, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !99, line: 198, size: 128, elements: !597)
!597 = !{!598, !599}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !596, file: !99, line: 199, baseType: !595, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !596, file: !99, line: 199, baseType: !600, size: 64, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!601 = !{!602}
!602 = !DISubrange(count: 4)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !585, file: !17, line: 66, baseType: !592, size: 64, offset: 384)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !585, file: !17, line: 68, baseType: !605, size: 192, offset: 448)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !606, line: 41, baseType: !607)
!606 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !606, line: 37, size: 192, elements: !608)
!608 = !{!609, !610}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !607, file: !606, line: 38, baseType: !496, size: 32)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !607, file: !606, line: 39, baseType: !98, size: 128, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !585, file: !17, line: 69, baseType: !522, size: 128, align: 64, offset: 640)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !585, file: !17, line: 70, baseType: !613, offset: 768)
!613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !614, elements: !669)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !17, line: 54, size: 128, elements: !615)
!615 = !{!616, !617}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !614, file: !17, line: 55, baseType: !105, size: 32)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !614, file: !17, line: 56, baseType: !618, size: 64, offset: 64)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !620, line: 26, size: 1152, elements: !621)
!620 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!621 = !{!622, !636, !637, !638, !639, !643, !644, !645, !648, !652, !656, !657, !668}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !619, file: !620, line: 27, baseType: !623, size: 192)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !624, line: 19, size: 192, elements: !625)
!624 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!625 = !{!626, !634, !635}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !623, file: !624, line: 20, baseType: !627, size: 128)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !628, line: 296, size: 128, elements: !629)
!628 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!629 = !{!630, !631, !633}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !627, file: !628, line: 297, baseType: !496, size: 32)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !627, file: !628, line: 299, baseType: !632, size: 32, offset: 32)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !99, line: 154, baseType: !7)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !627, file: !628, line: 300, baseType: !93, size: 64, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !623, file: !624, line: 21, baseType: !7, size: 32, offset: 128)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !623, file: !624, line: 22, baseType: !7, size: 32, offset: 160)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !619, file: !620, line: 28, baseType: !522, size: 128, align: 64, offset: 192)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !619, file: !620, line: 29, baseType: !7, size: 32, offset: 320)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !619, file: !620, line: 30, baseType: !135, size: 64, offset: 384)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !619, file: !620, line: 31, baseType: !640, size: 64, offset: 448)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !642, line: 11, flags: DIFlagFwdDecl)
!642 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!643 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !619, file: !620, line: 32, baseType: !7, size: 32, offset: 512)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !619, file: !620, line: 33, baseType: !618, size: 64, offset: 576)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !619, file: !620, line: 35, baseType: !646, size: 64, offset: 640)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !620, line: 17, flags: DIFlagFwdDecl)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !619, file: !620, line: 37, baseType: !649, size: 64, offset: 704)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !651, line: 18, flags: DIFlagFwdDecl)
!651 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!652 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !619, file: !620, line: 38, baseType: !653, size: 64, offset: 768)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !655, line: 16, flags: DIFlagFwdDecl)
!655 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!656 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !619, file: !620, line: 39, baseType: !105, size: 32, offset: 832)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !619, file: !620, line: 40, baseType: !658, size: 192, offset: 896)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !659, line: 9, size: 192, elements: !660)
!659 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!660 = !{!661, !662, !666, !667}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !658, file: !659, line: 10, baseType: !535, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !658, file: !659, line: 11, baseType: !663, size: 64, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !665)
!665 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !659, line: 7, flags: DIFlagFwdDecl)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !658, file: !659, line: 12, baseType: !7, size: 32, offset: 128)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !658, file: !659, line: 13, baseType: !150, size: 32, offset: 160)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !619, file: !620, line: 42, baseType: !105, size: 32, offset: 1088)
!669 = !{!670}
!670 = !DISubrange(count: -1)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !558, file: !69, line: 951, baseType: !16, size: 32, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !558, file: !69, line: 952, baseType: !673, size: 32, offset: 160)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !651, line: 23, baseType: !674)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !651, line: 21, size: 32, elements: !675)
!675 = !{!676}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !674, file: !651, line: 22, baseType: !677, size: 32)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !99, line: 37, baseType: !678)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !352, line: 49, baseType: !7)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !558, file: !69, line: 952, baseType: !673, size: 32, offset: 192)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !558, file: !69, line: 953, baseType: !105, size: 32, offset: 224)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !515, file: !69, line: 1012, baseType: !682, size: 64, offset: 896)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !684)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !685, line: 110, size: 1472, elements: !686)
!685 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!686 = !{!687, !688, !689, !696, !697, !698, !699, !700, !701, !702, !703, !709, !710, !711, !712, !713, !714, !841, !842, !843, !844, !845, !876, !877, !878, !886}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !684, file: !685, line: 111, baseType: !535, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !684, file: !685, line: 112, baseType: !673, size: 32, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !684, file: !685, line: 113, baseType: !690, size: 32, offset: 96)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !651, line: 28, baseType: !691)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !651, line: 26, size: 32, elements: !692)
!692 = !{!693}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !691, file: !651, line: 27, baseType: !694, size: 32)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !99, line: 38, baseType: !695)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !352, line: 50, baseType: !7)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !684, file: !685, line: 114, baseType: !673, size: 32, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !684, file: !685, line: 115, baseType: !690, size: 32, offset: 160)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !684, file: !685, line: 116, baseType: !673, size: 32, offset: 192)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !684, file: !685, line: 117, baseType: !690, size: 32, offset: 224)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !684, file: !685, line: 118, baseType: !673, size: 32, offset: 256)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !684, file: !685, line: 119, baseType: !690, size: 32, offset: 288)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !684, file: !685, line: 120, baseType: !7, size: 32, offset: 320)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !684, file: !685, line: 121, baseType: !704, size: 64, offset: 384)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !705, line: 24, baseType: !706)
!705 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !705, line: 24, size: 64, elements: !707)
!707 = !{!708}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !706, file: !705, line: 24, baseType: !209, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !684, file: !685, line: 122, baseType: !704, size: 64, offset: 448)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !684, file: !685, line: 123, baseType: !704, size: 64, offset: 512)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !684, file: !685, line: 124, baseType: !704, size: 64, offset: 576)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !684, file: !685, line: 125, baseType: !704, size: 64, offset: 640)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !684, file: !685, line: 127, baseType: !321, size: 8, offset: 704)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !684, file: !685, line: 129, baseType: !715, size: 64, offset: 768)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !717, line: 195, size: 1728, elements: !718)
!717 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!718 = !{!719, !720, !725, !730, !739, !742, !743, !750, !751, !752, !753, !756, !757, !758, !760, !761, !805, !826}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !716, file: !717, line: 196, baseType: !150, size: 32)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !716, file: !717, line: 197, baseType: !721, size: 32, offset: 32)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !717, line: 28, baseType: !722)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !99, line: 104, baseType: !723)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !128, line: 20, baseType: !724)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !130, line: 26, baseType: !105)
!725 = !DIDerivedType(tag: DW_TAG_member, scope: !716, file: !717, line: 198, baseType: !726, size: 192, offset: 64)
!726 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !716, file: !717, line: 198, size: 192, elements: !727)
!727 = !{!728, !729}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !726, file: !717, line: 199, baseType: !98, size: 128)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !726, file: !717, line: 200, baseType: !201, size: 192, align: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !716, file: !717, line: 205, baseType: !731, size: 320, offset: 256)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !732, line: 48, size: 320, elements: !733)
!732 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!733 = !{!734, !735, !736, !737, !738}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !731, file: !732, line: 49, baseType: !535, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !731, file: !732, line: 55, baseType: !535, size: 64, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !731, file: !732, line: 57, baseType: !548, size: 32, offset: 128)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !731, file: !732, line: 59, baseType: !302, size: 32, offset: 160)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !731, file: !732, line: 60, baseType: !98, size: 128, offset: 192)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !716, file: !717, line: 206, baseType: !740, size: 64, offset: 576)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !717, line: 206, flags: DIFlagFwdDecl)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !716, file: !717, line: 207, baseType: !93, size: 64, offset: 640)
!743 = !DIDerivedType(tag: DW_TAG_member, scope: !716, file: !717, line: 208, baseType: !744, size: 64, offset: 704)
!744 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !716, file: !717, line: 208, size: 64, elements: !745)
!745 = !{!746, !749}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !744, file: !717, line: 209, baseType: !747, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !748, line: 8, baseType: !221)
!748 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!749 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !744, file: !717, line: 210, baseType: !747, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !716, file: !717, line: 212, baseType: !747, size: 64, offset: 768)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !716, file: !717, line: 213, baseType: !673, size: 32, offset: 832)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !716, file: !717, line: 214, baseType: !690, size: 32, offset: 864)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !716, file: !717, line: 215, baseType: !754, size: 32, offset: 896)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !717, line: 31, baseType: !755)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !99, line: 110, baseType: !127)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !716, file: !717, line: 216, baseType: !180, size: 16, offset: 928)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !716, file: !717, line: 217, baseType: !180, size: 16, offset: 944)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !716, file: !717, line: 221, baseType: !759, size: 16, offset: 960)
!759 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !716, file: !717, line: 228, baseType: !106, size: 64, offset: 1024)
!761 = !DIDerivedType(tag: DW_TAG_member, scope: !716, file: !717, line: 245, baseType: !762, size: 320, offset: 1088)
!762 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !716, file: !717, line: 245, size: 320, elements: !763)
!763 = !{!764, !796}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !762, file: !717, line: 246, baseType: !765, size: 320)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !717, line: 114, size: 320, elements: !766)
!766 = !{!767, !768, !781, !784, !793}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !765, file: !717, line: 116, baseType: !106, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, scope: !765, file: !717, line: 117, baseType: !769, size: 64, offset: 64)
!769 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !765, file: !717, line: 117, size: 64, elements: !770)
!770 = !{!771, !780}
!771 = !DIDerivedType(tag: DW_TAG_member, scope: !769, file: !717, line: 118, baseType: !772, size: 64)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !769, file: !717, line: 118, size: 64, elements: !773)
!773 = !{!774, !775}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !772, file: !717, line: 120, baseType: !178, size: 16)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !772, file: !717, line: 121, baseType: !776, size: 48, offset: 16)
!776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !777, size: 48, elements: !778)
!777 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!778 = !{!779}
!779 = !DISubrange(count: 6)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !769, file: !717, line: 127, baseType: !106, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !765, file: !717, line: 129, baseType: !782, size: 64, offset: 128)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !717, line: 102, flags: DIFlagFwdDecl)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !765, file: !717, line: 130, baseType: !785, size: 64, offset: 192)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !717, line: 108, size: 192, elements: !787)
!787 = !{!788, !789, !790}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !786, file: !717, line: 109, baseType: !522, size: 128, align: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !786, file: !717, line: 110, baseType: !150, size: 32, offset: 128)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !786, file: !717, line: 111, baseType: !791, size: 8, offset: 160)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !99, line: 35, baseType: !792)
!792 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !765, file: !717, line: 131, baseType: !794, size: 64, offset: 256)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !777)
!796 = !DIDerivedType(tag: DW_TAG_member, scope: !762, file: !717, line: 247, baseType: !797, size: 320)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !762, file: !717, line: 247, size: 320, elements: !798)
!798 = !{!799, !800, !801, !802, !803}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !797, file: !717, line: 248, baseType: !106, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !797, file: !717, line: 249, baseType: !106, size: 64, offset: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !797, file: !717, line: 250, baseType: !782, size: 64, offset: 128)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !797, file: !717, line: 251, baseType: !785, size: 64, offset: 192)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !797, file: !717, line: 252, baseType: !804, size: 64, offset: 256)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, scope: !716, file: !717, line: 260, baseType: !806, size: 256, offset: 1408)
!806 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !716, file: !717, line: 260, size: 256, elements: !807)
!807 = !{!808, !814}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !806, file: !717, line: 261, baseType: !809, size: 256)
!809 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !717, line: 134, size: 256, elements: !810)
!810 = !{!811, !812}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !809, file: !717, line: 135, baseType: !93, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !809, file: !717, line: 136, baseType: !813, size: 256)
!813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 256, elements: !601)
!814 = !DIDerivedType(tag: DW_TAG_member, scope: !806, file: !717, line: 262, baseType: !815, size: 256)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !806, file: !717, line: 262, size: 256, elements: !816)
!816 = !{!817, !818}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !815, file: !717, line: 264, baseType: !98, size: 128)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !815, file: !717, line: 265, baseType: !819, size: 128, offset: 128)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !820, line: 22, size: 128, elements: !821)
!820 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!821 = !{!822, !825}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !819, file: !820, line: 23, baseType: !823, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !820, line: 23, flags: DIFlagFwdDecl)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !819, file: !820, line: 24, baseType: !106, size: 64, offset: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !716, file: !717, line: 280, baseType: !827, size: 64, offset: 1664)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !717, line: 176, size: 192, elements: !829)
!829 = !{!830, !839, !840}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !828, file: !717, line: 177, baseType: !831, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !717, line: 171, baseType: !832)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DISubroutineType(types: !834)
!834 = !{!105, !715, !835, !837, !715}
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !783)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !809)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !828, file: !717, line: 178, baseType: !715, size: 64, offset: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !828, file: !717, line: 179, baseType: !782, size: 64, offset: 128)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !684, file: !685, line: 130, baseType: !715, size: 64, offset: 832)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !684, file: !685, line: 131, baseType: !715, size: 64, offset: 896)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !684, file: !685, line: 132, baseType: !715, size: 64, offset: 960)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !684, file: !685, line: 135, baseType: !93, size: 64, offset: 1024)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !684, file: !685, line: 137, baseType: !846, size: 64, offset: 1088)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !848, line: 14, size: 1088, elements: !849)
!848 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!849 = !{!850, !851, !860, !861, !862, !863, !864, !865}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !847, file: !848, line: 15, baseType: !150, size: 32)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !847, file: !848, line: 17, baseType: !852, size: 320, offset: 64)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !853, line: 22, size: 320, elements: !854)
!853 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!854 = !{!855, !856, !857, !858}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !852, file: !853, line: 23, baseType: !302, size: 32)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !852, file: !853, line: 24, baseType: !220, size: 64, offset: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !852, file: !853, line: 26, baseType: !98, size: 128, offset: 128)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !852, file: !853, line: 28, baseType: !859, size: 64, offset: 256)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !847, file: !848, line: 19, baseType: !106, size: 64, offset: 384)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !847, file: !848, line: 20, baseType: !535, size: 64, offset: 448)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !847, file: !848, line: 23, baseType: !596, size: 128, offset: 512)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !847, file: !848, line: 24, baseType: !673, size: 32, offset: 640)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !847, file: !848, line: 29, baseType: !535, size: 64, offset: 704)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !847, file: !848, line: 36, baseType: !866, size: 320, offset: 768)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !867, line: 15, size: 320, elements: !868)
!867 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!868 = !{!869, !870, !871, !872, !873, !874, !875}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !866, file: !867, line: 16, baseType: !302, size: 32)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !866, file: !867, line: 18, baseType: !105, size: 32, offset: 32)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !866, file: !867, line: 19, baseType: !105, size: 32, offset: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !866, file: !867, line: 20, baseType: !105, size: 32, offset: 96)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !866, file: !867, line: 21, baseType: !105, size: 32, offset: 128)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !866, file: !867, line: 22, baseType: !106, size: 64, offset: 192)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !866, file: !867, line: 23, baseType: !106, size: 64, offset: 256)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !684, file: !685, line: 138, baseType: !649, size: 64, offset: 1152)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !684, file: !685, line: 139, baseType: !653, size: 64, offset: 1216)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !684, file: !685, line: 140, baseType: !879, size: 64, offset: 1280)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !685, line: 25, size: 64, elements: !881)
!881 = !{!882, !883, !884}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !880, file: !685, line: 26, baseType: !155, size: 32)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !880, file: !685, line: 27, baseType: !105, size: 32, offset: 32)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !880, file: !685, line: 28, baseType: !885, offset: 64)
!885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !690, elements: !669)
!886 = !DIDerivedType(tag: DW_TAG_member, scope: !684, file: !685, line: 142, baseType: !887, size: 128, offset: 1344)
!887 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !684, file: !685, line: 142, size: 128, elements: !888)
!888 = !{!889, !890}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !887, file: !685, line: 143, baseType: !105, size: 32)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !887, file: !685, line: 144, baseType: !522, size: 128, align: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !515, file: !69, line: 1013, baseType: !892, size: 256, offset: 960)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !69, line: 970, size: 256, elements: !893)
!893 = !{!894, !895, !896, !897, !898, !899}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !892, file: !69, line: 971, baseType: !106, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !892, file: !69, line: 972, baseType: !7, size: 32, offset: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !892, file: !69, line: 973, baseType: !7, size: 32, offset: 96)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !892, file: !69, line: 974, baseType: !7, size: 32, offset: 128)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !892, file: !69, line: 975, baseType: !7, size: 32, offset: 160)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !892, file: !69, line: 976, baseType: !554, size: 64, offset: 192)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !515, file: !69, line: 1014, baseType: !901, size: 128, offset: 1216)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !902, line: 8, size: 128, elements: !903)
!902 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!903 = !{!904, !3063}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !901, file: !902, line: 9, baseType: !905, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !907, line: 70, size: 256, elements: !908)
!907 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!908 = !{!909, !3060, !3061, !3062}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !906, file: !907, line: 71, baseType: !910, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !912, line: 82, size: 1536, elements: !913)
!912 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!913 = !{!914, !915, !920, !928, !929, !944, !3027, !3029, !3042, !3043, !3044, !3045, !3046, !3052, !3053, !3054}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !911, file: !912, line: 84, baseType: !7, size: 32)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !911, file: !912, line: 85, baseType: !916, size: 32, offset: 32)
!916 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !355, line: 275, baseType: !917)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !355, line: 275, size: 32, elements: !918)
!918 = !{!919}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !917, file: !355, line: 275, baseType: !359, size: 32)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !911, file: !912, line: 86, baseType: !921, size: 128, offset: 64)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !922, line: 38, size: 128, elements: !923)
!922 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!923 = !{!924, !926}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !921, file: !922, line: 39, baseType: !925, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !921, file: !922, line: 39, baseType: !927, size: 64, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !911, file: !912, line: 87, baseType: !910, size: 64, offset: 192)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !911, file: !912, line: 88, baseType: !930, size: 128, offset: 256)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !912, line: 49, size: 128, elements: !931)
!931 = !{!932, !941}
!932 = !DIDerivedType(tag: DW_TAG_member, scope: !930, file: !912, line: 50, baseType: !933, size: 64)
!933 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !930, file: !912, line: 50, size: 64, elements: !934)
!934 = !{!935, !940}
!935 = !DIDerivedType(tag: DW_TAG_member, scope: !933, file: !912, line: 51, baseType: !936, size: 64)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !933, file: !912, line: 51, size: 64, elements: !937)
!937 = !{!938, !939}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !936, file: !912, line: 52, baseType: !127, size: 32)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !936, file: !912, line: 52, baseType: !127, size: 32, offset: 32)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !933, file: !912, line: 54, baseType: !209, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !930, file: !912, line: 56, baseType: !942, size: 64, offset: 64)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !321)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !911, file: !912, line: 89, baseType: !945, size: 64, offset: 384)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !69, line: 641, size: 4800, elements: !947)
!947 = !{!948, !950, !951, !952, !953, !954, !955, !958, !959, !1149, !2841, !2842, !2843, !2844, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !3009, !3012, !3013, !3014, !3023, !3024, !3025, !3026}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !946, file: !69, line: 642, baseType: !949, size: 16)
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !99, line: 24, baseType: !180)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !946, file: !69, line: 643, baseType: !180, size: 16, offset: 16)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !946, file: !69, line: 644, baseType: !673, size: 32, offset: 32)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !946, file: !69, line: 645, baseType: !98, size: 128, offset: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !946, file: !69, line: 646, baseType: !690, size: 32, offset: 192)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !946, file: !69, line: 647, baseType: !7, size: 32, offset: 224)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !946, file: !69, line: 650, baseType: !956, size: 64, offset: 256)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !69, line: 607, flags: DIFlagFwdDecl)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !946, file: !69, line: 651, baseType: !956, size: 64, offset: 320)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !946, file: !69, line: 654, baseType: !960, size: 64, offset: 384)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !962)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !69, line: 1966, size: 2048, align: 512, elements: !963)
!963 = !{!964, !968, !981, !987, !991, !995, !999, !1003, !1007, !1011, !1015, !1016, !1022, !1026, !1063, !1094, !1104, !1110, !1114, !1118, !1122, !1126, !1130, !1136, !1140}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !962, file: !69, line: 1967, baseType: !965, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DISubroutineType(types: !967)
!967 = !{!910, !945, !910, !7}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !962, file: !69, line: 1968, baseType: !969, size: 64, offset: 64)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DISubroutineType(types: !971)
!971 = !{!794, !910, !945, !972}
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !974, line: 10, size: 128, elements: !975)
!974 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!975 = !{!976, !980}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !973, file: !974, line: 11, baseType: !977, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DISubroutineType(types: !979)
!979 = !{null, !93}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !973, file: !974, line: 12, baseType: !93, size: 64, offset: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !962, file: !69, line: 1969, baseType: !982, size: 64, offset: 128)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DISubroutineType(types: !984)
!984 = !{!105, !985, !945, !105}
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !705, line: 42, flags: DIFlagFwdDecl)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !962, file: !69, line: 1970, baseType: !988, size: 64, offset: 192)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DISubroutineType(types: !990)
!990 = !{!956, !945, !105, !791}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !962, file: !69, line: 1972, baseType: !992, size: 64, offset: 256)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DISubroutineType(types: !994)
!994 = !{!105, !910, !804, !105}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !962, file: !69, line: 1974, baseType: !996, size: 64, offset: 320)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DISubroutineType(types: !998)
!998 = !{!105, !985, !945, !910, !949, !791}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !962, file: !69, line: 1976, baseType: !1000, size: 64, offset: 384)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!105, !910, !945, !910}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !962, file: !69, line: 1977, baseType: !1004, size: 64, offset: 448)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!105, !945, !910}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !962, file: !69, line: 1978, baseType: !1008, size: 64, offset: 512)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!105, !985, !945, !910, !794}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !962, file: !69, line: 1980, baseType: !1012, size: 64, offset: 576)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!105, !985, !945, !910, !949}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !962, file: !69, line: 1982, baseType: !1004, size: 64, offset: 640)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !962, file: !69, line: 1983, baseType: !1017, size: 64, offset: 704)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!105, !985, !945, !910, !949, !1020}
!1020 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !99, line: 21, baseType: !1021)
!1021 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !99, line: 18, baseType: !127)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !962, file: !69, line: 1985, baseType: !1023, size: 64, offset: 768)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!105, !985, !945, !910, !945, !910, !7}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !962, file: !69, line: 1987, baseType: !1027, size: 64, offset: 832)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!105, !985, !910, !1030}
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !69, line: 226, size: 640, elements: !1032)
!1032 = !{!1033, !1034, !1035, !1045, !1054, !1055, !1060, !1061, !1062}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1031, file: !69, line: 227, baseType: !7, size: 32)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1031, file: !69, line: 228, baseType: !949, size: 16, offset: 32)
!1035 = !DIDerivedType(tag: DW_TAG_member, scope: !1031, file: !69, line: 241, baseType: !1036, size: 32, offset: 64)
!1036 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1031, file: !69, line: 241, size: 32, elements: !1037)
!1037 = !{!1038, !1039}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1036, file: !69, line: 242, baseType: !673, size: 32)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1036, file: !69, line: 243, baseType: !1040, size: 32)
!1040 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1041, line: 16, baseType: !1042)
!1041 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1041, line: 14, size: 32, elements: !1043)
!1043 = !{!1044}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1042, file: !1041, line: 15, baseType: !677, size: 32)
!1045 = !DIDerivedType(tag: DW_TAG_member, scope: !1031, file: !69, line: 245, baseType: !1046, size: 32, offset: 96)
!1046 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1031, file: !69, line: 245, size: 32, elements: !1047)
!1047 = !{!1048, !1049}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1046, file: !69, line: 246, baseType: !690, size: 32)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1046, file: !69, line: 247, baseType: !1050, size: 32)
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1041, line: 20, baseType: !1051)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1041, line: 18, size: 32, elements: !1052)
!1052 = !{!1053}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1051, file: !1041, line: 19, baseType: !694, size: 32)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1031, file: !69, line: 249, baseType: !554, size: 64, offset: 128)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1031, file: !69, line: 250, baseType: !1056, size: 128, offset: 192)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !748, line: 13, size: 128, elements: !1057)
!1057 = !{!1058, !1059}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1056, file: !748, line: 14, baseType: !747, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1056, file: !748, line: 15, baseType: !103, size: 64, offset: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1031, file: !69, line: 251, baseType: !1056, size: 128, offset: 320)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1031, file: !69, line: 252, baseType: !1056, size: 128, offset: 448)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1031, file: !69, line: 259, baseType: !514, size: 64, offset: 576)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !962, file: !69, line: 1988, baseType: !1064, size: 64, offset: 896)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!105, !985, !1067, !1069, !127, !7}
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !901)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1071, line: 22, size: 1280, elements: !1072)
!1071 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1072 = !{!1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1070, file: !1071, line: 23, baseType: !127, size: 32)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1070, file: !1071, line: 24, baseType: !949, size: 16, offset: 32)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1070, file: !1071, line: 25, baseType: !7, size: 32, offset: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1070, file: !1071, line: 26, baseType: !755, size: 32, offset: 96)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1070, file: !1071, line: 27, baseType: !209, size: 64, offset: 128)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1070, file: !1071, line: 28, baseType: !209, size: 64, offset: 192)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1070, file: !1071, line: 41, baseType: !209, size: 64, offset: 256)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1070, file: !1071, line: 42, baseType: !1020, size: 32, offset: 320)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1070, file: !1071, line: 43, baseType: !1020, size: 32, offset: 352)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1070, file: !1071, line: 44, baseType: !673, size: 32, offset: 384)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1070, file: !1071, line: 45, baseType: !690, size: 32, offset: 416)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1070, file: !1071, line: 46, baseType: !554, size: 64, offset: 448)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1070, file: !1071, line: 47, baseType: !1056, size: 128, offset: 512)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1070, file: !1071, line: 48, baseType: !1056, size: 128, offset: 640)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1070, file: !1071, line: 49, baseType: !1056, size: 128, offset: 768)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1070, file: !1071, line: 50, baseType: !1056, size: 128, offset: 896)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1070, file: !1071, line: 51, baseType: !209, size: 64, offset: 1024)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1070, file: !1071, line: 52, baseType: !209, size: 64, offset: 1088)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1070, file: !1071, line: 53, baseType: !127, size: 32, offset: 1152)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1070, file: !1071, line: 54, baseType: !127, size: 32, offset: 1184)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1070, file: !1071, line: 55, baseType: !209, size: 64, offset: 1216)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !962, file: !69, line: 1990, baseType: !1095, size: 64, offset: 960)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!1098, !910, !804, !1101}
!1098 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !99, line: 66, baseType: !1099)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !352, line: 73, baseType: !1100)
!1100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !352, line: 15, baseType: !103)
!1101 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !99, line: 61, baseType: !1102)
!1102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !352, line: 72, baseType: !1103)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !352, line: 16, baseType: !106)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !962, file: !69, line: 1991, baseType: !1105, size: 64, offset: 1024)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!105, !945, !1108, !209, !209}
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !69, line: 55, flags: DIFlagFwdDecl)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !962, file: !69, line: 1993, baseType: !1111, size: 64, offset: 1088)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!105, !945, !105}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !962, file: !69, line: 1994, baseType: !1115, size: 64, offset: 1152)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!105, !945, !910, !514, !7, !949}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !962, file: !69, line: 1997, baseType: !1119, size: 64, offset: 1216)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!105, !985, !945, !514, !949}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !962, file: !69, line: 1999, baseType: !1123, size: 64, offset: 1280)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!956, !985, !910, !105}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !962, file: !69, line: 2001, baseType: !1127, size: 64, offset: 1344)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!105, !985, !910, !956, !105}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !962, file: !69, line: 2003, baseType: !1131, size: 64, offset: 1408)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!105, !985, !910, !1134}
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !69, line: 76, flags: DIFlagFwdDecl)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !962, file: !69, line: 2005, baseType: !1137, size: 64, offset: 1472)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!105, !910, !1134}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !962, file: !69, line: 2006, baseType: !1141, size: 64, offset: 1536)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!1144, !945}
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !69, line: 3192, size: 192, elements: !1146)
!1146 = !{!1147, !1148}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1145, file: !69, line: 3193, baseType: !627, size: 128)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1145, file: !69, line: 3194, baseType: !127, size: 32, offset: 128)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !946, file: !69, line: 655, baseType: !1150, size: 64, offset: 448)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !69, line: 1190, size: 10752, elements: !1152)
!1152 = !{!1153, !1154, !1155, !1156, !1157, !1158, !2354, !2486, !2526, !2609, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621, !2626, !2630, !2631, !2634, !2637, !2640, !2643, !2644, !2645, !2686, !2712, !2713, !2714, !2715, !2716, !2717, !2720, !2724, !2733, !2734, !2735, !2736, !2795, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1151, file: !69, line: 1191, baseType: !98, size: 128)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1151, file: !69, line: 1192, baseType: !1020, size: 32, offset: 128)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1151, file: !69, line: 1193, baseType: !321, size: 8, offset: 160)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1151, file: !69, line: 1194, baseType: !106, size: 64, offset: 192)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1151, file: !69, line: 1195, baseType: !554, size: 64, offset: 256)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1151, file: !69, line: 1196, baseType: !1159, size: 64, offset: 320)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !69, line: 2366, size: 576, elements: !1161)
!1161 = !{!1162, !1163, !1164, !1170, !1174, !1178, !1182, !2342, !2343, !2344, !2346, !2347, !2348, !2350, !2351, !2352, !2353}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1160, file: !69, line: 2367, baseType: !794, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1160, file: !69, line: 2368, baseType: !105, size: 32, offset: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1160, file: !69, line: 2376, baseType: !1165, size: 64, offset: 128)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{!105, !1168}
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !907, line: 21, flags: DIFlagFwdDecl)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1160, file: !69, line: 2377, baseType: !1171, size: 64, offset: 192)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1173)
!1173 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !69, line: 75, flags: DIFlagFwdDecl)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1160, file: !69, line: 2378, baseType: !1175, size: 64, offset: 256)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{!910, !1159, !105, !794, !93}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1160, file: !69, line: 2380, baseType: !1179, size: 64, offset: 320)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{null, !1150}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1160, file: !69, line: 2381, baseType: !1183, size: 64, offset: 384)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !25, line: 402, size: 9216, align: 512, elements: !1185)
!1185 = !{!1186, !1187, !1188, !1192, !1983, !2009, !2010, !2011, !2012, !2016, !2019, !2020, !2021, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2089, !2093, !2113, !2132, !2133, !2134, !2135, !2144, !2167, !2168, !2171, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2184, !2185, !2296, !2304, !2305, !2306, !2308, !2312, !2313, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2335, !2336, !2337, !2341}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1184, file: !25, line: 403, baseType: !24, size: 32)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1184, file: !25, line: 406, baseType: !98, size: 128, offset: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1184, file: !25, line: 409, baseType: !1189, size: 448, offset: 192)
!1189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !777, size: 448, elements: !1190)
!1190 = !{!1191}
!1191 = !DISubrange(count: 56)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1184, file: !25, line: 417, baseType: !1193, size: 768, offset: 640)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !25, line: 45, size: 768, elements: !1194)
!1194 = !{!1195, !1976, !1977, !1978, !1981}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1193, file: !25, line: 46, baseType: !1196, size: 512)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1197, line: 64, size: 512, elements: !1198)
!1197 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1198 = !{!1199, !1200, !1201, !1203, !1247, !1855, !1966, !1971, !1972, !1973, !1974, !1975}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1196, file: !1197, line: 65, baseType: !794, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1196, file: !1197, line: 66, baseType: !98, size: 128, offset: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1196, file: !1197, line: 67, baseType: !1202, size: 64, offset: 192)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1196, file: !1197, line: 68, baseType: !1204, size: 64, offset: 256)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1197, line: 168, size: 768, elements: !1206)
!1206 = !{!1207, !1208, !1209, !1210}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1205, file: !1197, line: 169, baseType: !98, size: 128)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1205, file: !1197, line: 170, baseType: !496, size: 32, offset: 128)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1205, file: !1197, line: 171, baseType: !1196, size: 512, offset: 192)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1205, file: !1197, line: 172, baseType: !1211, size: 64, offset: 704)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1213)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1197, line: 133, size: 192, elements: !1214)
!1214 = !{!1215, !1222, !1227}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1213, file: !1197, line: 134, baseType: !1216, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1217)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!105, !1220}
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1196)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1213, file: !1197, line: 135, baseType: !1223, size: 64, offset: 64)
!1223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1224)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!794, !1220}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1213, file: !1197, line: 136, baseType: !1228, size: 64, offset: 128)
!1228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1229)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{!105, !1220, !1232}
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1197, line: 125, size: 20736, elements: !1234)
!1234 = !{!1235, !1237, !1241, !1242, !1246}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1233, file: !1197, line: 126, baseType: !1236, size: 192)
!1236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !804, size: 192, elements: !580)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1233, file: !1197, line: 127, baseType: !1238, size: 4096, offset: 192)
!1238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !804, size: 4096, elements: !1239)
!1239 = !{!1240}
!1240 = !DISubrange(count: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1233, file: !1197, line: 128, baseType: !105, size: 32, offset: 4288)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1233, file: !1197, line: 129, baseType: !1243, size: 16384, offset: 4320)
!1243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !777, size: 16384, elements: !1244)
!1244 = !{!1245}
!1245 = !DISubrange(count: 2048)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1233, file: !1197, line: 130, baseType: !105, size: 32, offset: 20704)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1196, file: !1197, line: 69, baseType: !1248, size: 64, offset: 320)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1250)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1197, line: 116, size: 384, elements: !1251)
!1251 = !{!1252, !1256, !1275, !1815, !1845, !1849}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1250, file: !1197, line: 117, baseType: !1253, size: 64)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{null, !1202}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1250, file: !1197, line: 118, baseType: !1257, size: 64, offset: 64)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1259)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1260, line: 254, size: 128, elements: !1261)
!1260 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1261 = !{!1262, !1271}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1259, file: !1260, line: 255, baseType: !1263, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!1098, !1202, !1266, !804}
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1260, line: 30, size: 128, elements: !1268)
!1268 = !{!1269, !1270}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1267, file: !1260, line: 31, baseType: !794, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1267, file: !1260, line: 32, baseType: !949, size: 16, offset: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1259, file: !1260, line: 256, baseType: !1272, size: 64, offset: 64)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!1098, !1202, !1266, !794, !1101}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1250, file: !1197, line: 119, baseType: !1276, size: 64, offset: 128)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1279)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1260, line: 84, size: 320, elements: !1280)
!1280 = !{!1281, !1282, !1286, !1811, !1813}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1279, file: !1260, line: 85, baseType: !794, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1279, file: !1260, line: 86, baseType: !1283, size: 64, offset: 64)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!949, !1202, !1266, !105}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1279, file: !1260, line: 88, baseType: !1287, size: 64, offset: 128)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!949, !1202, !1290, !105}
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1260, line: 175, size: 512, elements: !1292)
!1292 = !{!1293, !1294, !1295, !1296, !1802, !1806, !1807}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1291, file: !1260, line: 176, baseType: !1267, size: 128)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1291, file: !1260, line: 177, baseType: !1101, size: 64, offset: 128)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1291, file: !1260, line: 178, baseType: !93, size: 64, offset: 192)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1291, file: !1260, line: 179, baseType: !1297, size: 64, offset: 256)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DISubroutineType(types: !1299)
!1299 = !{!1300}
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !69, line: 472, size: 1536, align: 64, elements: !1302)
!1302 = !{!1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1794, !1795, !1796, !1799, !1800, !1801}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1301, file: !69, line: 473, baseType: !945, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1301, file: !69, line: 474, baseType: !627, size: 128, offset: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1301, file: !69, line: 475, baseType: !731, size: 320, offset: 192)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1301, file: !69, line: 476, baseType: !632, size: 32, offset: 512)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1301, file: !69, line: 477, baseType: !155, size: 32, offset: 544)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1301, file: !69, line: 482, baseType: !368, size: 128, offset: 576)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1301, file: !69, line: 483, baseType: !106, size: 64, offset: 704)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1301, file: !69, line: 484, baseType: !106, size: 64, offset: 768)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1301, file: !69, line: 485, baseType: !1312, size: 64, offset: 832)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1314)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !69, line: 404, size: 1280, elements: !1315)
!1315 = !{!1316, !1619, !1689, !1693, !1697, !1703, !1709, !1713, !1718, !1722, !1726, !1730, !1758, !1762, !1766, !1770, !1775, !1779, !1786, !1790}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1314, file: !69, line: 405, baseType: !1317, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DISubroutineType(types: !1319)
!1319 = !{!105, !1320, !1617}
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !40, line: 74, size: 512, align: 128, elements: !1322)
!1322 = !{!1323, !1324, !1611, !1616}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1321, file: !40, line: 75, baseType: !106, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, scope: !1321, file: !40, line: 83, baseType: !1325, size: 320, offset: 64)
!1325 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1321, file: !40, line: 83, size: 320, elements: !1326)
!1326 = !{!1327, !1348, !1362, !1366, !1610}
!1327 = !DIDerivedType(tag: DW_TAG_member, scope: !1325, file: !40, line: 84, baseType: !1328, size: 320)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1325, file: !40, line: 84, size: 320, elements: !1329)
!1329 = !{!1330, !1341, !1342, !1347}
!1330 = !DIDerivedType(tag: DW_TAG_member, scope: !1328, file: !40, line: 90, baseType: !1331, size: 128)
!1331 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1328, file: !40, line: 90, size: 128, elements: !1332)
!1332 = !{!1333, !1334, !1339, !1340}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1331, file: !40, line: 91, baseType: !98, size: 128)
!1334 = !DIDerivedType(tag: DW_TAG_member, scope: !1331, file: !40, line: 94, baseType: !1335, size: 128)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1331, file: !40, line: 94, size: 128, elements: !1336)
!1336 = !{!1337, !1338}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1335, file: !40, line: 96, baseType: !93, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1335, file: !40, line: 98, baseType: !7, size: 32, offset: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1331, file: !40, line: 102, baseType: !98, size: 128)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1331, file: !40, line: 103, baseType: !98, size: 128)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1328, file: !40, line: 106, baseType: !1300, size: 64, offset: 128)
!1342 = !DIDerivedType(tag: DW_TAG_member, scope: !1328, file: !40, line: 107, baseType: !1343, size: 64, offset: 192)
!1343 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1328, file: !40, line: 107, size: 64, elements: !1344)
!1344 = !{!1345, !1346}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1343, file: !40, line: 108, baseType: !106, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1343, file: !40, line: 109, baseType: !106, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1328, file: !40, line: 117, baseType: !106, size: 64, offset: 256)
!1348 = !DIDerivedType(tag: DW_TAG_member, scope: !1325, file: !40, line: 119, baseType: !1349, size: 320)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1325, file: !40, line: 119, size: 320, elements: !1350)
!1350 = !{!1351, !1352, !1355, !1356, !1357}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1349, file: !40, line: 124, baseType: !106, size: 64)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1349, file: !40, line: 125, baseType: !1353, size: 64, offset: 64)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !40, line: 125, flags: DIFlagFwdDecl)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1349, file: !40, line: 126, baseType: !106, size: 64, offset: 128)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1349, file: !40, line: 127, baseType: !106, size: 64, offset: 192)
!1357 = !DIDerivedType(tag: DW_TAG_member, scope: !1349, file: !40, line: 128, baseType: !1358, size: 64, offset: 256)
!1358 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1349, file: !40, line: 128, size: 64, elements: !1359)
!1359 = !{!1360, !1361}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1358, file: !40, line: 133, baseType: !106, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1358, file: !40, line: 138, baseType: !535, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, scope: !1325, file: !40, line: 141, baseType: !1363, size: 64)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1325, file: !40, line: 141, size: 64, elements: !1364)
!1364 = !{!1365}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1363, file: !40, line: 142, baseType: !106, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, scope: !1325, file: !40, line: 144, baseType: !1367, size: 128)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1325, file: !40, line: 144, size: 128, elements: !1368)
!1368 = !{!1369, !1609}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1367, file: !40, line: 146, baseType: !1370, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !32, line: 126, size: 1216, elements: !1372)
!1372 = !{!1373, !1383, !1404, !1415, !1416, !1417, !1418, !1591, !1592, !1593}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1371, file: !32, line: 127, baseType: !1374, size: 384)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !32, line: 21, size: 384, elements: !1375)
!1375 = !{!1376, !1377, !1379, !1380, !1381, !1382}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1374, file: !32, line: 22, baseType: !106, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1374, file: !32, line: 23, baseType: !1378, size: 64, offset: 64)
!1378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !106)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1374, file: !32, line: 24, baseType: !1378, size: 64, offset: 128)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1374, file: !32, line: 25, baseType: !106, size: 64, offset: 192)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1374, file: !32, line: 26, baseType: !106, size: 64, offset: 256)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1374, file: !32, line: 27, baseType: !106, size: 64, offset: 320)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1371, file: !32, line: 128, baseType: !1384, size: 128, offset: 384)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1385, line: 105, size: 128, elements: !1386)
!1385 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1386 = !{!1387, !1388}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1384, file: !1385, line: 110, baseType: !106, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1384, file: !1385, line: 118, baseType: !1389, size: 64, offset: 64)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1385, line: 95, size: 448, elements: !1391)
!1391 = !{!1392, !1393, !1399, !1400, !1401, !1402, !1403}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1390, file: !1385, line: 96, baseType: !535, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1390, file: !1385, line: 97, baseType: !1394, size: 64, offset: 64)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1385, line: 60, baseType: !1396)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{null, !1398}
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1390, file: !1385, line: 98, baseType: !1394, size: 64, offset: 128)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1390, file: !1385, line: 99, baseType: !791, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1390, file: !1385, line: 100, baseType: !791, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1390, file: !1385, line: 101, baseType: !522, size: 128, align: 64, offset: 256)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1390, file: !1385, line: 102, baseType: !1398, size: 64, offset: 384)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1371, file: !32, line: 129, baseType: !1405, size: 256, offset: 512)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1406, line: 26, size: 256, elements: !1407)
!1406 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1407 = !{!1408, !1409}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1405, file: !1406, line: 27, baseType: !7, size: 32)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1405, file: !1406, line: 28, baseType: !1410, size: 192, offset: 64)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1411, line: 43, size: 192, elements: !1412)
!1411 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1412 = !{!1413, !1414}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1410, file: !1411, line: 44, baseType: !302, size: 32)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1410, file: !1411, line: 45, baseType: !98, size: 128, offset: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1371, file: !32, line: 130, baseType: !31, size: 32, offset: 768)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1371, file: !32, line: 131, baseType: !7, size: 32, offset: 800)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1371, file: !32, line: 132, baseType: !106, size: 64, offset: 832)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1371, file: !32, line: 133, baseType: !1419, size: 64, offset: 896)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1421)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !32, line: 77, size: 192, elements: !1422)
!1422 = !{!1423, !1427, !1587}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1421, file: !32, line: 83, baseType: !1424, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{null, !1320}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1421, file: !32, line: 89, baseType: !1428, size: 64, offset: 64)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DISubroutineType(types: !1430)
!1430 = !{!1431, !1432}
!1431 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !40, line: 1184, baseType: !7)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1434, line: 512, size: 896, elements: !1435)
!1434 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1435 = !{!1436, !1554, !1555, !1562, !1569, !1579, !1580, !1581, !1583, !1585}
!1436 = !DIDerivedType(tag: DW_TAG_member, scope: !1433, file: !1434, line: 513, baseType: !1437, size: 320)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1433, file: !1434, line: 513, size: 320, elements: !1438)
!1438 = !{!1439, !1550, !1551, !1552, !1553}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1437, file: !1434, line: 514, baseType: !1440, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !40, line: 625, size: 1344, elements: !1442)
!1442 = !{!1443, !1452, !1453, !1461, !1468, !1469, !1474, !1475, !1480, !1481, !1484, !1543, !1544, !1545, !1546, !1547, !1548}
!1443 = !DIDerivedType(tag: DW_TAG_member, scope: !1441, file: !40, line: 628, baseType: !1444, size: 128)
!1444 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1441, file: !40, line: 628, size: 128, elements: !1445)
!1445 = !{!1446, !1451}
!1446 = !DIDerivedType(tag: DW_TAG_member, scope: !1444, file: !40, line: 629, baseType: !1447, size: 128)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1444, file: !40, line: 629, size: 128, elements: !1448)
!1448 = !{!1449, !1450}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1447, file: !40, line: 631, baseType: !106, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1447, file: !40, line: 632, baseType: !106, size: 64, offset: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1444, file: !40, line: 635, baseType: !522, size: 128, align: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1441, file: !40, line: 639, baseType: !478, size: 64, offset: 128)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1441, file: !40, line: 640, baseType: !1454, size: 64, offset: 192)
!1454 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1455, line: 297, baseType: !1456)
!1455 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1455, line: 297, size: 64, elements: !1457)
!1457 = !{!1458}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1456, file: !1455, line: 297, baseType: !1459, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1460, line: 19, baseType: !106)
!1460 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1461 = !DIDerivedType(tag: DW_TAG_member, scope: !1441, file: !40, line: 646, baseType: !1462, size: 64, offset: 256)
!1462 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1441, file: !40, line: 646, size: 64, elements: !1463)
!1463 = !{!1464, !1467}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1462, file: !40, line: 647, baseType: !1465, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1466)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !40, line: 542, baseType: !106)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1462, file: !40, line: 648, baseType: !1466, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1441, file: !40, line: 666, baseType: !105, size: 32, offset: 320)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1441, file: !40, line: 667, baseType: !1470, size: 64, offset: 384)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !40, line: 579, size: 320, elements: !1472)
!1472 = !{!1473}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1471, file: !40, line: 580, baseType: !731, size: 320)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1441, file: !40, line: 670, baseType: !791, size: 8, offset: 448)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1441, file: !40, line: 681, baseType: !1476, size: 256, offset: 512)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1441, file: !40, line: 678, size: 256, elements: !1477)
!1477 = !{!1478, !1479}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1476, file: !40, line: 679, baseType: !201, size: 192, align: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1476, file: !40, line: 680, baseType: !106, size: 64, offset: 192)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1441, file: !40, line: 689, baseType: !98, size: 128, offset: 768)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1441, file: !40, line: 691, baseType: !1482, size: 64, offset: 896)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !40, line: 691, flags: DIFlagFwdDecl)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1441, file: !40, line: 694, baseType: !1485, size: 64, offset: 960)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1487)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1434, line: 563, size: 1024, elements: !1488)
!1488 = !{!1489, !1493, !1494, !1498, !1502, !1506, !1507, !1511, !1515, !1519, !1520, !1521, !1525, !1529, !1535, !1539}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1487, file: !1434, line: 564, baseType: !1490, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{null, !1440}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1487, file: !1434, line: 569, baseType: !1490, size: 64, offset: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1487, file: !1434, line: 571, baseType: !1495, size: 64, offset: 128)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{!105, !1440, !106}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1487, file: !1434, line: 572, baseType: !1499, size: 64, offset: 192)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!105, !1440}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1487, file: !1434, line: 578, baseType: !1503, size: 64, offset: 256)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{!105, !1440, !106, !106, !106}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1487, file: !1434, line: 580, baseType: !1428, size: 64, offset: 320)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1487, file: !1434, line: 581, baseType: !1508, size: 64, offset: 384)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{!1431, !1432, !7}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1487, file: !1434, line: 582, baseType: !1512, size: 64, offset: 448)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{!1431, !1432, !106, !106}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1487, file: !1434, line: 584, baseType: !1516, size: 64, offset: 512)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{!106, !1440}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1487, file: !1434, line: 588, baseType: !1428, size: 64, offset: 576)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1487, file: !1434, line: 591, baseType: !1428, size: 64, offset: 640)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1487, file: !1434, line: 597, baseType: !1522, size: 64, offset: 704)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!105, !1440, !106, !93, !105, !105}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1487, file: !1434, line: 603, baseType: !1526, size: 64, offset: 768)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{!794, !1440}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1487, file: !1434, line: 613, baseType: !1530, size: 64, offset: 832)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{!105, !1440, !1533}
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !137, line: 54, flags: DIFlagFwdDecl)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1487, file: !1434, line: 625, baseType: !1536, size: 64, offset: 896)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DISubroutineType(types: !1538)
!1538 = !{!1533, !1440, !106}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1487, file: !1434, line: 633, baseType: !1540, size: 64, offset: 960)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{!1320, !1440, !106}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1441, file: !40, line: 697, baseType: !106, size: 64, offset: 1024)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1441, file: !40, line: 699, baseType: !514, size: 64, offset: 1088)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1441, file: !40, line: 700, baseType: !93, size: 64, offset: 1152)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1441, file: !40, line: 711, baseType: !535, size: 64, offset: 1216)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1441, file: !40, line: 717, baseType: !1533, size: 64, offset: 1280)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1441, file: !40, line: 722, baseType: !1549, offset: 1344)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !40, line: 570, elements: !507)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1437, file: !1434, line: 515, baseType: !632, size: 32, offset: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1437, file: !1434, line: 516, baseType: !106, size: 64, offset: 128)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1437, file: !1434, line: 517, baseType: !106, size: 64, offset: 192)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1437, file: !1434, line: 518, baseType: !106, size: 64, offset: 256)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1433, file: !1434, line: 520, baseType: !39, size: 32, offset: 320)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1433, file: !1434, line: 522, baseType: !1556, size: 64, offset: 384)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1460, line: 22, baseType: !1558)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1460, line: 22, size: 64, elements: !1559)
!1559 = !{!1560}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1558, file: !1460, line: 22, baseType: !1561, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1460, line: 15, baseType: !106)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1433, file: !1434, line: 524, baseType: !1563, size: 64, offset: 448)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1455, line: 372, baseType: !1565)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1455, line: 372, size: 64, elements: !1566)
!1566 = !{!1567}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1565, file: !1455, line: 372, baseType: !1568, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1460, line: 16, baseType: !106)
!1569 = !DIDerivedType(tag: DW_TAG_member, scope: !1433, file: !1434, line: 527, baseType: !1570, size: 64, offset: 512)
!1570 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1433, file: !1434, line: 527, size: 64, elements: !1571)
!1571 = !{!1572, !1578}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1570, file: !1434, line: 528, baseType: !1573, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1460, line: 21, baseType: !1574)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1460, line: 21, size: 64, elements: !1575)
!1575 = !{!1576}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1574, file: !1460, line: 21, baseType: !1577, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1460, line: 14, baseType: !106)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1570, file: !1434, line: 529, baseType: !1557, size: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1433, file: !1434, line: 534, baseType: !1320, size: 64, offset: 576)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1433, file: !1434, line: 535, baseType: !1320, size: 64, offset: 640)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1433, file: !1434, line: 541, baseType: !1582, size: 64, offset: 704)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1433, file: !1434, line: 545, baseType: !1584, size: 64, offset: 768)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1433, file: !1434, line: 549, baseType: !1586, size: 64, offset: 832)
!1586 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1455, line: 520, baseType: !1320)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1421, file: !32, line: 100, baseType: !1588, size: 64, offset: 128)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{!105, !1370, !106, !106, !105}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1371, file: !32, line: 134, baseType: !93, size: 64, offset: 960)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1371, file: !32, line: 135, baseType: !105, size: 32, offset: 1024)
!1593 = !DIDerivedType(tag: DW_TAG_member, scope: !1371, file: !32, line: 136, baseType: !1594, size: 128, offset: 1088)
!1594 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1371, file: !32, line: 136, size: 128, elements: !1595)
!1595 = !{!1596, !1602}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1594, file: !32, line: 137, baseType: !1597, size: 128)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1598, line: 6, size: 128, elements: !1599)
!1598 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1599 = !{!1600, !1601}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1597, file: !1598, line: 7, baseType: !209, size: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1597, file: !1598, line: 8, baseType: !209, size: 64, offset: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, scope: !1594, file: !32, line: 138, baseType: !1603)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1594, file: !32, line: 138, elements: !1604)
!1604 = !{!1605, !1607}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1603, file: !32, line: 138, baseType: !1606)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1603, file: !32, line: 138, elements: !507)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1603, file: !32, line: 138, baseType: !1608)
!1608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1597, elements: !669)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1367, file: !40, line: 147, baseType: !93, size: 64, offset: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1325, file: !40, line: 161, baseType: !522, size: 128, align: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, scope: !1321, file: !40, line: 164, baseType: !1612, size: 32, offset: 384)
!1612 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1321, file: !40, line: 164, size: 32, elements: !1613)
!1613 = !{!1614, !1615}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1612, file: !40, line: 169, baseType: !155, size: 32)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1612, file: !40, line: 177, baseType: !7, size: 32)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1321, file: !40, line: 181, baseType: !155, size: 32, offset: 416)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !69, line: 309, flags: DIFlagFwdDecl)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1314, file: !69, line: 406, baseType: !1620, size: 64, offset: 64)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!105, !514, !1623}
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !40, line: 293, size: 1536, elements: !1625)
!1625 = !{!1626, !1656, !1670}
!1626 = !DIDerivedType(tag: DW_TAG_member, scope: !1624, file: !40, line: 295, baseType: !1627, size: 512)
!1627 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1624, file: !40, line: 295, size: 512, elements: !1628)
!1628 = !{!1629, !1655}
!1629 = !DIDerivedType(tag: DW_TAG_member, scope: !1627, file: !40, line: 296, baseType: !1630, size: 448)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1627, file: !40, line: 296, size: 448, elements: !1631)
!1631 = !{!1632, !1633, !1642, !1643, !1644, !1653, !1654}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1630, file: !40, line: 298, baseType: !106, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, scope: !1630, file: !40, line: 299, baseType: !1634, size: 128, offset: 64)
!1634 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1630, file: !40, line: 299, size: 128, elements: !1635)
!1635 = !{!1636, !1637}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1634, file: !40, line: 300, baseType: !98, size: 128)
!1637 = !DIDerivedType(tag: DW_TAG_member, scope: !1634, file: !40, line: 302, baseType: !1638, size: 128)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1634, file: !40, line: 302, size: 128, elements: !1639)
!1639 = !{!1640, !1641}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1638, file: !40, line: 303, baseType: !93, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1638, file: !40, line: 305, baseType: !7, size: 32, offset: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1630, file: !40, line: 310, baseType: !1300, size: 64, offset: 192)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1630, file: !40, line: 311, baseType: !106, size: 64, offset: 256)
!1644 = !DIDerivedType(tag: DW_TAG_member, scope: !1630, file: !40, line: 312, baseType: !1645, size: 64, offset: 320)
!1645 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1630, file: !40, line: 312, size: 64, elements: !1646)
!1646 = !{!1647, !1648}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1645, file: !40, line: 313, baseType: !93, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1645, file: !40, line: 314, baseType: !1649, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !40, line: 257, baseType: !1650)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !40, line: 255, size: 64, elements: !1651)
!1651 = !{!1652}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1650, file: !40, line: 256, baseType: !106, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1630, file: !40, line: 316, baseType: !155, size: 32, offset: 384)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1630, file: !40, line: 317, baseType: !155, size: 32, offset: 416)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1627, file: !40, line: 323, baseType: !1321, size: 512, align: 128)
!1656 = !DIDerivedType(tag: DW_TAG_member, scope: !1624, file: !40, line: 325, baseType: !1657, size: 512, offset: 512)
!1657 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1624, file: !40, line: 325, size: 512, elements: !1658)
!1658 = !{!1659, !1669}
!1659 = !DIDerivedType(tag: DW_TAG_member, scope: !1657, file: !40, line: 326, baseType: !1660, size: 320)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1657, file: !40, line: 326, size: 320, elements: !1661)
!1661 = !{!1662, !1663, !1664, !1665, !1666, !1667, !1668}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1660, file: !40, line: 327, baseType: !106, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1660, file: !40, line: 328, baseType: !106, size: 64, offset: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1660, file: !40, line: 329, baseType: !106, size: 64, offset: 128)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1660, file: !40, line: 331, baseType: !155, size: 32, offset: 192)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1660, file: !40, line: 332, baseType: !155, size: 32, offset: 224)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1660, file: !40, line: 333, baseType: !155, size: 32, offset: 256)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1660, file: !40, line: 335, baseType: !7, size: 32, offset: 288)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1657, file: !40, line: 339, baseType: !1321, size: 512, align: 128)
!1670 = !DIDerivedType(tag: DW_TAG_member, scope: !1624, file: !40, line: 341, baseType: !1671, size: 512, offset: 1024)
!1671 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1624, file: !40, line: 341, size: 512, elements: !1672)
!1672 = !{!1673, !1682, !1688}
!1673 = !DIDerivedType(tag: DW_TAG_member, scope: !1671, file: !40, line: 342, baseType: !1674, size: 384)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1671, file: !40, line: 342, size: 384, elements: !1675)
!1675 = !{!1676, !1677, !1678, !1679, !1680, !1681}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1674, file: !40, line: 343, baseType: !106, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1674, file: !40, line: 344, baseType: !106, size: 64, offset: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1674, file: !40, line: 346, baseType: !93, size: 64, offset: 128)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1674, file: !40, line: 347, baseType: !93, size: 64, offset: 192)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1674, file: !40, line: 348, baseType: !93, size: 64, offset: 256)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1674, file: !40, line: 349, baseType: !93, size: 64, offset: 320)
!1682 = !DIDerivedType(tag: DW_TAG_member, scope: !1671, file: !40, line: 352, baseType: !1683, size: 256)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1671, file: !40, line: 352, size: 256, elements: !1684)
!1684 = !{!1685, !1686, !1687}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1683, file: !40, line: 353, baseType: !106, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1683, file: !40, line: 354, baseType: !106, size: 64, offset: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1683, file: !40, line: 356, baseType: !98, size: 128, offset: 128)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1671, file: !40, line: 359, baseType: !1321, size: 512, align: 128)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1314, file: !69, line: 409, baseType: !1690, size: 64, offset: 128)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!105, !1300, !1617}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1314, file: !69, line: 412, baseType: !1694, size: 64, offset: 192)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{!791, !1300, !1623}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1314, file: !69, line: 414, baseType: !1698, size: 64, offset: 256)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{null, !1701}
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !69, line: 310, flags: DIFlagFwdDecl)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1314, file: !69, line: 416, baseType: !1704, size: 64, offset: 320)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{!105, !514, !1300, !554, !7, !1707, !1708}
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1314, file: !69, line: 419, baseType: !1710, size: 64, offset: 384)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!105, !514, !1300, !554, !7, !7, !1320, !93}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1314, file: !69, line: 424, baseType: !1714, size: 64, offset: 448)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!1717, !1300, !1717}
!1717 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !99, line: 131, baseType: !209)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1314, file: !69, line: 425, baseType: !1719, size: 64, offset: 512)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{null, !1623, !1101, !1101}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1314, file: !69, line: 426, baseType: !1723, size: 64, offset: 576)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{!791, !1623, !632}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1314, file: !69, line: 427, baseType: !1727, size: 64, offset: 640)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{null, !1623}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1314, file: !69, line: 428, baseType: !1731, size: 64, offset: 704)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{!1098, !1734, !1756}
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !69, line: 373, size: 384, elements: !1736)
!1736 = !{!1737, !1738, !1739, !1743, !1744, !1745, !1746}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1735, file: !69, line: 374, baseType: !514, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1735, file: !69, line: 375, baseType: !554, size: 64, offset: 64)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1735, file: !69, line: 376, baseType: !1740, size: 64, offset: 128)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{null, !1734, !103}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1735, file: !69, line: 377, baseType: !93, size: 64, offset: 192)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1735, file: !69, line: 378, baseType: !105, size: 32, offset: 256)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1735, file: !69, line: 379, baseType: !178, size: 16, offset: 288)
!1746 = !DIDerivedType(tag: DW_TAG_member, scope: !1735, file: !69, line: 380, baseType: !1747, size: 64, offset: 320)
!1747 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1735, file: !69, line: 380, size: 64, elements: !1748)
!1748 = !{!1749, !1752}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1747, file: !69, line: 386, baseType: !1750, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !69, line: 386, flags: DIFlagFwdDecl)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1747, file: !69, line: 395, baseType: !1753, size: 64)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{!1098, !93}
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !69, line: 69, flags: DIFlagFwdDecl)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1314, file: !69, line: 433, baseType: !1759, size: 64, offset: 768)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{!105, !1300, !1623, !1623, !55}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1314, file: !69, line: 435, baseType: !1763, size: 64, offset: 832)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!105, !1623}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1314, file: !69, line: 436, baseType: !1767, size: 64, offset: 896)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{!791, !1623, !1101, !1101}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1314, file: !69, line: 438, baseType: !1771, size: 64, offset: 960)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{null, !1623, !1774, !1774}
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1314, file: !69, line: 439, baseType: !1776, size: 64, offset: 1024)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{!105, !1300, !1320}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1314, file: !69, line: 442, baseType: !1780, size: 64, offset: 1088)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{!105, !1783, !514, !1785}
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !69, line: 66, flags: DIFlagFwdDecl)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1314, file: !69, line: 444, baseType: !1787, size: 64, offset: 1152)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{null, !514}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1314, file: !69, line: 445, baseType: !1791, size: 64, offset: 1216)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{!105, !1734, !1756}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1301, file: !69, line: 486, baseType: !106, size: 64, offset: 896)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1301, file: !69, line: 487, baseType: !731, size: 320, offset: 960)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1301, file: !69, line: 488, baseType: !1797, size: 32, offset: 1280)
!1797 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1798, line: 8, baseType: !127)
!1798 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1301, file: !69, line: 489, baseType: !496, size: 32, offset: 1312)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1301, file: !69, line: 490, baseType: !98, size: 128, offset: 1344)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1301, file: !69, line: 491, baseType: !93, size: 64, offset: 1472)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1291, file: !1260, line: 180, baseType: !1803, size: 64, offset: 320)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DISubroutineType(types: !1805)
!1805 = !{!1098, !514, !1202, !1290, !804, !554, !1101}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1291, file: !1260, line: 182, baseType: !1803, size: 64, offset: 384)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1291, file: !1260, line: 184, baseType: !1808, size: 64, offset: 448)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{!105, !514, !1202, !1290, !1440}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1279, file: !1260, line: 90, baseType: !1812, size: 64, offset: 192)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1279, file: !1260, line: 91, baseType: !1814, size: 64, offset: 256)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1250, file: !1197, line: 120, baseType: !1816, size: 64, offset: 192)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DISubroutineType(types: !1818)
!1818 = !{!1819, !1220}
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1821)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !63, line: 39, size: 384, elements: !1822)
!1822 = !{!1823, !1824, !1828, !1832, !1840, !1844}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1821, file: !63, line: 40, baseType: !62, size: 32)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1821, file: !63, line: 41, baseType: !1825, size: 64, offset: 64)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DISubroutineType(types: !1827)
!1827 = !{!791}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1821, file: !63, line: 42, baseType: !1829, size: 64, offset: 128)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{!93}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1821, file: !63, line: 43, baseType: !1833, size: 64, offset: 192)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{!1836, !1838}
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !63, line: 19, flags: DIFlagFwdDecl)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1821, file: !63, line: 44, baseType: !1841, size: 64, offset: 256)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{!1836}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1821, file: !63, line: 45, baseType: !977, size: 64, offset: 320)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1250, file: !1197, line: 121, baseType: !1846, size: 64, offset: 256)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{!1836, !1220}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1250, file: !1197, line: 122, baseType: !1850, size: 64, offset: 320)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{null, !1220, !1853, !1854}
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1196, file: !1197, line: 70, baseType: !1856, size: 64, offset: 384)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1858, line: 190, size: 1152, elements: !1859)
!1858 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1859 = !{!1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1958, !1959, !1960, !1961, !1962, !1965}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1857, file: !1858, line: 191, baseType: !155, size: 32)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1857, file: !1858, line: 192, baseType: !155, size: 32, offset: 32)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1857, file: !1858, line: 202, baseType: !1856, size: 64, offset: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1857, file: !1858, line: 203, baseType: !794, size: 64, offset: 128)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1857, file: !1858, line: 205, baseType: !201, size: 192, align: 64, offset: 192)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1857, file: !1858, line: 207, baseType: !1836, size: 64, offset: 384)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1857, file: !1858, line: 208, baseType: !7, size: 32, offset: 448)
!1867 = !DIDerivedType(tag: DW_TAG_member, scope: !1857, file: !1858, line: 209, baseType: !1868, size: 256, offset: 512)
!1868 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1857, file: !1858, line: 209, size: 256, elements: !1869)
!1869 = !{!1870, !1879, !1883}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1868, file: !1858, line: 210, baseType: !1871, size: 256)
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1858, line: 153, size: 256, elements: !1872)
!1872 = !{!1873, !1874, !1875, !1878}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1871, file: !1858, line: 154, baseType: !106, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1871, file: !1858, line: 156, baseType: !371, size: 64, offset: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1871, file: !1858, line: 162, baseType: !1876, size: 64, offset: 128)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1858, line: 162, flags: DIFlagFwdDecl)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1871, file: !1858, line: 167, baseType: !106, size: 64, offset: 192)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1868, file: !1858, line: 211, baseType: !1880, size: 64)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1858, line: 170, size: 64, elements: !1881)
!1881 = !{!1882}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1880, file: !1858, line: 171, baseType: !1856, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1868, file: !1858, line: 212, baseType: !1884, size: 256)
!1884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1858, line: 174, size: 256, elements: !1885)
!1885 = !{!1886, !1953, !1956, !1957}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1884, file: !1858, line: 175, baseType: !1887, size: 64)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1889)
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1858, line: 271, size: 768, elements: !1890)
!1890 = !{!1891, !1913, !1917, !1921, !1926, !1930, !1934, !1938, !1939, !1940, !1941, !1949}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1889, file: !1858, line: 276, baseType: !1892, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DISubroutineType(types: !1894)
!1894 = !{!105, !1895}
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1858, line: 251, size: 1216, elements: !1897)
!1897 = !{!1898, !1899, !1900, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1896, file: !1858, line: 253, baseType: !1856, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1896, file: !1858, line: 254, baseType: !514, size: 64, offset: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1896, file: !1858, line: 255, baseType: !1901, size: 64, offset: 128)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !137, line: 66, flags: DIFlagFwdDecl)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1896, file: !1858, line: 256, baseType: !93, size: 64, offset: 192)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1896, file: !1858, line: 259, baseType: !542, size: 256, offset: 256)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1896, file: !1858, line: 260, baseType: !542, size: 256, offset: 512)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1896, file: !1858, line: 261, baseType: !105, size: 32, offset: 768)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1896, file: !1858, line: 262, baseType: !98, size: 128, offset: 832)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1896, file: !1858, line: 263, baseType: !804, size: 64, offset: 960)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1896, file: !1858, line: 265, baseType: !1101, size: 64, offset: 1024)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1896, file: !1858, line: 266, baseType: !791, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1896, file: !1858, line: 267, baseType: !791, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1896, file: !1858, line: 268, baseType: !1485, size: 64, offset: 1152)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1889, file: !1858, line: 277, baseType: !1914, size: 64, offset: 64)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{null, !1895}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1889, file: !1858, line: 290, baseType: !1918, size: 64, offset: 128)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DISubroutineType(types: !1920)
!1920 = !{!105, !1901, !93}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1889, file: !1858, line: 292, baseType: !1922, size: 64, offset: 192)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DISubroutineType(types: !1924)
!1924 = !{!93, !1901, !1925}
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1889, file: !1858, line: 293, baseType: !1927, size: 64, offset: 256)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!93, !1901, !93, !1925}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1889, file: !1858, line: 294, baseType: !1931, size: 64, offset: 320)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{null, !1901, !93}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1889, file: !1858, line: 296, baseType: !1935, size: 64, offset: 384)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{!1098, !1895, !804, !1101, !554}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1889, file: !1858, line: 306, baseType: !1101, size: 64, offset: 448)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1889, file: !1858, line: 313, baseType: !791, size: 8, offset: 512)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1889, file: !1858, line: 314, baseType: !1935, size: 64, offset: 576)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1889, file: !1858, line: 317, baseType: !1942, size: 64, offset: 640)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!1945, !1895, !1947}
!1945 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1946, line: 59, baseType: !7)
!1946 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !69, line: 61, flags: DIFlagFwdDecl)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1889, file: !1858, line: 320, baseType: !1950, size: 64, offset: 704)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{!105, !1895, !1440}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1884, file: !1858, line: 176, baseType: !1954, size: 64, offset: 64)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1858, line: 35, flags: DIFlagFwdDecl)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1884, file: !1858, line: 177, baseType: !554, size: 64, offset: 128)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1884, file: !1858, line: 178, baseType: !1856, size: 64, offset: 192)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1857, file: !1858, line: 215, baseType: !93, size: 64, offset: 768)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1857, file: !1858, line: 221, baseType: !209, size: 64, offset: 832)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1857, file: !1858, line: 223, baseType: !180, size: 16, offset: 896)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1857, file: !1858, line: 224, baseType: !949, size: 16, offset: 912)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1857, file: !1858, line: 225, baseType: !1963, size: 64, offset: 960)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1858, line: 36, flags: DIFlagFwdDecl)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1857, file: !1858, line: 227, baseType: !522, size: 128, align: 64, offset: 1024)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1196, file: !1197, line: 71, baseType: !1967, size: 32, offset: 448)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1968, line: 19, size: 32, elements: !1969)
!1968 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1969 = !{!1970}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1967, file: !1968, line: 20, baseType: !150, size: 32)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1196, file: !1197, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1196, file: !1197, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1196, file: !1197, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1196, file: !1197, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1196, file: !1197, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1193, file: !25, line: 47, baseType: !1183, size: 64, offset: 512)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1193, file: !25, line: 48, baseType: !1202, size: 64, offset: 576)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1193, file: !25, line: 49, baseType: !1979, size: 64, offset: 640)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !25, line: 49, flags: DIFlagFwdDecl)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1193, file: !25, line: 50, baseType: !1982, size: 64, offset: 704)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1184, file: !25, line: 418, baseType: !1984, size: 64, offset: 1408)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !25, line: 53, size: 448, elements: !1986)
!1986 = !{!1987, !1988, !1993, !1997, !2001, !2005}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1985, file: !25, line: 54, baseType: !1267, size: 128)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1985, file: !25, line: 55, baseType: !1989, size: 64, offset: 128)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{!1098, !1984, !1992, !804}
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1985, file: !25, line: 57, baseType: !1994, size: 64, offset: 192)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{!1098, !1984, !1992, !794, !1101}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1985, file: !25, line: 59, baseType: !1998, size: 64, offset: 256)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DISubroutineType(types: !2000)
!2000 = !{null, !1183, !794}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1985, file: !25, line: 60, baseType: !2002, size: 64, offset: 320)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{!105, !1183}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1985, file: !25, line: 61, baseType: !2006, size: 64, offset: 384)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DISubroutineType(types: !2008)
!2008 = !{null, !1183}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1184, file: !25, line: 419, baseType: !794, size: 64, offset: 1472)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1184, file: !25, line: 420, baseType: !794, size: 64, offset: 1536)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1184, file: !25, line: 421, baseType: !1202, size: 64, offset: 1600)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1184, file: !25, line: 424, baseType: !2013, size: 64, offset: 1664)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2015)
!2015 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !25, line: 424, flags: DIFlagFwdDecl)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1184, file: !25, line: 425, baseType: !2017, size: 64, offset: 1728)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !723)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1184, file: !25, line: 426, baseType: !7, size: 32, offset: 1792)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1184, file: !25, line: 435, baseType: !542, size: 256, offset: 1856)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1184, file: !25, line: 437, baseType: !2022, size: 64, offset: 2112)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2024, line: 69, size: 320, elements: !2025)
!2024 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2025 = !{!2026, !2027, !2028, !2045, !2047, !2051, !2052}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2023, file: !2024, line: 70, baseType: !794, size: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2023, file: !2024, line: 71, baseType: !1183, size: 64, offset: 64)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2023, file: !2024, line: 72, baseType: !2029, size: 64, offset: 128)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2031)
!2031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2024, line: 47, size: 256, elements: !2032)
!2032 = !{!2033, !2034, !2040, !2044}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2031, file: !2024, line: 49, baseType: !7, size: 32)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2031, file: !2024, line: 51, baseType: !2035, size: 64, offset: 64)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DISubroutineType(types: !2037)
!2037 = !{!105, !794, !2038}
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2023)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2031, file: !2024, line: 53, baseType: !2041, size: 64, offset: 128)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{!105, !804, !2038}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2031, file: !2024, line: 55, baseType: !977, size: 64, offset: 192)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2023, file: !2024, line: 73, baseType: !2046, size: 16, offset: 192)
!2046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !178)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2023, file: !2024, line: 74, baseType: !2048, size: 8, offset: 208)
!2048 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !128, line: 16, baseType: !2049)
!2049 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !130, line: 20, baseType: !2050)
!2050 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2023, file: !2024, line: 75, baseType: !319, size: 8, offset: 216)
!2052 = !DIDerivedType(tag: DW_TAG_member, scope: !2023, file: !2024, line: 76, baseType: !2053, size: 64, offset: 256)
!2053 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2023, file: !2024, line: 76, size: 64, elements: !2054)
!2054 = !{!2055, !2056, !2063}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2053, file: !2024, line: 77, baseType: !93, size: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2053, file: !2024, line: 78, baseType: !2057, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2059)
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2024, line: 86, size: 128, elements: !2060)
!2060 = !{!2061, !2062}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2059, file: !2024, line: 87, baseType: !7, size: 32)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2059, file: !2024, line: 88, baseType: !804, size: 64, offset: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2053, file: !2024, line: 79, baseType: !2064, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2066)
!2066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2024, line: 92, size: 256, elements: !2067)
!2067 = !{!2068, !2069, !2070, !2072, !2073}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2066, file: !2024, line: 94, baseType: !7, size: 32)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2066, file: !2024, line: 95, baseType: !7, size: 32, offset: 32)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2066, file: !2024, line: 96, baseType: !2071, size: 64, offset: 64)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2066, file: !2024, line: 97, baseType: !2029, size: 64, offset: 128)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2066, file: !2024, line: 98, baseType: !93, size: 64, offset: 192)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1184, file: !25, line: 438, baseType: !7, size: 32, offset: 2176)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1184, file: !25, line: 441, baseType: !7, size: 32, offset: 2208)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1184, file: !25, line: 442, baseType: !2013, size: 64, offset: 2240)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1184, file: !25, line: 443, baseType: !2017, size: 64, offset: 2304)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1184, file: !25, line: 444, baseType: !791, size: 8, offset: 2368)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1184, file: !25, line: 451, baseType: !791, size: 8, offset: 2376)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1184, file: !25, line: 454, baseType: !7, size: 32, offset: 2400)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1184, file: !25, line: 455, baseType: !2082, size: 64, offset: 2432)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2084, line: 23, size: 96, elements: !2085)
!2084 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2085 = !{!2086, !2087, !2088}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2083, file: !2084, line: 24, baseType: !105, size: 32)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2083, file: !2084, line: 24, baseType: !105, size: 32, offset: 32)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2083, file: !2084, line: 24, baseType: !105, size: 32, offset: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1184, file: !25, line: 458, baseType: !2090, size: 64, offset: 2496)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{!105}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1184, file: !25, line: 460, baseType: !2094, size: 4032, align: 512, offset: 2560)
!2094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2095, size: 4032, elements: !2111)
!2095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !25, line: 362, size: 576, elements: !2096)
!2096 = !{!2097, !2098, !2099}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2095, file: !25, line: 363, baseType: !93, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2095, file: !25, line: 364, baseType: !7, size: 32, offset: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2095, file: !25, line: 367, baseType: !2100, size: 448, offset: 128)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !25, line: 319, size: 448, elements: !2101)
!2101 = !{!2102, !2103}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2100, file: !25, line: 320, baseType: !1183, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2100, file: !25, line: 321, baseType: !2104, size: 384, offset: 64)
!2104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2105, line: 40, size: 384, elements: !2106)
!2105 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2106 = !{!2107}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2104, file: !2105, line: 41, baseType: !2108, size: 384, align: 64)
!2108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 384, align: 64, elements: !2109)
!2109 = !{!2110}
!2110 = !DISubrange(count: 2)
!2111 = !{!2112}
!2112 = !DISubrange(count: 7)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1184, file: !25, line: 463, baseType: !2114, size: 192, offset: 6592)
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2115, line: 8, size: 192, elements: !2116)
!2115 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2116 = !{!2117, !2118, !2119}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2114, file: !2115, line: 10, baseType: !7, size: 32)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2114, file: !2115, line: 11, baseType: !104, size: 64, offset: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2114, file: !2115, line: 12, baseType: !2120, size: 64, offset: 128)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2122, line: 59, size: 48, elements: !2123)
!2122 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2123 = !{!2124, !2127, !2128, !2129, !2130, !2131}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2121, file: !2122, line: 60, baseType: !2125, size: 16)
!2125 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !128, line: 18, baseType: !2126)
!2126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !130, line: 23, baseType: !759)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2121, file: !2122, line: 61, baseType: !2125, size: 16, offset: 16)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2121, file: !2122, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2121, file: !2122, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2121, file: !2122, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2121, file: !2122, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1184, file: !25, line: 465, baseType: !106, size: 64, offset: 6784)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1184, file: !25, line: 469, baseType: !7, size: 32, offset: 6848)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1184, file: !25, line: 470, baseType: !98, size: 128, offset: 6912)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1184, file: !25, line: 471, baseType: !2136, size: 64, offset: 7040)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2138, line: 33, size: 96, elements: !2139)
!2138 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2139 = !{!2140, !2141, !2142, !2143}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2137, file: !2138, line: 37, baseType: !105, size: 32)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2137, file: !2138, line: 43, baseType: !105, size: 32, offset: 32)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2137, file: !2138, line: 45, baseType: !180, size: 16, offset: 64)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2137, file: !2138, line: 47, baseType: !180, size: 16, offset: 80)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1184, file: !25, line: 476, baseType: !2145, size: 64, offset: 7104)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !25, line: 378, size: 256, elements: !2147)
!2147 = !{!2148, !2164, !2165, !2166}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2146, file: !25, line: 379, baseType: !2149, size: 64)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2151, line: 204, baseType: !2152)
!2151 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2151, line: 197, size: 192, elements: !2153)
!2153 = !{!2154, !2156, !2157, !2158, !2160, !2162}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2152, file: !2151, line: 198, baseType: !2155, size: 32)
!2155 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2151, line: 21, baseType: !129)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2152, file: !2151, line: 199, baseType: !321, size: 8, offset: 32)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2152, file: !2151, line: 200, baseType: !321, size: 8, offset: 40)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2152, file: !2151, line: 201, baseType: !2159, size: 16, offset: 48)
!2159 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2151, line: 17, baseType: !179)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2152, file: !2151, line: 202, baseType: !2161, size: 64, offset: 64)
!2161 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2151, line: 16, baseType: !210)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2152, file: !2151, line: 203, baseType: !2163, size: 64, offset: 128)
!2163 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2151, line: 22, baseType: !210)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2146, file: !25, line: 380, baseType: !7, size: 32, offset: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2146, file: !25, line: 381, baseType: !804, size: 64, offset: 128)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2146, file: !25, line: 382, baseType: !804, size: 64, offset: 192)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1184, file: !25, line: 477, baseType: !2146, size: 256, offset: 7168)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1184, file: !25, line: 480, baseType: !2169, size: 64, offset: 7424)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !25, line: 480, flags: DIFlagFwdDecl)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1184, file: !25, line: 483, baseType: !2172, size: 64, offset: 7488)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !25, line: 483, flags: DIFlagFwdDecl)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1184, file: !25, line: 488, baseType: !804, size: 64, offset: 7552)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1184, file: !25, line: 492, baseType: !93, size: 64, offset: 7616)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1184, file: !25, line: 493, baseType: !7, size: 32, offset: 7680)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1184, file: !25, line: 495, baseType: !93, size: 64, offset: 7744)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1184, file: !25, line: 496, baseType: !7, size: 32, offset: 7808)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1184, file: !25, line: 499, baseType: !7, size: 32, offset: 7840)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1184, file: !25, line: 500, baseType: !2181, size: 64, offset: 7872)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !112, line: 45, baseType: !2183)
!2183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1184, file: !25, line: 503, baseType: !7, size: 32, offset: 7936)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1184, file: !25, line: 504, baseType: !2186, size: 64, offset: 8000)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2189, line: 96, size: 192, elements: !2190)
!2189 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2190 = !{!2191, !2192, !2257, !2260}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2188, file: !2189, line: 97, baseType: !7, size: 32)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2188, file: !2189, line: 98, baseType: !2193, size: 64, offset: 64)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2189, line: 24, size: 3072, elements: !2195)
!2195 = !{!2196, !2198, !2199, !2200, !2201, !2215, !2216, !2217, !2218, !2230, !2242, !2243, !2254, !2255, !2256}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2194, file: !2189, line: 26, baseType: !2197, size: 128)
!2197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !535, size: 128, elements: !2109)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2194, file: !2189, line: 27, baseType: !2197, size: 128, offset: 128)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2194, file: !2189, line: 28, baseType: !105, size: 32, offset: 256)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2194, file: !2189, line: 31, baseType: !496, size: 32, align: 512, offset: 512)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2194, file: !2189, line: 32, baseType: !2202, size: 960, offset: 576)
!2202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2203, line: 206, size: 960, elements: !2204)
!2203 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2204 = !{!2205, !2206, !2209, !2211, !2212, !2214}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2202, file: !2203, line: 207, baseType: !525, size: 64)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2202, file: !2203, line: 208, baseType: !2207, size: 256, offset: 64)
!2207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2208, size: 256, elements: !601)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2202, file: !2203, line: 209, baseType: !2210, size: 256, offset: 320)
!2210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 256, elements: !601)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2202, file: !2203, line: 213, baseType: !103, size: 64, offset: 576)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2202, file: !2203, line: 215, baseType: !2213, size: 256, offset: 640)
!2213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 256, elements: !601)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2202, file: !2203, line: 216, baseType: !319, size: 8, offset: 896)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2194, file: !2189, line: 33, baseType: !106, size: 64, offset: 1536)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2194, file: !2189, line: 34, baseType: !106, size: 64, offset: 1600)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2194, file: !2189, line: 35, baseType: !791, size: 8, offset: 1664)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2194, file: !2189, line: 36, baseType: !2219, size: 320, offset: 1728)
!2219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2220, line: 11, size: 320, elements: !2221)
!2220 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2221 = !{!2222, !2223, !2224, !2229}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2219, file: !2220, line: 16, baseType: !596, size: 128)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2219, file: !2220, line: 17, baseType: !106, size: 64, offset: 128)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2219, file: !2220, line: 18, baseType: !2225, size: 64, offset: 192)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{null, !2228}
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2219, file: !2220, line: 19, baseType: !127, size: 32, offset: 256)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2194, file: !2189, line: 37, baseType: !2231, size: 256, offset: 2048)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2232, line: 98, size: 256, elements: !2233)
!2232 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2233 = !{!2234, !2235, !2236}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2231, file: !2232, line: 99, baseType: !535, size: 64)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2231, file: !2232, line: 100, baseType: !98, size: 128, offset: 64)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2231, file: !2232, line: 101, baseType: !2237, size: 64, offset: 192)
!2237 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2232, line: 21, baseType: !2238)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{null, !2241}
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2194, file: !2189, line: 38, baseType: !522, size: 128, align: 64, offset: 2304)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2194, file: !2189, line: 39, baseType: !2244, size: 64, offset: 2432)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2189, line: 49, size: 768, elements: !2246)
!2246 = !{!2247, !2248, !2249, !2250, !2251, !2252, !2253}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2245, file: !2189, line: 50, baseType: !496, size: 32)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2245, file: !2189, line: 51, baseType: !2210, size: 256, offset: 64)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2245, file: !2189, line: 53, baseType: !2210, size: 256, offset: 320)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2245, file: !2189, line: 54, baseType: !106, size: 64, offset: 576)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2245, file: !2189, line: 55, baseType: !2244, size: 64, offset: 640)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2245, file: !2189, line: 56, baseType: !105, size: 32, offset: 704)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2245, file: !2189, line: 57, baseType: !105, size: 32, offset: 736)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2194, file: !2189, line: 40, baseType: !106, size: 64, offset: 2496)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2194, file: !2189, line: 42, baseType: !105, size: 32, offset: 2560)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2194, file: !2189, line: 43, baseType: !2187, size: 64, offset: 2624)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2188, file: !2189, line: 99, baseType: !2258, offset: 128)
!2258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2259, line: 211, elements: !507)
!2259 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2188, file: !2189, line: 100, baseType: !2261, size: 64, offset: 128)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2189, line: 63, size: 3008, elements: !2263)
!2263 = !{!2264, !2265, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2295}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2262, file: !2189, line: 64, baseType: !2244, size: 64)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2262, file: !2189, line: 65, baseType: !2266, size: 192, offset: 64)
!2266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2244, size: 192, elements: !580)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2262, file: !2189, line: 67, baseType: !105, size: 32, offset: 256)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2262, file: !2189, line: 68, baseType: !542, size: 256, offset: 320)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2262, file: !2189, line: 69, baseType: !496, size: 32, offset: 576)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2262, file: !2189, line: 70, baseType: !542, size: 256, offset: 640)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2262, file: !2189, line: 71, baseType: !106, size: 64, offset: 896)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2262, file: !2189, line: 72, baseType: !106, size: 64, offset: 960)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2262, file: !2189, line: 73, baseType: !106, size: 64, offset: 1024)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2262, file: !2189, line: 74, baseType: !106, size: 64, offset: 1088)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2262, file: !2189, line: 75, baseType: !106, size: 64, offset: 1152)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2262, file: !2189, line: 76, baseType: !106, size: 64, offset: 1216)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2262, file: !2189, line: 77, baseType: !106, size: 64, offset: 1280)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2262, file: !2189, line: 78, baseType: !106, size: 64, offset: 1344)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2262, file: !2189, line: 79, baseType: !791, size: 8, offset: 1408)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2262, file: !2189, line: 80, baseType: !106, size: 64, offset: 1472)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2262, file: !2189, line: 81, baseType: !542, size: 256, offset: 1536)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2262, file: !2189, line: 82, baseType: !1405, size: 256, offset: 1792)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2262, file: !2189, line: 84, baseType: !155, size: 32, offset: 2048)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2262, file: !2189, line: 87, baseType: !106, size: 64, offset: 2112)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2262, file: !2189, line: 88, baseType: !106, size: 64, offset: 2176)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2262, file: !2189, line: 89, baseType: !2287, size: 704, offset: 2240)
!2287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2232, line: 111, size: 704, elements: !2288)
!2288 = !{!2289, !2290, !2291, !2294}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2287, file: !2232, line: 112, baseType: !2231, size: 256)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2287, file: !2232, line: 113, baseType: !2219, size: 320, offset: 256)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2287, file: !2232, line: 116, baseType: !2292, size: 64, offset: 576)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2232, line: 18, flags: DIFlagFwdDecl)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2287, file: !2232, line: 117, baseType: !105, size: 32, offset: 640)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2262, file: !2189, line: 90, baseType: !2187, size: 64, offset: 2944)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1184, file: !25, line: 515, baseType: !2297, size: 64, offset: 8064)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2299, line: 117, size: 128, elements: !2300)
!2299 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2300 = !{!2301, !2302, !2303}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2298, file: !2299, line: 118, baseType: !723, size: 32)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2298, file: !2299, line: 119, baseType: !723, size: 32, offset: 32)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2298, file: !2299, line: 120, baseType: !103, size: 64, offset: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1184, file: !25, line: 516, baseType: !7, size: 32, offset: 8128)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1184, file: !25, line: 519, baseType: !7, size: 32, offset: 8160)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1184, file: !25, line: 520, baseType: !2307, size: 64, offset: 8192)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1184, file: !25, line: 523, baseType: !2309, size: 64, offset: 8256)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !25, line: 523, flags: DIFlagFwdDecl)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1184, file: !25, line: 524, baseType: !7, size: 32, offset: 8320)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1184, file: !25, line: 525, baseType: !2314, size: 64, offset: 8384)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !2317, line: 28, size: 192, elements: !2318)
!2317 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!2318 = !{!2319, !2320, !2321}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !2316, file: !2317, line: 29, baseType: !794, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !2316, file: !2317, line: 30, baseType: !794, size: 64, offset: 64)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !2316, file: !2317, line: 31, baseType: !106, size: 64, offset: 128)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1184, file: !25, line: 526, baseType: !7, size: 32, offset: 8448)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1184, file: !25, line: 533, baseType: !93, size: 64, offset: 8512)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1184, file: !25, line: 534, baseType: !7, size: 32, offset: 8576)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1184, file: !25, line: 535, baseType: !126, size: 64, offset: 8640)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1184, file: !25, line: 536, baseType: !7, size: 32, offset: 8704)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1184, file: !25, line: 539, baseType: !105, size: 32, offset: 8736)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1184, file: !25, line: 540, baseType: !2329, size: 64, offset: 8768)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2331, line: 32, size: 64, elements: !2332)
!2331 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2332 = !{!2333, !2334}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2330, file: !2331, line: 33, baseType: !723, size: 32)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2330, file: !2331, line: 34, baseType: !723, size: 32, offset: 32)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1184, file: !25, line: 563, baseType: !98, size: 128, offset: 8832)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1184, file: !25, line: 565, baseType: !98, size: 128, offset: 8960)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1184, file: !25, line: 568, baseType: !2338, size: 64, offset: 9088)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{null}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1184, file: !25, line: 570, baseType: !155, size: 32, offset: 9152)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1160, file: !69, line: 2382, baseType: !1159, size: 64, offset: 448)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1160, file: !69, line: 2383, baseType: !592, size: 64, offset: 512)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1160, file: !69, line: 2385, baseType: !2345, offset: 576)
!2345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2259, line: 206, elements: !507)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1160, file: !69, line: 2386, baseType: !2345, offset: 576)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1160, file: !69, line: 2387, baseType: !2345, offset: 576)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1160, file: !69, line: 2388, baseType: !2349, offset: 576)
!2349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2345, elements: !580)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1160, file: !69, line: 2390, baseType: !2345, offset: 576)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1160, file: !69, line: 2391, baseType: !2345, offset: 576)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1160, file: !69, line: 2392, baseType: !2345, offset: 576)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1160, file: !69, line: 2393, baseType: !2345, offset: 576)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1151, file: !69, line: 1197, baseType: !2355, size: 64, offset: 384)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2357)
!2357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !69, line: 2057, size: 1664, elements: !2358)
!2358 = !{!2359, !2363, !2367, !2368, !2372, !2376, !2380, !2381, !2382, !2386, !2390, !2394, !2395, !2396, !2402, !2406, !2407, !2411, !2412, !2413, !2414, !2418, !2422, !2469, !2484, !2485}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2357, file: !69, line: 2058, baseType: !2360, size: 64)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!945, !1150}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2357, file: !69, line: 2059, baseType: !2364, size: 64, offset: 64)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{null, !945}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2357, file: !69, line: 2060, baseType: !2364, size: 64, offset: 128)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2357, file: !69, line: 2062, baseType: !2369, size: 64, offset: 192)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{null, !945, !105}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2357, file: !69, line: 2063, baseType: !2373, size: 64, offset: 256)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!105, !945, !1617}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2357, file: !69, line: 2064, baseType: !2377, size: 64, offset: 320)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!105, !945}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2357, file: !69, line: 2065, baseType: !2364, size: 64, offset: 384)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2357, file: !69, line: 2066, baseType: !1179, size: 64, offset: 448)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2357, file: !69, line: 2067, baseType: !2383, size: 64, offset: 512)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = !DISubroutineType(types: !2385)
!2385 = !{!105, !1150, !105}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2357, file: !69, line: 2068, baseType: !2387, size: 64, offset: 576)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = !DISubroutineType(types: !2389)
!2389 = !{!105, !1150, !68}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2357, file: !69, line: 2069, baseType: !2391, size: 64, offset: 640)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{!105, !1150}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2357, file: !69, line: 2070, baseType: !2387, size: 64, offset: 704)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2357, file: !69, line: 2071, baseType: !2391, size: 64, offset: 768)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2357, file: !69, line: 2072, baseType: !2397, size: 64, offset: 832)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{!105, !910, !2400}
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !69, line: 62, flags: DIFlagFwdDecl)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2357, file: !69, line: 2073, baseType: !2403, size: 64, offset: 896)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{!105, !1150, !104, !804}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2357, file: !69, line: 2074, baseType: !1179, size: 64, offset: 960)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2357, file: !69, line: 2076, baseType: !2408, size: 64, offset: 1024)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!105, !1901, !910}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2357, file: !69, line: 2077, baseType: !2408, size: 64, offset: 1088)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2357, file: !69, line: 2078, baseType: !2408, size: 64, offset: 1152)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2357, file: !69, line: 2079, baseType: !2408, size: 64, offset: 1216)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2357, file: !69, line: 2081, baseType: !2415, size: 64, offset: 1280)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{!1098, !1150, !105, !804, !1101, !554}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2357, file: !69, line: 2082, baseType: !2419, size: 64, offset: 1344)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = !DISubroutineType(types: !2421)
!2421 = !{!1098, !1150, !105, !794, !1101, !554}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2357, file: !69, line: 2083, baseType: !2423, size: 64, offset: 1408)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{!2426, !945}
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !74, line: 296, size: 1664, elements: !2429)
!2429 = !{!2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2454, !2455, !2456}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2428, file: !74, line: 297, baseType: !596, size: 128)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2428, file: !74, line: 298, baseType: !98, size: 128, offset: 128)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2428, file: !74, line: 299, baseType: !98, size: 128, offset: 256)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2428, file: !74, line: 300, baseType: !98, size: 128, offset: 384)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2428, file: !74, line: 301, baseType: !542, size: 256, offset: 512)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2428, file: !74, line: 302, baseType: !496, size: 32, offset: 768)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2428, file: !74, line: 303, baseType: !155, size: 32, offset: 800)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2428, file: !74, line: 304, baseType: !1150, size: 64, offset: 832)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2428, file: !74, line: 305, baseType: !2439, size: 64, offset: 896)
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !74, line: 68, size: 64, elements: !2440)
!2440 = !{!2441, !2453}
!2441 = !DIDerivedType(tag: DW_TAG_member, scope: !2439, file: !74, line: 69, baseType: !2442, size: 32)
!2442 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2439, file: !74, line: 69, size: 32, elements: !2443)
!2443 = !{!2444, !2445, !2446}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2442, file: !74, line: 70, baseType: !673, size: 32)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2442, file: !74, line: 71, baseType: !690, size: 32)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2442, file: !74, line: 72, baseType: !2447, size: 32)
!2447 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2448, line: 24, baseType: !2449)
!2448 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2449 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2448, line: 22, size: 32, elements: !2450)
!2450 = !{!2451}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2449, file: !2448, line: 23, baseType: !2452, size: 32)
!2452 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2448, line: 20, baseType: !678)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2439, file: !74, line: 74, baseType: !73, size: 32, offset: 32)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2428, file: !74, line: 306, baseType: !554, size: 64, offset: 960)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2428, file: !74, line: 307, baseType: !106, size: 64, offset: 1024)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2428, file: !74, line: 308, baseType: !2457, size: 576, offset: 1088)
!2457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !74, line: 205, size: 576, elements: !2458)
!2458 = !{!2459, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2468}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2457, file: !74, line: 206, baseType: !2460, size: 64)
!2460 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !74, line: 66, baseType: !222)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2457, file: !74, line: 207, baseType: !2460, size: 64, offset: 64)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2457, file: !74, line: 208, baseType: !2460, size: 64, offset: 128)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2457, file: !74, line: 209, baseType: !2460, size: 64, offset: 192)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2457, file: !74, line: 210, baseType: !2460, size: 64, offset: 256)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2457, file: !74, line: 211, baseType: !2460, size: 64, offset: 320)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2457, file: !74, line: 212, baseType: !2460, size: 64, offset: 384)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2457, file: !74, line: 213, baseType: !747, size: 64, offset: 448)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2457, file: !74, line: 214, baseType: !747, size: 64, offset: 512)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2357, file: !69, line: 2085, baseType: !2470, size: 64, offset: 1472)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{!103, !1150, !2473}
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2475, line: 15, size: 256, elements: !2476)
!2475 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2476 = !{!2477, !2478, !2479, !2480, !2481}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2474, file: !2475, line: 16, baseType: !632, size: 32)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2474, file: !2475, line: 19, baseType: !105, size: 32, offset: 32)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2474, file: !2475, line: 26, baseType: !106, size: 64, offset: 64)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2474, file: !2475, line: 33, baseType: !106, size: 64, offset: 128)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2474, file: !2475, line: 36, baseType: !2482, size: 64, offset: 192)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !40, line: 33, flags: DIFlagFwdDecl)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2357, file: !69, line: 2087, baseType: !2470, size: 64, offset: 1536)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2357, file: !69, line: 2089, baseType: !1179, size: 64, offset: 1600)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1151, file: !69, line: 1198, baseType: !2487, size: 64, offset: 448)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2489)
!2489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !74, line: 324, size: 704, elements: !2490)
!2490 = !{!2491, !2495, !2499, !2503, !2504, !2505, !2506, !2507, !2512, !2517, !2521}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2489, file: !74, line: 325, baseType: !2492, size: 64)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{!105, !2427}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2489, file: !74, line: 326, baseType: !2496, size: 64, offset: 64)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{!2427, !1150, !105}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2489, file: !74, line: 327, baseType: !2500, size: 64, offset: 128)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{null, !2427}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2489, file: !74, line: 328, baseType: !2492, size: 64, offset: 192)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2489, file: !74, line: 329, baseType: !2492, size: 64, offset: 256)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2489, file: !74, line: 330, baseType: !2492, size: 64, offset: 320)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2489, file: !74, line: 331, baseType: !2383, size: 64, offset: 384)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2489, file: !74, line: 334, baseType: !2508, size: 64, offset: 448)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{!2511, !945}
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2489, file: !74, line: 335, baseType: !2513, size: 64, offset: 512)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{!105, !945, !2516}
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2489, file: !74, line: 337, baseType: !2518, size: 64, offset: 576)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DISubroutineType(types: !2520)
!2520 = !{!105, !945, !2511}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2489, file: !74, line: 339, baseType: !2522, size: 64, offset: 640)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{!105, !1150, !2525}
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1151, file: !69, line: 1199, baseType: !2527, size: 64, offset: 512)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2529)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !74, line: 430, size: 704, elements: !2530)
!2530 = !{!2531, !2535, !2536, !2540, !2541, !2542, !2557, !2580, !2584, !2585, !2608}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2529, file: !74, line: 431, baseType: !2532, size: 64)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DISubroutineType(types: !2534)
!2534 = !{!105, !1150, !105, !105, !1067}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2529, file: !74, line: 432, baseType: !2383, size: 64, offset: 64)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2529, file: !74, line: 433, baseType: !2537, size: 64, offset: 128)
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{!105, !1150, !7}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2529, file: !74, line: 434, baseType: !2537, size: 64, offset: 192)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2529, file: !74, line: 435, baseType: !2383, size: 64, offset: 256)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2529, file: !74, line: 436, baseType: !2543, size: 64, offset: 320)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = !DISubroutineType(types: !2545)
!2545 = !{!105, !1150, !105, !2546}
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !74, line: 417, size: 256, elements: !2548)
!2548 = !{!2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2547, file: !74, line: 418, baseType: !105, size: 32)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2547, file: !74, line: 419, baseType: !7, size: 32, offset: 32)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2547, file: !74, line: 420, baseType: !7, size: 32, offset: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2547, file: !74, line: 422, baseType: !7, size: 32, offset: 96)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2547, file: !74, line: 423, baseType: !7, size: 32, offset: 128)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2547, file: !74, line: 424, baseType: !7, size: 32, offset: 160)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2547, file: !74, line: 425, baseType: !7, size: 32, offset: 192)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2547, file: !74, line: 426, baseType: !7, size: 32, offset: 224)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2529, file: !74, line: 437, baseType: !2558, size: 64, offset: 384)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{!105, !1150, !2439, !2561}
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !74, line: 345, size: 960, elements: !2563)
!2563 = !{!2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2562, file: !74, line: 346, baseType: !105, size: 32)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2562, file: !74, line: 347, baseType: !209, size: 64, offset: 64)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2562, file: !74, line: 348, baseType: !209, size: 64, offset: 128)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2562, file: !74, line: 349, baseType: !209, size: 64, offset: 192)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2562, file: !74, line: 350, baseType: !209, size: 64, offset: 256)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2562, file: !74, line: 351, baseType: !209, size: 64, offset: 320)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2562, file: !74, line: 352, baseType: !209, size: 64, offset: 384)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2562, file: !74, line: 353, baseType: !220, size: 64, offset: 448)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2562, file: !74, line: 355, baseType: !220, size: 64, offset: 512)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2562, file: !74, line: 356, baseType: !105, size: 32, offset: 576)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2562, file: !74, line: 357, baseType: !105, size: 32, offset: 608)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2562, file: !74, line: 358, baseType: !209, size: 64, offset: 640)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2562, file: !74, line: 359, baseType: !209, size: 64, offset: 704)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2562, file: !74, line: 360, baseType: !209, size: 64, offset: 768)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2562, file: !74, line: 361, baseType: !220, size: 64, offset: 832)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2562, file: !74, line: 362, baseType: !105, size: 32, offset: 896)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2529, file: !74, line: 438, baseType: !2581, size: 64, offset: 448)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = !DISubroutineType(types: !2583)
!2583 = !{!105, !1150, !2525, !2561}
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2529, file: !74, line: 440, baseType: !2558, size: 64, offset: 512)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2529, file: !74, line: 441, baseType: !2586, size: 64, offset: 576)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{!105, !1150, !2589}
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !74, line: 411, size: 1408, elements: !2591)
!2591 = !{!2592, !2593}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2590, file: !74, line: 412, baseType: !7, size: 32)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2590, file: !74, line: 413, baseType: !2594, size: 1344, offset: 64)
!2594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2595, size: 1344, elements: !580)
!2595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !74, line: 397, size: 448, elements: !2596)
!2596 = !{!2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2607}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2595, file: !74, line: 398, baseType: !7, size: 32)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2595, file: !74, line: 399, baseType: !7, size: 32, offset: 32)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2595, file: !74, line: 401, baseType: !7, size: 32, offset: 64)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2595, file: !74, line: 402, baseType: !7, size: 32, offset: 96)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2595, file: !74, line: 403, baseType: !7, size: 32, offset: 128)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2595, file: !74, line: 404, baseType: !7, size: 32, offset: 160)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2595, file: !74, line: 405, baseType: !7, size: 32, offset: 192)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2595, file: !74, line: 406, baseType: !211, size: 64, offset: 256)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2595, file: !74, line: 407, baseType: !2606, size: 64, offset: 320)
!2606 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !99, line: 132, baseType: !209)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2595, file: !74, line: 408, baseType: !2606, size: 64, offset: 384)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2529, file: !74, line: 442, baseType: !2537, size: 64, offset: 640)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1151, file: !69, line: 1200, baseType: !2610, size: 64, offset: 576)
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!2611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2612)
!2612 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !69, line: 54, flags: DIFlagFwdDecl)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1151, file: !69, line: 1201, baseType: !106, size: 64, offset: 640)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1151, file: !69, line: 1202, baseType: !106, size: 64, offset: 704)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1151, file: !69, line: 1203, baseType: !106, size: 64, offset: 768)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1151, file: !69, line: 1204, baseType: !910, size: 64, offset: 832)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1151, file: !69, line: 1205, baseType: !731, size: 320, offset: 896)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1151, file: !69, line: 1206, baseType: !105, size: 32, offset: 1216)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1151, file: !69, line: 1207, baseType: !155, size: 32, offset: 1248)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1151, file: !69, line: 1209, baseType: !93, size: 64, offset: 1280)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1151, file: !69, line: 1211, baseType: !2622, size: 64, offset: 1344)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2625)
!2625 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !69, line: 1211, flags: DIFlagFwdDecl)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1151, file: !69, line: 1223, baseType: !2627, size: 64, offset: 1408)
!2627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !922, line: 34, size: 64, elements: !2628)
!2628 = !{!2629}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2627, file: !922, line: 35, baseType: !925, size: 64)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1151, file: !69, line: 1224, baseType: !98, size: 128, offset: 1472)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1151, file: !69, line: 1225, baseType: !2632, size: 64, offset: 1600)
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2633 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !69, line: 1225, flags: DIFlagFwdDecl)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1151, file: !69, line: 1226, baseType: !2635, size: 64, offset: 1664)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !69, line: 1226, flags: DIFlagFwdDecl)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1151, file: !69, line: 1227, baseType: !2638, size: 64, offset: 1728)
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2639 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !69, line: 50, flags: DIFlagFwdDecl)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1151, file: !69, line: 1228, baseType: !2641, size: 64, offset: 1792)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !69, line: 1228, flags: DIFlagFwdDecl)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1151, file: !69, line: 1229, baseType: !596, size: 128, offset: 1856)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1151, file: !69, line: 1230, baseType: !7, size: 32, offset: 1984)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1151, file: !69, line: 1231, baseType: !2646, size: 2496, offset: 2048)
!2646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !74, line: 521, size: 2496, elements: !2647)
!2647 = !{!2648, !2649, !2650, !2652, !2684}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2646, file: !74, line: 522, baseType: !7, size: 32)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2646, file: !74, line: 523, baseType: !731, size: 320, offset: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2646, file: !74, line: 524, baseType: !2651, size: 192, offset: 384)
!2651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !945, size: 192, elements: !580)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2646, file: !74, line: 525, baseType: !2653, size: 1728, offset: 576)
!2653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2654, size: 1728, elements: !580)
!2654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !74, line: 222, size: 576, elements: !2655)
!2655 = !{!2656, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2654, file: !74, line: 223, baseType: !2657, size: 64)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !74, line: 445, size: 256, elements: !2659)
!2659 = !{!2660, !2661, !2674, !2675}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2658, file: !74, line: 446, baseType: !105, size: 32)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2658, file: !74, line: 447, baseType: !2662, size: 64, offset: 64)
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2663, size: 64)
!2663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2664)
!2664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !74, line: 312, size: 512, elements: !2665)
!2665 = !{!2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673}
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2664, file: !74, line: 313, baseType: !2383, size: 64)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2664, file: !74, line: 314, baseType: !2383, size: 64, offset: 64)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2664, file: !74, line: 315, baseType: !2383, size: 64, offset: 128)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2664, file: !74, line: 316, baseType: !2383, size: 64, offset: 192)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2664, file: !74, line: 317, baseType: !2492, size: 64, offset: 256)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2664, file: !74, line: 318, baseType: !2492, size: 64, offset: 320)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2664, file: !74, line: 319, baseType: !2492, size: 64, offset: 384)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2664, file: !74, line: 320, baseType: !2522, size: 64, offset: 448)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2658, file: !74, line: 448, baseType: !1183, size: 64, offset: 128)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2658, file: !74, line: 449, baseType: !2657, size: 64, offset: 192)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2654, file: !74, line: 224, baseType: !105, size: 32, offset: 64)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2654, file: !74, line: 226, baseType: !98, size: 128, offset: 128)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2654, file: !74, line: 227, baseType: !106, size: 64, offset: 256)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2654, file: !74, line: 228, baseType: !7, size: 32, offset: 320)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2654, file: !74, line: 229, baseType: !7, size: 32, offset: 352)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2654, file: !74, line: 230, baseType: !2460, size: 64, offset: 384)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2654, file: !74, line: 231, baseType: !2460, size: 64, offset: 448)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2654, file: !74, line: 232, baseType: !93, size: 64, offset: 512)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2646, file: !74, line: 526, baseType: !2685, size: 192, offset: 2304)
!2685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2662, size: 192, elements: !580)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1151, file: !69, line: 1233, baseType: !2687, size: 2368, offset: 4544)
!2687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !69, line: 1184, size: 2368, elements: !2688)
!2688 = !{!2689, !2690, !2691}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2687, file: !69, line: 1185, baseType: !180, size: 16)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2687, file: !69, line: 1186, baseType: !180, size: 16, offset: 16)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2687, file: !69, line: 1187, baseType: !2692, size: 2304, offset: 64)
!2692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2693, size: 2304, elements: !580)
!2693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2694, line: 12, size: 768, elements: !2695)
!2694 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2695 = !{!2696, !2704, !2705, !2710, !2711}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2693, file: !2694, line: 13, baseType: !2697, size: 384)
!2697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2698, line: 17, size: 384, elements: !2699)
!2698 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2699 = !{!2700, !2701, !2702, !2703}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2697, file: !2698, line: 18, baseType: !105, size: 32)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2697, file: !2698, line: 19, baseType: !105, size: 32, offset: 32)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2697, file: !2698, line: 20, baseType: !605, size: 192, offset: 64)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2697, file: !2698, line: 22, baseType: !522, size: 128, align: 64, offset: 256)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2693, file: !2694, line: 14, baseType: !2071, size: 64, offset: 384)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2693, file: !2694, line: 15, baseType: !2706, size: 64, offset: 448)
!2706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2707, line: 16, size: 64, elements: !2708)
!2707 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2708 = !{!2709}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2706, file: !2707, line: 17, baseType: !135, size: 64)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2693, file: !2694, line: 16, baseType: !605, size: 192, offset: 512)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2693, file: !2694, line: 17, baseType: !155, size: 32, offset: 704)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1151, file: !69, line: 1240, baseType: !93, size: 64, offset: 6912)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1151, file: !69, line: 1243, baseType: !127, size: 32, offset: 6976)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1151, file: !69, line: 1245, baseType: !747, size: 64, offset: 7040)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1151, file: !69, line: 1246, baseType: !747, size: 64, offset: 7104)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1151, file: !69, line: 1248, baseType: !129, size: 32, offset: 7168)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1151, file: !69, line: 1249, baseType: !2718, size: 64, offset: 7232)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !69, line: 634, flags: DIFlagFwdDecl)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1151, file: !69, line: 1252, baseType: !2721, size: 256, offset: 7296)
!2721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !777, size: 256, elements: !2722)
!2722 = !{!2723}
!2723 = !DISubrange(count: 32)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1151, file: !69, line: 1253, baseType: !2725, size: 128, offset: 7552)
!2725 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2726, line: 21, baseType: !2727)
!2726 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2727 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2726, line: 19, size: 128, elements: !2728)
!2728 = !{!2729}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2727, file: !2726, line: 20, baseType: !2730, size: 128)
!2730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !320, size: 128, elements: !2731)
!2731 = !{!2732}
!2732 = !DISubrange(count: 16)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1151, file: !69, line: 1255, baseType: !7, size: 32, offset: 7680)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1151, file: !69, line: 1261, baseType: !542, size: 256, offset: 7744)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1151, file: !69, line: 1267, baseType: !794, size: 64, offset: 8000)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1151, file: !69, line: 1269, baseType: !2737, size: 64, offset: 8064)
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2739)
!2739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !912, line: 128, size: 1024, align: 512, elements: !2740)
!2740 = !{!2741, !2745, !2746, !2753, !2759, !2763, !2767, !2771, !2772, !2776, !2780, !2785, !2789}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2739, file: !912, line: 129, baseType: !2742, size: 64)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = !DISubroutineType(types: !2744)
!2744 = !{!105, !910, !7}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2739, file: !912, line: 130, baseType: !2742, size: 64, offset: 64)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2739, file: !912, line: 131, baseType: !2747, size: 64, offset: 128)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{!105, !2750, !2752}
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !911)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2739, file: !912, line: 132, baseType: !2754, size: 64, offset: 192)
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = !DISubroutineType(types: !2756)
!2756 = !{!105, !2750, !7, !794, !2757}
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !930)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2739, file: !912, line: 134, baseType: !2760, size: 64, offset: 256)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!105, !2750}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2739, file: !912, line: 135, baseType: !2764, size: 64, offset: 320)
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2765, size: 64)
!2765 = !DISubroutineType(types: !2766)
!2766 = !{!105, !910}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2739, file: !912, line: 136, baseType: !2768, size: 64, offset: 384)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = !DISubroutineType(types: !2770)
!2770 = !{null, !910}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2739, file: !912, line: 137, baseType: !2768, size: 64, offset: 448)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2739, file: !912, line: 138, baseType: !2773, size: 64, offset: 512)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DISubroutineType(types: !2775)
!2775 = !{null, !910, !945}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2739, file: !912, line: 139, baseType: !2777, size: 64, offset: 576)
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = !DISubroutineType(types: !2779)
!2779 = !{!804, !910, !804, !105}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2739, file: !912, line: 140, baseType: !2781, size: 64, offset: 640)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!905, !2784}
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2739, file: !912, line: 141, baseType: !2786, size: 64, offset: 704)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = !DISubroutineType(types: !2788)
!2788 = !{!105, !1067, !791}
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2739, file: !912, line: 142, baseType: !2790, size: 64, offset: 768)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = !DISubroutineType(types: !2792)
!2792 = !{!910, !910, !2793}
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !946)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1151, file: !69, line: 1271, baseType: !2796, size: 448, offset: 8128)
!2796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2475, line: 63, size: 448, elements: !2797)
!2797 = !{!2798, !2803, !2804, !2805, !2806, !2807, !2808}
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2796, file: !2475, line: 64, baseType: !2799, size: 64)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DISubroutineType(types: !2801)
!2801 = !{!106, !2802, !2473}
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2796, size: 64)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2796, file: !2475, line: 66, baseType: !2799, size: 64, offset: 64)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2796, file: !2475, line: 69, baseType: !103, size: 64, offset: 128)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2796, file: !2475, line: 70, baseType: !105, size: 32, offset: 192)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2796, file: !2475, line: 71, baseType: !7, size: 32, offset: 224)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2796, file: !2475, line: 74, baseType: !98, size: 128, offset: 256)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2796, file: !2475, line: 85, baseType: !2809, size: 64, offset: 384)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1151, file: !69, line: 1274, baseType: !535, size: 64, offset: 8576)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1151, file: !69, line: 1280, baseType: !535, size: 64, offset: 8640)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1151, file: !69, line: 1283, baseType: !105, size: 32, offset: 8704)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1151, file: !69, line: 1286, baseType: !1797, size: 32, offset: 8736)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1151, file: !69, line: 1289, baseType: !2292, size: 64, offset: 8768)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1151, file: !69, line: 1290, baseType: !592, size: 64, offset: 8832)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1151, file: !69, line: 1297, baseType: !649, size: 64, offset: 8896)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1151, file: !69, line: 1304, baseType: !2818, size: 64, offset: 8960)
!2818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2819, line: 49, size: 64, elements: !2820)
!2819 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!2820 = !{!2821}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2818, file: !2819, line: 50, baseType: !2822, size: 64)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2819, line: 41, size: 512, align: 512, elements: !2824)
!2824 = !{!2825, !2826, !2831}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2823, file: !2819, line: 43, baseType: !496, size: 32)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2823, file: !2819, line: 45, baseType: !2827, size: 192, offset: 64)
!2827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2819, line: 29, size: 192, elements: !2828)
!2828 = !{!2829, !2830}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2827, file: !2819, line: 30, baseType: !98, size: 128)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2827, file: !2819, line: 32, baseType: !103, size: 64, offset: 128)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2823, file: !2819, line: 46, baseType: !103, size: 64, offset: 256)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1151, file: !69, line: 1305, baseType: !2818, size: 64, offset: 9024)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1151, file: !69, line: 1306, baseType: !522, size: 128, align: 64, offset: 9088)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1151, file: !69, line: 1307, baseType: !2231, size: 256, offset: 9216)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1151, file: !69, line: 1309, baseType: !542, size: 256, offset: 9472)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1151, file: !69, line: 1314, baseType: !105, size: 32, offset: 9728)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1151, file: !69, line: 1317, baseType: !496, size: 32, align: 512, offset: 10240)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1151, file: !69, line: 1318, baseType: !98, size: 128, offset: 10304)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1151, file: !69, line: 1320, baseType: !496, size: 32, offset: 10432)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1151, file: !69, line: 1321, baseType: !98, size: 128, offset: 10496)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !946, file: !69, line: 656, baseType: !1300, size: 64, offset: 512)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !946, file: !69, line: 659, baseType: !93, size: 64, offset: 576)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !946, file: !69, line: 663, baseType: !106, size: 64, offset: 640)
!2844 = !DIDerivedType(tag: DW_TAG_member, scope: !946, file: !69, line: 671, baseType: !2845, size: 32, offset: 704)
!2845 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !946, file: !69, line: 671, size: 32, elements: !2846)
!2846 = !{!2847, !2849}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2845, file: !69, line: 672, baseType: !2848, size: 32)
!2848 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2845, file: !69, line: 673, baseType: !7, size: 32)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !946, file: !69, line: 675, baseType: !1020, size: 32, offset: 736)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !946, file: !69, line: 676, baseType: !554, size: 64, offset: 768)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !946, file: !69, line: 677, baseType: !1056, size: 128, offset: 832)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !946, file: !69, line: 678, baseType: !1056, size: 128, offset: 960)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !946, file: !69, line: 679, baseType: !1056, size: 128, offset: 1088)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !946, file: !69, line: 680, baseType: !496, size: 32, offset: 1216)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !946, file: !69, line: 681, baseType: !180, size: 16, offset: 1248)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !946, file: !69, line: 682, baseType: !319, size: 8, offset: 1264)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !946, file: !69, line: 683, baseType: !319, size: 8, offset: 1272)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !946, file: !69, line: 684, baseType: !2606, size: 64, offset: 1280)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !946, file: !69, line: 691, baseType: !106, size: 64, offset: 1344)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !946, file: !69, line: 692, baseType: !731, size: 320, offset: 1408)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !946, file: !69, line: 694, baseType: !106, size: 64, offset: 1728)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !946, file: !69, line: 695, baseType: !106, size: 64, offset: 1792)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !946, file: !69, line: 697, baseType: !596, size: 128, offset: 1856)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !946, file: !69, line: 698, baseType: !98, size: 128, offset: 1984)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !946, file: !69, line: 707, baseType: !98, size: 128, offset: 2112)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !946, file: !69, line: 708, baseType: !98, size: 128, offset: 2240)
!2868 = !DIDerivedType(tag: DW_TAG_member, scope: !946, file: !69, line: 709, baseType: !2869, size: 128, offset: 2368)
!2869 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !946, file: !69, line: 709, size: 128, elements: !2870)
!2870 = !{!2871, !2872}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2869, file: !69, line: 710, baseType: !592, size: 64)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2869, file: !69, line: 711, baseType: !522, size: 128, align: 64)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !946, file: !69, line: 713, baseType: !537, size: 64, offset: 2496)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !946, file: !69, line: 714, baseType: !537, size: 64, offset: 2560)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !946, file: !69, line: 715, baseType: !155, size: 32, offset: 2624)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !946, file: !69, line: 716, baseType: !155, size: 32, offset: 2656)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !946, file: !69, line: 717, baseType: !155, size: 32, offset: 2688)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !946, file: !69, line: 719, baseType: !155, size: 32, offset: 2720)
!2879 = !DIDerivedType(tag: DW_TAG_member, scope: !946, file: !69, line: 721, baseType: !2880, size: 64, offset: 2752)
!2880 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !946, file: !69, line: 721, size: 64, elements: !2881)
!2881 = !{!2882, !3008}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2880, file: !69, line: 722, baseType: !2883, size: 64)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2885)
!2885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !69, line: 1914, size: 2112, elements: !2886)
!2886 = !{!2887, !2888, !2892, !2896, !2900, !2901, !2902, !2908, !2921, !2925, !2929, !2930, !2934, !2935, !2939, !2944, !2945, !2949, !2953, !2959, !2960, !2964, !2965, !2971, !2975, !2976, !2981, !2985, !2989, !2993, !2997, !2998, !3004}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2885, file: !69, line: 1915, baseType: !1183, size: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2885, file: !69, line: 1916, baseType: !2889, size: 64, offset: 64)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{!554, !514, !554, !105}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2885, file: !69, line: 1917, baseType: !2893, size: 64, offset: 128)
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = !DISubroutineType(types: !2895)
!2895 = !{!1098, !514, !804, !1101, !1925}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2885, file: !69, line: 1918, baseType: !2897, size: 64, offset: 192)
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{!1098, !514, !794, !1101, !1925}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2885, file: !69, line: 1919, baseType: !1731, size: 64, offset: 256)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2885, file: !69, line: 1920, baseType: !1731, size: 64, offset: 320)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2885, file: !69, line: 1921, baseType: !2903, size: 64, offset: 384)
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = !DISubroutineType(types: !2905)
!2905 = !{!105, !1734, !2906, !7}
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !69, line: 53, flags: DIFlagFwdDecl)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2885, file: !69, line: 1923, baseType: !2909, size: 64, offset: 448)
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{!105, !514, !2912}
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !69, line: 1858, size: 128, elements: !2914)
!2914 = !{!2915, !2920}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2913, file: !69, line: 1859, baseType: !2916, size: 64)
!2916 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !69, line: 1855, baseType: !2917)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DISubroutineType(types: !2919)
!2919 = !{!791, !2912, !794, !105, !554, !209, !7}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2913, file: !69, line: 1860, baseType: !554, size: 64, offset: 64)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2885, file: !69, line: 1924, baseType: !2922, size: 64, offset: 512)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!1945, !514, !1947}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2885, file: !69, line: 1925, baseType: !2926, size: 64, offset: 576)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{!103, !514, !7, !106}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2885, file: !69, line: 1926, baseType: !2926, size: 64, offset: 640)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2885, file: !69, line: 1927, baseType: !2931, size: 64, offset: 704)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = !DISubroutineType(types: !2933)
!2933 = !{!105, !514, !1440}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2885, file: !69, line: 1928, baseType: !106, size: 64, offset: 768)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2885, file: !69, line: 1929, baseType: !2936, size: 64, offset: 832)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = !DISubroutineType(types: !2938)
!2938 = !{!105, !945, !514}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2885, file: !69, line: 1930, baseType: !2940, size: 64, offset: 896)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{!105, !514, !2943}
!2943 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !69, line: 1061, baseType: !93)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2885, file: !69, line: 1931, baseType: !2936, size: 64, offset: 960)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2885, file: !69, line: 1932, baseType: !2946, size: 64, offset: 1024)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = !DISubroutineType(types: !2948)
!2948 = !{!105, !514, !554, !554, !105}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2885, file: !69, line: 1933, baseType: !2950, size: 64, offset: 1088)
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{!105, !105, !514, !105}
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2885, file: !69, line: 1934, baseType: !2954, size: 64, offset: 1152)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{!105, !514, !105, !2957}
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!2958 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !69, line: 1063, flags: DIFlagFwdDecl)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2885, file: !69, line: 1935, baseType: !511, size: 64, offset: 1216)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2885, file: !69, line: 1936, baseType: !2961, size: 64, offset: 1280)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = !DISubroutineType(types: !2963)
!2963 = !{!105, !105}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2885, file: !69, line: 1937, baseType: !2954, size: 64, offset: 1344)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2885, file: !69, line: 1938, baseType: !2966, size: 64, offset: 1408)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!1098, !2969, !514, !1925, !1101, !7}
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !137, line: 59, flags: DIFlagFwdDecl)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2885, file: !69, line: 1939, baseType: !2972, size: 64, offset: 1472)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = !DISubroutineType(types: !2974)
!2974 = !{!1098, !514, !1925, !2969, !1101, !7}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2885, file: !69, line: 1940, baseType: !1787, size: 64, offset: 1536)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2885, file: !69, line: 1941, baseType: !2977, size: 64, offset: 1600)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{!105, !514, !105, !2980, !1708}
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2885, file: !69, line: 1942, baseType: !2982, size: 64, offset: 1664)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{!103, !514, !105, !554, !554}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2885, file: !69, line: 1944, baseType: !2986, size: 64, offset: 1728)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{null, !1901, !514}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2885, file: !69, line: 1948, baseType: !2990, size: 64, offset: 1792)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{!1098, !514, !554, !514, !554, !1101, !7}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2885, file: !69, line: 1950, baseType: !2994, size: 64, offset: 1856)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{!554, !514, !554, !514, !554, !554, !7}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2885, file: !69, line: 1953, baseType: !2946, size: 64, offset: 1920)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2885, file: !69, line: 1954, baseType: !2999, size: 64, offset: 1984)
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = !DISubroutineType(types: !3001)
!3001 = !{!105, !3002, !7}
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !69, line: 1911, flags: DIFlagFwdDecl)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2885, file: !69, line: 1955, baseType: !3005, size: 64, offset: 2048)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!105, !3002, !2906, !7}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2880, file: !69, line: 723, baseType: !2364, size: 64)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !946, file: !69, line: 725, baseType: !3010, size: 64, offset: 2816)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !69, line: 725, flags: DIFlagFwdDecl)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !946, file: !69, line: 726, baseType: !1301, size: 1536, align: 64, offset: 2880)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !946, file: !69, line: 727, baseType: !98, size: 128, offset: 4416)
!3014 = !DIDerivedType(tag: DW_TAG_member, scope: !946, file: !69, line: 728, baseType: !3015, size: 64, offset: 4544)
!3015 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !946, file: !69, line: 728, size: 64, elements: !3016)
!3016 = !{!3017, !3018, !3021, !3022}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3015, file: !69, line: 729, baseType: !2969, size: 64)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3015, file: !69, line: 730, baseType: !3019, size: 64)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !69, line: 730, flags: DIFlagFwdDecl)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3015, file: !69, line: 731, baseType: !804, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3015, file: !69, line: 732, baseType: !7, size: 32)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !946, file: !69, line: 735, baseType: !129, size: 32, offset: 4608)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !946, file: !69, line: 738, baseType: !129, size: 32, offset: 4640)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !946, file: !69, line: 739, baseType: !2718, size: 64, offset: 4672)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !946, file: !69, line: 750, baseType: !93, size: 64, offset: 4736)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !911, file: !912, line: 91, baseType: !3028, size: 256, offset: 448)
!3028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 256, elements: !2722)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !911, file: !912, line: 94, baseType: !3030, size: 64, offset: 704)
!3030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3031, line: 25, size: 64, elements: !3032)
!3031 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3032 = !{!3033}
!3033 = !DIDerivedType(tag: DW_TAG_member, scope: !3030, file: !3031, line: 26, baseType: !3034, size: 64)
!3034 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3030, file: !3031, line: 26, size: 64, elements: !3035)
!3035 = !{!3036, !3037}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3034, file: !3031, line: 28, baseType: !210, size: 64, align: 64)
!3037 = !DIDerivedType(tag: DW_TAG_member, scope: !3034, file: !3031, line: 30, baseType: !3038, size: 64)
!3038 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3034, file: !3031, line: 30, size: 64, elements: !3039)
!3039 = !{!3040, !3041}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3038, file: !3031, line: 31, baseType: !496, size: 32)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3038, file: !3031, line: 32, baseType: !105, size: 32, offset: 32)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !911, file: !912, line: 95, baseType: !2737, size: 64, offset: 768)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !911, file: !912, line: 96, baseType: !1150, size: 64, offset: 832)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !911, file: !912, line: 97, baseType: !106, size: 64, offset: 896)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !911, file: !912, line: 98, baseType: !93, size: 64, offset: 960)
!3046 = !DIDerivedType(tag: DW_TAG_member, scope: !911, file: !912, line: 100, baseType: !3047, size: 128, offset: 1024)
!3047 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !911, file: !912, line: 100, size: 128, elements: !3048)
!3048 = !{!3049, !3050}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3047, file: !912, line: 101, baseType: !98, size: 128)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3047, file: !912, line: 102, baseType: !3051, size: 64)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !911, file: !912, line: 104, baseType: !98, size: 128, offset: 1152)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !911, file: !912, line: 105, baseType: !98, size: 128, offset: 1280)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !911, file: !912, line: 113, baseType: !3055, size: 128, offset: 1408)
!3055 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !911, file: !912, line: 109, size: 128, elements: !3056)
!3056 = !{!3057, !3058, !3059}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3055, file: !912, line: 110, baseType: !596, size: 128)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3055, file: !912, line: 111, baseType: !921, size: 128)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3055, file: !912, line: 112, baseType: !522, size: 128, align: 64)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !906, file: !907, line: 72, baseType: !1150, size: 64, offset: 64)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !906, file: !907, line: 73, baseType: !105, size: 32, offset: 128)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !906, file: !907, line: 74, baseType: !985, size: 64, offset: 192)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !901, file: !902, line: 10, baseType: !910, size: 64, offset: 64)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !515, file: !69, line: 1015, baseType: !945, size: 64, offset: 1344)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !515, file: !69, line: 1016, baseType: !2883, size: 64, offset: 1408)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !515, file: !69, line: 1018, baseType: !209, size: 64, offset: 1472)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !515, file: !69, line: 1020, baseType: !93, size: 64, offset: 1536)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !515, file: !69, line: 1023, baseType: !93, size: 64, offset: 1600)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !515, file: !69, line: 1027, baseType: !3070, size: 64, offset: 1664)
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !515, file: !69, line: 1029, baseType: !1300, size: 64, offset: 1728)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !515, file: !69, line: 1030, baseType: !1797, size: 32, offset: 1792)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !515, file: !69, line: 1031, baseType: !1797, size: 32, offset: 1824)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !482, file: !40, line: 756, baseType: !106, size: 64, offset: 704)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !482, file: !40, line: 757, baseType: !106, size: 64, offset: 768)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !482, file: !40, line: 760, baseType: !106, size: 64, offset: 832)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !482, file: !40, line: 761, baseType: !106, size: 64, offset: 896)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !482, file: !40, line: 763, baseType: !106, size: 64, offset: 960)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !482, file: !40, line: 764, baseType: !3080, size: 64, offset: 1024)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1455, line: 299, baseType: !3082)
!3082 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1455, line: 299, size: 64, elements: !3083)
!3083 = !{!3084}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !3082, file: !1455, line: 299, baseType: !3085, size: 64)
!3085 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1460, line: 18, baseType: !106)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !482, file: !40, line: 773, baseType: !155, size: 32, offset: 1088)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !482, file: !40, line: 785, baseType: !155, size: 32, offset: 1120)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !482, file: !40, line: 795, baseType: !3089, size: 64, offset: 1152)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !40, line: 726, size: 128, elements: !3091)
!3091 = !{!3092, !3093}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3090, file: !40, line: 727, baseType: !209, size: 64)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !3090, file: !40, line: 728, baseType: !105, size: 32, offset: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !482, file: !40, line: 801, baseType: !106, size: 64, offset: 1216)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !482, file: !40, line: 804, baseType: !535, size: 64, offset: 1280)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !482, file: !40, line: 806, baseType: !105, size: 32, offset: 1344)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !482, file: !40, line: 808, baseType: !496, size: 32, offset: 1376)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !482, file: !40, line: 823, baseType: !731, size: 320, offset: 1408)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !482, file: !40, line: 825, baseType: !98, size: 128, offset: 1728)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !482, file: !40, line: 845, baseType: !105, size: 32, offset: 1856)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !482, file: !40, line: 849, baseType: !106, size: 64, offset: 1920)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !482, file: !40, line: 850, baseType: !106, size: 64, offset: 1984)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !482, file: !40, line: 852, baseType: !106, size: 64, offset: 2048)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !482, file: !40, line: 853, baseType: !106, size: 64, offset: 2112)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !482, file: !40, line: 854, baseType: !537, size: 64, offset: 2176)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !482, file: !40, line: 855, baseType: !106, size: 64, offset: 2240)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !482, file: !40, line: 856, baseType: !106, size: 64, offset: 2304)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !482, file: !40, line: 857, baseType: !106, size: 64, offset: 2368)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !482, file: !40, line: 858, baseType: !106, size: 64, offset: 2432)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !482, file: !40, line: 865, baseType: !359, size: 32, offset: 2496)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !482, file: !40, line: 867, baseType: !496, size: 32, offset: 2528)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !482, file: !40, line: 869, baseType: !106, size: 64, offset: 2560)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !482, file: !40, line: 869, baseType: !106, size: 64, offset: 2624)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !482, file: !40, line: 869, baseType: !106, size: 64, offset: 2688)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !482, file: !40, line: 869, baseType: !106, size: 64, offset: 2752)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !482, file: !40, line: 870, baseType: !106, size: 64, offset: 2816)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !482, file: !40, line: 870, baseType: !106, size: 64, offset: 2880)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !482, file: !40, line: 870, baseType: !106, size: 64, offset: 2944)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !482, file: !40, line: 871, baseType: !106, size: 64, offset: 3008)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !482, file: !40, line: 871, baseType: !106, size: 64, offset: 3072)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !482, file: !40, line: 871, baseType: !106, size: 64, offset: 3136)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !482, file: !40, line: 871, baseType: !106, size: 64, offset: 3200)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !482, file: !40, line: 873, baseType: !3124, size: 3328, offset: 3264)
!3124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 3328, elements: !3125)
!3125 = !{!3126}
!3126 = !DISubrange(count: 52)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !482, file: !40, line: 875, baseType: !3128, size: 1280, offset: 6592)
!3128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !852, size: 1280, elements: !601)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !482, file: !40, line: 877, baseType: !3130, size: 64, offset: 7872)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !40, line: 877, flags: DIFlagFwdDecl)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !482, file: !40, line: 880, baseType: !3133, size: 1088, offset: 7936)
!3133 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !3134, line: 72, baseType: !3135)
!3134 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!3135 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3134, line: 23, size: 1088, elements: !3136)
!3136 = !{!3137, !3138, !3139, !3140, !3141, !3144, !3145, !3146, !3147, !3172, !3173, !3174}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !3135, file: !3134, line: 28, baseType: !209, size: 64)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !3135, file: !3134, line: 38, baseType: !537, size: 64, offset: 64)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !3135, file: !3134, line: 40, baseType: !106, size: 64, offset: 128)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !3135, file: !3134, line: 43, baseType: !731, size: 320, offset: 192)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !3135, file: !3134, line: 44, baseType: !3142, size: 64, offset: 512)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !3134, line: 44, flags: DIFlagFwdDecl)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3135, file: !3134, line: 48, baseType: !106, size: 64, offset: 576)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3135, file: !3134, line: 59, baseType: !542, size: 256, offset: 640)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !3135, file: !3134, line: 60, baseType: !93, size: 64, offset: 896)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !3135, file: !3134, line: 61, baseType: !3148, size: 64, offset: 960)
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3150)
!3150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !3151, line: 13, size: 1216, elements: !3152)
!3151 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!3152 = !{!3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171}
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3150, file: !3151, line: 14, baseType: !93, size: 64)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3150, file: !3151, line: 15, baseType: !106, size: 64, offset: 64)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !3150, file: !3151, line: 17, baseType: !106, size: 64, offset: 128)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !3150, file: !3151, line: 17, baseType: !106, size: 64, offset: 192)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !3150, file: !3151, line: 18, baseType: !106, size: 64, offset: 256)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !3150, file: !3151, line: 18, baseType: !106, size: 64, offset: 320)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !3150, file: !3151, line: 19, baseType: !1836, size: 64, offset: 384)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !3150, file: !3151, line: 21, baseType: !103, size: 64, offset: 448)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !3150, file: !3151, line: 23, baseType: !103, size: 64, offset: 512)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !3150, file: !3151, line: 24, baseType: !103, size: 64, offset: 576)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !3150, file: !3151, line: 25, baseType: !103, size: 64, offset: 640)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !3150, file: !3151, line: 26, baseType: !103, size: 64, offset: 704)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !3150, file: !3151, line: 27, baseType: !103, size: 64, offset: 768)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !3150, file: !3151, line: 28, baseType: !103, size: 64, offset: 832)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !3150, file: !3151, line: 29, baseType: !103, size: 64, offset: 896)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !3150, file: !3151, line: 30, baseType: !103, size: 64, offset: 960)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !3150, file: !3151, line: 31, baseType: !103, size: 64, offset: 1024)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !3150, file: !3151, line: 32, baseType: !103, size: 64, offset: 1088)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !3150, file: !3151, line: 33, baseType: !103, size: 64, offset: 1152)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !3135, file: !3134, line: 63, baseType: !155, size: 32, offset: 1024)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !3135, file: !3134, line: 69, baseType: !178, size: 16, offset: 1056)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !3135, file: !3134, line: 70, baseType: !2125, size: 16, offset: 1072)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !482, file: !40, line: 882, baseType: !106, size: 64, offset: 9024)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !482, file: !40, line: 885, baseType: !496, size: 32, offset: 9088)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !482, file: !40, line: 886, baseType: !3178, size: 64, offset: 9152)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !40, line: 732, flags: DIFlagFwdDecl)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !482, file: !40, line: 901, baseType: !649, size: 64, offset: 9216)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !482, file: !40, line: 904, baseType: !514, size: 64, offset: 9280)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !482, file: !40, line: 906, baseType: !3183, size: 64, offset: 9344)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !40, line: 906, flags: DIFlagFwdDecl)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !482, file: !40, line: 930, baseType: !155, size: 32, offset: 9408)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !482, file: !40, line: 933, baseType: !155, size: 32, offset: 9440)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !482, file: !40, line: 935, baseType: !3188, size: 64, offset: 9472)
!3188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !86, line: 103, size: 64, elements: !3189)
!3189 = !{!3190}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !3188, file: !86, line: 104, baseType: !3191, size: 64)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !86, line: 101, flags: DIFlagFwdDecl)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !482, file: !40, line: 940, baseType: !535, size: 64, offset: 9536)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !482, file: !40, line: 942, baseType: !2231, size: 256, offset: 9600)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !479, file: !40, line: 986, baseType: !3196, offset: 10240)
!3196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, elements: !669)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !136, file: !137, line: 882, baseType: !478, size: 64, offset: 9792)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !136, file: !137, line: 884, baseType: !105, size: 32, offset: 9856)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !136, file: !137, line: 885, baseType: !105, size: 32, offset: 9888)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !136, file: !137, line: 886, baseType: !105, size: 32, offset: 9920)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !136, file: !137, line: 888, baseType: !105, size: 32, offset: 9952)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !136, file: !137, line: 890, baseType: !106, size: 64, offset: 9984)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !136, file: !137, line: 893, baseType: !7, size: 32, offset: 10048)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !136, file: !137, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !136, file: !137, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !136, file: !137, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !136, file: !137, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !136, file: !137, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !136, file: !137, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !136, file: !137, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !136, file: !137, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !136, file: !137, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !136, file: !137, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !136, file: !137, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !136, file: !137, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !136, file: !137, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !136, file: !137, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !136, file: !137, line: 969, baseType: !106, size: 64, offset: 10176)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !136, file: !137, line: 971, baseType: !3220, size: 448, offset: 10240)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !80, line: 25, size: 448, elements: !3221)
!3221 = !{!3222, !3223, !3228}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3220, file: !80, line: 26, baseType: !106, size: 64)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3220, file: !80, line: 27, baseType: !3224, size: 64, offset: 64)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{!103, !3227}
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, scope: !3220, file: !80, line: 28, baseType: !3229, size: 320, offset: 128)
!3229 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3220, file: !80, line: 28, size: 320, elements: !3230)
!3230 = !{!3231, !3241, !3266}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3229, file: !80, line: 37, baseType: !3232, size: 320)
!3232 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3229, file: !80, line: 30, size: 320, elements: !3233)
!3233 = !{!3234, !3236, !3237, !3238, !3239, !3240}
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3232, file: !80, line: 31, baseType: !3235, size: 64)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3232, file: !80, line: 32, baseType: !127, size: 32, offset: 64)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3232, file: !80, line: 33, baseType: !127, size: 32, offset: 96)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3232, file: !80, line: 34, baseType: !127, size: 32, offset: 128)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3232, file: !80, line: 35, baseType: !209, size: 64, offset: 192)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3232, file: !80, line: 36, baseType: !3235, size: 64, offset: 256)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3229, file: !80, line: 47, baseType: !3242, size: 192)
!3242 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3229, file: !80, line: 39, size: 192, elements: !3243)
!3243 = !{!3244, !3245, !3246, !3265}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3242, file: !80, line: 40, baseType: !350, size: 32)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3242, file: !80, line: 41, baseType: !79, size: 32, offset: 32)
!3246 = !DIDerivedType(tag: DW_TAG_member, scope: !3242, file: !80, line: 42, baseType: !3247, size: 64, offset: 64)
!3247 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3242, file: !80, line: 42, size: 64, elements: !3248)
!3248 = !{!3249, !3257}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3247, file: !80, line: 43, baseType: !3250, size: 64)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3252, line: 7, size: 128, elements: !3253)
!3252 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3253 = !{!3254, !3256}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3251, file: !3252, line: 8, baseType: !3255, size: 64)
!3255 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !352, line: 93, baseType: !222)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3251, file: !3252, line: 9, baseType: !222, size: 64, offset: 64)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3247, file: !80, line: 44, baseType: !3258, size: 64)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3260, line: 7, size: 64, elements: !3261)
!3260 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3261 = !{!3262, !3264}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3259, file: !3260, line: 8, baseType: !3263, size: 32)
!3263 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3260, line: 5, baseType: !723)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3259, file: !3260, line: 9, baseType: !723, size: 32, offset: 32)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3242, file: !80, line: 46, baseType: !209, size: 64, offset: 128)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3229, file: !80, line: 55, baseType: !3267, size: 256)
!3267 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3229, file: !80, line: 49, size: 256, elements: !3268)
!3268 = !{!3269, !3272, !3273, !3274, !3275}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3267, file: !80, line: 50, baseType: !3270, size: 64)
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3271 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !80, line: 14, flags: DIFlagFwdDecl)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3267, file: !80, line: 51, baseType: !105, size: 32, offset: 64)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3267, file: !80, line: 52, baseType: !105, size: 32, offset: 96)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3267, file: !80, line: 53, baseType: !106, size: 64, offset: 128)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3267, file: !80, line: 54, baseType: !106, size: 64, offset: 192)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !136, file: !137, line: 973, baseType: !3277, size: 32, offset: 10688)
!3277 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !99, line: 27, baseType: !3278)
!3278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !352, line: 28, baseType: !105)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !136, file: !137, line: 974, baseType: !3277, size: 32, offset: 10720)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !136, file: !137, line: 978, baseType: !106, size: 64, offset: 10752)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !136, file: !137, line: 987, baseType: !135, size: 64, offset: 10816)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !136, file: !137, line: 990, baseType: !135, size: 64, offset: 10880)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !136, file: !137, line: 995, baseType: !98, size: 128, offset: 10944)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !136, file: !137, line: 996, baseType: !98, size: 128, offset: 11072)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !136, file: !137, line: 997, baseType: !135, size: 64, offset: 11200)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !136, file: !137, line: 1005, baseType: !98, size: 128, offset: 11264)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !136, file: !137, line: 1006, baseType: !98, size: 128, offset: 11392)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !136, file: !137, line: 1009, baseType: !584, size: 64, offset: 11520)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !136, file: !137, line: 1010, baseType: !3290, size: 512, offset: 11584)
!3290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !596, size: 512, elements: !601)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !136, file: !137, line: 1011, baseType: !98, size: 128, offset: 12096)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !136, file: !137, line: 1012, baseType: !98, size: 128, offset: 12224)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !136, file: !137, line: 1014, baseType: !1982, size: 64, offset: 12352)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !136, file: !137, line: 1017, baseType: !104, size: 64, offset: 12416)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !136, file: !137, line: 1020, baseType: !104, size: 64, offset: 12480)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !136, file: !137, line: 1023, baseType: !93, size: 64, offset: 12544)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !136, file: !137, line: 1025, baseType: !209, size: 64, offset: 12608)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !136, file: !137, line: 1026, baseType: !209, size: 64, offset: 12672)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !136, file: !137, line: 1031, baseType: !209, size: 64, offset: 12736)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !136, file: !137, line: 1032, baseType: !3301, size: 192, offset: 12800)
!3301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !137, line: 324, size: 192, elements: !3302)
!3302 = !{!3303, !3304, !3305}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3301, file: !137, line: 326, baseType: !209, size: 64)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3301, file: !137, line: 327, baseType: !209, size: 64, offset: 64)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3301, file: !137, line: 328, baseType: !302, size: 32, offset: 128)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !136, file: !137, line: 1041, baseType: !106, size: 64, offset: 12992)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !136, file: !137, line: 1042, baseType: !106, size: 64, offset: 13056)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !136, file: !137, line: 1045, baseType: !209, size: 64, offset: 13120)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !136, file: !137, line: 1048, baseType: !209, size: 64, offset: 13184)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !136, file: !137, line: 1051, baseType: !106, size: 64, offset: 13248)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !136, file: !137, line: 1052, baseType: !106, size: 64, offset: 13312)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !136, file: !137, line: 1055, baseType: !3313, size: 640, offset: 13376)
!3313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3314, line: 132, size: 640, elements: !3315)
!3314 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3315 = !{!3316, !3322, !3323}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3313, file: !3314, line: 133, baseType: !3317, size: 576)
!3317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3318, size: 576, elements: !580)
!3318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3314, line: 117, size: 192, elements: !3319)
!3319 = !{!3320, !3321}
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3318, file: !3314, line: 118, baseType: !209, size: 64)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3318, file: !3314, line: 119, baseType: !365, size: 128, offset: 64)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3313, file: !3314, line: 134, baseType: !7, size: 32, offset: 576)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3313, file: !3314, line: 135, baseType: !7, size: 32, offset: 608)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !136, file: !137, line: 1058, baseType: !3325, size: 448, offset: 14016)
!3325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3314, line: 144, size: 448, elements: !3326)
!3326 = !{!3327, !3328, !3329}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3325, file: !3314, line: 145, baseType: !522, size: 128, align: 64)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3325, file: !3314, line: 146, baseType: !542, size: 256, offset: 128)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3325, file: !3314, line: 147, baseType: !7, size: 32, offset: 384)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !136, file: !137, line: 1064, baseType: !682, size: 64, offset: 14464)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !136, file: !137, line: 1067, baseType: !682, size: 64, offset: 14528)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !136, file: !137, line: 1070, baseType: !682, size: 64, offset: 14592)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !136, file: !137, line: 1074, baseType: !715, size: 64, offset: 14656)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !136, file: !137, line: 1084, baseType: !3335, size: 128, offset: 14720)
!3335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !777, size: 128, elements: !2731)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !136, file: !137, line: 1086, baseType: !3337, size: 64, offset: 14848)
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3338, size: 64)
!3338 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !137, line: 55, flags: DIFlagFwdDecl)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !136, file: !137, line: 1089, baseType: !3340, size: 64, offset: 14912)
!3340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3341, line: 12, size: 64, elements: !3342)
!3341 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3342 = !{!3343}
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3340, file: !3341, line: 13, baseType: !3344, size: 64)
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3341, line: 8, flags: DIFlagFwdDecl)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !136, file: !137, line: 1090, baseType: !3347, size: 128, offset: 14976)
!3347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3348, line: 13, size: 128, elements: !3349)
!3348 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3349 = !{!3350}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3347, file: !3348, line: 14, baseType: !98, size: 128)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !136, file: !137, line: 1097, baseType: !3352, size: 64, offset: 15104)
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !137, line: 50, flags: DIFlagFwdDecl)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !136, file: !137, line: 1100, baseType: !3355, size: 64, offset: 15168)
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3356 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !137, line: 1100, flags: DIFlagFwdDecl)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !136, file: !137, line: 1103, baseType: !3358, size: 64, offset: 15232)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !137, line: 53, flags: DIFlagFwdDecl)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !136, file: !137, line: 1107, baseType: !3361, size: 64, offset: 15296)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3363, line: 31, size: 576, elements: !3364)
!3363 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!3364 = !{!3365, !3366, !3369, !3372, !3375, !3376, !3379, !3382, !3383}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3362, file: !3363, line: 32, baseType: !150, size: 32)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !3362, file: !3363, line: 33, baseType: !3367, size: 64, offset: 64)
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !3363, line: 9, flags: DIFlagFwdDecl)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !3362, file: !3363, line: 34, baseType: !3370, size: 64, offset: 128)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !3363, line: 10, flags: DIFlagFwdDecl)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !3362, file: !3363, line: 35, baseType: !3373, size: 64, offset: 192)
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3374, size: 64)
!3374 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !3363, line: 8, flags: DIFlagFwdDecl)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !3362, file: !3363, line: 36, baseType: !618, size: 64, offset: 256)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !3362, file: !3363, line: 37, baseType: !3377, size: 64, offset: 320)
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3378, size: 64)
!3378 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !717, line: 34, flags: DIFlagFwdDecl)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !3362, file: !3363, line: 38, baseType: !3380, size: 64, offset: 384)
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64)
!3381 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !3363, line: 38, flags: DIFlagFwdDecl)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !3362, file: !3363, line: 39, baseType: !3380, size: 64, offset: 448)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !3362, file: !3363, line: 40, baseType: !3384, size: 64, offset: 512)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !3363, line: 12, flags: DIFlagFwdDecl)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !136, file: !137, line: 1110, baseType: !3387, size: 64, offset: 15360)
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3388, size: 64)
!3388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3389, line: 93, size: 8768, elements: !3390)
!3389 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3390 = !{!3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3438, !3447, !3448, !3450, !3451, !3452, !3455, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3493, !3494, !3501, !3511, !3514, !3515, !3518, !3519, !3520, !3521, !3522, !3523}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3388, file: !3389, line: 94, baseType: !150, size: 32)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3388, file: !3389, line: 95, baseType: !155, size: 32, offset: 32)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3388, file: !3389, line: 96, baseType: !105, size: 32, offset: 64)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3388, file: !3389, line: 97, baseType: !105, size: 32, offset: 96)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3388, file: !3389, line: 98, baseType: !98, size: 128, offset: 128)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3388, file: !3389, line: 100, baseType: !605, size: 192, offset: 256)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3388, file: !3389, line: 103, baseType: !135, size: 64, offset: 448)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3388, file: !3389, line: 106, baseType: !3399, size: 192, offset: 512)
!3399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !655, line: 32, size: 192, elements: !3400)
!3400 = !{!3401, !3402}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3399, file: !655, line: 33, baseType: !98, size: 128)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3399, file: !655, line: 34, baseType: !3403, size: 64, offset: 128)
!3403 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3404, line: 25, baseType: !3405)
!3404 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3405 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3404, line: 23, size: 64, elements: !3406)
!3406 = !{!3407}
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3405, file: !3404, line: 24, baseType: !123, size: 64)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3388, file: !3389, line: 109, baseType: !592, size: 64, offset: 704)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3388, file: !3389, line: 112, baseType: !105, size: 32, offset: 768)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3388, file: !3389, line: 114, baseType: !105, size: 32, offset: 800)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3388, file: !3389, line: 115, baseType: !135, size: 64, offset: 832)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3388, file: !3389, line: 118, baseType: !105, size: 32, offset: 896)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3388, file: !3389, line: 119, baseType: !7, size: 32, offset: 928)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3388, file: !3389, line: 121, baseType: !3415, size: 64, offset: 960)
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3389, line: 80, size: 448, elements: !3417)
!3417 = !{!3418, !3419, !3425}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3416, file: !3389, line: 81, baseType: !155, size: 32)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3416, file: !3389, line: 82, baseType: !3420, size: 128, offset: 64)
!3420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3389, line: 75, size: 128, elements: !3421)
!3421 = !{!3422, !3423}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3420, file: !3389, line: 76, baseType: !135, size: 64)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3420, file: !3389, line: 77, baseType: !3424, size: 64, offset: 64)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3416, file: !3389, line: 83, baseType: !1405, size: 256, offset: 192)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3388, file: !3389, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3388, file: !3389, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3388, file: !3389, line: 138, baseType: !7, size: 32, offset: 1056)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3388, file: !3389, line: 139, baseType: !98, size: 128, offset: 1088)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3388, file: !3389, line: 142, baseType: !277, size: 512, offset: 1216)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3388, file: !3389, line: 143, baseType: !285, size: 64, offset: 1728)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3388, file: !3389, line: 150, baseType: !3433, size: 256, offset: 1792)
!3433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3434, size: 256, elements: !2109)
!3434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3389, line: 38, size: 128, elements: !3435)
!3435 = !{!3436, !3437}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3434, file: !3389, line: 39, baseType: !209, size: 64)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3434, file: !3389, line: 40, baseType: !209, size: 64, offset: 64)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3388, file: !3389, line: 156, baseType: !3439, size: 192, offset: 2048)
!3439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3389, line: 66, size: 192, elements: !3440)
!3440 = !{!3441}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3439, file: !3389, line: 67, baseType: !3442, size: 192)
!3442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3389, line: 47, size: 192, elements: !3443)
!3443 = !{!3444, !3445, !3446}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3442, file: !3389, line: 48, baseType: !537, size: 64)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3442, file: !3389, line: 49, baseType: !537, size: 64, offset: 64)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3442, file: !3389, line: 50, baseType: !537, size: 64, offset: 128)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3388, file: !3389, line: 160, baseType: !3313, size: 640, offset: 2240)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3388, file: !3389, line: 163, baseType: !3449, size: 256, offset: 2880)
!3449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !584, size: 256, elements: !601)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3388, file: !3389, line: 169, baseType: !584, size: 64, offset: 3136)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3388, file: !3389, line: 172, baseType: !105, size: 32, offset: 3200)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3388, file: !3389, line: 174, baseType: !3453, size: 64, offset: 3264)
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3454, size: 64)
!3454 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3389, line: 174, flags: DIFlagFwdDecl)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3388, file: !3389, line: 185, baseType: !3456, size: 64, offset: 3328)
!3456 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !355, line: 860, baseType: !3457)
!3457 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !355, line: 853, size: 64, elements: !3458)
!3458 = !{!3459, !3460}
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3457, file: !355, line: 858, baseType: !916, size: 32)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3457, file: !355, line: 859, baseType: !496, size: 32, offset: 32)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3388, file: !3389, line: 186, baseType: !209, size: 64, offset: 3392)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3388, file: !3389, line: 186, baseType: !209, size: 64, offset: 3456)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3388, file: !3389, line: 186, baseType: !209, size: 64, offset: 3520)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3388, file: !3389, line: 186, baseType: !209, size: 64, offset: 3584)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3388, file: !3389, line: 187, baseType: !209, size: 64, offset: 3648)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3388, file: !3389, line: 188, baseType: !209, size: 64, offset: 3712)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3388, file: !3389, line: 189, baseType: !3301, size: 192, offset: 3776)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3388, file: !3389, line: 190, baseType: !106, size: 64, offset: 3968)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3388, file: !3389, line: 190, baseType: !106, size: 64, offset: 4032)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3388, file: !3389, line: 190, baseType: !106, size: 64, offset: 4096)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3388, file: !3389, line: 190, baseType: !106, size: 64, offset: 4160)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3388, file: !3389, line: 191, baseType: !106, size: 64, offset: 4224)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3388, file: !3389, line: 191, baseType: !106, size: 64, offset: 4288)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3388, file: !3389, line: 191, baseType: !106, size: 64, offset: 4352)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3388, file: !3389, line: 191, baseType: !106, size: 64, offset: 4416)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3388, file: !3389, line: 192, baseType: !106, size: 64, offset: 4480)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3388, file: !3389, line: 192, baseType: !106, size: 64, offset: 4544)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3388, file: !3389, line: 192, baseType: !106, size: 64, offset: 4608)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3388, file: !3389, line: 192, baseType: !106, size: 64, offset: 4672)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3388, file: !3389, line: 193, baseType: !106, size: 64, offset: 4736)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3388, file: !3389, line: 193, baseType: !106, size: 64, offset: 4800)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3388, file: !3389, line: 194, baseType: !3483, size: 448, offset: 4864)
!3483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3484, line: 12, size: 448, elements: !3485)
!3484 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3485 = !{!3486, !3487, !3488, !3489, !3490, !3491, !3492}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3483, file: !3484, line: 15, baseType: !209, size: 64)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3483, file: !3484, line: 17, baseType: !209, size: 64, offset: 64)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3483, file: !3484, line: 19, baseType: !209, size: 64, offset: 128)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3483, file: !3484, line: 21, baseType: !209, size: 64, offset: 192)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3483, file: !3484, line: 29, baseType: !209, size: 64, offset: 256)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3483, file: !3484, line: 35, baseType: !209, size: 64, offset: 320)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3483, file: !3484, line: 44, baseType: !209, size: 64, offset: 384)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3388, file: !3389, line: 202, baseType: !211, size: 64, offset: 5312)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3388, file: !3389, line: 213, baseType: !3495, size: 2048, offset: 5376)
!3495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3496, size: 2048, elements: !2731)
!3496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3497, line: 43, size: 128, elements: !3498)
!3497 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3498 = !{!3499, !3500}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3496, file: !3497, line: 44, baseType: !1103, size: 64)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3496, file: !3497, line: 45, baseType: !1103, size: 64, offset: 64)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3388, file: !3389, line: 216, baseType: !3502, size: 448, offset: 7424)
!3502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3389, line: 30, size: 448, elements: !3503)
!3503 = !{!3504, !3505, !3506, !3507, !3508, !3509, !3510}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3502, file: !3389, line: 31, baseType: !105, size: 32)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3502, file: !3389, line: 32, baseType: !103, size: 64, offset: 64)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3502, file: !3389, line: 33, baseType: !106, size: 64, offset: 128)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3502, file: !3389, line: 34, baseType: !209, size: 64, offset: 192)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3502, file: !3389, line: 34, baseType: !209, size: 64, offset: 256)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3502, file: !3389, line: 35, baseType: !106, size: 64, offset: 320)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3502, file: !3389, line: 35, baseType: !106, size: 64, offset: 384)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3388, file: !3389, line: 219, baseType: !3512, size: 64, offset: 7872)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3389, line: 219, flags: DIFlagFwdDecl)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3388, file: !3389, line: 222, baseType: !7, size: 32, offset: 7936)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3388, file: !3389, line: 223, baseType: !3516, size: 64, offset: 8000)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3389, line: 223, flags: DIFlagFwdDecl)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3388, file: !3389, line: 230, baseType: !791, size: 8, offset: 8064)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3388, file: !3389, line: 231, baseType: !759, size: 16, offset: 8080)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3388, file: !3389, line: 232, baseType: !759, size: 16, offset: 8096)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3388, file: !3389, line: 234, baseType: !478, size: 64, offset: 8128)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3388, file: !3389, line: 237, baseType: !542, size: 256, offset: 8192)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3388, file: !3389, line: 243, baseType: !731, size: 320, offset: 8448)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !136, file: !137, line: 1111, baseType: !3525, size: 64, offset: 15424)
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3389, line: 20, size: 16640, elements: !3527)
!3527 = !{!3528, !3529, !3530, !3531}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3526, file: !3389, line: 21, baseType: !496, size: 32)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3526, file: !3389, line: 22, baseType: !150, size: 32, offset: 32)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3526, file: !3389, line: 23, baseType: !605, size: 192, offset: 64)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3526, file: !3389, line: 24, baseType: !3532, size: 16384, offset: 256)
!3532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3533, size: 16384, elements: !1239)
!3533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !655, line: 51, size: 256, elements: !3534)
!3534 = !{!3535}
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3533, file: !655, line: 52, baseType: !3536, size: 256)
!3536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !655, line: 37, size: 256, elements: !3537)
!3537 = !{!3538, !3545, !3546, !3550}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3536, file: !655, line: 39, baseType: !3539, size: 64)
!3539 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3540, line: 83, baseType: !3541)
!3540 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3540, line: 82, baseType: !3543)
!3543 = !DISubroutineType(types: !3544)
!3544 = !{null, !105}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3536, file: !655, line: 40, baseType: !106, size: 64, offset: 64)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3536, file: !655, line: 46, baseType: !3547, size: 64, offset: 128)
!3547 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3540, line: 86, baseType: !3548)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3540, line: 85, baseType: !2339)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3536, file: !655, line: 48, baseType: !3403, size: 64, offset: 192)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !136, file: !137, line: 1112, baseType: !3403, size: 64, offset: 15488)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !136, file: !137, line: 1113, baseType: !3403, size: 64, offset: 15552)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !136, file: !137, line: 1115, baseType: !3403, size: 64, offset: 15616)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !136, file: !137, line: 1116, baseType: !3399, size: 192, offset: 15680)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !136, file: !137, line: 1117, baseType: !106, size: 64, offset: 15872)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !136, file: !137, line: 1118, baseType: !1101, size: 64, offset: 15936)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !136, file: !137, line: 1119, baseType: !7, size: 32, offset: 16000)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !136, file: !137, line: 1121, baseType: !525, size: 64, offset: 16064)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !136, file: !137, line: 1125, baseType: !3560, size: 64, offset: 16128)
!3560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3561, size: 64)
!3561 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !137, line: 43, flags: DIFlagFwdDecl)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !136, file: !137, line: 1127, baseType: !673, size: 32, offset: 16192)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !136, file: !137, line: 1128, baseType: !7, size: 32, offset: 16224)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !136, file: !137, line: 1130, baseType: !3565, size: 128, offset: 16256)
!3565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3566, line: 37, size: 128, elements: !3567)
!3566 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3567 = !{!3568, !3569, !3570}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3565, file: !3566, line: 38, baseType: !105, size: 32)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3565, file: !3566, line: 39, baseType: !155, size: 32, offset: 32)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3565, file: !3566, line: 40, baseType: !3571, size: 64, offset: 64)
!3571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3572, size: 64)
!3572 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3566, line: 24, flags: DIFlagFwdDecl)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !136, file: !137, line: 1131, baseType: !3574, size: 256, offset: 16384)
!3574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3575, line: 12, size: 256, elements: !3576)
!3575 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3576 = !{!3577, !3578, !3579, !3580}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3574, file: !3575, line: 13, baseType: !804, size: 64)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3574, file: !3575, line: 14, baseType: !106, size: 64, offset: 64)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3574, file: !3575, line: 15, baseType: !106, size: 64, offset: 128)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3574, file: !3575, line: 16, baseType: !791, size: 8, offset: 192)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !136, file: !137, line: 1134, baseType: !209, size: 64, offset: 16640)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !136, file: !137, line: 1135, baseType: !209, size: 64, offset: 16704)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !136, file: !137, line: 1138, baseType: !496, size: 32, offset: 16768)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !136, file: !137, line: 1141, baseType: !302, size: 32, offset: 16800)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !136, file: !137, line: 1143, baseType: !3586, size: 64, offset: 16832)
!3586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !137, line: 735, size: 64, elements: !3587)
!3587 = !{!3588}
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3586, file: !137, line: 736, baseType: !3589, size: 64)
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3586, size: 64)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !136, file: !137, line: 1147, baseType: !368, size: 128, offset: 16896)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !136, file: !137, line: 1149, baseType: !135, size: 64, offset: 17024)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !136, file: !137, line: 1151, baseType: !3593, size: 64, offset: 17088)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3594 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !137, line: 1151, flags: DIFlagFwdDecl)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !136, file: !137, line: 1188, baseType: !93, size: 64, offset: 17152)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !136, file: !137, line: 1191, baseType: !3597, size: 64, offset: 17216)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !137, line: 44, flags: DIFlagFwdDecl)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !136, file: !137, line: 1194, baseType: !3600, size: 64, offset: 17280)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3601 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !137, line: 45, flags: DIFlagFwdDecl)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !136, file: !137, line: 1197, baseType: !3603, size: 64, offset: 17344)
!3603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3604, size: 64)
!3604 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !137, line: 61, flags: DIFlagFwdDecl)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !136, file: !137, line: 1199, baseType: !3606, size: 64, offset: 17408)
!3606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3607, size: 64)
!3607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3608, line: 99, size: 128, elements: !3609)
!3608 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3609 = !{!3610, !3611, !3612}
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3607, file: !3608, line: 100, baseType: !535, size: 64)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3607, file: !3608, line: 101, baseType: !155, size: 32, offset: 64)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3607, file: !3608, line: 103, baseType: !180, size: 16, offset: 96)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !136, file: !137, line: 1202, baseType: !3614, size: 64, offset: 17472)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !137, line: 48, flags: DIFlagFwdDecl)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !136, file: !137, line: 1205, baseType: !106, size: 64, offset: 17536)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !136, file: !137, line: 1206, baseType: !3618, size: 64, offset: 17600)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !655, line: 14, baseType: !3620)
!3620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !655, line: 12, size: 384, elements: !3621)
!3621 = !{!3622}
!3622 = !DIDerivedType(tag: DW_TAG_member, scope: !3620, file: !655, line: 13, baseType: !3623, size: 384)
!3623 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3620, file: !655, line: 13, size: 384, elements: !3624)
!3624 = !{!3625, !3626, !3627, !3628}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3623, file: !655, line: 13, baseType: !105, size: 32)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3623, file: !655, line: 13, baseType: !105, size: 32, offset: 32)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3623, file: !655, line: 13, baseType: !105, size: 32, offset: 64)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3623, file: !655, line: 13, baseType: !3629, size: 256, offset: 128)
!3629 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3630, line: 37, size: 256, elements: !3631)
!3630 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3631 = !{!3632, !3637, !3650, !3656, !3665, !3692, !3697}
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3629, file: !3630, line: 42, baseType: !3633, size: 64)
!3633 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3629, file: !3630, line: 39, size: 64, elements: !3634)
!3634 = !{!3635, !3636}
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3633, file: !3630, line: 40, baseType: !3278, size: 32)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3633, file: !3630, line: 41, baseType: !678, size: 32, offset: 32)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3629, file: !3630, line: 50, baseType: !3638, size: 192)
!3638 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3629, file: !3630, line: 45, size: 192, elements: !3639)
!3639 = !{!3640, !3642, !3643, !3649}
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3638, file: !3630, line: 46, baseType: !3641, size: 32)
!3641 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !352, line: 95, baseType: !105)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3638, file: !3630, line: 47, baseType: !105, size: 32, offset: 32)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3638, file: !3630, line: 48, baseType: !3644, size: 64, offset: 64)
!3644 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3630, line: 11, baseType: !3645)
!3645 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3630, line: 8, size: 64, elements: !3646)
!3646 = !{!3647, !3648}
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3645, file: !3630, line: 9, baseType: !105, size: 32)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3645, file: !3630, line: 10, baseType: !93, size: 64)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3638, file: !3630, line: 49, baseType: !105, size: 32, offset: 128)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3629, file: !3630, line: 57, baseType: !3651, size: 128)
!3651 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3629, file: !3630, line: 53, size: 128, elements: !3652)
!3652 = !{!3653, !3654, !3655}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3651, file: !3630, line: 54, baseType: !3278, size: 32)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3651, file: !3630, line: 55, baseType: !678, size: 32, offset: 32)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3651, file: !3630, line: 56, baseType: !3644, size: 64, offset: 64)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3629, file: !3630, line: 66, baseType: !3657, size: 256)
!3657 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3629, file: !3630, line: 60, size: 256, elements: !3658)
!3658 = !{!3659, !3660, !3661, !3662, !3664}
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3657, file: !3630, line: 61, baseType: !3278, size: 32)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3657, file: !3630, line: 62, baseType: !678, size: 32, offset: 32)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3657, file: !3630, line: 63, baseType: !105, size: 32, offset: 64)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3657, file: !3630, line: 64, baseType: !3663, size: 64, offset: 128)
!3663 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !352, line: 94, baseType: !1100)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3657, file: !3630, line: 65, baseType: !3663, size: 64, offset: 192)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3629, file: !3630, line: 105, baseType: !3666, size: 256)
!3666 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3629, file: !3630, line: 69, size: 256, elements: !3667)
!3667 = !{!3668, !3669}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3666, file: !3630, line: 70, baseType: !93, size: 64)
!3669 = !DIDerivedType(tag: DW_TAG_member, scope: !3666, file: !3630, line: 79, baseType: !3670, size: 192, offset: 64)
!3670 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3666, file: !3630, line: 79, size: 192, elements: !3671)
!3671 = !{!3672, !3673, !3674, !3681, !3686}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3670, file: !3630, line: 81, baseType: !105, size: 32)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3670, file: !3630, line: 86, baseType: !759, size: 16)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3670, file: !3630, line: 92, baseType: !3675, size: 192)
!3675 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3670, file: !3630, line: 88, size: 192, elements: !3676)
!3676 = !{!3677, !3679, !3680}
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3675, file: !3630, line: 89, baseType: !3678, size: 64)
!3678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !777, size: 64, elements: !346)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3675, file: !3630, line: 90, baseType: !93, size: 64, offset: 64)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3675, file: !3630, line: 91, baseType: !93, size: 64, offset: 128)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3670, file: !3630, line: 97, baseType: !3682, size: 96)
!3682 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3670, file: !3630, line: 94, size: 96, elements: !3683)
!3683 = !{!3684, !3685}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3682, file: !3630, line: 95, baseType: !3678, size: 64)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3682, file: !3630, line: 96, baseType: !129, size: 32, offset: 64)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3670, file: !3630, line: 103, baseType: !3687, size: 128)
!3687 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3670, file: !3630, line: 99, size: 128, elements: !3688)
!3688 = !{!3689, !3690, !3691}
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3687, file: !3630, line: 100, baseType: !106, size: 64)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3687, file: !3630, line: 101, baseType: !129, size: 32, offset: 64)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3687, file: !3630, line: 102, baseType: !129, size: 32, offset: 96)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3629, file: !3630, line: 111, baseType: !3693, size: 128)
!3693 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3629, file: !3630, line: 108, size: 128, elements: !3694)
!3694 = !{!3695, !3696}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3693, file: !3630, line: 109, baseType: !103, size: 64)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3693, file: !3630, line: 110, baseType: !105, size: 32, offset: 64)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3629, file: !3630, line: 118, baseType: !3698, size: 128)
!3698 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3629, file: !3630, line: 114, size: 128, elements: !3699)
!3699 = !{!3700, !3701, !3702}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3698, file: !3630, line: 115, baseType: !93, size: 64)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3698, file: !3630, line: 116, baseType: !105, size: 32, offset: 64)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3698, file: !3630, line: 117, baseType: !7, size: 32, offset: 96)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !136, file: !137, line: 1208, baseType: !3483, size: 448, offset: 17664)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !136, file: !137, line: 1215, baseType: !209, size: 64, offset: 18112)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !136, file: !137, line: 1217, baseType: !209, size: 64, offset: 18176)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !136, file: !137, line: 1219, baseType: !209, size: 64, offset: 18240)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !136, file: !137, line: 1223, baseType: !3708, size: 64, offset: 18304)
!3708 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3709, line: 99, baseType: !3710)
!3709 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3710 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3709, line: 99, size: 64, elements: !3711)
!3711 = !{!3712}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3710, file: !3709, line: 99, baseType: !123, size: 64)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !136, file: !137, line: 1225, baseType: !916, size: 32, offset: 18368)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !136, file: !137, line: 1226, baseType: !105, size: 32, offset: 18400)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !136, file: !137, line: 1227, baseType: !105, size: 32, offset: 18432)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !136, file: !137, line: 1231, baseType: !3717, size: 64, offset: 18496)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !137, line: 1231, flags: DIFlagFwdDecl)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !136, file: !137, line: 1233, baseType: !98, size: 128, offset: 18560)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !136, file: !137, line: 1240, baseType: !3721, size: 64, offset: 18688)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !137, line: 62, flags: DIFlagFwdDecl)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !136, file: !137, line: 1242, baseType: !3724, size: 64, offset: 18752)
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3725 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !137, line: 1242, flags: DIFlagFwdDecl)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !136, file: !137, line: 1244, baseType: !98, size: 128, offset: 18816)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !136, file: !137, line: 1245, baseType: !3728, size: 64, offset: 18944)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !137, line: 51, flags: DIFlagFwdDecl)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !136, file: !137, line: 1246, baseType: !542, size: 256, offset: 19008)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !136, file: !137, line: 1247, baseType: !7, size: 32, offset: 19264)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !136, file: !137, line: 1250, baseType: !3733, size: 64, offset: 19328)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !137, line: 57, flags: DIFlagFwdDecl)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !136, file: !137, line: 1251, baseType: !542, size: 256, offset: 19392)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !136, file: !137, line: 1252, baseType: !98, size: 128, offset: 19648)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !136, file: !137, line: 1259, baseType: !1533, size: 64, offset: 19776)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !136, file: !137, line: 1260, baseType: !759, size: 16, offset: 19840)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !136, file: !137, line: 1261, baseType: !759, size: 16, offset: 19856)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !136, file: !137, line: 1314, baseType: !3741, size: 64, offset: 19904)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3743, line: 62, size: 256, align: 256, elements: !3744)
!3743 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3744 = !{!3745, !3746, !3747, !3748, !3749, !3750, !3751}
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3742, file: !3743, line: 75, baseType: !129, size: 32)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3742, file: !3743, line: 90, baseType: !129, size: 32, offset: 32)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3742, file: !3743, line: 112, baseType: !210, size: 64, offset: 64)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3742, file: !3743, line: 132, baseType: !129, size: 32, offset: 128)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3742, file: !3743, line: 140, baseType: !129, size: 32, offset: 160)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3742, file: !3743, line: 149, baseType: !129, size: 32, offset: 192)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3742, file: !3743, line: 154, baseType: !3752, offset: 224)
!3752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !777, elements: !669)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !136, file: !137, line: 1315, baseType: !127, size: 32, offset: 19968)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !136, file: !137, line: 1316, baseType: !127, size: 32, offset: 20000)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !136, file: !137, line: 1321, baseType: !106, size: 64, offset: 20032)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !136, file: !137, line: 1325, baseType: !105, size: 32, offset: 20096)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !136, file: !137, line: 1326, baseType: !105, size: 32, offset: 20128)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !136, file: !137, line: 1327, baseType: !105, size: 32, offset: 20160)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !136, file: !137, line: 1328, baseType: !105, size: 32, offset: 20192)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !136, file: !137, line: 1329, baseType: !522, size: 128, align: 64, offset: 20224)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !136, file: !137, line: 1332, baseType: !3762, size: 128, offset: 20352)
!3762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3763, line: 51, size: 128, elements: !3764)
!3763 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3764 = !{!3765, !3770, !3771}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3762, file: !3763, line: 60, baseType: !3766, size: 64)
!3766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3767, line: 7, size: 64, elements: !3768)
!3767 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3768 = !{!3769}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3766, file: !3767, line: 12, baseType: !119, size: 64)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3762, file: !3763, line: 63, baseType: !791, size: 8, offset: 64)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3762, file: !3763, line: 70, baseType: !791, size: 8, offset: 72)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !136, file: !137, line: 1335, baseType: !2969, size: 64, offset: 20480)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !136, file: !137, line: 1337, baseType: !3774, size: 128, offset: 20544)
!3774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3763, line: 39, size: 128, elements: !3775)
!3775 = !{!3776, !3777, !3778}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3774, file: !3763, line: 40, baseType: !1320, size: 64)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3774, file: !3763, line: 42, baseType: !129, size: 32, offset: 64)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3774, file: !3763, line: 43, baseType: !129, size: 32, offset: 96)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !136, file: !137, line: 1340, baseType: !3780, size: 64, offset: 20672)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !137, line: 69, flags: DIFlagFwdDecl)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !136, file: !137, line: 1351, baseType: !105, size: 32, offset: 20736)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !136, file: !137, line: 1352, baseType: !105, size: 32, offset: 20768)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !136, file: !137, line: 1354, baseType: !106, size: 64, offset: 20800)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !136, file: !137, line: 1364, baseType: !209, size: 64, offset: 20864)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !136, file: !137, line: 1365, baseType: !209, size: 64, offset: 20928)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !136, file: !137, line: 1412, baseType: !106, size: 64, offset: 20992)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !136, file: !137, line: 1453, baseType: !3789, size: 64, offset: 21056)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !137, line: 1453, flags: DIFlagFwdDecl)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !136, file: !137, line: 1457, baseType: !3792, size: 64, offset: 21120)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !86, line: 61, size: 576, elements: !3794)
!3794 = !{!3795, !3796, !3815, !3818, !3819, !3852, !3862}
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3793, file: !86, line: 62, baseType: !85, size: 32)
!3796 = !DIDerivedType(tag: DW_TAG_member, scope: !3793, file: !86, line: 64, baseType: !3797, size: 192, offset: 64)
!3797 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3793, file: !86, line: 64, size: 192, elements: !3798)
!3798 = !{!3799, !3810}
!3799 = !DIDerivedType(tag: DW_TAG_member, scope: !3797, file: !86, line: 65, baseType: !3800, size: 192)
!3800 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3797, file: !86, line: 65, size: 192, elements: !3801)
!3801 = !{!3802, !3809}
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3800, file: !86, line: 66, baseType: !3803, size: 128)
!3803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3804, line: 50, size: 128, elements: !3805)
!3804 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3805 = !{!3806, !3807, !3808}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3803, file: !3804, line: 52, baseType: !106, size: 64)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3803, file: !3804, line: 54, baseType: !7, size: 32, offset: 64)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3803, file: !3804, line: 55, baseType: !7, size: 32, offset: 96)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3800, file: !86, line: 67, baseType: !106, size: 64, offset: 128)
!3810 = !DIDerivedType(tag: DW_TAG_member, scope: !3797, file: !86, line: 70, baseType: !3811, size: 192)
!3811 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3797, file: !86, line: 70, size: 192, elements: !3812)
!3812 = !{!3813, !3814}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3811, file: !86, line: 71, baseType: !522, size: 128, align: 64)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3811, file: !86, line: 72, baseType: !106, size: 64, offset: 128)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3793, file: !86, line: 76, baseType: !3816, size: 64, offset: 256)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !86, line: 76, flags: DIFlagFwdDecl)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3793, file: !86, line: 77, baseType: !106, size: 64, offset: 320)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3793, file: !86, line: 79, baseType: !3820, size: 64, offset: 384)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3804, line: 25, size: 256, elements: !3822)
!3822 = !{!3823, !3829, !3833}
!3823 = !DIDerivedType(tag: DW_TAG_member, scope: !3821, file: !3804, line: 26, baseType: !3824, size: 128)
!3824 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3821, file: !3804, line: 26, size: 128, elements: !3825)
!3825 = !{!3826, !3828}
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3824, file: !3804, line: 27, baseType: !3827, size: 128)
!3827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 128, elements: !2731)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3824, file: !3804, line: 28, baseType: !3827, size: 128)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3821, file: !3804, line: 31, baseType: !3830, size: 64, offset: 128)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3832)
!3832 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3804, line: 23, flags: DIFlagFwdDecl)
!3833 = !DIDerivedType(tag: DW_TAG_member, scope: !3821, file: !3804, line: 33, baseType: !3834, size: 64, offset: 192)
!3834 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3821, file: !3804, line: 33, size: 64, elements: !3835)
!3835 = !{!3836, !3842, !3847}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3834, file: !3804, line: 38, baseType: !3837, size: 64)
!3837 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3834, file: !3804, line: 34, size: 64, elements: !3838)
!3838 = !{!3839, !3840, !3841}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3837, file: !3804, line: 35, baseType: !723, size: 32)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3837, file: !3804, line: 36, baseType: !319, size: 8, offset: 32)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3837, file: !3804, line: 37, baseType: !319, size: 8, offset: 40)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3834, file: !3804, line: 42, baseType: !3843, size: 16)
!3843 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3834, file: !3804, line: 39, size: 16, elements: !3844)
!3844 = !{!3845, !3846}
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3843, file: !3804, line: 40, baseType: !319, size: 8)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3843, file: !3804, line: 41, baseType: !319, size: 8, offset: 8)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3834, file: !3804, line: 46, baseType: !3848, size: 16)
!3848 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3834, file: !3804, line: 43, size: 16, elements: !3849)
!3849 = !{!3850, !3851}
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3848, file: !3804, line: 44, baseType: !319, size: 8)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3848, file: !3804, line: 45, baseType: !319, size: 8, offset: 8)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3793, file: !86, line: 81, baseType: !3853, size: 64, offset: 448)
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!3854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !86, line: 85, size: 384, elements: !3855)
!3855 = !{!3856, !3857, !3858, !3859, !3860, !3861}
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3854, file: !86, line: 86, baseType: !3816, size: 64)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3854, file: !86, line: 87, baseType: !106, size: 64, offset: 64)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3854, file: !86, line: 88, baseType: !106, size: 64, offset: 128)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3854, file: !86, line: 89, baseType: !106, size: 64, offset: 192)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3854, file: !86, line: 90, baseType: !791, size: 8, offset: 256)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3854, file: !86, line: 92, baseType: !3853, size: 64, offset: 320)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3793, file: !86, line: 82, baseType: !7, size: 32, offset: 512)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !136, file: !137, line: 1463, baseType: !3864, offset: 21184)
!3864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !137, line: 739, elements: !507)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !136, file: !137, line: 1470, baseType: !522, size: 128, align: 64, offset: 21184)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !136, file: !137, line: 1471, baseType: !150, size: 32, offset: 21312)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !136, file: !137, line: 1472, baseType: !105, size: 32, offset: 21344)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !136, file: !137, line: 1474, baseType: !135, size: 64, offset: 21376)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !136, file: !137, line: 1475, baseType: !2219, size: 320, offset: 21440)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !136, file: !137, line: 1478, baseType: !3871, size: 64, offset: 21760)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !137, line: 1478, flags: DIFlagFwdDecl)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !136, file: !137, line: 1482, baseType: !150, size: 32, offset: 21824)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !136, file: !137, line: 1489, baseType: !93, size: 64, offset: 21888)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !136, file: !137, line: 1504, baseType: !93, size: 64, offset: 21952)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !136, file: !137, line: 1505, baseType: !210, size: 64, offset: 22016)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !136, file: !137, line: 1506, baseType: !209, size: 64, offset: 22080)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !136, file: !137, line: 1507, baseType: !210, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !136, file: !137, line: 1508, baseType: !210, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !136, file: !137, line: 1509, baseType: !210, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !136, file: !137, line: 1510, baseType: !522, size: 128, align: 64, offset: 22208)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !136, file: !137, line: 1511, baseType: !105, size: 32, offset: 22336)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !136, file: !137, line: 1515, baseType: !3884, size: 64, offset: 22400)
!3884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !168, line: 56, size: 64, elements: !3885)
!3885 = !{!3886}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3884, file: !168, line: 57, baseType: !171, size: 64)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !136, file: !137, line: 1518, baseType: !3884, size: 64, offset: 22464)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !136, file: !137, line: 1528, baseType: !522, size: 128, align: 64, offset: 22528)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !136, file: !137, line: 1552, baseType: !3890, size: 35328, offset: 23040)
!3890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3891, line: 430, size: 35328, elements: !3892)
!3891 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3892 = !{!3893, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3922, !3923, !3924, !3925, !3926, !3927, !3930, !3931, !3932, !3933}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3890, file: !3891, line: 432, baseType: !3894, size: 192)
!3894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3895, size: 192, elements: !580)
!3895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3896, line: 16, size: 64, elements: !3897)
!3896 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3897 = !{!3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3895, file: !3896, line: 17, baseType: !178, size: 16)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3895, file: !3896, line: 18, baseType: !178, size: 16, offset: 16)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3895, file: !3896, line: 19, baseType: !178, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3895, file: !3896, line: 19, baseType: !178, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3895, file: !3896, line: 19, baseType: !178, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3895, file: !3896, line: 19, baseType: !178, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3895, file: !3896, line: 19, baseType: !178, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3895, file: !3896, line: 20, baseType: !178, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3895, file: !3896, line: 20, baseType: !178, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3895, file: !3896, line: 20, baseType: !178, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3895, file: !3896, line: 20, baseType: !178, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3895, file: !3896, line: 20, baseType: !178, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3895, file: !3896, line: 20, baseType: !178, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3890, file: !3891, line: 436, baseType: !106, size: 64, offset: 192)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3890, file: !3891, line: 440, baseType: !180, size: 16, offset: 256)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3890, file: !3891, line: 441, baseType: !180, size: 16, offset: 272)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3890, file: !3891, line: 442, baseType: !180, size: 16, offset: 288)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3890, file: !3891, line: 443, baseType: !180, size: 16, offset: 304)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3890, file: !3891, line: 447, baseType: !106, size: 64, offset: 320)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3890, file: !3891, line: 448, baseType: !106, size: 64, offset: 384)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3890, file: !3891, line: 459, baseType: !3919, size: 256, offset: 448)
!3919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3920, size: 256, elements: !601)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3891, line: 428, flags: DIFlagFwdDecl)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3890, file: !3891, line: 461, baseType: !106, size: 64, offset: 704)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3890, file: !3891, line: 463, baseType: !106, size: 64, offset: 768)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3890, file: !3891, line: 465, baseType: !106, size: 64, offset: 832)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3890, file: !3891, line: 466, baseType: !106, size: 64, offset: 896)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3890, file: !3891, line: 467, baseType: !106, size: 64, offset: 960)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3890, file: !3891, line: 473, baseType: !3928, size: 64, offset: 1024)
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!3929 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3891, line: 10, flags: DIFlagFwdDecl)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3890, file: !3891, line: 480, baseType: !106, size: 64, offset: 1088)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3890, file: !3891, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3890, file: !3891, line: 491, baseType: !127, size: 32, offset: 1184)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3890, file: !3891, line: 501, baseType: !3934, size: 33792, offset: 1536)
!3934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3935, line: 448, size: 33792, elements: !3936)
!3935 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3936 = !{!3937, !3938, !3939, !4101, !4102, !4108, !4109}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3934, file: !3935, line: 461, baseType: !7, size: 32)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3934, file: !3935, line: 468, baseType: !106, size: 64, offset: 64)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3934, file: !3935, line: 476, baseType: !3940, size: 64, offset: 128)
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3941, size: 64)
!3941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3935, line: 356, size: 33280, align: 512, elements: !3942)
!3942 = !{!3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3941, file: !3935, line: 358, baseType: !7, size: 32)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3941, file: !3935, line: 361, baseType: !7, size: 32, offset: 32)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3941, file: !3935, line: 364, baseType: !209, size: 64, offset: 64)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3941, file: !3935, line: 367, baseType: !209, size: 64, offset: 128)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3941, file: !3935, line: 370, baseType: !209, size: 64, offset: 192)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3941, file: !3935, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3941, file: !3935, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3941, file: !3935, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3941, file: !3935, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3941, file: !3935, line: 397, baseType: !3953, size: 32768, offset: 512)
!3953 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3935, line: 348, size: 32768, elements: !3954)
!3954 = !{!3955, !3970, !4007, !4084, !4097}
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3953, file: !3935, line: 349, baseType: !3956, size: 896)
!3956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3935, line: 12, size: 896, elements: !3957)
!3957 = !{!3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3969}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3956, file: !3935, line: 13, baseType: !127, size: 32)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3956, file: !3935, line: 14, baseType: !127, size: 32, offset: 32)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3956, file: !3935, line: 15, baseType: !127, size: 32, offset: 64)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3956, file: !3935, line: 16, baseType: !127, size: 32, offset: 96)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3956, file: !3935, line: 17, baseType: !127, size: 32, offset: 128)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3956, file: !3935, line: 18, baseType: !127, size: 32, offset: 160)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3956, file: !3935, line: 19, baseType: !127, size: 32, offset: 192)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3956, file: !3935, line: 22, baseType: !3966, size: 640, offset: 224)
!3966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 640, elements: !3967)
!3967 = !{!3968}
!3968 = !DISubrange(count: 20)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3956, file: !3935, line: 25, baseType: !127, size: 32, offset: 864)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3953, file: !3935, line: 350, baseType: !3971, size: 4096, align: 128)
!3971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3935, line: 34, size: 4096, align: 128, elements: !3972)
!3972 = !{!3973, !3974, !3975, !3976, !3977, !3992, !3993, !3994, !3996, !3998, !4002}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3971, file: !3935, line: 35, baseType: !178, size: 16)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3971, file: !3935, line: 36, baseType: !178, size: 16, offset: 16)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3971, file: !3935, line: 37, baseType: !178, size: 16, offset: 32)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3971, file: !3935, line: 38, baseType: !178, size: 16, offset: 48)
!3977 = !DIDerivedType(tag: DW_TAG_member, scope: !3971, file: !3935, line: 39, baseType: !3978, size: 128, offset: 64)
!3978 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3971, file: !3935, line: 39, size: 128, elements: !3979)
!3979 = !{!3980, !3985}
!3980 = !DIDerivedType(tag: DW_TAG_member, scope: !3978, file: !3935, line: 40, baseType: !3981, size: 128)
!3981 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3978, file: !3935, line: 40, size: 128, elements: !3982)
!3982 = !{!3983, !3984}
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3981, file: !3935, line: 41, baseType: !209, size: 64)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3981, file: !3935, line: 42, baseType: !209, size: 64, offset: 64)
!3985 = !DIDerivedType(tag: DW_TAG_member, scope: !3978, file: !3935, line: 44, baseType: !3986, size: 128)
!3986 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3978, file: !3935, line: 44, size: 128, elements: !3987)
!3987 = !{!3988, !3989, !3990, !3991}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3986, file: !3935, line: 45, baseType: !127, size: 32)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3986, file: !3935, line: 46, baseType: !127, size: 32, offset: 32)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3986, file: !3935, line: 47, baseType: !127, size: 32, offset: 64)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3986, file: !3935, line: 48, baseType: !127, size: 32, offset: 96)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3971, file: !3935, line: 51, baseType: !127, size: 32, offset: 192)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3971, file: !3935, line: 52, baseType: !127, size: 32, offset: 224)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3971, file: !3935, line: 55, baseType: !3995, size: 1024, offset: 256)
!3995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 1024, elements: !2722)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3971, file: !3935, line: 58, baseType: !3997, size: 2048, offset: 1280)
!3997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 2048, elements: !1239)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3971, file: !3935, line: 60, baseType: !3999, size: 384, offset: 3328)
!3999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 384, elements: !4000)
!4000 = !{!4001}
!4001 = !DISubrange(count: 12)
!4002 = !DIDerivedType(tag: DW_TAG_member, scope: !3971, file: !3935, line: 62, baseType: !4003, size: 384, offset: 3712)
!4003 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3971, file: !3935, line: 62, size: 384, elements: !4004)
!4004 = !{!4005, !4006}
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4003, file: !3935, line: 63, baseType: !3999, size: 384)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4003, file: !3935, line: 64, baseType: !3999, size: 384)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3953, file: !3935, line: 351, baseType: !4008, size: 1088)
!4008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3935, line: 79, size: 1088, elements: !4009)
!4009 = !{!4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4024, !4083}
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4008, file: !3935, line: 80, baseType: !127, size: 32)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4008, file: !3935, line: 81, baseType: !127, size: 32, offset: 32)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4008, file: !3935, line: 82, baseType: !127, size: 32, offset: 64)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4008, file: !3935, line: 83, baseType: !127, size: 32, offset: 96)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4008, file: !3935, line: 84, baseType: !127, size: 32, offset: 128)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4008, file: !3935, line: 85, baseType: !127, size: 32, offset: 160)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4008, file: !3935, line: 86, baseType: !127, size: 32, offset: 192)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4008, file: !3935, line: 88, baseType: !3966, size: 640, offset: 224)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4008, file: !3935, line: 89, baseType: !319, size: 8, offset: 864)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4008, file: !3935, line: 90, baseType: !319, size: 8, offset: 872)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4008, file: !3935, line: 91, baseType: !319, size: 8, offset: 880)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4008, file: !3935, line: 92, baseType: !319, size: 8, offset: 888)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4008, file: !3935, line: 93, baseType: !319, size: 8, offset: 896)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4008, file: !3935, line: 94, baseType: !319, size: 8, offset: 904)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4008, file: !3935, line: 95, baseType: !4025, size: 64, offset: 960)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4027, line: 11, size: 128, elements: !4028)
!4027 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4028 = !{!4029, !4030}
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4026, file: !4027, line: 12, baseType: !103, size: 64)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4026, file: !4027, line: 13, baseType: !4031, size: 64, offset: 64)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4033, line: 103, size: 1344, elements: !4034)
!4033 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4034 = !{!4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4063, !4064, !4065}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4032, file: !4033, line: 109, baseType: !106, size: 64)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4032, file: !4033, line: 110, baseType: !106, size: 64, offset: 64)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4032, file: !4033, line: 111, baseType: !106, size: 64, offset: 128)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4032, file: !4033, line: 112, baseType: !106, size: 64, offset: 192)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4032, file: !4033, line: 113, baseType: !106, size: 64, offset: 256)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4032, file: !4033, line: 114, baseType: !106, size: 64, offset: 320)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4032, file: !4033, line: 117, baseType: !106, size: 64, offset: 384)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4032, file: !4033, line: 118, baseType: !106, size: 64, offset: 448)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4032, file: !4033, line: 119, baseType: !106, size: 64, offset: 512)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4032, file: !4033, line: 120, baseType: !106, size: 64, offset: 576)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4032, file: !4033, line: 121, baseType: !106, size: 64, offset: 640)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4032, file: !4033, line: 122, baseType: !106, size: 64, offset: 704)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4032, file: !4033, line: 123, baseType: !106, size: 64, offset: 768)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4032, file: !4033, line: 124, baseType: !106, size: 64, offset: 832)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4032, file: !4033, line: 125, baseType: !106, size: 64, offset: 896)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4032, file: !4033, line: 139, baseType: !106, size: 64, offset: 960)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4032, file: !4033, line: 142, baseType: !106, size: 64, offset: 1024)
!4052 = !DIDerivedType(tag: DW_TAG_member, scope: !4032, file: !4033, line: 144, baseType: !4053, size: 64, offset: 1088)
!4053 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4032, file: !4033, line: 144, size: 64, elements: !4054)
!4054 = !{!4055, !4056, !4057}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4053, file: !4033, line: 146, baseType: !178, size: 16)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4053, file: !4033, line: 148, baseType: !209, size: 64)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4053, file: !4033, line: 150, baseType: !4058, size: 64)
!4058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4033, line: 59, size: 64, elements: !4059)
!4059 = !{!4060, !4061, !4062}
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4058, file: !4033, line: 61, baseType: !209, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4058, file: !4033, line: 63, baseType: !209, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4058, file: !4033, line: 65, baseType: !209, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4032, file: !4033, line: 153, baseType: !106, size: 64, offset: 1152)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4032, file: !4033, line: 154, baseType: !106, size: 64, offset: 1216)
!4065 = !DIDerivedType(tag: DW_TAG_member, scope: !4032, file: !4033, line: 156, baseType: !4066, size: 64, offset: 1280)
!4066 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4032, file: !4033, line: 156, size: 64, elements: !4067)
!4067 = !{!4068, !4069, !4070}
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4066, file: !4033, line: 158, baseType: !178, size: 16)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4066, file: !4033, line: 160, baseType: !209, size: 64)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4066, file: !4033, line: 162, baseType: !4071, size: 64)
!4071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4033, line: 69, size: 64, elements: !4072)
!4072 = !{!4073, !4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081, !4082}
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4071, file: !4033, line: 71, baseType: !209, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4071, file: !4033, line: 73, baseType: !209, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4071, file: !4033, line: 75, baseType: !209, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4071, file: !4033, line: 77, baseType: !209, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4071, file: !4033, line: 80, baseType: !209, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4071, file: !4033, line: 83, baseType: !209, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4071, file: !4033, line: 86, baseType: !209, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4071, file: !4033, line: 88, baseType: !209, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4071, file: !4033, line: 93, baseType: !209, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4071, file: !4033, line: 100, baseType: !209, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4008, file: !3935, line: 96, baseType: !127, size: 32, offset: 1024)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3953, file: !3935, line: 352, baseType: !4085, size: 4608, align: 512)
!4085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3935, line: 333, size: 4608, align: 512, elements: !4086)
!4086 = !{!4087, !4088, !4095}
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4085, file: !3935, line: 334, baseType: !3971, size: 4096, align: 128)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4085, file: !3935, line: 335, baseType: !4089, size: 512, offset: 4096)
!4089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3935, line: 312, size: 512, elements: !4090)
!4090 = !{!4091, !4092, !4093}
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4089, file: !3935, line: 313, baseType: !209, size: 64)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4089, file: !3935, line: 314, baseType: !209, size: 64, offset: 64)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4089, file: !3935, line: 315, baseType: !4094, size: 384, offset: 128)
!4094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 384, elements: !778)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4085, file: !3935, line: 336, baseType: !4096, offset: 4608)
!4096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, elements: !669)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3953, file: !3935, line: 353, baseType: !4098, size: 32768)
!4098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 32768, elements: !4099)
!4099 = !{!4100}
!4100 = !DISubrange(count: 4096)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3934, file: !3935, line: 484, baseType: !3940, size: 64, offset: 192)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3934, file: !3935, line: 491, baseType: !4103, size: 128, offset: 256)
!4103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3935, line: 404, size: 128, elements: !4104)
!4104 = !{!4105, !4106, !4107}
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4103, file: !3935, line: 424, baseType: !209, size: 64)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4103, file: !3935, line: 432, baseType: !7, size: 32, offset: 64)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4103, file: !3935, line: 440, baseType: !7, size: 32, offset: 96)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3934, file: !3935, line: 498, baseType: !4103, size: 128, offset: 384)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3934, file: !3935, line: 508, baseType: !3941, size: 33280, align: 512, offset: 512)
!4110 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !99, line: 42, baseType: !106)
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 64)
!4113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "semaphore_waiter", file: !3, line: 198, size: 256, elements: !4114)
!4114 = !{!4115, !4116, !4117}
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4113, file: !3, line: 199, baseType: !98, size: 128)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4113, file: !3, line: 200, baseType: !135, size: 64, offset: 128)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !4113, file: !3, line: 201, baseType: !791, size: 8, offset: 192)
!4118 = !{!0, !4119, !4121, !4123, !4125, !4127, !4129, !4133, !4139, !4168, !4170, !4199}
!4119 = !DIGlobalVariableExpression(var: !4120, expr: !DIExpression())
!4120 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_down_interruptible313", scope: !2, file: !3, line: 92, type: !93, isLocal: true, isDefinition: true)
!4121 = !DIGlobalVariableExpression(var: !4122, expr: !DIExpression())
!4122 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_down_killable314", scope: !2, file: !3, line: 119, type: !93, isLocal: true, isDefinition: true)
!4123 = !DIGlobalVariableExpression(var: !4124, expr: !DIExpression())
!4124 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_down_trylock315", scope: !2, file: !3, line: 147, type: !93, isLocal: true, isDefinition: true)
!4125 = !DIGlobalVariableExpression(var: !4126, expr: !DIExpression())
!4126 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_down_timeout316", scope: !2, file: !3, line: 174, type: !93, isLocal: true, isDefinition: true)
!4127 = !DIGlobalVariableExpression(var: !4128, expr: !DIExpression())
!4128 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_up317", scope: !2, file: !3, line: 194, type: !93, isLocal: true, isDefinition: true)
!4129 = !DIGlobalVariableExpression(var: !4130, expr: !DIExpression())
!4130 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__might_resched2", scope: !4131, file: !4132, line: 112, type: !93, isLocal: true, isDefinition: true)
!4131 = distinct !DISubprogram(name: "might_resched", scope: !4132, file: !4132, line: 110, type: !2339, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4132 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!4133 = !DIGlobalVariableExpression(var: !4134, expr: !DIExpression())
!4134 = distinct !DIGlobalVariable(scope: null, file: !4135, line: 95, type: !4136, isLocal: true, isDefinition: true)
!4135 = !DIFile(filename: "./include/trace/events/lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bb4e6643de3c3749267f6f3b5a53bfe0")
!4136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !777, size: 224, elements: !4137)
!4137 = !{!4138}
!4138 = !DISubrange(count: 28)
!4139 = !DIGlobalVariableExpression(var: !4140, expr: !DIExpression())
!4140 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_contention_begin298", scope: !4141, file: !4135, line: 95, type: !93, isLocal: true, isDefinition: true)
!4141 = distinct !DISubprogram(name: "trace_contention_begin", scope: !4135, file: !4135, line: 95, type: !4142, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4144)
!4142 = !DISubroutineType(types: !4143)
!4143 = !{null, !93, !7}
!4144 = !{!4145, !4146, !4147, !4150, !4153, !4155, !4157, !4160, !4163, !4165, !4166}
!4145 = !DILocalVariable(name: "lock", arg: 1, scope: !4141, file: !4135, line: 95, type: !93)
!4146 = !DILocalVariable(name: "flags", arg: 2, scope: !4141, file: !4135, line: 95, type: !7)
!4147 = !DILocalVariable(name: "__idx", scope: !4148, file: !4135, line: 95, type: !105)
!4148 = distinct !DILexicalBlock(scope: !4149, file: !4135, line: 95, column: 1)
!4149 = distinct !DILexicalBlock(scope: !4141, file: !4135, line: 95, column: 1)
!4150 = !DILocalVariable(name: "pscr_ret__", scope: !4151, file: !4135, line: 95, type: !105)
!4151 = distinct !DILexicalBlock(scope: !4152, file: !4135, line: 95, column: 1)
!4152 = distinct !DILexicalBlock(scope: !4148, file: !4135, line: 95, column: 1)
!4153 = !DILocalVariable(name: "__vpp_verify", scope: !4154, file: !4135, line: 95, type: !1836)
!4154 = distinct !DILexicalBlock(scope: !4151, file: !4135, line: 95, column: 1)
!4155 = !DILocalVariable(name: "pfo_val__", scope: !4156, file: !4135, line: 95, type: !127)
!4156 = distinct !DILexicalBlock(scope: !4151, file: !4135, line: 95, column: 1)
!4157 = !DILocalVariable(name: "__ret_warn_on", scope: !4158, file: !4135, line: 95, type: !105)
!4158 = distinct !DILexicalBlock(scope: !4159, file: !4135, line: 95, column: 1)
!4159 = distinct !DILexicalBlock(scope: !4148, file: !4135, line: 95, column: 1)
!4160 = !DILocalVariable(name: "__flags", scope: !4161, file: !4135, line: 95, type: !105)
!4161 = distinct !DILexicalBlock(scope: !4162, file: !4135, line: 95, column: 1)
!4162 = distinct !DILexicalBlock(scope: !4158, file: !4135, line: 95, column: 1)
!4163 = !DILocalVariable(name: "it_func_ptr", scope: !4164, file: !4135, line: 95, type: !110)
!4164 = distinct !DILexicalBlock(scope: !4148, file: !4135, line: 95, column: 1)
!4165 = !DILocalVariable(name: "__data", scope: !4164, file: !4135, line: 95, type: !93)
!4166 = !DILocalVariable(name: "__UNIQUE_ID_rcu296", scope: !4167, file: !4135, line: 95, type: !110)
!4167 = distinct !DILexicalBlock(scope: !4164, file: !4135, line: 95, column: 1)
!4168 = !DIGlobalVariableExpression(var: !4169, expr: !DIExpression())
!4169 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace299", scope: !4141, file: !4135, line: 95, type: !93, isLocal: true, isDefinition: true)
!4170 = !DIGlobalVariableExpression(var: !4171, expr: !DIExpression())
!4171 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_contention_end306", scope: !4172, file: !4135, line: 122, type: !93, isLocal: true, isDefinition: true)
!4172 = distinct !DISubprogram(name: "trace_contention_end", scope: !4135, file: !4135, line: 122, type: !4173, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4175)
!4173 = !DISubroutineType(types: !4174)
!4174 = !{null, !93, !105}
!4175 = !{!4176, !4177, !4178, !4181, !4184, !4186, !4188, !4191, !4194, !4196, !4197}
!4176 = !DILocalVariable(name: "lock", arg: 1, scope: !4172, file: !4135, line: 122, type: !93)
!4177 = !DILocalVariable(name: "ret", arg: 2, scope: !4172, file: !4135, line: 122, type: !105)
!4178 = !DILocalVariable(name: "__idx", scope: !4179, file: !4135, line: 122, type: !105)
!4179 = distinct !DILexicalBlock(scope: !4180, file: !4135, line: 122, column: 1)
!4180 = distinct !DILexicalBlock(scope: !4172, file: !4135, line: 122, column: 1)
!4181 = !DILocalVariable(name: "pscr_ret__", scope: !4182, file: !4135, line: 122, type: !105)
!4182 = distinct !DILexicalBlock(scope: !4183, file: !4135, line: 122, column: 1)
!4183 = distinct !DILexicalBlock(scope: !4179, file: !4135, line: 122, column: 1)
!4184 = !DILocalVariable(name: "__vpp_verify", scope: !4185, file: !4135, line: 122, type: !1836)
!4185 = distinct !DILexicalBlock(scope: !4182, file: !4135, line: 122, column: 1)
!4186 = !DILocalVariable(name: "pfo_val__", scope: !4187, file: !4135, line: 122, type: !127)
!4187 = distinct !DILexicalBlock(scope: !4182, file: !4135, line: 122, column: 1)
!4188 = !DILocalVariable(name: "__ret_warn_on", scope: !4189, file: !4135, line: 122, type: !105)
!4189 = distinct !DILexicalBlock(scope: !4190, file: !4135, line: 122, column: 1)
!4190 = distinct !DILexicalBlock(scope: !4179, file: !4135, line: 122, column: 1)
!4191 = !DILocalVariable(name: "__flags", scope: !4192, file: !4135, line: 122, type: !105)
!4192 = distinct !DILexicalBlock(scope: !4193, file: !4135, line: 122, column: 1)
!4193 = distinct !DILexicalBlock(scope: !4189, file: !4135, line: 122, column: 1)
!4194 = !DILocalVariable(name: "it_func_ptr", scope: !4195, file: !4135, line: 122, type: !110)
!4195 = distinct !DILexicalBlock(scope: !4179, file: !4135, line: 122, column: 1)
!4196 = !DILocalVariable(name: "__data", scope: !4195, file: !4135, line: 122, type: !93)
!4197 = !DILocalVariable(name: "__UNIQUE_ID_rcu304", scope: !4198, file: !4135, line: 122, type: !110)
!4198 = distinct !DILexicalBlock(scope: !4195, file: !4135, line: 122, column: 1)
!4199 = !DIGlobalVariableExpression(var: !4200, expr: !DIExpression())
!4200 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace307", scope: !4172, file: !4135, line: 122, type: !93, isLocal: true, isDefinition: true)
!4201 = !{!"rsp"}
!4202 = !{i32 7, !"Dwarf Version", i32 5}
!4203 = !{i32 2, !"Debug Info Version", i32 3}
!4204 = !{i32 1, !"wchar_size", i32 2}
!4205 = !{i32 8, !"cf-protection-branch", i32 1}
!4206 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4207 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4208 = !{i32 1, !"Code Model", i32 2}
!4209 = !{i32 1, !"override-stack-alignment", i32 8}
!4210 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4211 = distinct !DISubprogram(name: "down", scope: !3, file: !3, line: 54, type: !4212, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4221)
!4212 = !DISubroutineType(types: !4213)
!4213 = !{null, !4214}
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4215, size: 64)
!4215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "semaphore", file: !4216, line: 15, size: 192, elements: !4217)
!4216 = !DIFile(filename: "./include/linux/semaphore.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a6d1be1d1ca9e1e7e6ce72ef8c4c814f")
!4217 = !{!4218, !4219, !4220}
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4215, file: !4216, line: 16, baseType: !302, size: 32)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4215, file: !4216, line: 17, baseType: !7, size: 32, offset: 32)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !4215, file: !4216, line: 18, baseType: !98, size: 128, offset: 64)
!4221 = !{!4222, !4223, !4224, !4227, !4228, !4231}
!4222 = !DILocalVariable(name: "sem", arg: 1, scope: !4211, file: !3, line: 54, type: !4214)
!4223 = !DILocalVariable(name: "flags", scope: !4211, file: !3, line: 56, type: !106)
!4224 = !DILocalVariable(name: "__dummy", scope: !4225, file: !3, line: 59, type: !106)
!4225 = distinct !DILexicalBlock(scope: !4226, file: !3, line: 59, column: 2)
!4226 = distinct !DILexicalBlock(scope: !4211, file: !3, line: 59, column: 2)
!4227 = !DILocalVariable(name: "__dummy2", scope: !4225, file: !3, line: 59, type: !106)
!4228 = !DILocalVariable(name: "__dummy", scope: !4229, file: !3, line: 64, type: !106)
!4229 = distinct !DILexicalBlock(scope: !4230, file: !3, line: 64, column: 2)
!4230 = distinct !DILexicalBlock(scope: !4211, file: !3, line: 64, column: 2)
!4231 = !DILocalVariable(name: "__dummy2", scope: !4229, file: !3, line: 64, type: !106)
!4232 = !DILocation(line: 54, column: 37, scope: !4211)
!4233 = !DILocation(line: 56, column: 2, scope: !4211)
!4234 = !DILocation(line: 56, column: 16, scope: !4211)
!4235 = !DILocation(line: 58, column: 2, scope: !4211)
!4236 = !DILocation(line: 58, column: 2, scope: !4237)
!4237 = distinct !DILexicalBlock(scope: !4211, file: !3, line: 58, column: 2)
!4238 = !DILocation(line: 59, column: 2, scope: !4211)
!4239 = !DILocation(line: 59, column: 2, scope: !4225)
!4240 = !DILocation(line: 59, column: 2, scope: !4226)
!4241 = !DILocation(line: 60, column: 6, scope: !4242)
!4242 = distinct !DILexicalBlock(scope: !4211, file: !3, line: 60, column: 6)
!4243 = !DILocation(line: 60, column: 6, scope: !4211)
!4244 = !DILocation(line: 61, column: 3, scope: !4242)
!4245 = !DILocation(line: 61, column: 8, scope: !4242)
!4246 = !DILocation(line: 61, column: 13, scope: !4242)
!4247 = !DILocation(line: 63, column: 10, scope: !4242)
!4248 = !DILocation(line: 63, column: 3, scope: !4242)
!4249 = !DILocation(line: 64, column: 2, scope: !4211)
!4250 = !DILocation(line: 64, column: 2, scope: !4229)
!4251 = !DILocation(line: 64, column: 2, scope: !4230)
!4252 = !DILocation(line: 65, column: 1, scope: !4211)
!4253 = !DILocation(line: 112, column: 2, scope: !4254)
!4254 = distinct !DILexicalBlock(scope: !4131, file: !4132, line: 112, column: 2)
!4255 = !DILocation(line: 112, column: 2, scope: !4131)
!4256 = !DILocation(line: 113, column: 1, scope: !4131)
!4257 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !4258, file: !4258, line: 32, type: !4259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4258 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!4259 = !DISubroutineType(types: !4260)
!4260 = !{!106, !4261}
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!4262 = distinct !DISubprogram(name: "__down", scope: !3, file: !3, line: 252, type: !4212, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4263)
!4263 = !{!4264}
!4264 = !DILocalVariable(name: "sem", arg: 1, scope: !4262, file: !3, line: 252, type: !4214)
!4265 = !DILocation(line: 252, column: 55, scope: !4262)
!4266 = !DILocation(line: 254, column: 16, scope: !4262)
!4267 = !DILocation(line: 254, column: 2, scope: !4262)
!4268 = !DILocation(line: 255, column: 1, scope: !4262)
!4269 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !4258, file: !4258, line: 43, type: !4270, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4270 = !DISubroutineType(types: !4271)
!4271 = !{null, !4261, !106}
!4272 = distinct !DISubprogram(name: "down_interruptible", scope: !3, file: !3, line: 77, type: !4273, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4275)
!4273 = !DISubroutineType(types: !4274)
!4274 = !{!105, !4214}
!4275 = !{!4276, !4277, !4278, !4279, !4282, !4283, !4286}
!4276 = !DILocalVariable(name: "sem", arg: 1, scope: !4272, file: !3, line: 77, type: !4214)
!4277 = !DILocalVariable(name: "flags", scope: !4272, file: !3, line: 79, type: !106)
!4278 = !DILocalVariable(name: "result", scope: !4272, file: !3, line: 80, type: !105)
!4279 = !DILocalVariable(name: "__dummy", scope: !4280, file: !3, line: 83, type: !106)
!4280 = distinct !DILexicalBlock(scope: !4281, file: !3, line: 83, column: 2)
!4281 = distinct !DILexicalBlock(scope: !4272, file: !3, line: 83, column: 2)
!4282 = !DILocalVariable(name: "__dummy2", scope: !4280, file: !3, line: 83, type: !106)
!4283 = !DILocalVariable(name: "__dummy", scope: !4284, file: !3, line: 88, type: !106)
!4284 = distinct !DILexicalBlock(scope: !4285, file: !3, line: 88, column: 2)
!4285 = distinct !DILexicalBlock(scope: !4272, file: !3, line: 88, column: 2)
!4286 = !DILocalVariable(name: "__dummy2", scope: !4284, file: !3, line: 88, type: !106)
!4287 = !DILocation(line: 77, column: 50, scope: !4272)
!4288 = !DILocation(line: 79, column: 2, scope: !4272)
!4289 = !DILocation(line: 79, column: 16, scope: !4272)
!4290 = !DILocation(line: 80, column: 2, scope: !4272)
!4291 = !DILocation(line: 80, column: 6, scope: !4272)
!4292 = !DILocation(line: 82, column: 2, scope: !4272)
!4293 = !DILocation(line: 82, column: 2, scope: !4294)
!4294 = distinct !DILexicalBlock(scope: !4272, file: !3, line: 82, column: 2)
!4295 = !DILocation(line: 83, column: 2, scope: !4272)
!4296 = !DILocation(line: 83, column: 2, scope: !4280)
!4297 = !DILocation(line: 83, column: 2, scope: !4281)
!4298 = !DILocation(line: 84, column: 6, scope: !4299)
!4299 = distinct !DILexicalBlock(scope: !4272, file: !3, line: 84, column: 6)
!4300 = !DILocation(line: 84, column: 6, scope: !4272)
!4301 = !DILocation(line: 85, column: 3, scope: !4299)
!4302 = !DILocation(line: 85, column: 8, scope: !4299)
!4303 = !DILocation(line: 85, column: 13, scope: !4299)
!4304 = !DILocation(line: 87, column: 33, scope: !4299)
!4305 = !DILocation(line: 87, column: 12, scope: !4299)
!4306 = !DILocation(line: 87, column: 10, scope: !4299)
!4307 = !DILocation(line: 88, column: 2, scope: !4272)
!4308 = !DILocation(line: 88, column: 2, scope: !4284)
!4309 = !DILocation(line: 88, column: 2, scope: !4285)
!4310 = !DILocation(line: 90, column: 9, scope: !4272)
!4311 = !DILocation(line: 91, column: 1, scope: !4272)
!4312 = !DILocation(line: 90, column: 2, scope: !4272)
!4313 = distinct !DISubprogram(name: "__down_interruptible", scope: !3, file: !3, line: 257, type: !4273, scopeLine: 258, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4314)
!4314 = !{!4315}
!4315 = !DILocalVariable(name: "sem", arg: 1, scope: !4313, file: !3, line: 257, type: !4214)
!4316 = !DILocation(line: 257, column: 68, scope: !4313)
!4317 = !DILocation(line: 259, column: 23, scope: !4313)
!4318 = !DILocation(line: 259, column: 9, scope: !4313)
!4319 = !DILocation(line: 259, column: 2, scope: !4313)
!4320 = distinct !DISubprogram(name: "down_killable", scope: !3, file: !3, line: 104, type: !4273, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4321)
!4321 = !{!4322, !4323, !4324, !4325, !4328, !4329, !4332}
!4322 = !DILocalVariable(name: "sem", arg: 1, scope: !4320, file: !3, line: 104, type: !4214)
!4323 = !DILocalVariable(name: "flags", scope: !4320, file: !3, line: 106, type: !106)
!4324 = !DILocalVariable(name: "result", scope: !4320, file: !3, line: 107, type: !105)
!4325 = !DILocalVariable(name: "__dummy", scope: !4326, file: !3, line: 110, type: !106)
!4326 = distinct !DILexicalBlock(scope: !4327, file: !3, line: 110, column: 2)
!4327 = distinct !DILexicalBlock(scope: !4320, file: !3, line: 110, column: 2)
!4328 = !DILocalVariable(name: "__dummy2", scope: !4326, file: !3, line: 110, type: !106)
!4329 = !DILocalVariable(name: "__dummy", scope: !4330, file: !3, line: 115, type: !106)
!4330 = distinct !DILexicalBlock(scope: !4331, file: !3, line: 115, column: 2)
!4331 = distinct !DILexicalBlock(scope: !4320, file: !3, line: 115, column: 2)
!4332 = !DILocalVariable(name: "__dummy2", scope: !4330, file: !3, line: 115, type: !106)
!4333 = !DILocation(line: 104, column: 45, scope: !4320)
!4334 = !DILocation(line: 106, column: 2, scope: !4320)
!4335 = !DILocation(line: 106, column: 16, scope: !4320)
!4336 = !DILocation(line: 107, column: 2, scope: !4320)
!4337 = !DILocation(line: 107, column: 6, scope: !4320)
!4338 = !DILocation(line: 109, column: 2, scope: !4320)
!4339 = !DILocation(line: 109, column: 2, scope: !4340)
!4340 = distinct !DILexicalBlock(scope: !4320, file: !3, line: 109, column: 2)
!4341 = !DILocation(line: 110, column: 2, scope: !4320)
!4342 = !DILocation(line: 110, column: 2, scope: !4326)
!4343 = !DILocation(line: 110, column: 2, scope: !4327)
!4344 = !DILocation(line: 111, column: 6, scope: !4345)
!4345 = distinct !DILexicalBlock(scope: !4320, file: !3, line: 111, column: 6)
!4346 = !DILocation(line: 111, column: 6, scope: !4320)
!4347 = !DILocation(line: 112, column: 3, scope: !4345)
!4348 = !DILocation(line: 112, column: 8, scope: !4345)
!4349 = !DILocation(line: 112, column: 13, scope: !4345)
!4350 = !DILocation(line: 114, column: 28, scope: !4345)
!4351 = !DILocation(line: 114, column: 12, scope: !4345)
!4352 = !DILocation(line: 114, column: 10, scope: !4345)
!4353 = !DILocation(line: 115, column: 2, scope: !4320)
!4354 = !DILocation(line: 115, column: 2, scope: !4330)
!4355 = !DILocation(line: 115, column: 2, scope: !4331)
!4356 = !DILocation(line: 117, column: 9, scope: !4320)
!4357 = !DILocation(line: 118, column: 1, scope: !4320)
!4358 = !DILocation(line: 117, column: 2, scope: !4320)
!4359 = distinct !DISubprogram(name: "__down_killable", scope: !3, file: !3, line: 262, type: !4273, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4360)
!4360 = !{!4361}
!4361 = !DILocalVariable(name: "sem", arg: 1, scope: !4359, file: !3, line: 262, type: !4214)
!4362 = !DILocation(line: 262, column: 63, scope: !4359)
!4363 = !DILocation(line: 264, column: 23, scope: !4359)
!4364 = !DILocation(line: 264, column: 9, scope: !4359)
!4365 = !DILocation(line: 264, column: 2, scope: !4359)
!4366 = distinct !DISubprogram(name: "down_trylock", scope: !3, file: !3, line: 134, type: !4273, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4367)
!4367 = !{!4368, !4369, !4370, !4371, !4374, !4375, !4378}
!4368 = !DILocalVariable(name: "sem", arg: 1, scope: !4366, file: !3, line: 134, type: !4214)
!4369 = !DILocalVariable(name: "flags", scope: !4366, file: !3, line: 136, type: !106)
!4370 = !DILocalVariable(name: "count", scope: !4366, file: !3, line: 137, type: !105)
!4371 = !DILocalVariable(name: "__dummy", scope: !4372, file: !3, line: 139, type: !106)
!4372 = distinct !DILexicalBlock(scope: !4373, file: !3, line: 139, column: 2)
!4373 = distinct !DILexicalBlock(scope: !4366, file: !3, line: 139, column: 2)
!4374 = !DILocalVariable(name: "__dummy2", scope: !4372, file: !3, line: 139, type: !106)
!4375 = !DILocalVariable(name: "__dummy", scope: !4376, file: !3, line: 143, type: !106)
!4376 = distinct !DILexicalBlock(scope: !4377, file: !3, line: 143, column: 2)
!4377 = distinct !DILexicalBlock(scope: !4366, file: !3, line: 143, column: 2)
!4378 = !DILocalVariable(name: "__dummy2", scope: !4376, file: !3, line: 143, type: !106)
!4379 = !DILocation(line: 134, column: 44, scope: !4366)
!4380 = !DILocation(line: 136, column: 2, scope: !4366)
!4381 = !DILocation(line: 136, column: 16, scope: !4366)
!4382 = !DILocation(line: 137, column: 2, scope: !4366)
!4383 = !DILocation(line: 137, column: 6, scope: !4366)
!4384 = !DILocation(line: 139, column: 2, scope: !4366)
!4385 = !DILocation(line: 139, column: 2, scope: !4372)
!4386 = !DILocation(line: 139, column: 2, scope: !4373)
!4387 = !DILocation(line: 140, column: 10, scope: !4366)
!4388 = !DILocation(line: 140, column: 15, scope: !4366)
!4389 = !DILocation(line: 140, column: 21, scope: !4366)
!4390 = !DILocation(line: 140, column: 8, scope: !4366)
!4391 = !DILocation(line: 141, column: 6, scope: !4392)
!4392 = distinct !DILexicalBlock(scope: !4366, file: !3, line: 141, column: 6)
!4393 = !DILocation(line: 141, column: 6, scope: !4366)
!4394 = !DILocation(line: 142, column: 16, scope: !4392)
!4395 = !DILocation(line: 142, column: 3, scope: !4392)
!4396 = !DILocation(line: 142, column: 8, scope: !4392)
!4397 = !DILocation(line: 142, column: 14, scope: !4392)
!4398 = !DILocation(line: 143, column: 2, scope: !4366)
!4399 = !DILocation(line: 143, column: 2, scope: !4376)
!4400 = !DILocation(line: 143, column: 2, scope: !4377)
!4401 = !DILocation(line: 145, column: 10, scope: !4366)
!4402 = !DILocation(line: 145, column: 16, scope: !4366)
!4403 = !DILocation(line: 146, column: 1, scope: !4366)
!4404 = !DILocation(line: 145, column: 2, scope: !4366)
!4405 = distinct !DISubprogram(name: "down_timeout", scope: !3, file: !3, line: 159, type: !4406, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4408)
!4406 = !DISubroutineType(types: !4407)
!4407 = !{!105, !4214, !103}
!4408 = !{!4409, !4410, !4411, !4412, !4413, !4416, !4417, !4420}
!4409 = !DILocalVariable(name: "sem", arg: 1, scope: !4405, file: !3, line: 159, type: !4214)
!4410 = !DILocalVariable(name: "timeout", arg: 2, scope: !4405, file: !3, line: 159, type: !103)
!4411 = !DILocalVariable(name: "flags", scope: !4405, file: !3, line: 161, type: !106)
!4412 = !DILocalVariable(name: "result", scope: !4405, file: !3, line: 162, type: !105)
!4413 = !DILocalVariable(name: "__dummy", scope: !4414, file: !3, line: 165, type: !106)
!4414 = distinct !DILexicalBlock(scope: !4415, file: !3, line: 165, column: 2)
!4415 = distinct !DILexicalBlock(scope: !4405, file: !3, line: 165, column: 2)
!4416 = !DILocalVariable(name: "__dummy2", scope: !4414, file: !3, line: 165, type: !106)
!4417 = !DILocalVariable(name: "__dummy", scope: !4418, file: !3, line: 170, type: !106)
!4418 = distinct !DILexicalBlock(scope: !4419, file: !3, line: 170, column: 2)
!4419 = distinct !DILexicalBlock(scope: !4405, file: !3, line: 170, column: 2)
!4420 = !DILocalVariable(name: "__dummy2", scope: !4418, file: !3, line: 170, type: !106)
!4421 = !DILocation(line: 159, column: 44, scope: !4405)
!4422 = !DILocation(line: 159, column: 54, scope: !4405)
!4423 = !DILocation(line: 161, column: 2, scope: !4405)
!4424 = !DILocation(line: 161, column: 16, scope: !4405)
!4425 = !DILocation(line: 162, column: 2, scope: !4405)
!4426 = !DILocation(line: 162, column: 6, scope: !4405)
!4427 = !DILocation(line: 164, column: 2, scope: !4405)
!4428 = !DILocation(line: 164, column: 2, scope: !4429)
!4429 = distinct !DILexicalBlock(scope: !4405, file: !3, line: 164, column: 2)
!4430 = !DILocation(line: 165, column: 2, scope: !4405)
!4431 = !DILocation(line: 165, column: 2, scope: !4414)
!4432 = !DILocation(line: 165, column: 2, scope: !4415)
!4433 = !DILocation(line: 166, column: 6, scope: !4434)
!4434 = distinct !DILexicalBlock(scope: !4405, file: !3, line: 166, column: 6)
!4435 = !DILocation(line: 166, column: 6, scope: !4405)
!4436 = !DILocation(line: 167, column: 3, scope: !4434)
!4437 = !DILocation(line: 167, column: 8, scope: !4434)
!4438 = !DILocation(line: 167, column: 13, scope: !4434)
!4439 = !DILocation(line: 169, column: 27, scope: !4434)
!4440 = !DILocation(line: 169, column: 32, scope: !4434)
!4441 = !DILocation(line: 169, column: 12, scope: !4434)
!4442 = !DILocation(line: 169, column: 10, scope: !4434)
!4443 = !DILocation(line: 170, column: 2, scope: !4405)
!4444 = !DILocation(line: 170, column: 2, scope: !4418)
!4445 = !DILocation(line: 170, column: 2, scope: !4419)
!4446 = !DILocation(line: 172, column: 9, scope: !4405)
!4447 = !DILocation(line: 173, column: 1, scope: !4405)
!4448 = !DILocation(line: 172, column: 2, scope: !4405)
!4449 = distinct !DISubprogram(name: "__down_timeout", scope: !3, file: !3, line: 267, type: !4406, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4450)
!4450 = !{!4451, !4452}
!4451 = !DILocalVariable(name: "sem", arg: 1, scope: !4449, file: !3, line: 267, type: !4214)
!4452 = !DILocalVariable(name: "timeout", arg: 2, scope: !4449, file: !3, line: 267, type: !103)
!4453 = !DILocation(line: 267, column: 62, scope: !4449)
!4454 = !DILocation(line: 267, column: 72, scope: !4449)
!4455 = !DILocation(line: 269, column: 23, scope: !4449)
!4456 = !DILocation(line: 269, column: 50, scope: !4449)
!4457 = !DILocation(line: 269, column: 9, scope: !4449)
!4458 = !DILocation(line: 269, column: 2, scope: !4449)
!4459 = distinct !DISubprogram(name: "up", scope: !3, file: !3, line: 183, type: !4212, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4460)
!4460 = !{!4461, !4462, !4463, !4466, !4467, !4470}
!4461 = !DILocalVariable(name: "sem", arg: 1, scope: !4459, file: !3, line: 183, type: !4214)
!4462 = !DILocalVariable(name: "flags", scope: !4459, file: !3, line: 185, type: !106)
!4463 = !DILocalVariable(name: "__dummy", scope: !4464, file: !3, line: 187, type: !106)
!4464 = distinct !DILexicalBlock(scope: !4465, file: !3, line: 187, column: 2)
!4465 = distinct !DILexicalBlock(scope: !4459, file: !3, line: 187, column: 2)
!4466 = !DILocalVariable(name: "__dummy2", scope: !4464, file: !3, line: 187, type: !106)
!4467 = !DILocalVariable(name: "__dummy", scope: !4468, file: !3, line: 192, type: !106)
!4468 = distinct !DILexicalBlock(scope: !4469, file: !3, line: 192, column: 2)
!4469 = distinct !DILexicalBlock(scope: !4459, file: !3, line: 192, column: 2)
!4470 = !DILocalVariable(name: "__dummy2", scope: !4468, file: !3, line: 192, type: !106)
!4471 = !DILocation(line: 183, column: 35, scope: !4459)
!4472 = !DILocation(line: 185, column: 2, scope: !4459)
!4473 = !DILocation(line: 185, column: 16, scope: !4459)
!4474 = !DILocation(line: 187, column: 2, scope: !4459)
!4475 = !DILocation(line: 187, column: 2, scope: !4464)
!4476 = !DILocation(line: 187, column: 2, scope: !4465)
!4477 = !DILocation(line: 188, column: 6, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4459, file: !3, line: 188, column: 6)
!4479 = !DILocation(line: 188, column: 6, scope: !4459)
!4480 = !DILocation(line: 189, column: 3, scope: !4478)
!4481 = !DILocation(line: 189, column: 8, scope: !4478)
!4482 = !DILocation(line: 189, column: 13, scope: !4478)
!4483 = !DILocation(line: 191, column: 8, scope: !4478)
!4484 = !DILocation(line: 191, column: 3, scope: !4478)
!4485 = !DILocation(line: 192, column: 2, scope: !4459)
!4486 = !DILocation(line: 192, column: 2, scope: !4468)
!4487 = !DILocation(line: 192, column: 2, scope: !4469)
!4488 = !DILocation(line: 193, column: 1, scope: !4459)
!4489 = distinct !DISubprogram(name: "list_empty", scope: !4490, file: !4490, line: 371, type: !4491, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4495)
!4490 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!4491 = !DISubroutineType(types: !4492)
!4492 = !{!105, !4493}
!4493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4494, size: 64)
!4494 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!4495 = !{!4496}
!4496 = !DILocalVariable(name: "head", arg: 1, scope: !4489, file: !4490, line: 371, type: !4493)
!4497 = !DILocation(line: 371, column: 54, scope: !4489)
!4498 = !DILocation(line: 373, column: 9, scope: !4499)
!4499 = distinct !DILexicalBlock(scope: !4489, file: !4490, line: 373, column: 9)
!4500 = !DILocation(line: 373, column: 9, scope: !4501)
!4501 = distinct !DILexicalBlock(scope: !4499, file: !4490, line: 373, column: 9)
!4502 = !DILocation(line: 373, column: 34, scope: !4489)
!4503 = !DILocation(line: 373, column: 31, scope: !4489)
!4504 = !DILocation(line: 373, column: 2, scope: !4489)
!4505 = distinct !DISubprogram(name: "__up", scope: !3, file: !3, line: 272, type: !4212, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4506)
!4506 = !{!4507, !4508, !4509}
!4507 = !DILocalVariable(name: "sem", arg: 1, scope: !4505, file: !3, line: 272, type: !4214)
!4508 = !DILocalVariable(name: "waiter", scope: !4505, file: !3, line: 274, type: !4112)
!4509 = !DILocalVariable(name: "__mptr", scope: !4510, file: !3, line: 274, type: !93)
!4510 = distinct !DILexicalBlock(scope: !4505, file: !3, line: 274, column: 36)
!4511 = !DILocation(line: 272, column: 53, scope: !4505)
!4512 = !DILocation(line: 274, column: 2, scope: !4505)
!4513 = !DILocation(line: 274, column: 27, scope: !4505)
!4514 = !DILocation(line: 274, column: 36, scope: !4510)
!4515 = !DILocation(line: 274, column: 36, scope: !4505)
!4516 = !DILocation(line: 276, column: 12, scope: !4505)
!4517 = !DILocation(line: 276, column: 20, scope: !4505)
!4518 = !DILocation(line: 276, column: 2, scope: !4505)
!4519 = !DILocation(line: 277, column: 2, scope: !4505)
!4520 = !DILocation(line: 277, column: 10, scope: !4505)
!4521 = !DILocation(line: 277, column: 13, scope: !4505)
!4522 = !DILocation(line: 278, column: 18, scope: !4505)
!4523 = !DILocation(line: 278, column: 26, scope: !4505)
!4524 = !DILocation(line: 278, column: 2, scope: !4505)
!4525 = !DILocation(line: 279, column: 1, scope: !4505)
!4526 = distinct !DISubprogram(name: "__down_common", scope: !3, file: !3, line: 240, type: !4527, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4529)
!4527 = !DISubroutineType(types: !4528)
!4528 = !{!105, !4214, !103, !103}
!4529 = !{!4530, !4531, !4532, !4533}
!4530 = !DILocalVariable(name: "sem", arg: 1, scope: !4526, file: !3, line: 240, type: !4214)
!4531 = !DILocalVariable(name: "state", arg: 2, scope: !4526, file: !3, line: 240, type: !103)
!4532 = !DILocalVariable(name: "timeout", arg: 3, scope: !4526, file: !3, line: 241, type: !103)
!4533 = !DILocalVariable(name: "ret", scope: !4526, file: !3, line: 243, type: !105)
!4534 = !DILocation(line: 240, column: 59, scope: !4526)
!4535 = !DILocation(line: 240, column: 69, scope: !4526)
!4536 = !DILocation(line: 241, column: 11, scope: !4526)
!4537 = !DILocation(line: 243, column: 2, scope: !4526)
!4538 = !DILocation(line: 243, column: 6, scope: !4526)
!4539 = !DILocation(line: 245, column: 25, scope: !4526)
!4540 = !DILocation(line: 245, column: 2, scope: !4526)
!4541 = !DILocation(line: 246, column: 23, scope: !4526)
!4542 = !DILocation(line: 246, column: 28, scope: !4526)
!4543 = !DILocation(line: 246, column: 35, scope: !4526)
!4544 = !DILocation(line: 246, column: 8, scope: !4526)
!4545 = !DILocation(line: 246, column: 6, scope: !4526)
!4546 = !DILocation(line: 247, column: 23, scope: !4526)
!4547 = !DILocation(line: 247, column: 28, scope: !4526)
!4548 = !DILocation(line: 247, column: 2, scope: !4526)
!4549 = !DILocation(line: 249, column: 9, scope: !4526)
!4550 = !DILocation(line: 250, column: 1, scope: !4526)
!4551 = !DILocation(line: 249, column: 2, scope: !4526)
!4552 = !DILocation(line: 95, column: 1, scope: !4141)
!4553 = !DILocation(line: 95, column: 1, scope: !4149)
!4554 = !DILocation(line: 95, column: 1, scope: !4148)
!4555 = !DILocation(line: 95, column: 1, scope: !4151)
!4556 = !DILocation(line: 95, column: 1, scope: !4154)
!4557 = !DILocation(line: 95, column: 1, scope: !4156)
!4558 = !{i64 2154752305}
!4559 = !DILocation(line: 95, column: 1, scope: !4152)
!4560 = !DILocation(line: 95, column: 1, scope: !4158)
!4561 = !DILocation(line: 95, column: 1, scope: !4162)
!4562 = !DILocation(line: 95, column: 1, scope: !4161)
!4563 = !DILocation(line: 95, column: 1, scope: !4564)
!4564 = distinct !DILexicalBlock(scope: !4161, file: !4135, line: 95, column: 1)
!4565 = !DILocation(line: 95, column: 1, scope: !4566)
!4566 = distinct !DILexicalBlock(scope: !4161, file: !4135, line: 95, column: 1)
!4567 = !{i64 2154753507, i64 2154753536, i64 2154753582, i64 2154753640, i64 2154753694, i64 2154753748, i64 2154753803, i64 2154753834, i64 2154754142, i64 2154754148, i64 2154754195, i64 2154754218, i64 2154754244}
!4568 = !DILocation(line: 95, column: 1, scope: !4569)
!4569 = distinct !DILexicalBlock(scope: !4161, file: !4135, line: 95, column: 1)
!4570 = !DILocation(line: 95, column: 1, scope: !4159)
!4571 = !DILocation(line: 95, column: 1, scope: !4572)
!4572 = distinct !DILexicalBlock(scope: !4148, file: !4135, line: 95, column: 1)
!4573 = !{i64 2154754596}
!4574 = !DILocation(line: 95, column: 1, scope: !4164)
!4575 = !DILocation(line: 95, column: 1, scope: !4167)
!4576 = !DILocation(line: 95, column: 1, scope: !4577)
!4577 = distinct !DILexicalBlock(scope: !4167, file: !4135, line: 95, column: 1)
!4578 = !DILocation(line: 95, column: 1, scope: !4579)
!4579 = distinct !DILexicalBlock(scope: !4577, file: !4135, line: 95, column: 1)
!4580 = !DILocation(line: 95, column: 1, scope: !4581)
!4581 = distinct !DILexicalBlock(scope: !4164, file: !4135, line: 95, column: 1)
!4582 = !DILocation(line: 95, column: 1, scope: !4583)
!4583 = distinct !DILexicalBlock(scope: !4581, file: !4135, line: 95, column: 1)
!4584 = !DILocation(line: 95, column: 1, scope: !4585)
!4585 = distinct !DILexicalBlock(scope: !4583, file: !4135, line: 95, column: 1)
!4586 = !DILocation(line: 95, column: 1, scope: !4587)
!4587 = distinct !DILexicalBlock(scope: !4148, file: !4135, line: 95, column: 1)
!4588 = !{i64 2154761081}
!4589 = !DILocation(line: 95, column: 1, scope: !4590)
!4590 = distinct !DILexicalBlock(scope: !4587, file: !4135, line: 95, column: 1)
!4591 = !DILocation(line: 95, column: 1, scope: !4592)
!4592 = distinct !DILexicalBlock(scope: !4590, file: !4135, line: 95, column: 1)
!4593 = !{i64 2154761240}
!4594 = distinct !DISubprogram(name: "___down_common", scope: !3, file: !3, line: 209, type: !4527, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4595)
!4595 = !{!4596, !4597, !4598, !4599, !4600, !4601}
!4596 = !DILocalVariable(name: "sem", arg: 1, scope: !4594, file: !3, line: 209, type: !4214)
!4597 = !DILocalVariable(name: "state", arg: 2, scope: !4594, file: !3, line: 209, type: !103)
!4598 = !DILocalVariable(name: "timeout", arg: 3, scope: !4594, file: !3, line: 210, type: !103)
!4599 = !DILocalVariable(name: "waiter", scope: !4594, file: !3, line: 212, type: !4113)
!4600 = !DILabel(scope: !4594, name: "timed_out", file: !3, line: 231)
!4601 = !DILabel(scope: !4594, name: "interrupted", file: !3, line: 235)
!4602 = !DILocation(line: 209, column: 60, scope: !4594)
!4603 = !DILocation(line: 209, column: 70, scope: !4594)
!4604 = !DILocation(line: 210, column: 14, scope: !4594)
!4605 = !DILocation(line: 212, column: 2, scope: !4594)
!4606 = !DILocation(line: 212, column: 26, scope: !4594)
!4607 = !DILocation(line: 214, column: 24, scope: !4594)
!4608 = !DILocation(line: 214, column: 31, scope: !4594)
!4609 = !DILocation(line: 214, column: 36, scope: !4594)
!4610 = !DILocation(line: 214, column: 2, scope: !4594)
!4611 = !DILocation(line: 215, column: 16, scope: !4594)
!4612 = !DILocation(line: 215, column: 9, scope: !4594)
!4613 = !DILocation(line: 215, column: 14, scope: !4594)
!4614 = !DILocation(line: 216, column: 9, scope: !4594)
!4615 = !DILocation(line: 216, column: 12, scope: !4594)
!4616 = !DILocation(line: 218, column: 2, scope: !4594)
!4617 = !DILocation(line: 219, column: 28, scope: !4618)
!4618 = distinct !DILexicalBlock(scope: !4619, file: !3, line: 219, column: 7)
!4619 = distinct !DILexicalBlock(scope: !4620, file: !3, line: 218, column: 11)
!4620 = distinct !DILexicalBlock(scope: !4621, file: !3, line: 218, column: 2)
!4621 = distinct !DILexicalBlock(scope: !4594, file: !3, line: 218, column: 2)
!4622 = !DILocation(line: 219, column: 35, scope: !4618)
!4623 = !DILocation(line: 219, column: 7, scope: !4618)
!4624 = !DILocation(line: 219, column: 7, scope: !4619)
!4625 = !DILocation(line: 220, column: 4, scope: !4618)
!4626 = !DILocation(line: 221, column: 7, scope: !4627)
!4627 = distinct !DILexicalBlock(scope: !4619, file: !3, line: 221, column: 7)
!4628 = !DILocation(line: 221, column: 7, scope: !4619)
!4629 = !DILocation(line: 222, column: 4, scope: !4627)
!4630 = !DILocation(line: 223, column: 3, scope: !4619)
!4631 = !DILocation(line: 223, column: 3, scope: !4632)
!4632 = distinct !DILexicalBlock(scope: !4619, file: !3, line: 223, column: 3)
!4633 = !DILocation(line: 223, column: 3, scope: !4634)
!4634 = distinct !DILexicalBlock(scope: !4632, file: !3, line: 223, column: 3)
!4635 = !DILocation(line: 223, column: 3, scope: !4636)
!4636 = distinct !DILexicalBlock(scope: !4632, file: !3, line: 223, column: 3)
!4637 = !DILocation(line: 223, column: 3, scope: !4638)
!4638 = distinct !DILexicalBlock(scope: !4636, file: !3, line: 223, column: 3)
!4639 = !DILocation(line: 223, column: 3, scope: !4640)
!4640 = distinct !DILexicalBlock(scope: !4636, file: !3, line: 223, column: 3)
!4641 = !DILocation(line: 224, column: 3, scope: !4619)
!4642 = !DILocation(line: 225, column: 30, scope: !4619)
!4643 = !DILocation(line: 225, column: 13, scope: !4619)
!4644 = !DILocation(line: 225, column: 11, scope: !4619)
!4645 = !DILocation(line: 226, column: 3, scope: !4619)
!4646 = !DILocation(line: 227, column: 14, scope: !4647)
!4647 = distinct !DILexicalBlock(scope: !4619, file: !3, line: 227, column: 7)
!4648 = !{i8 0, i8 2}
!4649 = !DILocation(line: 227, column: 7, scope: !4619)
!4650 = !DILocation(line: 228, column: 4, scope: !4647)
!4651 = !DILocation(line: 218, column: 2, scope: !4620)
!4652 = distinct !{!4652, !4653, !4654, !4655}
!4653 = !DILocation(line: 218, column: 2, scope: !4621)
!4654 = !DILocation(line: 229, column: 2, scope: !4621)
!4655 = !{!"llvm.loop.unroll.disable"}
!4656 = !DILocation(line: 231, column: 2, scope: !4594)
!4657 = !DILocation(line: 232, column: 19, scope: !4594)
!4658 = !DILocation(line: 232, column: 2, scope: !4594)
!4659 = !DILocation(line: 233, column: 2, scope: !4594)
!4660 = !DILocation(line: 235, column: 2, scope: !4594)
!4661 = !DILocation(line: 236, column: 19, scope: !4594)
!4662 = !DILocation(line: 236, column: 2, scope: !4594)
!4663 = !DILocation(line: 237, column: 2, scope: !4594)
!4664 = !DILocation(line: 238, column: 1, scope: !4594)
!4665 = !DILocation(line: 122, column: 1, scope: !4172)
!4666 = !DILocation(line: 122, column: 1, scope: !4180)
!4667 = !DILocation(line: 122, column: 1, scope: !4179)
!4668 = !DILocation(line: 122, column: 1, scope: !4182)
!4669 = !DILocation(line: 122, column: 1, scope: !4185)
!4670 = !DILocation(line: 122, column: 1, scope: !4187)
!4671 = !{i64 2154801872}
!4672 = !DILocation(line: 122, column: 1, scope: !4183)
!4673 = !DILocation(line: 122, column: 1, scope: !4189)
!4674 = !DILocation(line: 122, column: 1, scope: !4193)
!4675 = !DILocation(line: 122, column: 1, scope: !4192)
!4676 = !DILocation(line: 122, column: 1, scope: !4677)
!4677 = distinct !DILexicalBlock(scope: !4192, file: !4135, line: 122, column: 1)
!4678 = !DILocation(line: 122, column: 1, scope: !4679)
!4679 = distinct !DILexicalBlock(scope: !4192, file: !4135, line: 122, column: 1)
!4680 = !{i64 2154803068, i64 2154803097, i64 2154803143, i64 2154803201, i64 2154803255, i64 2154803309, i64 2154803364, i64 2154803395, i64 2154803703, i64 2154803709, i64 2154803756, i64 2154803779, i64 2154803805}
!4681 = !DILocation(line: 122, column: 1, scope: !4682)
!4682 = distinct !DILexicalBlock(scope: !4192, file: !4135, line: 122, column: 1)
!4683 = !DILocation(line: 122, column: 1, scope: !4190)
!4684 = !DILocation(line: 122, column: 1, scope: !4685)
!4685 = distinct !DILexicalBlock(scope: !4179, file: !4135, line: 122, column: 1)
!4686 = !{i64 2154804157}
!4687 = !DILocation(line: 122, column: 1, scope: !4195)
!4688 = !DILocation(line: 122, column: 1, scope: !4198)
!4689 = !DILocation(line: 122, column: 1, scope: !4690)
!4690 = distinct !DILexicalBlock(scope: !4198, file: !4135, line: 122, column: 1)
!4691 = !DILocation(line: 122, column: 1, scope: !4692)
!4692 = distinct !DILexicalBlock(scope: !4690, file: !4135, line: 122, column: 1)
!4693 = !DILocation(line: 122, column: 1, scope: !4694)
!4694 = distinct !DILexicalBlock(scope: !4195, file: !4135, line: 122, column: 1)
!4695 = !DILocation(line: 122, column: 1, scope: !4696)
!4696 = distinct !DILexicalBlock(scope: !4694, file: !4135, line: 122, column: 1)
!4697 = !DILocation(line: 122, column: 1, scope: !4698)
!4698 = distinct !DILexicalBlock(scope: !4696, file: !4135, line: 122, column: 1)
!4699 = !DILocation(line: 122, column: 1, scope: !4700)
!4700 = distinct !DILexicalBlock(scope: !4179, file: !4135, line: 122, column: 1)
!4701 = !{i64 2154810516}
!4702 = !DILocation(line: 122, column: 1, scope: !4703)
!4703 = distinct !DILexicalBlock(scope: !4700, file: !4135, line: 122, column: 1)
!4704 = !DILocation(line: 122, column: 1, scope: !4705)
!4705 = distinct !DILexicalBlock(scope: !4703, file: !4135, line: 122, column: 1)
!4706 = !{i64 2154810675}
!4707 = distinct !DISubprogram(name: "static_key_false", scope: !2299, file: !2299, line: 205, type: !4708, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4722)
!4708 = !DISubroutineType(types: !4709)
!4709 = !{!791, !4710}
!4710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4711, size: 64)
!4711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !2299, line: 85, size: 128, elements: !4712)
!4712 = !{!4713, !4714}
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4711, file: !2299, line: 86, baseType: !155, size: 32)
!4714 = !DIDerivedType(tag: DW_TAG_member, scope: !4711, file: !2299, line: 101, baseType: !4715, size: 64, offset: 64)
!4715 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4711, file: !2299, line: 101, size: 64, elements: !4716)
!4716 = !{!4717, !4718, !4719}
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4715, file: !2299, line: 102, baseType: !106, size: 64)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !4715, file: !2299, line: 103, baseType: !2297, size: 64)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4715, file: !2299, line: 104, baseType: !4720, size: 64)
!4720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4721, size: 64)
!4721 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !2299, line: 104, flags: DIFlagFwdDecl)
!4722 = !{!4723}
!4723 = !DILocalVariable(name: "key", arg: 1, scope: !4707, file: !2299, line: 205, type: !4710)
!4724 = !DILocation(line: 205, column: 65, scope: !4707)
!4725 = !DILocation(line: 207, column: 28, scope: !4707)
!4726 = !DILocation(line: 207, column: 9, scope: !4707)
!4727 = !DILocation(line: 207, column: 2, scope: !4707)
!4728 = distinct !DISubprogram(name: "cpu_online", scope: !120, file: !120, line: 1080, type: !4729, scopeLine: 1081, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4731)
!4729 = !DISubroutineType(types: !4730)
!4730 = !{!791, !7}
!4731 = !{!4732}
!4732 = !DILocalVariable(name: "cpu", arg: 1, scope: !4728, file: !120, line: 1080, type: !7)
!4733 = !DILocation(line: 1080, column: 44, scope: !4728)
!4734 = !DILocation(line: 1082, column: 26, scope: !4728)
!4735 = !DILocation(line: 1082, column: 9, scope: !4728)
!4736 = !DILocation(line: 1082, column: 2, scope: !4728)
!4737 = distinct !DISubprogram(name: "__preempt_count_add", scope: !4738, file: !4738, line: 78, type: !3543, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4739)
!4738 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!4739 = !{!4740, !4741, !4743}
!4740 = !DILocalVariable(name: "val", arg: 1, scope: !4737, file: !4738, line: 78, type: !105)
!4741 = !DILocalVariable(name: "pao_ID__", scope: !4742, file: !4738, line: 80, type: !2183)
!4742 = distinct !DILexicalBlock(scope: !4737, file: !4738, line: 80, column: 2)
!4743 = !DILocalVariable(name: "pto_val__", scope: !4744, file: !4738, line: 80, type: !127)
!4744 = distinct !DILexicalBlock(scope: !4745, file: !4738, line: 80, column: 2)
!4745 = distinct !DILexicalBlock(scope: !4746, file: !4738, line: 80, column: 2)
!4746 = distinct !DILexicalBlock(scope: !4742, file: !4738, line: 80, column: 2)
!4747 = !DILocation(line: 78, column: 53, scope: !4737)
!4748 = !DILocation(line: 80, column: 2, scope: !4737)
!4749 = !DILocation(line: 80, column: 2, scope: !4742)
!4750 = !DILocation(line: 80, column: 2, scope: !4746)
!4751 = !DILocation(line: 80, column: 2, scope: !4752)
!4752 = distinct !DILexicalBlock(scope: !4746, file: !4738, line: 80, column: 2)
!4753 = !{i64 2149593859}
!4754 = !DILocation(line: 80, column: 2, scope: !4745)
!4755 = !DILocation(line: 80, column: 2, scope: !4756)
!4756 = distinct !DILexicalBlock(scope: !4745, file: !4738, line: 80, column: 2)
!4757 = !{i64 2149594154}
!4758 = !DILocation(line: 80, column: 2, scope: !4744)
!4759 = !{i64 2149594859}
!4760 = !DILocation(line: 81, column: 1, scope: !4737)
!4761 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !4738, file: !4738, line: 93, type: !1826, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4762)
!4762 = !{!4763}
!4763 = !DILocalVariable(name: "c", scope: !4764, file: !4738, line: 95, type: !791)
!4764 = distinct !DILexicalBlock(scope: !4761, file: !4738, line: 95, column: 9)
!4765 = !DILocation(line: 95, column: 9, scope: !4764)
!4766 = !{i64 2149598215, i64 2149598308}
!4767 = !DILocation(line: 95, column: 9, scope: !4761)
!4768 = !DILocation(line: 95, column: 2, scope: !4761)
!4769 = distinct !DISubprogram(name: "arch_static_branch", scope: !4770, file: !4770, line: 25, type: !4771, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4773)
!4770 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!4771 = !DISubroutineType(types: !4772)
!4772 = !{!791, !4710, !791}
!4773 = !{!4774, !4775, !4776}
!4774 = !DILocalVariable(name: "key", arg: 1, scope: !4769, file: !4770, line: 25, type: !4710)
!4775 = !DILocalVariable(name: "branch", arg: 2, scope: !4769, file: !4770, line: 25, type: !791)
!4776 = !DILabel(scope: !4769, name: "l_yes", file: !4770, line: 33)
!4777 = !DILocation(line: 25, column: 67, scope: !4769)
!4778 = !DILocation(line: 25, column: 77, scope: !4769)
!4779 = !DILocation(line: 30, column: 13, scope: !4769)
!4780 = !DILocation(line: 30, column: 28, scope: !4769)
!4781 = !DILocation(line: 30, column: 26, scope: !4769)
!4782 = !DILocation(line: 27, column: 2, scope: !4769)
!4783 = !{i64 1485956, i64 1486000, i64 2148970683, i64 2148970704, i64 2148970730, i64 2148970763, i64 2148970797, i64 2148970821}
!4784 = !DILocation(line: 32, column: 2, scope: !4769)
!4785 = !DILocation(line: 33, column: 1, scope: !4769)
!4786 = !DILocation(line: 34, column: 2, scope: !4769)
!4787 = !DILocation(line: 35, column: 1, scope: !4769)
!4788 = distinct !DISubprogram(name: "cpumask_test_cpu", scope: !120, file: !120, line: 502, type: !4789, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4791)
!4789 = !DISubroutineType(types: !4790)
!4790 = !{!791, !105, !117}
!4791 = !{!4792, !4793}
!4792 = !DILocalVariable(name: "cpu", arg: 1, scope: !4788, file: !120, line: 502, type: !105)
!4793 = !DILocalVariable(name: "cpumask", arg: 2, scope: !4788, file: !120, line: 502, type: !117)
!4794 = !DILocation(line: 502, column: 50, scope: !4788)
!4795 = !DILocation(line: 502, column: 77, scope: !4788)
!4796 = !DILocation(line: 504, column: 9, scope: !4788)
!4797 = !DILocation(line: 504, column: 2, scope: !4788)
!4798 = distinct !DISubprogram(name: "_test_bit", scope: !4799, file: !4799, line: 139, type: !4800, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4805)
!4799 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!4800 = !DISubroutineType(types: !4801)
!4801 = !{!791, !106, !4802}
!4802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4803, size: 64)
!4803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4804)
!4804 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !106)
!4805 = !{!4806, !4807}
!4806 = !DILocalVariable(name: "nr", arg: 1, scope: !4798, file: !4799, line: 139, type: !106)
!4807 = !DILocalVariable(name: "addr", arg: 2, scope: !4798, file: !4799, line: 139, type: !4802)
!4808 = !DILocation(line: 139, column: 25, scope: !4798)
!4809 = !DILocation(line: 139, column: 59, scope: !4798)
!4810 = !DILocation(line: 141, column: 25, scope: !4798)
!4811 = !DILocation(line: 141, column: 32, scope: !4798)
!4812 = !DILocation(line: 141, column: 30, scope: !4798)
!4813 = !DILocation(line: 141, column: 2, scope: !4798)
!4814 = !DILocation(line: 142, column: 23, scope: !4798)
!4815 = !DILocation(line: 142, column: 27, scope: !4798)
!4816 = !DILocation(line: 142, column: 9, scope: !4798)
!4817 = !DILocation(line: 142, column: 2, scope: !4798)
!4818 = distinct !DISubprogram(name: "cpumask_check", scope: !120, file: !120, line: 148, type: !4819, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4821)
!4819 = !DISubroutineType(types: !4820)
!4820 = !{!7, !7}
!4821 = !{!4822}
!4822 = !DILocalVariable(name: "cpu", arg: 1, scope: !4818, file: !120, line: 148, type: !7)
!4823 = !DILocation(line: 148, column: 64, scope: !4818)
!4824 = !DILocation(line: 150, column: 20, scope: !4818)
!4825 = !DILocation(line: 150, column: 2, scope: !4818)
!4826 = !DILocation(line: 151, column: 9, scope: !4818)
!4827 = !DILocation(line: 151, column: 2, scope: !4818)
!4828 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !4829, file: !4829, line: 66, type: !4830, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4835)
!4829 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!4830 = !DISubroutineType(types: !4831)
!4831 = !{null, !4832, !1101}
!4832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4833, size: 64)
!4833 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4834)
!4834 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4835 = !{!4836, !4837}
!4836 = !DILocalVariable(name: "v", arg: 1, scope: !4828, file: !4829, line: 66, type: !4832)
!4837 = !DILocalVariable(name: "size", arg: 2, scope: !4828, file: !4829, line: 66, type: !1101)
!4838 = !DILocation(line: 66, column: 73, scope: !4828)
!4839 = !DILocation(line: 66, column: 83, scope: !4828)
!4840 = !DILocation(line: 68, column: 19, scope: !4828)
!4841 = !DILocation(line: 68, column: 22, scope: !4828)
!4842 = !DILocation(line: 68, column: 2, scope: !4828)
!4843 = !DILocation(line: 69, column: 2, scope: !4828)
!4844 = !DILocation(line: 70, column: 1, scope: !4828)
!4845 = distinct !DISubprogram(name: "arch_test_bit", scope: !4846, file: !4846, line: 237, type: !4800, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4847)
!4846 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!4847 = !{!4848, !4849}
!4848 = !DILocalVariable(name: "nr", arg: 1, scope: !4845, file: !4846, line: 237, type: !106)
!4849 = !DILocalVariable(name: "addr", arg: 2, scope: !4845, file: !4846, line: 237, type: !4802)
!4850 = !DILocation(line: 237, column: 29, scope: !4845)
!4851 = !DILocation(line: 237, column: 63, scope: !4845)
!4852 = !DILocation(line: 239, column: 30, scope: !4845)
!4853 = !DILocation(line: 239, column: 9, scope: !4845)
!4854 = !DILocation(line: 239, column: 54, scope: !4845)
!4855 = !DILocation(line: 239, column: 58, scope: !4845)
!4856 = !DILocation(line: 239, column: 36, scope: !4845)
!4857 = !DILocation(line: 240, column: 26, scope: !4845)
!4858 = !DILocation(line: 240, column: 30, scope: !4845)
!4859 = !DILocation(line: 240, column: 8, scope: !4845)
!4860 = !DILocation(line: 239, column: 2, scope: !4845)
!4861 = distinct !DISubprogram(name: "kasan_check_read", scope: !4862, file: !4862, line: 40, type: !4863, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4865)
!4862 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!4863 = !DISubroutineType(types: !4864)
!4864 = !{!791, !4832, !7}
!4865 = !{!4866, !4867}
!4866 = !DILocalVariable(name: "p", arg: 1, scope: !4861, file: !4862, line: 40, type: !4832)
!4867 = !DILocalVariable(name: "size", arg: 2, scope: !4861, file: !4862, line: 40, type: !7)
!4868 = !DILocation(line: 40, column: 58, scope: !4861)
!4869 = !DILocation(line: 40, column: 74, scope: !4861)
!4870 = !DILocation(line: 42, column: 2, scope: !4861)
!4871 = distinct !DISubprogram(name: "kcsan_check_access", scope: !4872, file: !4872, line: 229, type: !4873, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4875)
!4872 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!4873 = !DISubroutineType(types: !4874)
!4874 = !{null, !4832, !1101, !105}
!4875 = !{!4876, !4877, !4878}
!4876 = !DILocalVariable(name: "ptr", arg: 1, scope: !4871, file: !4872, line: 229, type: !4832)
!4877 = !DILocalVariable(name: "size", arg: 2, scope: !4871, file: !4872, line: 229, type: !1101)
!4878 = !DILocalVariable(name: "type", arg: 3, scope: !4871, file: !4872, line: 230, type: !105)
!4879 = !DILocation(line: 229, column: 60, scope: !4871)
!4880 = !DILocation(line: 229, column: 72, scope: !4871)
!4881 = !DILocation(line: 230, column: 15, scope: !4871)
!4882 = !DILocation(line: 230, column: 23, scope: !4871)
!4883 = distinct !DISubprogram(name: "constant_test_bit", scope: !4846, file: !4846, line: 204, type: !4884, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4886)
!4884 = !DISubroutineType(types: !4885)
!4885 = !{!791, !103, !4802}
!4886 = !{!4887, !4888}
!4887 = !DILocalVariable(name: "nr", arg: 1, scope: !4883, file: !4846, line: 204, type: !103)
!4888 = !DILocalVariable(name: "addr", arg: 2, scope: !4883, file: !4846, line: 204, type: !4802)
!4889 = !DILocation(line: 204, column: 52, scope: !4883)
!4890 = !DILocation(line: 204, column: 86, scope: !4883)
!4891 = !DILocation(line: 206, column: 19, scope: !4883)
!4892 = !DILocation(line: 206, column: 22, scope: !4883)
!4893 = !DILocation(line: 206, column: 15, scope: !4883)
!4894 = !DILocation(line: 207, column: 4, scope: !4883)
!4895 = !DILocation(line: 207, column: 9, scope: !4883)
!4896 = !DILocation(line: 207, column: 12, scope: !4883)
!4897 = !DILocation(line: 206, column: 44, scope: !4883)
!4898 = !DILocation(line: 207, column: 37, scope: !4883)
!4899 = !DILocation(line: 206, column: 2, scope: !4883)
!4900 = distinct !DISubprogram(name: "variable_test_bit", scope: !4846, file: !4846, line: 224, type: !4884, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4901)
!4901 = !{!4902, !4903, !4904}
!4902 = !DILocalVariable(name: "nr", arg: 1, scope: !4900, file: !4846, line: 224, type: !103)
!4903 = !DILocalVariable(name: "addr", arg: 2, scope: !4900, file: !4846, line: 224, type: !4802)
!4904 = !DILocalVariable(name: "oldbit", scope: !4900, file: !4846, line: 226, type: !791)
!4905 = !DILocation(line: 224, column: 52, scope: !4900)
!4906 = !DILocation(line: 224, column: 86, scope: !4900)
!4907 = !DILocation(line: 226, column: 2, scope: !4900)
!4908 = !DILocation(line: 226, column: 7, scope: !4900)
!4909 = !DILocation(line: 231, column: 33, scope: !4900)
!4910 = !DILocation(line: 231, column: 46, scope: !4900)
!4911 = !DILocation(line: 228, column: 2, scope: !4900)
!4912 = !{i64 2147805719, i64 2147805793}
!4913 = !DILocation(line: 233, column: 9, scope: !4900)
!4914 = !DILocation(line: 234, column: 1, scope: !4900)
!4915 = !DILocation(line: 233, column: 2, scope: !4900)
!4916 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !120, file: !120, line: 140, type: !4917, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4919)
!4917 = !DISubroutineType(types: !4918)
!4918 = !{null, !7, !7}
!4919 = !{!4920, !4921}
!4920 = !DILocalVariable(name: "cpu", arg: 1, scope: !4916, file: !120, line: 140, type: !7)
!4921 = !DILocalVariable(name: "bits", arg: 2, scope: !4916, file: !120, line: 140, type: !7)
!4922 = !DILocation(line: 140, column: 60, scope: !4916)
!4923 = !DILocation(line: 140, column: 78, scope: !4916)
!4924 = !DILocation(line: 145, column: 1, scope: !4916)
!4925 = distinct !DISubprogram(name: "list_add_tail", scope: !4490, file: !4490, line: 181, type: !4926, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4928)
!4926 = !DISubroutineType(types: !4927)
!4927 = !{null, !97, !97}
!4928 = !{!4929, !4930}
!4929 = !DILocalVariable(name: "new", arg: 1, scope: !4925, file: !4490, line: 181, type: !97)
!4930 = !DILocalVariable(name: "head", arg: 2, scope: !4925, file: !4490, line: 181, type: !97)
!4931 = !DILocation(line: 181, column: 52, scope: !4925)
!4932 = !DILocation(line: 181, column: 75, scope: !4925)
!4933 = !DILocation(line: 183, column: 13, scope: !4925)
!4934 = !DILocation(line: 183, column: 18, scope: !4925)
!4935 = !DILocation(line: 183, column: 24, scope: !4925)
!4936 = !DILocation(line: 183, column: 30, scope: !4925)
!4937 = !DILocation(line: 183, column: 2, scope: !4925)
!4938 = !DILocation(line: 184, column: 1, scope: !4925)
!4939 = distinct !DISubprogram(name: "get_current", scope: !4940, file: !4940, line: 39, type: !4941, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4943)
!4940 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!4941 = !DISubroutineType(types: !4942)
!4942 = !{!135}
!4943 = !{!4944, !4946, !4948}
!4944 = !DILocalVariable(name: "pscr_ret__", scope: !4945, file: !4940, line: 41, type: !135)
!4945 = distinct !DILexicalBlock(scope: !4939, file: !4940, line: 41, column: 9)
!4946 = !DILocalVariable(name: "__vpp_verify", scope: !4947, file: !4940, line: 41, type: !1836)
!4947 = distinct !DILexicalBlock(scope: !4945, file: !4940, line: 41, column: 9)
!4948 = !DILocalVariable(name: "pfo_val__", scope: !4949, file: !4940, line: 41, type: !209)
!4949 = distinct !DILexicalBlock(scope: !4945, file: !4940, line: 41, column: 9)
!4950 = !DILocation(line: 41, column: 9, scope: !4945)
!4951 = !DILocation(line: 41, column: 9, scope: !4947)
!4952 = !DILocation(line: 41, column: 9, scope: !4949)
!4953 = !{i64 2148196954}
!4954 = !DILocation(line: 41, column: 9, scope: !4939)
!4955 = !DILocation(line: 41, column: 2, scope: !4939)
!4956 = distinct !DISubprogram(name: "signal_pending_state", scope: !3389, file: !3389, line: 414, type: !4957, scopeLine: 415, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4959)
!4957 = !DISubroutineType(types: !4958)
!4958 = !{!105, !7, !135}
!4959 = !{!4960, !4961}
!4960 = !DILocalVariable(name: "state", arg: 1, scope: !4956, file: !3389, line: 414, type: !7)
!4961 = !DILocalVariable(name: "p", arg: 2, scope: !4956, file: !3389, line: 414, type: !135)
!4962 = !DILocation(line: 414, column: 53, scope: !4956)
!4963 = !DILocation(line: 414, column: 80, scope: !4956)
!4964 = !DILocation(line: 416, column: 8, scope: !4965)
!4965 = distinct !DILexicalBlock(scope: !4956, file: !3389, line: 416, column: 6)
!4966 = !DILocation(line: 416, column: 14, scope: !4965)
!4967 = !DILocation(line: 416, column: 6, scope: !4956)
!4968 = !DILocation(line: 417, column: 3, scope: !4965)
!4969 = !DILocation(line: 418, column: 22, scope: !4970)
!4970 = distinct !DILexicalBlock(scope: !4956, file: !3389, line: 418, column: 6)
!4971 = !DILocation(line: 418, column: 7, scope: !4970)
!4972 = !DILocation(line: 418, column: 6, scope: !4956)
!4973 = !DILocation(line: 419, column: 3, scope: !4970)
!4974 = !DILocation(line: 421, column: 10, scope: !4956)
!4975 = !DILocation(line: 421, column: 16, scope: !4956)
!4976 = !DILocation(line: 421, column: 38, scope: !4956)
!4977 = !DILocation(line: 421, column: 64, scope: !4956)
!4978 = !DILocation(line: 421, column: 41, scope: !4956)
!4979 = !DILocation(line: 421, column: 2, scope: !4956)
!4980 = !DILocation(line: 422, column: 1, scope: !4956)
!4981 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !4258, file: !4258, line: 41, type: !4982, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4982 = !DISubroutineType(types: !4983)
!4983 = !{null, !4261}
!4984 = !DISubprogram(name: "schedule_timeout", scope: !137, file: !137, line: 298, type: !4985, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4985 = !DISubroutineType(types: !4986)
!4986 = !{!103, !103}
!4987 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !4258, file: !4258, line: 29, type: !4982, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4988 = distinct !DISubprogram(name: "list_del", scope: !4490, file: !4490, line: 227, type: !4989, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4991)
!4989 = !DISubroutineType(types: !4990)
!4990 = !{null, !97}
!4991 = !{!4992}
!4992 = !DILocalVariable(name: "entry", arg: 1, scope: !4988, file: !4490, line: 227, type: !97)
!4993 = !DILocation(line: 227, column: 47, scope: !4988)
!4994 = !DILocation(line: 229, column: 19, scope: !4988)
!4995 = !DILocation(line: 229, column: 2, scope: !4988)
!4996 = !DILocation(line: 230, column: 2, scope: !4988)
!4997 = !DILocation(line: 230, column: 9, scope: !4988)
!4998 = !DILocation(line: 230, column: 14, scope: !4988)
!4999 = !DILocation(line: 231, column: 2, scope: !4988)
!5000 = !DILocation(line: 231, column: 9, scope: !4988)
!5001 = !DILocation(line: 231, column: 14, scope: !4988)
!5002 = !DILocation(line: 232, column: 1, scope: !4988)
!5003 = distinct !DISubprogram(name: "__list_add", scope: !4490, file: !4490, line: 146, type: !5004, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5006)
!5004 = !DISubroutineType(types: !5005)
!5005 = !{null, !97, !97, !97}
!5006 = !{!5007, !5008, !5009}
!5007 = !DILocalVariable(name: "new", arg: 1, scope: !5003, file: !4490, line: 146, type: !97)
!5008 = !DILocalVariable(name: "prev", arg: 2, scope: !5003, file: !4490, line: 147, type: !97)
!5009 = !DILocalVariable(name: "next", arg: 3, scope: !5003, file: !4490, line: 148, type: !97)
!5010 = !DILocation(line: 146, column: 49, scope: !5003)
!5011 = !DILocation(line: 147, column: 28, scope: !5003)
!5012 = !DILocation(line: 148, column: 28, scope: !5003)
!5013 = !DILocation(line: 150, column: 24, scope: !5014)
!5014 = distinct !DILexicalBlock(scope: !5003, file: !4490, line: 150, column: 6)
!5015 = !DILocation(line: 150, column: 29, scope: !5014)
!5016 = !DILocation(line: 150, column: 35, scope: !5014)
!5017 = !DILocation(line: 150, column: 7, scope: !5014)
!5018 = !DILocation(line: 150, column: 6, scope: !5003)
!5019 = !DILocation(line: 151, column: 3, scope: !5014)
!5020 = !DILocation(line: 153, column: 15, scope: !5003)
!5021 = !DILocation(line: 153, column: 2, scope: !5003)
!5022 = !DILocation(line: 153, column: 8, scope: !5003)
!5023 = !DILocation(line: 153, column: 13, scope: !5003)
!5024 = !DILocation(line: 154, column: 14, scope: !5003)
!5025 = !DILocation(line: 154, column: 2, scope: !5003)
!5026 = !DILocation(line: 154, column: 7, scope: !5003)
!5027 = !DILocation(line: 154, column: 12, scope: !5003)
!5028 = !DILocation(line: 155, column: 14, scope: !5003)
!5029 = !DILocation(line: 155, column: 2, scope: !5003)
!5030 = !DILocation(line: 155, column: 7, scope: !5003)
!5031 = !DILocation(line: 155, column: 12, scope: !5003)
!5032 = !DILocation(line: 156, column: 2, scope: !5003)
!5033 = !DILocation(line: 156, column: 2, scope: !5034)
!5034 = distinct !DILexicalBlock(scope: !5003, file: !4490, line: 156, column: 2)
!5035 = !DILocation(line: 156, column: 2, scope: !5036)
!5036 = distinct !DILexicalBlock(scope: !5034, file: !4490, line: 156, column: 2)
!5037 = !DILocation(line: 156, column: 2, scope: !5038)
!5038 = distinct !DILexicalBlock(scope: !5034, file: !4490, line: 156, column: 2)
!5039 = !DILocation(line: 157, column: 1, scope: !5003)
!5040 = distinct !DISubprogram(name: "__list_add_valid", scope: !4490, file: !4490, line: 128, type: !5041, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5043)
!5041 = !DISubroutineType(types: !5042)
!5042 = !{!791, !97, !97, !97}
!5043 = !{!5044, !5045, !5046}
!5044 = !DILocalVariable(name: "new", arg: 1, scope: !5040, file: !4490, line: 128, type: !97)
!5045 = !DILocalVariable(name: "prev", arg: 2, scope: !5040, file: !4490, line: 129, type: !97)
!5046 = !DILocalVariable(name: "next", arg: 3, scope: !5040, file: !4490, line: 130, type: !97)
!5047 = !DILocation(line: 128, column: 55, scope: !5040)
!5048 = !DILocation(line: 129, column: 23, scope: !5040)
!5049 = !DILocation(line: 130, column: 23, scope: !5040)
!5050 = !DILocation(line: 132, column: 2, scope: !5040)
!5051 = distinct !DISubprogram(name: "signal_pending", scope: !3389, file: !3389, line: 392, type: !5052, scopeLine: 393, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5054)
!5052 = !DISubroutineType(types: !5053)
!5053 = !{!105, !135}
!5054 = !{!5055}
!5055 = !DILocalVariable(name: "p", arg: 1, scope: !5051, file: !3389, line: 392, type: !135)
!5056 = !DILocation(line: 392, column: 54, scope: !5051)
!5057 = !DILocation(line: 399, column: 6, scope: !5058)
!5058 = distinct !DILexicalBlock(scope: !5051, file: !3389, line: 399, column: 6)
!5059 = !DILocation(line: 399, column: 6, scope: !5051)
!5060 = !DILocation(line: 400, column: 3, scope: !5058)
!5061 = !DILocation(line: 401, column: 25, scope: !5051)
!5062 = !DILocation(line: 401, column: 9, scope: !5051)
!5063 = !DILocation(line: 401, column: 2, scope: !5051)
!5064 = !DILocation(line: 402, column: 1, scope: !5051)
!5065 = distinct !DISubprogram(name: "__fatal_signal_pending", scope: !3389, file: !3389, line: 404, type: !5052, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5066)
!5066 = !{!5067}
!5067 = !DILocalVariable(name: "p", arg: 1, scope: !5065, file: !3389, line: 404, type: !135)
!5068 = !DILocation(line: 404, column: 62, scope: !5065)
!5069 = !DILocation(line: 406, column: 9, scope: !5065)
!5070 = !DILocation(line: 406, column: 2, scope: !5065)
!5071 = distinct !DISubprogram(name: "test_tsk_thread_flag", scope: !137, file: !137, line: 2066, type: !5072, scopeLine: 2067, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5074)
!5072 = !DISubroutineType(types: !5073)
!5073 = !{!105, !135, !105}
!5074 = !{!5075, !5076}
!5075 = !DILocalVariable(name: "tsk", arg: 1, scope: !5071, file: !137, line: 2066, type: !135)
!5076 = !DILocalVariable(name: "flag", arg: 2, scope: !5071, file: !137, line: 2066, type: !105)
!5077 = !DILocation(line: 2066, column: 60, scope: !5071)
!5078 = !DILocation(line: 2066, column: 69, scope: !5071)
!5079 = !DILocation(line: 2068, column: 29, scope: !5071)
!5080 = !DILocation(line: 2068, column: 52, scope: !5071)
!5081 = !DILocation(line: 2068, column: 9, scope: !5071)
!5082 = !DILocation(line: 2068, column: 2, scope: !5071)
!5083 = distinct !DISubprogram(name: "task_sigpending", scope: !3389, file: !3389, line: 387, type: !5052, scopeLine: 388, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5084)
!5084 = !{!5085}
!5085 = !DILocalVariable(name: "p", arg: 1, scope: !5083, file: !3389, line: 387, type: !135)
!5086 = !DILocation(line: 387, column: 55, scope: !5083)
!5087 = !DILocation(line: 389, column: 9, scope: !5083)
!5088 = !DILocation(line: 389, column: 2, scope: !5083)
!5089 = distinct !DISubprogram(name: "test_ti_thread_flag", scope: !5090, file: !5090, line: 116, type: !5091, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5094)
!5090 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!5091 = !DISubroutineType(types: !5092)
!5092 = !{!105, !5093, !105}
!5093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!5094 = !{!5095, !5096}
!5095 = !DILocalVariable(name: "ti", arg: 1, scope: !5089, file: !5090, line: 116, type: !5093)
!5096 = !DILocalVariable(name: "flag", arg: 2, scope: !5089, file: !5090, line: 116, type: !105)
!5097 = !DILocation(line: 116, column: 59, scope: !5089)
!5098 = !DILocation(line: 116, column: 67, scope: !5089)
!5099 = !DILocation(line: 118, column: 9, scope: !5089)
!5100 = !DILocation(line: 118, column: 2, scope: !5089)
!5101 = distinct !DISubprogram(name: "const_test_bit", scope: !5102, file: !5102, line: 166, type: !4800, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5103)
!5102 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!5103 = !{!5104, !5105, !5106, !5107, !5108}
!5104 = !DILocalVariable(name: "nr", arg: 1, scope: !5101, file: !5102, line: 166, type: !106)
!5105 = !DILocalVariable(name: "addr", arg: 2, scope: !5101, file: !5102, line: 166, type: !4802)
!5106 = !DILocalVariable(name: "p", scope: !5101, file: !5102, line: 168, type: !4111)
!5107 = !DILocalVariable(name: "mask", scope: !5101, file: !5102, line: 169, type: !106)
!5108 = !DILocalVariable(name: "val", scope: !5101, file: !5102, line: 170, type: !106)
!5109 = !DILocation(line: 166, column: 30, scope: !5101)
!5110 = !DILocation(line: 166, column: 64, scope: !5101)
!5111 = !DILocation(line: 168, column: 2, scope: !5101)
!5112 = !DILocation(line: 168, column: 23, scope: !5101)
!5113 = !DILocation(line: 168, column: 50, scope: !5101)
!5114 = !DILocation(line: 168, column: 57, scope: !5101)
!5115 = !DILocation(line: 168, column: 55, scope: !5101)
!5116 = !DILocation(line: 169, column: 2, scope: !5101)
!5117 = !DILocation(line: 169, column: 16, scope: !5101)
!5118 = !DILocation(line: 169, column: 23, scope: !5101)
!5119 = !DILocation(line: 170, column: 2, scope: !5101)
!5120 = !DILocation(line: 170, column: 16, scope: !5101)
!5121 = !DILocation(line: 170, column: 23, scope: !5101)
!5122 = !DILocation(line: 170, column: 22, scope: !5101)
!5123 = !DILocation(line: 172, column: 12, scope: !5101)
!5124 = !DILocation(line: 172, column: 18, scope: !5101)
!5125 = !DILocation(line: 172, column: 16, scope: !5101)
!5126 = !DILocation(line: 172, column: 10, scope: !5101)
!5127 = !DILocation(line: 172, column: 9, scope: !5101)
!5128 = !DILocation(line: 173, column: 1, scope: !5101)
!5129 = !DILocation(line: 172, column: 2, scope: !5101)
!5130 = distinct !DISubprogram(name: "sigismember", scope: !5131, file: !5131, line: 82, type: !5132, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5135)
!5131 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!5132 = !DISubroutineType(types: !5133)
!5133 = !{!105, !5134, !105}
!5134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 64)
!5135 = !{!5136, !5137, !5138}
!5136 = !DILocalVariable(name: "set", arg: 1, scope: !5130, file: !5131, line: 82, type: !5134)
!5137 = !DILocalVariable(name: "_sig", arg: 2, scope: !5130, file: !5131, line: 82, type: !105)
!5138 = !DILocalVariable(name: "sig", scope: !5130, file: !5131, line: 84, type: !106)
!5139 = !DILocation(line: 82, column: 41, scope: !5130)
!5140 = !DILocation(line: 82, column: 50, scope: !5130)
!5141 = !DILocation(line: 84, column: 2, scope: !5130)
!5142 = !DILocation(line: 84, column: 16, scope: !5130)
!5143 = !DILocation(line: 84, column: 22, scope: !5130)
!5144 = !DILocation(line: 84, column: 27, scope: !5130)
!5145 = !DILocation(line: 86, column: 15, scope: !5146)
!5146 = distinct !DILexicalBlock(scope: !5130, file: !5131, line: 85, column: 6)
!5147 = !DILocation(line: 86, column: 20, scope: !5146)
!5148 = !DILocation(line: 86, column: 30, scope: !5146)
!5149 = !DILocation(line: 86, column: 27, scope: !5146)
!5150 = !DILocation(line: 86, column: 12, scope: !5146)
!5151 = !DILocation(line: 86, column: 10, scope: !5146)
!5152 = !DILocation(line: 89, column: 1, scope: !5130)
!5153 = !DILocation(line: 86, column: 3, scope: !5146)
!5154 = distinct !DISubprogram(name: "__list_del_entry", scope: !4490, file: !4490, line: 213, type: !4989, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5155)
!5155 = !{!5156}
!5156 = !DILocalVariable(name: "entry", arg: 1, scope: !5154, file: !4490, line: 213, type: !97)
!5157 = !DILocation(line: 213, column: 55, scope: !5154)
!5158 = !DILocation(line: 215, column: 30, scope: !5159)
!5159 = distinct !DILexicalBlock(scope: !5154, file: !4490, line: 215, column: 6)
!5160 = !DILocation(line: 215, column: 7, scope: !5159)
!5161 = !DILocation(line: 215, column: 6, scope: !5154)
!5162 = !DILocation(line: 216, column: 3, scope: !5159)
!5163 = !DILocation(line: 218, column: 13, scope: !5154)
!5164 = !DILocation(line: 218, column: 20, scope: !5154)
!5165 = !DILocation(line: 218, column: 26, scope: !5154)
!5166 = !DILocation(line: 218, column: 33, scope: !5154)
!5167 = !DILocation(line: 218, column: 2, scope: !5154)
!5168 = !DILocation(line: 219, column: 1, scope: !5154)
!5169 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !4490, file: !4490, line: 134, type: !5170, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5172)
!5170 = !DISubroutineType(types: !5171)
!5171 = !{!791, !97}
!5172 = !{!5173}
!5173 = !DILocalVariable(name: "entry", arg: 1, scope: !5169, file: !4490, line: 134, type: !97)
!5174 = !DILocation(line: 134, column: 61, scope: !5169)
!5175 = !DILocation(line: 136, column: 2, scope: !5169)
!5176 = distinct !DISubprogram(name: "__list_del", scope: !4490, file: !4490, line: 193, type: !4926, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5177)
!5177 = !{!5178, !5179}
!5178 = !DILocalVariable(name: "prev", arg: 1, scope: !5176, file: !4490, line: 193, type: !97)
!5179 = !DILocalVariable(name: "next", arg: 2, scope: !5176, file: !4490, line: 193, type: !97)
!5180 = !DILocation(line: 193, column: 50, scope: !5176)
!5181 = !DILocation(line: 193, column: 75, scope: !5176)
!5182 = !DILocation(line: 195, column: 15, scope: !5176)
!5183 = !DILocation(line: 195, column: 2, scope: !5176)
!5184 = !DILocation(line: 195, column: 8, scope: !5176)
!5185 = !DILocation(line: 195, column: 13, scope: !5176)
!5186 = !DILocation(line: 196, column: 2, scope: !5176)
!5187 = !DILocation(line: 196, column: 2, scope: !5188)
!5188 = distinct !DILexicalBlock(scope: !5176, file: !4490, line: 196, column: 2)
!5189 = !DILocation(line: 196, column: 2, scope: !5190)
!5190 = distinct !DILexicalBlock(scope: !5188, file: !4490, line: 196, column: 2)
!5191 = !DILocation(line: 196, column: 2, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !5188, file: !4490, line: 196, column: 2)
!5193 = !DILocation(line: 197, column: 1, scope: !5176)
!5194 = !DISubprogram(name: "wake_up_process", scope: !137, file: !137, line: 1998, type: !5052, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
