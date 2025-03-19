; ModuleID = 'kernel/stacktrace.c'
source_filename = "kernel/stacktrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_stack_trace_print: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad stack_trace_print ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_stack_trace_snprint: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad stack_trace_snprint ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_stack_trace_save: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad stack_trace_save ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_filter_irq_stacks: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad filter_irq_stacks ; .previous"

%struct.pcpu_hot = type { %union.anon.15 }
%union.anon.15 = type { %struct.anon.16, [16 x i8] }
%struct.anon.16 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.stacktrace_cookie = type { ptr, i32, i32, i32 }
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
%struct.atomic_t = type { i32 }
%struct.syscall_user_dispatch = type { ptr, i64, i64, i8 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
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
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon.13, i64, i64, %union.anon.14 }
%union.anon.13 = type { i64 }
%union.anon.14 = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c"kernel/stacktrace.c\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [8 x i8] c"%*c%pS\0A\00", align 1, !dbg !7
@__UNIQUE_ID___addressable_stack_trace_print287 = internal global ptr @stack_trace_print, section ".discard.addressable", align 8, !dbg !12
@__UNIQUE_ID___addressable_stack_trace_snprint288 = internal global ptr @stack_trace_snprint, section ".discard.addressable", align 8, !dbg !4047
@__UNIQUE_ID___addressable_stack_trace_save289 = internal global ptr @stack_trace_save, section ".discard.addressable", align 8, !dbg !4049
@__UNIQUE_ID___addressable_filter_irq_stacks290 = internal global ptr @filter_irq_stacks, section ".discard.addressable", align 8, !dbg !4051
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@__irqentry_text_start = external dso_local global [0 x i8], align 1
@__irqentry_text_end = external dso_local global [0 x i8], align 1
@__softirqentry_text_start = external dso_local global [0 x i8], align 1
@__softirqentry_text_end = external dso_local global [0 x i8], align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID___addressable_stack_trace_print287, ptr @__UNIQUE_ID___addressable_stack_trace_snprint288, ptr @__UNIQUE_ID___addressable_stack_trace_save289, ptr @__UNIQUE_ID___addressable_filter_irq_stacks290], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @stack_trace_print(ptr noundef %entries, i32 noundef %nr_entries, i32 noundef %spaces) #0 align 16 !dbg !4062 {
entry:
  %entries.addr = alloca ptr, align 8
  %nr_entries.addr = alloca i32, align 4
  %spaces.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp32 = alloca i32, align 4
  store ptr %entries, ptr %entries.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entries.addr, metadata !4067, metadata !DIExpression()), !dbg !4077
  store i32 %nr_entries, ptr %nr_entries.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr_entries.addr, metadata !4068, metadata !DIExpression()), !dbg !4078
  store i32 %spaces, ptr %spaces.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %spaces.addr, metadata !4069, metadata !DIExpression()), !dbg !4079
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !4080
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4070, metadata !DIExpression()), !dbg !4081
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !4082
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4071, metadata !DIExpression()), !dbg !4082
  %0 = load ptr, ptr %entries.addr, align 8, !dbg !4082
  %tobool = icmp ne ptr %0, null, !dbg !4082
  %lnot = xor i1 %tobool, true, !dbg !4082
  %lnot1 = xor i1 %lnot, true, !dbg !4082
  %lnot2 = xor i1 %lnot1, true, !dbg !4082
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4082
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4082
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !4083
  %tobool3 = icmp ne i32 %1, 0, !dbg !4083
  %lnot4 = xor i1 %tobool3, true, !dbg !4083
  %lnot6 = xor i1 %lnot4, true, !dbg !4083
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !4083
  %conv = sext i32 %lnot.ext7 to i64, !dbg !4083
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4083
  %tobool8 = icmp ne i64 %expval, 0, !dbg !4083
  br i1 %tobool8, label %if.then, label %if.end, !dbg !4082

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4083

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #9, !dbg !4084
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4074, metadata !DIExpression()), !dbg !4084
  store i32 2305, ptr %__flags, align 4, !dbg !4084
  br label %do.body9, !dbg !4084

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !4085

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !4085

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !4084

do.body10:                                        ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !4087
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 29, i32 %2, i64 12) #9, !dbg !4087, !srcloc !4089
  br label %do.cond11, !dbg !4087

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !4087

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !4084

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !4090

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !4090

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #9, !dbg !4083
  br label %do.cond16, !dbg !4084

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !4084

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !4084

if.end:                                           ; preds = %do.end17, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !4082
  %tobool18 = icmp ne i32 %3, 0, !dbg !4082
  %lnot19 = xor i1 %tobool18, true, !dbg !4082
  %lnot21 = xor i1 %lnot19, true, !dbg !4082
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !4082
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !4082
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !4082
  store i64 %expval24, ptr %tmp, align 8, !dbg !4083
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !4092
  %4 = load i64, ptr %tmp, align 8, !dbg !4082
  %tobool25 = icmp ne i64 %4, 0, !dbg !4092
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !4093

if.then26:                                        ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4094

if.end27:                                         ; preds = %if.end
  store i32 0, ptr %i, align 4, !dbg !4095
  br label %for.cond, !dbg !4097

for.cond:                                         ; preds = %for.inc, %if.end27
  %5 = load i32, ptr %i, align 4, !dbg !4098
  %6 = load i32, ptr %nr_entries.addr, align 4, !dbg !4100
  %cmp = icmp ult i32 %5, %6, !dbg !4101
  br i1 %cmp, label %for.body, label %for.end, !dbg !4102

for.body:                                         ; preds = %for.cond
  br label %do.body29, !dbg !4103

do.body29:                                        ; preds = %for.body
  br label %do.cond30, !dbg !4105

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !4105

do.end31:                                         ; preds = %do.cond30
  %7 = load i32, ptr %spaces.addr, align 4, !dbg !4103
  %add = add i32 1, %7, !dbg !4103
  %8 = load ptr, ptr %entries.addr, align 8, !dbg !4103
  %9 = load i32, ptr %i, align 4, !dbg !4103
  %idxprom = zext i32 %9 to i64, !dbg !4103
  %arrayidx = getelementptr i64, ptr %8, i64 %idxprom, !dbg !4103
  %10 = load i64, ptr %arrayidx, align 8, !dbg !4103
  %11 = inttoptr i64 %10 to ptr, !dbg !4103
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, i32 noundef %add, i32 noundef 32, ptr noundef %11) #10, !dbg !4103
  store i32 %call, ptr %tmp32, align 4, !dbg !4105
  %12 = load i32, ptr %tmp32, align 4, !dbg !4103
  br label %for.inc, !dbg !4107

for.inc:                                          ; preds = %do.end31
  %13 = load i32, ptr %i, align 4, !dbg !4108
  %inc = add i32 %13, 1, !dbg !4108
  store i32 %inc, ptr %i, align 4, !dbg !4108
  br label %for.cond, !dbg !4109, !llvm.loop !4110

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4114
  br label %cleanup, !dbg !4114

cleanup:                                          ; preds = %for.end, %if.then26
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !4114
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4114

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !4115 dso_local i32 @_printk(ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @stack_trace_snprint(ptr noundef %buf, i64 noundef %size, ptr noundef %entries, i32 noundef %nr_entries, i32 noundef %spaces) #0 align 16 !dbg !4119 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %entries.addr = alloca ptr, align 8
  %nr_entries.addr = alloca i32, align 4
  %spaces.addr = alloca i32, align 4
  %generated = alloca i32, align 4
  %i = alloca i32, align 4
  %total = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4123, metadata !DIExpression()), !dbg !4137
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4124, metadata !DIExpression()), !dbg !4138
  store ptr %entries, ptr %entries.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entries.addr, metadata !4125, metadata !DIExpression()), !dbg !4139
  store i32 %nr_entries, ptr %nr_entries.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr_entries.addr, metadata !4126, metadata !DIExpression()), !dbg !4140
  store i32 %spaces, ptr %spaces.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %spaces.addr, metadata !4127, metadata !DIExpression()), !dbg !4141
  call void @llvm.lifetime.start.p0(i64 4, ptr %generated) #9, !dbg !4142
  call void @llvm.dbg.declare(metadata ptr %generated, metadata !4128, metadata !DIExpression()), !dbg !4143
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !4142
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4129, metadata !DIExpression()), !dbg !4144
  call void @llvm.lifetime.start.p0(i64 4, ptr %total) #9, !dbg !4142
  call void @llvm.dbg.declare(metadata ptr %total, metadata !4130, metadata !DIExpression()), !dbg !4145
  store i32 0, ptr %total, align 4, !dbg !4145
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !4146
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4131, metadata !DIExpression()), !dbg !4146
  %0 = load ptr, ptr %entries.addr, align 8, !dbg !4146
  %tobool = icmp ne ptr %0, null, !dbg !4146
  %lnot = xor i1 %tobool, true, !dbg !4146
  %lnot1 = xor i1 %lnot, true, !dbg !4146
  %lnot2 = xor i1 %lnot1, true, !dbg !4146
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4146
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4146
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !4147
  %tobool3 = icmp ne i32 %1, 0, !dbg !4147
  %lnot4 = xor i1 %tobool3, true, !dbg !4147
  %lnot6 = xor i1 %lnot4, true, !dbg !4147
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !4147
  %conv = sext i32 %lnot.ext7 to i64, !dbg !4147
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4147
  %tobool8 = icmp ne i64 %expval, 0, !dbg !4147
  br i1 %tobool8, label %if.then, label %if.end, !dbg !4146

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4147

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #9, !dbg !4148
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4134, metadata !DIExpression()), !dbg !4148
  store i32 2305, ptr %__flags, align 4, !dbg !4148
  br label %do.body9, !dbg !4148

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !4149

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !4149

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !4148

do.body10:                                        ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !4151
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 52, i32 %2, i64 12) #9, !dbg !4151, !srcloc !4153
  br label %do.cond11, !dbg !4151

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !4151

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !4148

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !4154

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !4154

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #9, !dbg !4147
  br label %do.cond16, !dbg !4148

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !4148

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !4148

if.end:                                           ; preds = %do.end17, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !4146
  %tobool18 = icmp ne i32 %3, 0, !dbg !4146
  %lnot19 = xor i1 %tobool18, true, !dbg !4146
  %lnot21 = xor i1 %lnot19, true, !dbg !4146
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !4146
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !4146
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !4146
  store i64 %expval24, ptr %tmp, align 8, !dbg !4147
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !4156
  %4 = load i64, ptr %tmp, align 8, !dbg !4146
  %tobool25 = icmp ne i64 %4, 0, !dbg !4156
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !4157

if.then26:                                        ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !4158
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4158

if.end27:                                         ; preds = %if.end
  store i32 0, ptr %i, align 4, !dbg !4159
  br label %for.cond, !dbg !4161

for.cond:                                         ; preds = %for.inc, %if.end27
  %5 = load i32, ptr %i, align 4, !dbg !4162
  %6 = load i32, ptr %nr_entries.addr, align 4, !dbg !4164
  %cmp = icmp ult i32 %5, %6, !dbg !4165
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4166

land.rhs:                                         ; preds = %for.cond
  %7 = load i64, ptr %size.addr, align 8, !dbg !4167
  %tobool29 = icmp ne i64 %7, 0, !dbg !4166
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %8 = phi i1 [ false, %for.cond ], [ %tobool29, %land.rhs ], !dbg !4168
  br i1 %8, label %for.body, label %for.end, !dbg !4169

for.body:                                         ; preds = %land.end
  %9 = load ptr, ptr %buf.addr, align 8, !dbg !4170
  %10 = load i64, ptr %size.addr, align 8, !dbg !4172
  %11 = load i32, ptr %spaces.addr, align 4, !dbg !4173
  %add = add i32 1, %11, !dbg !4174
  %12 = load ptr, ptr %entries.addr, align 8, !dbg !4175
  %13 = load i32, ptr %i, align 4, !dbg !4176
  %idxprom = zext i32 %13 to i64, !dbg !4175
  %arrayidx = getelementptr i64, ptr %12, i64 %idxprom, !dbg !4175
  %14 = load i64, ptr %arrayidx, align 8, !dbg !4175
  %15 = inttoptr i64 %14 to ptr, !dbg !4177
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %9, i64 noundef %10, ptr noundef @.str.1, i32 noundef %add, i32 noundef 32, ptr noundef %15) #11, !dbg !4178
  store i32 %call, ptr %generated, align 4, !dbg !4179
  %16 = load i32, ptr %generated, align 4, !dbg !4180
  %17 = load i32, ptr %total, align 4, !dbg !4181
  %add30 = add i32 %17, %16, !dbg !4181
  store i32 %add30, ptr %total, align 4, !dbg !4181
  %18 = load i32, ptr %generated, align 4, !dbg !4182
  %conv31 = zext i32 %18 to i64, !dbg !4182
  %19 = load i64, ptr %size.addr, align 8, !dbg !4184
  %cmp32 = icmp uge i64 %conv31, %19, !dbg !4185
  br i1 %cmp32, label %if.then34, label %if.else, !dbg !4186

if.then34:                                        ; preds = %for.body
  %20 = load i64, ptr %size.addr, align 8, !dbg !4187
  %21 = load ptr, ptr %buf.addr, align 8, !dbg !4189
  %add.ptr = getelementptr i8, ptr %21, i64 %20, !dbg !4189
  store ptr %add.ptr, ptr %buf.addr, align 8, !dbg !4189
  store i64 0, ptr %size.addr, align 8, !dbg !4190
  br label %if.end37, !dbg !4191

if.else:                                          ; preds = %for.body
  %22 = load i32, ptr %generated, align 4, !dbg !4192
  %23 = load ptr, ptr %buf.addr, align 8, !dbg !4194
  %idx.ext = zext i32 %22 to i64, !dbg !4194
  %add.ptr35 = getelementptr i8, ptr %23, i64 %idx.ext, !dbg !4194
  store ptr %add.ptr35, ptr %buf.addr, align 8, !dbg !4194
  %24 = load i32, ptr %generated, align 4, !dbg !4195
  %conv36 = zext i32 %24 to i64, !dbg !4195
  %25 = load i64, ptr %size.addr, align 8, !dbg !4196
  %sub = sub i64 %25, %conv36, !dbg !4196
  store i64 %sub, ptr %size.addr, align 8, !dbg !4196
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then34
  br label %for.inc, !dbg !4197

for.inc:                                          ; preds = %if.end37
  %26 = load i32, ptr %i, align 4, !dbg !4198
  %inc = add i32 %26, 1, !dbg !4198
  store i32 %inc, ptr %i, align 4, !dbg !4198
  br label %for.cond, !dbg !4199, !llvm.loop !4200

for.end:                                          ; preds = %land.end
  %27 = load i32, ptr %total, align 4, !dbg !4202
  store i32 %27, ptr %retval, align 4, !dbg !4203
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4203

cleanup:                                          ; preds = %for.end, %if.then26
  call void @llvm.lifetime.end.p0(i64 4, ptr %total) #9, !dbg !4204
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !4204
  call void @llvm.lifetime.end.p0(i64 4, ptr %generated) #9, !dbg !4204
  %28 = load i32, ptr %retval, align 4, !dbg !4204
  ret i32 %28, !dbg !4204
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4205 dso_local i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @stack_trace_save(ptr noundef %store, i32 noundef %size, i32 noundef %skipnr) #0 align 16 !dbg !4209 {
entry:
  %store.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %skipnr.addr = alloca i32, align 4
  %consume_entry = alloca ptr, align 8
  %c = alloca %struct.stacktrace_cookie, align 8
  store ptr %store, ptr %store.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %store.addr, metadata !4213, metadata !DIExpression()), !dbg !4229
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4214, metadata !DIExpression()), !dbg !4230
  store i32 %skipnr, ptr %skipnr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %skipnr.addr, metadata !4215, metadata !DIExpression()), !dbg !4231
  call void @llvm.lifetime.start.p0(i64 8, ptr %consume_entry) #9, !dbg !4232
  call void @llvm.dbg.declare(metadata ptr %consume_entry, metadata !4216, metadata !DIExpression()), !dbg !4233
  store ptr @stack_trace_consume_entry, ptr %consume_entry, align 8, !dbg !4233
  call void @llvm.lifetime.start.p0(i64 24, ptr %c) #9, !dbg !4234
  call void @llvm.dbg.declare(metadata ptr %c, metadata !4222, metadata !DIExpression()), !dbg !4235
  %store1 = getelementptr inbounds %struct.stacktrace_cookie, ptr %c, i32 0, i32 0, !dbg !4236
  %0 = load ptr, ptr %store.addr, align 8, !dbg !4237
  store ptr %0, ptr %store1, align 8, !dbg !4236
  %size2 = getelementptr inbounds %struct.stacktrace_cookie, ptr %c, i32 0, i32 1, !dbg !4236
  %1 = load i32, ptr %size.addr, align 4, !dbg !4238
  store i32 %1, ptr %size2, align 8, !dbg !4236
  %skip = getelementptr inbounds %struct.stacktrace_cookie, ptr %c, i32 0, i32 2, !dbg !4236
  %2 = load i32, ptr %skipnr.addr, align 4, !dbg !4239
  %add = add i32 %2, 1, !dbg !4240
  store i32 %add, ptr %skip, align 4, !dbg !4236
  %len = getelementptr inbounds %struct.stacktrace_cookie, ptr %c, i32 0, i32 3, !dbg !4236
  store i32 0, ptr %len, align 8, !dbg !4236
  %3 = load ptr, ptr %consume_entry, align 8, !dbg !4241
  %call = call ptr @get_current() #11, !dbg !4242
  call void @arch_stack_walk(ptr noundef %3, ptr noundef %c, ptr noundef %call, ptr noundef null) #11, !dbg !4243
  %len3 = getelementptr inbounds %struct.stacktrace_cookie, ptr %c, i32 0, i32 3, !dbg !4244
  %4 = load i32, ptr %len3, align 8, !dbg !4244
  call void @llvm.lifetime.end.p0(i64 24, ptr %c) #9, !dbg !4245
  call void @llvm.lifetime.end.p0(i64 8, ptr %consume_entry) #9, !dbg !4245
  ret i32 %4, !dbg !4246
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @stack_trace_consume_entry(ptr noundef %cookie, i64 noundef %addr) #0 align 16 !dbg !4247 {
entry:
  %retval = alloca i1, align 1
  %cookie.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %c = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cookie, ptr %cookie.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cookie.addr, metadata !4249, metadata !DIExpression()), !dbg !4253
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4250, metadata !DIExpression()), !dbg !4254
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #9, !dbg !4255
  call void @llvm.dbg.declare(metadata ptr %c, metadata !4251, metadata !DIExpression()), !dbg !4256
  %0 = load ptr, ptr %cookie.addr, align 8, !dbg !4257
  store ptr %0, ptr %c, align 8, !dbg !4256
  %1 = load ptr, ptr %c, align 8, !dbg !4258
  %len = getelementptr inbounds %struct.stacktrace_cookie, ptr %1, i32 0, i32 3, !dbg !4260
  %2 = load i32, ptr %len, align 8, !dbg !4260
  %3 = load ptr, ptr %c, align 8, !dbg !4261
  %size = getelementptr inbounds %struct.stacktrace_cookie, ptr %3, i32 0, i32 1, !dbg !4262
  %4 = load i32, ptr %size, align 8, !dbg !4262
  %cmp = icmp uge i32 %2, %4, !dbg !4263
  br i1 %cmp, label %if.then, label %if.end, !dbg !4264

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !4265
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4265

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %c, align 8, !dbg !4266
  %skip = getelementptr inbounds %struct.stacktrace_cookie, ptr %5, i32 0, i32 2, !dbg !4268
  %6 = load i32, ptr %skip, align 4, !dbg !4268
  %cmp1 = icmp ugt i32 %6, 0, !dbg !4269
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !4270

if.then2:                                         ; preds = %if.end
  %7 = load ptr, ptr %c, align 8, !dbg !4271
  %skip3 = getelementptr inbounds %struct.stacktrace_cookie, ptr %7, i32 0, i32 2, !dbg !4273
  %8 = load i32, ptr %skip3, align 4, !dbg !4274
  %dec = add i32 %8, -1, !dbg !4274
  store i32 %dec, ptr %skip3, align 4, !dbg !4274
  store i1 true, ptr %retval, align 1, !dbg !4275
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4275

if.end4:                                          ; preds = %if.end
  %9 = load i64, ptr %addr.addr, align 8, !dbg !4276
  %10 = load ptr, ptr %c, align 8, !dbg !4277
  %store = getelementptr inbounds %struct.stacktrace_cookie, ptr %10, i32 0, i32 0, !dbg !4278
  %11 = load ptr, ptr %store, align 8, !dbg !4278
  %12 = load ptr, ptr %c, align 8, !dbg !4279
  %len5 = getelementptr inbounds %struct.stacktrace_cookie, ptr %12, i32 0, i32 3, !dbg !4280
  %13 = load i32, ptr %len5, align 8, !dbg !4281
  %inc = add i32 %13, 1, !dbg !4281
  store i32 %inc, ptr %len5, align 8, !dbg !4281
  %idxprom = zext i32 %13 to i64, !dbg !4277
  %arrayidx = getelementptr i64, ptr %11, i64 %idxprom, !dbg !4277
  store i64 %9, ptr %arrayidx, align 8, !dbg !4282
  %14 = load ptr, ptr %c, align 8, !dbg !4283
  %len6 = getelementptr inbounds %struct.stacktrace_cookie, ptr %14, i32 0, i32 3, !dbg !4284
  %15 = load i32, ptr %len6, align 8, !dbg !4284
  %16 = load ptr, ptr %c, align 8, !dbg !4285
  %size7 = getelementptr inbounds %struct.stacktrace_cookie, ptr %16, i32 0, i32 1, !dbg !4286
  %17 = load i32, ptr %size7, align 8, !dbg !4286
  %cmp8 = icmp ult i32 %15, %17, !dbg !4287
  store i1 %cmp8, ptr %retval, align 1, !dbg !4288
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4288

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #9, !dbg !4289
  %18 = load i1, ptr %retval, align 1, !dbg !4289
  ret i1 %18, !dbg !4289
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4290 dso_local void @arch_stack_walk(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #6 align 16 !dbg !4293 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #9, !dbg !4304
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4298, metadata !DIExpression()), !dbg !4304
  br label %do.body, !dbg !4304

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #9, !dbg !4305
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4300, metadata !DIExpression()), !dbg !4305
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4305
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4305
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #9, !dbg !4304
  br label %do.cond, !dbg !4305

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4305

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #9, !dbg !4306
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4302, metadata !DIExpression()), !dbg !4306
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #12, !dbg !4306, !srcloc !4307
  store i64 %1, ptr %pfo_val__, align 8, !dbg !4306
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !4306
  %3 = inttoptr i64 %2 to ptr, !dbg !4306
  store ptr %3, ptr %tmp, align 8, !dbg !4306
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #9, !dbg !4304
  %4 = load ptr, ptr %tmp, align 8, !dbg !4306
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !4304
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !4304
  store ptr %5, ptr %tmp1, align 8, !dbg !4304
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #9, !dbg !4308
  %6 = load ptr, ptr %tmp1, align 8, !dbg !4304
  ret ptr %6, !dbg !4309
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @stack_trace_save_tsk(ptr noundef %tsk, ptr noundef %store, i32 noundef %size, i32 noundef %skipnr) #0 align 16 !dbg !4310 {
entry:
  %retval = alloca i32, align 4
  %tsk.addr = alloca ptr, align 8
  %store.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %skipnr.addr = alloca i32, align 4
  %consume_entry = alloca ptr, align 8
  %c = alloca %struct.stacktrace_cookie, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !4314, metadata !DIExpression()), !dbg !4320
  store ptr %store, ptr %store.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %store.addr, metadata !4315, metadata !DIExpression()), !dbg !4321
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4316, metadata !DIExpression()), !dbg !4322
  store i32 %skipnr, ptr %skipnr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %skipnr.addr, metadata !4317, metadata !DIExpression()), !dbg !4323
  call void @llvm.lifetime.start.p0(i64 8, ptr %consume_entry) #9, !dbg !4324
  call void @llvm.dbg.declare(metadata ptr %consume_entry, metadata !4318, metadata !DIExpression()), !dbg !4325
  store ptr @stack_trace_consume_entry_nosched, ptr %consume_entry, align 8, !dbg !4325
  call void @llvm.lifetime.start.p0(i64 24, ptr %c) #9, !dbg !4326
  call void @llvm.dbg.declare(metadata ptr %c, metadata !4319, metadata !DIExpression()), !dbg !4327
  %store1 = getelementptr inbounds %struct.stacktrace_cookie, ptr %c, i32 0, i32 0, !dbg !4328
  %0 = load ptr, ptr %store.addr, align 8, !dbg !4329
  store ptr %0, ptr %store1, align 8, !dbg !4328
  %size2 = getelementptr inbounds %struct.stacktrace_cookie, ptr %c, i32 0, i32 1, !dbg !4328
  %1 = load i32, ptr %size.addr, align 4, !dbg !4330
  store i32 %1, ptr %size2, align 8, !dbg !4328
  %skip = getelementptr inbounds %struct.stacktrace_cookie, ptr %c, i32 0, i32 2, !dbg !4328
  %2 = load i32, ptr %skipnr.addr, align 4, !dbg !4331
  %call = call ptr @get_current() #11, !dbg !4332
  %3 = load ptr, ptr %tsk.addr, align 8, !dbg !4333
  %cmp = icmp eq ptr %call, %3, !dbg !4334
  %conv = zext i1 %cmp to i32, !dbg !4334
  %add = add i32 %2, %conv, !dbg !4335
  store i32 %add, ptr %skip, align 4, !dbg !4328
  %len = getelementptr inbounds %struct.stacktrace_cookie, ptr %c, i32 0, i32 3, !dbg !4328
  store i32 0, ptr %len, align 8, !dbg !4328
  %4 = load ptr, ptr %tsk.addr, align 8, !dbg !4336
  %call3 = call ptr @try_get_task_stack(ptr noundef %4) #11, !dbg !4338
  %tobool = icmp ne ptr %call3, null, !dbg !4338
  br i1 %tobool, label %if.end, label %if.then, !dbg !4339

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4340
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4340

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %consume_entry, align 8, !dbg !4341
  %6 = load ptr, ptr %tsk.addr, align 8, !dbg !4342
  call void @arch_stack_walk(ptr noundef %5, ptr noundef %c, ptr noundef %6, ptr noundef null) #11, !dbg !4343
  %7 = load ptr, ptr %tsk.addr, align 8, !dbg !4344
  call void @put_task_stack(ptr noundef %7) #11, !dbg !4345
  %len4 = getelementptr inbounds %struct.stacktrace_cookie, ptr %c, i32 0, i32 3, !dbg !4346
  %8 = load i32, ptr %len4, align 8, !dbg !4346
  store i32 %8, ptr %retval, align 4, !dbg !4347
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4347

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr %c) #9, !dbg !4348
  call void @llvm.lifetime.end.p0(i64 8, ptr %consume_entry) #9, !dbg !4348
  %9 = load i32, ptr %retval, align 4, !dbg !4348
  ret i32 %9, !dbg !4348
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @stack_trace_consume_entry_nosched(ptr noundef %cookie, i64 noundef %addr) #0 align 16 !dbg !4349 {
entry:
  %retval = alloca i1, align 1
  %cookie.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  store ptr %cookie, ptr %cookie.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cookie.addr, metadata !4351, metadata !DIExpression()), !dbg !4353
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4352, metadata !DIExpression()), !dbg !4354
  %0 = load i64, ptr %addr.addr, align 8, !dbg !4355
  %call = call i32 @in_sched_functions(i64 noundef %0) #11, !dbg !4357
  %tobool = icmp ne i32 %call, 0, !dbg !4357
  br i1 %tobool, label %if.then, label %if.end, !dbg !4358

if.then:                                          ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !4359
  br label %return, !dbg !4359

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %cookie.addr, align 8, !dbg !4360
  %2 = load i64, ptr %addr.addr, align 8, !dbg !4361
  %call1 = call zeroext i1 @stack_trace_consume_entry(ptr noundef %1, i64 noundef %2) #11, !dbg !4362
  store i1 %call1, ptr %retval, align 1, !dbg !4363
  br label %return, !dbg !4363

return:                                           ; preds = %if.end, %if.then
  %3 = load i1, ptr %retval, align 1, !dbg !4364
  ret i1 %3, !dbg !4364
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @try_get_task_stack(ptr noundef %tsk) #7 align 16 !dbg !4365 {
entry:
  %tsk.addr = alloca ptr, align 8
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !4370, metadata !DIExpression()), !dbg !4371
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !4372
  %stack_refcount = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 185, !dbg !4373
  %call = call zeroext i1 @refcount_inc_not_zero(ptr noundef %stack_refcount) #11, !dbg !4374
  br i1 %call, label %cond.true, label %cond.false, !dbg !4374

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %tsk.addr, align 8, !dbg !4375
  %call1 = call ptr @task_stack_page(ptr noundef %1) #11, !dbg !4376
  br label %cond.end, !dbg !4374

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4374

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call1, %cond.true ], [ null, %cond.false ], !dbg !4374
  ret ptr %cond, !dbg !4377
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4378 dso_local void @put_task_stack(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @stack_trace_save_regs(ptr noundef %regs, ptr noundef %store, i32 noundef %size, i32 noundef %skipnr) #0 align 16 !dbg !4381 {
entry:
  %regs.addr = alloca ptr, align 8
  %store.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %skipnr.addr = alloca i32, align 4
  %consume_entry = alloca ptr, align 8
  %c = alloca %struct.stacktrace_cookie, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !4385, metadata !DIExpression()), !dbg !4391
  store ptr %store, ptr %store.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %store.addr, metadata !4386, metadata !DIExpression()), !dbg !4392
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4387, metadata !DIExpression()), !dbg !4393
  store i32 %skipnr, ptr %skipnr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %skipnr.addr, metadata !4388, metadata !DIExpression()), !dbg !4394
  call void @llvm.lifetime.start.p0(i64 8, ptr %consume_entry) #9, !dbg !4395
  call void @llvm.dbg.declare(metadata ptr %consume_entry, metadata !4389, metadata !DIExpression()), !dbg !4396
  store ptr @stack_trace_consume_entry, ptr %consume_entry, align 8, !dbg !4396
  call void @llvm.lifetime.start.p0(i64 24, ptr %c) #9, !dbg !4397
  call void @llvm.dbg.declare(metadata ptr %c, metadata !4390, metadata !DIExpression()), !dbg !4398
  %store1 = getelementptr inbounds %struct.stacktrace_cookie, ptr %c, i32 0, i32 0, !dbg !4399
  %0 = load ptr, ptr %store.addr, align 8, !dbg !4400
  store ptr %0, ptr %store1, align 8, !dbg !4399
  %size2 = getelementptr inbounds %struct.stacktrace_cookie, ptr %c, i32 0, i32 1, !dbg !4399
  %1 = load i32, ptr %size.addr, align 4, !dbg !4401
  store i32 %1, ptr %size2, align 8, !dbg !4399
  %skip = getelementptr inbounds %struct.stacktrace_cookie, ptr %c, i32 0, i32 2, !dbg !4399
  %2 = load i32, ptr %skipnr.addr, align 4, !dbg !4402
  store i32 %2, ptr %skip, align 4, !dbg !4399
  %len = getelementptr inbounds %struct.stacktrace_cookie, ptr %c, i32 0, i32 3, !dbg !4399
  store i32 0, ptr %len, align 8, !dbg !4399
  %3 = load ptr, ptr %consume_entry, align 8, !dbg !4403
  %call = call ptr @get_current() #11, !dbg !4404
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !4405
  call void @arch_stack_walk(ptr noundef %3, ptr noundef %c, ptr noundef %call, ptr noundef %4) #11, !dbg !4406
  %len3 = getelementptr inbounds %struct.stacktrace_cookie, ptr %c, i32 0, i32 3, !dbg !4407
  %5 = load i32, ptr %len3, align 8, !dbg !4407
  call void @llvm.lifetime.end.p0(i64 24, ptr %c) #9, !dbg !4408
  call void @llvm.lifetime.end.p0(i64 8, ptr %consume_entry) #9, !dbg !4408
  ret i32 %5, !dbg !4409
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @stack_trace_save_tsk_reliable(ptr noundef %tsk, ptr noundef %store, i32 noundef %size) #0 align 16 !dbg !4410 {
entry:
  %retval = alloca i32, align 4
  %tsk.addr = alloca ptr, align 8
  %store.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %consume_entry = alloca ptr, align 8
  %c = alloca %struct.stacktrace_cookie, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !4414, metadata !DIExpression()), !dbg !4420
  store ptr %store, ptr %store.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %store.addr, metadata !4415, metadata !DIExpression()), !dbg !4421
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4416, metadata !DIExpression()), !dbg !4422
  call void @llvm.lifetime.start.p0(i64 8, ptr %consume_entry) #9, !dbg !4423
  call void @llvm.dbg.declare(metadata ptr %consume_entry, metadata !4417, metadata !DIExpression()), !dbg !4424
  store ptr @stack_trace_consume_entry, ptr %consume_entry, align 8, !dbg !4424
  call void @llvm.lifetime.start.p0(i64 24, ptr %c) #9, !dbg !4425
  call void @llvm.dbg.declare(metadata ptr %c, metadata !4418, metadata !DIExpression()), !dbg !4426
  %store1 = getelementptr inbounds %struct.stacktrace_cookie, ptr %c, i32 0, i32 0, !dbg !4427
  %0 = load ptr, ptr %store.addr, align 8, !dbg !4428
  store ptr %0, ptr %store1, align 8, !dbg !4427
  %size2 = getelementptr inbounds %struct.stacktrace_cookie, ptr %c, i32 0, i32 1, !dbg !4427
  %1 = load i32, ptr %size.addr, align 4, !dbg !4429
  store i32 %1, ptr %size2, align 8, !dbg !4427
  %skip = getelementptr inbounds %struct.stacktrace_cookie, ptr %c, i32 0, i32 2, !dbg !4427
  store i32 0, ptr %skip, align 4, !dbg !4427
  %len = getelementptr inbounds %struct.stacktrace_cookie, ptr %c, i32 0, i32 3, !dbg !4427
  store i32 0, ptr %len, align 8, !dbg !4427
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !4430
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4419, metadata !DIExpression()), !dbg !4431
  %2 = load ptr, ptr %tsk.addr, align 8, !dbg !4432
  %call = call ptr @try_get_task_stack(ptr noundef %2) #11, !dbg !4434
  %tobool = icmp ne ptr %call, null, !dbg !4434
  br i1 %tobool, label %if.end, label %if.then, !dbg !4435

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4436
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4436

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %consume_entry, align 8, !dbg !4437
  %4 = load ptr, ptr %tsk.addr, align 8, !dbg !4438
  %call3 = call i32 @arch_stack_walk_reliable(ptr noundef %3, ptr noundef %c, ptr noundef %4) #11, !dbg !4439
  store i32 %call3, ptr %ret, align 4, !dbg !4440
  %5 = load ptr, ptr %tsk.addr, align 8, !dbg !4441
  call void @put_task_stack(ptr noundef %5) #11, !dbg !4442
  %6 = load i32, ptr %ret, align 4, !dbg !4443
  %tobool4 = icmp ne i32 %6, 0, !dbg !4443
  br i1 %tobool4, label %cond.true, label %cond.false, !dbg !4443

cond.true:                                        ; preds = %if.end
  %7 = load i32, ptr %ret, align 4, !dbg !4444
  br label %cond.end, !dbg !4443

cond.false:                                       ; preds = %if.end
  %len5 = getelementptr inbounds %struct.stacktrace_cookie, ptr %c, i32 0, i32 3, !dbg !4445
  %8 = load i32, ptr %len5, align 8, !dbg !4445
  br label %cond.end, !dbg !4443

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ %8, %cond.false ], !dbg !4443
  store i32 %cond, ptr %retval, align 4, !dbg !4446
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4446

cleanup:                                          ; preds = %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !4447
  call void @llvm.lifetime.end.p0(i64 24, ptr %c) #9, !dbg !4447
  call void @llvm.lifetime.end.p0(i64 8, ptr %consume_entry) #9, !dbg !4447
  %9 = load i32, ptr %retval, align 4, !dbg !4447
  ret i32 %9, !dbg !4447
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4448 dso_local i32 @arch_stack_walk_reliable(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @stack_trace_save_user(ptr noundef %store, i32 noundef %size) #0 align 16 !dbg !4451 {
entry:
  %retval = alloca i32, align 4
  %store.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %consume_entry = alloca ptr, align 8
  %c = alloca %struct.stacktrace_cookie, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ptr = alloca i64, align 8
  %tmp = alloca ptr, align 8
  store ptr %store, ptr %store.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %store.addr, metadata !4455, metadata !DIExpression()), !dbg !4461
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4456, metadata !DIExpression()), !dbg !4462
  call void @llvm.lifetime.start.p0(i64 8, ptr %consume_entry) #9, !dbg !4463
  call void @llvm.dbg.declare(metadata ptr %consume_entry, metadata !4457, metadata !DIExpression()), !dbg !4464
  store ptr @stack_trace_consume_entry, ptr %consume_entry, align 8, !dbg !4464
  call void @llvm.lifetime.start.p0(i64 24, ptr %c) #9, !dbg !4465
  call void @llvm.dbg.declare(metadata ptr %c, metadata !4458, metadata !DIExpression()), !dbg !4466
  %store1 = getelementptr inbounds %struct.stacktrace_cookie, ptr %c, i32 0, i32 0, !dbg !4467
  %0 = load ptr, ptr %store.addr, align 8, !dbg !4468
  store ptr %0, ptr %store1, align 8, !dbg !4467
  %size2 = getelementptr inbounds %struct.stacktrace_cookie, ptr %c, i32 0, i32 1, !dbg !4467
  %1 = load i32, ptr %size.addr, align 4, !dbg !4469
  store i32 %1, ptr %size2, align 8, !dbg !4467
  %skip = getelementptr inbounds %struct.stacktrace_cookie, ptr %c, i32 0, i32 2, !dbg !4467
  store i32 0, ptr %skip, align 4, !dbg !4467
  %len = getelementptr inbounds %struct.stacktrace_cookie, ptr %c, i32 0, i32 3, !dbg !4467
  store i32 0, ptr %len, align 8, !dbg !4467
  %call = call ptr @get_current() #11, !dbg !4470
  %flags = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 4, !dbg !4472
  %2 = load i32, ptr %flags, align 4, !dbg !4472
  %and = and i32 %2, 2097152, !dbg !4473
  %tobool = icmp ne i32 %and, 0, !dbg !4473
  br i1 %tobool, label %if.then, label %if.end, !dbg !4474

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4475
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4475

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %consume_entry, align 8, !dbg !4476
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #9, !dbg !4477
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4459, metadata !DIExpression()), !dbg !4477
  %call3 = call ptr @get_current() #11, !dbg !4477
  %call4 = call ptr @task_stack_page(ptr noundef %call3) #11, !dbg !4477
  %4 = ptrtoint ptr %call4 to i64, !dbg !4477
  store i64 %4, ptr %__ptr, align 8, !dbg !4477
  %5 = load i64, ptr %__ptr, align 8, !dbg !4477
  %add = add i64 %5, 16384, !dbg !4477
  store i64 %add, ptr %__ptr, align 8, !dbg !4477
  %6 = load i64, ptr %__ptr, align 8, !dbg !4477
  %7 = inttoptr i64 %6 to ptr, !dbg !4477
  %add.ptr = getelementptr %struct.pt_regs, ptr %7, i64 -1, !dbg !4477
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4477
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #9, !dbg !4478
  %8 = load ptr, ptr %tmp, align 8, !dbg !4477
  call void @arch_stack_walk_user(ptr noundef %3, ptr noundef %c, ptr noundef %8) #11, !dbg !4479
  %len5 = getelementptr inbounds %struct.stacktrace_cookie, ptr %c, i32 0, i32 3, !dbg !4480
  %9 = load i32, ptr %len5, align 8, !dbg !4480
  store i32 %9, ptr %retval, align 4, !dbg !4481
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4481

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr %c) #9, !dbg !4482
  call void @llvm.lifetime.end.p0(i64 8, ptr %consume_entry) #9, !dbg !4482
  %10 = load i32, ptr %retval, align 4, !dbg !4482
  ret i32 %10, !dbg !4482
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4483 dso_local void @arch_stack_walk_user(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @task_stack_page(ptr noundef %task) #6 align 16 !dbg !4488 {
entry:
  %task.addr = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !4494, metadata !DIExpression()), !dbg !4495
  %0 = load ptr, ptr %task.addr, align 8, !dbg !4496
  %stack = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 2, !dbg !4497
  %1 = load ptr, ptr %stack, align 32, !dbg !4497
  ret ptr %1, !dbg !4498
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @filter_irq_stacks(ptr noundef %entries, i32 noundef %nr_entries) #0 align 16 !dbg !4499 {
entry:
  %retval = alloca i32, align 4
  %entries.addr = alloca ptr, align 8
  %nr_entries.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %entries, ptr %entries.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entries.addr, metadata !4501, metadata !DIExpression()), !dbg !4504
  store i32 %nr_entries, ptr %nr_entries.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr_entries.addr, metadata !4502, metadata !DIExpression()), !dbg !4505
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !4506
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4503, metadata !DIExpression()), !dbg !4507
  store i32 0, ptr %i, align 4, !dbg !4508
  br label %for.cond, !dbg !4510

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !4511
  %1 = load i32, ptr %nr_entries.addr, align 4, !dbg !4513
  %cmp = icmp ult i32 %0, %1, !dbg !4514
  br i1 %cmp, label %for.body, label %for.end, !dbg !4515

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %entries.addr, align 8, !dbg !4516
  %3 = load i32, ptr %i, align 4, !dbg !4519
  %idxprom = zext i32 %3 to i64, !dbg !4516
  %arrayidx = getelementptr i64, ptr %2, i64 %idxprom, !dbg !4516
  %4 = load i64, ptr %arrayidx, align 8, !dbg !4516
  %call = call zeroext i1 @in_irqentry_text(i64 noundef %4) #11, !dbg !4520
  br i1 %call, label %if.then, label %if.end, !dbg !4521

if.then:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4, !dbg !4522
  %add = add i32 %5, 1, !dbg !4524
  store i32 %add, ptr %retval, align 4, !dbg !4525
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4525

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !4526

for.inc:                                          ; preds = %if.end
  %6 = load i32, ptr %i, align 4, !dbg !4527
  %inc = add i32 %6, 1, !dbg !4527
  store i32 %inc, ptr %i, align 4, !dbg !4527
  br label %for.cond, !dbg !4528, !llvm.loop !4529

for.end:                                          ; preds = %for.cond
  %7 = load i32, ptr %nr_entries.addr, align 4, !dbg !4531
  store i32 %7, ptr %retval, align 4, !dbg !4532
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4532

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !4533
  %8 = load i32, ptr %retval, align 4, !dbg !4533
  ret i32 %8, !dbg !4533
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @in_irqentry_text(i64 noundef %ptr) #7 align 16 !dbg !4534 {
entry:
  %ptr.addr = alloca i64, align 8
  store i64 %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4538, metadata !DIExpression()), !dbg !4539
  %0 = load i64, ptr %ptr.addr, align 8, !dbg !4540
  %cmp = icmp uge i64 %0, ptrtoint (ptr @__irqentry_text_start to i64), !dbg !4541
  br i1 %cmp, label %land.lhs.true, label %lor.rhs, !dbg !4542

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, ptr %ptr.addr, align 8, !dbg !4543
  %cmp1 = icmp ult i64 %1, ptrtoint (ptr @__irqentry_text_end to i64), !dbg !4544
  br i1 %cmp1, label %lor.end, label %lor.rhs, !dbg !4545

lor.rhs:                                          ; preds = %land.lhs.true, %entry
  %2 = load i64, ptr %ptr.addr, align 8, !dbg !4546
  %cmp2 = icmp uge i64 %2, ptrtoint (ptr @__softirqentry_text_start to i64), !dbg !4547
  br i1 %cmp2, label %land.rhs, label %land.end, !dbg !4548

land.rhs:                                         ; preds = %lor.rhs
  %3 = load i64, ptr %ptr.addr, align 8, !dbg !4549
  %cmp3 = icmp ult i64 %3, ptrtoint (ptr @__softirqentry_text_end to i64), !dbg !4550
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %4 = phi i1 [ false, %lor.rhs ], [ %cmp3, %land.rhs ], !dbg !4551
  br label %lor.end, !dbg !4545

lor.end:                                          ; preds = %land.end, %land.lhs.true
  %5 = phi i1 [ true, %land.lhs.true ], [ %4, %land.end ]
  ret i1 %5, !dbg !4552
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4553 dso_local i32 @in_sched_functions(i64 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_inc_not_zero(ptr noundef %r) #7 align 16 !dbg !4557 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4562, metadata !DIExpression()), !dbg !4563
  %0 = load ptr, ptr %r.addr, align 8, !dbg !4564
  %call = call zeroext i1 @__refcount_inc_not_zero(ptr noundef %0, ptr noundef null) #11, !dbg !4565
  ret i1 %call, !dbg !4566
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_inc_not_zero(ptr noundef %r, ptr noundef %oldp) #7 align 16 !dbg !4567 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4571, metadata !DIExpression()), !dbg !4573
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !4572, metadata !DIExpression()), !dbg !4574
  %0 = load ptr, ptr %r.addr, align 8, !dbg !4575
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !4576
  %call = call zeroext i1 @__refcount_add_not_zero(i32 noundef 1, ptr noundef %0, ptr noundef %1) #11, !dbg !4577
  ret i1 %call, !dbg !4578
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_add_not_zero(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #7 align 16 !dbg !4579 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4583, metadata !DIExpression()), !dbg !4587
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4584, metadata !DIExpression()), !dbg !4588
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !4585, metadata !DIExpression()), !dbg !4589
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #9, !dbg !4590
  call void @llvm.dbg.declare(metadata ptr %old, metadata !4586, metadata !DIExpression()), !dbg !4591
  %0 = load ptr, ptr %r.addr, align 8, !dbg !4592
  %call = call i32 @refcount_read(ptr noundef %0) #11, !dbg !4593
  store i32 %call, ptr %old, align 4, !dbg !4591
  br label %do.body, !dbg !4594

do.body:                                          ; preds = %do.cond, %entry
  %1 = load i32, ptr %old, align 4, !dbg !4595
  %tobool = icmp ne i32 %1, 0, !dbg !4595
  br i1 %tobool, label %if.end, label %if.then, !dbg !4598

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !4599

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !4600

do.cond:                                          ; preds = %if.end
  %2 = load ptr, ptr %r.addr, align 8, !dbg !4601
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %2, i32 0, i32 0, !dbg !4602
  %3 = load i32, ptr %old, align 4, !dbg !4603
  %4 = load i32, ptr %i.addr, align 4, !dbg !4604
  %add = add i32 %3, %4, !dbg !4605
  %call1 = call zeroext i1 @atomic_try_cmpxchg_relaxed(ptr noundef %refs, ptr noundef %old, i32 noundef %add) #11, !dbg !4606
  %lnot = xor i1 %call1, true, !dbg !4607
  br i1 %lnot, label %do.body, label %do.end, !dbg !4600, !llvm.loop !4608

do.end:                                           ; preds = %do.cond, %if.then
  %5 = load ptr, ptr %oldp.addr, align 8, !dbg !4610
  %tobool2 = icmp ne ptr %5, null, !dbg !4610
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !4612

if.then3:                                         ; preds = %do.end
  %6 = load i32, ptr %old, align 4, !dbg !4613
  %7 = load ptr, ptr %oldp.addr, align 8, !dbg !4614
  store i32 %6, ptr %7, align 4, !dbg !4615
  br label %if.end4, !dbg !4616

if.end4:                                          ; preds = %if.then3, %do.end
  %8 = load i32, ptr %old, align 4, !dbg !4617
  %cmp = icmp slt i32 %8, 0, !dbg !4617
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !4617

lor.rhs:                                          ; preds = %if.end4
  %9 = load i32, ptr %old, align 4, !dbg !4617
  %10 = load i32, ptr %i.addr, align 4, !dbg !4617
  %add5 = add i32 %9, %10, !dbg !4617
  %cmp6 = icmp slt i32 %add5, 0, !dbg !4617
  br label %lor.end, !dbg !4617

lor.end:                                          ; preds = %lor.rhs, %if.end4
  %11 = phi i1 [ true, %if.end4 ], [ %cmp6, %lor.rhs ]
  %lnot7 = xor i1 %11, true, !dbg !4617
  %lnot8 = xor i1 %lnot7, true, !dbg !4617
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !4617
  %conv = sext i32 %lnot.ext to i64, !dbg !4617
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4617
  %tobool9 = icmp ne i64 %expval, 0, !dbg !4617
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !4619

if.then10:                                        ; preds = %lor.end
  %12 = load ptr, ptr %r.addr, align 8, !dbg !4620
  call void @refcount_warn_saturate(ptr noundef %12, i32 noundef 0) #11, !dbg !4621
  br label %if.end11, !dbg !4621

if.end11:                                         ; preds = %if.then10, %lor.end
  %13 = load i32, ptr %old, align 4, !dbg !4622
  %tobool12 = icmp ne i32 %13, 0, !dbg !4622
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #9, !dbg !4623
  ret i1 %tobool12, !dbg !4624
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @refcount_read(ptr noundef %r) #7 align 16 !dbg !4625 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4631, metadata !DIExpression()), !dbg !4632
  %0 = load ptr, ptr %r.addr, align 8, !dbg !4633
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %0, i32 0, i32 0, !dbg !4634
  %call = call i32 @atomic_read(ptr noundef %refs) #11, !dbg !4635
  ret i32 %call, !dbg !4636
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_try_cmpxchg_relaxed(ptr noundef %v, ptr noundef %old, i32 noundef %new) #6 align 16 !dbg !4637 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4643, metadata !DIExpression()), !dbg !4646
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !4644, metadata !DIExpression()), !dbg !4647
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4645, metadata !DIExpression()), !dbg !4648
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4649
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #11, !dbg !4650
  %1 = load ptr, ptr %old.addr, align 8, !dbg !4651
  call void @instrument_atomic_read_write(ptr noundef %1, i64 noundef 4) #11, !dbg !4652
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4653
  %3 = load ptr, ptr %old.addr, align 8, !dbg !4654
  %4 = load i32, ptr %new.addr, align 4, !dbg !4655
  %call = call zeroext i1 @raw_atomic_try_cmpxchg_relaxed(ptr noundef %2, ptr noundef %3, i32 noundef %4) #11, !dbg !4656
  ret i1 %call, !dbg !4657
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4658 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #6 align 16 !dbg !4661 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4667, metadata !DIExpression()), !dbg !4668
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4669
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #11, !dbg !4670
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4671
  %call = call i32 @raw_atomic_read(ptr noundef %1) #11, !dbg !4672
  ret i32 %call, !dbg !4673
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !4674 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4682, metadata !DIExpression()), !dbg !4684
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4683, metadata !DIExpression()), !dbg !4685
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4686
  %1 = load i64, ptr %size.addr, align 8, !dbg !4687
  %conv = trunc i64 %1 to i32, !dbg !4687
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #11, !dbg !4688
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4689
  %3 = load i64, ptr %size.addr, align 8, !dbg !4689
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #11, !dbg !4689
  ret void, !dbg !4690
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #6 align 16 !dbg !4691 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4694, metadata !DIExpression()), !dbg !4695
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4696
  %call = call i32 @arch_atomic_read(ptr noundef %0) #11, !dbg !4697
  ret i32 %call, !dbg !4698
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #7 align 16 !dbg !4699 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4704, metadata !DIExpression()), !dbg !4706
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4705, metadata !DIExpression()), !dbg !4707
  ret i1 true, !dbg !4708
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #7 align 16 !dbg !4709 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4714, metadata !DIExpression()), !dbg !4717
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4715, metadata !DIExpression()), !dbg !4718
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4716, metadata !DIExpression()), !dbg !4719
  ret void, !dbg !4720
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #6 align 16 !dbg !4721 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4724, metadata !DIExpression()), !dbg !4725
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4726
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !4726
  %1 = load volatile i32, ptr %counter, align 4, !dbg !4726
  ret i32 %1, !dbg !4727
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !4728 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4730, metadata !DIExpression()), !dbg !4732
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4731, metadata !DIExpression()), !dbg !4733
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4734
  %1 = load i64, ptr %size.addr, align 8, !dbg !4735
  %conv = trunc i64 %1 to i32, !dbg !4735
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #11, !dbg !4736
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4737
  %3 = load i64, ptr %size.addr, align 8, !dbg !4737
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #11, !dbg !4737
  ret void, !dbg !4738
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_try_cmpxchg_relaxed(ptr noundef %v, ptr noundef %old, i32 noundef %new) #6 align 16 !dbg !4739 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4741, metadata !DIExpression()), !dbg !4744
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !4742, metadata !DIExpression()), !dbg !4745
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4743, metadata !DIExpression()), !dbg !4746
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4747
  %1 = load ptr, ptr %old.addr, align 8, !dbg !4748
  %2 = load i32, ptr %new.addr, align 4, !dbg !4749
  %call = call zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %0, ptr noundef %1, i32 noundef %2) #11, !dbg !4750
  ret i1 %call, !dbg !4751
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #7 align 16 !dbg !4752 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4754, metadata !DIExpression()), !dbg !4756
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4755, metadata !DIExpression()), !dbg !4757
  ret i1 true, !dbg !4758
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %v, ptr noundef %old, i32 noundef %new) #6 align 16 !dbg !4759 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  %success = alloca i8, align 1
  %_old = alloca ptr, align 8
  %__old = alloca i32, align 4
  %__new = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4761, metadata !DIExpression()), !dbg !4770
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !4762, metadata !DIExpression()), !dbg !4771
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4763, metadata !DIExpression()), !dbg !4772
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #9, !dbg !4773
  call void @llvm.dbg.declare(metadata ptr %success, metadata !4764, metadata !DIExpression()), !dbg !4773
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #9, !dbg !4773
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !4766, metadata !DIExpression()), !dbg !4773
  %0 = load ptr, ptr %old.addr, align 8, !dbg !4773
  store ptr %0, ptr %_old, align 8, !dbg !4773
  call void @llvm.lifetime.start.p0(i64 4, ptr %__old) #9, !dbg !4773
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !4767, metadata !DIExpression()), !dbg !4773
  %1 = load ptr, ptr %_old, align 8, !dbg !4773
  %2 = load i32, ptr %1, align 4, !dbg !4773
  store i32 %2, ptr %__old, align 4, !dbg !4773
  call void @llvm.lifetime.start.p0(i64 4, ptr %__new) #9, !dbg !4773
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !4768, metadata !DIExpression()), !dbg !4773
  %3 = load i32, ptr %new.addr, align 4, !dbg !4773
  store i32 %3, ptr %__new, align 4, !dbg !4773
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #9, !dbg !4773
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4769, metadata !DIExpression()), !dbg !4773
  %4 = load ptr, ptr %v.addr, align 8, !dbg !4773
  %counter = getelementptr inbounds %struct.atomic_t, ptr %4, i32 0, i32 0, !dbg !4773
  store ptr %counter, ptr %__ptr, align 8, !dbg !4773
  %5 = load ptr, ptr %__ptr, align 8, !dbg !4773
  %6 = load i32, ptr %__old, align 4, !dbg !4773
  %7 = load i32, ptr %__new, align 4, !dbg !4773
  %8 = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgl $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %5, i32 %7, ptr elementtype(i32) %5, i32 %6) #9, !dbg !4773, !srcloc !4774
  %asmresult = extractvalue { i8, i32 } %8, 0, !dbg !4773
  %asmresult1 = extractvalue { i8, i32 } %8, 1, !dbg !4773
  %9 = icmp ult i8 %asmresult, 2, !dbg !4773
  call void @llvm.assume(i1 %9), !dbg !4773
  store i8 %asmresult, ptr %success, align 1, !dbg !4773
  store i32 %asmresult1, ptr %__old, align 4, !dbg !4773
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #9, !dbg !4773
  %10 = load i8, ptr %success, align 1, !dbg !4775, !range !4777, !noundef !554
  %tobool = trunc i8 %10 to i1, !dbg !4775
  %lnot = xor i1 %tobool, true, !dbg !4775
  %lnot2 = xor i1 %lnot, true, !dbg !4775
  %lnot3 = xor i1 %lnot2, true, !dbg !4775
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !4775
  %conv = sext i32 %lnot.ext to i64, !dbg !4775
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4775
  %tobool4 = icmp ne i64 %expval, 0, !dbg !4775
  br i1 %tobool4, label %if.then, label %if.end, !dbg !4773

if.then:                                          ; preds = %entry
  %11 = load i32, ptr %__old, align 4, !dbg !4775
  %12 = load ptr, ptr %_old, align 8, !dbg !4775
  store i32 %11, ptr %12, align 4, !dbg !4775
  br label %if.end, !dbg !4775

if.end:                                           ; preds = %if.then, %entry
  %13 = load i8, ptr %success, align 1, !dbg !4773, !range !4777, !noundef !554
  %tobool5 = trunc i8 %13 to i1, !dbg !4773
  %lnot6 = xor i1 %tobool5, true, !dbg !4773
  %lnot8 = xor i1 %lnot6, true, !dbg !4773
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !4773
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !4773
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 1), !dbg !4773
  store i64 %expval11, ptr %tmp, align 8, !dbg !4775
  call void @llvm.lifetime.end.p0(i64 4, ptr %__new) #9, !dbg !4778
  call void @llvm.lifetime.end.p0(i64 4, ptr %__old) #9, !dbg !4778
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #9, !dbg !4778
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #9, !dbg !4778
  %14 = load i64, ptr %tmp, align 8, !dbg !4773
  %tobool12 = icmp ne i64 %14, 0, !dbg !4778
  ret i1 %tobool12, !dbg !4779
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }
attributes #10 = { cold noredzone }
attributes #11 = { noredzone }
attributes #12 = { nounwind memory(none) }

!llvm.dbg.cu = !{!14}
!llvm.module.flags = !{!4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060}
!llvm.ident = !{!4061}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 29, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "kernel/stacktrace.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f6bd61be8071966c6c179a578860489")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 20)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 33, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 8)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_stack_trace_print287", scope: !14, file: !2, line: 35, type: !112, isLocal: true, isDefinition: true)
!14 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/.stacktrace.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/stacktrace\22 -D KBUILD_BASENAME=\22stacktrace\22 -D KBUILD_MODNAME=\22stacktrace\22 -D __KBUILD_MODNAME=kmod_stacktrace -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/stacktrace.ll kernel/stacktrace.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !15, retainedTypes: !111, globals: !4046, splitDebugInlining: false, nameTableKind: None)
!15 = !{!16, !22, !30, !37, !45, !61, !68, !74, !79, !85, !91, !98, !103}
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !17, line: 65, baseType: !18, size: 32, elements: !19)
!17 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !{!20, !21}
!20 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!21 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !23, line: 9, baseType: !18, size: 32, elements: !24)
!23 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!24 = !{!25, !26, !27, !28, !29}
!25 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!26 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!27 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!28 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!29 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !31, line: 312, baseType: !18, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!32 = !{!33, !34, !35, !36}
!33 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!34 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!35 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!36 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !38, line: 68, baseType: !18, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!39 = !{!40, !41, !42, !43, !44}
!40 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!41 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!42 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!43 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!44 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !46, line: 1325, baseType: !18, size: 32, elements: !47)
!46 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!47 = !{!48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60}
!48 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!49 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!50 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!51 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!52 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!53 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!54 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!55 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!56 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!57 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!58 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!59 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!60 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !62, line: 15, baseType: !18, size: 32, elements: !63)
!62 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!63 = !{!64, !65, !66, !67}
!64 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!65 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!66 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!67 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !69, line: 26, baseType: !18, size: 32, elements: !70)
!69 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!70 = !{!71, !72, !73}
!71 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!72 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!73 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !75, line: 2052, baseType: !18, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!76 = !{!77, !78}
!77 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!78 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !80, line: 54, baseType: !18, size: 32, elements: !81)
!80 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!81 = !{!82, !83, !84}
!82 = !DIEnumerator(name: "USRQUOTA", value: 0)
!83 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!84 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !86, line: 16, baseType: !18, size: 32, elements: !87)
!86 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!87 = !{!88, !89, !90}
!88 = !DIEnumerator(name: "TT_NONE", value: 0)
!89 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!90 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !92, line: 51, baseType: !18, size: 32, elements: !93)
!92 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!93 = !{!94, !95, !96, !97}
!94 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!95 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!96 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!97 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !99, line: 10, baseType: !18, size: 32, elements: !100)
!99 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!100 = !{!101, !102}
!101 = !DIEnumerator(name: "false", value: 0)
!102 = !DIEnumerator(name: "true", value: 1)
!103 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !104, line: 119, baseType: !18, size: 32, elements: !105)
!104 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!105 = !{!106, !107, !108, !109, !110}
!106 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!107 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!108 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!109 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!110 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!111 = !{!112, !113, !114, !174, !175, !4041, !2130, !4044}
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!113 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !116, line: 103, size: 1344, elements: !117)
!116 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!117 = !{!118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !154, !155, !156}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !115, file: !116, line: 109, baseType: !113, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !115, file: !116, line: 110, baseType: !113, size: 64, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !115, file: !116, line: 111, baseType: !113, size: 64, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !115, file: !116, line: 112, baseType: !113, size: 64, offset: 192)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !115, file: !116, line: 113, baseType: !113, size: 64, offset: 256)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !115, file: !116, line: 114, baseType: !113, size: 64, offset: 320)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !115, file: !116, line: 117, baseType: !113, size: 64, offset: 384)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !115, file: !116, line: 118, baseType: !113, size: 64, offset: 448)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !115, file: !116, line: 119, baseType: !113, size: 64, offset: 512)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !115, file: !116, line: 120, baseType: !113, size: 64, offset: 576)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !115, file: !116, line: 121, baseType: !113, size: 64, offset: 640)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !115, file: !116, line: 122, baseType: !113, size: 64, offset: 704)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !115, file: !116, line: 123, baseType: !113, size: 64, offset: 768)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !115, file: !116, line: 124, baseType: !113, size: 64, offset: 832)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !115, file: !116, line: 125, baseType: !113, size: 64, offset: 896)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !115, file: !116, line: 139, baseType: !113, size: 64, offset: 960)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !115, file: !116, line: 142, baseType: !113, size: 64, offset: 1024)
!135 = !DIDerivedType(tag: DW_TAG_member, scope: !115, file: !116, line: 144, baseType: !136, size: 64, offset: 1088)
!136 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !115, file: !116, line: 144, size: 64, elements: !137)
!137 = !{!138, !144, !148}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !136, file: !116, line: 146, baseType: !139, size: 16)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !140, line: 19, baseType: !141)
!140 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !142, line: 24, baseType: !143)
!142 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!143 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !136, file: !116, line: 148, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !140, line: 23, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !142, line: 31, baseType: !147)
!147 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !136, file: !116, line: 150, baseType: !149, size: 64)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !116, line: 59, size: 64, elements: !150)
!150 = !{!151, !152, !153}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !149, file: !116, line: 61, baseType: !145, size: 16, flags: DIFlagBitField, extraData: i64 0)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !149, file: !116, line: 63, baseType: !145, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !149, file: !116, line: 65, baseType: !145, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !115, file: !116, line: 153, baseType: !113, size: 64, offset: 1152)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !115, file: !116, line: 154, baseType: !113, size: 64, offset: 1216)
!156 = !DIDerivedType(tag: DW_TAG_member, scope: !115, file: !116, line: 156, baseType: !157, size: 64, offset: 1280)
!157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !115, file: !116, line: 156, size: 64, elements: !158)
!158 = !{!159, !160, !161}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !157, file: !116, line: 158, baseType: !139, size: 16)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !157, file: !116, line: 160, baseType: !145, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !157, file: !116, line: 162, baseType: !162, size: 64)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !116, line: 69, size: 64, elements: !163)
!163 = !{!164, !165, !166, !167, !168, !169, !170, !171, !172, !173}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !162, file: !116, line: 71, baseType: !145, size: 16, flags: DIFlagBitField, extraData: i64 0)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !162, file: !116, line: 73, baseType: !145, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !162, file: !116, line: 75, baseType: !145, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !162, file: !116, line: 77, baseType: !145, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !162, file: !116, line: 80, baseType: !145, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !162, file: !116, line: 83, baseType: !145, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !162, file: !116, line: 86, baseType: !145, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !162, file: !116, line: 88, baseType: !145, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !162, file: !116, line: 93, baseType: !145, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !162, file: !116, line: 100, baseType: !145, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !177, line: 746, size: 58368, elements: !178)
!177 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!178 = !{!179, !189, !190, !191, !202, !203, !204, !205, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !291, !302, !427, !431, !434, !465, !466, !467, !468, !479, !481, !482, !483, !484, !485, !486, !497, !498, !501, !502, !503, !504, !505, !506, !507, !508, !515, !516, !523, !524, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3285, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3333, !3339, !3340, !3341, !3342, !3343, !3345, !3348, !3355, !3360, !3363, !3366, !3369, !3372, !3510, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3548, !3549, !3550, !3559, !3567, !3568, !3569, !3570, !3571, !3576, !3577, !3578, !3581, !3582, !3585, !3588, !3591, !3599, !3602, !3603, !3688, !3689, !3690, !3691, !3692, !3698, !3699, !3700, !3701, !3704, !3705, !3708, !3711, !3712, !3715, !3716, !3717, !3720, !3721, !3722, !3723, !3724, !3725, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3757, !3758, !3764, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3776, !3848, !3850, !3851, !3852, !3853, !3854, !3855, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3872, !3873, !3874}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !176, file: !177, line: 752, baseType: !180, size: 192)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !181, line: 56, size: 192, elements: !182)
!181 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!182 = !{!183, !184, !185, !188}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !180, file: !181, line: 57, baseType: !113, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !180, file: !181, line: 58, baseType: !113, size: 64, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !180, file: !181, line: 59, baseType: !186, size: 32, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !140, line: 21, baseType: !187)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !142, line: 27, baseType: !18)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !180, file: !181, line: 61, baseType: !186, size: 32, offset: 160)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !176, file: !177, line: 754, baseType: !18, size: 32, offset: 192)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !176, file: !177, line: 767, baseType: !112, size: 64, offset: 256)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !176, file: !177, line: 768, baseType: !192, size: 32, offset: 320)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !104, line: 113, baseType: !193)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !104, line: 111, size: 32, elements: !194)
!194 = !{!195}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !193, file: !104, line: 112, baseType: !196, size: 32)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !197, line: 174, baseType: !198)
!197 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !197, line: 172, size: 32, elements: !199)
!199 = !{!200}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !198, file: !197, line: 173, baseType: !201, size: 32)
!201 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !176, file: !177, line: 770, baseType: !18, size: 32, offset: 352)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !176, file: !177, line: 771, baseType: !18, size: 32, offset: 384)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !176, file: !177, line: 774, baseType: !201, size: 32, offset: 416)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !176, file: !177, line: 775, baseType: !206, size: 128, offset: 448)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !207, line: 58, size: 128, elements: !208)
!207 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!208 = !{!209, !215, !220, !221}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !206, file: !207, line: 59, baseType: !210, size: 64)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !211, line: 60, size: 64, elements: !212)
!211 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!212 = !{!213}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !210, file: !211, line: 61, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, scope: !206, file: !207, line: 60, baseType: !216, size: 32, offset: 64)
!216 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !206, file: !207, line: 60, size: 32, elements: !217)
!217 = !{!218, !219}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !216, file: !207, line: 61, baseType: !18, size: 32)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !216, file: !207, line: 62, baseType: !196, size: 32)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !206, file: !207, line: 65, baseType: !139, size: 16, offset: 96)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !206, file: !207, line: 65, baseType: !139, size: 16, offset: 112)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !176, file: !177, line: 776, baseType: !18, size: 32, offset: 576)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !176, file: !177, line: 777, baseType: !113, size: 64, offset: 640)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !176, file: !177, line: 778, baseType: !175, size: 64, offset: 704)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !176, file: !177, line: 787, baseType: !201, size: 32, offset: 768)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !176, file: !177, line: 788, baseType: !201, size: 32, offset: 800)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !176, file: !177, line: 790, baseType: !201, size: 32, offset: 832)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !176, file: !177, line: 792, baseType: !201, size: 32, offset: 864)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !176, file: !177, line: 793, baseType: !201, size: 32, offset: 896)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !176, file: !177, line: 794, baseType: !201, size: 32, offset: 928)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !176, file: !177, line: 795, baseType: !18, size: 32, offset: 960)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !176, file: !177, line: 797, baseType: !233, size: 2048, offset: 1024)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !177, line: 551, size: 2048, elements: !234)
!234 = !{!235, !240, !248, !249, !250, !256, !257, !258, !259, !260, !261, !265, !266, !267, !268, !270, !273, !274, !275}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !233, file: !177, line: 553, baseType: !236, size: 128)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !177, line: 411, size: 128, elements: !237)
!237 = !{!238, !239}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !236, file: !177, line: 412, baseType: !113, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !236, file: !177, line: 413, baseType: !186, size: 32, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !233, file: !177, line: 554, baseType: !241, size: 192, align: 64, offset: 128)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !242, line: 5, size: 192, align: 64, elements: !243)
!242 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!243 = !{!244, !245, !247}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !241, file: !242, line: 6, baseType: !113, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !241, file: !242, line: 7, baseType: !246, size: 64, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !241, file: !242, line: 8, baseType: !246, size: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !233, file: !177, line: 555, baseType: !145, size: 64, offset: 320)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !233, file: !177, line: 556, baseType: !145, size: 64, offset: 384)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !233, file: !177, line: 558, baseType: !251, size: 128, offset: 448)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !197, line: 190, size: 128, elements: !252)
!252 = !{!253, !255}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !251, file: !197, line: 191, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !251, file: !197, line: 191, baseType: !254, size: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !233, file: !177, line: 559, baseType: !18, size: 32, offset: 576)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !233, file: !177, line: 561, baseType: !145, size: 64, offset: 640)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !233, file: !177, line: 562, baseType: !145, size: 64, offset: 704)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !233, file: !177, line: 563, baseType: !145, size: 64, offset: 768)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !233, file: !177, line: 564, baseType: !145, size: 64, offset: 832)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !233, file: !177, line: 565, baseType: !262, size: 64, offset: 896)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !140, line: 22, baseType: !263)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !142, line: 30, baseType: !264)
!264 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !233, file: !177, line: 566, baseType: !145, size: 64, offset: 960)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !233, file: !177, line: 568, baseType: !145, size: 64, offset: 1024)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !233, file: !177, line: 571, baseType: !201, size: 32, offset: 1088)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !233, file: !177, line: 572, baseType: !269, size: 64, offset: 1152)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !233, file: !177, line: 574, baseType: !271, size: 64, offset: 1216)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !177, line: 49, flags: DIFlagFwdDecl)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !233, file: !177, line: 576, baseType: !271, size: 64, offset: 1280)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !233, file: !177, line: 578, baseType: !113, size: 64, offset: 1344)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !233, file: !177, line: 588, baseType: !276, size: 512, align: 512, offset: 1536)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !177, line: 497, size: 512, align: 512, elements: !277)
!277 = !{!278, !279, !280, !281, !282, !283, !284, !285, !286}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !276, file: !177, line: 498, baseType: !145, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !276, file: !177, line: 499, baseType: !145, size: 64, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !276, file: !177, line: 500, baseType: !145, size: 64, offset: 128)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !276, file: !177, line: 501, baseType: !186, size: 32, offset: 192)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !276, file: !177, line: 502, baseType: !186, size: 32, offset: 224)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !276, file: !177, line: 503, baseType: !113, size: 64, offset: 256)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !276, file: !177, line: 504, baseType: !113, size: 64, offset: 320)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !276, file: !177, line: 505, baseType: !113, size: 64, offset: 384)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !276, file: !177, line: 506, baseType: !287, size: 64, align: 64, offset: 448)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !177, line: 445, size: 64, align: 64, elements: !288)
!288 = !{!289, !290}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !287, file: !177, line: 446, baseType: !18, size: 32)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !287, file: !177, line: 447, baseType: !18, size: 32, offset: 32)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !176, file: !177, line: 798, baseType: !292, size: 384, offset: 3072)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !177, line: 592, size: 384, elements: !293)
!293 = !{!294, !295, !296, !297, !298, !299, !300}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !292, file: !177, line: 593, baseType: !251, size: 128)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !292, file: !177, line: 594, baseType: !113, size: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !292, file: !177, line: 595, baseType: !113, size: 64, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !292, file: !177, line: 596, baseType: !18, size: 32, offset: 256)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !292, file: !177, line: 597, baseType: !143, size: 16, offset: 288)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !292, file: !177, line: 598, baseType: !143, size: 16, offset: 304)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !292, file: !177, line: 600, baseType: !301, size: 64, offset: 320)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !176, file: !177, line: 799, baseType: !303, size: 1792, offset: 3456)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !177, line: 610, size: 1792, elements: !304)
!304 = !{!305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !424, !425}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !303, file: !177, line: 611, baseType: !241, size: 192, align: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !303, file: !177, line: 618, baseType: !145, size: 64, offset: 192)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !303, file: !177, line: 619, baseType: !145, size: 64, offset: 256)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !303, file: !177, line: 620, baseType: !145, size: 64, offset: 320)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !303, file: !177, line: 621, baseType: !145, size: 64, offset: 384)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !303, file: !177, line: 622, baseType: !145, size: 64, offset: 448)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !303, file: !177, line: 629, baseType: !262, size: 64, offset: 512)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !303, file: !177, line: 630, baseType: !145, size: 64, offset: 576)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !303, file: !177, line: 631, baseType: !18, size: 32, offset: 640)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !303, file: !177, line: 653, baseType: !18, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !303, file: !177, line: 654, baseType: !18, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !303, file: !177, line: 655, baseType: !18, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !303, file: !177, line: 656, baseType: !18, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !303, file: !177, line: 662, baseType: !319, size: 512, offset: 704)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !17, line: 118, size: 512, elements: !320)
!320 = !{!321, !329, !330, !335, !420, !421, !422, !423}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !319, file: !17, line: 119, baseType: !322, size: 256)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !323, line: 9, size: 256, elements: !324)
!323 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!324 = !{!325, !326}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !322, file: !323, line: 10, baseType: !241, size: 192, align: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !322, file: !323, line: 11, baseType: !327, size: 64, offset: 192)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !328, line: 29, baseType: !262)
!328 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!329 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !319, file: !17, line: 120, baseType: !327, size: 64, offset: 256)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !319, file: !17, line: 121, baseType: !331, size: 64, offset: 320)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{!16, !334}
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !319, file: !17, line: 122, baseType: !336, size: 64, offset: 384)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !17, line: 159, size: 512, align: 512, elements: !338)
!338 = !{!339, !388, !389, !393, !403, !404, !415, !419}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !337, file: !17, line: 160, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !17, line: 215, size: 4608, align: 512, elements: !342)
!342 = !{!343, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !341, file: !17, line: 216, baseType: !344, size: 32)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !345, line: 23, baseType: !346)
!345 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !345, line: 14, size: 32, elements: !347)
!347 = !{!348}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !346, file: !345, line: 15, baseType: !349, size: 32)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !350, line: 44, baseType: !351)
!350 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !350, line: 14, size: 32, elements: !352)
!352 = !{!353}
!353 = !DIDerivedType(tag: DW_TAG_member, scope: !351, file: !350, line: 15, baseType: !354, size: 32)
!354 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !351, file: !350, line: 15, size: 32, elements: !355)
!355 = !{!356, !357, !365}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !354, file: !350, line: 16, baseType: !196, size: 32)
!357 = !DIDerivedType(tag: DW_TAG_member, scope: !354, file: !350, line: 24, baseType: !358, size: 16)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !354, file: !350, line: 24, size: 16, elements: !359)
!359 = !{!360, !364}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !358, file: !350, line: 25, baseType: !361, size: 8)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !140, line: 17, baseType: !362)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !142, line: 21, baseType: !363)
!363 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !358, file: !350, line: 26, baseType: !361, size: 8, offset: 8)
!365 = !DIDerivedType(tag: DW_TAG_member, scope: !354, file: !350, line: 28, baseType: !366, size: 32)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !354, file: !350, line: 28, size: 32, elements: !367)
!367 = !{!368, !369}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !366, file: !350, line: 29, baseType: !139, size: 16)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !366, file: !350, line: 30, baseType: !139, size: 16, offset: 16)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !341, file: !17, line: 217, baseType: !18, size: 32, offset: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !341, file: !17, line: 218, baseType: !18, size: 32, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !341, file: !17, line: 219, baseType: !18, size: 32, offset: 96)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !341, file: !17, line: 220, baseType: !18, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !341, file: !17, line: 221, baseType: !18, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !341, file: !17, line: 222, baseType: !18, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !341, file: !17, line: 223, baseType: !18, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !341, file: !17, line: 224, baseType: !18, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !341, file: !17, line: 226, baseType: !18, size: 32, offset: 160)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !341, file: !17, line: 227, baseType: !143, size: 16, offset: 192)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !341, file: !17, line: 228, baseType: !143, size: 16, offset: 208)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !341, file: !17, line: 229, baseType: !18, size: 32, offset: 224)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !341, file: !17, line: 235, baseType: !327, size: 64, offset: 256)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !341, file: !17, line: 236, baseType: !334, size: 64, offset: 320)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !341, file: !17, line: 237, baseType: !327, size: 64, offset: 384)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !341, file: !17, line: 238, baseType: !334, size: 64, offset: 448)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !341, file: !17, line: 239, baseType: !387, size: 4096, align: 512, offset: 512)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, size: 4096, align: 512, elements: !10)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !337, file: !17, line: 161, baseType: !18, size: 32, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !337, file: !17, line: 162, baseType: !390, size: 32, offset: 96)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !197, line: 32, baseType: !391)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !392, line: 96, baseType: !201)
!392 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!393 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !337, file: !17, line: 163, baseType: !394, size: 32, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !395, line: 274, baseType: !396)
!395 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !395, line: 274, size: 32, elements: !397)
!397 = !{!398}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !396, file: !395, line: 274, baseType: !399, size: 32)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !395, line: 69, baseType: !400)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !395, line: 64, size: 32, elements: !401)
!401 = !{!402}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !400, file: !395, line: 65, baseType: !18, size: 32)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !337, file: !17, line: 164, baseType: !334, size: 64, offset: 192)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !337, file: !17, line: 165, baseType: !405, size: 128, offset: 256)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !323, line: 14, size: 128, elements: !406)
!406 = !{!407}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !405, file: !323, line: 15, baseType: !408, size: 128)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !242, line: 26, size: 128, elements: !409)
!409 = !{!410, !414}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !408, file: !242, line: 27, baseType: !411, size: 64)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !242, line: 12, size: 64, elements: !412)
!412 = !{!413}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !411, file: !242, line: 13, baseType: !246, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !408, file: !242, line: 28, baseType: !246, size: 64, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !337, file: !17, line: 166, baseType: !416, size: 64, offset: 384)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DISubroutineType(types: !418)
!418 = !{!327}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !337, file: !17, line: 167, baseType: !327, size: 64, offset: 448)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !319, file: !17, line: 123, baseType: !361, size: 8, offset: 448)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !319, file: !17, line: 124, baseType: !361, size: 8, offset: 456)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !319, file: !17, line: 125, baseType: !361, size: 8, offset: 464)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !319, file: !17, line: 126, baseType: !361, size: 8, offset: 472)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !303, file: !177, line: 671, baseType: !319, size: 512, offset: 1216)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !303, file: !177, line: 679, baseType: !426, size: 64, offset: 1728)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !176, file: !177, line: 800, baseType: !428, size: 64, offset: 5248)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !430)
!430 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !177, line: 800, flags: DIFlagFwdDecl)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !176, file: !177, line: 809, baseType: !432, size: 64, offset: 5312)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !177, line: 70, flags: DIFlagFwdDecl)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !176, file: !177, line: 825, baseType: !435, size: 2048, align: 512, offset: 5632)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !177, line: 509, size: 2048, align: 512, elements: !436)
!436 = !{!437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !435, file: !177, line: 511, baseType: !145, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !435, file: !177, line: 512, baseType: !145, size: 64, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !435, file: !177, line: 513, baseType: !145, size: 64, offset: 128)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !435, file: !177, line: 514, baseType: !145, size: 64, offset: 192)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !435, file: !177, line: 515, baseType: !145, size: 64, offset: 256)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !435, file: !177, line: 516, baseType: !145, size: 64, offset: 320)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !435, file: !177, line: 518, baseType: !145, size: 64, offset: 384)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !435, file: !177, line: 519, baseType: !145, size: 64, offset: 448)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !435, file: !177, line: 520, baseType: !262, size: 64, offset: 512)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !435, file: !177, line: 522, baseType: !145, size: 64, offset: 576)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !435, file: !177, line: 523, baseType: !145, size: 64, offset: 640)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !435, file: !177, line: 524, baseType: !262, size: 64, offset: 704)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !435, file: !177, line: 526, baseType: !262, size: 64, offset: 768)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !435, file: !177, line: 527, baseType: !145, size: 64, offset: 832)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !435, file: !177, line: 529, baseType: !145, size: 64, offset: 896)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !435, file: !177, line: 530, baseType: !145, size: 64, offset: 960)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !435, file: !177, line: 531, baseType: !145, size: 64, offset: 1024)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !435, file: !177, line: 532, baseType: !145, size: 64, offset: 1088)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !435, file: !177, line: 533, baseType: !145, size: 64, offset: 1152)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !435, file: !177, line: 535, baseType: !145, size: 64, offset: 1216)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !435, file: !177, line: 536, baseType: !145, size: 64, offset: 1280)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !435, file: !177, line: 537, baseType: !145, size: 64, offset: 1344)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !435, file: !177, line: 538, baseType: !145, size: 64, offset: 1408)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !435, file: !177, line: 539, baseType: !145, size: 64, offset: 1472)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !435, file: !177, line: 540, baseType: !145, size: 64, offset: 1536)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !435, file: !177, line: 541, baseType: !145, size: 64, offset: 1600)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !435, file: !177, line: 542, baseType: !145, size: 64, offset: 1664)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !435, file: !177, line: 543, baseType: !145, size: 64, offset: 1728)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !176, file: !177, line: 833, baseType: !18, size: 32, offset: 7680)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !176, file: !177, line: 836, baseType: !18, size: 32, offset: 7712)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !176, file: !177, line: 837, baseType: !201, size: 32, offset: 7744)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !176, file: !177, line: 838, baseType: !469, size: 64, offset: 7808)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !471)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !472, line: 19, baseType: !473)
!472 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !472, line: 19, size: 64, elements: !474)
!474 = !{!475}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !473, file: !472, line: 19, baseType: !476, size: 64)
!476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 64, elements: !477)
!477 = !{!478}
!478 = !DISubrange(count: 1)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !176, file: !177, line: 839, baseType: !480, size: 64, offset: 7872)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !176, file: !177, line: 840, baseType: !471, size: 64, offset: 7936)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !176, file: !177, line: 841, baseType: !112, size: 64, offset: 8000)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !176, file: !177, line: 843, baseType: !143, size: 16, offset: 8064)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !176, file: !177, line: 845, baseType: !143, size: 16, offset: 8080)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !176, file: !177, line: 848, baseType: !201, size: 32, offset: 8096)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !176, file: !177, line: 849, baseType: !487, size: 32, offset: 8128)
!487 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !177, line: 718, size: 32, elements: !488)
!488 = !{!489, !496}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !487, file: !177, line: 724, baseType: !490, size: 32)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !487, file: !177, line: 719, size: 32, elements: !491)
!491 = !{!492, !493, !494, !495}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !490, file: !177, line: 720, baseType: !361, size: 8)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !490, file: !177, line: 721, baseType: !361, size: 8, offset: 8)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !490, file: !177, line: 722, baseType: !361, size: 8, offset: 16)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !490, file: !177, line: 723, baseType: !361, size: 8, offset: 24)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !487, file: !177, line: 725, baseType: !186, size: 32)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !176, file: !177, line: 850, baseType: !251, size: 128, offset: 8192)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !176, file: !177, line: 851, baseType: !499, size: 64, offset: 8320)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !177, line: 60, flags: DIFlagFwdDecl)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !176, file: !177, line: 855, baseType: !113, size: 64, offset: 8384)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !176, file: !177, line: 856, baseType: !361, size: 8, offset: 8448)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !176, file: !177, line: 857, baseType: !361, size: 8, offset: 8456)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !176, file: !177, line: 858, baseType: !201, size: 32, offset: 8480)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !176, file: !177, line: 859, baseType: !251, size: 128, offset: 8512)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !176, file: !177, line: 860, baseType: !201, size: 32, offset: 8640)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !176, file: !177, line: 861, baseType: !251, size: 128, offset: 8704)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !176, file: !177, line: 873, baseType: !509, size: 256, offset: 8832)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !177, line: 376, size: 256, elements: !510)
!510 = !{!511, !512, !513, !514}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !509, file: !177, line: 381, baseType: !113, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !509, file: !177, line: 384, baseType: !147, size: 64, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !509, file: !177, line: 389, baseType: !147, size: 64, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !509, file: !177, line: 392, baseType: !147, size: 64, offset: 192)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !176, file: !177, line: 875, baseType: !251, size: 128, offset: 9088)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !176, file: !177, line: 877, baseType: !517, size: 320, offset: 9216)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !518, line: 86, size: 320, elements: !519)
!518 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!519 = !{!520, !521, !522}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !517, file: !518, line: 87, baseType: !201, size: 32)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !517, file: !518, line: 88, baseType: !251, size: 128, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !517, file: !518, line: 89, baseType: !251, size: 128, offset: 192)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !176, file: !177, line: 878, baseType: !241, size: 192, align: 64, offset: 9536)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !176, file: !177, line: 881, baseType: !525, size: 64, offset: 9728)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !46, line: 733, size: 10240, elements: !527)
!527 = !{!528, !3204}
!528 = !DIDerivedType(tag: DW_TAG_member, scope: !526, file: !46, line: 734, baseType: !529, size: 10240)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !526, file: !46, line: 734, size: 10240, elements: !530)
!530 = !{!531, !535, !557, !3083, !3084, !3085, !3086, !3087, !3088, !3095, !3096, !3097, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3136, !3138, !3141, !3184, !3185, !3186, !3189, !3190, !3191, !3194, !3195, !3196, !3202, !3203}
!531 = !DIDerivedType(tag: DW_TAG_member, scope: !529, file: !46, line: 739, baseType: !532, size: 512, align: 512)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !529, file: !46, line: 739, size: 512, align: 512, elements: !533)
!533 = !{!534}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !532, file: !46, line: 747, baseType: !196, size: 32)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !529, file: !46, line: 750, baseType: !536, size: 128, offset: 512)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !537, line: 218, size: 128, elements: !538)
!537 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!538 = !{!539, !555, !556}
!539 = !DIDerivedType(tag: DW_TAG_member, scope: !536, file: !537, line: 219, baseType: !540, size: 32)
!540 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !536, file: !537, line: 219, size: 32, elements: !541)
!541 = !{!542, !551}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !540, file: !537, line: 220, baseType: !543, size: 32)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !544, line: 29, baseType: !545)
!544 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !544, line: 17, size: 32, elements: !546)
!546 = !{!547}
!547 = !DIDerivedType(tag: DW_TAG_member, scope: !545, file: !544, line: 18, baseType: !548, size: 32)
!548 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !545, file: !544, line: 18, size: 32, elements: !549)
!549 = !{!550}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !548, file: !544, line: 19, baseType: !346, size: 32)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !540, file: !537, line: 221, baseType: !552)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !537, line: 197, baseType: !553)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !537, line: 197, elements: !554)
!554 = !{}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !536, file: !537, line: 223, baseType: !18, size: 32, offset: 32)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !536, file: !537, line: 224, baseType: !112, size: 64, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !529, file: !46, line: 752, baseType: !558, size: 64, offset: 640)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DISubroutineType(types: !560)
!560 = !{!113, !561, !113, !113, !113, !113}
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !75, line: 994, size: 1856, align: 64, elements: !563)
!563 = !{!564, !578, !579, !581, !588, !600, !603, !604, !680, !894, !903, !3073, !3074, !3075, !3076, !3077, !3078, !3080, !3081, !3082}
!564 = !DIDerivedType(tag: DW_TAG_member, scope: !562, file: !75, line: 995, baseType: !565, size: 128)
!565 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !562, file: !75, line: 995, size: 128, elements: !566)
!566 = !{!567, !568, !577}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !565, file: !75, line: 996, baseType: !210, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !565, file: !75, line: 997, baseType: !569, size: 128, align: 64)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !197, line: 232, size: 128, align: 64, elements: !570)
!570 = !{!571, !573}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !569, file: !197, line: 233, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !569, file: !197, line: 234, baseType: !574, size: 64, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DISubroutineType(types: !576)
!576 = !{null, !572}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !565, file: !75, line: 998, baseType: !18, size: 32)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !562, file: !75, line: 1005, baseType: !543, size: 32, offset: 128)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !562, file: !75, line: 1006, baseType: !580, size: 32, offset: 160)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !197, line: 156, baseType: !18)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !562, file: !75, line: 1007, baseType: !582, size: 64, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !583, line: 13, baseType: !584)
!583 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !197, line: 181, baseType: !585)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !197, line: 179, size: 64, elements: !586)
!586 = !{!587}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !585, file: !197, line: 180, baseType: !262, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !562, file: !75, line: 1008, baseType: !589, size: 256, offset: 256)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !590, line: 66, size: 256, elements: !591)
!590 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!591 = !{!592, !593, !594, !599}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !589, file: !590, line: 67, baseType: !582, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !589, file: !590, line: 68, baseType: !344, size: 32, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !589, file: !590, line: 70, baseType: !595, size: 32, offset: 96)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !596, line: 15, size: 32, elements: !597)
!596 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!597 = !{!598}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !595, file: !596, line: 20, baseType: !196, size: 32)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !589, file: !590, line: 72, baseType: !251, size: 128, offset: 128)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !562, file: !75, line: 1009, baseType: !601, size: 64, offset: 512)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !197, line: 52, baseType: !602)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !392, line: 88, baseType: !264)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !562, file: !75, line: 1010, baseType: !18, size: 32, offset: 576)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !562, file: !75, line: 1011, baseType: !605, size: 256, offset: 640)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !75, line: 948, size: 256, elements: !606)
!606 = !{!607, !630, !669, !670, !678, !679}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !605, file: !75, line: 949, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !609, line: 34, baseType: !610)
!609 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !609, line: 25, size: 64, elements: !611)
!611 = !{!612}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !610, file: !609, line: 26, baseType: !613, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !614, line: 27, baseType: !615)
!614 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !614, line: 13, size: 64, elements: !616)
!616 = !{!617, !629}
!617 = !DIDerivedType(tag: DW_TAG_member, scope: !615, file: !614, line: 14, baseType: !618, size: 32)
!618 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !615, file: !614, line: 14, size: 32, elements: !619)
!619 = !{!620, !621}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !618, file: !614, line: 15, baseType: !196, size: 32)
!621 = !DIDerivedType(tag: DW_TAG_member, scope: !618, file: !614, line: 16, baseType: !622, size: 32)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !618, file: !614, line: 16, size: 32, elements: !623)
!623 = !{!624, !625}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !622, file: !614, line: 18, baseType: !361, size: 8)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !622, file: !614, line: 19, baseType: !626, size: 24, offset: 8)
!626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 24, elements: !627)
!627 = !{!628}
!628 = !DISubrange(count: 3)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !615, file: !614, line: 26, baseType: !349, size: 32, offset: 32)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !605, file: !75, line: 950, baseType: !631, size: 64, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !23, line: 59, size: 768, elements: !633)
!633 = !{!634, !635, !636, !637, !650, !651, !658, !659}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !632, file: !23, line: 61, baseType: !192, size: 32)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !632, file: !23, line: 62, baseType: !18, size: 32, offset: 32)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !632, file: !23, line: 63, baseType: !543, size: 32, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !632, file: !23, line: 65, baseType: !638, size: 256, offset: 128)
!638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, size: 256, elements: !648)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !197, line: 194, size: 64, elements: !640)
!640 = !{!641}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !639, file: !197, line: 195, baseType: !642, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !197, line: 198, size: 128, elements: !644)
!644 = !{!645, !646}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !643, file: !197, line: 199, baseType: !642, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !643, file: !197, line: 199, baseType: !647, size: 64, offset: 64)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!648 = !{!649}
!649 = !DISubrange(count: 4)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !632, file: !23, line: 66, baseType: !639, size: 64, offset: 384)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !632, file: !23, line: 68, baseType: !652, size: 192, offset: 448)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !653, line: 41, baseType: !654)
!653 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !653, line: 37, size: 192, elements: !655)
!655 = !{!656, !657}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !654, file: !653, line: 38, baseType: !543, size: 32)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !654, file: !653, line: 39, baseType: !251, size: 128, offset: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !632, file: !23, line: 69, baseType: !569, size: 128, align: 64, offset: 640)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !632, file: !23, line: 70, baseType: !660, offset: 768)
!660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !661, elements: !667)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !23, line: 54, size: 128, elements: !662)
!662 = !{!663, !664}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !661, file: !23, line: 55, baseType: !201, size: 32)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !661, file: !23, line: 56, baseType: !665, size: 64, offset: 64)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !23, line: 56, flags: DIFlagFwdDecl)
!667 = !{!668}
!668 = !DISubrange(count: -1)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !605, file: !75, line: 951, baseType: !22, size: 32, offset: 128)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !605, file: !75, line: 952, baseType: !671, size: 32, offset: 160)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !672, line: 23, baseType: !673)
!672 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !672, line: 21, size: 32, elements: !674)
!674 = !{!675}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !673, file: !672, line: 22, baseType: !676, size: 32)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !197, line: 37, baseType: !677)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !392, line: 49, baseType: !18)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !605, file: !75, line: 952, baseType: !671, size: 32, offset: 192)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !605, file: !75, line: 953, baseType: !201, size: 32, offset: 224)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !562, file: !75, line: 1012, baseType: !681, size: 64, offset: 896)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !683)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !684, line: 110, size: 1472, elements: !685)
!684 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!685 = !{!686, !687, !688, !695, !696, !697, !698, !699, !700, !701, !702, !708, !709, !710, !711, !712, !713, !839, !840, !841, !842, !843, !874, !877, !881, !889}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !683, file: !684, line: 111, baseType: !582, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !683, file: !684, line: 112, baseType: !671, size: 32, offset: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !683, file: !684, line: 113, baseType: !689, size: 32, offset: 96)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !672, line: 28, baseType: !690)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !672, line: 26, size: 32, elements: !691)
!691 = !{!692}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !690, file: !672, line: 27, baseType: !693, size: 32)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !197, line: 38, baseType: !694)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !392, line: 50, baseType: !18)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !683, file: !684, line: 114, baseType: !671, size: 32, offset: 128)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !683, file: !684, line: 115, baseType: !689, size: 32, offset: 160)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !683, file: !684, line: 116, baseType: !671, size: 32, offset: 192)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !683, file: !684, line: 117, baseType: !689, size: 32, offset: 224)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !683, file: !684, line: 118, baseType: !671, size: 32, offset: 256)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !683, file: !684, line: 119, baseType: !689, size: 32, offset: 288)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !683, file: !684, line: 120, baseType: !18, size: 32, offset: 320)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !683, file: !684, line: 121, baseType: !703, size: 64, offset: 384)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !704, line: 24, baseType: !705)
!704 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !704, line: 24, size: 64, elements: !706)
!706 = !{!707}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !705, file: !704, line: 24, baseType: !145, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !683, file: !684, line: 122, baseType: !703, size: 64, offset: 448)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !683, file: !684, line: 123, baseType: !703, size: 64, offset: 512)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !683, file: !684, line: 124, baseType: !703, size: 64, offset: 576)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !683, file: !684, line: 125, baseType: !703, size: 64, offset: 640)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !683, file: !684, line: 127, baseType: !363, size: 8, offset: 704)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !683, file: !684, line: 129, baseType: !714, size: 64, offset: 768)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !716, line: 195, size: 1728, elements: !717)
!716 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!717 = !{!718, !719, !724, !729, !738, !741, !742, !749, !750, !751, !752, !755, !756, !757, !759, !760, !803, !824}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !715, file: !716, line: 196, baseType: !192, size: 32)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !715, file: !716, line: 197, baseType: !720, size: 32, offset: 32)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !716, line: 28, baseType: !721)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !197, line: 104, baseType: !722)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !140, line: 20, baseType: !723)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !142, line: 26, baseType: !201)
!724 = !DIDerivedType(tag: DW_TAG_member, scope: !715, file: !716, line: 198, baseType: !725, size: 192, offset: 64)
!725 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !715, file: !716, line: 198, size: 192, elements: !726)
!726 = !{!727, !728}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !725, file: !716, line: 199, baseType: !251, size: 128)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !725, file: !716, line: 200, baseType: !241, size: 192, align: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !715, file: !716, line: 205, baseType: !730, size: 320, offset: 256)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !731, line: 48, size: 320, elements: !732)
!731 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!732 = !{!733, !734, !735, !736, !737}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !730, file: !731, line: 49, baseType: !582, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !730, file: !731, line: 55, baseType: !582, size: 64, offset: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !730, file: !731, line: 57, baseType: !595, size: 32, offset: 128)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !730, file: !731, line: 59, baseType: !344, size: 32, offset: 160)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !730, file: !731, line: 60, baseType: !251, size: 128, offset: 192)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !715, file: !716, line: 206, baseType: !739, size: 64, offset: 576)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !716, line: 206, flags: DIFlagFwdDecl)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !715, file: !716, line: 207, baseType: !112, size: 64, offset: 640)
!742 = !DIDerivedType(tag: DW_TAG_member, scope: !715, file: !716, line: 208, baseType: !743, size: 64, offset: 704)
!743 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !715, file: !716, line: 208, size: 64, elements: !744)
!744 = !{!745, !748}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !743, file: !716, line: 209, baseType: !746, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !747, line: 8, baseType: !263)
!747 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!748 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !743, file: !716, line: 210, baseType: !746, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !715, file: !716, line: 212, baseType: !746, size: 64, offset: 768)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !715, file: !716, line: 213, baseType: !671, size: 32, offset: 832)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !715, file: !716, line: 214, baseType: !689, size: 32, offset: 864)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !715, file: !716, line: 215, baseType: !753, size: 32, offset: 896)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !716, line: 31, baseType: !754)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !197, line: 110, baseType: !186)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !715, file: !716, line: 216, baseType: !143, size: 16, offset: 928)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !715, file: !716, line: 217, baseType: !143, size: 16, offset: 944)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !715, file: !716, line: 221, baseType: !758, size: 16, offset: 960)
!758 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !715, file: !716, line: 228, baseType: !113, size: 64, offset: 1024)
!760 = !DIDerivedType(tag: DW_TAG_member, scope: !715, file: !716, line: 245, baseType: !761, size: 320, offset: 1088)
!761 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !715, file: !716, line: 245, size: 320, elements: !762)
!762 = !{!763, !794}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !761, file: !716, line: 246, baseType: !764, size: 320)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !716, line: 114, size: 320, elements: !765)
!765 = !{!766, !767, !779, !782, !791}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !764, file: !716, line: 116, baseType: !113, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, scope: !764, file: !716, line: 117, baseType: !768, size: 64, offset: 64)
!768 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !764, file: !716, line: 117, size: 64, elements: !769)
!769 = !{!770, !778}
!770 = !DIDerivedType(tag: DW_TAG_member, scope: !768, file: !716, line: 118, baseType: !771, size: 64)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !768, file: !716, line: 118, size: 64, elements: !772)
!772 = !{!773, !774}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !771, file: !716, line: 120, baseType: !139, size: 16)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !771, file: !716, line: 121, baseType: !775, size: 48, offset: 16)
!775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !776)
!776 = !{!777}
!777 = !DISubrange(count: 6)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !768, file: !716, line: 127, baseType: !113, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !764, file: !716, line: 129, baseType: !780, size: 64, offset: 128)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !716, line: 102, flags: DIFlagFwdDecl)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !764, file: !716, line: 130, baseType: !783, size: 64, offset: 192)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !716, line: 108, size: 192, elements: !785)
!785 = !{!786, !787, !788}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !784, file: !716, line: 109, baseType: !569, size: 128, align: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !784, file: !716, line: 110, baseType: !192, size: 32, offset: 128)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !784, file: !716, line: 111, baseType: !789, size: 8, offset: 160)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !197, line: 35, baseType: !790)
!790 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !764, file: !716, line: 131, baseType: !792, size: 64, offset: 256)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!794 = !DIDerivedType(tag: DW_TAG_member, scope: !761, file: !716, line: 247, baseType: !795, size: 320)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !761, file: !716, line: 247, size: 320, elements: !796)
!796 = !{!797, !798, !799, !800, !801}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !795, file: !716, line: 248, baseType: !113, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !795, file: !716, line: 249, baseType: !113, size: 64, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !795, file: !716, line: 250, baseType: !780, size: 64, offset: 128)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !795, file: !716, line: 251, baseType: !783, size: 64, offset: 192)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !795, file: !716, line: 252, baseType: !802, size: 64, offset: 256)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, scope: !715, file: !716, line: 260, baseType: !804, size: 256, offset: 1408)
!804 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !715, file: !716, line: 260, size: 256, elements: !805)
!805 = !{!806, !812}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !804, file: !716, line: 261, baseType: !807, size: 256)
!807 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !716, line: 134, size: 256, elements: !808)
!808 = !{!809, !810}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !807, file: !716, line: 135, baseType: !112, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !807, file: !716, line: 136, baseType: !811, size: 256)
!811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 256, elements: !648)
!812 = !DIDerivedType(tag: DW_TAG_member, scope: !804, file: !716, line: 262, baseType: !813, size: 256)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !804, file: !716, line: 262, size: 256, elements: !814)
!814 = !{!815, !816}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !813, file: !716, line: 264, baseType: !251, size: 128)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !813, file: !716, line: 265, baseType: !817, size: 128, offset: 128)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !818, line: 22, size: 128, elements: !819)
!818 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!819 = !{!820, !823}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !817, file: !818, line: 23, baseType: !821, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !818, line: 23, flags: DIFlagFwdDecl)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !817, file: !818, line: 24, baseType: !113, size: 64, offset: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !715, file: !716, line: 280, baseType: !825, size: 64, offset: 1664)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !716, line: 176, size: 192, elements: !827)
!827 = !{!828, !837, !838}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !826, file: !716, line: 177, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !716, line: 171, baseType: !830)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{!201, !714, !833, !835, !714}
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !781)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !807)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !826, file: !716, line: 178, baseType: !714, size: 64, offset: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !826, file: !716, line: 179, baseType: !780, size: 64, offset: 128)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !683, file: !684, line: 130, baseType: !714, size: 64, offset: 832)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !683, file: !684, line: 131, baseType: !714, size: 64, offset: 896)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !683, file: !684, line: 132, baseType: !714, size: 64, offset: 960)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !683, file: !684, line: 135, baseType: !112, size: 64, offset: 1024)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !683, file: !684, line: 137, baseType: !844, size: 64, offset: 1088)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !846, line: 14, size: 1088, elements: !847)
!846 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!847 = !{!848, !849, !858, !859, !860, !861, !862, !863}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !845, file: !846, line: 15, baseType: !192, size: 32)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !845, file: !846, line: 17, baseType: !850, size: 320, offset: 64)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !851, line: 22, size: 320, elements: !852)
!851 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!852 = !{!853, !854, !855, !856}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !850, file: !851, line: 23, baseType: !344, size: 32)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !850, file: !851, line: 24, baseType: !262, size: 64, offset: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !850, file: !851, line: 26, baseType: !251, size: 128, offset: 128)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !850, file: !851, line: 28, baseType: !857, size: 64, offset: 256)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !845, file: !846, line: 19, baseType: !113, size: 64, offset: 384)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !845, file: !846, line: 20, baseType: !582, size: 64, offset: 448)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !845, file: !846, line: 23, baseType: !643, size: 128, offset: 512)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !845, file: !846, line: 24, baseType: !671, size: 32, offset: 640)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !845, file: !846, line: 29, baseType: !582, size: 64, offset: 704)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !845, file: !846, line: 36, baseType: !864, size: 320, offset: 768)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !865, line: 15, size: 320, elements: !866)
!865 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!866 = !{!867, !868, !869, !870, !871, !872, !873}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !864, file: !865, line: 16, baseType: !344, size: 32)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !864, file: !865, line: 18, baseType: !201, size: 32, offset: 32)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !864, file: !865, line: 19, baseType: !201, size: 32, offset: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !864, file: !865, line: 20, baseType: !201, size: 32, offset: 96)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !864, file: !865, line: 21, baseType: !201, size: 32, offset: 128)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !864, file: !865, line: 22, baseType: !113, size: 64, offset: 192)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !864, file: !865, line: 23, baseType: !113, size: 64, offset: 256)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !683, file: !684, line: 138, baseType: !875, size: 64, offset: 1152)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !672, line: 18, flags: DIFlagFwdDecl)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !683, file: !684, line: 139, baseType: !878, size: 64, offset: 1216)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !880, line: 16, flags: DIFlagFwdDecl)
!880 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!881 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !683, file: !684, line: 140, baseType: !882, size: 64, offset: 1280)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !684, line: 25, size: 64, elements: !884)
!884 = !{!885, !886, !887}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !883, file: !684, line: 26, baseType: !196, size: 32)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !883, file: !684, line: 27, baseType: !201, size: 32, offset: 32)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !883, file: !684, line: 28, baseType: !888, offset: 64)
!888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !689, elements: !667)
!889 = !DIDerivedType(tag: DW_TAG_member, scope: !683, file: !684, line: 142, baseType: !890, size: 128, offset: 1344)
!890 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !683, file: !684, line: 142, size: 128, elements: !891)
!891 = !{!892, !893}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !890, file: !684, line: 143, baseType: !201, size: 32)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !890, file: !684, line: 144, baseType: !569, size: 128, align: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !562, file: !75, line: 1013, baseType: !895, size: 256, offset: 960)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !75, line: 970, size: 256, elements: !896)
!896 = !{!897, !898, !899, !900, !901, !902}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !895, file: !75, line: 971, baseType: !113, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !895, file: !75, line: 972, baseType: !18, size: 32, offset: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !895, file: !75, line: 973, baseType: !18, size: 32, offset: 96)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !895, file: !75, line: 974, baseType: !18, size: 32, offset: 128)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !895, file: !75, line: 975, baseType: !18, size: 32, offset: 160)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !895, file: !75, line: 976, baseType: !601, size: 64, offset: 192)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !562, file: !75, line: 1014, baseType: !904, size: 128, offset: 1216)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !905, line: 8, size: 128, elements: !906)
!905 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!906 = !{!907, !3072}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !904, file: !905, line: 9, baseType: !908, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !910, line: 70, size: 256, elements: !911)
!910 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!911 = !{!912, !3069, !3070, !3071}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !909, file: !910, line: 71, baseType: !913, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !915, line: 82, size: 1536, elements: !916)
!915 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!916 = !{!917, !918, !923, !931, !932, !947, !3036, !3038, !3051, !3052, !3053, !3054, !3055, !3061, !3062, !3063}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !914, file: !915, line: 84, baseType: !18, size: 32)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !914, file: !915, line: 85, baseType: !919, size: 32, offset: 32)
!919 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !395, line: 275, baseType: !920)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !395, line: 275, size: 32, elements: !921)
!921 = !{!922}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !920, file: !395, line: 275, baseType: !399, size: 32)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !914, file: !915, line: 86, baseType: !924, size: 128, offset: 64)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !925, line: 38, size: 128, elements: !926)
!925 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!926 = !{!927, !929}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !924, file: !925, line: 39, baseType: !928, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !924, file: !925, line: 39, baseType: !930, size: 64, offset: 64)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !914, file: !915, line: 87, baseType: !913, size: 64, offset: 192)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !914, file: !915, line: 88, baseType: !933, size: 128, offset: 256)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !915, line: 49, size: 128, elements: !934)
!934 = !{!935, !944}
!935 = !DIDerivedType(tag: DW_TAG_member, scope: !933, file: !915, line: 50, baseType: !936, size: 64)
!936 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !933, file: !915, line: 50, size: 64, elements: !937)
!937 = !{!938, !943}
!938 = !DIDerivedType(tag: DW_TAG_member, scope: !936, file: !915, line: 51, baseType: !939, size: 64)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !936, file: !915, line: 51, size: 64, elements: !940)
!940 = !{!941, !942}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !939, file: !915, line: 52, baseType: !186, size: 32)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !939, file: !915, line: 52, baseType: !186, size: 32, offset: 32)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !936, file: !915, line: 54, baseType: !145, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !933, file: !915, line: 56, baseType: !945, size: 64, offset: 64)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !363)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !914, file: !915, line: 89, baseType: !948, size: 64, offset: 384)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !75, line: 641, size: 4800, elements: !950)
!950 = !{!951, !953, !954, !955, !956, !957, !958, !961, !962, !1160, !2850, !2851, !2852, !2853, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !3018, !3021, !3022, !3023, !3032, !3033, !3034, !3035}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !949, file: !75, line: 642, baseType: !952, size: 16)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !197, line: 24, baseType: !143)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !949, file: !75, line: 643, baseType: !143, size: 16, offset: 16)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !949, file: !75, line: 644, baseType: !671, size: 32, offset: 32)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !949, file: !75, line: 645, baseType: !251, size: 128, offset: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !949, file: !75, line: 646, baseType: !689, size: 32, offset: 192)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !949, file: !75, line: 647, baseType: !18, size: 32, offset: 224)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !949, file: !75, line: 650, baseType: !959, size: 64, offset: 256)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !75, line: 607, flags: DIFlagFwdDecl)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !949, file: !75, line: 651, baseType: !959, size: 64, offset: 320)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !949, file: !75, line: 654, baseType: !963, size: 64, offset: 384)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !965)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !75, line: 1966, size: 2048, align: 512, elements: !966)
!966 = !{!967, !971, !984, !990, !994, !998, !1002, !1006, !1010, !1014, !1018, !1019, !1025, !1029, !1067, !1098, !1108, !1114, !1118, !1122, !1126, !1130, !1134, !1140, !1144}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !965, file: !75, line: 1967, baseType: !968, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DISubroutineType(types: !970)
!970 = !{!913, !948, !913, !18}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !965, file: !75, line: 1968, baseType: !972, size: 64, offset: 64)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DISubroutineType(types: !974)
!974 = !{!792, !913, !948, !975}
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !977, line: 10, size: 128, elements: !978)
!977 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!978 = !{!979, !983}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !976, file: !977, line: 11, baseType: !980, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DISubroutineType(types: !982)
!982 = !{null, !112}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !976, file: !977, line: 12, baseType: !112, size: 64, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !965, file: !75, line: 1969, baseType: !985, size: 64, offset: 128)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DISubroutineType(types: !987)
!987 = !{!201, !988, !948, !201}
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !704, line: 42, flags: DIFlagFwdDecl)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !965, file: !75, line: 1970, baseType: !991, size: 64, offset: 192)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DISubroutineType(types: !993)
!993 = !{!959, !948, !201, !789}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !965, file: !75, line: 1972, baseType: !995, size: 64, offset: 256)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DISubroutineType(types: !997)
!997 = !{!201, !913, !802, !201}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !965, file: !75, line: 1974, baseType: !999, size: 64, offset: 320)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!201, !988, !948, !913, !952, !789}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !965, file: !75, line: 1976, baseType: !1003, size: 64, offset: 384)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!201, !913, !948, !913}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !965, file: !75, line: 1977, baseType: !1007, size: 64, offset: 448)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!201, !948, !913}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !965, file: !75, line: 1978, baseType: !1011, size: 64, offset: 512)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!201, !988, !948, !913, !792}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !965, file: !75, line: 1980, baseType: !1015, size: 64, offset: 576)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!201, !988, !948, !913, !952}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !965, file: !75, line: 1982, baseType: !1007, size: 64, offset: 640)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !965, file: !75, line: 1983, baseType: !1020, size: 64, offset: 704)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!201, !988, !948, !913, !952, !1023}
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !197, line: 21, baseType: !1024)
!1024 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !197, line: 18, baseType: !186)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !965, file: !75, line: 1985, baseType: !1026, size: 64, offset: 768)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!201, !988, !948, !913, !948, !913, !18}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !965, file: !75, line: 1987, baseType: !1030, size: 64, offset: 832)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!201, !988, !913, !1033}
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !75, line: 226, size: 640, elements: !1035)
!1035 = !{!1036, !1037, !1038, !1048, !1057, !1058, !1064, !1065, !1066}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1034, file: !75, line: 227, baseType: !18, size: 32)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1034, file: !75, line: 228, baseType: !952, size: 16, offset: 32)
!1038 = !DIDerivedType(tag: DW_TAG_member, scope: !1034, file: !75, line: 241, baseType: !1039, size: 32, offset: 64)
!1039 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1034, file: !75, line: 241, size: 32, elements: !1040)
!1040 = !{!1041, !1042}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1039, file: !75, line: 242, baseType: !671, size: 32)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1039, file: !75, line: 243, baseType: !1043, size: 32)
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1044, line: 16, baseType: !1045)
!1044 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1044, line: 14, size: 32, elements: !1046)
!1046 = !{!1047}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1045, file: !1044, line: 15, baseType: !676, size: 32)
!1048 = !DIDerivedType(tag: DW_TAG_member, scope: !1034, file: !75, line: 245, baseType: !1049, size: 32, offset: 96)
!1049 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1034, file: !75, line: 245, size: 32, elements: !1050)
!1050 = !{!1051, !1052}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1049, file: !75, line: 246, baseType: !689, size: 32)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1049, file: !75, line: 247, baseType: !1053, size: 32)
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1044, line: 20, baseType: !1054)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1044, line: 18, size: 32, elements: !1055)
!1055 = !{!1056}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1054, file: !1044, line: 19, baseType: !693, size: 32)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1034, file: !75, line: 249, baseType: !601, size: 64, offset: 128)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1034, file: !75, line: 250, baseType: !1059, size: 128, offset: 192)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !747, line: 13, size: 128, elements: !1060)
!1060 = !{!1061, !1062}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1059, file: !747, line: 14, baseType: !746, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1059, file: !747, line: 15, baseType: !1063, size: 64, offset: 64)
!1063 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1034, file: !75, line: 251, baseType: !1059, size: 128, offset: 320)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1034, file: !75, line: 252, baseType: !1059, size: 128, offset: 448)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1034, file: !75, line: 259, baseType: !561, size: 64, offset: 576)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !965, file: !75, line: 1988, baseType: !1068, size: 64, offset: 896)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!201, !988, !1071, !1073, !186, !18}
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !904)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1075, line: 22, size: 1280, elements: !1076)
!1075 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1076 = !{!1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1074, file: !1075, line: 23, baseType: !186, size: 32)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1074, file: !1075, line: 24, baseType: !952, size: 16, offset: 32)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1074, file: !1075, line: 25, baseType: !18, size: 32, offset: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1074, file: !1075, line: 26, baseType: !754, size: 32, offset: 96)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1074, file: !1075, line: 27, baseType: !145, size: 64, offset: 128)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1074, file: !1075, line: 28, baseType: !145, size: 64, offset: 192)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1074, file: !1075, line: 41, baseType: !145, size: 64, offset: 256)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1074, file: !1075, line: 42, baseType: !1023, size: 32, offset: 320)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1074, file: !1075, line: 43, baseType: !1023, size: 32, offset: 352)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1074, file: !1075, line: 44, baseType: !671, size: 32, offset: 384)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1074, file: !1075, line: 45, baseType: !689, size: 32, offset: 416)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1074, file: !1075, line: 46, baseType: !601, size: 64, offset: 448)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1074, file: !1075, line: 47, baseType: !1059, size: 128, offset: 512)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1074, file: !1075, line: 48, baseType: !1059, size: 128, offset: 640)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1074, file: !1075, line: 49, baseType: !1059, size: 128, offset: 768)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1074, file: !1075, line: 50, baseType: !1059, size: 128, offset: 896)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1074, file: !1075, line: 51, baseType: !145, size: 64, offset: 1024)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1074, file: !1075, line: 52, baseType: !145, size: 64, offset: 1088)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1074, file: !1075, line: 53, baseType: !186, size: 32, offset: 1152)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1074, file: !1075, line: 54, baseType: !186, size: 32, offset: 1184)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1074, file: !1075, line: 55, baseType: !145, size: 64, offset: 1216)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !965, file: !75, line: 1990, baseType: !1099, size: 64, offset: 960)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{!1102, !913, !802, !1105}
!1102 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !197, line: 66, baseType: !1103)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !392, line: 73, baseType: !1104)
!1104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !392, line: 15, baseType: !1063)
!1105 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !197, line: 61, baseType: !1106)
!1106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !392, line: 72, baseType: !1107)
!1107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !392, line: 16, baseType: !113)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !965, file: !75, line: 1991, baseType: !1109, size: 64, offset: 1024)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!201, !948, !1112, !145, !145}
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !75, line: 55, flags: DIFlagFwdDecl)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !965, file: !75, line: 1993, baseType: !1115, size: 64, offset: 1088)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!201, !948, !201}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !965, file: !75, line: 1994, baseType: !1119, size: 64, offset: 1152)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!201, !948, !913, !561, !18, !952}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !965, file: !75, line: 1997, baseType: !1123, size: 64, offset: 1216)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!201, !988, !948, !561, !952}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !965, file: !75, line: 1999, baseType: !1127, size: 64, offset: 1280)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!959, !988, !913, !201}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !965, file: !75, line: 2001, baseType: !1131, size: 64, offset: 1344)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!201, !988, !913, !959, !201}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !965, file: !75, line: 2003, baseType: !1135, size: 64, offset: 1408)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!201, !988, !913, !1138}
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !75, line: 76, flags: DIFlagFwdDecl)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !965, file: !75, line: 2005, baseType: !1141, size: 64, offset: 1472)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!201, !913, !1138}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !965, file: !75, line: 2006, baseType: !1145, size: 64, offset: 1536)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!1148, !948}
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !75, line: 3192, size: 192, elements: !1150)
!1150 = !{!1151, !1159}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1149, file: !75, line: 3193, baseType: !1152, size: 128)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1153, line: 296, size: 128, elements: !1154)
!1153 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1154 = !{!1155, !1156, !1158}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1152, file: !1153, line: 297, baseType: !543, size: 32)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1152, file: !1153, line: 299, baseType: !1157, size: 32, offset: 32)
!1157 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !197, line: 154, baseType: !18)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1152, file: !1153, line: 300, baseType: !112, size: 64, offset: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1149, file: !75, line: 3194, baseType: !186, size: 32, offset: 128)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !949, file: !75, line: 655, baseType: !1161, size: 64, offset: 448)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !75, line: 1190, size: 10752, elements: !1163)
!1163 = !{!1164, !1165, !1166, !1167, !1168, !1169, !2363, !2495, !2535, !2618, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2635, !2639, !2640, !2643, !2646, !2649, !2652, !2653, !2654, !2695, !2721, !2722, !2723, !2724, !2725, !2726, !2729, !2733, !2742, !2743, !2744, !2745, !2804, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1162, file: !75, line: 1191, baseType: !251, size: 128)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1162, file: !75, line: 1192, baseType: !1023, size: 32, offset: 128)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1162, file: !75, line: 1193, baseType: !363, size: 8, offset: 160)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1162, file: !75, line: 1194, baseType: !113, size: 64, offset: 192)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1162, file: !75, line: 1195, baseType: !601, size: 64, offset: 256)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1162, file: !75, line: 1196, baseType: !1170, size: 64, offset: 320)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !75, line: 2366, size: 576, elements: !1172)
!1172 = !{!1173, !1174, !1175, !1181, !1185, !1189, !1193, !2351, !2352, !2353, !2355, !2356, !2357, !2359, !2360, !2361, !2362}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1171, file: !75, line: 2367, baseType: !792, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1171, file: !75, line: 2368, baseType: !201, size: 32, offset: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1171, file: !75, line: 2376, baseType: !1176, size: 64, offset: 128)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!201, !1179}
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !910, line: 21, flags: DIFlagFwdDecl)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1171, file: !75, line: 2377, baseType: !1182, size: 64, offset: 192)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1184)
!1184 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !75, line: 75, flags: DIFlagFwdDecl)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1171, file: !75, line: 2378, baseType: !1186, size: 64, offset: 256)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!913, !1170, !201, !792, !112}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1171, file: !75, line: 2380, baseType: !1190, size: 64, offset: 320)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{null, !1161}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1171, file: !75, line: 2381, baseType: !1194, size: 64, offset: 384)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !31, line: 402, size: 9216, align: 512, elements: !1196)
!1196 = !{!1197, !1198, !1199, !1203, !1994, !2020, !2021, !2022, !2023, !2027, !2030, !2031, !2032, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2100, !2104, !2124, !2144, !2145, !2146, !2147, !2156, !2179, !2180, !2183, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2197, !2198, !2309, !2317, !2318, !2319, !2321, !2325, !2326, !2330, !2331, !2332, !2333, !2335, !2336, !2337, !2344, !2345, !2346, !2350}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1195, file: !31, line: 403, baseType: !30, size: 32)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1195, file: !31, line: 406, baseType: !251, size: 128, offset: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1195, file: !31, line: 409, baseType: !1200, size: 448, offset: 192)
!1200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !1201)
!1201 = !{!1202}
!1202 = !DISubrange(count: 56)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1195, file: !31, line: 417, baseType: !1204, size: 768, offset: 640)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !31, line: 45, size: 768, elements: !1205)
!1205 = !{!1206, !1987, !1988, !1989, !1992}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1204, file: !31, line: 46, baseType: !1207, size: 512)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1208, line: 64, size: 512, elements: !1209)
!1208 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1209 = !{!1210, !1211, !1212, !1214, !1258, !1866, !1977, !1982, !1983, !1984, !1985, !1986}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1207, file: !1208, line: 65, baseType: !792, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1207, file: !1208, line: 66, baseType: !251, size: 128, offset: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1207, file: !1208, line: 67, baseType: !1213, size: 64, offset: 192)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1207, file: !1208, line: 68, baseType: !1215, size: 64, offset: 256)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1208, line: 168, size: 768, elements: !1217)
!1217 = !{!1218, !1219, !1220, !1221}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1216, file: !1208, line: 169, baseType: !251, size: 128)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1216, file: !1208, line: 170, baseType: !543, size: 32, offset: 128)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1216, file: !1208, line: 171, baseType: !1207, size: 512, offset: 192)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1216, file: !1208, line: 172, baseType: !1222, size: 64, offset: 704)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1224)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1208, line: 133, size: 192, elements: !1225)
!1225 = !{!1226, !1233, !1238}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1224, file: !1208, line: 134, baseType: !1227, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1228)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!201, !1231}
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1207)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1224, file: !1208, line: 135, baseType: !1234, size: 64, offset: 64)
!1234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1235)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!792, !1231}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1224, file: !1208, line: 136, baseType: !1239, size: 64, offset: 128)
!1239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1240)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!201, !1231, !1243}
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1208, line: 125, size: 20736, elements: !1245)
!1245 = !{!1246, !1248, !1252, !1253, !1257}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1244, file: !1208, line: 126, baseType: !1247, size: 192)
!1247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !802, size: 192, elements: !627)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1244, file: !1208, line: 127, baseType: !1249, size: 4096, offset: 192)
!1249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !802, size: 4096, elements: !1250)
!1250 = !{!1251}
!1251 = !DISubrange(count: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1244, file: !1208, line: 128, baseType: !201, size: 32, offset: 4288)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1244, file: !1208, line: 129, baseType: !1254, size: 16384, offset: 4320)
!1254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !1255)
!1255 = !{!1256}
!1256 = !DISubrange(count: 2048)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1244, file: !1208, line: 130, baseType: !201, size: 32, offset: 20704)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1207, file: !1208, line: 69, baseType: !1259, size: 64, offset: 320)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1261)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1208, line: 116, size: 384, elements: !1262)
!1262 = !{!1263, !1267, !1286, !1826, !1856, !1860}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1261, file: !1208, line: 117, baseType: !1264, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{null, !1213}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1261, file: !1208, line: 118, baseType: !1268, size: 64, offset: 64)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1270)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1271, line: 254, size: 128, elements: !1272)
!1271 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1272 = !{!1273, !1282}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1270, file: !1271, line: 255, baseType: !1274, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!1102, !1213, !1277, !802}
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1271, line: 30, size: 128, elements: !1279)
!1279 = !{!1280, !1281}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1278, file: !1271, line: 31, baseType: !792, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1278, file: !1271, line: 32, baseType: !952, size: 16, offset: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1270, file: !1271, line: 256, baseType: !1283, size: 64, offset: 64)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!1102, !1213, !1277, !792, !1105}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1261, file: !1208, line: 119, baseType: !1287, size: 64, offset: 128)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1290)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1271, line: 84, size: 320, elements: !1291)
!1291 = !{!1292, !1293, !1297, !1822, !1824}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1290, file: !1271, line: 85, baseType: !792, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1290, file: !1271, line: 86, baseType: !1294, size: 64, offset: 64)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!952, !1213, !1277, !201}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1290, file: !1271, line: 88, baseType: !1298, size: 64, offset: 128)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!952, !1213, !1301, !201}
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1271, line: 175, size: 512, elements: !1303)
!1303 = !{!1304, !1305, !1306, !1307, !1813, !1817, !1818}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1302, file: !1271, line: 176, baseType: !1278, size: 128)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1302, file: !1271, line: 177, baseType: !1105, size: 64, offset: 128)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1302, file: !1271, line: 178, baseType: !112, size: 64, offset: 192)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1302, file: !1271, line: 179, baseType: !1308, size: 64, offset: 256)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{!1311}
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !75, line: 472, size: 1536, align: 64, elements: !1313)
!1313 = !{!1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1805, !1806, !1807, !1810, !1811, !1812}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1312, file: !75, line: 473, baseType: !948, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1312, file: !75, line: 474, baseType: !1152, size: 128, offset: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1312, file: !75, line: 475, baseType: !730, size: 320, offset: 192)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1312, file: !75, line: 476, baseType: !1157, size: 32, offset: 512)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1312, file: !75, line: 477, baseType: !196, size: 32, offset: 544)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1312, file: !75, line: 482, baseType: !408, size: 128, offset: 576)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1312, file: !75, line: 483, baseType: !113, size: 64, offset: 704)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1312, file: !75, line: 484, baseType: !113, size: 64, offset: 768)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1312, file: !75, line: 485, baseType: !1323, size: 64, offset: 832)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1325)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !75, line: 404, size: 1280, elements: !1326)
!1326 = !{!1327, !1630, !1700, !1704, !1708, !1714, !1720, !1724, !1729, !1733, !1737, !1741, !1769, !1773, !1777, !1781, !1786, !1790, !1797, !1801}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1325, file: !75, line: 405, baseType: !1328, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!201, !1331, !1628}
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !46, line: 74, size: 512, align: 128, elements: !1333)
!1333 = !{!1334, !1335, !1622, !1627}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1332, file: !46, line: 75, baseType: !113, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, scope: !1332, file: !46, line: 83, baseType: !1336, size: 320, offset: 64)
!1336 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1332, file: !46, line: 83, size: 320, elements: !1337)
!1337 = !{!1338, !1359, !1373, !1377, !1621}
!1338 = !DIDerivedType(tag: DW_TAG_member, scope: !1336, file: !46, line: 84, baseType: !1339, size: 320)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1336, file: !46, line: 84, size: 320, elements: !1340)
!1340 = !{!1341, !1352, !1353, !1358}
!1341 = !DIDerivedType(tag: DW_TAG_member, scope: !1339, file: !46, line: 90, baseType: !1342, size: 128)
!1342 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1339, file: !46, line: 90, size: 128, elements: !1343)
!1343 = !{!1344, !1345, !1350, !1351}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1342, file: !46, line: 91, baseType: !251, size: 128)
!1345 = !DIDerivedType(tag: DW_TAG_member, scope: !1342, file: !46, line: 94, baseType: !1346, size: 128)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1342, file: !46, line: 94, size: 128, elements: !1347)
!1347 = !{!1348, !1349}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1346, file: !46, line: 96, baseType: !112, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1346, file: !46, line: 98, baseType: !18, size: 32, offset: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1342, file: !46, line: 102, baseType: !251, size: 128)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1342, file: !46, line: 103, baseType: !251, size: 128)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1339, file: !46, line: 106, baseType: !1311, size: 64, offset: 128)
!1353 = !DIDerivedType(tag: DW_TAG_member, scope: !1339, file: !46, line: 107, baseType: !1354, size: 64, offset: 192)
!1354 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1339, file: !46, line: 107, size: 64, elements: !1355)
!1355 = !{!1356, !1357}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1354, file: !46, line: 108, baseType: !113, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1354, file: !46, line: 109, baseType: !113, size: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1339, file: !46, line: 117, baseType: !113, size: 64, offset: 256)
!1359 = !DIDerivedType(tag: DW_TAG_member, scope: !1336, file: !46, line: 119, baseType: !1360, size: 320)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1336, file: !46, line: 119, size: 320, elements: !1361)
!1361 = !{!1362, !1363, !1366, !1367, !1368}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1360, file: !46, line: 124, baseType: !113, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1360, file: !46, line: 125, baseType: !1364, size: 64, offset: 64)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !46, line: 125, flags: DIFlagFwdDecl)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1360, file: !46, line: 126, baseType: !113, size: 64, offset: 128)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1360, file: !46, line: 127, baseType: !113, size: 64, offset: 192)
!1368 = !DIDerivedType(tag: DW_TAG_member, scope: !1360, file: !46, line: 128, baseType: !1369, size: 64, offset: 256)
!1369 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1360, file: !46, line: 128, size: 64, elements: !1370)
!1370 = !{!1371, !1372}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1369, file: !46, line: 133, baseType: !113, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1369, file: !46, line: 138, baseType: !582, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, scope: !1336, file: !46, line: 141, baseType: !1374, size: 64)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1336, file: !46, line: 141, size: 64, elements: !1375)
!1375 = !{!1376}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1374, file: !46, line: 142, baseType: !113, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, scope: !1336, file: !46, line: 144, baseType: !1378, size: 128)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1336, file: !46, line: 144, size: 128, elements: !1379)
!1379 = !{!1380, !1620}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1378, file: !46, line: 146, baseType: !1381, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !38, line: 126, size: 1216, elements: !1383)
!1383 = !{!1384, !1394, !1415, !1426, !1427, !1428, !1429, !1602, !1603, !1604}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1382, file: !38, line: 127, baseType: !1385, size: 384)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !38, line: 21, size: 384, elements: !1386)
!1386 = !{!1387, !1388, !1390, !1391, !1392, !1393}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1385, file: !38, line: 22, baseType: !113, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1385, file: !38, line: 23, baseType: !1389, size: 64, offset: 64)
!1389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1385, file: !38, line: 24, baseType: !1389, size: 64, offset: 128)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1385, file: !38, line: 25, baseType: !113, size: 64, offset: 192)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1385, file: !38, line: 26, baseType: !113, size: 64, offset: 256)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1385, file: !38, line: 27, baseType: !113, size: 64, offset: 320)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1382, file: !38, line: 128, baseType: !1395, size: 128, offset: 384)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1396, line: 105, size: 128, elements: !1397)
!1396 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1397 = !{!1398, !1399}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1395, file: !1396, line: 110, baseType: !113, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1395, file: !1396, line: 118, baseType: !1400, size: 64, offset: 64)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1396, line: 95, size: 448, elements: !1402)
!1402 = !{!1403, !1404, !1410, !1411, !1412, !1413, !1414}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1401, file: !1396, line: 96, baseType: !582, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1401, file: !1396, line: 97, baseType: !1405, size: 64, offset: 64)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1396, line: 60, baseType: !1407)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{null, !1409}
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1401, file: !1396, line: 98, baseType: !1405, size: 64, offset: 128)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1401, file: !1396, line: 99, baseType: !789, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1401, file: !1396, line: 100, baseType: !789, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1401, file: !1396, line: 101, baseType: !569, size: 128, align: 64, offset: 256)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1401, file: !1396, line: 102, baseType: !1409, size: 64, offset: 384)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1382, file: !38, line: 129, baseType: !1416, size: 256, offset: 512)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1417, line: 26, size: 256, elements: !1418)
!1417 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1418 = !{!1419, !1420}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1416, file: !1417, line: 27, baseType: !18, size: 32)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1416, file: !1417, line: 28, baseType: !1421, size: 192, offset: 64)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1422, line: 43, size: 192, elements: !1423)
!1422 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1423 = !{!1424, !1425}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1421, file: !1422, line: 44, baseType: !344, size: 32)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1421, file: !1422, line: 45, baseType: !251, size: 128, offset: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1382, file: !38, line: 130, baseType: !37, size: 32, offset: 768)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1382, file: !38, line: 131, baseType: !18, size: 32, offset: 800)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1382, file: !38, line: 132, baseType: !113, size: 64, offset: 832)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1382, file: !38, line: 133, baseType: !1430, size: 64, offset: 896)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1432)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !38, line: 77, size: 192, elements: !1433)
!1433 = !{!1434, !1438, !1598}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1432, file: !38, line: 83, baseType: !1435, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{null, !1331}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1432, file: !38, line: 89, baseType: !1439, size: 64, offset: 64)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{!1442, !1443}
!1442 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !46, line: 1184, baseType: !18)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1445, line: 512, size: 896, elements: !1446)
!1445 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1446 = !{!1447, !1565, !1566, !1573, !1580, !1590, !1591, !1592, !1594, !1596}
!1447 = !DIDerivedType(tag: DW_TAG_member, scope: !1444, file: !1445, line: 513, baseType: !1448, size: 320)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1444, file: !1445, line: 513, size: 320, elements: !1449)
!1449 = !{!1450, !1561, !1562, !1563, !1564}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1448, file: !1445, line: 514, baseType: !1451, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !46, line: 625, size: 1344, elements: !1453)
!1453 = !{!1454, !1463, !1464, !1472, !1479, !1480, !1485, !1486, !1491, !1492, !1495, !1554, !1555, !1556, !1557, !1558, !1559}
!1454 = !DIDerivedType(tag: DW_TAG_member, scope: !1452, file: !46, line: 628, baseType: !1455, size: 128)
!1455 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1452, file: !46, line: 628, size: 128, elements: !1456)
!1456 = !{!1457, !1462}
!1457 = !DIDerivedType(tag: DW_TAG_member, scope: !1455, file: !46, line: 629, baseType: !1458, size: 128)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1455, file: !46, line: 629, size: 128, elements: !1459)
!1459 = !{!1460, !1461}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1458, file: !46, line: 631, baseType: !113, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1458, file: !46, line: 632, baseType: !113, size: 64, offset: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1455, file: !46, line: 635, baseType: !569, size: 128, align: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1452, file: !46, line: 639, baseType: !525, size: 64, offset: 128)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1452, file: !46, line: 640, baseType: !1465, size: 64, offset: 192)
!1465 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1466, line: 297, baseType: !1467)
!1466 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1466, line: 297, size: 64, elements: !1468)
!1468 = !{!1469}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1467, file: !1466, line: 297, baseType: !1470, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1471, line: 19, baseType: !113)
!1471 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1472 = !DIDerivedType(tag: DW_TAG_member, scope: !1452, file: !46, line: 646, baseType: !1473, size: 64, offset: 256)
!1473 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1452, file: !46, line: 646, size: 64, elements: !1474)
!1474 = !{!1475, !1478}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1473, file: !46, line: 647, baseType: !1476, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1477)
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !46, line: 542, baseType: !113)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1473, file: !46, line: 648, baseType: !1477, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1452, file: !46, line: 666, baseType: !201, size: 32, offset: 320)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1452, file: !46, line: 667, baseType: !1481, size: 64, offset: 384)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !46, line: 579, size: 320, elements: !1483)
!1483 = !{!1484}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1482, file: !46, line: 580, baseType: !730, size: 320)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1452, file: !46, line: 670, baseType: !789, size: 8, offset: 448)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1452, file: !46, line: 681, baseType: !1487, size: 256, offset: 512)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1452, file: !46, line: 678, size: 256, elements: !1488)
!1488 = !{!1489, !1490}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1487, file: !46, line: 679, baseType: !241, size: 192, align: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1487, file: !46, line: 680, baseType: !113, size: 64, offset: 192)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1452, file: !46, line: 689, baseType: !251, size: 128, offset: 768)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1452, file: !46, line: 691, baseType: !1493, size: 64, offset: 896)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !46, line: 691, flags: DIFlagFwdDecl)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1452, file: !46, line: 694, baseType: !1496, size: 64, offset: 960)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1498)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1445, line: 563, size: 1024, elements: !1499)
!1499 = !{!1500, !1504, !1505, !1509, !1513, !1517, !1518, !1522, !1526, !1530, !1531, !1532, !1536, !1540, !1546, !1550}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1498, file: !1445, line: 564, baseType: !1501, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{null, !1451}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1498, file: !1445, line: 569, baseType: !1501, size: 64, offset: 64)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1498, file: !1445, line: 571, baseType: !1506, size: 64, offset: 128)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{!201, !1451, !113}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1498, file: !1445, line: 572, baseType: !1510, size: 64, offset: 192)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!201, !1451}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1498, file: !1445, line: 578, baseType: !1514, size: 64, offset: 256)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!201, !1451, !113, !113, !113}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1498, file: !1445, line: 580, baseType: !1439, size: 64, offset: 320)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1498, file: !1445, line: 581, baseType: !1519, size: 64, offset: 384)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{!1442, !1443, !18}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1498, file: !1445, line: 582, baseType: !1523, size: 64, offset: 448)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!1442, !1443, !113, !113}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1498, file: !1445, line: 584, baseType: !1527, size: 64, offset: 512)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!113, !1451}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1498, file: !1445, line: 588, baseType: !1439, size: 64, offset: 576)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1498, file: !1445, line: 591, baseType: !1439, size: 64, offset: 640)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1498, file: !1445, line: 597, baseType: !1533, size: 64, offset: 704)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!201, !1451, !113, !112, !201, !201}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1498, file: !1445, line: 603, baseType: !1537, size: 64, offset: 768)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!792, !1451}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1498, file: !1445, line: 613, baseType: !1541, size: 64, offset: 832)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{!201, !1451, !1544}
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !177, line: 54, flags: DIFlagFwdDecl)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1498, file: !1445, line: 625, baseType: !1547, size: 64, offset: 896)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!1544, !1451, !113}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1498, file: !1445, line: 633, baseType: !1551, size: 64, offset: 960)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{!1331, !1451, !113}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1452, file: !46, line: 697, baseType: !113, size: 64, offset: 1024)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1452, file: !46, line: 699, baseType: !561, size: 64, offset: 1088)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1452, file: !46, line: 700, baseType: !112, size: 64, offset: 1152)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1452, file: !46, line: 711, baseType: !582, size: 64, offset: 1216)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1452, file: !46, line: 717, baseType: !1544, size: 64, offset: 1280)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1452, file: !46, line: 722, baseType: !1560, offset: 1344)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !46, line: 570, elements: !554)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1448, file: !1445, line: 515, baseType: !1157, size: 32, offset: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1448, file: !1445, line: 516, baseType: !113, size: 64, offset: 128)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1448, file: !1445, line: 517, baseType: !113, size: 64, offset: 192)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1448, file: !1445, line: 518, baseType: !113, size: 64, offset: 256)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1444, file: !1445, line: 520, baseType: !45, size: 32, offset: 320)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1444, file: !1445, line: 522, baseType: !1567, size: 64, offset: 384)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1471, line: 22, baseType: !1569)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1471, line: 22, size: 64, elements: !1570)
!1570 = !{!1571}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1569, file: !1471, line: 22, baseType: !1572, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1471, line: 15, baseType: !113)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1444, file: !1445, line: 524, baseType: !1574, size: 64, offset: 448)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1466, line: 372, baseType: !1576)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1466, line: 372, size: 64, elements: !1577)
!1577 = !{!1578}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1576, file: !1466, line: 372, baseType: !1579, size: 64)
!1579 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1471, line: 16, baseType: !113)
!1580 = !DIDerivedType(tag: DW_TAG_member, scope: !1444, file: !1445, line: 527, baseType: !1581, size: 64, offset: 512)
!1581 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1444, file: !1445, line: 527, size: 64, elements: !1582)
!1582 = !{!1583, !1589}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1581, file: !1445, line: 528, baseType: !1584, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1471, line: 21, baseType: !1585)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1471, line: 21, size: 64, elements: !1586)
!1586 = !{!1587}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1585, file: !1471, line: 21, baseType: !1588, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1471, line: 14, baseType: !113)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1581, file: !1445, line: 529, baseType: !1568, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1444, file: !1445, line: 534, baseType: !1331, size: 64, offset: 576)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1444, file: !1445, line: 535, baseType: !1331, size: 64, offset: 640)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1444, file: !1445, line: 541, baseType: !1593, size: 64, offset: 704)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1444, file: !1445, line: 545, baseType: !1595, size: 64, offset: 768)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1444, file: !1445, line: 549, baseType: !1597, size: 64, offset: 832)
!1597 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1466, line: 520, baseType: !1331)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1432, file: !38, line: 100, baseType: !1599, size: 64, offset: 128)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{!201, !1381, !113, !113, !201}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1382, file: !38, line: 134, baseType: !112, size: 64, offset: 960)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1382, file: !38, line: 135, baseType: !201, size: 32, offset: 1024)
!1604 = !DIDerivedType(tag: DW_TAG_member, scope: !1382, file: !38, line: 136, baseType: !1605, size: 128, offset: 1088)
!1605 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1382, file: !38, line: 136, size: 128, elements: !1606)
!1606 = !{!1607, !1613}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1605, file: !38, line: 137, baseType: !1608, size: 128)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1609, line: 6, size: 128, elements: !1610)
!1609 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1610 = !{!1611, !1612}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1608, file: !1609, line: 7, baseType: !145, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1608, file: !1609, line: 8, baseType: !145, size: 64, offset: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, scope: !1605, file: !38, line: 138, baseType: !1614)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1605, file: !38, line: 138, elements: !1615)
!1615 = !{!1616, !1618}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1614, file: !38, line: 138, baseType: !1617)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1614, file: !38, line: 138, elements: !554)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1614, file: !38, line: 138, baseType: !1619)
!1619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1608, elements: !667)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1378, file: !46, line: 147, baseType: !112, size: 64, offset: 64)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1336, file: !46, line: 161, baseType: !569, size: 128, align: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, scope: !1332, file: !46, line: 164, baseType: !1623, size: 32, offset: 384)
!1623 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1332, file: !46, line: 164, size: 32, elements: !1624)
!1624 = !{!1625, !1626}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1623, file: !46, line: 169, baseType: !196, size: 32)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1623, file: !46, line: 177, baseType: !18, size: 32)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1332, file: !46, line: 181, baseType: !196, size: 32, offset: 416)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !75, line: 309, flags: DIFlagFwdDecl)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1325, file: !75, line: 406, baseType: !1631, size: 64, offset: 64)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!201, !561, !1634}
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !46, line: 293, size: 1536, elements: !1636)
!1636 = !{!1637, !1667, !1681}
!1637 = !DIDerivedType(tag: DW_TAG_member, scope: !1635, file: !46, line: 295, baseType: !1638, size: 512)
!1638 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1635, file: !46, line: 295, size: 512, elements: !1639)
!1639 = !{!1640, !1666}
!1640 = !DIDerivedType(tag: DW_TAG_member, scope: !1638, file: !46, line: 296, baseType: !1641, size: 448)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1638, file: !46, line: 296, size: 448, elements: !1642)
!1642 = !{!1643, !1644, !1653, !1654, !1655, !1664, !1665}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1641, file: !46, line: 298, baseType: !113, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, scope: !1641, file: !46, line: 299, baseType: !1645, size: 128, offset: 64)
!1645 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1641, file: !46, line: 299, size: 128, elements: !1646)
!1646 = !{!1647, !1648}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1645, file: !46, line: 300, baseType: !251, size: 128)
!1648 = !DIDerivedType(tag: DW_TAG_member, scope: !1645, file: !46, line: 302, baseType: !1649, size: 128)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1645, file: !46, line: 302, size: 128, elements: !1650)
!1650 = !{!1651, !1652}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1649, file: !46, line: 303, baseType: !112, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1649, file: !46, line: 305, baseType: !18, size: 32, offset: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1641, file: !46, line: 310, baseType: !1311, size: 64, offset: 192)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1641, file: !46, line: 311, baseType: !113, size: 64, offset: 256)
!1655 = !DIDerivedType(tag: DW_TAG_member, scope: !1641, file: !46, line: 312, baseType: !1656, size: 64, offset: 320)
!1656 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1641, file: !46, line: 312, size: 64, elements: !1657)
!1657 = !{!1658, !1659}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1656, file: !46, line: 313, baseType: !112, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1656, file: !46, line: 314, baseType: !1660, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !46, line: 257, baseType: !1661)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !46, line: 255, size: 64, elements: !1662)
!1662 = !{!1663}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1661, file: !46, line: 256, baseType: !113, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1641, file: !46, line: 316, baseType: !196, size: 32, offset: 384)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1641, file: !46, line: 317, baseType: !196, size: 32, offset: 416)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1638, file: !46, line: 323, baseType: !1332, size: 512, align: 128)
!1667 = !DIDerivedType(tag: DW_TAG_member, scope: !1635, file: !46, line: 325, baseType: !1668, size: 512, offset: 512)
!1668 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1635, file: !46, line: 325, size: 512, elements: !1669)
!1669 = !{!1670, !1680}
!1670 = !DIDerivedType(tag: DW_TAG_member, scope: !1668, file: !46, line: 326, baseType: !1671, size: 320)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1668, file: !46, line: 326, size: 320, elements: !1672)
!1672 = !{!1673, !1674, !1675, !1676, !1677, !1678, !1679}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1671, file: !46, line: 327, baseType: !113, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1671, file: !46, line: 328, baseType: !113, size: 64, offset: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1671, file: !46, line: 329, baseType: !113, size: 64, offset: 128)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1671, file: !46, line: 331, baseType: !196, size: 32, offset: 192)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1671, file: !46, line: 332, baseType: !196, size: 32, offset: 224)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1671, file: !46, line: 333, baseType: !196, size: 32, offset: 256)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1671, file: !46, line: 335, baseType: !18, size: 32, offset: 288)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1668, file: !46, line: 339, baseType: !1332, size: 512, align: 128)
!1681 = !DIDerivedType(tag: DW_TAG_member, scope: !1635, file: !46, line: 341, baseType: !1682, size: 512, offset: 1024)
!1682 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1635, file: !46, line: 341, size: 512, elements: !1683)
!1683 = !{!1684, !1693, !1699}
!1684 = !DIDerivedType(tag: DW_TAG_member, scope: !1682, file: !46, line: 342, baseType: !1685, size: 384)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1682, file: !46, line: 342, size: 384, elements: !1686)
!1686 = !{!1687, !1688, !1689, !1690, !1691, !1692}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1685, file: !46, line: 343, baseType: !113, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1685, file: !46, line: 344, baseType: !113, size: 64, offset: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1685, file: !46, line: 346, baseType: !112, size: 64, offset: 128)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1685, file: !46, line: 347, baseType: !112, size: 64, offset: 192)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1685, file: !46, line: 348, baseType: !112, size: 64, offset: 256)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1685, file: !46, line: 349, baseType: !112, size: 64, offset: 320)
!1693 = !DIDerivedType(tag: DW_TAG_member, scope: !1682, file: !46, line: 352, baseType: !1694, size: 256)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1682, file: !46, line: 352, size: 256, elements: !1695)
!1695 = !{!1696, !1697, !1698}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1694, file: !46, line: 353, baseType: !113, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1694, file: !46, line: 354, baseType: !113, size: 64, offset: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1694, file: !46, line: 356, baseType: !251, size: 128, offset: 128)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1682, file: !46, line: 359, baseType: !1332, size: 512, align: 128)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1325, file: !75, line: 409, baseType: !1701, size: 64, offset: 128)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!201, !1311, !1628}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1325, file: !75, line: 412, baseType: !1705, size: 64, offset: 192)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!789, !1311, !1634}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1325, file: !75, line: 414, baseType: !1709, size: 64, offset: 256)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = !DISubroutineType(types: !1711)
!1711 = !{null, !1712}
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !75, line: 310, flags: DIFlagFwdDecl)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1325, file: !75, line: 416, baseType: !1715, size: 64, offset: 320)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!201, !561, !1311, !601, !18, !1718, !1719}
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1325, file: !75, line: 419, baseType: !1721, size: 64, offset: 384)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!201, !561, !1311, !601, !18, !18, !1331, !112}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1325, file: !75, line: 424, baseType: !1725, size: 64, offset: 448)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!1728, !1311, !1728}
!1728 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !197, line: 131, baseType: !145)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1325, file: !75, line: 425, baseType: !1730, size: 64, offset: 512)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{null, !1634, !1105, !1105}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1325, file: !75, line: 426, baseType: !1734, size: 64, offset: 576)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{!789, !1634, !1157}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1325, file: !75, line: 427, baseType: !1738, size: 64, offset: 640)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DISubroutineType(types: !1740)
!1740 = !{null, !1634}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1325, file: !75, line: 428, baseType: !1742, size: 64, offset: 704)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{!1102, !1745, !1767}
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !75, line: 373, size: 384, elements: !1747)
!1747 = !{!1748, !1749, !1750, !1754, !1755, !1756, !1757}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1746, file: !75, line: 374, baseType: !561, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1746, file: !75, line: 375, baseType: !601, size: 64, offset: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1746, file: !75, line: 376, baseType: !1751, size: 64, offset: 128)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{null, !1745, !1063}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1746, file: !75, line: 377, baseType: !112, size: 64, offset: 192)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1746, file: !75, line: 378, baseType: !201, size: 32, offset: 256)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1746, file: !75, line: 379, baseType: !139, size: 16, offset: 288)
!1757 = !DIDerivedType(tag: DW_TAG_member, scope: !1746, file: !75, line: 380, baseType: !1758, size: 64, offset: 320)
!1758 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1746, file: !75, line: 380, size: 64, elements: !1759)
!1759 = !{!1760, !1763}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1758, file: !75, line: 386, baseType: !1761, size: 64)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !75, line: 386, flags: DIFlagFwdDecl)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1758, file: !75, line: 395, baseType: !1764, size: 64)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DISubroutineType(types: !1766)
!1766 = !{!1102, !112}
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !75, line: 69, flags: DIFlagFwdDecl)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1325, file: !75, line: 433, baseType: !1770, size: 64, offset: 768)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{!201, !1311, !1634, !1634, !61}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1325, file: !75, line: 435, baseType: !1774, size: 64, offset: 832)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!201, !1634}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1325, file: !75, line: 436, baseType: !1778, size: 64, offset: 896)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{!789, !1634, !1105, !1105}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1325, file: !75, line: 438, baseType: !1782, size: 64, offset: 960)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DISubroutineType(types: !1784)
!1784 = !{null, !1634, !1785, !1785}
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1325, file: !75, line: 439, baseType: !1787, size: 64, offset: 1024)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{!201, !1311, !1331}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1325, file: !75, line: 442, baseType: !1791, size: 64, offset: 1088)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{!201, !1794, !561, !1796}
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !75, line: 66, flags: DIFlagFwdDecl)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1325, file: !75, line: 444, baseType: !1798, size: 64, offset: 1152)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{null, !561}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1325, file: !75, line: 445, baseType: !1802, size: 64, offset: 1216)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{!201, !1745, !1767}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1312, file: !75, line: 486, baseType: !113, size: 64, offset: 896)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1312, file: !75, line: 487, baseType: !730, size: 320, offset: 960)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1312, file: !75, line: 488, baseType: !1808, size: 32, offset: 1280)
!1808 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1809, line: 8, baseType: !186)
!1809 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1312, file: !75, line: 489, baseType: !543, size: 32, offset: 1312)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1312, file: !75, line: 490, baseType: !251, size: 128, offset: 1344)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1312, file: !75, line: 491, baseType: !112, size: 64, offset: 1472)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1302, file: !1271, line: 180, baseType: !1814, size: 64, offset: 320)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{!1102, !561, !1213, !1301, !802, !601, !1105}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1302, file: !1271, line: 182, baseType: !1814, size: 64, offset: 384)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1302, file: !1271, line: 184, baseType: !1819, size: 64, offset: 448)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{!201, !561, !1213, !1301, !1451}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1290, file: !1271, line: 90, baseType: !1823, size: 64, offset: 192)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1290, file: !1271, line: 91, baseType: !1825, size: 64, offset: 256)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1261, file: !1208, line: 120, baseType: !1827, size: 64, offset: 192)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{!1830, !1231}
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1832)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !69, line: 39, size: 384, elements: !1833)
!1833 = !{!1834, !1835, !1839, !1843, !1851, !1855}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1832, file: !69, line: 40, baseType: !68, size: 32)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1832, file: !69, line: 41, baseType: !1836, size: 64, offset: 64)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{!789}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1832, file: !69, line: 42, baseType: !1840, size: 64, offset: 128)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{!112}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1832, file: !69, line: 43, baseType: !1844, size: 64, offset: 192)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{!1847, !1849}
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !69, line: 19, flags: DIFlagFwdDecl)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1832, file: !69, line: 44, baseType: !1852, size: 64, offset: 256)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{!1847}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1832, file: !69, line: 45, baseType: !980, size: 64, offset: 320)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1261, file: !1208, line: 121, baseType: !1857, size: 64, offset: 256)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{!1847, !1231}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1261, file: !1208, line: 122, baseType: !1861, size: 64, offset: 320)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{null, !1231, !1864, !1865}
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1207, file: !1208, line: 70, baseType: !1867, size: 64, offset: 384)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1869, line: 190, size: 1152, elements: !1870)
!1869 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1870 = !{!1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1969, !1970, !1971, !1972, !1973, !1976}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1868, file: !1869, line: 191, baseType: !196, size: 32)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1868, file: !1869, line: 192, baseType: !196, size: 32, offset: 32)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1868, file: !1869, line: 202, baseType: !1867, size: 64, offset: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1868, file: !1869, line: 203, baseType: !792, size: 64, offset: 128)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1868, file: !1869, line: 205, baseType: !241, size: 192, align: 64, offset: 192)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1868, file: !1869, line: 207, baseType: !1847, size: 64, offset: 384)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1868, file: !1869, line: 208, baseType: !18, size: 32, offset: 448)
!1878 = !DIDerivedType(tag: DW_TAG_member, scope: !1868, file: !1869, line: 209, baseType: !1879, size: 256, offset: 512)
!1879 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1868, file: !1869, line: 209, size: 256, elements: !1880)
!1880 = !{!1881, !1890, !1894}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1879, file: !1869, line: 210, baseType: !1882, size: 256)
!1882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1869, line: 153, size: 256, elements: !1883)
!1883 = !{!1884, !1885, !1886, !1889}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1882, file: !1869, line: 154, baseType: !113, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1882, file: !1869, line: 156, baseType: !411, size: 64, offset: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1882, file: !1869, line: 162, baseType: !1887, size: 64, offset: 128)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1869, line: 162, flags: DIFlagFwdDecl)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1882, file: !1869, line: 167, baseType: !113, size: 64, offset: 192)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1879, file: !1869, line: 211, baseType: !1891, size: 64)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1869, line: 170, size: 64, elements: !1892)
!1892 = !{!1893}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1891, file: !1869, line: 171, baseType: !1867, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1879, file: !1869, line: 212, baseType: !1895, size: 256)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1869, line: 174, size: 256, elements: !1896)
!1896 = !{!1897, !1964, !1967, !1968}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1895, file: !1869, line: 175, baseType: !1898, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1900)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1869, line: 271, size: 768, elements: !1901)
!1901 = !{!1902, !1924, !1928, !1932, !1937, !1941, !1945, !1949, !1950, !1951, !1952, !1960}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1900, file: !1869, line: 276, baseType: !1903, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DISubroutineType(types: !1905)
!1905 = !{!201, !1906}
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1869, line: 251, size: 1216, elements: !1908)
!1908 = !{!1909, !1910, !1911, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1907, file: !1869, line: 253, baseType: !1867, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1907, file: !1869, line: 254, baseType: !561, size: 64, offset: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1907, file: !1869, line: 255, baseType: !1912, size: 64, offset: 128)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !177, line: 66, flags: DIFlagFwdDecl)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1907, file: !1869, line: 256, baseType: !112, size: 64, offset: 192)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1907, file: !1869, line: 259, baseType: !589, size: 256, offset: 256)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1907, file: !1869, line: 260, baseType: !589, size: 256, offset: 512)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1907, file: !1869, line: 261, baseType: !201, size: 32, offset: 768)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1907, file: !1869, line: 262, baseType: !251, size: 128, offset: 832)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1907, file: !1869, line: 263, baseType: !802, size: 64, offset: 960)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1907, file: !1869, line: 265, baseType: !1105, size: 64, offset: 1024)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1907, file: !1869, line: 266, baseType: !789, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1907, file: !1869, line: 267, baseType: !789, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1907, file: !1869, line: 268, baseType: !1496, size: 64, offset: 1152)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1900, file: !1869, line: 277, baseType: !1925, size: 64, offset: 64)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{null, !1906}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1900, file: !1869, line: 290, baseType: !1929, size: 64, offset: 128)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!201, !1912, !112}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1900, file: !1869, line: 292, baseType: !1933, size: 64, offset: 192)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DISubroutineType(types: !1935)
!1935 = !{!112, !1912, !1936}
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1900, file: !1869, line: 293, baseType: !1938, size: 64, offset: 256)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{!112, !1912, !112, !1936}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1900, file: !1869, line: 294, baseType: !1942, size: 64, offset: 320)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{null, !1912, !112}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1900, file: !1869, line: 296, baseType: !1946, size: 64, offset: 384)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{!1102, !1906, !802, !1105, !601}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1900, file: !1869, line: 306, baseType: !1105, size: 64, offset: 448)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1900, file: !1869, line: 313, baseType: !789, size: 8, offset: 512)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1900, file: !1869, line: 314, baseType: !1946, size: 64, offset: 576)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1900, file: !1869, line: 317, baseType: !1953, size: 64, offset: 640)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!1956, !1906, !1958}
!1956 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1957, line: 59, baseType: !18)
!1957 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !75, line: 61, flags: DIFlagFwdDecl)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1900, file: !1869, line: 320, baseType: !1961, size: 64, offset: 704)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!201, !1906, !1451}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1895, file: !1869, line: 176, baseType: !1965, size: 64, offset: 64)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1869, line: 35, flags: DIFlagFwdDecl)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1895, file: !1869, line: 177, baseType: !601, size: 64, offset: 128)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1895, file: !1869, line: 178, baseType: !1867, size: 64, offset: 192)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1868, file: !1869, line: 215, baseType: !112, size: 64, offset: 768)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1868, file: !1869, line: 221, baseType: !145, size: 64, offset: 832)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1868, file: !1869, line: 223, baseType: !143, size: 16, offset: 896)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1868, file: !1869, line: 224, baseType: !952, size: 16, offset: 912)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1868, file: !1869, line: 225, baseType: !1974, size: 64, offset: 960)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1869, line: 36, flags: DIFlagFwdDecl)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1868, file: !1869, line: 227, baseType: !569, size: 128, align: 64, offset: 1024)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1207, file: !1208, line: 71, baseType: !1978, size: 32, offset: 448)
!1978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1979, line: 19, size: 32, elements: !1980)
!1979 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1980 = !{!1981}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1978, file: !1979, line: 20, baseType: !192, size: 32)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1207, file: !1208, line: 73, baseType: !18, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1207, file: !1208, line: 74, baseType: !18, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1207, file: !1208, line: 75, baseType: !18, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1207, file: !1208, line: 76, baseType: !18, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1207, file: !1208, line: 77, baseType: !18, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1204, file: !31, line: 47, baseType: !1194, size: 64, offset: 512)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1204, file: !31, line: 48, baseType: !1213, size: 64, offset: 576)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1204, file: !31, line: 49, baseType: !1990, size: 64, offset: 640)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !31, line: 49, flags: DIFlagFwdDecl)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1204, file: !31, line: 50, baseType: !1993, size: 64, offset: 704)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1195, file: !31, line: 418, baseType: !1995, size: 64, offset: 1408)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !31, line: 53, size: 448, elements: !1997)
!1997 = !{!1998, !1999, !2004, !2008, !2012, !2016}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1996, file: !31, line: 54, baseType: !1278, size: 128)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1996, file: !31, line: 55, baseType: !2000, size: 64, offset: 128)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!1102, !1995, !2003, !802}
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1996, file: !31, line: 57, baseType: !2005, size: 64, offset: 192)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!1102, !1995, !2003, !792, !1105}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1996, file: !31, line: 59, baseType: !2009, size: 64, offset: 256)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{null, !1194, !792}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1996, file: !31, line: 60, baseType: !2013, size: 64, offset: 320)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!201, !1194}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1996, file: !31, line: 61, baseType: !2017, size: 64, offset: 384)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{null, !1194}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1195, file: !31, line: 419, baseType: !792, size: 64, offset: 1472)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1195, file: !31, line: 420, baseType: !792, size: 64, offset: 1536)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1195, file: !31, line: 421, baseType: !1213, size: 64, offset: 1600)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1195, file: !31, line: 424, baseType: !2024, size: 64, offset: 1664)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2026)
!2026 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !31, line: 424, flags: DIFlagFwdDecl)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1195, file: !31, line: 425, baseType: !2028, size: 64, offset: 1728)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !722)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1195, file: !31, line: 426, baseType: !18, size: 32, offset: 1792)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1195, file: !31, line: 435, baseType: !589, size: 256, offset: 1856)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1195, file: !31, line: 437, baseType: !2033, size: 64, offset: 2112)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2035, line: 69, size: 320, elements: !2036)
!2035 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2036 = !{!2037, !2038, !2039, !2056, !2058, !2062, !2063}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2034, file: !2035, line: 70, baseType: !792, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2034, file: !2035, line: 71, baseType: !1194, size: 64, offset: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2034, file: !2035, line: 72, baseType: !2040, size: 64, offset: 128)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2042)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2035, line: 47, size: 256, elements: !2043)
!2043 = !{!2044, !2045, !2051, !2055}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2042, file: !2035, line: 49, baseType: !18, size: 32)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2042, file: !2035, line: 51, baseType: !2046, size: 64, offset: 64)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{!201, !792, !2049}
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2034)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2042, file: !2035, line: 53, baseType: !2052, size: 64, offset: 128)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{!201, !802, !2049}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2042, file: !2035, line: 55, baseType: !980, size: 64, offset: 192)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2034, file: !2035, line: 73, baseType: !2057, size: 16, offset: 192)
!2057 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2034, file: !2035, line: 74, baseType: !2059, size: 8, offset: 208)
!2059 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !140, line: 16, baseType: !2060)
!2060 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !142, line: 20, baseType: !2061)
!2061 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2034, file: !2035, line: 75, baseType: !361, size: 8, offset: 216)
!2063 = !DIDerivedType(tag: DW_TAG_member, scope: !2034, file: !2035, line: 76, baseType: !2064, size: 64, offset: 256)
!2064 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2034, file: !2035, line: 76, size: 64, elements: !2065)
!2065 = !{!2066, !2067, !2074}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2064, file: !2035, line: 77, baseType: !112, size: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2064, file: !2035, line: 78, baseType: !2068, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2070)
!2070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2035, line: 86, size: 128, elements: !2071)
!2071 = !{!2072, !2073}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2070, file: !2035, line: 87, baseType: !18, size: 32)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2070, file: !2035, line: 88, baseType: !802, size: 64, offset: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2064, file: !2035, line: 79, baseType: !2075, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2077)
!2077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2035, line: 92, size: 256, elements: !2078)
!2078 = !{!2079, !2080, !2081, !2083, !2084}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2077, file: !2035, line: 94, baseType: !18, size: 32)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2077, file: !2035, line: 95, baseType: !18, size: 32, offset: 32)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2077, file: !2035, line: 96, baseType: !2082, size: 64, offset: 64)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2077, file: !2035, line: 97, baseType: !2040, size: 64, offset: 128)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2077, file: !2035, line: 98, baseType: !112, size: 64, offset: 192)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1195, file: !31, line: 438, baseType: !18, size: 32, offset: 2176)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1195, file: !31, line: 441, baseType: !18, size: 32, offset: 2208)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1195, file: !31, line: 442, baseType: !2024, size: 64, offset: 2240)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1195, file: !31, line: 443, baseType: !2028, size: 64, offset: 2304)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1195, file: !31, line: 444, baseType: !789, size: 8, offset: 2368)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1195, file: !31, line: 451, baseType: !789, size: 8, offset: 2376)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1195, file: !31, line: 454, baseType: !18, size: 32, offset: 2400)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1195, file: !31, line: 455, baseType: !2093, size: 64, offset: 2432)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2095, line: 23, size: 96, elements: !2096)
!2095 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2096 = !{!2097, !2098, !2099}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2094, file: !2095, line: 24, baseType: !201, size: 32)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2094, file: !2095, line: 24, baseType: !201, size: 32, offset: 32)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2094, file: !2095, line: 24, baseType: !201, size: 32, offset: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1195, file: !31, line: 458, baseType: !2101, size: 64, offset: 2496)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!201}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1195, file: !31, line: 460, baseType: !2105, size: 4032, align: 512, offset: 2560)
!2105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2106, size: 4032, elements: !2122)
!2106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !31, line: 362, size: 576, elements: !2107)
!2107 = !{!2108, !2109, !2110}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2106, file: !31, line: 363, baseType: !112, size: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2106, file: !31, line: 364, baseType: !18, size: 32, offset: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2106, file: !31, line: 367, baseType: !2111, size: 448, offset: 128)
!2111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !31, line: 319, size: 448, elements: !2112)
!2112 = !{!2113, !2114}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2111, file: !31, line: 320, baseType: !1194, size: 64)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2111, file: !31, line: 321, baseType: !2115, size: 384, offset: 64)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2116, line: 40, size: 384, elements: !2117)
!2116 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2117 = !{!2118}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2115, file: !2116, line: 41, baseType: !2119, size: 384, align: 64)
!2119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 384, align: 64, elements: !2120)
!2120 = !{!2121}
!2121 = !DISubrange(count: 2)
!2122 = !{!2123}
!2123 = !DISubrange(count: 7)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1195, file: !31, line: 463, baseType: !2125, size: 192, offset: 6592)
!2125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2126, line: 8, size: 192, elements: !2127)
!2126 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2127 = !{!2128, !2129, !2131}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2125, file: !2126, line: 10, baseType: !18, size: 32)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2125, file: !2126, line: 11, baseType: !2130, size: 64, offset: 64)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2125, file: !2126, line: 12, baseType: !2132, size: 64, offset: 128)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2134, line: 59, size: 48, elements: !2135)
!2134 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2135 = !{!2136, !2139, !2140, !2141, !2142, !2143}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2133, file: !2134, line: 60, baseType: !2137, size: 16)
!2137 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !140, line: 18, baseType: !2138)
!2138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !142, line: 23, baseType: !758)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2133, file: !2134, line: 61, baseType: !2137, size: 16, offset: 16)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2133, file: !2134, line: 63, baseType: !18, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2133, file: !2134, line: 64, baseType: !18, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2133, file: !2134, line: 65, baseType: !18, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2133, file: !2134, line: 66, baseType: !18, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1195, file: !31, line: 465, baseType: !113, size: 64, offset: 6784)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1195, file: !31, line: 469, baseType: !18, size: 32, offset: 6848)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1195, file: !31, line: 470, baseType: !251, size: 128, offset: 6912)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1195, file: !31, line: 471, baseType: !2148, size: 64, offset: 7040)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2150, line: 33, size: 96, elements: !2151)
!2150 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2151 = !{!2152, !2153, !2154, !2155}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2149, file: !2150, line: 37, baseType: !201, size: 32)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2149, file: !2150, line: 43, baseType: !201, size: 32, offset: 32)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2149, file: !2150, line: 45, baseType: !143, size: 16, offset: 64)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2149, file: !2150, line: 47, baseType: !143, size: 16, offset: 80)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1195, file: !31, line: 476, baseType: !2157, size: 64, offset: 7104)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !31, line: 378, size: 256, elements: !2159)
!2159 = !{!2160, !2176, !2177, !2178}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2158, file: !31, line: 379, baseType: !2161, size: 64)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2163, line: 204, baseType: !2164)
!2163 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2163, line: 197, size: 192, elements: !2165)
!2165 = !{!2166, !2168, !2169, !2170, !2172, !2174}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2164, file: !2163, line: 198, baseType: !2167, size: 32)
!2167 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2163, line: 21, baseType: !187)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2164, file: !2163, line: 199, baseType: !363, size: 8, offset: 32)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2164, file: !2163, line: 200, baseType: !363, size: 8, offset: 40)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2164, file: !2163, line: 201, baseType: !2171, size: 16, offset: 48)
!2171 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2163, line: 17, baseType: !141)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2164, file: !2163, line: 202, baseType: !2173, size: 64, offset: 64)
!2173 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2163, line: 16, baseType: !146)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2164, file: !2163, line: 203, baseType: !2175, size: 64, offset: 128)
!2175 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2163, line: 22, baseType: !146)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2158, file: !31, line: 380, baseType: !18, size: 32, offset: 64)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2158, file: !31, line: 381, baseType: !802, size: 64, offset: 128)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2158, file: !31, line: 382, baseType: !802, size: 64, offset: 192)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1195, file: !31, line: 477, baseType: !2158, size: 256, offset: 7168)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1195, file: !31, line: 480, baseType: !2181, size: 64, offset: 7424)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !31, line: 480, flags: DIFlagFwdDecl)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1195, file: !31, line: 483, baseType: !2184, size: 64, offset: 7488)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !31, line: 483, flags: DIFlagFwdDecl)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1195, file: !31, line: 488, baseType: !802, size: 64, offset: 7552)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1195, file: !31, line: 492, baseType: !112, size: 64, offset: 7616)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1195, file: !31, line: 493, baseType: !18, size: 32, offset: 7680)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1195, file: !31, line: 495, baseType: !112, size: 64, offset: 7744)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1195, file: !31, line: 496, baseType: !18, size: 32, offset: 7808)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1195, file: !31, line: 499, baseType: !18, size: 32, offset: 7840)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1195, file: !31, line: 500, baseType: !2193, size: 64, offset: 7872)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2195, line: 45, baseType: !2196)
!2195 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !201)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1195, file: !31, line: 503, baseType: !18, size: 32, offset: 7936)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1195, file: !31, line: 504, baseType: !2199, size: 64, offset: 8000)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2202, line: 96, size: 192, elements: !2203)
!2202 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2203 = !{!2204, !2205, !2270, !2273}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2201, file: !2202, line: 97, baseType: !18, size: 32)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2201, file: !2202, line: 98, baseType: !2206, size: 64, offset: 64)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2202, line: 24, size: 3072, elements: !2208)
!2208 = !{!2209, !2211, !2212, !2213, !2214, !2228, !2229, !2230, !2231, !2243, !2255, !2256, !2267, !2268, !2269}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2207, file: !2202, line: 26, baseType: !2210, size: 128)
!2210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !582, size: 128, elements: !2120)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2207, file: !2202, line: 27, baseType: !2210, size: 128, offset: 128)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2207, file: !2202, line: 28, baseType: !201, size: 32, offset: 256)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2207, file: !2202, line: 31, baseType: !543, size: 32, align: 512, offset: 512)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2207, file: !2202, line: 32, baseType: !2215, size: 960, offset: 576)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2216, line: 206, size: 960, elements: !2217)
!2216 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2217 = !{!2218, !2219, !2222, !2224, !2225, !2227}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2215, file: !2216, line: 207, baseType: !572, size: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2215, file: !2216, line: 208, baseType: !2220, size: 256, offset: 64)
!2220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2221, size: 256, elements: !648)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2215, file: !2216, line: 209, baseType: !2223, size: 256, offset: 320)
!2223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 256, elements: !648)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2215, file: !2216, line: 213, baseType: !1063, size: 64, offset: 576)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2215, file: !2216, line: 215, baseType: !2226, size: 256, offset: 640)
!2226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1063, size: 256, elements: !648)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2215, file: !2216, line: 216, baseType: !361, size: 8, offset: 896)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2207, file: !2202, line: 33, baseType: !113, size: 64, offset: 1536)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2207, file: !2202, line: 34, baseType: !113, size: 64, offset: 1600)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2207, file: !2202, line: 35, baseType: !789, size: 8, offset: 1664)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2207, file: !2202, line: 36, baseType: !2232, size: 320, offset: 1728)
!2232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2233, line: 11, size: 320, elements: !2234)
!2233 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2234 = !{!2235, !2236, !2237, !2242}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2232, file: !2233, line: 16, baseType: !643, size: 128)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2232, file: !2233, line: 17, baseType: !113, size: 64, offset: 128)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2232, file: !2233, line: 18, baseType: !2238, size: 64, offset: 192)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{null, !2241}
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2232, file: !2233, line: 19, baseType: !186, size: 32, offset: 256)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2207, file: !2202, line: 37, baseType: !2244, size: 256, offset: 2048)
!2244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2245, line: 98, size: 256, elements: !2246)
!2245 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2246 = !{!2247, !2248, !2249}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2244, file: !2245, line: 99, baseType: !582, size: 64)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2244, file: !2245, line: 100, baseType: !251, size: 128, offset: 64)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2244, file: !2245, line: 101, baseType: !2250, size: 64, offset: 192)
!2250 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2245, line: 21, baseType: !2251)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DISubroutineType(types: !2253)
!2253 = !{null, !2254}
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2207, file: !2202, line: 38, baseType: !569, size: 128, align: 64, offset: 2304)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2207, file: !2202, line: 39, baseType: !2257, size: 64, offset: 2432)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2202, line: 49, size: 768, elements: !2259)
!2259 = !{!2260, !2261, !2262, !2263, !2264, !2265, !2266}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2258, file: !2202, line: 50, baseType: !543, size: 32)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2258, file: !2202, line: 51, baseType: !2223, size: 256, offset: 64)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2258, file: !2202, line: 53, baseType: !2223, size: 256, offset: 320)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2258, file: !2202, line: 54, baseType: !113, size: 64, offset: 576)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2258, file: !2202, line: 55, baseType: !2257, size: 64, offset: 640)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2258, file: !2202, line: 56, baseType: !201, size: 32, offset: 704)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2258, file: !2202, line: 57, baseType: !201, size: 32, offset: 736)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2207, file: !2202, line: 40, baseType: !113, size: 64, offset: 2496)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2207, file: !2202, line: 42, baseType: !201, size: 32, offset: 2560)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2207, file: !2202, line: 43, baseType: !2200, size: 64, offset: 2624)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2201, file: !2202, line: 99, baseType: !2271, offset: 128)
!2271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2272, line: 211, elements: !554)
!2272 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2201, file: !2202, line: 100, baseType: !2274, size: 64, offset: 128)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2202, line: 63, size: 3008, elements: !2276)
!2276 = !{!2277, !2278, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2308}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2275, file: !2202, line: 64, baseType: !2257, size: 64)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2275, file: !2202, line: 65, baseType: !2279, size: 192, offset: 64)
!2279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2257, size: 192, elements: !627)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2275, file: !2202, line: 67, baseType: !201, size: 32, offset: 256)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2275, file: !2202, line: 68, baseType: !589, size: 256, offset: 320)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2275, file: !2202, line: 69, baseType: !543, size: 32, offset: 576)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2275, file: !2202, line: 70, baseType: !589, size: 256, offset: 640)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2275, file: !2202, line: 71, baseType: !113, size: 64, offset: 896)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2275, file: !2202, line: 72, baseType: !113, size: 64, offset: 960)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2275, file: !2202, line: 73, baseType: !113, size: 64, offset: 1024)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2275, file: !2202, line: 74, baseType: !113, size: 64, offset: 1088)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2275, file: !2202, line: 75, baseType: !113, size: 64, offset: 1152)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2275, file: !2202, line: 76, baseType: !113, size: 64, offset: 1216)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2275, file: !2202, line: 77, baseType: !113, size: 64, offset: 1280)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2275, file: !2202, line: 78, baseType: !113, size: 64, offset: 1344)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2275, file: !2202, line: 79, baseType: !789, size: 8, offset: 1408)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2275, file: !2202, line: 80, baseType: !113, size: 64, offset: 1472)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2275, file: !2202, line: 81, baseType: !589, size: 256, offset: 1536)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2275, file: !2202, line: 82, baseType: !1416, size: 256, offset: 1792)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2275, file: !2202, line: 84, baseType: !196, size: 32, offset: 2048)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2275, file: !2202, line: 87, baseType: !113, size: 64, offset: 2112)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2275, file: !2202, line: 88, baseType: !113, size: 64, offset: 2176)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2275, file: !2202, line: 89, baseType: !2300, size: 704, offset: 2240)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2245, line: 111, size: 704, elements: !2301)
!2301 = !{!2302, !2303, !2304, !2307}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2300, file: !2245, line: 112, baseType: !2244, size: 256)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2300, file: !2245, line: 113, baseType: !2232, size: 320, offset: 256)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2300, file: !2245, line: 116, baseType: !2305, size: 64, offset: 576)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2245, line: 18, flags: DIFlagFwdDecl)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2300, file: !2245, line: 117, baseType: !201, size: 32, offset: 640)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2275, file: !2202, line: 90, baseType: !2200, size: 64, offset: 2944)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1195, file: !31, line: 515, baseType: !2310, size: 64, offset: 8064)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2312, line: 117, size: 128, elements: !2313)
!2312 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2313 = !{!2314, !2315, !2316}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2311, file: !2312, line: 118, baseType: !722, size: 32)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2311, file: !2312, line: 119, baseType: !722, size: 32, offset: 32)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2311, file: !2312, line: 120, baseType: !1063, size: 64, offset: 64)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1195, file: !31, line: 516, baseType: !18, size: 32, offset: 8128)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1195, file: !31, line: 519, baseType: !18, size: 32, offset: 8160)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1195, file: !31, line: 520, baseType: !2320, size: 64, offset: 8192)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1195, file: !31, line: 523, baseType: !2322, size: 64, offset: 8256)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !31, line: 523, flags: DIFlagFwdDecl)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1195, file: !31, line: 524, baseType: !18, size: 32, offset: 8320)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1195, file: !31, line: 525, baseType: !2327, size: 64, offset: 8384)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !31, line: 525, flags: DIFlagFwdDecl)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1195, file: !31, line: 526, baseType: !18, size: 32, offset: 8448)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1195, file: !31, line: 533, baseType: !112, size: 64, offset: 8512)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1195, file: !31, line: 534, baseType: !18, size: 32, offset: 8576)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1195, file: !31, line: 535, baseType: !2334, size: 64, offset: 8640)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1195, file: !31, line: 536, baseType: !18, size: 32, offset: 8704)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1195, file: !31, line: 539, baseType: !201, size: 32, offset: 8736)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1195, file: !31, line: 540, baseType: !2338, size: 64, offset: 8768)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2340, line: 32, size: 64, elements: !2341)
!2340 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2341 = !{!2342, !2343}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2339, file: !2340, line: 33, baseType: !722, size: 32)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2339, file: !2340, line: 34, baseType: !722, size: 32, offset: 32)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1195, file: !31, line: 563, baseType: !251, size: 128, offset: 8832)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1195, file: !31, line: 565, baseType: !251, size: 128, offset: 8960)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1195, file: !31, line: 568, baseType: !2347, size: 64, offset: 9088)
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2348 = !DISubroutineType(types: !2349)
!2349 = !{null}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1195, file: !31, line: 570, baseType: !196, size: 32, offset: 9152)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1171, file: !75, line: 2382, baseType: !1170, size: 64, offset: 448)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1171, file: !75, line: 2383, baseType: !639, size: 64, offset: 512)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1171, file: !75, line: 2385, baseType: !2354, offset: 576)
!2354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2272, line: 206, elements: !554)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1171, file: !75, line: 2386, baseType: !2354, offset: 576)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1171, file: !75, line: 2387, baseType: !2354, offset: 576)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1171, file: !75, line: 2388, baseType: !2358, offset: 576)
!2358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2354, elements: !627)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1171, file: !75, line: 2390, baseType: !2354, offset: 576)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1171, file: !75, line: 2391, baseType: !2354, offset: 576)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1171, file: !75, line: 2392, baseType: !2354, offset: 576)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1171, file: !75, line: 2393, baseType: !2354, offset: 576)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1162, file: !75, line: 1197, baseType: !2364, size: 64, offset: 384)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2366)
!2366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !75, line: 2057, size: 1664, elements: !2367)
!2367 = !{!2368, !2372, !2376, !2377, !2381, !2385, !2389, !2390, !2391, !2395, !2399, !2403, !2404, !2405, !2411, !2415, !2416, !2420, !2421, !2422, !2423, !2427, !2431, !2478, !2493, !2494}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2366, file: !75, line: 2058, baseType: !2369, size: 64)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{!948, !1161}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2366, file: !75, line: 2059, baseType: !2373, size: 64, offset: 64)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{null, !948}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2366, file: !75, line: 2060, baseType: !2373, size: 64, offset: 128)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2366, file: !75, line: 2062, baseType: !2378, size: 64, offset: 192)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{null, !948, !201}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2366, file: !75, line: 2063, baseType: !2382, size: 64, offset: 256)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{!201, !948, !1628}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2366, file: !75, line: 2064, baseType: !2386, size: 64, offset: 320)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{!201, !948}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2366, file: !75, line: 2065, baseType: !2373, size: 64, offset: 384)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2366, file: !75, line: 2066, baseType: !1190, size: 64, offset: 448)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2366, file: !75, line: 2067, baseType: !2392, size: 64, offset: 512)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{!201, !1161, !201}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2366, file: !75, line: 2068, baseType: !2396, size: 64, offset: 576)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = !DISubroutineType(types: !2398)
!2398 = !{!201, !1161, !74}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2366, file: !75, line: 2069, baseType: !2400, size: 64, offset: 640)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{!201, !1161}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2366, file: !75, line: 2070, baseType: !2396, size: 64, offset: 704)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2366, file: !75, line: 2071, baseType: !2400, size: 64, offset: 768)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2366, file: !75, line: 2072, baseType: !2406, size: 64, offset: 832)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = !DISubroutineType(types: !2408)
!2408 = !{!201, !913, !2409}
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !75, line: 62, flags: DIFlagFwdDecl)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2366, file: !75, line: 2073, baseType: !2412, size: 64, offset: 896)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = !DISubroutineType(types: !2414)
!2414 = !{!201, !1161, !2130, !802}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2366, file: !75, line: 2074, baseType: !1190, size: 64, offset: 960)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2366, file: !75, line: 2076, baseType: !2417, size: 64, offset: 1024)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!201, !1912, !913}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2366, file: !75, line: 2077, baseType: !2417, size: 64, offset: 1088)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2366, file: !75, line: 2078, baseType: !2417, size: 64, offset: 1152)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2366, file: !75, line: 2079, baseType: !2417, size: 64, offset: 1216)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2366, file: !75, line: 2081, baseType: !2424, size: 64, offset: 1280)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = !DISubroutineType(types: !2426)
!2426 = !{!1102, !1161, !201, !802, !1105, !601}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2366, file: !75, line: 2082, baseType: !2428, size: 64, offset: 1344)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{!1102, !1161, !201, !792, !1105, !601}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2366, file: !75, line: 2083, baseType: !2432, size: 64, offset: 1408)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{!2435, !948}
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !80, line: 296, size: 1664, elements: !2438)
!2438 = !{!2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2463, !2464, !2465}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2437, file: !80, line: 297, baseType: !643, size: 128)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2437, file: !80, line: 298, baseType: !251, size: 128, offset: 128)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2437, file: !80, line: 299, baseType: !251, size: 128, offset: 256)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2437, file: !80, line: 300, baseType: !251, size: 128, offset: 384)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2437, file: !80, line: 301, baseType: !589, size: 256, offset: 512)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2437, file: !80, line: 302, baseType: !543, size: 32, offset: 768)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2437, file: !80, line: 303, baseType: !196, size: 32, offset: 800)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2437, file: !80, line: 304, baseType: !1161, size: 64, offset: 832)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2437, file: !80, line: 305, baseType: !2448, size: 64, offset: 896)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !80, line: 68, size: 64, elements: !2449)
!2449 = !{!2450, !2462}
!2450 = !DIDerivedType(tag: DW_TAG_member, scope: !2448, file: !80, line: 69, baseType: !2451, size: 32)
!2451 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2448, file: !80, line: 69, size: 32, elements: !2452)
!2452 = !{!2453, !2454, !2455}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2451, file: !80, line: 70, baseType: !671, size: 32)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2451, file: !80, line: 71, baseType: !689, size: 32)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2451, file: !80, line: 72, baseType: !2456, size: 32)
!2456 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2457, line: 24, baseType: !2458)
!2457 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2458 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2457, line: 22, size: 32, elements: !2459)
!2459 = !{!2460}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2458, file: !2457, line: 23, baseType: !2461, size: 32)
!2461 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2457, line: 20, baseType: !677)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2448, file: !80, line: 74, baseType: !79, size: 32, offset: 32)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2437, file: !80, line: 306, baseType: !601, size: 64, offset: 960)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2437, file: !80, line: 307, baseType: !113, size: 64, offset: 1024)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2437, file: !80, line: 308, baseType: !2466, size: 576, offset: 1088)
!2466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !80, line: 205, size: 576, elements: !2467)
!2467 = !{!2468, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2466, file: !80, line: 206, baseType: !2469, size: 64)
!2469 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !80, line: 66, baseType: !264)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2466, file: !80, line: 207, baseType: !2469, size: 64, offset: 64)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2466, file: !80, line: 208, baseType: !2469, size: 64, offset: 128)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2466, file: !80, line: 209, baseType: !2469, size: 64, offset: 192)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2466, file: !80, line: 210, baseType: !2469, size: 64, offset: 256)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2466, file: !80, line: 211, baseType: !2469, size: 64, offset: 320)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2466, file: !80, line: 212, baseType: !2469, size: 64, offset: 384)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2466, file: !80, line: 213, baseType: !746, size: 64, offset: 448)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2466, file: !80, line: 214, baseType: !746, size: 64, offset: 512)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2366, file: !75, line: 2085, baseType: !2479, size: 64, offset: 1472)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = !DISubroutineType(types: !2481)
!2481 = !{!1063, !1161, !2482}
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2484, line: 15, size: 256, elements: !2485)
!2484 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2485 = !{!2486, !2487, !2488, !2489, !2490}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2483, file: !2484, line: 16, baseType: !1157, size: 32)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2483, file: !2484, line: 19, baseType: !201, size: 32, offset: 32)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2483, file: !2484, line: 26, baseType: !113, size: 64, offset: 64)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2483, file: !2484, line: 33, baseType: !113, size: 64, offset: 128)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2483, file: !2484, line: 36, baseType: !2491, size: 64, offset: 192)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !46, line: 33, flags: DIFlagFwdDecl)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2366, file: !75, line: 2087, baseType: !2479, size: 64, offset: 1536)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2366, file: !75, line: 2089, baseType: !1190, size: 64, offset: 1600)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1162, file: !75, line: 1198, baseType: !2496, size: 64, offset: 448)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2498)
!2498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !80, line: 324, size: 704, elements: !2499)
!2499 = !{!2500, !2504, !2508, !2512, !2513, !2514, !2515, !2516, !2521, !2526, !2530}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2498, file: !80, line: 325, baseType: !2501, size: 64)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!201, !2436}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2498, file: !80, line: 326, baseType: !2505, size: 64, offset: 64)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DISubroutineType(types: !2507)
!2507 = !{!2436, !1161, !201}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2498, file: !80, line: 327, baseType: !2509, size: 64, offset: 128)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = !DISubroutineType(types: !2511)
!2511 = !{null, !2436}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2498, file: !80, line: 328, baseType: !2501, size: 64, offset: 192)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2498, file: !80, line: 329, baseType: !2501, size: 64, offset: 256)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2498, file: !80, line: 330, baseType: !2501, size: 64, offset: 320)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2498, file: !80, line: 331, baseType: !2392, size: 64, offset: 384)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2498, file: !80, line: 334, baseType: !2517, size: 64, offset: 448)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!2520, !948}
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2498, file: !80, line: 335, baseType: !2522, size: 64, offset: 512)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{!201, !948, !2525}
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2498, file: !80, line: 337, baseType: !2527, size: 64, offset: 576)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{!201, !948, !2520}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2498, file: !80, line: 339, baseType: !2531, size: 64, offset: 640)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!201, !1161, !2534}
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1162, file: !75, line: 1199, baseType: !2536, size: 64, offset: 512)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2538)
!2538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !80, line: 430, size: 704, elements: !2539)
!2539 = !{!2540, !2544, !2545, !2549, !2550, !2551, !2566, !2589, !2593, !2594, !2617}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2538, file: !80, line: 431, baseType: !2541, size: 64)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{!201, !1161, !201, !201, !1071}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2538, file: !80, line: 432, baseType: !2392, size: 64, offset: 64)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2538, file: !80, line: 433, baseType: !2546, size: 64, offset: 128)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{!201, !1161, !18}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2538, file: !80, line: 434, baseType: !2546, size: 64, offset: 192)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2538, file: !80, line: 435, baseType: !2392, size: 64, offset: 256)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2538, file: !80, line: 436, baseType: !2552, size: 64, offset: 320)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{!201, !1161, !201, !2555}
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !80, line: 417, size: 256, elements: !2557)
!2557 = !{!2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2556, file: !80, line: 418, baseType: !201, size: 32)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2556, file: !80, line: 419, baseType: !18, size: 32, offset: 32)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2556, file: !80, line: 420, baseType: !18, size: 32, offset: 64)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2556, file: !80, line: 422, baseType: !18, size: 32, offset: 96)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2556, file: !80, line: 423, baseType: !18, size: 32, offset: 128)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2556, file: !80, line: 424, baseType: !18, size: 32, offset: 160)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2556, file: !80, line: 425, baseType: !18, size: 32, offset: 192)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2556, file: !80, line: 426, baseType: !18, size: 32, offset: 224)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2538, file: !80, line: 437, baseType: !2567, size: 64, offset: 384)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DISubroutineType(types: !2569)
!2569 = !{!201, !1161, !2448, !2570}
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !80, line: 345, size: 960, elements: !2572)
!2572 = !{!2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588}
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2571, file: !80, line: 346, baseType: !201, size: 32)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2571, file: !80, line: 347, baseType: !145, size: 64, offset: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2571, file: !80, line: 348, baseType: !145, size: 64, offset: 128)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2571, file: !80, line: 349, baseType: !145, size: 64, offset: 192)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2571, file: !80, line: 350, baseType: !145, size: 64, offset: 256)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2571, file: !80, line: 351, baseType: !145, size: 64, offset: 320)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2571, file: !80, line: 352, baseType: !145, size: 64, offset: 384)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2571, file: !80, line: 353, baseType: !262, size: 64, offset: 448)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2571, file: !80, line: 355, baseType: !262, size: 64, offset: 512)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2571, file: !80, line: 356, baseType: !201, size: 32, offset: 576)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2571, file: !80, line: 357, baseType: !201, size: 32, offset: 608)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2571, file: !80, line: 358, baseType: !145, size: 64, offset: 640)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2571, file: !80, line: 359, baseType: !145, size: 64, offset: 704)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2571, file: !80, line: 360, baseType: !145, size: 64, offset: 768)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2571, file: !80, line: 361, baseType: !262, size: 64, offset: 832)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2571, file: !80, line: 362, baseType: !201, size: 32, offset: 896)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2538, file: !80, line: 438, baseType: !2590, size: 64, offset: 448)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DISubroutineType(types: !2592)
!2592 = !{!201, !1161, !2534, !2570}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2538, file: !80, line: 440, baseType: !2567, size: 64, offset: 512)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2538, file: !80, line: 441, baseType: !2595, size: 64, offset: 576)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DISubroutineType(types: !2597)
!2597 = !{!201, !1161, !2598}
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2599, size: 64)
!2599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !80, line: 411, size: 1408, elements: !2600)
!2600 = !{!2601, !2602}
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2599, file: !80, line: 412, baseType: !18, size: 32)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2599, file: !80, line: 413, baseType: !2603, size: 1344, offset: 64)
!2603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2604, size: 1344, elements: !627)
!2604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !80, line: 397, size: 448, elements: !2605)
!2605 = !{!2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2616}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2604, file: !80, line: 398, baseType: !18, size: 32)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2604, file: !80, line: 399, baseType: !18, size: 32, offset: 32)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2604, file: !80, line: 401, baseType: !18, size: 32, offset: 64)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2604, file: !80, line: 402, baseType: !18, size: 32, offset: 96)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2604, file: !80, line: 403, baseType: !18, size: 32, offset: 128)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2604, file: !80, line: 404, baseType: !18, size: 32, offset: 160)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2604, file: !80, line: 405, baseType: !18, size: 32, offset: 192)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2604, file: !80, line: 406, baseType: !147, size: 64, offset: 256)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2604, file: !80, line: 407, baseType: !2615, size: 64, offset: 320)
!2615 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !197, line: 132, baseType: !145)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2604, file: !80, line: 408, baseType: !2615, size: 64, offset: 384)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2538, file: !80, line: 442, baseType: !2546, size: 64, offset: 640)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1162, file: !75, line: 1200, baseType: !2619, size: 64, offset: 576)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2621)
!2621 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !75, line: 54, flags: DIFlagFwdDecl)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1162, file: !75, line: 1201, baseType: !113, size: 64, offset: 640)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1162, file: !75, line: 1202, baseType: !113, size: 64, offset: 704)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1162, file: !75, line: 1203, baseType: !113, size: 64, offset: 768)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1162, file: !75, line: 1204, baseType: !913, size: 64, offset: 832)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1162, file: !75, line: 1205, baseType: !730, size: 320, offset: 896)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1162, file: !75, line: 1206, baseType: !201, size: 32, offset: 1216)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1162, file: !75, line: 1207, baseType: !196, size: 32, offset: 1248)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1162, file: !75, line: 1209, baseType: !112, size: 64, offset: 1280)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1162, file: !75, line: 1211, baseType: !2631, size: 64, offset: 1344)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2634)
!2634 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !75, line: 1211, flags: DIFlagFwdDecl)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1162, file: !75, line: 1223, baseType: !2636, size: 64, offset: 1408)
!2636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !925, line: 34, size: 64, elements: !2637)
!2637 = !{!2638}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2636, file: !925, line: 35, baseType: !928, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1162, file: !75, line: 1224, baseType: !251, size: 128, offset: 1472)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1162, file: !75, line: 1225, baseType: !2641, size: 64, offset: 1600)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !75, line: 1225, flags: DIFlagFwdDecl)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1162, file: !75, line: 1226, baseType: !2644, size: 64, offset: 1664)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !75, line: 1226, flags: DIFlagFwdDecl)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1162, file: !75, line: 1227, baseType: !2647, size: 64, offset: 1728)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !75, line: 50, flags: DIFlagFwdDecl)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1162, file: !75, line: 1228, baseType: !2650, size: 64, offset: 1792)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !75, line: 1228, flags: DIFlagFwdDecl)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1162, file: !75, line: 1229, baseType: !643, size: 128, offset: 1856)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1162, file: !75, line: 1230, baseType: !18, size: 32, offset: 1984)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1162, file: !75, line: 1231, baseType: !2655, size: 2496, offset: 2048)
!2655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !80, line: 521, size: 2496, elements: !2656)
!2656 = !{!2657, !2658, !2659, !2661, !2693}
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2655, file: !80, line: 522, baseType: !18, size: 32)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2655, file: !80, line: 523, baseType: !730, size: 320, offset: 64)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2655, file: !80, line: 524, baseType: !2660, size: 192, offset: 384)
!2660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !948, size: 192, elements: !627)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2655, file: !80, line: 525, baseType: !2662, size: 1728, offset: 576)
!2662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2663, size: 1728, elements: !627)
!2663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !80, line: 222, size: 576, elements: !2664)
!2664 = !{!2665, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2663, file: !80, line: 223, baseType: !2666, size: 64)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !80, line: 445, size: 256, elements: !2668)
!2668 = !{!2669, !2670, !2683, !2684}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2667, file: !80, line: 446, baseType: !201, size: 32)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2667, file: !80, line: 447, baseType: !2671, size: 64, offset: 64)
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2673)
!2673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !80, line: 312, size: 512, elements: !2674)
!2674 = !{!2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2673, file: !80, line: 313, baseType: !2392, size: 64)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2673, file: !80, line: 314, baseType: !2392, size: 64, offset: 64)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2673, file: !80, line: 315, baseType: !2392, size: 64, offset: 128)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2673, file: !80, line: 316, baseType: !2392, size: 64, offset: 192)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2673, file: !80, line: 317, baseType: !2501, size: 64, offset: 256)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2673, file: !80, line: 318, baseType: !2501, size: 64, offset: 320)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2673, file: !80, line: 319, baseType: !2501, size: 64, offset: 384)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2673, file: !80, line: 320, baseType: !2531, size: 64, offset: 448)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2667, file: !80, line: 448, baseType: !1194, size: 64, offset: 128)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2667, file: !80, line: 449, baseType: !2666, size: 64, offset: 192)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2663, file: !80, line: 224, baseType: !201, size: 32, offset: 64)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2663, file: !80, line: 226, baseType: !251, size: 128, offset: 128)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2663, file: !80, line: 227, baseType: !113, size: 64, offset: 256)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2663, file: !80, line: 228, baseType: !18, size: 32, offset: 320)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2663, file: !80, line: 229, baseType: !18, size: 32, offset: 352)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2663, file: !80, line: 230, baseType: !2469, size: 64, offset: 384)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2663, file: !80, line: 231, baseType: !2469, size: 64, offset: 448)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2663, file: !80, line: 232, baseType: !112, size: 64, offset: 512)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2655, file: !80, line: 526, baseType: !2694, size: 192, offset: 2304)
!2694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2671, size: 192, elements: !627)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1162, file: !75, line: 1233, baseType: !2696, size: 2368, offset: 4544)
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !75, line: 1184, size: 2368, elements: !2697)
!2697 = !{!2698, !2699, !2700}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2696, file: !75, line: 1185, baseType: !143, size: 16)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2696, file: !75, line: 1186, baseType: !143, size: 16, offset: 16)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2696, file: !75, line: 1187, baseType: !2701, size: 2304, offset: 64)
!2701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2702, size: 2304, elements: !627)
!2702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2703, line: 12, size: 768, elements: !2704)
!2703 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2704 = !{!2705, !2713, !2714, !2719, !2720}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2702, file: !2703, line: 13, baseType: !2706, size: 384)
!2706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2707, line: 17, size: 384, elements: !2708)
!2707 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2708 = !{!2709, !2710, !2711, !2712}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2706, file: !2707, line: 18, baseType: !201, size: 32)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2706, file: !2707, line: 19, baseType: !201, size: 32, offset: 32)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2706, file: !2707, line: 20, baseType: !652, size: 192, offset: 64)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2706, file: !2707, line: 22, baseType: !569, size: 128, align: 64, offset: 256)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2702, file: !2703, line: 14, baseType: !2082, size: 64, offset: 384)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2702, file: !2703, line: 15, baseType: !2715, size: 64, offset: 448)
!2715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2716, line: 16, size: 64, elements: !2717)
!2716 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2717 = !{!2718}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2715, file: !2716, line: 17, baseType: !175, size: 64)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2702, file: !2703, line: 16, baseType: !652, size: 192, offset: 512)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2702, file: !2703, line: 17, baseType: !196, size: 32, offset: 704)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1162, file: !75, line: 1240, baseType: !112, size: 64, offset: 6912)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1162, file: !75, line: 1243, baseType: !186, size: 32, offset: 6976)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1162, file: !75, line: 1245, baseType: !746, size: 64, offset: 7040)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1162, file: !75, line: 1246, baseType: !746, size: 64, offset: 7104)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1162, file: !75, line: 1248, baseType: !187, size: 32, offset: 7168)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1162, file: !75, line: 1249, baseType: !2727, size: 64, offset: 7232)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !75, line: 634, flags: DIFlagFwdDecl)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1162, file: !75, line: 1252, baseType: !2730, size: 256, offset: 7296)
!2730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !2731)
!2731 = !{!2732}
!2732 = !DISubrange(count: 32)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1162, file: !75, line: 1253, baseType: !2734, size: 128, offset: 7552)
!2734 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2735, line: 21, baseType: !2736)
!2735 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2736 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2735, line: 19, size: 128, elements: !2737)
!2737 = !{!2738}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2736, file: !2735, line: 20, baseType: !2739, size: 128)
!2739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 128, elements: !2740)
!2740 = !{!2741}
!2741 = !DISubrange(count: 16)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1162, file: !75, line: 1255, baseType: !18, size: 32, offset: 7680)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1162, file: !75, line: 1261, baseType: !589, size: 256, offset: 7744)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1162, file: !75, line: 1267, baseType: !792, size: 64, offset: 8000)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1162, file: !75, line: 1269, baseType: !2746, size: 64, offset: 8064)
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2748)
!2748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !915, line: 128, size: 1024, align: 512, elements: !2749)
!2749 = !{!2750, !2754, !2755, !2762, !2768, !2772, !2776, !2780, !2781, !2785, !2789, !2794, !2798}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2748, file: !915, line: 129, baseType: !2751, size: 64)
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!2752 = !DISubroutineType(types: !2753)
!2753 = !{!201, !913, !18}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2748, file: !915, line: 130, baseType: !2751, size: 64, offset: 64)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2748, file: !915, line: 131, baseType: !2756, size: 64, offset: 128)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2757 = !DISubroutineType(types: !2758)
!2758 = !{!201, !2759, !2761}
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !914)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2748, file: !915, line: 132, baseType: !2763, size: 64, offset: 192)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!201, !2759, !18, !792, !2766}
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !933)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2748, file: !915, line: 134, baseType: !2769, size: 64, offset: 256)
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = !DISubroutineType(types: !2771)
!2771 = !{!201, !2759}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2748, file: !915, line: 135, baseType: !2773, size: 64, offset: 320)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DISubroutineType(types: !2775)
!2775 = !{!201, !913}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2748, file: !915, line: 136, baseType: !2777, size: 64, offset: 384)
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = !DISubroutineType(types: !2779)
!2779 = !{null, !913}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2748, file: !915, line: 137, baseType: !2777, size: 64, offset: 448)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2748, file: !915, line: 138, baseType: !2782, size: 64, offset: 512)
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = !DISubroutineType(types: !2784)
!2784 = !{null, !913, !948}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2748, file: !915, line: 139, baseType: !2786, size: 64, offset: 576)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = !DISubroutineType(types: !2788)
!2788 = !{!802, !913, !802, !201}
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2748, file: !915, line: 140, baseType: !2790, size: 64, offset: 640)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = !DISubroutineType(types: !2792)
!2792 = !{!908, !2793}
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2748, file: !915, line: 141, baseType: !2795, size: 64, offset: 704)
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2796, size: 64)
!2796 = !DISubroutineType(types: !2797)
!2797 = !{!201, !1071, !789}
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2748, file: !915, line: 142, baseType: !2799, size: 64, offset: 768)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DISubroutineType(types: !2801)
!2801 = !{!913, !913, !2802}
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !949)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1162, file: !75, line: 1271, baseType: !2805, size: 448, offset: 8128)
!2805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2484, line: 63, size: 448, elements: !2806)
!2806 = !{!2807, !2812, !2813, !2814, !2815, !2816, !2817}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2805, file: !2484, line: 64, baseType: !2808, size: 64)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{!113, !2811, !2482}
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2805, file: !2484, line: 66, baseType: !2808, size: 64, offset: 64)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2805, file: !2484, line: 69, baseType: !1063, size: 64, offset: 128)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2805, file: !2484, line: 70, baseType: !201, size: 32, offset: 192)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2805, file: !2484, line: 71, baseType: !18, size: 32, offset: 224)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2805, file: !2484, line: 74, baseType: !251, size: 128, offset: 256)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2805, file: !2484, line: 85, baseType: !2818, size: 64, offset: 384)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1162, file: !75, line: 1274, baseType: !582, size: 64, offset: 8576)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1162, file: !75, line: 1280, baseType: !582, size: 64, offset: 8640)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1162, file: !75, line: 1283, baseType: !201, size: 32, offset: 8704)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1162, file: !75, line: 1286, baseType: !1808, size: 32, offset: 8736)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1162, file: !75, line: 1289, baseType: !2305, size: 64, offset: 8768)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1162, file: !75, line: 1290, baseType: !639, size: 64, offset: 8832)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1162, file: !75, line: 1297, baseType: !875, size: 64, offset: 8896)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1162, file: !75, line: 1304, baseType: !2827, size: 64, offset: 8960)
!2827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2828, line: 49, size: 64, elements: !2829)
!2828 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!2829 = !{!2830}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2827, file: !2828, line: 50, baseType: !2831, size: 64)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2828, line: 41, size: 512, align: 512, elements: !2833)
!2833 = !{!2834, !2835, !2840}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2832, file: !2828, line: 43, baseType: !543, size: 32)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2832, file: !2828, line: 45, baseType: !2836, size: 192, offset: 64)
!2836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2828, line: 29, size: 192, elements: !2837)
!2837 = !{!2838, !2839}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2836, file: !2828, line: 30, baseType: !251, size: 128)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2836, file: !2828, line: 32, baseType: !1063, size: 64, offset: 128)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2832, file: !2828, line: 46, baseType: !1063, size: 64, offset: 256)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1162, file: !75, line: 1305, baseType: !2827, size: 64, offset: 9024)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1162, file: !75, line: 1306, baseType: !569, size: 128, align: 64, offset: 9088)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1162, file: !75, line: 1307, baseType: !2244, size: 256, offset: 9216)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1162, file: !75, line: 1309, baseType: !589, size: 256, offset: 9472)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1162, file: !75, line: 1314, baseType: !201, size: 32, offset: 9728)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1162, file: !75, line: 1317, baseType: !543, size: 32, align: 512, offset: 10240)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1162, file: !75, line: 1318, baseType: !251, size: 128, offset: 10304)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1162, file: !75, line: 1320, baseType: !543, size: 32, offset: 10432)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1162, file: !75, line: 1321, baseType: !251, size: 128, offset: 10496)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !949, file: !75, line: 656, baseType: !1311, size: 64, offset: 512)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !949, file: !75, line: 659, baseType: !112, size: 64, offset: 576)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !949, file: !75, line: 663, baseType: !113, size: 64, offset: 640)
!2853 = !DIDerivedType(tag: DW_TAG_member, scope: !949, file: !75, line: 671, baseType: !2854, size: 32, offset: 704)
!2854 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !949, file: !75, line: 671, size: 32, elements: !2855)
!2855 = !{!2856, !2858}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2854, file: !75, line: 672, baseType: !2857, size: 32)
!2857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2854, file: !75, line: 673, baseType: !18, size: 32)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !949, file: !75, line: 675, baseType: !1023, size: 32, offset: 736)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !949, file: !75, line: 676, baseType: !601, size: 64, offset: 768)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !949, file: !75, line: 677, baseType: !1059, size: 128, offset: 832)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !949, file: !75, line: 678, baseType: !1059, size: 128, offset: 960)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !949, file: !75, line: 679, baseType: !1059, size: 128, offset: 1088)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !949, file: !75, line: 680, baseType: !543, size: 32, offset: 1216)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !949, file: !75, line: 681, baseType: !143, size: 16, offset: 1248)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !949, file: !75, line: 682, baseType: !361, size: 8, offset: 1264)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !949, file: !75, line: 683, baseType: !361, size: 8, offset: 1272)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !949, file: !75, line: 684, baseType: !2615, size: 64, offset: 1280)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !949, file: !75, line: 691, baseType: !113, size: 64, offset: 1344)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !949, file: !75, line: 692, baseType: !730, size: 320, offset: 1408)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !949, file: !75, line: 694, baseType: !113, size: 64, offset: 1728)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !949, file: !75, line: 695, baseType: !113, size: 64, offset: 1792)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !949, file: !75, line: 697, baseType: !643, size: 128, offset: 1856)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !949, file: !75, line: 698, baseType: !251, size: 128, offset: 1984)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !949, file: !75, line: 707, baseType: !251, size: 128, offset: 2112)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !949, file: !75, line: 708, baseType: !251, size: 128, offset: 2240)
!2877 = !DIDerivedType(tag: DW_TAG_member, scope: !949, file: !75, line: 709, baseType: !2878, size: 128, offset: 2368)
!2878 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !949, file: !75, line: 709, size: 128, elements: !2879)
!2879 = !{!2880, !2881}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2878, file: !75, line: 710, baseType: !639, size: 64)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2878, file: !75, line: 711, baseType: !569, size: 128, align: 64)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !949, file: !75, line: 713, baseType: !584, size: 64, offset: 2496)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !949, file: !75, line: 714, baseType: !584, size: 64, offset: 2560)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !949, file: !75, line: 715, baseType: !196, size: 32, offset: 2624)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !949, file: !75, line: 716, baseType: !196, size: 32, offset: 2656)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !949, file: !75, line: 717, baseType: !196, size: 32, offset: 2688)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !949, file: !75, line: 719, baseType: !196, size: 32, offset: 2720)
!2888 = !DIDerivedType(tag: DW_TAG_member, scope: !949, file: !75, line: 721, baseType: !2889, size: 64, offset: 2752)
!2889 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !949, file: !75, line: 721, size: 64, elements: !2890)
!2890 = !{!2891, !3017}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2889, file: !75, line: 722, baseType: !2892, size: 64)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2894)
!2894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !75, line: 1914, size: 2112, elements: !2895)
!2895 = !{!2896, !2897, !2901, !2905, !2909, !2910, !2911, !2917, !2930, !2934, !2938, !2939, !2943, !2944, !2948, !2953, !2954, !2958, !2962, !2968, !2969, !2973, !2974, !2980, !2984, !2985, !2990, !2994, !2998, !3002, !3006, !3007, !3013}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2894, file: !75, line: 1915, baseType: !1194, size: 64)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2894, file: !75, line: 1916, baseType: !2898, size: 64, offset: 64)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = !DISubroutineType(types: !2900)
!2900 = !{!601, !561, !601, !201}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2894, file: !75, line: 1917, baseType: !2902, size: 64, offset: 128)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{!1102, !561, !802, !1105, !1936}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2894, file: !75, line: 1918, baseType: !2906, size: 64, offset: 192)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = !DISubroutineType(types: !2908)
!2908 = !{!1102, !561, !792, !1105, !1936}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2894, file: !75, line: 1919, baseType: !1742, size: 64, offset: 256)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2894, file: !75, line: 1920, baseType: !1742, size: 64, offset: 320)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2894, file: !75, line: 1921, baseType: !2912, size: 64, offset: 384)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{!201, !1745, !2915, !18}
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !75, line: 53, flags: DIFlagFwdDecl)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2894, file: !75, line: 1923, baseType: !2918, size: 64, offset: 448)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{!201, !561, !2921}
!2921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2922, size: 64)
!2922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !75, line: 1858, size: 128, elements: !2923)
!2923 = !{!2924, !2929}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2922, file: !75, line: 1859, baseType: !2925, size: 64)
!2925 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !75, line: 1855, baseType: !2926)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{!789, !2921, !792, !201, !601, !145, !18}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2922, file: !75, line: 1860, baseType: !601, size: 64, offset: 64)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2894, file: !75, line: 1924, baseType: !2931, size: 64, offset: 512)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = !DISubroutineType(types: !2933)
!2933 = !{!1956, !561, !1958}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2894, file: !75, line: 1925, baseType: !2935, size: 64, offset: 576)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = !DISubroutineType(types: !2937)
!2937 = !{!1063, !561, !18, !113}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2894, file: !75, line: 1926, baseType: !2935, size: 64, offset: 640)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2894, file: !75, line: 1927, baseType: !2940, size: 64, offset: 704)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{!201, !561, !1451}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2894, file: !75, line: 1928, baseType: !113, size: 64, offset: 768)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2894, file: !75, line: 1929, baseType: !2945, size: 64, offset: 832)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DISubroutineType(types: !2947)
!2947 = !{!201, !948, !561}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2894, file: !75, line: 1930, baseType: !2949, size: 64, offset: 896)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{!201, !561, !2952}
!2952 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !75, line: 1061, baseType: !112)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2894, file: !75, line: 1931, baseType: !2945, size: 64, offset: 960)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2894, file: !75, line: 1932, baseType: !2955, size: 64, offset: 1024)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = !DISubroutineType(types: !2957)
!2957 = !{!201, !561, !601, !601, !201}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2894, file: !75, line: 1933, baseType: !2959, size: 64, offset: 1088)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = !DISubroutineType(types: !2961)
!2961 = !{!201, !201, !561, !201}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2894, file: !75, line: 1934, baseType: !2963, size: 64, offset: 1152)
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2964 = !DISubroutineType(types: !2965)
!2965 = !{!201, !561, !201, !2966}
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !75, line: 1063, flags: DIFlagFwdDecl)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2894, file: !75, line: 1935, baseType: !558, size: 64, offset: 1216)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2894, file: !75, line: 1936, baseType: !2970, size: 64, offset: 1280)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{!201, !201}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2894, file: !75, line: 1937, baseType: !2963, size: 64, offset: 1344)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2894, file: !75, line: 1938, baseType: !2975, size: 64, offset: 1408)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{!1102, !2978, !561, !1936, !1105, !18}
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !177, line: 59, flags: DIFlagFwdDecl)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2894, file: !75, line: 1939, baseType: !2981, size: 64, offset: 1472)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!1102, !561, !1936, !2978, !1105, !18}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2894, file: !75, line: 1940, baseType: !1798, size: 64, offset: 1536)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2894, file: !75, line: 1941, baseType: !2986, size: 64, offset: 1600)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!201, !561, !201, !2989, !1719}
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2894, file: !75, line: 1942, baseType: !2991, size: 64, offset: 1664)
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!2992 = !DISubroutineType(types: !2993)
!2993 = !{!1063, !561, !201, !601, !601}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2894, file: !75, line: 1944, baseType: !2995, size: 64, offset: 1728)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DISubroutineType(types: !2997)
!2997 = !{null, !1912, !561}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2894, file: !75, line: 1948, baseType: !2999, size: 64, offset: 1792)
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = !DISubroutineType(types: !3001)
!3001 = !{!1102, !561, !601, !561, !601, !1105, !18}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2894, file: !75, line: 1950, baseType: !3003, size: 64, offset: 1856)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{!601, !561, !601, !561, !601, !601, !18}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2894, file: !75, line: 1953, baseType: !2955, size: 64, offset: 1920)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2894, file: !75, line: 1954, baseType: !3008, size: 64, offset: 1984)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DISubroutineType(types: !3010)
!3010 = !{!201, !3011, !18}
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !75, line: 1911, flags: DIFlagFwdDecl)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2894, file: !75, line: 1955, baseType: !3014, size: 64, offset: 2048)
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = !DISubroutineType(types: !3016)
!3016 = !{!201, !3011, !2915, !18}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2889, file: !75, line: 723, baseType: !2373, size: 64)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !949, file: !75, line: 725, baseType: !3019, size: 64, offset: 2816)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !75, line: 725, flags: DIFlagFwdDecl)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !949, file: !75, line: 726, baseType: !1312, size: 1536, align: 64, offset: 2880)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !949, file: !75, line: 727, baseType: !251, size: 128, offset: 4416)
!3023 = !DIDerivedType(tag: DW_TAG_member, scope: !949, file: !75, line: 728, baseType: !3024, size: 64, offset: 4544)
!3024 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !949, file: !75, line: 728, size: 64, elements: !3025)
!3025 = !{!3026, !3027, !3030, !3031}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3024, file: !75, line: 729, baseType: !2978, size: 64)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3024, file: !75, line: 730, baseType: !3028, size: 64)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !75, line: 730, flags: DIFlagFwdDecl)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3024, file: !75, line: 731, baseType: !802, size: 64)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3024, file: !75, line: 732, baseType: !18, size: 32)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !949, file: !75, line: 735, baseType: !187, size: 32, offset: 4608)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !949, file: !75, line: 738, baseType: !187, size: 32, offset: 4640)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !949, file: !75, line: 739, baseType: !2727, size: 64, offset: 4672)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !949, file: !75, line: 750, baseType: !112, size: 64, offset: 4736)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !914, file: !915, line: 91, baseType: !3037, size: 256, offset: 448)
!3037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 256, elements: !2731)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !914, file: !915, line: 94, baseType: !3039, size: 64, offset: 704)
!3039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3040, line: 25, size: 64, elements: !3041)
!3040 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3041 = !{!3042}
!3042 = !DIDerivedType(tag: DW_TAG_member, scope: !3039, file: !3040, line: 26, baseType: !3043, size: 64)
!3043 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3039, file: !3040, line: 26, size: 64, elements: !3044)
!3044 = !{!3045, !3046}
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3043, file: !3040, line: 28, baseType: !146, size: 64, align: 64)
!3046 = !DIDerivedType(tag: DW_TAG_member, scope: !3043, file: !3040, line: 30, baseType: !3047, size: 64)
!3047 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3043, file: !3040, line: 30, size: 64, elements: !3048)
!3048 = !{!3049, !3050}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3047, file: !3040, line: 31, baseType: !543, size: 32)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3047, file: !3040, line: 32, baseType: !201, size: 32, offset: 32)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !914, file: !915, line: 95, baseType: !2746, size: 64, offset: 768)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !914, file: !915, line: 96, baseType: !1161, size: 64, offset: 832)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !914, file: !915, line: 97, baseType: !113, size: 64, offset: 896)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !914, file: !915, line: 98, baseType: !112, size: 64, offset: 960)
!3055 = !DIDerivedType(tag: DW_TAG_member, scope: !914, file: !915, line: 100, baseType: !3056, size: 128, offset: 1024)
!3056 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !914, file: !915, line: 100, size: 128, elements: !3057)
!3057 = !{!3058, !3059}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3056, file: !915, line: 101, baseType: !251, size: 128)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3056, file: !915, line: 102, baseType: !3060, size: 64)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !914, file: !915, line: 104, baseType: !251, size: 128, offset: 1152)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !914, file: !915, line: 105, baseType: !251, size: 128, offset: 1280)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !914, file: !915, line: 113, baseType: !3064, size: 128, offset: 1408)
!3064 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !914, file: !915, line: 109, size: 128, elements: !3065)
!3065 = !{!3066, !3067, !3068}
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3064, file: !915, line: 110, baseType: !643, size: 128)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3064, file: !915, line: 111, baseType: !924, size: 128)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3064, file: !915, line: 112, baseType: !569, size: 128, align: 64)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !909, file: !910, line: 72, baseType: !1161, size: 64, offset: 64)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !909, file: !910, line: 73, baseType: !201, size: 32, offset: 128)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !909, file: !910, line: 74, baseType: !988, size: 64, offset: 192)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !904, file: !905, line: 10, baseType: !913, size: 64, offset: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !562, file: !75, line: 1015, baseType: !948, size: 64, offset: 1344)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !562, file: !75, line: 1016, baseType: !2892, size: 64, offset: 1408)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !562, file: !75, line: 1018, baseType: !145, size: 64, offset: 1472)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !562, file: !75, line: 1020, baseType: !112, size: 64, offset: 1536)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !562, file: !75, line: 1023, baseType: !112, size: 64, offset: 1600)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !562, file: !75, line: 1027, baseType: !3079, size: 64, offset: 1664)
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !562, file: !75, line: 1029, baseType: !1311, size: 64, offset: 1728)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !562, file: !75, line: 1030, baseType: !1808, size: 32, offset: 1792)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !562, file: !75, line: 1031, baseType: !1808, size: 32, offset: 1824)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !529, file: !46, line: 756, baseType: !113, size: 64, offset: 704)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !529, file: !46, line: 757, baseType: !113, size: 64, offset: 768)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !529, file: !46, line: 760, baseType: !113, size: 64, offset: 832)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !529, file: !46, line: 761, baseType: !113, size: 64, offset: 896)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !529, file: !46, line: 763, baseType: !113, size: 64, offset: 960)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !529, file: !46, line: 764, baseType: !3089, size: 64, offset: 1024)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1466, line: 299, baseType: !3091)
!3091 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1466, line: 299, size: 64, elements: !3092)
!3092 = !{!3093}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !3091, file: !1466, line: 299, baseType: !3094, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1471, line: 18, baseType: !113)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !529, file: !46, line: 773, baseType: !196, size: 32, offset: 1088)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !529, file: !46, line: 785, baseType: !196, size: 32, offset: 1120)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !529, file: !46, line: 795, baseType: !3098, size: 64, offset: 1152)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !46, line: 726, size: 128, elements: !3100)
!3100 = !{!3101, !3102}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3099, file: !46, line: 727, baseType: !145, size: 64)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !3099, file: !46, line: 728, baseType: !201, size: 32, offset: 64)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !529, file: !46, line: 801, baseType: !113, size: 64, offset: 1216)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !529, file: !46, line: 804, baseType: !582, size: 64, offset: 1280)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !529, file: !46, line: 806, baseType: !201, size: 32, offset: 1344)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !529, file: !46, line: 808, baseType: !543, size: 32, offset: 1376)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !529, file: !46, line: 823, baseType: !730, size: 320, offset: 1408)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !529, file: !46, line: 825, baseType: !251, size: 128, offset: 1728)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !529, file: !46, line: 845, baseType: !201, size: 32, offset: 1856)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !529, file: !46, line: 849, baseType: !113, size: 64, offset: 1920)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !529, file: !46, line: 850, baseType: !113, size: 64, offset: 1984)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !529, file: !46, line: 852, baseType: !113, size: 64, offset: 2048)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !529, file: !46, line: 853, baseType: !113, size: 64, offset: 2112)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !529, file: !46, line: 854, baseType: !584, size: 64, offset: 2176)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !529, file: !46, line: 855, baseType: !113, size: 64, offset: 2240)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !529, file: !46, line: 856, baseType: !113, size: 64, offset: 2304)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !529, file: !46, line: 857, baseType: !113, size: 64, offset: 2368)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !529, file: !46, line: 858, baseType: !113, size: 64, offset: 2432)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !529, file: !46, line: 865, baseType: !399, size: 32, offset: 2496)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !529, file: !46, line: 867, baseType: !543, size: 32, offset: 2528)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !529, file: !46, line: 869, baseType: !113, size: 64, offset: 2560)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !529, file: !46, line: 869, baseType: !113, size: 64, offset: 2624)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !529, file: !46, line: 869, baseType: !113, size: 64, offset: 2688)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !529, file: !46, line: 869, baseType: !113, size: 64, offset: 2752)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !529, file: !46, line: 870, baseType: !113, size: 64, offset: 2816)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !529, file: !46, line: 870, baseType: !113, size: 64, offset: 2880)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !529, file: !46, line: 870, baseType: !113, size: 64, offset: 2944)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !529, file: !46, line: 871, baseType: !113, size: 64, offset: 3008)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !529, file: !46, line: 871, baseType: !113, size: 64, offset: 3072)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !529, file: !46, line: 871, baseType: !113, size: 64, offset: 3136)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !529, file: !46, line: 871, baseType: !113, size: 64, offset: 3200)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !529, file: !46, line: 873, baseType: !3133, size: 3328, offset: 3264)
!3133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 3328, elements: !3134)
!3134 = !{!3135}
!3135 = !DISubrange(count: 52)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !529, file: !46, line: 875, baseType: !3137, size: 1280, offset: 6592)
!3137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !850, size: 1280, elements: !648)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !529, file: !46, line: 877, baseType: !3139, size: 64, offset: 7872)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !46, line: 877, flags: DIFlagFwdDecl)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !529, file: !46, line: 880, baseType: !3142, size: 1088, offset: 7936)
!3142 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !3143, line: 72, baseType: !3144)
!3143 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!3144 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3143, line: 23, size: 1088, elements: !3145)
!3145 = !{!3146, !3147, !3148, !3149, !3150, !3153, !3154, !3155, !3156, !3181, !3182, !3183}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !3144, file: !3143, line: 28, baseType: !145, size: 64)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !3144, file: !3143, line: 38, baseType: !584, size: 64, offset: 64)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !3144, file: !3143, line: 40, baseType: !113, size: 64, offset: 128)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !3144, file: !3143, line: 43, baseType: !730, size: 320, offset: 192)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !3144, file: !3143, line: 44, baseType: !3151, size: 64, offset: 512)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !3143, line: 44, flags: DIFlagFwdDecl)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3144, file: !3143, line: 48, baseType: !113, size: 64, offset: 576)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3144, file: !3143, line: 59, baseType: !589, size: 256, offset: 640)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !3144, file: !3143, line: 60, baseType: !112, size: 64, offset: 896)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !3144, file: !3143, line: 61, baseType: !3157, size: 64, offset: 960)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3159)
!3159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !3160, line: 13, size: 1216, elements: !3161)
!3160 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!3161 = !{!3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3159, file: !3160, line: 14, baseType: !112, size: 64)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3159, file: !3160, line: 15, baseType: !113, size: 64, offset: 64)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !3159, file: !3160, line: 17, baseType: !113, size: 64, offset: 128)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !3159, file: !3160, line: 17, baseType: !113, size: 64, offset: 192)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !3159, file: !3160, line: 18, baseType: !113, size: 64, offset: 256)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !3159, file: !3160, line: 18, baseType: !113, size: 64, offset: 320)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !3159, file: !3160, line: 19, baseType: !1847, size: 64, offset: 384)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !3159, file: !3160, line: 21, baseType: !1063, size: 64, offset: 448)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !3159, file: !3160, line: 23, baseType: !1063, size: 64, offset: 512)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !3159, file: !3160, line: 24, baseType: !1063, size: 64, offset: 576)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !3159, file: !3160, line: 25, baseType: !1063, size: 64, offset: 640)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !3159, file: !3160, line: 26, baseType: !1063, size: 64, offset: 704)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !3159, file: !3160, line: 27, baseType: !1063, size: 64, offset: 768)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !3159, file: !3160, line: 28, baseType: !1063, size: 64, offset: 832)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !3159, file: !3160, line: 29, baseType: !1063, size: 64, offset: 896)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !3159, file: !3160, line: 30, baseType: !1063, size: 64, offset: 960)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !3159, file: !3160, line: 31, baseType: !1063, size: 64, offset: 1024)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !3159, file: !3160, line: 32, baseType: !1063, size: 64, offset: 1088)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !3159, file: !3160, line: 33, baseType: !1063, size: 64, offset: 1152)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !3144, file: !3143, line: 63, baseType: !196, size: 32, offset: 1024)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !3144, file: !3143, line: 69, baseType: !139, size: 16, offset: 1056)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !3144, file: !3143, line: 70, baseType: !2137, size: 16, offset: 1072)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !529, file: !46, line: 882, baseType: !113, size: 64, offset: 9024)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !529, file: !46, line: 885, baseType: !543, size: 32, offset: 9088)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !529, file: !46, line: 886, baseType: !3187, size: 64, offset: 9152)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !46, line: 732, flags: DIFlagFwdDecl)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !529, file: !46, line: 901, baseType: !875, size: 64, offset: 9216)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !529, file: !46, line: 904, baseType: !561, size: 64, offset: 9280)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !529, file: !46, line: 906, baseType: !3192, size: 64, offset: 9344)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !46, line: 906, flags: DIFlagFwdDecl)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !529, file: !46, line: 930, baseType: !196, size: 32, offset: 9408)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !529, file: !46, line: 933, baseType: !196, size: 32, offset: 9440)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !529, file: !46, line: 935, baseType: !3197, size: 64, offset: 9472)
!3197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !92, line: 103, size: 64, elements: !3198)
!3198 = !{!3199}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !3197, file: !92, line: 104, baseType: !3200, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !92, line: 101, flags: DIFlagFwdDecl)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !529, file: !46, line: 940, baseType: !582, size: 64, offset: 9536)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !529, file: !46, line: 942, baseType: !2244, size: 256, offset: 9600)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !526, file: !46, line: 986, baseType: !3205, offset: 10240)
!3205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, elements: !667)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !176, file: !177, line: 882, baseType: !525, size: 64, offset: 9792)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !176, file: !177, line: 884, baseType: !201, size: 32, offset: 9856)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !176, file: !177, line: 885, baseType: !201, size: 32, offset: 9888)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !176, file: !177, line: 886, baseType: !201, size: 32, offset: 9920)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !176, file: !177, line: 888, baseType: !201, size: 32, offset: 9952)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !176, file: !177, line: 890, baseType: !113, size: 64, offset: 9984)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !176, file: !177, line: 893, baseType: !18, size: 32, offset: 10048)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !176, file: !177, line: 896, baseType: !18, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !176, file: !177, line: 897, baseType: !18, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !176, file: !177, line: 898, baseType: !18, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !176, file: !177, line: 899, baseType: !18, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !176, file: !177, line: 919, baseType: !18, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !176, file: !177, line: 922, baseType: !18, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !176, file: !177, line: 923, baseType: !18, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !176, file: !177, line: 925, baseType: !18, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !176, file: !177, line: 939, baseType: !18, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !176, file: !177, line: 941, baseType: !18, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !176, file: !177, line: 944, baseType: !18, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !176, file: !177, line: 956, baseType: !18, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !176, file: !177, line: 962, baseType: !18, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !176, file: !177, line: 966, baseType: !18, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !176, file: !177, line: 969, baseType: !113, size: 64, offset: 10176)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !176, file: !177, line: 971, baseType: !3229, size: 448, offset: 10240)
!3229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !86, line: 25, size: 448, elements: !3230)
!3230 = !{!3231, !3232, !3237}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3229, file: !86, line: 26, baseType: !113, size: 64)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3229, file: !86, line: 27, baseType: !3233, size: 64, offset: 64)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!1063, !3236}
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3237 = !DIDerivedType(tag: DW_TAG_member, scope: !3229, file: !86, line: 28, baseType: !3238, size: 320, offset: 128)
!3238 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3229, file: !86, line: 28, size: 320, elements: !3239)
!3239 = !{!3240, !3250, !3275}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3238, file: !86, line: 37, baseType: !3241, size: 320)
!3241 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3238, file: !86, line: 30, size: 320, elements: !3242)
!3242 = !{!3243, !3245, !3246, !3247, !3248, !3249}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3241, file: !86, line: 31, baseType: !3244, size: 64)
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3241, file: !86, line: 32, baseType: !186, size: 32, offset: 64)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3241, file: !86, line: 33, baseType: !186, size: 32, offset: 96)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3241, file: !86, line: 34, baseType: !186, size: 32, offset: 128)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3241, file: !86, line: 35, baseType: !145, size: 64, offset: 192)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3241, file: !86, line: 36, baseType: !3244, size: 64, offset: 256)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3238, file: !86, line: 47, baseType: !3251, size: 192)
!3251 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3238, file: !86, line: 39, size: 192, elements: !3252)
!3252 = !{!3253, !3254, !3255, !3274}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3251, file: !86, line: 40, baseType: !390, size: 32)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3251, file: !86, line: 41, baseType: !85, size: 32, offset: 32)
!3255 = !DIDerivedType(tag: DW_TAG_member, scope: !3251, file: !86, line: 42, baseType: !3256, size: 64, offset: 64)
!3256 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3251, file: !86, line: 42, size: 64, elements: !3257)
!3257 = !{!3258, !3266}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3256, file: !86, line: 43, baseType: !3259, size: 64)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3261, line: 7, size: 128, elements: !3262)
!3261 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3262 = !{!3263, !3265}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3260, file: !3261, line: 8, baseType: !3264, size: 64)
!3264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !392, line: 93, baseType: !264)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3260, file: !3261, line: 9, baseType: !264, size: 64, offset: 64)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3256, file: !86, line: 44, baseType: !3267, size: 64)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3269, line: 7, size: 64, elements: !3270)
!3269 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3270 = !{!3271, !3273}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3268, file: !3269, line: 8, baseType: !3272, size: 32)
!3272 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3269, line: 5, baseType: !722)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3268, file: !3269, line: 9, baseType: !722, size: 32, offset: 32)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3251, file: !86, line: 46, baseType: !145, size: 64, offset: 128)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3238, file: !86, line: 55, baseType: !3276, size: 256)
!3276 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3238, file: !86, line: 49, size: 256, elements: !3277)
!3277 = !{!3278, !3281, !3282, !3283, !3284}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3276, file: !86, line: 50, baseType: !3279, size: 64)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !86, line: 14, flags: DIFlagFwdDecl)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3276, file: !86, line: 51, baseType: !201, size: 32, offset: 64)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3276, file: !86, line: 52, baseType: !201, size: 32, offset: 96)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3276, file: !86, line: 53, baseType: !113, size: 64, offset: 128)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3276, file: !86, line: 54, baseType: !113, size: 64, offset: 192)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !176, file: !177, line: 973, baseType: !3286, size: 32, offset: 10688)
!3286 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !197, line: 27, baseType: !3287)
!3287 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !392, line: 28, baseType: !201)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !176, file: !177, line: 974, baseType: !3286, size: 32, offset: 10720)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !176, file: !177, line: 978, baseType: !113, size: 64, offset: 10752)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !176, file: !177, line: 987, baseType: !175, size: 64, offset: 10816)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !176, file: !177, line: 990, baseType: !175, size: 64, offset: 10880)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !176, file: !177, line: 995, baseType: !251, size: 128, offset: 10944)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !176, file: !177, line: 996, baseType: !251, size: 128, offset: 11072)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !176, file: !177, line: 997, baseType: !175, size: 64, offset: 11200)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !176, file: !177, line: 1005, baseType: !251, size: 128, offset: 11264)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !176, file: !177, line: 1006, baseType: !251, size: 128, offset: 11392)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !176, file: !177, line: 1009, baseType: !631, size: 64, offset: 11520)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !176, file: !177, line: 1010, baseType: !3299, size: 512, offset: 11584)
!3299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !643, size: 512, elements: !648)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !176, file: !177, line: 1011, baseType: !251, size: 128, offset: 12096)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !176, file: !177, line: 1012, baseType: !251, size: 128, offset: 12224)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !176, file: !177, line: 1014, baseType: !1993, size: 64, offset: 12352)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !176, file: !177, line: 1017, baseType: !2130, size: 64, offset: 12416)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !176, file: !177, line: 1020, baseType: !2130, size: 64, offset: 12480)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !176, file: !177, line: 1023, baseType: !112, size: 64, offset: 12544)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !176, file: !177, line: 1025, baseType: !145, size: 64, offset: 12608)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !176, file: !177, line: 1026, baseType: !145, size: 64, offset: 12672)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !176, file: !177, line: 1031, baseType: !145, size: 64, offset: 12736)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !176, file: !177, line: 1032, baseType: !3310, size: 192, offset: 12800)
!3310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !177, line: 324, size: 192, elements: !3311)
!3311 = !{!3312, !3313, !3314}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3310, file: !177, line: 326, baseType: !145, size: 64)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3310, file: !177, line: 327, baseType: !145, size: 64, offset: 64)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3310, file: !177, line: 328, baseType: !344, size: 32, offset: 128)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !176, file: !177, line: 1041, baseType: !113, size: 64, offset: 12992)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !176, file: !177, line: 1042, baseType: !113, size: 64, offset: 13056)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !176, file: !177, line: 1045, baseType: !145, size: 64, offset: 13120)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !176, file: !177, line: 1048, baseType: !145, size: 64, offset: 13184)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !176, file: !177, line: 1051, baseType: !113, size: 64, offset: 13248)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !176, file: !177, line: 1052, baseType: !113, size: 64, offset: 13312)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !176, file: !177, line: 1055, baseType: !3322, size: 640, offset: 13376)
!3322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3323, line: 132, size: 640, elements: !3324)
!3323 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3324 = !{!3325, !3331, !3332}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3322, file: !3323, line: 133, baseType: !3326, size: 576)
!3326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3327, size: 576, elements: !627)
!3327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3323, line: 117, size: 192, elements: !3328)
!3328 = !{!3329, !3330}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3327, file: !3323, line: 118, baseType: !145, size: 64)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3327, file: !3323, line: 119, baseType: !405, size: 128, offset: 64)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3322, file: !3323, line: 134, baseType: !18, size: 32, offset: 576)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3322, file: !3323, line: 135, baseType: !18, size: 32, offset: 608)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !176, file: !177, line: 1058, baseType: !3334, size: 448, offset: 14016)
!3334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3323, line: 144, size: 448, elements: !3335)
!3335 = !{!3336, !3337, !3338}
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3334, file: !3323, line: 145, baseType: !569, size: 128, align: 64)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3334, file: !3323, line: 146, baseType: !589, size: 256, offset: 128)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3334, file: !3323, line: 147, baseType: !18, size: 32, offset: 384)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !176, file: !177, line: 1064, baseType: !681, size: 64, offset: 14464)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !176, file: !177, line: 1067, baseType: !681, size: 64, offset: 14528)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !176, file: !177, line: 1070, baseType: !681, size: 64, offset: 14592)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !176, file: !177, line: 1074, baseType: !714, size: 64, offset: 14656)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !176, file: !177, line: 1084, baseType: !3344, size: 128, offset: 14720)
!3344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !2740)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !176, file: !177, line: 1086, baseType: !3346, size: 64, offset: 14848)
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !177, line: 55, flags: DIFlagFwdDecl)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !176, file: !177, line: 1089, baseType: !3349, size: 64, offset: 14912)
!3349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3350, line: 12, size: 64, elements: !3351)
!3350 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3351 = !{!3352}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3349, file: !3350, line: 13, baseType: !3353, size: 64)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3350, line: 8, flags: DIFlagFwdDecl)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !176, file: !177, line: 1090, baseType: !3356, size: 128, offset: 14976)
!3356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3357, line: 13, size: 128, elements: !3358)
!3357 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3358 = !{!3359}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3356, file: !3357, line: 14, baseType: !251, size: 128)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !176, file: !177, line: 1097, baseType: !3361, size: 64, offset: 15104)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3362 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !177, line: 50, flags: DIFlagFwdDecl)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !176, file: !177, line: 1100, baseType: !3364, size: 64, offset: 15168)
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3365 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !177, line: 1100, flags: DIFlagFwdDecl)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !176, file: !177, line: 1103, baseType: !3367, size: 64, offset: 15232)
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !177, line: 53, flags: DIFlagFwdDecl)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !176, file: !177, line: 1107, baseType: !3370, size: 64, offset: 15296)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !177, line: 56, flags: DIFlagFwdDecl)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !176, file: !177, line: 1110, baseType: !3373, size: 64, offset: 15360)
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3374, size: 64)
!3374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3375, line: 93, size: 8768, elements: !3376)
!3375 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3376 = !{!3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3424, !3433, !3434, !3436, !3437, !3438, !3441, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3479, !3480, !3487, !3497, !3500, !3501, !3504, !3505, !3506, !3507, !3508, !3509}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3374, file: !3375, line: 94, baseType: !192, size: 32)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3374, file: !3375, line: 95, baseType: !196, size: 32, offset: 32)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3374, file: !3375, line: 96, baseType: !201, size: 32, offset: 64)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3374, file: !3375, line: 97, baseType: !201, size: 32, offset: 96)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3374, file: !3375, line: 98, baseType: !251, size: 128, offset: 128)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3374, file: !3375, line: 100, baseType: !652, size: 192, offset: 256)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3374, file: !3375, line: 103, baseType: !175, size: 64, offset: 448)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3374, file: !3375, line: 106, baseType: !3385, size: 192, offset: 512)
!3385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !880, line: 32, size: 192, elements: !3386)
!3386 = !{!3387, !3388}
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3385, file: !880, line: 33, baseType: !251, size: 128)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3385, file: !880, line: 34, baseType: !3389, size: 64, offset: 128)
!3389 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3390, line: 25, baseType: !3391)
!3390 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3391 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3390, line: 23, size: 64, elements: !3392)
!3392 = !{!3393}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3391, file: !3390, line: 24, baseType: !476, size: 64)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3374, file: !3375, line: 109, baseType: !639, size: 64, offset: 704)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3374, file: !3375, line: 112, baseType: !201, size: 32, offset: 768)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3374, file: !3375, line: 114, baseType: !201, size: 32, offset: 800)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3374, file: !3375, line: 115, baseType: !175, size: 64, offset: 832)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3374, file: !3375, line: 118, baseType: !201, size: 32, offset: 896)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3374, file: !3375, line: 119, baseType: !18, size: 32, offset: 928)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3374, file: !3375, line: 121, baseType: !3401, size: 64, offset: 960)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3375, line: 80, size: 448, elements: !3403)
!3403 = !{!3404, !3405, !3411}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3402, file: !3375, line: 81, baseType: !196, size: 32)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3402, file: !3375, line: 82, baseType: !3406, size: 128, offset: 64)
!3406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3375, line: 75, size: 128, elements: !3407)
!3407 = !{!3408, !3409}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3406, file: !3375, line: 76, baseType: !175, size: 64)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3406, file: !3375, line: 77, baseType: !3410, size: 64, offset: 64)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3402, file: !3375, line: 83, baseType: !1416, size: 256, offset: 192)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3374, file: !3375, line: 132, baseType: !18, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3374, file: !3375, line: 133, baseType: !18, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3374, file: !3375, line: 138, baseType: !18, size: 32, offset: 1056)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3374, file: !3375, line: 139, baseType: !251, size: 128, offset: 1088)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3374, file: !3375, line: 142, baseType: !319, size: 512, offset: 1216)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3374, file: !3375, line: 143, baseType: !327, size: 64, offset: 1728)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3374, file: !3375, line: 150, baseType: !3419, size: 256, offset: 1792)
!3419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3420, size: 256, elements: !2120)
!3420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3375, line: 38, size: 128, elements: !3421)
!3421 = !{!3422, !3423}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3420, file: !3375, line: 39, baseType: !145, size: 64)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3420, file: !3375, line: 40, baseType: !145, size: 64, offset: 64)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3374, file: !3375, line: 156, baseType: !3425, size: 192, offset: 2048)
!3425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3375, line: 66, size: 192, elements: !3426)
!3426 = !{!3427}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3425, file: !3375, line: 67, baseType: !3428, size: 192)
!3428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3375, line: 47, size: 192, elements: !3429)
!3429 = !{!3430, !3431, !3432}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3428, file: !3375, line: 48, baseType: !584, size: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3428, file: !3375, line: 49, baseType: !584, size: 64, offset: 64)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3428, file: !3375, line: 50, baseType: !584, size: 64, offset: 128)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3374, file: !3375, line: 160, baseType: !3322, size: 640, offset: 2240)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3374, file: !3375, line: 163, baseType: !3435, size: 256, offset: 2880)
!3435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !631, size: 256, elements: !648)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3374, file: !3375, line: 169, baseType: !631, size: 64, offset: 3136)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3374, file: !3375, line: 172, baseType: !201, size: 32, offset: 3200)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3374, file: !3375, line: 174, baseType: !3439, size: 64, offset: 3264)
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3375, line: 174, flags: DIFlagFwdDecl)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3374, file: !3375, line: 185, baseType: !3442, size: 64, offset: 3328)
!3442 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !395, line: 860, baseType: !3443)
!3443 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !395, line: 853, size: 64, elements: !3444)
!3444 = !{!3445, !3446}
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3443, file: !395, line: 858, baseType: !919, size: 32)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3443, file: !395, line: 859, baseType: !543, size: 32, offset: 32)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3374, file: !3375, line: 186, baseType: !145, size: 64, offset: 3392)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3374, file: !3375, line: 186, baseType: !145, size: 64, offset: 3456)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3374, file: !3375, line: 186, baseType: !145, size: 64, offset: 3520)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3374, file: !3375, line: 186, baseType: !145, size: 64, offset: 3584)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3374, file: !3375, line: 187, baseType: !145, size: 64, offset: 3648)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3374, file: !3375, line: 188, baseType: !145, size: 64, offset: 3712)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3374, file: !3375, line: 189, baseType: !3310, size: 192, offset: 3776)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3374, file: !3375, line: 190, baseType: !113, size: 64, offset: 3968)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3374, file: !3375, line: 190, baseType: !113, size: 64, offset: 4032)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3374, file: !3375, line: 190, baseType: !113, size: 64, offset: 4096)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3374, file: !3375, line: 190, baseType: !113, size: 64, offset: 4160)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3374, file: !3375, line: 191, baseType: !113, size: 64, offset: 4224)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3374, file: !3375, line: 191, baseType: !113, size: 64, offset: 4288)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3374, file: !3375, line: 191, baseType: !113, size: 64, offset: 4352)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3374, file: !3375, line: 191, baseType: !113, size: 64, offset: 4416)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3374, file: !3375, line: 192, baseType: !113, size: 64, offset: 4480)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3374, file: !3375, line: 192, baseType: !113, size: 64, offset: 4544)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3374, file: !3375, line: 192, baseType: !113, size: 64, offset: 4608)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3374, file: !3375, line: 192, baseType: !113, size: 64, offset: 4672)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3374, file: !3375, line: 193, baseType: !113, size: 64, offset: 4736)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3374, file: !3375, line: 193, baseType: !113, size: 64, offset: 4800)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3374, file: !3375, line: 194, baseType: !3469, size: 448, offset: 4864)
!3469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3470, line: 12, size: 448, elements: !3471)
!3470 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3471 = !{!3472, !3473, !3474, !3475, !3476, !3477, !3478}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3469, file: !3470, line: 15, baseType: !145, size: 64)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3469, file: !3470, line: 17, baseType: !145, size: 64, offset: 64)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3469, file: !3470, line: 19, baseType: !145, size: 64, offset: 128)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3469, file: !3470, line: 21, baseType: !145, size: 64, offset: 192)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3469, file: !3470, line: 29, baseType: !145, size: 64, offset: 256)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3469, file: !3470, line: 35, baseType: !145, size: 64, offset: 320)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3469, file: !3470, line: 44, baseType: !145, size: 64, offset: 384)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3374, file: !3375, line: 202, baseType: !147, size: 64, offset: 5312)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3374, file: !3375, line: 213, baseType: !3481, size: 2048, offset: 5376)
!3481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3482, size: 2048, elements: !2740)
!3482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3483, line: 43, size: 128, elements: !3484)
!3483 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3484 = !{!3485, !3486}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3482, file: !3483, line: 44, baseType: !1107, size: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3482, file: !3483, line: 45, baseType: !1107, size: 64, offset: 64)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3374, file: !3375, line: 216, baseType: !3488, size: 448, offset: 7424)
!3488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3375, line: 30, size: 448, elements: !3489)
!3489 = !{!3490, !3491, !3492, !3493, !3494, !3495, !3496}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3488, file: !3375, line: 31, baseType: !201, size: 32)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3488, file: !3375, line: 32, baseType: !1063, size: 64, offset: 64)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3488, file: !3375, line: 33, baseType: !113, size: 64, offset: 128)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3488, file: !3375, line: 34, baseType: !145, size: 64, offset: 192)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3488, file: !3375, line: 34, baseType: !145, size: 64, offset: 256)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3488, file: !3375, line: 35, baseType: !113, size: 64, offset: 320)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3488, file: !3375, line: 35, baseType: !113, size: 64, offset: 384)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3374, file: !3375, line: 219, baseType: !3498, size: 64, offset: 7872)
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3375, line: 219, flags: DIFlagFwdDecl)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3374, file: !3375, line: 222, baseType: !18, size: 32, offset: 7936)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3374, file: !3375, line: 223, baseType: !3502, size: 64, offset: 8000)
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3503 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3375, line: 223, flags: DIFlagFwdDecl)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3374, file: !3375, line: 230, baseType: !789, size: 8, offset: 8064)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3374, file: !3375, line: 231, baseType: !758, size: 16, offset: 8080)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3374, file: !3375, line: 232, baseType: !758, size: 16, offset: 8096)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3374, file: !3375, line: 234, baseType: !525, size: 64, offset: 8128)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3374, file: !3375, line: 237, baseType: !589, size: 256, offset: 8192)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3374, file: !3375, line: 243, baseType: !730, size: 320, offset: 8448)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !176, file: !177, line: 1111, baseType: !3511, size: 64, offset: 15424)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3375, line: 20, size: 16640, elements: !3513)
!3513 = !{!3514, !3515, !3516, !3517}
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3512, file: !3375, line: 21, baseType: !543, size: 32)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3512, file: !3375, line: 22, baseType: !192, size: 32, offset: 32)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3512, file: !3375, line: 23, baseType: !652, size: 192, offset: 64)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3512, file: !3375, line: 24, baseType: !3518, size: 16384, offset: 256)
!3518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3519, size: 16384, elements: !1250)
!3519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !880, line: 51, size: 256, elements: !3520)
!3520 = !{!3521}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3519, file: !880, line: 52, baseType: !3522, size: 256)
!3522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !880, line: 37, size: 256, elements: !3523)
!3523 = !{!3524, !3531, !3532, !3536}
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3522, file: !880, line: 39, baseType: !3525, size: 64)
!3525 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3526, line: 83, baseType: !3527)
!3526 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3528, size: 64)
!3528 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3526, line: 82, baseType: !3529)
!3529 = !DISubroutineType(types: !3530)
!3530 = !{null, !201}
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3522, file: !880, line: 40, baseType: !113, size: 64, offset: 64)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3522, file: !880, line: 46, baseType: !3533, size: 64, offset: 128)
!3533 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3526, line: 86, baseType: !3534)
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3535 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3526, line: 85, baseType: !2348)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3522, file: !880, line: 48, baseType: !3389, size: 64, offset: 192)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !176, file: !177, line: 1112, baseType: !3389, size: 64, offset: 15488)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !176, file: !177, line: 1113, baseType: !3389, size: 64, offset: 15552)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !176, file: !177, line: 1115, baseType: !3389, size: 64, offset: 15616)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !176, file: !177, line: 1116, baseType: !3385, size: 192, offset: 15680)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !176, file: !177, line: 1117, baseType: !113, size: 64, offset: 15872)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !176, file: !177, line: 1118, baseType: !1105, size: 64, offset: 15936)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !176, file: !177, line: 1119, baseType: !18, size: 32, offset: 16000)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !176, file: !177, line: 1121, baseType: !572, size: 64, offset: 16064)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !176, file: !177, line: 1125, baseType: !3546, size: 64, offset: 16128)
!3546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3547, size: 64)
!3547 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !177, line: 43, flags: DIFlagFwdDecl)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !176, file: !177, line: 1127, baseType: !671, size: 32, offset: 16192)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !176, file: !177, line: 1128, baseType: !18, size: 32, offset: 16224)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !176, file: !177, line: 1130, baseType: !3551, size: 128, offset: 16256)
!3551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3552, line: 37, size: 128, elements: !3553)
!3552 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3553 = !{!3554, !3555, !3556}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3551, file: !3552, line: 38, baseType: !201, size: 32)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3551, file: !3552, line: 39, baseType: !196, size: 32, offset: 32)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3551, file: !3552, line: 40, baseType: !3557, size: 64, offset: 64)
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3558 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3552, line: 24, flags: DIFlagFwdDecl)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !176, file: !177, line: 1131, baseType: !3560, size: 256, offset: 16384)
!3560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3561, line: 12, size: 256, elements: !3562)
!3561 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3562 = !{!3563, !3564, !3565, !3566}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3560, file: !3561, line: 13, baseType: !802, size: 64)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3560, file: !3561, line: 14, baseType: !113, size: 64, offset: 64)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3560, file: !3561, line: 15, baseType: !113, size: 64, offset: 128)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3560, file: !3561, line: 16, baseType: !789, size: 8, offset: 192)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !176, file: !177, line: 1134, baseType: !145, size: 64, offset: 16640)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !176, file: !177, line: 1135, baseType: !145, size: 64, offset: 16704)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !176, file: !177, line: 1138, baseType: !543, size: 32, offset: 16768)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !176, file: !177, line: 1141, baseType: !344, size: 32, offset: 16800)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !176, file: !177, line: 1143, baseType: !3572, size: 64, offset: 16832)
!3572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !177, line: 735, size: 64, elements: !3573)
!3573 = !{!3574}
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3572, file: !177, line: 736, baseType: !3575, size: 64)
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3572, size: 64)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !176, file: !177, line: 1147, baseType: !408, size: 128, offset: 16896)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !176, file: !177, line: 1149, baseType: !175, size: 64, offset: 17024)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !176, file: !177, line: 1151, baseType: !3579, size: 64, offset: 17088)
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3580, size: 64)
!3580 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !177, line: 1151, flags: DIFlagFwdDecl)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !176, file: !177, line: 1188, baseType: !112, size: 64, offset: 17152)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !176, file: !177, line: 1191, baseType: !3583, size: 64, offset: 17216)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !177, line: 44, flags: DIFlagFwdDecl)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !176, file: !177, line: 1194, baseType: !3586, size: 64, offset: 17280)
!3586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3587, size: 64)
!3587 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !177, line: 45, flags: DIFlagFwdDecl)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !176, file: !177, line: 1197, baseType: !3589, size: 64, offset: 17344)
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3590 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !177, line: 61, flags: DIFlagFwdDecl)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !176, file: !177, line: 1199, baseType: !3592, size: 64, offset: 17408)
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3594, line: 99, size: 128, elements: !3595)
!3594 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3595 = !{!3596, !3597, !3598}
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3593, file: !3594, line: 100, baseType: !582, size: 64)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3593, file: !3594, line: 101, baseType: !196, size: 32, offset: 64)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3593, file: !3594, line: 103, baseType: !143, size: 16, offset: 96)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !176, file: !177, line: 1202, baseType: !3600, size: 64, offset: 17472)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3601 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !177, line: 48, flags: DIFlagFwdDecl)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !176, file: !177, line: 1205, baseType: !113, size: 64, offset: 17536)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !176, file: !177, line: 1206, baseType: !3604, size: 64, offset: 17600)
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3605 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !880, line: 14, baseType: !3606)
!3606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !880, line: 12, size: 384, elements: !3607)
!3607 = !{!3608}
!3608 = !DIDerivedType(tag: DW_TAG_member, scope: !3606, file: !880, line: 13, baseType: !3609, size: 384)
!3609 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3606, file: !880, line: 13, size: 384, elements: !3610)
!3610 = !{!3611, !3612, !3613, !3614}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3609, file: !880, line: 13, baseType: !201, size: 32)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3609, file: !880, line: 13, baseType: !201, size: 32, offset: 32)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3609, file: !880, line: 13, baseType: !201, size: 32, offset: 64)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3609, file: !880, line: 13, baseType: !3615, size: 256, offset: 128)
!3615 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3616, line: 37, size: 256, elements: !3617)
!3616 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3617 = !{!3618, !3623, !3636, !3642, !3651, !3677, !3682}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3615, file: !3616, line: 42, baseType: !3619, size: 64)
!3619 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3615, file: !3616, line: 39, size: 64, elements: !3620)
!3620 = !{!3621, !3622}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3619, file: !3616, line: 40, baseType: !3287, size: 32)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3619, file: !3616, line: 41, baseType: !677, size: 32, offset: 32)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3615, file: !3616, line: 50, baseType: !3624, size: 192)
!3624 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3615, file: !3616, line: 45, size: 192, elements: !3625)
!3625 = !{!3626, !3628, !3629, !3635}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3624, file: !3616, line: 46, baseType: !3627, size: 32)
!3627 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !392, line: 95, baseType: !201)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3624, file: !3616, line: 47, baseType: !201, size: 32, offset: 32)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3624, file: !3616, line: 48, baseType: !3630, size: 64, offset: 64)
!3630 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3616, line: 11, baseType: !3631)
!3631 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3616, line: 8, size: 64, elements: !3632)
!3632 = !{!3633, !3634}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3631, file: !3616, line: 9, baseType: !201, size: 32)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3631, file: !3616, line: 10, baseType: !112, size: 64)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3624, file: !3616, line: 49, baseType: !201, size: 32, offset: 128)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3615, file: !3616, line: 57, baseType: !3637, size: 128)
!3637 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3615, file: !3616, line: 53, size: 128, elements: !3638)
!3638 = !{!3639, !3640, !3641}
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3637, file: !3616, line: 54, baseType: !3287, size: 32)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3637, file: !3616, line: 55, baseType: !677, size: 32, offset: 32)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3637, file: !3616, line: 56, baseType: !3630, size: 64, offset: 64)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3615, file: !3616, line: 66, baseType: !3643, size: 256)
!3643 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3615, file: !3616, line: 60, size: 256, elements: !3644)
!3644 = !{!3645, !3646, !3647, !3648, !3650}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3643, file: !3616, line: 61, baseType: !3287, size: 32)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3643, file: !3616, line: 62, baseType: !677, size: 32, offset: 32)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3643, file: !3616, line: 63, baseType: !201, size: 32, offset: 64)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3643, file: !3616, line: 64, baseType: !3649, size: 64, offset: 128)
!3649 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !392, line: 94, baseType: !1104)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3643, file: !3616, line: 65, baseType: !3649, size: 64, offset: 192)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3615, file: !3616, line: 105, baseType: !3652, size: 256)
!3652 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3615, file: !3616, line: 69, size: 256, elements: !3653)
!3653 = !{!3654, !3655}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3652, file: !3616, line: 70, baseType: !112, size: 64)
!3655 = !DIDerivedType(tag: DW_TAG_member, scope: !3652, file: !3616, line: 79, baseType: !3656, size: 192, offset: 64)
!3656 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3652, file: !3616, line: 79, size: 192, elements: !3657)
!3657 = !{!3658, !3659, !3660, !3666, !3671}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3656, file: !3616, line: 81, baseType: !201, size: 32)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3656, file: !3616, line: 86, baseType: !758, size: 16)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3656, file: !3616, line: 92, baseType: !3661, size: 192)
!3661 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3656, file: !3616, line: 88, size: 192, elements: !3662)
!3662 = !{!3663, !3664, !3665}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3661, file: !3616, line: 89, baseType: !9, size: 64)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3661, file: !3616, line: 90, baseType: !112, size: 64, offset: 64)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3661, file: !3616, line: 91, baseType: !112, size: 64, offset: 128)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3656, file: !3616, line: 97, baseType: !3667, size: 96)
!3667 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3656, file: !3616, line: 94, size: 96, elements: !3668)
!3668 = !{!3669, !3670}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3667, file: !3616, line: 95, baseType: !9, size: 64)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3667, file: !3616, line: 96, baseType: !187, size: 32, offset: 64)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3656, file: !3616, line: 103, baseType: !3672, size: 128)
!3672 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3656, file: !3616, line: 99, size: 128, elements: !3673)
!3673 = !{!3674, !3675, !3676}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3672, file: !3616, line: 100, baseType: !113, size: 64)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3672, file: !3616, line: 101, baseType: !187, size: 32, offset: 64)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3672, file: !3616, line: 102, baseType: !187, size: 32, offset: 96)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3615, file: !3616, line: 111, baseType: !3678, size: 128)
!3678 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3615, file: !3616, line: 108, size: 128, elements: !3679)
!3679 = !{!3680, !3681}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3678, file: !3616, line: 109, baseType: !1063, size: 64)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3678, file: !3616, line: 110, baseType: !201, size: 32, offset: 64)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3615, file: !3616, line: 118, baseType: !3683, size: 128)
!3683 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3615, file: !3616, line: 114, size: 128, elements: !3684)
!3684 = !{!3685, !3686, !3687}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3683, file: !3616, line: 115, baseType: !112, size: 64)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3683, file: !3616, line: 116, baseType: !201, size: 32, offset: 64)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3683, file: !3616, line: 117, baseType: !18, size: 32, offset: 96)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !176, file: !177, line: 1208, baseType: !3469, size: 448, offset: 17664)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !176, file: !177, line: 1215, baseType: !145, size: 64, offset: 18112)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !176, file: !177, line: 1217, baseType: !145, size: 64, offset: 18176)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !176, file: !177, line: 1219, baseType: !145, size: 64, offset: 18240)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !176, file: !177, line: 1223, baseType: !3693, size: 64, offset: 18304)
!3693 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3694, line: 99, baseType: !3695)
!3694 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3695 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3694, line: 99, size: 64, elements: !3696)
!3696 = !{!3697}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3695, file: !3694, line: 99, baseType: !476, size: 64)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !176, file: !177, line: 1225, baseType: !919, size: 32, offset: 18368)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !176, file: !177, line: 1226, baseType: !201, size: 32, offset: 18400)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !176, file: !177, line: 1227, baseType: !201, size: 32, offset: 18432)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !176, file: !177, line: 1231, baseType: !3702, size: 64, offset: 18496)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !177, line: 1231, flags: DIFlagFwdDecl)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !176, file: !177, line: 1233, baseType: !251, size: 128, offset: 18560)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !176, file: !177, line: 1240, baseType: !3706, size: 64, offset: 18688)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !177, line: 62, flags: DIFlagFwdDecl)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !176, file: !177, line: 1242, baseType: !3709, size: 64, offset: 18752)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !177, line: 1242, flags: DIFlagFwdDecl)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !176, file: !177, line: 1244, baseType: !251, size: 128, offset: 18816)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !176, file: !177, line: 1245, baseType: !3713, size: 64, offset: 18944)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !177, line: 51, flags: DIFlagFwdDecl)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !176, file: !177, line: 1246, baseType: !589, size: 256, offset: 19008)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !176, file: !177, line: 1247, baseType: !18, size: 32, offset: 19264)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !176, file: !177, line: 1250, baseType: !3718, size: 64, offset: 19328)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !177, line: 57, flags: DIFlagFwdDecl)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !176, file: !177, line: 1251, baseType: !589, size: 256, offset: 19392)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !176, file: !177, line: 1252, baseType: !251, size: 128, offset: 19648)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !176, file: !177, line: 1259, baseType: !1544, size: 64, offset: 19776)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !176, file: !177, line: 1260, baseType: !758, size: 16, offset: 19840)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !176, file: !177, line: 1261, baseType: !758, size: 16, offset: 19856)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !176, file: !177, line: 1314, baseType: !3726, size: 64, offset: 19904)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3728, line: 62, size: 256, align: 256, elements: !3729)
!3728 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3729 = !{!3730, !3731, !3732, !3733, !3734, !3735, !3736}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3727, file: !3728, line: 75, baseType: !187, size: 32)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3727, file: !3728, line: 90, baseType: !187, size: 32, offset: 32)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3727, file: !3728, line: 112, baseType: !146, size: 64, offset: 64)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3727, file: !3728, line: 132, baseType: !187, size: 32, offset: 128)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3727, file: !3728, line: 140, baseType: !187, size: 32, offset: 160)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3727, file: !3728, line: 149, baseType: !187, size: 32, offset: 192)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3727, file: !3728, line: 154, baseType: !3737, offset: 224)
!3737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !667)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !176, file: !177, line: 1315, baseType: !186, size: 32, offset: 19968)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !176, file: !177, line: 1316, baseType: !186, size: 32, offset: 20000)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !176, file: !177, line: 1321, baseType: !113, size: 64, offset: 20032)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !176, file: !177, line: 1325, baseType: !201, size: 32, offset: 20096)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !176, file: !177, line: 1326, baseType: !201, size: 32, offset: 20128)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !176, file: !177, line: 1327, baseType: !201, size: 32, offset: 20160)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !176, file: !177, line: 1328, baseType: !201, size: 32, offset: 20192)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !176, file: !177, line: 1329, baseType: !569, size: 128, align: 64, offset: 20224)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !176, file: !177, line: 1332, baseType: !3747, size: 128, offset: 20352)
!3747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3748, line: 51, size: 128, elements: !3749)
!3748 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3749 = !{!3750, !3755, !3756}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3747, file: !3748, line: 60, baseType: !3751, size: 64)
!3751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3752, line: 7, size: 64, elements: !3753)
!3752 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3753 = !{!3754}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3751, file: !3752, line: 12, baseType: !473, size: 64)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3747, file: !3748, line: 63, baseType: !789, size: 8, offset: 64)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3747, file: !3748, line: 70, baseType: !789, size: 8, offset: 72)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !176, file: !177, line: 1335, baseType: !2978, size: 64, offset: 20480)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !176, file: !177, line: 1337, baseType: !3759, size: 128, offset: 20544)
!3759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3748, line: 39, size: 128, elements: !3760)
!3760 = !{!3761, !3762, !3763}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3759, file: !3748, line: 40, baseType: !1331, size: 64)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3759, file: !3748, line: 42, baseType: !187, size: 32, offset: 64)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3759, file: !3748, line: 43, baseType: !187, size: 32, offset: 96)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !176, file: !177, line: 1340, baseType: !3765, size: 64, offset: 20672)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !177, line: 69, flags: DIFlagFwdDecl)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !176, file: !177, line: 1351, baseType: !201, size: 32, offset: 20736)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !176, file: !177, line: 1352, baseType: !201, size: 32, offset: 20768)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !176, file: !177, line: 1354, baseType: !113, size: 64, offset: 20800)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !176, file: !177, line: 1364, baseType: !145, size: 64, offset: 20864)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !176, file: !177, line: 1365, baseType: !145, size: 64, offset: 20928)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !176, file: !177, line: 1412, baseType: !113, size: 64, offset: 20992)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !176, file: !177, line: 1453, baseType: !3774, size: 64, offset: 21056)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !177, line: 1453, flags: DIFlagFwdDecl)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !176, file: !177, line: 1457, baseType: !3777, size: 64, offset: 21120)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !92, line: 61, size: 576, elements: !3779)
!3779 = !{!3780, !3781, !3800, !3803, !3804, !3837, !3847}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3778, file: !92, line: 62, baseType: !91, size: 32)
!3781 = !DIDerivedType(tag: DW_TAG_member, scope: !3778, file: !92, line: 64, baseType: !3782, size: 192, offset: 64)
!3782 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3778, file: !92, line: 64, size: 192, elements: !3783)
!3783 = !{!3784, !3795}
!3784 = !DIDerivedType(tag: DW_TAG_member, scope: !3782, file: !92, line: 65, baseType: !3785, size: 192)
!3785 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3782, file: !92, line: 65, size: 192, elements: !3786)
!3786 = !{!3787, !3794}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3785, file: !92, line: 66, baseType: !3788, size: 128)
!3788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3789, line: 50, size: 128, elements: !3790)
!3789 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3790 = !{!3791, !3792, !3793}
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3788, file: !3789, line: 52, baseType: !113, size: 64)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3788, file: !3789, line: 54, baseType: !18, size: 32, offset: 64)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3788, file: !3789, line: 55, baseType: !18, size: 32, offset: 96)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3785, file: !92, line: 67, baseType: !113, size: 64, offset: 128)
!3795 = !DIDerivedType(tag: DW_TAG_member, scope: !3782, file: !92, line: 70, baseType: !3796, size: 192)
!3796 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3782, file: !92, line: 70, size: 192, elements: !3797)
!3797 = !{!3798, !3799}
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3796, file: !92, line: 71, baseType: !569, size: 128, align: 64)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3796, file: !92, line: 72, baseType: !113, size: 64, offset: 128)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3778, file: !92, line: 76, baseType: !3801, size: 64, offset: 256)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !92, line: 76, flags: DIFlagFwdDecl)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3778, file: !92, line: 77, baseType: !113, size: 64, offset: 320)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3778, file: !92, line: 79, baseType: !3805, size: 64, offset: 384)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3789, line: 25, size: 256, elements: !3807)
!3807 = !{!3808, !3814, !3818}
!3808 = !DIDerivedType(tag: DW_TAG_member, scope: !3806, file: !3789, line: 26, baseType: !3809, size: 128)
!3809 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3806, file: !3789, line: 26, size: 128, elements: !3810)
!3810 = !{!3811, !3813}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3809, file: !3789, line: 27, baseType: !3812, size: 128)
!3812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 128, elements: !2740)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3809, file: !3789, line: 28, baseType: !3812, size: 128)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3806, file: !3789, line: 31, baseType: !3815, size: 64, offset: 128)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3817)
!3817 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3789, line: 23, flags: DIFlagFwdDecl)
!3818 = !DIDerivedType(tag: DW_TAG_member, scope: !3806, file: !3789, line: 33, baseType: !3819, size: 64, offset: 192)
!3819 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3806, file: !3789, line: 33, size: 64, elements: !3820)
!3820 = !{!3821, !3827, !3832}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3819, file: !3789, line: 38, baseType: !3822, size: 64)
!3822 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3819, file: !3789, line: 34, size: 64, elements: !3823)
!3823 = !{!3824, !3825, !3826}
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3822, file: !3789, line: 35, baseType: !722, size: 32)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3822, file: !3789, line: 36, baseType: !361, size: 8, offset: 32)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3822, file: !3789, line: 37, baseType: !361, size: 8, offset: 40)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3819, file: !3789, line: 42, baseType: !3828, size: 16)
!3828 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3819, file: !3789, line: 39, size: 16, elements: !3829)
!3829 = !{!3830, !3831}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3828, file: !3789, line: 40, baseType: !361, size: 8)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3828, file: !3789, line: 41, baseType: !361, size: 8, offset: 8)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3819, file: !3789, line: 46, baseType: !3833, size: 16)
!3833 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3819, file: !3789, line: 43, size: 16, elements: !3834)
!3834 = !{!3835, !3836}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3833, file: !3789, line: 44, baseType: !361, size: 8)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3833, file: !3789, line: 45, baseType: !361, size: 8, offset: 8)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3778, file: !92, line: 81, baseType: !3838, size: 64, offset: 448)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !92, line: 85, size: 384, elements: !3840)
!3840 = !{!3841, !3842, !3843, !3844, !3845, !3846}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3839, file: !92, line: 86, baseType: !3801, size: 64)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3839, file: !92, line: 87, baseType: !113, size: 64, offset: 64)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3839, file: !92, line: 88, baseType: !113, size: 64, offset: 128)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3839, file: !92, line: 89, baseType: !113, size: 64, offset: 192)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3839, file: !92, line: 90, baseType: !789, size: 8, offset: 256)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3839, file: !92, line: 92, baseType: !3838, size: 64, offset: 320)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3778, file: !92, line: 82, baseType: !18, size: 32, offset: 512)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !176, file: !177, line: 1463, baseType: !3849, offset: 21184)
!3849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !177, line: 739, elements: !554)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !176, file: !177, line: 1470, baseType: !569, size: 128, align: 64, offset: 21184)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !176, file: !177, line: 1471, baseType: !192, size: 32, offset: 21312)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !176, file: !177, line: 1472, baseType: !201, size: 32, offset: 21344)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !176, file: !177, line: 1474, baseType: !175, size: 64, offset: 21376)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !176, file: !177, line: 1475, baseType: !2232, size: 320, offset: 21440)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !176, file: !177, line: 1478, baseType: !3856, size: 64, offset: 21760)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !177, line: 1478, flags: DIFlagFwdDecl)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !176, file: !177, line: 1482, baseType: !192, size: 32, offset: 21824)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !176, file: !177, line: 1489, baseType: !112, size: 64, offset: 21888)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !176, file: !177, line: 1504, baseType: !112, size: 64, offset: 21952)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !176, file: !177, line: 1505, baseType: !146, size: 64, offset: 22016)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !176, file: !177, line: 1506, baseType: !145, size: 64, offset: 22080)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !176, file: !177, line: 1507, baseType: !146, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !176, file: !177, line: 1508, baseType: !146, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !176, file: !177, line: 1509, baseType: !146, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !176, file: !177, line: 1510, baseType: !569, size: 128, align: 64, offset: 22208)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !176, file: !177, line: 1511, baseType: !201, size: 32, offset: 22336)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !176, file: !177, line: 1515, baseType: !3869, size: 64, offset: 22400)
!3869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !211, line: 56, size: 64, elements: !3870)
!3870 = !{!3871}
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3869, file: !211, line: 57, baseType: !214, size: 64)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !176, file: !177, line: 1518, baseType: !3869, size: 64, offset: 22464)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !176, file: !177, line: 1528, baseType: !569, size: 128, align: 64, offset: 22528)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !176, file: !177, line: 1552, baseType: !3875, size: 35328, offset: 23040)
!3875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3876, line: 430, size: 35328, elements: !3877)
!3876 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3877 = !{!3878, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3907, !3908, !3909, !3910, !3911, !3912, !3915, !3916, !3917, !3918}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3875, file: !3876, line: 432, baseType: !3879, size: 192)
!3879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3880, size: 192, elements: !627)
!3880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3881, line: 16, size: 64, elements: !3882)
!3881 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3882 = !{!3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3880, file: !3881, line: 17, baseType: !139, size: 16)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3880, file: !3881, line: 18, baseType: !139, size: 16, offset: 16)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3880, file: !3881, line: 19, baseType: !139, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3880, file: !3881, line: 19, baseType: !139, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3880, file: !3881, line: 19, baseType: !139, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3880, file: !3881, line: 19, baseType: !139, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3880, file: !3881, line: 19, baseType: !139, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3880, file: !3881, line: 20, baseType: !139, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3880, file: !3881, line: 20, baseType: !139, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3880, file: !3881, line: 20, baseType: !139, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3880, file: !3881, line: 20, baseType: !139, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3880, file: !3881, line: 20, baseType: !139, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3880, file: !3881, line: 20, baseType: !139, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3875, file: !3876, line: 436, baseType: !113, size: 64, offset: 192)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3875, file: !3876, line: 440, baseType: !143, size: 16, offset: 256)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3875, file: !3876, line: 441, baseType: !143, size: 16, offset: 272)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3875, file: !3876, line: 442, baseType: !143, size: 16, offset: 288)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3875, file: !3876, line: 443, baseType: !143, size: 16, offset: 304)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3875, file: !3876, line: 447, baseType: !113, size: 64, offset: 320)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3875, file: !3876, line: 448, baseType: !113, size: 64, offset: 384)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3875, file: !3876, line: 459, baseType: !3904, size: 256, offset: 448)
!3904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3905, size: 256, elements: !648)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3906 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3876, line: 428, flags: DIFlagFwdDecl)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3875, file: !3876, line: 461, baseType: !113, size: 64, offset: 704)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3875, file: !3876, line: 463, baseType: !113, size: 64, offset: 768)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3875, file: !3876, line: 465, baseType: !113, size: 64, offset: 832)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3875, file: !3876, line: 466, baseType: !113, size: 64, offset: 896)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3875, file: !3876, line: 467, baseType: !113, size: 64, offset: 960)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3875, file: !3876, line: 473, baseType: !3913, size: 64, offset: 1024)
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 64)
!3914 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3876, line: 10, flags: DIFlagFwdDecl)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3875, file: !3876, line: 480, baseType: !113, size: 64, offset: 1088)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3875, file: !3876, line: 482, baseType: !18, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3875, file: !3876, line: 491, baseType: !186, size: 32, offset: 1184)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3875, file: !3876, line: 501, baseType: !3919, size: 33792, offset: 1536)
!3919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3920, line: 448, size: 33792, elements: !3921)
!3920 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3921 = !{!3922, !3923, !3924, !4032, !4033, !4039, !4040}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3919, file: !3920, line: 461, baseType: !18, size: 32)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3919, file: !3920, line: 468, baseType: !113, size: 64, offset: 64)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3919, file: !3920, line: 476, baseType: !3925, size: 64, offset: 128)
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3920, line: 356, size: 33280, align: 512, elements: !3927)
!3927 = !{!3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937}
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3926, file: !3920, line: 358, baseType: !18, size: 32)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3926, file: !3920, line: 361, baseType: !18, size: 32, offset: 32)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3926, file: !3920, line: 364, baseType: !145, size: 64, offset: 64)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3926, file: !3920, line: 367, baseType: !145, size: 64, offset: 128)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3926, file: !3920, line: 370, baseType: !145, size: 64, offset: 192)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3926, file: !3920, line: 373, baseType: !18, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3926, file: !3920, line: 376, baseType: !18, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3926, file: !3920, line: 391, baseType: !18, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3926, file: !3920, line: 394, baseType: !18, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3926, file: !3920, line: 397, baseType: !3938, size: 32768, offset: 512)
!3938 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3920, line: 348, size: 32768, elements: !3939)
!3939 = !{!3940, !3953, !3990, !4015, !4028}
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3938, file: !3920, line: 349, baseType: !3941, size: 896)
!3941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3920, line: 12, size: 896, elements: !3942)
!3942 = !{!3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3952}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3941, file: !3920, line: 13, baseType: !186, size: 32)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3941, file: !3920, line: 14, baseType: !186, size: 32, offset: 32)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3941, file: !3920, line: 15, baseType: !186, size: 32, offset: 64)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3941, file: !3920, line: 16, baseType: !186, size: 32, offset: 96)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3941, file: !3920, line: 17, baseType: !186, size: 32, offset: 128)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3941, file: !3920, line: 18, baseType: !186, size: 32, offset: 160)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3941, file: !3920, line: 19, baseType: !186, size: 32, offset: 192)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3941, file: !3920, line: 22, baseType: !3951, size: 640, offset: 224)
!3951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 640, elements: !5)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3941, file: !3920, line: 25, baseType: !186, size: 32, offset: 864)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3938, file: !3920, line: 350, baseType: !3954, size: 4096, align: 128)
!3954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3920, line: 34, size: 4096, align: 128, elements: !3955)
!3955 = !{!3956, !3957, !3958, !3959, !3960, !3975, !3976, !3977, !3979, !3981, !3985}
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3954, file: !3920, line: 35, baseType: !139, size: 16)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3954, file: !3920, line: 36, baseType: !139, size: 16, offset: 16)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3954, file: !3920, line: 37, baseType: !139, size: 16, offset: 32)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3954, file: !3920, line: 38, baseType: !139, size: 16, offset: 48)
!3960 = !DIDerivedType(tag: DW_TAG_member, scope: !3954, file: !3920, line: 39, baseType: !3961, size: 128, offset: 64)
!3961 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3954, file: !3920, line: 39, size: 128, elements: !3962)
!3962 = !{!3963, !3968}
!3963 = !DIDerivedType(tag: DW_TAG_member, scope: !3961, file: !3920, line: 40, baseType: !3964, size: 128)
!3964 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3961, file: !3920, line: 40, size: 128, elements: !3965)
!3965 = !{!3966, !3967}
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3964, file: !3920, line: 41, baseType: !145, size: 64)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3964, file: !3920, line: 42, baseType: !145, size: 64, offset: 64)
!3968 = !DIDerivedType(tag: DW_TAG_member, scope: !3961, file: !3920, line: 44, baseType: !3969, size: 128)
!3969 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3961, file: !3920, line: 44, size: 128, elements: !3970)
!3970 = !{!3971, !3972, !3973, !3974}
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3969, file: !3920, line: 45, baseType: !186, size: 32)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3969, file: !3920, line: 46, baseType: !186, size: 32, offset: 32)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3969, file: !3920, line: 47, baseType: !186, size: 32, offset: 64)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3969, file: !3920, line: 48, baseType: !186, size: 32, offset: 96)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3954, file: !3920, line: 51, baseType: !186, size: 32, offset: 192)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3954, file: !3920, line: 52, baseType: !186, size: 32, offset: 224)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3954, file: !3920, line: 55, baseType: !3978, size: 1024, offset: 256)
!3978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 1024, elements: !2731)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3954, file: !3920, line: 58, baseType: !3980, size: 2048, offset: 1280)
!3980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 2048, elements: !1250)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3954, file: !3920, line: 60, baseType: !3982, size: 384, offset: 3328)
!3982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 384, elements: !3983)
!3983 = !{!3984}
!3984 = !DISubrange(count: 12)
!3985 = !DIDerivedType(tag: DW_TAG_member, scope: !3954, file: !3920, line: 62, baseType: !3986, size: 384, offset: 3712)
!3986 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3954, file: !3920, line: 62, size: 384, elements: !3987)
!3987 = !{!3988, !3989}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3986, file: !3920, line: 63, baseType: !3982, size: 384)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3986, file: !3920, line: 64, baseType: !3982, size: 384)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3938, file: !3920, line: 351, baseType: !3991, size: 1088)
!3991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3920, line: 79, size: 1088, elements: !3992)
!3992 = !{!3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4014}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3991, file: !3920, line: 80, baseType: !186, size: 32)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3991, file: !3920, line: 81, baseType: !186, size: 32, offset: 32)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3991, file: !3920, line: 82, baseType: !186, size: 32, offset: 64)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3991, file: !3920, line: 83, baseType: !186, size: 32, offset: 96)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3991, file: !3920, line: 84, baseType: !186, size: 32, offset: 128)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3991, file: !3920, line: 85, baseType: !186, size: 32, offset: 160)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3991, file: !3920, line: 86, baseType: !186, size: 32, offset: 192)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3991, file: !3920, line: 88, baseType: !3951, size: 640, offset: 224)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3991, file: !3920, line: 89, baseType: !361, size: 8, offset: 864)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3991, file: !3920, line: 90, baseType: !361, size: 8, offset: 872)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3991, file: !3920, line: 91, baseType: !361, size: 8, offset: 880)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3991, file: !3920, line: 92, baseType: !361, size: 8, offset: 888)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3991, file: !3920, line: 93, baseType: !361, size: 8, offset: 896)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3991, file: !3920, line: 94, baseType: !361, size: 8, offset: 904)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3991, file: !3920, line: 95, baseType: !4008, size: 64, offset: 960)
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4010, line: 11, size: 128, elements: !4011)
!4010 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4011 = !{!4012, !4013}
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4009, file: !4010, line: 12, baseType: !1063, size: 64)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4009, file: !4010, line: 13, baseType: !114, size: 64, offset: 64)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3991, file: !3920, line: 96, baseType: !186, size: 32, offset: 1024)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3938, file: !3920, line: 352, baseType: !4016, size: 4608, align: 512)
!4016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3920, line: 333, size: 4608, align: 512, elements: !4017)
!4017 = !{!4018, !4019, !4026}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4016, file: !3920, line: 334, baseType: !3954, size: 4096, align: 128)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4016, file: !3920, line: 335, baseType: !4020, size: 512, offset: 4096)
!4020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3920, line: 312, size: 512, elements: !4021)
!4021 = !{!4022, !4023, !4024}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4020, file: !3920, line: 313, baseType: !145, size: 64)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4020, file: !3920, line: 314, baseType: !145, size: 64, offset: 64)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4020, file: !3920, line: 315, baseType: !4025, size: 384, offset: 128)
!4025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 384, elements: !776)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4016, file: !3920, line: 336, baseType: !4027, offset: 4608)
!4027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, elements: !667)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3938, file: !3920, line: 353, baseType: !4029, size: 32768)
!4029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 32768, elements: !4030)
!4030 = !{!4031}
!4031 = !DISubrange(count: 4096)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3919, file: !3920, line: 484, baseType: !3925, size: 64, offset: 192)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3919, file: !3920, line: 491, baseType: !4034, size: 128, offset: 256)
!4034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3920, line: 404, size: 128, elements: !4035)
!4035 = !{!4036, !4037, !4038}
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4034, file: !3920, line: 424, baseType: !145, size: 64)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4034, file: !3920, line: 432, baseType: !18, size: 32, offset: 64)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4034, file: !3920, line: 440, baseType: !18, size: 32, offset: 96)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3919, file: !3920, line: 498, baseType: !4034, size: 128, offset: 384)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3919, file: !3920, line: 508, baseType: !3926, size: 33280, align: 512, offset: 512)
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4043)
!4043 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !201)
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4045, size: 64)
!4045 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !186)
!4046 = !{!0, !7, !12, !4047, !4049, !4051}
!4047 = !DIGlobalVariableExpression(var: !4048, expr: !DIExpression())
!4048 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_stack_trace_snprint288", scope: !14, file: !2, line: 71, type: !112, isLocal: true, isDefinition: true)
!4049 = !DIGlobalVariableExpression(var: !4050, expr: !DIExpression())
!4050 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_stack_trace_save289", scope: !14, file: !2, line: 125, type: !112, isLocal: true, isDefinition: true)
!4051 = !DIGlobalVariableExpression(var: !4052, expr: !DIExpression())
!4052 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_filter_irq_stacks290", scope: !14, file: !2, line: 402, type: !112, isLocal: true, isDefinition: true)
!4053 = !{i32 7, !"Dwarf Version", i32 5}
!4054 = !{i32 2, !"Debug Info Version", i32 3}
!4055 = !{i32 1, !"wchar_size", i32 2}
!4056 = !{i32 8, !"cf-protection-branch", i32 1}
!4057 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4058 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4059 = !{i32 1, !"Code Model", i32 2}
!4060 = !{i32 1, !"override-stack-alignment", i32 8}
!4061 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4062 = distinct !DISubprogram(name: "stack_trace_print", scope: !2, file: !2, line: 24, type: !4063, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4066)
!4063 = !DISubroutineType(types: !4064)
!4064 = !{null, !4065, !18, !201}
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!4066 = !{!4067, !4068, !4069, !4070, !4071, !4074}
!4067 = !DILocalVariable(name: "entries", arg: 1, scope: !4062, file: !2, line: 24, type: !4065)
!4068 = !DILocalVariable(name: "nr_entries", arg: 2, scope: !4062, file: !2, line: 24, type: !18)
!4069 = !DILocalVariable(name: "spaces", arg: 3, scope: !4062, file: !2, line: 25, type: !201)
!4070 = !DILocalVariable(name: "i", scope: !4062, file: !2, line: 27, type: !18)
!4071 = !DILocalVariable(name: "__ret_warn_on", scope: !4072, file: !2, line: 29, type: !201)
!4072 = distinct !DILexicalBlock(scope: !4073, file: !2, line: 29, column: 6)
!4073 = distinct !DILexicalBlock(scope: !4062, file: !2, line: 29, column: 6)
!4074 = !DILocalVariable(name: "__flags", scope: !4075, file: !2, line: 29, type: !201)
!4075 = distinct !DILexicalBlock(scope: !4076, file: !2, line: 29, column: 6)
!4076 = distinct !DILexicalBlock(scope: !4072, file: !2, line: 29, column: 6)
!4077 = !DILocation(line: 24, column: 45, scope: !4062)
!4078 = !DILocation(line: 24, column: 67, scope: !4062)
!4079 = !DILocation(line: 25, column: 14, scope: !4062)
!4080 = !DILocation(line: 27, column: 2, scope: !4062)
!4081 = !DILocation(line: 27, column: 15, scope: !4062)
!4082 = !DILocation(line: 29, column: 6, scope: !4072)
!4083 = !DILocation(line: 29, column: 6, scope: !4076)
!4084 = !DILocation(line: 29, column: 6, scope: !4075)
!4085 = !DILocation(line: 29, column: 6, scope: !4086)
!4086 = distinct !DILexicalBlock(scope: !4075, file: !2, line: 29, column: 6)
!4087 = !DILocation(line: 29, column: 6, scope: !4088)
!4088 = distinct !DILexicalBlock(scope: !4075, file: !2, line: 29, column: 6)
!4089 = !{i64 2154234061, i64 2154234090, i64 2154234136, i64 2154234194, i64 2154234248, i64 2154234302, i64 2154234357, i64 2154234388, i64 2154234696, i64 2154234702, i64 2154234749, i64 2154234772, i64 2154234798}
!4090 = !DILocation(line: 29, column: 6, scope: !4091)
!4091 = distinct !DILexicalBlock(scope: !4075, file: !2, line: 29, column: 6)
!4092 = !DILocation(line: 29, column: 6, scope: !4073)
!4093 = !DILocation(line: 29, column: 6, scope: !4062)
!4094 = !DILocation(line: 30, column: 3, scope: !4073)
!4095 = !DILocation(line: 32, column: 9, scope: !4096)
!4096 = distinct !DILexicalBlock(scope: !4062, file: !2, line: 32, column: 2)
!4097 = !DILocation(line: 32, column: 7, scope: !4096)
!4098 = !DILocation(line: 32, column: 14, scope: !4099)
!4099 = distinct !DILexicalBlock(scope: !4096, file: !2, line: 32, column: 2)
!4100 = !DILocation(line: 32, column: 18, scope: !4099)
!4101 = !DILocation(line: 32, column: 16, scope: !4099)
!4102 = !DILocation(line: 32, column: 2, scope: !4096)
!4103 = !DILocation(line: 33, column: 3, scope: !4104)
!4104 = distinct !DILexicalBlock(scope: !4099, file: !2, line: 33, column: 3)
!4105 = !DILocation(line: 33, column: 3, scope: !4106)
!4106 = distinct !DILexicalBlock(scope: !4104, file: !2, line: 33, column: 3)
!4107 = !DILocation(line: 33, column: 3, scope: !4099)
!4108 = !DILocation(line: 32, column: 31, scope: !4099)
!4109 = !DILocation(line: 32, column: 2, scope: !4099)
!4110 = distinct !{!4110, !4102, !4111, !4112, !4113}
!4111 = !DILocation(line: 33, column: 3, scope: !4096)
!4112 = !{!"llvm.loop.mustprogress"}
!4113 = !{!"llvm.loop.unroll.disable"}
!4114 = !DILocation(line: 34, column: 1, scope: !4062)
!4115 = !DISubprogram(name: "_printk", scope: !4116, file: !4116, line: 153, type: !4117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4116 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!4117 = !DISubroutineType(types: !4118)
!4118 = !{!201, !792, null}
!4119 = distinct !DISubprogram(name: "stack_trace_snprint", scope: !2, file: !2, line: 47, type: !4120, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4122)
!4120 = !DISubroutineType(types: !4121)
!4121 = !{!201, !802, !1105, !4065, !18, !201}
!4122 = !{!4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4134}
!4123 = !DILocalVariable(name: "buf", arg: 1, scope: !4119, file: !2, line: 47, type: !802)
!4124 = !DILocalVariable(name: "size", arg: 2, scope: !4119, file: !2, line: 47, type: !1105)
!4125 = !DILocalVariable(name: "entries", arg: 3, scope: !4119, file: !2, line: 47, type: !4065)
!4126 = !DILocalVariable(name: "nr_entries", arg: 4, scope: !4119, file: !2, line: 48, type: !18)
!4127 = !DILocalVariable(name: "spaces", arg: 5, scope: !4119, file: !2, line: 48, type: !201)
!4128 = !DILocalVariable(name: "generated", scope: !4119, file: !2, line: 50, type: !18)
!4129 = !DILocalVariable(name: "i", scope: !4119, file: !2, line: 50, type: !18)
!4130 = !DILocalVariable(name: "total", scope: !4119, file: !2, line: 50, type: !18)
!4131 = !DILocalVariable(name: "__ret_warn_on", scope: !4132, file: !2, line: 52, type: !201)
!4132 = distinct !DILexicalBlock(scope: !4133, file: !2, line: 52, column: 6)
!4133 = distinct !DILexicalBlock(scope: !4119, file: !2, line: 52, column: 6)
!4134 = !DILocalVariable(name: "__flags", scope: !4135, file: !2, line: 52, type: !201)
!4135 = distinct !DILexicalBlock(scope: !4136, file: !2, line: 52, column: 6)
!4136 = distinct !DILexicalBlock(scope: !4132, file: !2, line: 52, column: 6)
!4137 = !DILocation(line: 47, column: 31, scope: !4119)
!4138 = !DILocation(line: 47, column: 43, scope: !4119)
!4139 = !DILocation(line: 47, column: 70, scope: !4119)
!4140 = !DILocation(line: 48, column: 17, scope: !4119)
!4141 = !DILocation(line: 48, column: 33, scope: !4119)
!4142 = !DILocation(line: 50, column: 2, scope: !4119)
!4143 = !DILocation(line: 50, column: 15, scope: !4119)
!4144 = !DILocation(line: 50, column: 26, scope: !4119)
!4145 = !DILocation(line: 50, column: 29, scope: !4119)
!4146 = !DILocation(line: 52, column: 6, scope: !4132)
!4147 = !DILocation(line: 52, column: 6, scope: !4136)
!4148 = !DILocation(line: 52, column: 6, scope: !4135)
!4149 = !DILocation(line: 52, column: 6, scope: !4150)
!4150 = distinct !DILexicalBlock(scope: !4135, file: !2, line: 52, column: 6)
!4151 = !DILocation(line: 52, column: 6, scope: !4152)
!4152 = distinct !DILexicalBlock(scope: !4135, file: !2, line: 52, column: 6)
!4153 = !{i64 2154237619, i64 2154237648, i64 2154237694, i64 2154237752, i64 2154237806, i64 2154237860, i64 2154237915, i64 2154237946, i64 2154238254, i64 2154238260, i64 2154238307, i64 2154238330, i64 2154238356}
!4154 = !DILocation(line: 52, column: 6, scope: !4155)
!4155 = distinct !DILexicalBlock(scope: !4135, file: !2, line: 52, column: 6)
!4156 = !DILocation(line: 52, column: 6, scope: !4133)
!4157 = !DILocation(line: 52, column: 6, scope: !4119)
!4158 = !DILocation(line: 53, column: 3, scope: !4133)
!4159 = !DILocation(line: 55, column: 9, scope: !4160)
!4160 = distinct !DILexicalBlock(scope: !4119, file: !2, line: 55, column: 2)
!4161 = !DILocation(line: 55, column: 7, scope: !4160)
!4162 = !DILocation(line: 55, column: 14, scope: !4163)
!4163 = distinct !DILexicalBlock(scope: !4160, file: !2, line: 55, column: 2)
!4164 = !DILocation(line: 55, column: 18, scope: !4163)
!4165 = !DILocation(line: 55, column: 16, scope: !4163)
!4166 = !DILocation(line: 55, column: 29, scope: !4163)
!4167 = !DILocation(line: 55, column: 32, scope: !4163)
!4168 = !DILocation(line: 0, scope: !4163)
!4169 = !DILocation(line: 55, column: 2, scope: !4160)
!4170 = !DILocation(line: 56, column: 24, scope: !4171)
!4171 = distinct !DILexicalBlock(scope: !4163, file: !2, line: 55, column: 43)
!4172 = !DILocation(line: 56, column: 29, scope: !4171)
!4173 = !DILocation(line: 56, column: 51, scope: !4171)
!4174 = !DILocation(line: 56, column: 49, scope: !4171)
!4175 = !DILocation(line: 57, column: 18, scope: !4171)
!4176 = !DILocation(line: 57, column: 26, scope: !4171)
!4177 = !DILocation(line: 57, column: 10, scope: !4171)
!4178 = !DILocation(line: 56, column: 15, scope: !4171)
!4179 = !DILocation(line: 56, column: 13, scope: !4171)
!4180 = !DILocation(line: 59, column: 12, scope: !4171)
!4181 = !DILocation(line: 59, column: 9, scope: !4171)
!4182 = !DILocation(line: 60, column: 7, scope: !4183)
!4183 = distinct !DILexicalBlock(scope: !4171, file: !2, line: 60, column: 7)
!4184 = !DILocation(line: 60, column: 20, scope: !4183)
!4185 = !DILocation(line: 60, column: 17, scope: !4183)
!4186 = !DILocation(line: 60, column: 7, scope: !4171)
!4187 = !DILocation(line: 61, column: 11, scope: !4188)
!4188 = distinct !DILexicalBlock(scope: !4183, file: !2, line: 60, column: 26)
!4189 = !DILocation(line: 61, column: 8, scope: !4188)
!4190 = !DILocation(line: 62, column: 9, scope: !4188)
!4191 = !DILocation(line: 63, column: 3, scope: !4188)
!4192 = !DILocation(line: 64, column: 11, scope: !4193)
!4193 = distinct !DILexicalBlock(scope: !4183, file: !2, line: 63, column: 10)
!4194 = !DILocation(line: 64, column: 8, scope: !4193)
!4195 = !DILocation(line: 65, column: 12, scope: !4193)
!4196 = !DILocation(line: 65, column: 9, scope: !4193)
!4197 = !DILocation(line: 67, column: 2, scope: !4171)
!4198 = !DILocation(line: 55, column: 39, scope: !4163)
!4199 = !DILocation(line: 55, column: 2, scope: !4163)
!4200 = distinct !{!4200, !4169, !4201, !4112, !4113}
!4201 = !DILocation(line: 67, column: 2, scope: !4160)
!4202 = !DILocation(line: 69, column: 9, scope: !4119)
!4203 = !DILocation(line: 69, column: 2, scope: !4119)
!4204 = !DILocation(line: 70, column: 1, scope: !4119)
!4205 = !DISubprogram(name: "snprintf", scope: !4206, file: !4206, line: 12, type: !4207, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4206 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!4207 = !DISubroutineType(types: !4208)
!4208 = !{!201, !802, !1105, !792, null}
!4209 = distinct !DISubprogram(name: "stack_trace_save", scope: !2, file: !2, line: 112, type: !4210, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4212)
!4210 = !DISubroutineType(types: !4211)
!4211 = !{!18, !2334, !18, !18}
!4212 = !{!4213, !4214, !4215, !4216, !4222}
!4213 = !DILocalVariable(name: "store", arg: 1, scope: !4209, file: !2, line: 112, type: !2334)
!4214 = !DILocalVariable(name: "size", arg: 2, scope: !4209, file: !2, line: 112, type: !18)
!4215 = !DILocalVariable(name: "skipnr", arg: 3, scope: !4209, file: !2, line: 113, type: !18)
!4216 = !DILocalVariable(name: "consume_entry", scope: !4209, file: !2, line: 115, type: !4217)
!4217 = !DIDerivedType(tag: DW_TAG_typedef, name: "stack_trace_consume_fn", file: !4218, line: 21, baseType: !4219)
!4218 = !DIFile(filename: "./include/linux/stacktrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11b0c72fc4687ccc5ce3affce25c4431")
!4219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4220, size: 64)
!4220 = !DISubroutineType(types: !4221)
!4221 = !{!789, !112, !113}
!4222 = !DILocalVariable(name: "c", scope: !4209, file: !2, line: 116, type: !4223)
!4223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stacktrace_cookie", file: !2, line: 75, size: 192, elements: !4224)
!4224 = !{!4225, !4226, !4227, !4228}
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4223, file: !2, line: 76, baseType: !2334, size: 64)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4223, file: !2, line: 77, baseType: !18, size: 32, offset: 64)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !4223, file: !2, line: 78, baseType: !18, size: 32, offset: 96)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4223, file: !2, line: 79, baseType: !18, size: 32, offset: 128)
!4229 = !DILocation(line: 112, column: 46, scope: !4209)
!4230 = !DILocation(line: 112, column: 66, scope: !4209)
!4231 = !DILocation(line: 113, column: 23, scope: !4209)
!4232 = !DILocation(line: 115, column: 2, scope: !4209)
!4233 = !DILocation(line: 115, column: 25, scope: !4209)
!4234 = !DILocation(line: 116, column: 2, scope: !4209)
!4235 = !DILocation(line: 116, column: 27, scope: !4209)
!4236 = !DILocation(line: 116, column: 31, scope: !4209)
!4237 = !DILocation(line: 117, column: 12, scope: !4209)
!4238 = !DILocation(line: 118, column: 11, scope: !4209)
!4239 = !DILocation(line: 119, column: 11, scope: !4209)
!4240 = !DILocation(line: 119, column: 18, scope: !4209)
!4241 = !DILocation(line: 122, column: 18, scope: !4209)
!4242 = !DILocation(line: 122, column: 37, scope: !4209)
!4243 = !DILocation(line: 122, column: 2, scope: !4209)
!4244 = !DILocation(line: 123, column: 11, scope: !4209)
!4245 = !DILocation(line: 124, column: 1, scope: !4209)
!4246 = !DILocation(line: 123, column: 2, scope: !4209)
!4247 = distinct !DISubprogram(name: "stack_trace_consume_entry", scope: !2, file: !2, line: 82, type: !4220, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4248)
!4248 = !{!4249, !4250, !4251}
!4249 = !DILocalVariable(name: "cookie", arg: 1, scope: !4247, file: !2, line: 82, type: !112)
!4250 = !DILocalVariable(name: "addr", arg: 2, scope: !4247, file: !2, line: 82, type: !113)
!4251 = !DILocalVariable(name: "c", scope: !4247, file: !2, line: 84, type: !4252)
!4252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4223, size: 64)
!4253 = !DILocation(line: 82, column: 45, scope: !4247)
!4254 = !DILocation(line: 82, column: 67, scope: !4247)
!4255 = !DILocation(line: 84, column: 2, scope: !4247)
!4256 = !DILocation(line: 84, column: 28, scope: !4247)
!4257 = !DILocation(line: 84, column: 32, scope: !4247)
!4258 = !DILocation(line: 86, column: 6, scope: !4259)
!4259 = distinct !DILexicalBlock(scope: !4247, file: !2, line: 86, column: 6)
!4260 = !DILocation(line: 86, column: 9, scope: !4259)
!4261 = !DILocation(line: 86, column: 16, scope: !4259)
!4262 = !DILocation(line: 86, column: 19, scope: !4259)
!4263 = !DILocation(line: 86, column: 13, scope: !4259)
!4264 = !DILocation(line: 86, column: 6, scope: !4247)
!4265 = !DILocation(line: 87, column: 3, scope: !4259)
!4266 = !DILocation(line: 89, column: 6, scope: !4267)
!4267 = distinct !DILexicalBlock(scope: !4247, file: !2, line: 89, column: 6)
!4268 = !DILocation(line: 89, column: 9, scope: !4267)
!4269 = !DILocation(line: 89, column: 14, scope: !4267)
!4270 = !DILocation(line: 89, column: 6, scope: !4247)
!4271 = !DILocation(line: 90, column: 3, scope: !4272)
!4272 = distinct !DILexicalBlock(scope: !4267, file: !2, line: 89, column: 19)
!4273 = !DILocation(line: 90, column: 6, scope: !4272)
!4274 = !DILocation(line: 90, column: 10, scope: !4272)
!4275 = !DILocation(line: 91, column: 3, scope: !4272)
!4276 = !DILocation(line: 93, column: 23, scope: !4247)
!4277 = !DILocation(line: 93, column: 2, scope: !4247)
!4278 = !DILocation(line: 93, column: 5, scope: !4247)
!4279 = !DILocation(line: 93, column: 11, scope: !4247)
!4280 = !DILocation(line: 93, column: 14, scope: !4247)
!4281 = !DILocation(line: 93, column: 17, scope: !4247)
!4282 = !DILocation(line: 93, column: 21, scope: !4247)
!4283 = !DILocation(line: 94, column: 9, scope: !4247)
!4284 = !DILocation(line: 94, column: 12, scope: !4247)
!4285 = !DILocation(line: 94, column: 18, scope: !4247)
!4286 = !DILocation(line: 94, column: 21, scope: !4247)
!4287 = !DILocation(line: 94, column: 16, scope: !4247)
!4288 = !DILocation(line: 94, column: 2, scope: !4247)
!4289 = !DILocation(line: 95, column: 1, scope: !4247)
!4290 = !DISubprogram(name: "arch_stack_walk", scope: !4218, file: !4218, line: 38, type: !4291, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4291 = !DISubroutineType(types: !4292)
!4292 = !{null, !4217, !112, !175, !114}
!4293 = distinct !DISubprogram(name: "get_current", scope: !4294, file: !4294, line: 39, type: !4295, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4297)
!4294 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!4295 = !DISubroutineType(types: !4296)
!4296 = !{!175}
!4297 = !{!4298, !4300, !4302}
!4298 = !DILocalVariable(name: "pscr_ret__", scope: !4299, file: !4294, line: 41, type: !175)
!4299 = distinct !DILexicalBlock(scope: !4293, file: !4294, line: 41, column: 9)
!4300 = !DILocalVariable(name: "__vpp_verify", scope: !4301, file: !4294, line: 41, type: !1847)
!4301 = distinct !DILexicalBlock(scope: !4299, file: !4294, line: 41, column: 9)
!4302 = !DILocalVariable(name: "pfo_val__", scope: !4303, file: !4294, line: 41, type: !145)
!4303 = distinct !DILexicalBlock(scope: !4299, file: !4294, line: 41, column: 9)
!4304 = !DILocation(line: 41, column: 9, scope: !4299)
!4305 = !DILocation(line: 41, column: 9, scope: !4301)
!4306 = !DILocation(line: 41, column: 9, scope: !4303)
!4307 = !{i64 2148203024}
!4308 = !DILocation(line: 41, column: 9, scope: !4293)
!4309 = !DILocation(line: 41, column: 2, scope: !4293)
!4310 = distinct !DISubprogram(name: "stack_trace_save_tsk", scope: !2, file: !2, line: 136, type: !4311, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4313)
!4311 = !DISubroutineType(types: !4312)
!4312 = !{!18, !175, !2334, !18, !18}
!4313 = !{!4314, !4315, !4316, !4317, !4318, !4319}
!4314 = !DILocalVariable(name: "tsk", arg: 1, scope: !4310, file: !2, line: 136, type: !175)
!4315 = !DILocalVariable(name: "store", arg: 2, scope: !4310, file: !2, line: 136, type: !2334)
!4316 = !DILocalVariable(name: "size", arg: 3, scope: !4310, file: !2, line: 137, type: !18)
!4317 = !DILocalVariable(name: "skipnr", arg: 4, scope: !4310, file: !2, line: 137, type: !18)
!4318 = !DILocalVariable(name: "consume_entry", scope: !4310, file: !2, line: 139, type: !4217)
!4319 = !DILocalVariable(name: "c", scope: !4310, file: !2, line: 140, type: !4223)
!4320 = !DILocation(line: 136, column: 55, scope: !4310)
!4321 = !DILocation(line: 136, column: 75, scope: !4310)
!4322 = !DILocation(line: 137, column: 20, scope: !4310)
!4323 = !DILocation(line: 137, column: 39, scope: !4310)
!4324 = !DILocation(line: 139, column: 2, scope: !4310)
!4325 = !DILocation(line: 139, column: 25, scope: !4310)
!4326 = !DILocation(line: 140, column: 2, scope: !4310)
!4327 = !DILocation(line: 140, column: 27, scope: !4310)
!4328 = !DILocation(line: 140, column: 31, scope: !4310)
!4329 = !DILocation(line: 141, column: 12, scope: !4310)
!4330 = !DILocation(line: 142, column: 11, scope: !4310)
!4331 = !DILocation(line: 144, column: 11, scope: !4310)
!4332 = !DILocation(line: 144, column: 21, scope: !4310)
!4333 = !DILocation(line: 144, column: 32, scope: !4310)
!4334 = !DILocation(line: 144, column: 29, scope: !4310)
!4335 = !DILocation(line: 144, column: 18, scope: !4310)
!4336 = !DILocation(line: 147, column: 26, scope: !4337)
!4337 = distinct !DILexicalBlock(scope: !4310, file: !2, line: 147, column: 6)
!4338 = !DILocation(line: 147, column: 7, scope: !4337)
!4339 = !DILocation(line: 147, column: 6, scope: !4310)
!4340 = !DILocation(line: 148, column: 3, scope: !4337)
!4341 = !DILocation(line: 150, column: 18, scope: !4310)
!4342 = !DILocation(line: 150, column: 37, scope: !4310)
!4343 = !DILocation(line: 150, column: 2, scope: !4310)
!4344 = !DILocation(line: 151, column: 17, scope: !4310)
!4345 = !DILocation(line: 151, column: 2, scope: !4310)
!4346 = !DILocation(line: 152, column: 11, scope: !4310)
!4347 = !DILocation(line: 152, column: 2, scope: !4310)
!4348 = !DILocation(line: 153, column: 1, scope: !4310)
!4349 = distinct !DISubprogram(name: "stack_trace_consume_entry_nosched", scope: !2, file: !2, line: 97, type: !4220, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4350)
!4350 = !{!4351, !4352}
!4351 = !DILocalVariable(name: "cookie", arg: 1, scope: !4349, file: !2, line: 97, type: !112)
!4352 = !DILocalVariable(name: "addr", arg: 2, scope: !4349, file: !2, line: 97, type: !113)
!4353 = !DILocation(line: 97, column: 53, scope: !4349)
!4354 = !DILocation(line: 97, column: 75, scope: !4349)
!4355 = !DILocation(line: 99, column: 25, scope: !4356)
!4356 = distinct !DILexicalBlock(scope: !4349, file: !2, line: 99, column: 6)
!4357 = !DILocation(line: 99, column: 6, scope: !4356)
!4358 = !DILocation(line: 99, column: 6, scope: !4349)
!4359 = !DILocation(line: 100, column: 3, scope: !4356)
!4360 = !DILocation(line: 101, column: 35, scope: !4349)
!4361 = !DILocation(line: 101, column: 43, scope: !4349)
!4362 = !DILocation(line: 101, column: 9, scope: !4349)
!4363 = !DILocation(line: 101, column: 2, scope: !4349)
!4364 = !DILocation(line: 102, column: 1, scope: !4349)
!4365 = distinct !DISubprogram(name: "try_get_task_stack", scope: !4366, file: !4366, line: 67, type: !4367, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4369)
!4366 = !DIFile(filename: "./include/linux/sched/task_stack.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b484ea324048fb6eae31602d0afab7d")
!4367 = !DISubroutineType(types: !4368)
!4368 = !{!112, !175}
!4369 = !{!4370}
!4370 = !DILocalVariable(name: "tsk", arg: 1, scope: !4365, file: !4366, line: 67, type: !175)
!4371 = !DILocation(line: 67, column: 60, scope: !4365)
!4372 = !DILocation(line: 69, column: 32, scope: !4365)
!4373 = !DILocation(line: 69, column: 37, scope: !4365)
!4374 = !DILocation(line: 69, column: 9, scope: !4365)
!4375 = !DILocation(line: 70, column: 19, scope: !4365)
!4376 = !DILocation(line: 70, column: 3, scope: !4365)
!4377 = !DILocation(line: 69, column: 2, scope: !4365)
!4378 = !DISubprogram(name: "put_task_stack", scope: !4366, file: !4366, line: 73, type: !4379, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4379 = !DISubroutineType(types: !4380)
!4380 = !{null, !175}
!4381 = distinct !DISubprogram(name: "stack_trace_save_regs", scope: !2, file: !2, line: 164, type: !4382, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4384)
!4382 = !DISubroutineType(types: !4383)
!4383 = !{!18, !114, !2334, !18, !18}
!4384 = !{!4385, !4386, !4387, !4388, !4389, !4390}
!4385 = !DILocalVariable(name: "regs", arg: 1, scope: !4381, file: !2, line: 164, type: !114)
!4386 = !DILocalVariable(name: "store", arg: 2, scope: !4381, file: !2, line: 164, type: !2334)
!4387 = !DILocalVariable(name: "size", arg: 3, scope: !4381, file: !2, line: 165, type: !18)
!4388 = !DILocalVariable(name: "skipnr", arg: 4, scope: !4381, file: !2, line: 165, type: !18)
!4389 = !DILocalVariable(name: "consume_entry", scope: !4381, file: !2, line: 167, type: !4217)
!4390 = !DILocalVariable(name: "c", scope: !4381, file: !2, line: 168, type: !4223)
!4391 = !DILocation(line: 164, column: 52, scope: !4381)
!4392 = !DILocation(line: 164, column: 73, scope: !4381)
!4393 = !DILocation(line: 165, column: 21, scope: !4381)
!4394 = !DILocation(line: 165, column: 40, scope: !4381)
!4395 = !DILocation(line: 167, column: 2, scope: !4381)
!4396 = !DILocation(line: 167, column: 25, scope: !4381)
!4397 = !DILocation(line: 168, column: 2, scope: !4381)
!4398 = !DILocation(line: 168, column: 27, scope: !4381)
!4399 = !DILocation(line: 168, column: 31, scope: !4381)
!4400 = !DILocation(line: 169, column: 12, scope: !4381)
!4401 = !DILocation(line: 170, column: 11, scope: !4381)
!4402 = !DILocation(line: 171, column: 11, scope: !4381)
!4403 = !DILocation(line: 174, column: 18, scope: !4381)
!4404 = !DILocation(line: 174, column: 37, scope: !4381)
!4405 = !DILocation(line: 174, column: 46, scope: !4381)
!4406 = !DILocation(line: 174, column: 2, scope: !4381)
!4407 = !DILocation(line: 175, column: 11, scope: !4381)
!4408 = !DILocation(line: 176, column: 1, scope: !4381)
!4409 = !DILocation(line: 175, column: 2, scope: !4381)
!4410 = distinct !DISubprogram(name: "stack_trace_save_tsk_reliable", scope: !2, file: !2, line: 191, type: !4411, scopeLine: 193, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4413)
!4411 = !DISubroutineType(types: !4412)
!4412 = !{!201, !175, !2334, !18}
!4413 = !{!4414, !4415, !4416, !4417, !4418, !4419}
!4414 = !DILocalVariable(name: "tsk", arg: 1, scope: !4410, file: !2, line: 191, type: !175)
!4415 = !DILocalVariable(name: "store", arg: 2, scope: !4410, file: !2, line: 191, type: !2334)
!4416 = !DILocalVariable(name: "size", arg: 3, scope: !4410, file: !2, line: 192, type: !18)
!4417 = !DILocalVariable(name: "consume_entry", scope: !4410, file: !2, line: 194, type: !4217)
!4418 = !DILocalVariable(name: "c", scope: !4410, file: !2, line: 195, type: !4223)
!4419 = !DILocalVariable(name: "ret", scope: !4410, file: !2, line: 199, type: !201)
!4420 = !DILocation(line: 191, column: 55, scope: !4410)
!4421 = !DILocation(line: 191, column: 75, scope: !4410)
!4422 = !DILocation(line: 192, column: 20, scope: !4410)
!4423 = !DILocation(line: 194, column: 2, scope: !4410)
!4424 = !DILocation(line: 194, column: 25, scope: !4410)
!4425 = !DILocation(line: 195, column: 2, scope: !4410)
!4426 = !DILocation(line: 195, column: 27, scope: !4410)
!4427 = !DILocation(line: 195, column: 31, scope: !4410)
!4428 = !DILocation(line: 196, column: 12, scope: !4410)
!4429 = !DILocation(line: 197, column: 11, scope: !4410)
!4430 = !DILocation(line: 199, column: 2, scope: !4410)
!4431 = !DILocation(line: 199, column: 6, scope: !4410)
!4432 = !DILocation(line: 205, column: 26, scope: !4433)
!4433 = distinct !DILexicalBlock(scope: !4410, file: !2, line: 205, column: 6)
!4434 = !DILocation(line: 205, column: 7, scope: !4433)
!4435 = !DILocation(line: 205, column: 6, scope: !4410)
!4436 = !DILocation(line: 206, column: 3, scope: !4433)
!4437 = !DILocation(line: 208, column: 33, scope: !4410)
!4438 = !DILocation(line: 208, column: 52, scope: !4410)
!4439 = !DILocation(line: 208, column: 8, scope: !4410)
!4440 = !DILocation(line: 208, column: 6, scope: !4410)
!4441 = !DILocation(line: 209, column: 17, scope: !4410)
!4442 = !DILocation(line: 209, column: 2, scope: !4410)
!4443 = !DILocation(line: 210, column: 9, scope: !4410)
!4444 = !DILocation(line: 210, column: 15, scope: !4410)
!4445 = !DILocation(line: 210, column: 23, scope: !4410)
!4446 = !DILocation(line: 210, column: 2, scope: !4410)
!4447 = !DILocation(line: 211, column: 1, scope: !4410)
!4448 = !DISubprogram(name: "arch_stack_walk_reliable", scope: !4218, file: !4218, line: 58, type: !4449, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4449 = !DISubroutineType(types: !4450)
!4450 = !{!201, !4217, !112, !175}
!4451 = distinct !DISubprogram(name: "stack_trace_save_user", scope: !2, file: !2, line: 222, type: !4452, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4454)
!4452 = !DISubroutineType(types: !4453)
!4453 = !{!18, !2334, !18}
!4454 = !{!4455, !4456, !4457, !4458, !4459}
!4455 = !DILocalVariable(name: "store", arg: 1, scope: !4451, file: !2, line: 222, type: !2334)
!4456 = !DILocalVariable(name: "size", arg: 2, scope: !4451, file: !2, line: 222, type: !18)
!4457 = !DILocalVariable(name: "consume_entry", scope: !4451, file: !2, line: 224, type: !4217)
!4458 = !DILocalVariable(name: "c", scope: !4451, file: !2, line: 225, type: !4223)
!4459 = !DILocalVariable(name: "__ptr", scope: !4460, file: !2, line: 234, type: !113)
!4460 = distinct !DILexicalBlock(scope: !4451, file: !2, line: 234, column: 42)
!4461 = !DILocation(line: 222, column: 51, scope: !4451)
!4462 = !DILocation(line: 222, column: 71, scope: !4451)
!4463 = !DILocation(line: 224, column: 2, scope: !4451)
!4464 = !DILocation(line: 224, column: 25, scope: !4451)
!4465 = !DILocation(line: 225, column: 2, scope: !4451)
!4466 = !DILocation(line: 225, column: 27, scope: !4451)
!4467 = !DILocation(line: 225, column: 31, scope: !4451)
!4468 = !DILocation(line: 226, column: 12, scope: !4451)
!4469 = !DILocation(line: 227, column: 11, scope: !4451)
!4470 = !DILocation(line: 231, column: 6, scope: !4471)
!4471 = distinct !DILexicalBlock(scope: !4451, file: !2, line: 231, column: 6)
!4472 = !DILocation(line: 231, column: 15, scope: !4471)
!4473 = !DILocation(line: 231, column: 21, scope: !4471)
!4474 = !DILocation(line: 231, column: 6, scope: !4451)
!4475 = !DILocation(line: 232, column: 3, scope: !4471)
!4476 = !DILocation(line: 234, column: 23, scope: !4451)
!4477 = !DILocation(line: 234, column: 42, scope: !4460)
!4478 = !DILocation(line: 234, column: 42, scope: !4451)
!4479 = !DILocation(line: 234, column: 2, scope: !4451)
!4480 = !DILocation(line: 236, column: 11, scope: !4451)
!4481 = !DILocation(line: 236, column: 2, scope: !4451)
!4482 = !DILocation(line: 237, column: 1, scope: !4451)
!4483 = !DISubprogram(name: "arch_stack_walk_user", scope: !4218, file: !4218, line: 61, type: !4484, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4484 = !DISubroutineType(types: !4485)
!4485 = !{null, !4217, !112, !4486}
!4486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4487, size: 64)
!4487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!4488 = distinct !DISubprogram(name: "task_stack_page", scope: !4366, file: !4366, line: 20, type: !4489, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4493)
!4489 = !DISubroutineType(types: !4490)
!4490 = !{!112, !4491}
!4491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4492, size: 64)
!4492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !176)
!4493 = !{!4494}
!4494 = !DILocalVariable(name: "task", arg: 1, scope: !4488, file: !4366, line: 20, type: !4491)
!4495 = !DILocation(line: 20, column: 72, scope: !4488)
!4496 = !DILocation(line: 22, column: 9, scope: !4488)
!4497 = !DILocation(line: 22, column: 15, scope: !4488)
!4498 = !DILocation(line: 22, column: 2, scope: !4488)
!4499 = distinct !DISubprogram(name: "filter_irq_stacks", scope: !2, file: !2, line: 390, type: !4452, scopeLine: 391, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4500)
!4500 = !{!4501, !4502, !4503}
!4501 = !DILocalVariable(name: "entries", arg: 1, scope: !4499, file: !2, line: 390, type: !2334)
!4502 = !DILocalVariable(name: "nr_entries", arg: 2, scope: !4499, file: !2, line: 390, type: !18)
!4503 = !DILocalVariable(name: "i", scope: !4499, file: !2, line: 392, type: !18)
!4504 = !DILocation(line: 390, column: 47, scope: !4499)
!4505 = !DILocation(line: 390, column: 69, scope: !4499)
!4506 = !DILocation(line: 392, column: 2, scope: !4499)
!4507 = !DILocation(line: 392, column: 15, scope: !4499)
!4508 = !DILocation(line: 394, column: 9, scope: !4509)
!4509 = distinct !DILexicalBlock(scope: !4499, file: !2, line: 394, column: 2)
!4510 = !DILocation(line: 394, column: 7, scope: !4509)
!4511 = !DILocation(line: 394, column: 14, scope: !4512)
!4512 = distinct !DILexicalBlock(scope: !4509, file: !2, line: 394, column: 2)
!4513 = !DILocation(line: 394, column: 18, scope: !4512)
!4514 = !DILocation(line: 394, column: 16, scope: !4512)
!4515 = !DILocation(line: 394, column: 2, scope: !4509)
!4516 = !DILocation(line: 395, column: 24, scope: !4517)
!4517 = distinct !DILexicalBlock(scope: !4518, file: !2, line: 395, column: 7)
!4518 = distinct !DILexicalBlock(scope: !4512, file: !2, line: 394, column: 35)
!4519 = !DILocation(line: 395, column: 32, scope: !4517)
!4520 = !DILocation(line: 395, column: 7, scope: !4517)
!4521 = !DILocation(line: 395, column: 7, scope: !4518)
!4522 = !DILocation(line: 397, column: 11, scope: !4523)
!4523 = distinct !DILexicalBlock(scope: !4517, file: !2, line: 395, column: 37)
!4524 = !DILocation(line: 397, column: 13, scope: !4523)
!4525 = !DILocation(line: 397, column: 4, scope: !4523)
!4526 = !DILocation(line: 399, column: 2, scope: !4518)
!4527 = !DILocation(line: 394, column: 31, scope: !4512)
!4528 = !DILocation(line: 394, column: 2, scope: !4512)
!4529 = distinct !{!4529, !4515, !4530, !4112, !4113}
!4530 = !DILocation(line: 399, column: 2, scope: !4509)
!4531 = !DILocation(line: 400, column: 9, scope: !4499)
!4532 = !DILocation(line: 400, column: 2, scope: !4499)
!4533 = !DILocation(line: 401, column: 1, scope: !4499)
!4534 = distinct !DISubprogram(name: "in_irqentry_text", scope: !2, file: !2, line: 375, type: !4535, scopeLine: 376, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4537)
!4535 = !DISubroutineType(types: !4536)
!4536 = !{!789, !113}
!4537 = !{!4538}
!4538 = !DILocalVariable(name: "ptr", arg: 1, scope: !4534, file: !2, line: 375, type: !113)
!4539 = !DILocation(line: 375, column: 51, scope: !4534)
!4540 = !DILocation(line: 377, column: 10, scope: !4534)
!4541 = !DILocation(line: 377, column: 14, scope: !4534)
!4542 = !DILocation(line: 377, column: 55, scope: !4534)
!4543 = !DILocation(line: 378, column: 3, scope: !4534)
!4544 = !DILocation(line: 378, column: 7, scope: !4534)
!4545 = !DILocation(line: 378, column: 46, scope: !4534)
!4546 = !DILocation(line: 379, column: 4, scope: !4534)
!4547 = !DILocation(line: 379, column: 8, scope: !4534)
!4548 = !DILocation(line: 379, column: 53, scope: !4534)
!4549 = !DILocation(line: 380, column: 4, scope: !4534)
!4550 = !DILocation(line: 380, column: 8, scope: !4534)
!4551 = !DILocation(line: 0, scope: !4534)
!4552 = !DILocation(line: 377, column: 2, scope: !4534)
!4553 = !DISubprogram(name: "in_sched_functions", scope: !4554, file: !4554, line: 52, type: !4555, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4554 = !DIFile(filename: "./include/linux/sched/debug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "162ea9be471e54e9534d809de8723629")
!4555 = !DISubroutineType(types: !4556)
!4556 = !{!201, !113}
!4557 = distinct !DISubprogram(name: "refcount_inc_not_zero", scope: !104, file: !104, line: 243, type: !4558, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4561)
!4558 = !DISubroutineType(types: !4559)
!4559 = !{!789, !4560}
!4560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!4561 = !{!4562}
!4562 = !DILocalVariable(name: "r", arg: 1, scope: !4557, file: !104, line: 243, type: !4560)
!4563 = !DILocation(line: 243, column: 67, scope: !4557)
!4564 = !DILocation(line: 245, column: 33, scope: !4557)
!4565 = !DILocation(line: 245, column: 9, scope: !4557)
!4566 = !DILocation(line: 245, column: 2, scope: !4557)
!4567 = distinct !DISubprogram(name: "__refcount_inc_not_zero", scope: !104, file: !104, line: 225, type: !4568, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4570)
!4568 = !DISubroutineType(types: !4569)
!4569 = !{!789, !4560, !2130}
!4570 = !{!4571, !4572}
!4571 = !DILocalVariable(name: "r", arg: 1, scope: !4567, file: !104, line: 225, type: !4560)
!4572 = !DILocalVariable(name: "oldp", arg: 2, scope: !4567, file: !104, line: 225, type: !2130)
!4573 = !DILocation(line: 225, column: 69, scope: !4567)
!4574 = !DILocation(line: 225, column: 77, scope: !4567)
!4575 = !DILocation(line: 227, column: 36, scope: !4567)
!4576 = !DILocation(line: 227, column: 39, scope: !4567)
!4577 = !DILocation(line: 227, column: 9, scope: !4567)
!4578 = !DILocation(line: 227, column: 2, scope: !4567)
!4579 = distinct !DISubprogram(name: "__refcount_add_not_zero", scope: !104, file: !104, line: 150, type: !4580, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4582)
!4580 = !DISubroutineType(types: !4581)
!4581 = !{!789, !201, !4560, !2130}
!4582 = !{!4583, !4584, !4585, !4586}
!4583 = !DILocalVariable(name: "i", arg: 1, scope: !4579, file: !104, line: 150, type: !201)
!4584 = !DILocalVariable(name: "r", arg: 2, scope: !4579, file: !104, line: 150, type: !4560)
!4585 = !DILocalVariable(name: "oldp", arg: 3, scope: !4579, file: !104, line: 150, type: !2130)
!4586 = !DILocalVariable(name: "old", scope: !4579, file: !104, line: 152, type: !201)
!4587 = !DILocation(line: 150, column: 61, scope: !4579)
!4588 = !DILocation(line: 150, column: 76, scope: !4579)
!4589 = !DILocation(line: 150, column: 84, scope: !4579)
!4590 = !DILocation(line: 152, column: 2, scope: !4579)
!4591 = !DILocation(line: 152, column: 6, scope: !4579)
!4592 = !DILocation(line: 152, column: 26, scope: !4579)
!4593 = !DILocation(line: 152, column: 12, scope: !4579)
!4594 = !DILocation(line: 154, column: 2, scope: !4579)
!4595 = !DILocation(line: 155, column: 8, scope: !4596)
!4596 = distinct !DILexicalBlock(scope: !4597, file: !104, line: 155, column: 7)
!4597 = distinct !DILexicalBlock(scope: !4579, file: !104, line: 154, column: 5)
!4598 = !DILocation(line: 155, column: 7, scope: !4597)
!4599 = !DILocation(line: 156, column: 4, scope: !4596)
!4600 = !DILocation(line: 157, column: 2, scope: !4597)
!4601 = !DILocation(line: 157, column: 40, scope: !4579)
!4602 = !DILocation(line: 157, column: 43, scope: !4579)
!4603 = !DILocation(line: 157, column: 55, scope: !4579)
!4604 = !DILocation(line: 157, column: 61, scope: !4579)
!4605 = !DILocation(line: 157, column: 59, scope: !4579)
!4606 = !DILocation(line: 157, column: 12, scope: !4579)
!4607 = !DILocation(line: 157, column: 11, scope: !4579)
!4608 = distinct !{!4608, !4594, !4609, !4112, !4113}
!4609 = !DILocation(line: 157, column: 63, scope: !4579)
!4610 = !DILocation(line: 159, column: 6, scope: !4611)
!4611 = distinct !DILexicalBlock(scope: !4579, file: !104, line: 159, column: 6)
!4612 = !DILocation(line: 159, column: 6, scope: !4579)
!4613 = !DILocation(line: 160, column: 11, scope: !4611)
!4614 = !DILocation(line: 160, column: 4, scope: !4611)
!4615 = !DILocation(line: 160, column: 9, scope: !4611)
!4616 = !DILocation(line: 160, column: 3, scope: !4611)
!4617 = !DILocation(line: 162, column: 6, scope: !4618)
!4618 = distinct !DILexicalBlock(scope: !4579, file: !104, line: 162, column: 6)
!4619 = !DILocation(line: 162, column: 6, scope: !4579)
!4620 = !DILocation(line: 163, column: 26, scope: !4618)
!4621 = !DILocation(line: 163, column: 3, scope: !4618)
!4622 = !DILocation(line: 165, column: 9, scope: !4579)
!4623 = !DILocation(line: 166, column: 1, scope: !4579)
!4624 = !DILocation(line: 165, column: 2, scope: !4579)
!4625 = distinct !DISubprogram(name: "refcount_read", scope: !104, file: !104, line: 145, type: !4626, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4630)
!4626 = !DISubroutineType(types: !4627)
!4627 = !{!18, !4628}
!4628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4629, size: 64)
!4629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!4630 = !{!4631}
!4631 = !DILocalVariable(name: "r", arg: 1, scope: !4625, file: !104, line: 145, type: !4628)
!4632 = !DILocation(line: 145, column: 60, scope: !4625)
!4633 = !DILocation(line: 147, column: 22, scope: !4625)
!4634 = !DILocation(line: 147, column: 25, scope: !4625)
!4635 = !DILocation(line: 147, column: 9, scope: !4625)
!4636 = !DILocation(line: 147, column: 2, scope: !4625)
!4637 = distinct !DISubprogram(name: "atomic_try_cmpxchg_relaxed", scope: !4638, file: !4638, line: 1335, type: !4639, scopeLine: 1336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4642)
!4638 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!4639 = !DISubroutineType(types: !4640)
!4640 = !{!789, !4641, !2130, !201}
!4641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!4642 = !{!4643, !4644, !4645}
!4643 = !DILocalVariable(name: "v", arg: 1, scope: !4637, file: !4638, line: 1335, type: !4641)
!4644 = !DILocalVariable(name: "old", arg: 2, scope: !4637, file: !4638, line: 1335, type: !2130)
!4645 = !DILocalVariable(name: "new", arg: 3, scope: !4637, file: !4638, line: 1335, type: !201)
!4646 = !DILocation(line: 1335, column: 38, scope: !4637)
!4647 = !DILocation(line: 1335, column: 46, scope: !4637)
!4648 = !DILocation(line: 1335, column: 55, scope: !4637)
!4649 = !DILocation(line: 1337, column: 31, scope: !4637)
!4650 = !DILocation(line: 1337, column: 2, scope: !4637)
!4651 = !DILocation(line: 1338, column: 31, scope: !4637)
!4652 = !DILocation(line: 1338, column: 2, scope: !4637)
!4653 = !DILocation(line: 1339, column: 40, scope: !4637)
!4654 = !DILocation(line: 1339, column: 43, scope: !4637)
!4655 = !DILocation(line: 1339, column: 48, scope: !4637)
!4656 = !DILocation(line: 1339, column: 9, scope: !4637)
!4657 = !DILocation(line: 1339, column: 2, scope: !4637)
!4658 = !DISubprogram(name: "refcount_warn_saturate", scope: !104, file: !104, line: 127, type: !4659, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4659 = !DISubroutineType(types: !4660)
!4660 = !{null, !4560, !103}
!4661 = distinct !DISubprogram(name: "atomic_read", scope: !4638, file: !4638, line: 30, type: !4662, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4666)
!4662 = !DISubroutineType(types: !4663)
!4663 = !{!201, !4664}
!4664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4665, size: 64)
!4665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !196)
!4666 = !{!4667}
!4667 = !DILocalVariable(name: "v", arg: 1, scope: !4661, file: !4638, line: 30, type: !4664)
!4668 = !DILocation(line: 30, column: 29, scope: !4661)
!4669 = !DILocation(line: 32, column: 25, scope: !4661)
!4670 = !DILocation(line: 32, column: 2, scope: !4661)
!4671 = !DILocation(line: 33, column: 25, scope: !4661)
!4672 = !DILocation(line: 33, column: 9, scope: !4661)
!4673 = !DILocation(line: 33, column: 2, scope: !4661)
!4674 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !4675, file: !4675, line: 66, type: !4676, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4681)
!4675 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!4676 = !DISubroutineType(types: !4677)
!4677 = !{null, !4678, !1105}
!4678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4679, size: 64)
!4679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4680)
!4680 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4681 = !{!4682, !4683}
!4682 = !DILocalVariable(name: "v", arg: 1, scope: !4674, file: !4675, line: 66, type: !4678)
!4683 = !DILocalVariable(name: "size", arg: 2, scope: !4674, file: !4675, line: 66, type: !1105)
!4684 = !DILocation(line: 66, column: 73, scope: !4674)
!4685 = !DILocation(line: 66, column: 83, scope: !4674)
!4686 = !DILocation(line: 68, column: 19, scope: !4674)
!4687 = !DILocation(line: 68, column: 22, scope: !4674)
!4688 = !DILocation(line: 68, column: 2, scope: !4674)
!4689 = !DILocation(line: 69, column: 2, scope: !4674)
!4690 = !DILocation(line: 70, column: 1, scope: !4674)
!4691 = distinct !DISubprogram(name: "raw_atomic_read", scope: !4692, file: !4692, line: 442, type: !4662, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4693)
!4692 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!4693 = !{!4694}
!4694 = !DILocalVariable(name: "v", arg: 1, scope: !4691, file: !4692, line: 442, type: !4664)
!4695 = !DILocation(line: 442, column: 33, scope: !4691)
!4696 = !DILocation(line: 444, column: 26, scope: !4691)
!4697 = !DILocation(line: 444, column: 9, scope: !4691)
!4698 = !DILocation(line: 444, column: 2, scope: !4691)
!4699 = distinct !DISubprogram(name: "kasan_check_read", scope: !4700, file: !4700, line: 40, type: !4701, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4703)
!4700 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!4701 = !DISubroutineType(types: !4702)
!4702 = !{!789, !4678, !18}
!4703 = !{!4704, !4705}
!4704 = !DILocalVariable(name: "p", arg: 1, scope: !4699, file: !4700, line: 40, type: !4678)
!4705 = !DILocalVariable(name: "size", arg: 2, scope: !4699, file: !4700, line: 40, type: !18)
!4706 = !DILocation(line: 40, column: 58, scope: !4699)
!4707 = !DILocation(line: 40, column: 74, scope: !4699)
!4708 = !DILocation(line: 42, column: 2, scope: !4699)
!4709 = distinct !DISubprogram(name: "kcsan_check_access", scope: !4710, file: !4710, line: 229, type: !4711, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4713)
!4710 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!4711 = !DISubroutineType(types: !4712)
!4712 = !{null, !4678, !1105, !201}
!4713 = !{!4714, !4715, !4716}
!4714 = !DILocalVariable(name: "ptr", arg: 1, scope: !4709, file: !4710, line: 229, type: !4678)
!4715 = !DILocalVariable(name: "size", arg: 2, scope: !4709, file: !4710, line: 229, type: !1105)
!4716 = !DILocalVariable(name: "type", arg: 3, scope: !4709, file: !4710, line: 230, type: !201)
!4717 = !DILocation(line: 229, column: 60, scope: !4709)
!4718 = !DILocation(line: 229, column: 72, scope: !4709)
!4719 = !DILocation(line: 230, column: 15, scope: !4709)
!4720 = !DILocation(line: 230, column: 23, scope: !4709)
!4721 = distinct !DISubprogram(name: "arch_atomic_read", scope: !4722, file: !4722, line: 17, type: !4662, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4723)
!4722 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!4723 = !{!4724}
!4724 = !DILocalVariable(name: "v", arg: 1, scope: !4721, file: !4722, line: 17, type: !4664)
!4725 = !DILocation(line: 17, column: 61, scope: !4721)
!4726 = !DILocation(line: 23, column: 9, scope: !4721)
!4727 = !DILocation(line: 23, column: 2, scope: !4721)
!4728 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !4675, file: !4675, line: 94, type: !4676, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4729)
!4729 = !{!4730, !4731}
!4730 = !DILocalVariable(name: "v", arg: 1, scope: !4728, file: !4675, line: 94, type: !4678)
!4731 = !DILocalVariable(name: "size", arg: 2, scope: !4728, file: !4675, line: 94, type: !1105)
!4732 = !DILocation(line: 94, column: 79, scope: !4728)
!4733 = !DILocation(line: 94, column: 89, scope: !4728)
!4734 = !DILocation(line: 96, column: 20, scope: !4728)
!4735 = !DILocation(line: 96, column: 23, scope: !4728)
!4736 = !DILocation(line: 96, column: 2, scope: !4728)
!4737 = !DILocation(line: 97, column: 2, scope: !4728)
!4738 = !DILocation(line: 98, column: 1, scope: !4728)
!4739 = distinct !DISubprogram(name: "raw_atomic_try_cmpxchg_relaxed", scope: !4692, file: !4692, line: 2207, type: !4639, scopeLine: 2208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4740)
!4740 = !{!4741, !4742, !4743}
!4741 = !DILocalVariable(name: "v", arg: 1, scope: !4739, file: !4692, line: 2207, type: !4641)
!4742 = !DILocalVariable(name: "old", arg: 2, scope: !4739, file: !4692, line: 2207, type: !2130)
!4743 = !DILocalVariable(name: "new", arg: 3, scope: !4739, file: !4692, line: 2207, type: !201)
!4744 = !DILocation(line: 2207, column: 42, scope: !4739)
!4745 = !DILocation(line: 2207, column: 50, scope: !4739)
!4746 = !DILocation(line: 2207, column: 59, scope: !4739)
!4747 = !DILocation(line: 2212, column: 33, scope: !4739)
!4748 = !DILocation(line: 2212, column: 36, scope: !4739)
!4749 = !DILocation(line: 2212, column: 41, scope: !4739)
!4750 = !DILocation(line: 2212, column: 9, scope: !4739)
!4751 = !DILocation(line: 2212, column: 2, scope: !4739)
!4752 = distinct !DISubprogram(name: "kasan_check_write", scope: !4700, file: !4700, line: 44, type: !4701, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4753)
!4753 = !{!4754, !4755}
!4754 = !DILocalVariable(name: "p", arg: 1, scope: !4752, file: !4700, line: 44, type: !4678)
!4755 = !DILocalVariable(name: "size", arg: 2, scope: !4752, file: !4700, line: 44, type: !18)
!4756 = !DILocation(line: 44, column: 59, scope: !4752)
!4757 = !DILocation(line: 44, column: 75, scope: !4752)
!4758 = !DILocation(line: 46, column: 2, scope: !4752)
!4759 = distinct !DISubprogram(name: "arch_atomic_try_cmpxchg", scope: !4722, file: !4722, line: 113, type: !4639, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4760)
!4760 = !{!4761, !4762, !4763, !4764, !4766, !4767, !4768, !4769}
!4761 = !DILocalVariable(name: "v", arg: 1, scope: !4759, file: !4722, line: 113, type: !4641)
!4762 = !DILocalVariable(name: "old", arg: 2, scope: !4759, file: !4722, line: 113, type: !2130)
!4763 = !DILocalVariable(name: "new", arg: 3, scope: !4759, file: !4722, line: 113, type: !201)
!4764 = !DILocalVariable(name: "success", scope: !4765, file: !4722, line: 115, type: !789)
!4765 = distinct !DILexicalBlock(scope: !4759, file: !4722, line: 115, column: 9)
!4766 = !DILocalVariable(name: "_old", scope: !4765, file: !4722, line: 115, type: !2130)
!4767 = !DILocalVariable(name: "__old", scope: !4765, file: !4722, line: 115, type: !201)
!4768 = !DILocalVariable(name: "__new", scope: !4765, file: !4722, line: 115, type: !201)
!4769 = !DILocalVariable(name: "__ptr", scope: !4765, file: !4722, line: 115, type: !4044)
!4770 = !DILocation(line: 113, column: 63, scope: !4759)
!4771 = !DILocation(line: 113, column: 71, scope: !4759)
!4772 = !DILocation(line: 113, column: 80, scope: !4759)
!4773 = !DILocation(line: 115, column: 9, scope: !4765)
!4774 = !{i64 2148428420, i64 2148428459, i64 2148428480, i64 2148428517, i64 2148428540, i64 2148428549, i64 2148428847}
!4775 = !DILocation(line: 115, column: 9, scope: !4776)
!4776 = distinct !DILexicalBlock(scope: !4765, file: !4722, line: 115, column: 9)
!4777 = !{i8 0, i8 2}
!4778 = !DILocation(line: 115, column: 9, scope: !4759)
!4779 = !DILocation(line: 115, column: 2, scope: !4759)
