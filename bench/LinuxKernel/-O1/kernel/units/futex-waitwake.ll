; ModuleID = 'kernel/futex/waitwake.c'
source_filename = "kernel/futex/waitwake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.futex_q = type { %struct.plist_node, ptr, ptr, %union.futex_key, ptr, ptr, ptr, i32, %struct.atomic_t }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.futex_key = type { %struct.anon.13 }
%struct.anon.13 = type { i64, i64, i32 }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.static_call_key = type { ptr, %union.anon.17 }
%union.anon.17 = type { i64 }
%struct.pcpu_hot = type { %union.anon.18 }
%union.anon.18 = type { %struct.anon.19, [16 x i8] }
%struct.anon.19 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.9, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.12 }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { i64, i64 }
%union.anon.12 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.wake_q_head = type { ptr, ptr }
%struct.futex_hash_bucket = type { %struct.atomic_t, %struct.spinlock, %struct.plist_head, [40 x i8] }
%struct.plist_head = type { %struct.list_head }
%struct.anon.16 = type { i64, i64, i32 }
%struct.hrtimer_sleeper = type { %struct.hrtimer, ptr }
%struct.futex_vector = type { %struct.futex_waitv, %struct.futex_q }
%struct.futex_waitv = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"refusing to wake PI futex\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [24 x i8] c"kernel/futex/waitwake.c\00", align 1, !dbg !7
@futex_q_init = external dso_local constant %struct.futex_q, align 8
@futex_atomic_op_inuser._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 5000, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8, !dbg !12
@__func__.futex_atomic_op_inuser = private unnamed_addr constant [23 x i8] c"futex_atomic_op_inuser\00", align 1, !dbg !1950
@.str.2 = private unnamed_addr constant [63 x i8] c"\016futex_wake_op: %s tries to shift op by %d; fix this program\0A\00", align 1, !dbg !1955
@_cond_resched.__UNIQUE_ID___addressable___SCK__cond_resched144 = internal global ptr @__SCK__cond_resched, section ".discard.addressable", align 8, !dbg !1960
@__SCK__cond_resched = external dso_local global %struct.static_call_key, align 8
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@llvm.compiler.used = appending global [1 x ptr] [ptr @_cond_resched.__UNIQUE_ID___addressable___SCK__cond_resched144], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @futex_wake_mark(ptr noundef %wake_q, ptr noundef %q) #0 align 16 !dbg !1989 {
entry:
  %wake_q.addr = alloca ptr, align 8
  %q.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %wake_q, ptr %wake_q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wake_q.addr, metadata !2000, metadata !DIExpression()), !dbg !2010
  store ptr %q, ptr %q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !2001, metadata !DIExpression()), !dbg !2011
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #14, !dbg !2012
  call void @llvm.dbg.declare(metadata ptr %p, metadata !2002, metadata !DIExpression()), !dbg !2013
  %0 = load ptr, ptr %q.addr, align 8, !dbg !2014
  %task = getelementptr inbounds %struct.futex_q, ptr %0, i32 0, i32 1, !dbg !2015
  %1 = load ptr, ptr %task, align 8, !dbg !2015
  store ptr %1, ptr %p, align 8, !dbg !2013
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !2016
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2003, metadata !DIExpression()), !dbg !2016
  %2 = load ptr, ptr %q.addr, align 8, !dbg !2016
  %pi_state = getelementptr inbounds %struct.futex_q, ptr %2, i32 0, i32 4, !dbg !2016
  %3 = load ptr, ptr %pi_state, align 8, !dbg !2016
  %tobool = icmp ne ptr %3, null, !dbg !2016
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !2016

lor.rhs:                                          ; preds = %entry
  %4 = load ptr, ptr %q.addr, align 8, !dbg !2016
  %rt_waiter = getelementptr inbounds %struct.futex_q, ptr %4, i32 0, i32 5, !dbg !2016
  %5 = load ptr, ptr %rt_waiter, align 8, !dbg !2016
  %tobool1 = icmp ne ptr %5, null, !dbg !2016
  br label %lor.end, !dbg !2016

lor.end:                                          ; preds = %lor.rhs, %entry
  %6 = phi i1 [ true, %entry ], [ %tobool1, %lor.rhs ]
  %lnot = xor i1 %6, true, !dbg !2016
  %lnot2 = xor i1 %lnot, true, !dbg !2016
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !2016
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !2016
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !2017
  %tobool3 = icmp ne i32 %7, 0, !dbg !2017
  %lnot4 = xor i1 %tobool3, true, !dbg !2017
  %lnot6 = xor i1 %lnot4, true, !dbg !2017
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !2017
  %conv = sext i32 %lnot.ext7 to i64, !dbg !2017
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2017
  %tobool8 = icmp ne i64 %expval, 0, !dbg !2017
  br i1 %tobool8, label %if.then, label %if.end, !dbg !2016

if.then:                                          ; preds = %lor.end
  br label %do.body, !dbg !2017

do.body:                                          ; preds = %if.then
  br label %do.body9, !dbg !2018

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !2019

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !2019

do.end:                                           ; preds = %do.cond
  call void (ptr, ...) @__warn_printk(ptr noundef @.str) #15, !dbg !2018
  br label %do.body10, !dbg !2018

do.body10:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !2021
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !2006, metadata !DIExpression()), !dbg !2021
  store i32 2313, ptr %__flags, align 4, !dbg !2021
  br label %do.body11, !dbg !2021

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !2022

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !2022

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !2021

do.body14:                                        ; preds = %do.end13
  %8 = load i32, ptr %__flags, align 4, !dbg !2024
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 119, i32 %8, i64 12) #14, !dbg !2024, !srcloc !2026
  br label %do.cond15, !dbg !2024

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !2024

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !2021

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !2027

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !2027

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !2018
  br label %do.cond20, !dbg !2021

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !2021

do.end21:                                         ; preds = %do.cond20
  br label %do.body22, !dbg !2018

do.body22:                                        ; preds = %do.end21
  br label %do.cond23, !dbg !2029

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !2029

do.end24:                                         ; preds = %do.cond23
  br label %do.cond25, !dbg !2018

do.cond25:                                        ; preds = %do.end24
  br label %do.end26, !dbg !2018

do.end26:                                         ; preds = %do.cond25
  br label %if.end, !dbg !2018

if.end:                                           ; preds = %do.end26, %lor.end
  %9 = load i32, ptr %__ret_warn_on, align 4, !dbg !2016
  %tobool27 = icmp ne i32 %9, 0, !dbg !2016
  %lnot28 = xor i1 %tobool27, true, !dbg !2016
  %lnot30 = xor i1 %lnot28, true, !dbg !2016
  %lnot.ext31 = zext i1 %lnot30 to i32, !dbg !2016
  %conv32 = sext i32 %lnot.ext31 to i64, !dbg !2016
  %expval33 = call i64 @llvm.expect.i64(i64 %conv32, i64 0), !dbg !2016
  store i64 %expval33, ptr %tmp, align 8, !dbg !2017
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !2031
  %10 = load i64, ptr %tmp, align 8, !dbg !2016
  %tobool34 = icmp ne i64 %10, 0, !dbg !2031
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !2032

if.then35:                                        ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2033

if.end36:                                         ; preds = %if.end
  %11 = load ptr, ptr %p, align 8, !dbg !2034
  %call = call ptr @get_task_struct(ptr noundef %11) #15, !dbg !2035
  %12 = load ptr, ptr %q.addr, align 8, !dbg !2036
  call void @__futex_unqueue(ptr noundef %12) #15, !dbg !2037
  br label %do.body37, !dbg !2038

do.body37:                                        ; preds = %if.end36
  br label %do.body38, !dbg !2039

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !2041

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !2041

do.end40:                                         ; preds = %do.cond39
  br label %do.body41, !dbg !2039

do.body41:                                        ; preds = %do.end40
  br label %do.body42, !dbg !2043

do.body42:                                        ; preds = %do.body41
  br label %do.cond43, !dbg !2045

do.cond43:                                        ; preds = %do.body42
  br label %do.end44, !dbg !2045

do.end44:                                         ; preds = %do.cond43
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !2043, !srcloc !2047
  br label %do.body45, !dbg !2043

do.body45:                                        ; preds = %do.end44
  br label %do.body46, !dbg !2048

do.body46:                                        ; preds = %do.body45
  br label %do.cond47, !dbg !2050

do.cond47:                                        ; preds = %do.body46
  br label %do.end48, !dbg !2050

do.end48:                                         ; preds = %do.cond47
  br label %do.body49, !dbg !2048

do.body49:                                        ; preds = %do.end48
  %13 = load ptr, ptr %q.addr, align 8, !dbg !2052
  %lock_ptr = getelementptr inbounds %struct.futex_q, ptr %13, i32 0, i32 2, !dbg !2052
  store volatile ptr null, ptr %lock_ptr, align 8, !dbg !2052
  br label %do.cond50, !dbg !2052

do.cond50:                                        ; preds = %do.body49
  br label %do.end51, !dbg !2052

do.end51:                                         ; preds = %do.cond50
  br label %do.cond52, !dbg !2048

do.cond52:                                        ; preds = %do.end51
  br label %do.end53, !dbg !2048

do.end53:                                         ; preds = %do.cond52
  br label %do.cond54, !dbg !2043

do.cond54:                                        ; preds = %do.end53
  br label %do.end55, !dbg !2043

do.end55:                                         ; preds = %do.cond54
  br label %do.cond56, !dbg !2039

do.cond56:                                        ; preds = %do.end55
  br label %do.end57, !dbg !2039

do.end57:                                         ; preds = %do.cond56
  %14 = load ptr, ptr %wake_q.addr, align 8, !dbg !2054
  %15 = load ptr, ptr %p, align 8, !dbg !2055
  call void @wake_q_add_safe(ptr noundef %14, ptr noundef %15) #15, !dbg !2056
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2057
  br label %cleanup, !dbg !2057

cleanup:                                          ; preds = %do.end57, %if.then35
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #14, !dbg !2057
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2057

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2058 dso_local void @__warn_printk(ptr noundef, ...) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_task_struct(ptr noundef %t) #5 align 16 !dbg !2062 {
entry:
  %t.addr = alloca ptr, align 8
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !2067, metadata !DIExpression()), !dbg !2068
  %0 = load ptr, ptr %t.addr, align 8, !dbg !2069
  %usage = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 3, !dbg !2070
  call void @refcount_inc(ptr noundef %usage) #15, !dbg !2071
  %1 = load ptr, ptr %t.addr, align 8, !dbg !2072
  ret ptr %1, !dbg !2073
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2074 dso_local void @__futex_unqueue(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2077 dso_local void @wake_q_add_safe(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @futex_wake(ptr noundef %uaddr, i32 noundef %flags, i32 noundef %nr_wake, i32 noundef %bitset) #0 align 16 !dbg !2080 {
entry:
  %retval = alloca i32, align 4
  %uaddr.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %nr_wake.addr = alloca i32, align 4
  %bitset.addr = alloca i32, align 4
  %hb = alloca ptr, align 8
  %this = alloca ptr, align 8
  %next = alloca ptr, align 8
  %key = alloca %union.futex_key, align 8
  %ret = alloca i32, align 4
  %wake_q = alloca %struct.wake_q_head, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr13 = alloca ptr, align 8
  %tmp16 = alloca ptr, align 8
  %__mptr44 = alloca ptr, align 8
  %tmp48 = alloca ptr, align 8
  store ptr %uaddr, ptr %uaddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uaddr.addr, metadata !2084, metadata !DIExpression()), !dbg !2111
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2085, metadata !DIExpression()), !dbg !2112
  store i32 %nr_wake, ptr %nr_wake.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr_wake.addr, metadata !2086, metadata !DIExpression()), !dbg !2113
  store i32 %bitset, ptr %bitset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bitset.addr, metadata !2087, metadata !DIExpression()), !dbg !2114
  call void @llvm.lifetime.start.p0(i64 8, ptr %hb) #14, !dbg !2115
  call void @llvm.dbg.declare(metadata ptr %hb, metadata !2088, metadata !DIExpression()), !dbg !2116
  call void @llvm.lifetime.start.p0(i64 8, ptr %this) #14, !dbg !2117
  call void @llvm.dbg.declare(metadata ptr %this, metadata !2098, metadata !DIExpression()), !dbg !2118
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #14, !dbg !2117
  call void @llvm.dbg.declare(metadata ptr %next, metadata !2099, metadata !DIExpression()), !dbg !2119
  call void @llvm.lifetime.start.p0(i64 24, ptr %key) #14, !dbg !2120
  call void @llvm.dbg.declare(metadata ptr %key, metadata !2100, metadata !DIExpression()), !dbg !2121
  call void @llvm.memset.p0.i64(ptr align 8 %key, i8 0, i64 24, i1 false), !dbg !2121
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !2122
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2101, metadata !DIExpression()), !dbg !2123
  call void @llvm.lifetime.start.p0(i64 16, ptr %wake_q) #14, !dbg !2124
  call void @llvm.dbg.declare(metadata ptr %wake_q, metadata !2102, metadata !DIExpression()), !dbg !2124
  %first = getelementptr inbounds %struct.wake_q_head, ptr %wake_q, i32 0, i32 0, !dbg !2124
  store ptr inttoptr (i64 1 to ptr), ptr %first, align 8, !dbg !2124
  %lastp = getelementptr inbounds %struct.wake_q_head, ptr %wake_q, i32 0, i32 1, !dbg !2124
  %first1 = getelementptr inbounds %struct.wake_q_head, ptr %wake_q, i32 0, i32 0, !dbg !2124
  store ptr %first1, ptr %lastp, align 8, !dbg !2124
  %0 = load i32, ptr %bitset.addr, align 4, !dbg !2125
  %tobool = icmp ne i32 %0, 0, !dbg !2125
  br i1 %tobool, label %if.end, label %if.then, !dbg !2127

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !2128
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2128

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %uaddr.addr, align 8, !dbg !2129
  %2 = load i32, ptr %flags.addr, align 4, !dbg !2130
  %and = and i32 %2, 1, !dbg !2131
  %tobool2 = icmp ne i32 %and, 0, !dbg !2130
  %call = call i32 @get_futex_key(ptr noundef %1, i1 noundef zeroext %tobool2, ptr noundef %key, i32 noundef 0) #15, !dbg !2132
  store i32 %call, ptr %ret, align 4, !dbg !2133
  %3 = load i32, ptr %ret, align 4, !dbg !2134
  %cmp = icmp ne i32 %3, 0, !dbg !2134
  %lnot = xor i1 %cmp, true, !dbg !2134
  %lnot3 = xor i1 %lnot, true, !dbg !2134
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !2134
  %conv = sext i32 %lnot.ext to i64, !dbg !2134
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2134
  %tobool4 = icmp ne i64 %expval, 0, !dbg !2134
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !2136

if.then5:                                         ; preds = %if.end
  %4 = load i32, ptr %ret, align 4, !dbg !2137
  store i32 %4, ptr %retval, align 4, !dbg !2138
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2138

if.end6:                                          ; preds = %if.end
  %call7 = call ptr @futex_hash(ptr noundef %key) #15, !dbg !2139
  store ptr %call7, ptr %hb, align 8, !dbg !2140
  %5 = load ptr, ptr %hb, align 8, !dbg !2141
  %call8 = call i32 @futex_hb_waiters_pending(ptr noundef %5) #15, !dbg !2143
  %tobool9 = icmp ne i32 %call8, 0, !dbg !2143
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !2144

if.then10:                                        ; preds = %if.end6
  %6 = load i32, ptr %ret, align 4, !dbg !2145
  store i32 %6, ptr %retval, align 4, !dbg !2146
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2146

if.end11:                                         ; preds = %if.end6
  %7 = load ptr, ptr %hb, align 8, !dbg !2147
  %lock = getelementptr inbounds %struct.futex_hash_bucket, ptr %7, i32 0, i32 1, !dbg !2148
  call void @spin_lock(ptr noundef %lock) #15, !dbg !2149
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !2150
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2103, metadata !DIExpression()), !dbg !2150
  %8 = load ptr, ptr %hb, align 8, !dbg !2150
  %chain = getelementptr inbounds %struct.futex_hash_bucket, ptr %8, i32 0, i32 2, !dbg !2150
  %node_list = getelementptr inbounds %struct.plist_head, ptr %chain, i32 0, i32 0, !dbg !2150
  %next12 = getelementptr inbounds %struct.list_head, ptr %node_list, i32 0, i32 0, !dbg !2150
  %9 = load ptr, ptr %next12, align 8, !dbg !2150
  store ptr %9, ptr %__mptr, align 8, !dbg !2150
  %10 = load ptr, ptr %__mptr, align 8, !dbg !2150
  %add.ptr = getelementptr i8, ptr %10, i64 -24, !dbg !2150
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2150
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !2151
  %11 = load ptr, ptr %tmp, align 8, !dbg !2150
  store ptr %11, ptr %this, align 8, !dbg !2151
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr13) #14, !dbg !2152
  call void @llvm.dbg.declare(metadata ptr %__mptr13, metadata !2106, metadata !DIExpression()), !dbg !2152
  %12 = load ptr, ptr %this, align 8, !dbg !2152
  %list = getelementptr inbounds %struct.futex_q, ptr %12, i32 0, i32 0, !dbg !2152
  %node_list14 = getelementptr inbounds %struct.plist_node, ptr %list, i32 0, i32 2, !dbg !2152
  %next15 = getelementptr inbounds %struct.list_head, ptr %node_list14, i32 0, i32 0, !dbg !2152
  %13 = load ptr, ptr %next15, align 8, !dbg !2152
  store ptr %13, ptr %__mptr13, align 8, !dbg !2152
  %14 = load ptr, ptr %__mptr13, align 8, !dbg !2152
  %add.ptr17 = getelementptr i8, ptr %14, i64 -24, !dbg !2152
  store ptr %add.ptr17, ptr %tmp16, align 8, !dbg !2152
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr13) #14, !dbg !2151
  %15 = load ptr, ptr %tmp16, align 8, !dbg !2152
  store ptr %15, ptr %next, align 8, !dbg !2151
  br label %for.cond, !dbg !2151

for.cond:                                         ; preds = %for.inc, %if.end11
  %16 = load ptr, ptr %this, align 8, !dbg !2153
  %list18 = getelementptr inbounds %struct.futex_q, ptr %16, i32 0, i32 0, !dbg !2153
  %node_list19 = getelementptr inbounds %struct.plist_node, ptr %list18, i32 0, i32 2, !dbg !2153
  %17 = load ptr, ptr %hb, align 8, !dbg !2153
  %chain20 = getelementptr inbounds %struct.futex_hash_bucket, ptr %17, i32 0, i32 2, !dbg !2153
  %node_list21 = getelementptr inbounds %struct.plist_head, ptr %chain20, i32 0, i32 0, !dbg !2153
  %cmp22 = icmp eq ptr %node_list19, %node_list21, !dbg !2153
  %lnot24 = xor i1 %cmp22, true, !dbg !2153
  br i1 %lnot24, label %for.body, label %for.end, !dbg !2151

for.body:                                         ; preds = %for.cond
  %18 = load ptr, ptr %this, align 8, !dbg !2154
  %key26 = getelementptr inbounds %struct.futex_q, ptr %18, i32 0, i32 3, !dbg !2157
  %call27 = call i32 @futex_match(ptr noundef %key26, ptr noundef %key) #15, !dbg !2158
  %tobool28 = icmp ne i32 %call27, 0, !dbg !2158
  br i1 %tobool28, label %if.then29, label %if.end43, !dbg !2159

if.then29:                                        ; preds = %for.body
  %19 = load ptr, ptr %this, align 8, !dbg !2160
  %pi_state = getelementptr inbounds %struct.futex_q, ptr %19, i32 0, i32 4, !dbg !2163
  %20 = load ptr, ptr %pi_state, align 8, !dbg !2163
  %tobool30 = icmp ne ptr %20, null, !dbg !2160
  br i1 %tobool30, label %if.then32, label %lor.lhs.false, !dbg !2164

lor.lhs.false:                                    ; preds = %if.then29
  %21 = load ptr, ptr %this, align 8, !dbg !2165
  %rt_waiter = getelementptr inbounds %struct.futex_q, ptr %21, i32 0, i32 5, !dbg !2166
  %22 = load ptr, ptr %rt_waiter, align 8, !dbg !2166
  %tobool31 = icmp ne ptr %22, null, !dbg !2165
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !2167

if.then32:                                        ; preds = %lor.lhs.false, %if.then29
  store i32 -22, ptr %ret, align 4, !dbg !2168
  br label %for.end, !dbg !2170

if.end33:                                         ; preds = %lor.lhs.false
  %23 = load ptr, ptr %this, align 8, !dbg !2171
  %bitset34 = getelementptr inbounds %struct.futex_q, ptr %23, i32 0, i32 7, !dbg !2173
  %24 = load i32, ptr %bitset34, align 8, !dbg !2173
  %25 = load i32, ptr %bitset.addr, align 4, !dbg !2174
  %and35 = and i32 %24, %25, !dbg !2175
  %tobool36 = icmp ne i32 %and35, 0, !dbg !2175
  br i1 %tobool36, label %if.end38, label %if.then37, !dbg !2176

if.then37:                                        ; preds = %if.end33
  br label %for.inc, !dbg !2177

if.end38:                                         ; preds = %if.end33
  %26 = load ptr, ptr %this, align 8, !dbg !2178
  call void @futex_wake_mark(ptr noundef %wake_q, ptr noundef %26) #15, !dbg !2179
  %27 = load i32, ptr %ret, align 4, !dbg !2180
  %inc = add i32 %27, 1, !dbg !2180
  store i32 %inc, ptr %ret, align 4, !dbg !2180
  %28 = load i32, ptr %nr_wake.addr, align 4, !dbg !2182
  %cmp39 = icmp sge i32 %inc, %28, !dbg !2183
  br i1 %cmp39, label %if.then41, label %if.end42, !dbg !2184

if.then41:                                        ; preds = %if.end38
  br label %for.end, !dbg !2185

if.end42:                                         ; preds = %if.end38
  br label %if.end43, !dbg !2186

if.end43:                                         ; preds = %if.end42, %for.body
  br label %for.inc, !dbg !2187

for.inc:                                          ; preds = %if.end43, %if.then37
  %29 = load ptr, ptr %next, align 8, !dbg !2153
  store ptr %29, ptr %this, align 8, !dbg !2153
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr44) #14, !dbg !2188
  call void @llvm.dbg.declare(metadata ptr %__mptr44, metadata !2108, metadata !DIExpression()), !dbg !2188
  %30 = load ptr, ptr %next, align 8, !dbg !2188
  %list45 = getelementptr inbounds %struct.futex_q, ptr %30, i32 0, i32 0, !dbg !2188
  %node_list46 = getelementptr inbounds %struct.plist_node, ptr %list45, i32 0, i32 2, !dbg !2188
  %next47 = getelementptr inbounds %struct.list_head, ptr %node_list46, i32 0, i32 0, !dbg !2188
  %31 = load ptr, ptr %next47, align 8, !dbg !2188
  store ptr %31, ptr %__mptr44, align 8, !dbg !2188
  %32 = load ptr, ptr %__mptr44, align 8, !dbg !2188
  %add.ptr49 = getelementptr i8, ptr %32, i64 -24, !dbg !2188
  store ptr %add.ptr49, ptr %tmp48, align 8, !dbg !2188
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr44) #14, !dbg !2153
  %33 = load ptr, ptr %tmp48, align 8, !dbg !2188
  store ptr %33, ptr %next, align 8, !dbg !2153
  br label %for.cond, !dbg !2153, !llvm.loop !2189

for.end:                                          ; preds = %if.then41, %if.then32, %for.cond
  %34 = load ptr, ptr %hb, align 8, !dbg !2193
  %lock50 = getelementptr inbounds %struct.futex_hash_bucket, ptr %34, i32 0, i32 1, !dbg !2194
  call void @spin_unlock(ptr noundef %lock50) #15, !dbg !2195
  call void @wake_up_q(ptr noundef %wake_q) #15, !dbg !2196
  %35 = load i32, ptr %ret, align 4, !dbg !2197
  store i32 %35, ptr %retval, align 4, !dbg !2198
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2198

cleanup:                                          ; preds = %for.end, %if.then10, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %wake_q) #14, !dbg !2199
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !2199
  call void @llvm.lifetime.end.p0(i64 24, ptr %key) #14, !dbg !2199
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #14, !dbg !2199
  call void @llvm.lifetime.end.p0(i64 8, ptr %this) #14, !dbg !2199
  call void @llvm.lifetime.end.p0(i64 8, ptr %hb) #14, !dbg !2199
  %36 = load i32, ptr %retval, align 4, !dbg !2199
  ret i32 %36, !dbg !2199
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2200 dso_local i32 @get_futex_key(ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2203 dso_local ptr @futex_hash(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @futex_hb_waiters_pending(ptr noundef %hb) #5 align 16 !dbg !2206 {
entry:
  %hb.addr = alloca ptr, align 8
  store ptr %hb, ptr %hb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hb.addr, metadata !2210, metadata !DIExpression()), !dbg !2211
  br label %do.body, !dbg !2212

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !2213

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !2215

do.end:                                           ; preds = %do.body1
  call void asm sideeffect "lock; addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !2213, !srcloc !2217
  br label %do.end2, !dbg !2213

do.end2:                                          ; preds = %do.end
  %0 = load ptr, ptr %hb.addr, align 8, !dbg !2218
  %waiters = getelementptr inbounds %struct.futex_hash_bucket, ptr %0, i32 0, i32 0, !dbg !2219
  %call = call i32 @atomic_read(ptr noundef %waiters) #15, !dbg !2220
  ret i32 %call, !dbg !2221
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #7 align 16 !dbg !2222 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2227, metadata !DIExpression()), !dbg !2228
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2229
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !2229
  call void @_raw_spin_lock(ptr noundef %1) #15, !dbg !2229
  ret void, !dbg !2230
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @futex_match(ptr noundef %key1, ptr noundef %key2) #5 align 16 !dbg !2231 {
entry:
  %key1.addr = alloca ptr, align 8
  %key2.addr = alloca ptr, align 8
  store ptr %key1, ptr %key1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key1.addr, metadata !2235, metadata !DIExpression()), !dbg !2237
  store ptr %key2, ptr %key2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key2.addr, metadata !2236, metadata !DIExpression()), !dbg !2238
  %0 = load ptr, ptr %key1.addr, align 8, !dbg !2239
  %tobool = icmp ne ptr %0, null, !dbg !2239
  br i1 %tobool, label %land.lhs.true, label %land.end, !dbg !2240

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %key2.addr, align 8, !dbg !2241
  %tobool1 = icmp ne ptr %1, null, !dbg !2241
  br i1 %tobool1, label %land.lhs.true2, label %land.end, !dbg !2242

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load ptr, ptr %key1.addr, align 8, !dbg !2243
  %word = getelementptr inbounds %struct.anon.16, ptr %2, i32 0, i32 1, !dbg !2244
  %3 = load i64, ptr %word, align 8, !dbg !2244
  %4 = load ptr, ptr %key2.addr, align 8, !dbg !2245
  %word3 = getelementptr inbounds %struct.anon.16, ptr %4, i32 0, i32 1, !dbg !2246
  %5 = load i64, ptr %word3, align 8, !dbg !2246
  %cmp = icmp eq i64 %3, %5, !dbg !2247
  br i1 %cmp, label %land.lhs.true4, label %land.end, !dbg !2248

land.lhs.true4:                                   ; preds = %land.lhs.true2
  %6 = load ptr, ptr %key1.addr, align 8, !dbg !2249
  %ptr = getelementptr inbounds %struct.anon.16, ptr %6, i32 0, i32 0, !dbg !2250
  %7 = load i64, ptr %ptr, align 8, !dbg !2250
  %8 = load ptr, ptr %key2.addr, align 8, !dbg !2251
  %ptr5 = getelementptr inbounds %struct.anon.16, ptr %8, i32 0, i32 0, !dbg !2252
  %9 = load i64, ptr %ptr5, align 8, !dbg !2252
  %cmp6 = icmp eq i64 %7, %9, !dbg !2253
  br i1 %cmp6, label %land.rhs, label %land.end, !dbg !2254

land.rhs:                                         ; preds = %land.lhs.true4
  %10 = load ptr, ptr %key1.addr, align 8, !dbg !2255
  %offset = getelementptr inbounds %struct.anon.16, ptr %10, i32 0, i32 2, !dbg !2256
  %11 = load i32, ptr %offset, align 8, !dbg !2256
  %12 = load ptr, ptr %key2.addr, align 8, !dbg !2257
  %offset7 = getelementptr inbounds %struct.anon.16, ptr %12, i32 0, i32 2, !dbg !2258
  %13 = load i32, ptr %offset7, align 8, !dbg !2258
  %cmp8 = icmp eq i32 %11, %13, !dbg !2259
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true4, %land.lhs.true2, %land.lhs.true, %entry
  %14 = phi i1 [ false, %land.lhs.true4 ], [ false, %land.lhs.true2 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp8, %land.rhs ], !dbg !2260
  %land.ext = zext i1 %14 to i32, !dbg !2254
  ret i32 %land.ext, !dbg !2261
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #7 align 16 !dbg !2262 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2264, metadata !DIExpression()), !dbg !2265
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2266
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !2266
  call void @_raw_spin_unlock(ptr noundef %1) #15, !dbg !2266
  ret void, !dbg !2267
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2268 dso_local void @wake_up_q(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @futex_wake_op(ptr noundef %uaddr1, i32 noundef %flags, ptr noundef %uaddr2, i32 noundef %nr_wake, i32 noundef %nr_wake2, i32 noundef %op) #0 align 16 !dbg !2271 {
entry:
  %retval = alloca i32, align 4
  %uaddr1.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %uaddr2.addr = alloca ptr, align 8
  %nr_wake.addr = alloca i32, align 4
  %nr_wake2.addr = alloca i32, align 4
  %op.addr = alloca i32, align 4
  %key1 = alloca %union.futex_key, align 8
  %key2 = alloca %union.futex_key, align 8
  %hb1 = alloca ptr, align 8
  %hb2 = alloca ptr, align 8
  %this = alloca ptr, align 8
  %next = alloca ptr, align 8
  %ret = alloca i32, align 4
  %op_ret = alloca i32, align 4
  %wake_q = alloca %struct.wake_q_head, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp59 = alloca ptr, align 8
  %__mptr60 = alloca ptr, align 8
  %tmp63 = alloca ptr, align 8
  %__mptr85 = alloca ptr, align 8
  %tmp89 = alloca ptr, align 8
  %__mptr94 = alloca ptr, align 8
  %tmp98 = alloca ptr, align 8
  %__mptr100 = alloca ptr, align 8
  %tmp104 = alloca ptr, align 8
  %__mptr134 = alloca ptr, align 8
  %tmp138 = alloca ptr, align 8
  store ptr %uaddr1, ptr %uaddr1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uaddr1.addr, metadata !2275, metadata !DIExpression()), !dbg !2311
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2276, metadata !DIExpression()), !dbg !2312
  store ptr %uaddr2, ptr %uaddr2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uaddr2.addr, metadata !2277, metadata !DIExpression()), !dbg !2313
  store i32 %nr_wake, ptr %nr_wake.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr_wake.addr, metadata !2278, metadata !DIExpression()), !dbg !2314
  store i32 %nr_wake2, ptr %nr_wake2.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr_wake2.addr, metadata !2279, metadata !DIExpression()), !dbg !2315
  store i32 %op, ptr %op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !2280, metadata !DIExpression()), !dbg !2316
  call void @llvm.lifetime.start.p0(i64 24, ptr %key1) #14, !dbg !2317
  call void @llvm.dbg.declare(metadata ptr %key1, metadata !2281, metadata !DIExpression()), !dbg !2318
  call void @llvm.memset.p0.i64(ptr align 8 %key1, i8 0, i64 24, i1 false), !dbg !2318
  call void @llvm.lifetime.start.p0(i64 24, ptr %key2) #14, !dbg !2317
  call void @llvm.dbg.declare(metadata ptr %key2, metadata !2282, metadata !DIExpression()), !dbg !2319
  call void @llvm.memset.p0.i64(ptr align 8 %key2, i8 0, i64 24, i1 false), !dbg !2319
  call void @llvm.lifetime.start.p0(i64 8, ptr %hb1) #14, !dbg !2320
  call void @llvm.dbg.declare(metadata ptr %hb1, metadata !2283, metadata !DIExpression()), !dbg !2321
  call void @llvm.lifetime.start.p0(i64 8, ptr %hb2) #14, !dbg !2320
  call void @llvm.dbg.declare(metadata ptr %hb2, metadata !2284, metadata !DIExpression()), !dbg !2322
  call void @llvm.lifetime.start.p0(i64 8, ptr %this) #14, !dbg !2323
  call void @llvm.dbg.declare(metadata ptr %this, metadata !2285, metadata !DIExpression()), !dbg !2324
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #14, !dbg !2323
  call void @llvm.dbg.declare(metadata ptr %next, metadata !2286, metadata !DIExpression()), !dbg !2325
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !2326
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2287, metadata !DIExpression()), !dbg !2327
  call void @llvm.lifetime.start.p0(i64 4, ptr %op_ret) #14, !dbg !2326
  call void @llvm.dbg.declare(metadata ptr %op_ret, metadata !2288, metadata !DIExpression()), !dbg !2328
  call void @llvm.lifetime.start.p0(i64 16, ptr %wake_q) #14, !dbg !2329
  call void @llvm.dbg.declare(metadata ptr %wake_q, metadata !2289, metadata !DIExpression()), !dbg !2329
  %first = getelementptr inbounds %struct.wake_q_head, ptr %wake_q, i32 0, i32 0, !dbg !2329
  store ptr inttoptr (i64 1 to ptr), ptr %first, align 8, !dbg !2329
  %lastp = getelementptr inbounds %struct.wake_q_head, ptr %wake_q, i32 0, i32 1, !dbg !2329
  %first1 = getelementptr inbounds %struct.wake_q_head, ptr %wake_q, i32 0, i32 0, !dbg !2329
  store ptr %first1, ptr %lastp, align 8, !dbg !2329
  br label %retry, !dbg !2329

retry:                                            ; preds = %if.end56, %entry
  call void @llvm.dbg.label(metadata !2290), !dbg !2330
  %0 = load ptr, ptr %uaddr1.addr, align 8, !dbg !2331
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2332
  %and = and i32 %1, 1, !dbg !2333
  %tobool = icmp ne i32 %and, 0, !dbg !2332
  %call = call i32 @get_futex_key(ptr noundef %0, i1 noundef zeroext %tobool, ptr noundef %key1, i32 noundef 0) #15, !dbg !2334
  store i32 %call, ptr %ret, align 4, !dbg !2335
  %2 = load i32, ptr %ret, align 4, !dbg !2336
  %cmp = icmp ne i32 %2, 0, !dbg !2336
  %lnot = xor i1 %cmp, true, !dbg !2336
  %lnot2 = xor i1 %lnot, true, !dbg !2336
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !2336
  %conv = sext i32 %lnot.ext to i64, !dbg !2336
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2336
  %tobool3 = icmp ne i64 %expval, 0, !dbg !2336
  br i1 %tobool3, label %if.then, label %if.end, !dbg !2338

if.then:                                          ; preds = %retry
  %3 = load i32, ptr %ret, align 4, !dbg !2339
  store i32 %3, ptr %retval, align 4, !dbg !2340
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2340

if.end:                                           ; preds = %retry
  %4 = load ptr, ptr %uaddr2.addr, align 8, !dbg !2341
  %5 = load i32, ptr %flags.addr, align 4, !dbg !2342
  %and4 = and i32 %5, 1, !dbg !2343
  %tobool5 = icmp ne i32 %and4, 0, !dbg !2342
  %call6 = call i32 @get_futex_key(ptr noundef %4, i1 noundef zeroext %tobool5, ptr noundef %key2, i32 noundef 1) #15, !dbg !2344
  store i32 %call6, ptr %ret, align 4, !dbg !2345
  %6 = load i32, ptr %ret, align 4, !dbg !2346
  %cmp7 = icmp ne i32 %6, 0, !dbg !2346
  %lnot9 = xor i1 %cmp7, true, !dbg !2346
  %lnot11 = xor i1 %lnot9, true, !dbg !2346
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !2346
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !2346
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !2346
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !2346
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !2348

if.then16:                                        ; preds = %if.end
  %7 = load i32, ptr %ret, align 4, !dbg !2349
  store i32 %7, ptr %retval, align 4, !dbg !2350
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2350

if.end17:                                         ; preds = %if.end
  %call18 = call ptr @futex_hash(ptr noundef %key1) #15, !dbg !2351
  store ptr %call18, ptr %hb1, align 8, !dbg !2352
  %call19 = call ptr @futex_hash(ptr noundef %key2) #15, !dbg !2353
  store ptr %call19, ptr %hb2, align 8, !dbg !2354
  br label %retry_private, !dbg !2355

retry_private:                                    ; preds = %if.then55, %if.end17
  call void @llvm.dbg.label(metadata !2291), !dbg !2356
  %8 = load ptr, ptr %hb1, align 8, !dbg !2357
  %9 = load ptr, ptr %hb2, align 8, !dbg !2358
  call void @double_lock_hb(ptr noundef %8, ptr noundef %9) #15, !dbg !2359
  %10 = load i32, ptr %op.addr, align 4, !dbg !2360
  %11 = load ptr, ptr %uaddr2.addr, align 8, !dbg !2361
  %call20 = call i32 @futex_atomic_op_inuser(i32 noundef %10, ptr noundef %11) #15, !dbg !2362
  store i32 %call20, ptr %op_ret, align 4, !dbg !2363
  %12 = load i32, ptr %op_ret, align 4, !dbg !2364
  %cmp21 = icmp slt i32 %12, 0, !dbg !2364
  %lnot23 = xor i1 %cmp21, true, !dbg !2364
  %lnot25 = xor i1 %lnot23, true, !dbg !2364
  %lnot.ext26 = zext i1 %lnot25 to i32, !dbg !2364
  %conv27 = sext i32 %lnot.ext26 to i64, !dbg !2364
  %expval28 = call i64 @llvm.expect.i64(i64 %conv27, i64 0), !dbg !2364
  %tobool29 = icmp ne i64 %expval28, 0, !dbg !2364
  br i1 %tobool29, label %if.then30, label %if.end57, !dbg !2366

if.then30:                                        ; preds = %retry_private
  %13 = load ptr, ptr %hb1, align 8, !dbg !2367
  %14 = load ptr, ptr %hb2, align 8, !dbg !2369
  call void @double_unlock_hb(ptr noundef %13, ptr noundef %14) #15, !dbg !2370
  %15 = load i32, ptr %op_ret, align 4, !dbg !2371
  %cmp31 = icmp ne i32 %15, -14, !dbg !2371
  br i1 %cmp31, label %land.rhs, label %land.end, !dbg !2371

land.rhs:                                         ; preds = %if.then30
  %16 = load i32, ptr %op_ret, align 4, !dbg !2371
  %cmp33 = icmp ne i32 %16, -11, !dbg !2371
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then30
  %17 = phi i1 [ false, %if.then30 ], [ %cmp33, %land.rhs ], !dbg !2373
  %lnot35 = xor i1 %17, true, !dbg !2371
  %lnot37 = xor i1 %lnot35, true, !dbg !2371
  %lnot.ext38 = zext i1 %lnot37 to i32, !dbg !2371
  %conv39 = sext i32 %lnot.ext38 to i64, !dbg !2371
  %expval40 = call i64 @llvm.expect.i64(i64 %conv39, i64 0), !dbg !2371
  %tobool41 = icmp ne i64 %expval40, 0, !dbg !2371
  br i1 %tobool41, label %if.then42, label %if.end43, !dbg !2374

if.then42:                                        ; preds = %land.end
  %18 = load i32, ptr %op_ret, align 4, !dbg !2375
  store i32 %18, ptr %ret, align 4, !dbg !2377
  %19 = load i32, ptr %ret, align 4, !dbg !2378
  store i32 %19, ptr %retval, align 4, !dbg !2379
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2379

if.end43:                                         ; preds = %land.end
  %20 = load i32, ptr %op_ret, align 4, !dbg !2380
  %cmp44 = icmp eq i32 %20, -14, !dbg !2382
  br i1 %cmp44, label %if.then46, label %if.end51, !dbg !2383

if.then46:                                        ; preds = %if.end43
  %21 = load ptr, ptr %uaddr2.addr, align 8, !dbg !2384
  %call47 = call i32 @fault_in_user_writeable(ptr noundef %21) #15, !dbg !2386
  store i32 %call47, ptr %ret, align 4, !dbg !2387
  %22 = load i32, ptr %ret, align 4, !dbg !2388
  %tobool48 = icmp ne i32 %22, 0, !dbg !2388
  br i1 %tobool48, label %if.then49, label %if.end50, !dbg !2390

if.then49:                                        ; preds = %if.then46
  %23 = load i32, ptr %ret, align 4, !dbg !2391
  store i32 %23, ptr %retval, align 4, !dbg !2392
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2392

if.end50:                                         ; preds = %if.then46
  br label %if.end51, !dbg !2393

if.end51:                                         ; preds = %if.end50, %if.end43
  call void @__might_resched(ptr noundef @.str.1, i32 noundef 280, i32 noundef 0) #15, !dbg !2394
  %call52 = call i32 @_cond_resched() #15, !dbg !2394
  store i32 %call52, ptr %tmp, align 4, !dbg !2394
  %24 = load i32, ptr %tmp, align 4, !dbg !2394
  %25 = load i32, ptr %flags.addr, align 4, !dbg !2396
  %and53 = and i32 %25, 1, !dbg !2398
  %tobool54 = icmp ne i32 %and53, 0, !dbg !2398
  br i1 %tobool54, label %if.end56, label %if.then55, !dbg !2399

if.then55:                                        ; preds = %if.end51
  br label %retry_private, !dbg !2400

if.end56:                                         ; preds = %if.end51
  br label %retry, !dbg !2401

if.end57:                                         ; preds = %retry_private
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !2402
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2292, metadata !DIExpression()), !dbg !2402
  %26 = load ptr, ptr %hb1, align 8, !dbg !2402
  %chain = getelementptr inbounds %struct.futex_hash_bucket, ptr %26, i32 0, i32 2, !dbg !2402
  %node_list = getelementptr inbounds %struct.plist_head, ptr %chain, i32 0, i32 0, !dbg !2402
  %next58 = getelementptr inbounds %struct.list_head, ptr %node_list, i32 0, i32 0, !dbg !2402
  %27 = load ptr, ptr %next58, align 8, !dbg !2402
  store ptr %27, ptr %__mptr, align 8, !dbg !2402
  %28 = load ptr, ptr %__mptr, align 8, !dbg !2402
  %add.ptr = getelementptr i8, ptr %28, i64 -24, !dbg !2402
  store ptr %add.ptr, ptr %tmp59, align 8, !dbg !2402
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !2403
  %29 = load ptr, ptr %tmp59, align 8, !dbg !2402
  store ptr %29, ptr %this, align 8, !dbg !2403
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr60) #14, !dbg !2404
  call void @llvm.dbg.declare(metadata ptr %__mptr60, metadata !2295, metadata !DIExpression()), !dbg !2404
  %30 = load ptr, ptr %this, align 8, !dbg !2404
  %list = getelementptr inbounds %struct.futex_q, ptr %30, i32 0, i32 0, !dbg !2404
  %node_list61 = getelementptr inbounds %struct.plist_node, ptr %list, i32 0, i32 2, !dbg !2404
  %next62 = getelementptr inbounds %struct.list_head, ptr %node_list61, i32 0, i32 0, !dbg !2404
  %31 = load ptr, ptr %next62, align 8, !dbg !2404
  store ptr %31, ptr %__mptr60, align 8, !dbg !2404
  %32 = load ptr, ptr %__mptr60, align 8, !dbg !2404
  %add.ptr64 = getelementptr i8, ptr %32, i64 -24, !dbg !2404
  store ptr %add.ptr64, ptr %tmp63, align 8, !dbg !2404
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr60) #14, !dbg !2403
  %33 = load ptr, ptr %tmp63, align 8, !dbg !2404
  store ptr %33, ptr %next, align 8, !dbg !2403
  br label %for.cond, !dbg !2403

for.cond:                                         ; preds = %for.inc, %if.end57
  %34 = load ptr, ptr %this, align 8, !dbg !2405
  %list65 = getelementptr inbounds %struct.futex_q, ptr %34, i32 0, i32 0, !dbg !2405
  %node_list66 = getelementptr inbounds %struct.plist_node, ptr %list65, i32 0, i32 2, !dbg !2405
  %35 = load ptr, ptr %hb1, align 8, !dbg !2405
  %chain67 = getelementptr inbounds %struct.futex_hash_bucket, ptr %35, i32 0, i32 2, !dbg !2405
  %node_list68 = getelementptr inbounds %struct.plist_head, ptr %chain67, i32 0, i32 0, !dbg !2405
  %cmp69 = icmp eq ptr %node_list66, %node_list68, !dbg !2405
  %lnot71 = xor i1 %cmp69, true, !dbg !2405
  br i1 %lnot71, label %for.body, label %for.end, !dbg !2403

for.body:                                         ; preds = %for.cond
  %36 = load ptr, ptr %this, align 8, !dbg !2406
  %key = getelementptr inbounds %struct.futex_q, ptr %36, i32 0, i32 3, !dbg !2409
  %call73 = call i32 @futex_match(ptr noundef %key, ptr noundef %key1) #15, !dbg !2410
  %tobool74 = icmp ne i32 %call73, 0, !dbg !2410
  br i1 %tobool74, label %if.then75, label %if.end84, !dbg !2411

if.then75:                                        ; preds = %for.body
  %37 = load ptr, ptr %this, align 8, !dbg !2412
  %pi_state = getelementptr inbounds %struct.futex_q, ptr %37, i32 0, i32 4, !dbg !2415
  %38 = load ptr, ptr %pi_state, align 8, !dbg !2415
  %tobool76 = icmp ne ptr %38, null, !dbg !2412
  br i1 %tobool76, label %if.then78, label %lor.lhs.false, !dbg !2416

lor.lhs.false:                                    ; preds = %if.then75
  %39 = load ptr, ptr %this, align 8, !dbg !2417
  %rt_waiter = getelementptr inbounds %struct.futex_q, ptr %39, i32 0, i32 5, !dbg !2418
  %40 = load ptr, ptr %rt_waiter, align 8, !dbg !2418
  %tobool77 = icmp ne ptr %40, null, !dbg !2417
  br i1 %tobool77, label %if.then78, label %if.end79, !dbg !2419

if.then78:                                        ; preds = %lor.lhs.false, %if.then75
  store i32 -22, ptr %ret, align 4, !dbg !2420
  br label %out_unlock, !dbg !2422

if.end79:                                         ; preds = %lor.lhs.false
  %41 = load ptr, ptr %this, align 8, !dbg !2423
  call void @futex_wake_mark(ptr noundef %wake_q, ptr noundef %41) #15, !dbg !2424
  %42 = load i32, ptr %ret, align 4, !dbg !2425
  %inc = add i32 %42, 1, !dbg !2425
  store i32 %inc, ptr %ret, align 4, !dbg !2425
  %43 = load i32, ptr %nr_wake.addr, align 4, !dbg !2427
  %cmp80 = icmp sge i32 %inc, %43, !dbg !2428
  br i1 %cmp80, label %if.then82, label %if.end83, !dbg !2429

if.then82:                                        ; preds = %if.end79
  br label %for.end, !dbg !2430

if.end83:                                         ; preds = %if.end79
  br label %if.end84, !dbg !2431

if.end84:                                         ; preds = %if.end83, %for.body
  br label %for.inc, !dbg !2432

for.inc:                                          ; preds = %if.end84
  %44 = load ptr, ptr %next, align 8, !dbg !2405
  store ptr %44, ptr %this, align 8, !dbg !2405
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr85) #14, !dbg !2433
  call void @llvm.dbg.declare(metadata ptr %__mptr85, metadata !2297, metadata !DIExpression()), !dbg !2433
  %45 = load ptr, ptr %next, align 8, !dbg !2433
  %list86 = getelementptr inbounds %struct.futex_q, ptr %45, i32 0, i32 0, !dbg !2433
  %node_list87 = getelementptr inbounds %struct.plist_node, ptr %list86, i32 0, i32 2, !dbg !2433
  %next88 = getelementptr inbounds %struct.list_head, ptr %node_list87, i32 0, i32 0, !dbg !2433
  %46 = load ptr, ptr %next88, align 8, !dbg !2433
  store ptr %46, ptr %__mptr85, align 8, !dbg !2433
  %47 = load ptr, ptr %__mptr85, align 8, !dbg !2433
  %add.ptr90 = getelementptr i8, ptr %47, i64 -24, !dbg !2433
  store ptr %add.ptr90, ptr %tmp89, align 8, !dbg !2433
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr85) #14, !dbg !2405
  %48 = load ptr, ptr %tmp89, align 8, !dbg !2433
  store ptr %48, ptr %next, align 8, !dbg !2405
  br label %for.cond, !dbg !2405, !llvm.loop !2434

for.end:                                          ; preds = %if.then82, %for.cond
  %49 = load i32, ptr %op_ret, align 4, !dbg !2436
  %cmp91 = icmp sgt i32 %49, 0, !dbg !2437
  br i1 %cmp91, label %if.then93, label %if.end141, !dbg !2438

if.then93:                                        ; preds = %for.end
  store i32 0, ptr %op_ret, align 4, !dbg !2439
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr94) #14, !dbg !2440
  call void @llvm.dbg.declare(metadata ptr %__mptr94, metadata !2300, metadata !DIExpression()), !dbg !2440
  %50 = load ptr, ptr %hb2, align 8, !dbg !2440
  %chain95 = getelementptr inbounds %struct.futex_hash_bucket, ptr %50, i32 0, i32 2, !dbg !2440
  %node_list96 = getelementptr inbounds %struct.plist_head, ptr %chain95, i32 0, i32 0, !dbg !2440
  %next97 = getelementptr inbounds %struct.list_head, ptr %node_list96, i32 0, i32 0, !dbg !2440
  %51 = load ptr, ptr %next97, align 8, !dbg !2440
  store ptr %51, ptr %__mptr94, align 8, !dbg !2440
  %52 = load ptr, ptr %__mptr94, align 8, !dbg !2440
  %add.ptr99 = getelementptr i8, ptr %52, i64 -24, !dbg !2440
  store ptr %add.ptr99, ptr %tmp98, align 8, !dbg !2440
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr94) #14, !dbg !2441
  %53 = load ptr, ptr %tmp98, align 8, !dbg !2440
  store ptr %53, ptr %this, align 8, !dbg !2441
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr100) #14, !dbg !2442
  call void @llvm.dbg.declare(metadata ptr %__mptr100, metadata !2305, metadata !DIExpression()), !dbg !2442
  %54 = load ptr, ptr %this, align 8, !dbg !2442
  %list101 = getelementptr inbounds %struct.futex_q, ptr %54, i32 0, i32 0, !dbg !2442
  %node_list102 = getelementptr inbounds %struct.plist_node, ptr %list101, i32 0, i32 2, !dbg !2442
  %next103 = getelementptr inbounds %struct.list_head, ptr %node_list102, i32 0, i32 0, !dbg !2442
  %55 = load ptr, ptr %next103, align 8, !dbg !2442
  store ptr %55, ptr %__mptr100, align 8, !dbg !2442
  %56 = load ptr, ptr %__mptr100, align 8, !dbg !2442
  %add.ptr105 = getelementptr i8, ptr %56, i64 -24, !dbg !2442
  store ptr %add.ptr105, ptr %tmp104, align 8, !dbg !2442
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr100) #14, !dbg !2441
  %57 = load ptr, ptr %tmp104, align 8, !dbg !2442
  store ptr %57, ptr %next, align 8, !dbg !2441
  br label %for.cond106, !dbg !2441

for.cond106:                                      ; preds = %for.inc133, %if.then93
  %58 = load ptr, ptr %this, align 8, !dbg !2443
  %list107 = getelementptr inbounds %struct.futex_q, ptr %58, i32 0, i32 0, !dbg !2443
  %node_list108 = getelementptr inbounds %struct.plist_node, ptr %list107, i32 0, i32 2, !dbg !2443
  %59 = load ptr, ptr %hb2, align 8, !dbg !2443
  %chain109 = getelementptr inbounds %struct.futex_hash_bucket, ptr %59, i32 0, i32 2, !dbg !2443
  %node_list110 = getelementptr inbounds %struct.plist_head, ptr %chain109, i32 0, i32 0, !dbg !2443
  %cmp111 = icmp eq ptr %node_list108, %node_list110, !dbg !2443
  %lnot113 = xor i1 %cmp111, true, !dbg !2443
  br i1 %lnot113, label %for.body115, label %for.end140, !dbg !2441

for.body115:                                      ; preds = %for.cond106
  %60 = load ptr, ptr %this, align 8, !dbg !2444
  %key116 = getelementptr inbounds %struct.futex_q, ptr %60, i32 0, i32 3, !dbg !2447
  %call117 = call i32 @futex_match(ptr noundef %key116, ptr noundef %key2) #15, !dbg !2448
  %tobool118 = icmp ne i32 %call117, 0, !dbg !2448
  br i1 %tobool118, label %if.then119, label %if.end132, !dbg !2449

if.then119:                                       ; preds = %for.body115
  %61 = load ptr, ptr %this, align 8, !dbg !2450
  %pi_state120 = getelementptr inbounds %struct.futex_q, ptr %61, i32 0, i32 4, !dbg !2453
  %62 = load ptr, ptr %pi_state120, align 8, !dbg !2453
  %tobool121 = icmp ne ptr %62, null, !dbg !2450
  br i1 %tobool121, label %if.then125, label %lor.lhs.false122, !dbg !2454

lor.lhs.false122:                                 ; preds = %if.then119
  %63 = load ptr, ptr %this, align 8, !dbg !2455
  %rt_waiter123 = getelementptr inbounds %struct.futex_q, ptr %63, i32 0, i32 5, !dbg !2456
  %64 = load ptr, ptr %rt_waiter123, align 8, !dbg !2456
  %tobool124 = icmp ne ptr %64, null, !dbg !2455
  br i1 %tobool124, label %if.then125, label %if.end126, !dbg !2457

if.then125:                                       ; preds = %lor.lhs.false122, %if.then119
  store i32 -22, ptr %ret, align 4, !dbg !2458
  br label %out_unlock, !dbg !2460

if.end126:                                        ; preds = %lor.lhs.false122
  %65 = load ptr, ptr %this, align 8, !dbg !2461
  call void @futex_wake_mark(ptr noundef %wake_q, ptr noundef %65) #15, !dbg !2462
  %66 = load i32, ptr %op_ret, align 4, !dbg !2463
  %inc127 = add i32 %66, 1, !dbg !2463
  store i32 %inc127, ptr %op_ret, align 4, !dbg !2463
  %67 = load i32, ptr %nr_wake2.addr, align 4, !dbg !2465
  %cmp128 = icmp sge i32 %inc127, %67, !dbg !2466
  br i1 %cmp128, label %if.then130, label %if.end131, !dbg !2467

if.then130:                                       ; preds = %if.end126
  br label %for.end140, !dbg !2468

if.end131:                                        ; preds = %if.end126
  br label %if.end132, !dbg !2469

if.end132:                                        ; preds = %if.end131, %for.body115
  br label %for.inc133, !dbg !2470

for.inc133:                                       ; preds = %if.end132
  %68 = load ptr, ptr %next, align 8, !dbg !2443
  store ptr %68, ptr %this, align 8, !dbg !2443
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr134) #14, !dbg !2471
  call void @llvm.dbg.declare(metadata ptr %__mptr134, metadata !2307, metadata !DIExpression()), !dbg !2471
  %69 = load ptr, ptr %next, align 8, !dbg !2471
  %list135 = getelementptr inbounds %struct.futex_q, ptr %69, i32 0, i32 0, !dbg !2471
  %node_list136 = getelementptr inbounds %struct.plist_node, ptr %list135, i32 0, i32 2, !dbg !2471
  %next137 = getelementptr inbounds %struct.list_head, ptr %node_list136, i32 0, i32 0, !dbg !2471
  %70 = load ptr, ptr %next137, align 8, !dbg !2471
  store ptr %70, ptr %__mptr134, align 8, !dbg !2471
  %71 = load ptr, ptr %__mptr134, align 8, !dbg !2471
  %add.ptr139 = getelementptr i8, ptr %71, i64 -24, !dbg !2471
  store ptr %add.ptr139, ptr %tmp138, align 8, !dbg !2471
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr134) #14, !dbg !2443
  %72 = load ptr, ptr %tmp138, align 8, !dbg !2471
  store ptr %72, ptr %next, align 8, !dbg !2443
  br label %for.cond106, !dbg !2443, !llvm.loop !2472

for.end140:                                       ; preds = %if.then130, %for.cond106
  %73 = load i32, ptr %op_ret, align 4, !dbg !2474
  %74 = load i32, ptr %ret, align 4, !dbg !2475
  %add = add i32 %74, %73, !dbg !2475
  store i32 %add, ptr %ret, align 4, !dbg !2475
  br label %if.end141, !dbg !2476

if.end141:                                        ; preds = %for.end140, %for.end
  br label %out_unlock, !dbg !2477

out_unlock:                                       ; preds = %if.end141, %if.then125, %if.then78
  call void @llvm.dbg.label(metadata !2310), !dbg !2478
  %75 = load ptr, ptr %hb1, align 8, !dbg !2479
  %76 = load ptr, ptr %hb2, align 8, !dbg !2480
  call void @double_unlock_hb(ptr noundef %75, ptr noundef %76) #15, !dbg !2481
  call void @wake_up_q(ptr noundef %wake_q) #15, !dbg !2482
  %77 = load i32, ptr %ret, align 4, !dbg !2483
  store i32 %77, ptr %retval, align 4, !dbg !2484
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2484

cleanup:                                          ; preds = %out_unlock, %if.then49, %if.then42, %if.then16, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %wake_q) #14, !dbg !2485
  call void @llvm.lifetime.end.p0(i64 4, ptr %op_ret) #14, !dbg !2485
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !2485
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #14, !dbg !2485
  call void @llvm.lifetime.end.p0(i64 8, ptr %this) #14, !dbg !2485
  call void @llvm.lifetime.end.p0(i64 8, ptr %hb2) #14, !dbg !2485
  call void @llvm.lifetime.end.p0(i64 8, ptr %hb1) #14, !dbg !2485
  call void @llvm.lifetime.end.p0(i64 24, ptr %key2) #14, !dbg !2485
  call void @llvm.lifetime.end.p0(i64 24, ptr %key1) #14, !dbg !2485
  %78 = load i32, ptr %retval, align 4, !dbg !2485
  ret i32 %78, !dbg !2485
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @double_lock_hb(ptr noundef %hb1, ptr noundef %hb2) #5 align 16 !dbg !2486 {
entry:
  %hb1.addr = alloca ptr, align 8
  %hb2.addr = alloca ptr, align 8
  %__tmp = alloca ptr, align 8
  store ptr %hb1, ptr %hb1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hb1.addr, metadata !2490, metadata !DIExpression()), !dbg !2495
  store ptr %hb2, ptr %hb2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hb2.addr, metadata !2491, metadata !DIExpression()), !dbg !2496
  %0 = load ptr, ptr %hb1.addr, align 8, !dbg !2497
  %1 = load ptr, ptr %hb2.addr, align 8, !dbg !2498
  %cmp = icmp ugt ptr %0, %1, !dbg !2499
  br i1 %cmp, label %if.then, label %if.end, !dbg !2500

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2501

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp) #14, !dbg !2502
  call void @llvm.dbg.declare(metadata ptr %__tmp, metadata !2492, metadata !DIExpression()), !dbg !2502
  %2 = load ptr, ptr %hb1.addr, align 8, !dbg !2502
  store ptr %2, ptr %__tmp, align 8, !dbg !2502
  %3 = load ptr, ptr %hb2.addr, align 8, !dbg !2502
  store ptr %3, ptr %hb1.addr, align 8, !dbg !2502
  %4 = load ptr, ptr %__tmp, align 8, !dbg !2502
  store ptr %4, ptr %hb2.addr, align 8, !dbg !2502
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp) #14, !dbg !2501
  br label %do.end, !dbg !2502

do.end:                                           ; preds = %do.body
  br label %if.end, !dbg !2502

if.end:                                           ; preds = %do.end, %entry
  %5 = load ptr, ptr %hb1.addr, align 8, !dbg !2503
  %lock = getelementptr inbounds %struct.futex_hash_bucket, ptr %5, i32 0, i32 1, !dbg !2504
  call void @spin_lock(ptr noundef %lock) #15, !dbg !2505
  %6 = load ptr, ptr %hb1.addr, align 8, !dbg !2506
  %7 = load ptr, ptr %hb2.addr, align 8, !dbg !2508
  %cmp1 = icmp ne ptr %6, %7, !dbg !2509
  br i1 %cmp1, label %if.then2, label %if.end6, !dbg !2510

if.then2:                                         ; preds = %if.end
  br label %do.body3, !dbg !2511

do.body3:                                         ; preds = %if.then2
  %8 = load ptr, ptr %hb2.addr, align 8, !dbg !2512
  %lock4 = getelementptr inbounds %struct.futex_hash_bucket, ptr %8, i32 0, i32 1, !dbg !2512
  %call = call ptr @spinlock_check(ptr noundef %lock4) #15, !dbg !2512
  call void @_raw_spin_lock(ptr noundef %call) #15, !dbg !2512
  br label %do.end5, !dbg !2512

do.end5:                                          ; preds = %do.body3
  br label %if.end6, !dbg !2512

if.end6:                                          ; preds = %do.end5, %if.end
  ret void, !dbg !2514
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @futex_atomic_op_inuser(i32 noundef %encoded_op, ptr noundef %uaddr) #0 align 16 !dbg !14 {
entry:
  %retval = alloca i32, align 4
  %encoded_op.addr = alloca i32, align 4
  %uaddr.addr = alloca ptr, align 8
  %op = alloca i32, align 4
  %cmp = alloca i32, align 4
  %oparg = alloca i32, align 4
  %cmparg = alloca i32, align 4
  %oldval = alloca i32, align 4
  %ret = alloca i32, align 4
  %comm = alloca [16 x i8], align 16
  %tmp = alloca i32, align 4
  %tmp17 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %encoded_op, ptr %encoded_op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %encoded_op.addr, metadata !1966, metadata !DIExpression()), !dbg !2515
  store ptr %uaddr, ptr %uaddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uaddr.addr, metadata !1967, metadata !DIExpression()), !dbg !2516
  call void @llvm.lifetime.start.p0(i64 4, ptr %op) #14, !dbg !2517
  call void @llvm.dbg.declare(metadata ptr %op, metadata !1968, metadata !DIExpression()), !dbg !2518
  %0 = load i32, ptr %encoded_op.addr, align 4, !dbg !2519
  %and = and i32 %0, 1879048192, !dbg !2520
  %shr = lshr i32 %and, 28, !dbg !2521
  store i32 %shr, ptr %op, align 4, !dbg !2518
  call void @llvm.lifetime.start.p0(i64 4, ptr %cmp) #14, !dbg !2522
  call void @llvm.dbg.declare(metadata ptr %cmp, metadata !1969, metadata !DIExpression()), !dbg !2523
  %1 = load i32, ptr %encoded_op.addr, align 4, !dbg !2524
  %and1 = and i32 %1, 251658240, !dbg !2525
  %shr2 = lshr i32 %and1, 24, !dbg !2526
  store i32 %shr2, ptr %cmp, align 4, !dbg !2523
  call void @llvm.lifetime.start.p0(i64 4, ptr %oparg) #14, !dbg !2527
  call void @llvm.dbg.declare(metadata ptr %oparg, metadata !1970, metadata !DIExpression()), !dbg !2528
  %2 = load i32, ptr %encoded_op.addr, align 4, !dbg !2529
  %and3 = and i32 %2, 16773120, !dbg !2530
  %shr4 = lshr i32 %and3, 12, !dbg !2531
  %call = call i32 @sign_extend32(i32 noundef %shr4, i32 noundef 11) #15, !dbg !2532
  store i32 %call, ptr %oparg, align 4, !dbg !2528
  call void @llvm.lifetime.start.p0(i64 4, ptr %cmparg) #14, !dbg !2533
  call void @llvm.dbg.declare(metadata ptr %cmparg, metadata !1971, metadata !DIExpression()), !dbg !2534
  %3 = load i32, ptr %encoded_op.addr, align 4, !dbg !2535
  %and5 = and i32 %3, 4095, !dbg !2536
  %call6 = call i32 @sign_extend32(i32 noundef %and5, i32 noundef 11) #15, !dbg !2537
  store i32 %call6, ptr %cmparg, align 4, !dbg !2534
  call void @llvm.lifetime.start.p0(i64 4, ptr %oldval) #14, !dbg !2538
  call void @llvm.dbg.declare(metadata ptr %oldval, metadata !1972, metadata !DIExpression()), !dbg !2539
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !2538
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1973, metadata !DIExpression()), !dbg !2540
  %4 = load i32, ptr %encoded_op.addr, align 4, !dbg !2541
  %and7 = and i32 %4, -2147483648, !dbg !2542
  %tobool = icmp ne i32 %and7, 0, !dbg !2542
  br i1 %tobool, label %if.then, label %if.end23, !dbg !2543

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %oparg, align 4, !dbg !2544
  %cmp8 = icmp slt i32 %5, 0, !dbg !2545
  br i1 %cmp8, label %if.then10, label %lor.lhs.false, !dbg !2546

lor.lhs.false:                                    ; preds = %if.then
  %6 = load i32, ptr %oparg, align 4, !dbg !2547
  %cmp9 = icmp sgt i32 %6, 31, !dbg !2548
  br i1 %cmp9, label %if.then10, label %if.end22, !dbg !2549

if.then10:                                        ; preds = %lor.lhs.false, %if.then
  call void @llvm.lifetime.start.p0(i64 16, ptr %comm) #14, !dbg !2550
  call void @llvm.dbg.declare(metadata ptr %comm, metadata !1974, metadata !DIExpression()), !dbg !2551
  %call11 = call i32 @___ratelimit(ptr noundef @futex_atomic_op_inuser._rs, ptr noundef @__func__.futex_atomic_op_inuser) #15, !dbg !2552
  %tobool12 = icmp ne i32 %call11, 0, !dbg !2552
  br i1 %tobool12, label %if.then13, label %if.end, !dbg !2555

if.then13:                                        ; preds = %if.then10
  br label %do.body, !dbg !2556

do.body:                                          ; preds = %if.then13
  br label %do.cond, !dbg !2558

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2558

do.end:                                           ; preds = %do.cond
  br label %do.body14, !dbg !2560

do.body14:                                        ; preds = %do.end
  br label %do.cond15, !dbg !2562

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !2562

do.end16:                                         ; preds = %do.cond15
  %arraydecay = getelementptr inbounds [16 x i8], ptr %comm, i64 0, i64 0, !dbg !2560
  %call18 = call ptr @get_current() #15, !dbg !2560
  %call19 = call ptr @__get_task_comm(ptr noundef %arraydecay, i64 noundef 16, ptr noundef %call18) #15, !dbg !2560
  store ptr %call19, ptr %tmp17, align 8, !dbg !2562
  %7 = load ptr, ptr %tmp17, align 8, !dbg !2560
  %8 = load i32, ptr %oparg, align 4, !dbg !2556
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, ptr noundef %7, i32 noundef %8) #16, !dbg !2556
  store i32 %call20, ptr %tmp, align 4, !dbg !2558
  %9 = load i32, ptr %tmp, align 4, !dbg !2556
  br label %if.end, !dbg !2552

if.end:                                           ; preds = %do.end16, %if.then10
  %10 = load i32, ptr %oparg, align 4, !dbg !2564
  %and21 = and i32 %10, 31, !dbg !2564
  store i32 %and21, ptr %oparg, align 4, !dbg !2564
  call void @llvm.lifetime.end.p0(i64 16, ptr %comm) #14, !dbg !2565
  br label %if.end22, !dbg !2566

if.end22:                                         ; preds = %if.end, %lor.lhs.false
  %11 = load i32, ptr %oparg, align 4, !dbg !2567
  %shl = shl i32 1, %11, !dbg !2568
  store i32 %shl, ptr %oparg, align 4, !dbg !2569
  br label %if.end23, !dbg !2570

if.end23:                                         ; preds = %if.end22, %entry
  call void @pagefault_disable() #15, !dbg !2571
  %12 = load i32, ptr %op, align 4, !dbg !2572
  %13 = load i32, ptr %oparg, align 4, !dbg !2573
  %14 = load ptr, ptr %uaddr.addr, align 8, !dbg !2574
  %call24 = call i32 @arch_futex_atomic_op_inuser(i32 noundef %12, i32 noundef %13, ptr noundef %oldval, ptr noundef %14) #15, !dbg !2575
  store i32 %call24, ptr %ret, align 4, !dbg !2576
  call void @pagefault_enable() #15, !dbg !2577
  %15 = load i32, ptr %ret, align 4, !dbg !2578
  %tobool25 = icmp ne i32 %15, 0, !dbg !2578
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !2580

if.then26:                                        ; preds = %if.end23
  %16 = load i32, ptr %ret, align 4, !dbg !2581
  store i32 %16, ptr %retval, align 4, !dbg !2582
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2582

if.end27:                                         ; preds = %if.end23
  %17 = load i32, ptr %cmp, align 4, !dbg !2583
  switch i32 %17, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb29
    i32 2, label %sw.bb32
    i32 5, label %sw.bb35
    i32 3, label %sw.bb38
    i32 4, label %sw.bb41
  ], !dbg !2584

sw.bb:                                            ; preds = %if.end27
  %18 = load i32, ptr %oldval, align 4, !dbg !2585
  %19 = load i32, ptr %cmparg, align 4, !dbg !2587
  %cmp28 = icmp eq i32 %18, %19, !dbg !2588
  %conv = zext i1 %cmp28 to i32, !dbg !2588
  store i32 %conv, ptr %retval, align 4, !dbg !2589
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2589

sw.bb29:                                          ; preds = %if.end27
  %20 = load i32, ptr %oldval, align 4, !dbg !2590
  %21 = load i32, ptr %cmparg, align 4, !dbg !2591
  %cmp30 = icmp ne i32 %20, %21, !dbg !2592
  %conv31 = zext i1 %cmp30 to i32, !dbg !2592
  store i32 %conv31, ptr %retval, align 4, !dbg !2593
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2593

sw.bb32:                                          ; preds = %if.end27
  %22 = load i32, ptr %oldval, align 4, !dbg !2594
  %23 = load i32, ptr %cmparg, align 4, !dbg !2595
  %cmp33 = icmp slt i32 %22, %23, !dbg !2596
  %conv34 = zext i1 %cmp33 to i32, !dbg !2596
  store i32 %conv34, ptr %retval, align 4, !dbg !2597
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2597

sw.bb35:                                          ; preds = %if.end27
  %24 = load i32, ptr %oldval, align 4, !dbg !2598
  %25 = load i32, ptr %cmparg, align 4, !dbg !2599
  %cmp36 = icmp sge i32 %24, %25, !dbg !2600
  %conv37 = zext i1 %cmp36 to i32, !dbg !2600
  store i32 %conv37, ptr %retval, align 4, !dbg !2601
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2601

sw.bb38:                                          ; preds = %if.end27
  %26 = load i32, ptr %oldval, align 4, !dbg !2602
  %27 = load i32, ptr %cmparg, align 4, !dbg !2603
  %cmp39 = icmp sle i32 %26, %27, !dbg !2604
  %conv40 = zext i1 %cmp39 to i32, !dbg !2604
  store i32 %conv40, ptr %retval, align 4, !dbg !2605
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2605

sw.bb41:                                          ; preds = %if.end27
  %28 = load i32, ptr %oldval, align 4, !dbg !2606
  %29 = load i32, ptr %cmparg, align 4, !dbg !2607
  %cmp42 = icmp sgt i32 %28, %29, !dbg !2608
  %conv43 = zext i1 %cmp42 to i32, !dbg !2608
  store i32 %conv43, ptr %retval, align 4, !dbg !2609
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2609

sw.default:                                       ; preds = %if.end27
  store i32 -38, ptr %retval, align 4, !dbg !2610
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2610

cleanup:                                          ; preds = %sw.default, %sw.bb41, %sw.bb38, %sw.bb35, %sw.bb32, %sw.bb29, %sw.bb, %if.then26
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !2611
  call void @llvm.lifetime.end.p0(i64 4, ptr %oldval) #14, !dbg !2611
  call void @llvm.lifetime.end.p0(i64 4, ptr %cmparg) #14, !dbg !2611
  call void @llvm.lifetime.end.p0(i64 4, ptr %oparg) #14, !dbg !2611
  call void @llvm.lifetime.end.p0(i64 4, ptr %cmp) #14, !dbg !2611
  call void @llvm.lifetime.end.p0(i64 4, ptr %op) #14, !dbg !2611
  %30 = load i32, ptr %retval, align 4, !dbg !2611
  ret i32 %30, !dbg !2611
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @double_unlock_hb(ptr noundef %hb1, ptr noundef %hb2) #5 align 16 !dbg !2612 {
entry:
  %hb1.addr = alloca ptr, align 8
  %hb2.addr = alloca ptr, align 8
  store ptr %hb1, ptr %hb1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hb1.addr, metadata !2614, metadata !DIExpression()), !dbg !2616
  store ptr %hb2, ptr %hb2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hb2.addr, metadata !2615, metadata !DIExpression()), !dbg !2617
  %0 = load ptr, ptr %hb1.addr, align 8, !dbg !2618
  %lock = getelementptr inbounds %struct.futex_hash_bucket, ptr %0, i32 0, i32 1, !dbg !2619
  call void @spin_unlock(ptr noundef %lock) #15, !dbg !2620
  %1 = load ptr, ptr %hb1.addr, align 8, !dbg !2621
  %2 = load ptr, ptr %hb2.addr, align 8, !dbg !2623
  %cmp = icmp ne ptr %1, %2, !dbg !2624
  br i1 %cmp, label %if.then, label %if.end, !dbg !2625

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %hb2.addr, align 8, !dbg !2626
  %lock1 = getelementptr inbounds %struct.futex_hash_bucket, ptr %3, i32 0, i32 1, !dbg !2627
  call void @spin_unlock(ptr noundef %lock1) #15, !dbg !2628
  br label %if.end, !dbg !2628

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2629
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2630 dso_local i32 @fault_in_user_writeable(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__might_resched(ptr noundef %file, i32 noundef %line, i32 noundef %offsets) #5 align 16 !dbg !2633 {
entry:
  %file.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %offsets.addr = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !2638, metadata !DIExpression()), !dbg !2641
  store i32 %line, ptr %line.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %line.addr, metadata !2639, metadata !DIExpression()), !dbg !2642
  store i32 %offsets, ptr %offsets.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offsets.addr, metadata !2640, metadata !DIExpression()), !dbg !2643
  ret void, !dbg !2644
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @_cond_resched() #7 align 16 !dbg !1962 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__cond_resched, ptr %tmp, align 8, !dbg !2645
  %0 = load ptr, ptr %tmp, align 8, !dbg !2645
  %call = call i32 %0() #15, !dbg !2647
  ret i32 %call, !dbg !2648
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @futex_wait_queue(ptr noundef %hb, ptr noundef %q, ptr noundef %timeout) #0 align 16 !dbg !2649 {
entry:
  %hb.addr = alloca ptr, align 8
  %q.addr = alloca ptr, align 8
  %timeout.addr = alloca ptr, align 8
  %__ai_ptr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %__ret = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  store ptr %hb, ptr %hb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hb.addr, metadata !2658, metadata !DIExpression()), !dbg !2669
  store ptr %q, ptr %q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !2659, metadata !DIExpression()), !dbg !2670
  store ptr %timeout, ptr %timeout.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timeout.addr, metadata !2660, metadata !DIExpression()), !dbg !2671
  br label %do.body, !dbg !2672

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !2673

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !2674

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !2673

do.body2:                                         ; preds = %do.end
  br label %do.body3, !dbg !2676

do.body3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !2677

do.end4:                                          ; preds = %do.body3
  br label %do.body5, !dbg !2676

do.body5:                                         ; preds = %do.end4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #14, !dbg !2679
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !2661, metadata !DIExpression()), !dbg !2679
  %call = call ptr @get_current() #15, !dbg !2679
  %__state = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 1, !dbg !2679
  store ptr %__state, ptr %__ai_ptr, align 8, !dbg !2679
  br label %do.body6, !dbg !2679

do.body6:                                         ; preds = %do.body5
  br label %do.cond, !dbg !2680

do.cond:                                          ; preds = %do.body6
  br label %do.end7, !dbg !2680

do.end7:                                          ; preds = %do.cond
  %0 = load ptr, ptr %__ai_ptr, align 8, !dbg !2679
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #15, !dbg !2679
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #14, !dbg !2682
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !2667, metadata !DIExpression()), !dbg !2682
  store i32 8193, ptr %__ret, align 4, !dbg !2682
  %1 = load i32, ptr %__ret, align 4, !dbg !2682
  %2 = load ptr, ptr %__ai_ptr, align 8, !dbg !2682
  %3 = call i32 asm sideeffect "xchgl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %2, i32 %1, ptr elementtype(i32) %2) #14, !dbg !2682, !srcloc !2683
  store i32 %3, ptr %__ret, align 4, !dbg !2682
  %4 = load i32, ptr %__ret, align 4, !dbg !2682
  store i32 %4, ptr %tmp8, align 4, !dbg !2682
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #14, !dbg !2679
  %5 = load i32, ptr %tmp8, align 4, !dbg !2682
  store i32 %5, ptr %tmp, align 4, !dbg !2679
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #14, !dbg !2684
  %6 = load i32, ptr %tmp, align 4, !dbg !2679
  br label %do.end10, !dbg !2684

do.end10:                                         ; preds = %do.end7
  br label %do.end12, !dbg !2676

do.end12:                                         ; preds = %do.end10
  br label %do.end14, !dbg !2673

do.end14:                                         ; preds = %do.end12
  %7 = load ptr, ptr %q.addr, align 8, !dbg !2685
  %8 = load ptr, ptr %hb.addr, align 8, !dbg !2686
  call void @futex_queue(ptr noundef %7, ptr noundef %8) #15, !dbg !2687
  %9 = load ptr, ptr %timeout.addr, align 8, !dbg !2688
  %tobool = icmp ne ptr %9, null, !dbg !2688
  br i1 %tobool, label %if.then, label %if.end, !dbg !2690

if.then:                                          ; preds = %do.end14
  %10 = load ptr, ptr %timeout.addr, align 8, !dbg !2691
  call void @hrtimer_sleeper_start_expires(ptr noundef %10, i32 noundef 0) #15, !dbg !2692
  br label %if.end, !dbg !2692

if.end:                                           ; preds = %if.then, %do.end14
  %11 = load ptr, ptr %q.addr, align 8, !dbg !2693
  %list = getelementptr inbounds %struct.futex_q, ptr %11, i32 0, i32 0, !dbg !2693
  %call15 = call i32 @plist_node_empty(ptr noundef %list) #15, !dbg !2693
  %tobool16 = icmp ne i32 %call15, 0, !dbg !2693
  %lnot = xor i1 %tobool16, true, !dbg !2693
  %lnot17 = xor i1 %lnot, true, !dbg !2693
  %lnot18 = xor i1 %lnot17, true, !dbg !2693
  %lnot.ext = zext i1 %lnot18 to i32, !dbg !2693
  %conv = sext i32 %lnot.ext to i64, !dbg !2693
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2693
  %tobool19 = icmp ne i64 %expval, 0, !dbg !2693
  br i1 %tobool19, label %if.then20, label %if.end25, !dbg !2695

if.then20:                                        ; preds = %if.end
  %12 = load ptr, ptr %timeout.addr, align 8, !dbg !2696
  %tobool21 = icmp ne ptr %12, null, !dbg !2696
  br i1 %tobool21, label %lor.lhs.false, label %if.then23, !dbg !2699

lor.lhs.false:                                    ; preds = %if.then20
  %13 = load ptr, ptr %timeout.addr, align 8, !dbg !2700
  %task = getelementptr inbounds %struct.hrtimer_sleeper, ptr %13, i32 0, i32 1, !dbg !2701
  %14 = load ptr, ptr %task, align 8, !dbg !2701
  %tobool22 = icmp ne ptr %14, null, !dbg !2700
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !2702

if.then23:                                        ; preds = %lor.lhs.false, %if.then20
  call void @schedule() #15, !dbg !2703
  br label %if.end24, !dbg !2703

if.end24:                                         ; preds = %if.then23, %lor.lhs.false
  br label %if.end25, !dbg !2704

if.end25:                                         ; preds = %if.end24, %if.end
  br label %do.body26, !dbg !2705

do.body26:                                        ; preds = %if.end25
  br label %do.body27, !dbg !2706

do.body27:                                        ; preds = %do.body26
  br label %do.end29, !dbg !2708

do.end29:                                         ; preds = %do.body27
  br label %do.body30, !dbg !2706

do.body30:                                        ; preds = %do.end29
  br label %do.body31, !dbg !2710

do.body31:                                        ; preds = %do.body30
  br label %do.end33, !dbg !2712

do.end33:                                         ; preds = %do.body31
  br label %do.body34, !dbg !2710

do.body34:                                        ; preds = %do.end33
  %call35 = call ptr @get_current() #15, !dbg !2714
  %__state36 = getelementptr inbounds %struct.task_struct, ptr %call35, i32 0, i32 1, !dbg !2714
  store volatile i32 0, ptr %__state36, align 8, !dbg !2714
  br label %do.end38, !dbg !2714

do.end38:                                         ; preds = %do.body34
  br label %do.end40, !dbg !2710

do.end40:                                         ; preds = %do.end38
  br label %do.end42, !dbg !2706

do.end42:                                         ; preds = %do.end40
  ret void, !dbg !2716
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #7 align 16 !dbg !2717 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #14, !dbg !2730
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !2722, metadata !DIExpression()), !dbg !2730
  br label %do.body, !dbg !2730

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !2731
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2724, metadata !DIExpression()), !dbg !2731
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2731
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !2731
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !2730
  br label %do.cond, !dbg !2731

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2731

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #14, !dbg !2732
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !2728, metadata !DIExpression()), !dbg !2732
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #17, !dbg !2732, !srcloc !2733
  store i64 %1, ptr %pfo_val__, align 8, !dbg !2732
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !2732
  %3 = inttoptr i64 %2 to ptr, !dbg !2732
  store ptr %3, ptr %tmp, align 8, !dbg !2732
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #14, !dbg !2730
  %4 = load ptr, ptr %tmp, align 8, !dbg !2732
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !2730
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !2730
  store ptr %5, ptr %tmp1, align 8, !dbg !2730
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #14, !dbg !2734
  %6 = load ptr, ptr %tmp1, align 8, !dbg !2730
  ret ptr %6, !dbg !2735
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !2736 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2744, metadata !DIExpression()), !dbg !2746
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2745, metadata !DIExpression()), !dbg !2747
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2748
  %1 = load i64, ptr %size.addr, align 8, !dbg !2749
  %conv = trunc i64 %1 to i32, !dbg !2749
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #15, !dbg !2750
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2751
  %3 = load i64, ptr %size.addr, align 8, !dbg !2751
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #15, !dbg !2751
  ret void, !dbg !2752
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @futex_queue(ptr noundef %q, ptr noundef %hb) #5 align 16 !dbg !2753 {
entry:
  %q.addr = alloca ptr, align 8
  %hb.addr = alloca ptr, align 8
  store ptr %q, ptr %q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !2757, metadata !DIExpression()), !dbg !2759
  store ptr %hb, ptr %hb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hb.addr, metadata !2758, metadata !DIExpression()), !dbg !2760
  %0 = load ptr, ptr %q.addr, align 8, !dbg !2761
  %1 = load ptr, ptr %hb.addr, align 8, !dbg !2762
  call void @__futex_queue(ptr noundef %0, ptr noundef %1) #15, !dbg !2763
  %2 = load ptr, ptr %hb.addr, align 8, !dbg !2764
  %lock = getelementptr inbounds %struct.futex_hash_bucket, ptr %2, i32 0, i32 1, !dbg !2765
  call void @spin_unlock(ptr noundef %lock) #15, !dbg !2766
  ret void, !dbg !2767
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2768 dso_local void @hrtimer_sleeper_start_expires(ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @plist_node_empty(ptr noundef %node) #5 align 16 !dbg !2771 {
entry:
  %node.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !2777, metadata !DIExpression()), !dbg !2778
  %0 = load ptr, ptr %node.addr, align 8, !dbg !2779
  %node_list = getelementptr inbounds %struct.plist_node, ptr %0, i32 0, i32 2, !dbg !2780
  %call = call i32 @list_empty(ptr noundef %node_list) #15, !dbg !2781
  ret i32 %call, !dbg !2782
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2783 dso_local void @schedule() #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @futex_wait_multiple(ptr noundef %vs, i32 noundef %count, ptr noundef %to) #0 align 16 !dbg !2784 {
entry:
  %retval = alloca i32, align 4
  %vs.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  %to.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %hint = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vs, ptr %vs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vs.addr, metadata !2799, metadata !DIExpression()), !dbg !2804
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !2800, metadata !DIExpression()), !dbg !2805
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !2801, metadata !DIExpression()), !dbg !2806
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !2807
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2802, metadata !DIExpression()), !dbg !2808
  call void @llvm.lifetime.start.p0(i64 4, ptr %hint) #14, !dbg !2807
  call void @llvm.dbg.declare(metadata ptr %hint, metadata !2803, metadata !DIExpression()), !dbg !2809
  store i32 0, ptr %hint, align 4, !dbg !2809
  %0 = load ptr, ptr %to.addr, align 8, !dbg !2810
  %tobool = icmp ne ptr %0, null, !dbg !2810
  br i1 %tobool, label %if.then, label %if.end, !dbg !2812

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %to.addr, align 8, !dbg !2813
  call void @hrtimer_sleeper_start_expires(ptr noundef %1, i32 noundef 0) #15, !dbg !2814
  br label %if.end, !dbg !2814

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond, !dbg !2815

while.cond:                                       ; preds = %if.end31, %if.end
  br label %while.body, !dbg !2815

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %vs.addr, align 8, !dbg !2816
  %3 = load i32, ptr %count.addr, align 4, !dbg !2818
  %call = call i32 @futex_wait_multiple_setup(ptr noundef %2, i32 noundef %3, ptr noundef %hint) #15, !dbg !2819
  store i32 %call, ptr %ret, align 4, !dbg !2820
  %4 = load i32, ptr %ret, align 4, !dbg !2821
  %tobool1 = icmp ne i32 %4, 0, !dbg !2821
  br i1 %tobool1, label %if.then2, label %if.end5, !dbg !2823

if.then2:                                         ; preds = %while.body
  %5 = load i32, ptr %ret, align 4, !dbg !2824
  %cmp = icmp sgt i32 %5, 0, !dbg !2827
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !2828

if.then3:                                         ; preds = %if.then2
  %6 = load i32, ptr %hint, align 4, !dbg !2829
  store i32 %6, ptr %ret, align 4, !dbg !2831
  br label %if.end4, !dbg !2832

if.end4:                                          ; preds = %if.then3, %if.then2
  %7 = load i32, ptr %ret, align 4, !dbg !2833
  store i32 %7, ptr %retval, align 4, !dbg !2834
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2834

if.end5:                                          ; preds = %while.body
  %8 = load ptr, ptr %vs.addr, align 8, !dbg !2835
  %9 = load i32, ptr %count.addr, align 4, !dbg !2836
  %10 = load ptr, ptr %to.addr, align 8, !dbg !2837
  call void @futex_sleep_multiple(ptr noundef %8, i32 noundef %9, ptr noundef %10) #15, !dbg !2838
  br label %do.body, !dbg !2839

do.body:                                          ; preds = %if.end5
  br label %do.body6, !dbg !2840

do.body6:                                         ; preds = %do.body
  br label %do.cond, !dbg !2842

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !2842

do.end:                                           ; preds = %do.cond
  br label %do.body7, !dbg !2840

do.body7:                                         ; preds = %do.end
  br label %do.body8, !dbg !2844

do.body8:                                         ; preds = %do.body7
  br label %do.cond9, !dbg !2846

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !2846

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !2844

do.body11:                                        ; preds = %do.end10
  %call12 = call ptr @get_current() #15, !dbg !2848
  %__state = getelementptr inbounds %struct.task_struct, ptr %call12, i32 0, i32 1, !dbg !2848
  store volatile i32 0, ptr %__state, align 8, !dbg !2848
  br label %do.cond13, !dbg !2848

do.cond13:                                        ; preds = %do.body11
  br label %do.end14, !dbg !2848

do.end14:                                         ; preds = %do.cond13
  br label %do.cond15, !dbg !2844

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !2844

do.end16:                                         ; preds = %do.cond15
  br label %do.cond17, !dbg !2840

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !2840

do.end18:                                         ; preds = %do.cond17
  %11 = load ptr, ptr %vs.addr, align 8, !dbg !2850
  %12 = load i32, ptr %count.addr, align 4, !dbg !2851
  %call19 = call i32 @unqueue_multiple(ptr noundef %11, i32 noundef %12) #15, !dbg !2852
  store i32 %call19, ptr %ret, align 4, !dbg !2853
  %13 = load i32, ptr %ret, align 4, !dbg !2854
  %cmp20 = icmp sge i32 %13, 0, !dbg !2856
  br i1 %cmp20, label %if.then21, label %if.end22, !dbg !2857

if.then21:                                        ; preds = %do.end18
  %14 = load i32, ptr %ret, align 4, !dbg !2858
  store i32 %14, ptr %retval, align 4, !dbg !2859
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2859

if.end22:                                         ; preds = %do.end18
  %15 = load ptr, ptr %to.addr, align 8, !dbg !2860
  %tobool23 = icmp ne ptr %15, null, !dbg !2860
  br i1 %tobool23, label %land.lhs.true, label %if.else, !dbg !2862

land.lhs.true:                                    ; preds = %if.end22
  %16 = load ptr, ptr %to.addr, align 8, !dbg !2863
  %task = getelementptr inbounds %struct.hrtimer_sleeper, ptr %16, i32 0, i32 1, !dbg !2864
  %17 = load ptr, ptr %task, align 8, !dbg !2864
  %tobool24 = icmp ne ptr %17, null, !dbg !2863
  br i1 %tobool24, label %if.else, label %if.then25, !dbg !2865

if.then25:                                        ; preds = %land.lhs.true
  store i32 -110, ptr %retval, align 4, !dbg !2866
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2866

if.else:                                          ; preds = %land.lhs.true, %if.end22
  %call26 = call ptr @get_current() #15, !dbg !2867
  %call27 = call i32 @signal_pending(ptr noundef %call26) #15, !dbg !2869
  %tobool28 = icmp ne i32 %call27, 0, !dbg !2869
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !2870

if.then29:                                        ; preds = %if.else
  store i32 -512, ptr %retval, align 4, !dbg !2871
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2871

if.end30:                                         ; preds = %if.else
  br label %if.end31

if.end31:                                         ; preds = %if.end30
  br label %while.cond, !dbg !2815, !llvm.loop !2872

cleanup:                                          ; preds = %if.then29, %if.then25, %if.then21, %if.end4
  call void @llvm.lifetime.end.p0(i64 4, ptr %hint) #14, !dbg !2874
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !2874
  %18 = load i32, ptr %retval, align 4, !dbg !2874
  ret i32 %18, !dbg !2874
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @futex_wait_multiple_setup(ptr noundef %vs, i32 noundef %count, ptr noundef %woken) #0 align 16 !dbg !2875 {
entry:
  %retval = alloca i32, align 4
  %vs.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  %woken.addr = alloca ptr, align 8
  %hb = alloca ptr, align 8
  %retry = alloca i8, align 1
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %uval = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp4 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ai_ptr = alloca ptr, align 8
  %tmp33 = alloca i32, align 4
  %__ret = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  %uaddr45 = alloca ptr, align 8
  %q50 = alloca ptr, align 8
  %val = alloca i32, align 4
  %tmp91 = alloca i64, align 8
  %__ret_gu = alloca i32, align 4
  %__val_gu = alloca i32, align 4
  %__tmp = alloca i64, align 8
  %tmp95 = alloca i32, align 4
  %tmp97 = alloca i64, align 8
  store ptr %vs, ptr %vs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vs.addr, metadata !2879, metadata !DIExpression()), !dbg !2917
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !2880, metadata !DIExpression()), !dbg !2918
  store ptr %woken, ptr %woken.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %woken.addr, metadata !2881, metadata !DIExpression()), !dbg !2919
  call void @llvm.lifetime.start.p0(i64 8, ptr %hb) #14, !dbg !2920
  call void @llvm.dbg.declare(metadata ptr %hb, metadata !2882, metadata !DIExpression()), !dbg !2921
  call void @llvm.lifetime.start.p0(i64 1, ptr %retry) #14, !dbg !2922
  call void @llvm.dbg.declare(metadata ptr %retry, metadata !2883, metadata !DIExpression()), !dbg !2923
  store i8 0, ptr %retry, align 1, !dbg !2923
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !2924
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2884, metadata !DIExpression()), !dbg !2925
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !2924
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2885, metadata !DIExpression()), !dbg !2926
  call void @llvm.lifetime.start.p0(i64 4, ptr %uval) #14, !dbg !2927
  call void @llvm.dbg.declare(metadata ptr %uval, metadata !2886, metadata !DIExpression()), !dbg !2928
  br label %retry1, !dbg !2927

retry1:                                           ; preds = %cleanup, %entry
  call void @llvm.dbg.label(metadata !2887), !dbg !2929
  store i32 0, ptr %i, align 4, !dbg !2930
  br label %for.cond, !dbg !2931

for.cond:                                         ; preds = %for.inc, %retry1
  %0 = load i32, ptr %i, align 4, !dbg !2932
  %1 = load i32, ptr %count.addr, align 4, !dbg !2933
  %cmp = icmp slt i32 %0, %1, !dbg !2934
  br i1 %cmp, label %for.body, label %for.end, !dbg !2935

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %vs.addr, align 8, !dbg !2936
  %3 = load i32, ptr %i, align 4, !dbg !2938
  %idxprom = sext i32 %3 to i64, !dbg !2936
  %arrayidx = getelementptr %struct.futex_vector, ptr %2, i64 %idxprom, !dbg !2936
  %w = getelementptr inbounds %struct.futex_vector, ptr %arrayidx, i32 0, i32 0, !dbg !2939
  %flags = getelementptr inbounds %struct.futex_waitv, ptr %w, i32 0, i32 2, !dbg !2940
  %4 = load i32, ptr %flags, align 8, !dbg !2940
  %and = and i32 %4, 128, !dbg !2941
  %tobool = icmp ne i32 %and, 0, !dbg !2941
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !2942

land.lhs.true:                                    ; preds = %for.body
  %5 = load i8, ptr %retry, align 1, !dbg !2943, !range !2944, !noundef !479
  %tobool2 = trunc i8 %5 to i1, !dbg !2943
  br i1 %tobool2, label %if.then, label %if.end, !dbg !2945

if.then:                                          ; preds = %land.lhs.true
  br label %for.inc, !dbg !2946

if.end:                                           ; preds = %land.lhs.true, %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #14, !dbg !2947
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !2888, metadata !DIExpression()), !dbg !2947
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #14, !dbg !2947
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !2894, metadata !DIExpression()), !dbg !2947
  %cmp3 = icmp eq ptr %__dummy, %__dummy2, !dbg !2947
  %conv = zext i1 %cmp3 to i32, !dbg !2947
  store i32 1, ptr %tmp, align 4, !dbg !2947
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #14, !dbg !2948
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #14, !dbg !2948
  %6 = load i32, ptr %tmp, align 4, !dbg !2947
  %7 = load ptr, ptr %vs.addr, align 8, !dbg !2948
  %8 = load i32, ptr %i, align 4, !dbg !2948
  %idxprom5 = sext i32 %8 to i64, !dbg !2948
  %arrayidx6 = getelementptr %struct.futex_vector, ptr %7, i64 %idxprom5, !dbg !2948
  %w7 = getelementptr inbounds %struct.futex_vector, ptr %arrayidx6, i32 0, i32 0, !dbg !2948
  %uaddr = getelementptr inbounds %struct.futex_waitv, ptr %w7, i32 0, i32 1, !dbg !2948
  %9 = load i64, ptr %uaddr, align 8, !dbg !2948
  %10 = inttoptr i64 %9 to ptr, !dbg !2948
  store ptr %10, ptr %tmp4, align 8, !dbg !2948
  %11 = load ptr, ptr %tmp4, align 8, !dbg !2948
  %12 = load ptr, ptr %vs.addr, align 8, !dbg !2949
  %13 = load i32, ptr %i, align 4, !dbg !2950
  %idxprom8 = sext i32 %13 to i64, !dbg !2949
  %arrayidx9 = getelementptr %struct.futex_vector, ptr %12, i64 %idxprom8, !dbg !2949
  %w10 = getelementptr inbounds %struct.futex_vector, ptr %arrayidx9, i32 0, i32 0, !dbg !2951
  %flags11 = getelementptr inbounds %struct.futex_waitv, ptr %w10, i32 0, i32 2, !dbg !2952
  %14 = load i32, ptr %flags11, align 8, !dbg !2952
  %and12 = and i32 %14, 128, !dbg !2953
  %tobool13 = icmp ne i32 %and12, 0, !dbg !2954
  %lnot = xor i1 %tobool13, true, !dbg !2954
  %15 = load ptr, ptr %vs.addr, align 8, !dbg !2955
  %16 = load i32, ptr %i, align 4, !dbg !2956
  %idxprom14 = sext i32 %16 to i64, !dbg !2955
  %arrayidx15 = getelementptr %struct.futex_vector, ptr %15, i64 %idxprom14, !dbg !2955
  %q = getelementptr inbounds %struct.futex_vector, ptr %arrayidx15, i32 0, i32 1, !dbg !2957
  %key = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 3, !dbg !2958
  %call = call i32 @get_futex_key(ptr noundef %11, i1 noundef zeroext %lnot, ptr noundef %key, i32 noundef 0) #15, !dbg !2959
  store i32 %call, ptr %ret, align 4, !dbg !2960
  %17 = load i32, ptr %ret, align 4, !dbg !2961
  %tobool16 = icmp ne i32 %17, 0, !dbg !2961
  %lnot17 = xor i1 %tobool16, true, !dbg !2961
  %lnot18 = xor i1 %lnot17, true, !dbg !2961
  %lnot.ext = zext i1 %lnot18 to i32, !dbg !2961
  %conv19 = sext i32 %lnot.ext to i64, !dbg !2961
  %expval = call i64 @llvm.expect.i64(i64 %conv19, i64 0), !dbg !2961
  %tobool20 = icmp ne i64 %expval, 0, !dbg !2961
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !2963

if.then21:                                        ; preds = %if.end
  %18 = load i32, ptr %ret, align 4, !dbg !2964
  store i32 %18, ptr %retval, align 4, !dbg !2965
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup113, !dbg !2965

if.end22:                                         ; preds = %if.end
  br label %for.inc, !dbg !2966

for.inc:                                          ; preds = %if.end22, %if.then
  %19 = load i32, ptr %i, align 4, !dbg !2967
  %inc = add i32 %19, 1, !dbg !2967
  store i32 %inc, ptr %i, align 4, !dbg !2967
  br label %for.cond, !dbg !2968, !llvm.loop !2969

for.end:                                          ; preds = %for.cond
  br label %do.body, !dbg !2971

do.body:                                          ; preds = %for.end
  br label %do.body23, !dbg !2972

do.body23:                                        ; preds = %do.body
  br label %do.cond, !dbg !2973

do.cond:                                          ; preds = %do.body23
  br label %do.end, !dbg !2973

do.end:                                           ; preds = %do.cond
  br label %do.body24, !dbg !2972

do.body24:                                        ; preds = %do.end
  br label %do.body25, !dbg !2975

do.body25:                                        ; preds = %do.body24
  br label %do.cond26, !dbg !2976

do.cond26:                                        ; preds = %do.body25
  br label %do.end27, !dbg !2976

do.end27:                                         ; preds = %do.cond26
  br label %do.body28, !dbg !2975

do.body28:                                        ; preds = %do.end27
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #14, !dbg !2978
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !2895, metadata !DIExpression()), !dbg !2978
  %call29 = call ptr @get_current() #15, !dbg !2978
  %__state = getelementptr inbounds %struct.task_struct, ptr %call29, i32 0, i32 1, !dbg !2978
  store ptr %__state, ptr %__ai_ptr, align 8, !dbg !2978
  br label %do.body30, !dbg !2978

do.body30:                                        ; preds = %do.body28
  br label %do.cond31, !dbg !2979

do.cond31:                                        ; preds = %do.body30
  br label %do.end32, !dbg !2979

do.end32:                                         ; preds = %do.cond31
  %20 = load ptr, ptr %__ai_ptr, align 8, !dbg !2978
  call void @instrument_atomic_read_write(ptr noundef %20, i64 noundef 4) #15, !dbg !2978
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #14, !dbg !2981
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !2900, metadata !DIExpression()), !dbg !2981
  store i32 8193, ptr %__ret, align 4, !dbg !2981
  %21 = load i32, ptr %__ret, align 4, !dbg !2981
  %22 = load ptr, ptr %__ai_ptr, align 8, !dbg !2981
  %23 = call i32 asm sideeffect "xchgl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %22, i32 %21, ptr elementtype(i32) %22) #14, !dbg !2981, !srcloc !2982
  store i32 %23, ptr %__ret, align 4, !dbg !2981
  %24 = load i32, ptr %__ret, align 4, !dbg !2981
  store i32 %24, ptr %tmp34, align 4, !dbg !2981
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #14, !dbg !2978
  %25 = load i32, ptr %tmp34, align 4, !dbg !2981
  store i32 %25, ptr %tmp33, align 4, !dbg !2978
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #14, !dbg !2983
  %26 = load i32, ptr %tmp33, align 4, !dbg !2978
  br label %do.cond35, !dbg !2983

do.cond35:                                        ; preds = %do.end32
  br label %do.end36, !dbg !2983

do.end36:                                         ; preds = %do.cond35
  br label %do.cond37, !dbg !2975

do.cond37:                                        ; preds = %do.end36
  br label %do.end38, !dbg !2975

do.end38:                                         ; preds = %do.cond37
  br label %do.cond39, !dbg !2972

do.cond39:                                        ; preds = %do.end38
  br label %do.end40, !dbg !2972

do.end40:                                         ; preds = %do.cond39
  store i32 0, ptr %i, align 4, !dbg !2984
  br label %for.cond41, !dbg !2985

for.cond41:                                       ; preds = %for.inc110, %do.end40
  %27 = load i32, ptr %i, align 4, !dbg !2986
  %28 = load i32, ptr %count.addr, align 4, !dbg !2987
  %cmp42 = icmp slt i32 %27, %28, !dbg !2988
  br i1 %cmp42, label %for.body44, label %for.end112, !dbg !2989

for.body44:                                       ; preds = %for.cond41
  call void @llvm.lifetime.start.p0(i64 8, ptr %uaddr45) #14, !dbg !2990
  call void @llvm.dbg.declare(metadata ptr %uaddr45, metadata !2902, metadata !DIExpression()), !dbg !2991
  %29 = load ptr, ptr %vs.addr, align 8, !dbg !2992
  %30 = load i32, ptr %i, align 4, !dbg !2993
  %idxprom46 = sext i32 %30 to i64, !dbg !2992
  %arrayidx47 = getelementptr %struct.futex_vector, ptr %29, i64 %idxprom46, !dbg !2992
  %w48 = getelementptr inbounds %struct.futex_vector, ptr %arrayidx47, i32 0, i32 0, !dbg !2994
  %uaddr49 = getelementptr inbounds %struct.futex_waitv, ptr %w48, i32 0, i32 1, !dbg !2995
  %31 = load i64, ptr %uaddr49, align 8, !dbg !2995
  %32 = inttoptr i64 %31 to ptr, !dbg !2996
  store ptr %32, ptr %uaddr45, align 8, !dbg !2991
  call void @llvm.lifetime.start.p0(i64 8, ptr %q50) #14, !dbg !2997
  call void @llvm.dbg.declare(metadata ptr %q50, metadata !2906, metadata !DIExpression()), !dbg !2998
  %33 = load ptr, ptr %vs.addr, align 8, !dbg !2999
  %34 = load i32, ptr %i, align 4, !dbg !3000
  %idxprom51 = sext i32 %34 to i64, !dbg !2999
  %arrayidx52 = getelementptr %struct.futex_vector, ptr %33, i64 %idxprom51, !dbg !2999
  %q53 = getelementptr inbounds %struct.futex_vector, ptr %arrayidx52, i32 0, i32 1, !dbg !3001
  store ptr %q53, ptr %q50, align 8, !dbg !2998
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #14, !dbg !3002
  call void @llvm.dbg.declare(metadata ptr %val, metadata !2907, metadata !DIExpression()), !dbg !3003
  %35 = load ptr, ptr %vs.addr, align 8, !dbg !3004
  %36 = load i32, ptr %i, align 4, !dbg !3005
  %idxprom54 = sext i32 %36 to i64, !dbg !3004
  %arrayidx55 = getelementptr %struct.futex_vector, ptr %35, i64 %idxprom54, !dbg !3004
  %w56 = getelementptr inbounds %struct.futex_vector, ptr %arrayidx55, i32 0, i32 0, !dbg !3006
  %val57 = getelementptr inbounds %struct.futex_waitv, ptr %w56, i32 0, i32 0, !dbg !3007
  %37 = load i64, ptr %val57, align 8, !dbg !3007
  %conv58 = trunc i64 %37 to i32, !dbg !3008
  store i32 %conv58, ptr %val, align 4, !dbg !3003
  %38 = load ptr, ptr %q50, align 8, !dbg !3009
  %call59 = call ptr @futex_q_lock(ptr noundef %38) #15, !dbg !3010
  store ptr %call59, ptr %hb, align 8, !dbg !3011
  %39 = load ptr, ptr %uaddr45, align 8, !dbg !3012
  %call60 = call i32 @futex_get_value_locked(ptr noundef %uval, ptr noundef %39) #15, !dbg !3013
  store i32 %call60, ptr %ret, align 4, !dbg !3014
  %40 = load i32, ptr %ret, align 4, !dbg !3015
  %tobool61 = icmp ne i32 %40, 0, !dbg !3015
  br i1 %tobool61, label %if.end66, label %land.lhs.true62, !dbg !3017

land.lhs.true62:                                  ; preds = %for.body44
  %41 = load i32, ptr %uval, align 4, !dbg !3018
  %42 = load i32, ptr %val, align 4, !dbg !3019
  %cmp63 = icmp eq i32 %41, %42, !dbg !3020
  br i1 %cmp63, label %if.then65, label %if.end66, !dbg !3021

if.then65:                                        ; preds = %land.lhs.true62
  %43 = load ptr, ptr %q50, align 8, !dbg !3022
  %44 = load ptr, ptr %hb, align 8, !dbg !3024
  call void @futex_queue(ptr noundef %43, ptr noundef %44) #15, !dbg !3025
  store i32 20, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3026

if.end66:                                         ; preds = %land.lhs.true62, %for.body44
  %45 = load ptr, ptr %hb, align 8, !dbg !3027
  call void @futex_q_unlock(ptr noundef %45) #15, !dbg !3028
  br label %do.body67, !dbg !3029

do.body67:                                        ; preds = %if.end66
  br label %do.body68, !dbg !3030

do.body68:                                        ; preds = %do.body67
  br label %do.cond69, !dbg !3032

do.cond69:                                        ; preds = %do.body68
  br label %do.end70, !dbg !3032

do.end70:                                         ; preds = %do.cond69
  br label %do.body71, !dbg !3030

do.body71:                                        ; preds = %do.end70
  br label %do.body72, !dbg !3034

do.body72:                                        ; preds = %do.body71
  br label %do.cond73, !dbg !3036

do.cond73:                                        ; preds = %do.body72
  br label %do.end74, !dbg !3036

do.end74:                                         ; preds = %do.cond73
  br label %do.body75, !dbg !3034

do.body75:                                        ; preds = %do.end74
  %call76 = call ptr @get_current() #15, !dbg !3038
  %__state77 = getelementptr inbounds %struct.task_struct, ptr %call76, i32 0, i32 1, !dbg !3038
  store volatile i32 0, ptr %__state77, align 8, !dbg !3038
  br label %do.cond78, !dbg !3038

do.cond78:                                        ; preds = %do.body75
  br label %do.end79, !dbg !3038

do.end79:                                         ; preds = %do.cond78
  br label %do.cond80, !dbg !3034

do.cond80:                                        ; preds = %do.end79
  br label %do.end81, !dbg !3034

do.end81:                                         ; preds = %do.cond80
  br label %do.cond82, !dbg !3030

do.cond82:                                        ; preds = %do.end81
  br label %do.end83, !dbg !3030

do.end83:                                         ; preds = %do.cond82
  %46 = load ptr, ptr %vs.addr, align 8, !dbg !3040
  %47 = load i32, ptr %i, align 4, !dbg !3041
  %call84 = call i32 @unqueue_multiple(ptr noundef %46, i32 noundef %47) #15, !dbg !3042
  %48 = load ptr, ptr %woken.addr, align 8, !dbg !3043
  store i32 %call84, ptr %48, align 4, !dbg !3044
  %49 = load ptr, ptr %woken.addr, align 8, !dbg !3045
  %50 = load i32, ptr %49, align 4, !dbg !3047
  %cmp85 = icmp sge i32 %50, 0, !dbg !3048
  br i1 %cmp85, label %if.then87, label %if.end88, !dbg !3049

if.then87:                                        ; preds = %do.end83
  store i32 1, ptr %retval, align 4, !dbg !3050
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3050

if.end88:                                         ; preds = %do.end83
  %51 = load i32, ptr %ret, align 4, !dbg !3051
  %tobool89 = icmp ne i32 %51, 0, !dbg !3051
  br i1 %tobool89, label %if.then90, label %if.end103, !dbg !3052

if.then90:                                        ; preds = %if.end88
  call void @might_fault() #15, !dbg !3053
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_gu) #14, !dbg !3054
  call void @llvm.dbg.declare(metadata ptr %__ret_gu, metadata !2908, metadata !DIExpression()), !dbg !3054
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_gu) #14, !dbg !3054
  call void @llvm.dbg.declare(metadata ptr %__val_gu, metadata !2914, metadata !DIExpression()), !dbg !3054
  %52 = call i64 @llvm.read_register.i64(metadata !1979), !dbg !3054
  %53 = load ptr, ptr %uaddr45, align 8, !dbg !3054
  %54 = call { ptr, i32, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %53, i64 4, i64 %52) #14, !dbg !3054, !srcloc !3055
  %asmresult = extractvalue { ptr, i32, i64 } %54, 0, !dbg !3054
  %asmresult92 = extractvalue { ptr, i32, i64 } %54, 1, !dbg !3054
  %asmresult93 = extractvalue { ptr, i32, i64 } %54, 2, !dbg !3054
  %55 = ptrtoint ptr %asmresult to i64, !dbg !3054
  %56 = trunc i64 %55 to i32, !dbg !3054
  store i32 %56, ptr %__ret_gu, align 4, !dbg !3054
  store i32 %asmresult92, ptr %__val_gu, align 4, !dbg !3054
  call void @llvm.write_register.i64(metadata !1979, i64 %asmresult93), !dbg !3054
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp) #14, !dbg !3056
  call void @llvm.dbg.declare(metadata ptr %__tmp, metadata !2915, metadata !DIExpression()), !dbg !3056
  %57 = load i32, ptr %__val_gu, align 4, !dbg !3056
  %conv94 = zext i32 %57 to i64, !dbg !3056
  store i64 %conv94, ptr %__tmp, align 8, !dbg !3056
  call void @kmsan_unpoison_memory(ptr noundef %__tmp, i64 noundef 8) #15, !dbg !3056
  %58 = load i64, ptr %__tmp, align 8, !dbg !3056
  %conv96 = trunc i64 %58 to i32, !dbg !3056
  store i32 %conv96, ptr %__val_gu, align 4, !dbg !3056
  store i32 %conv96, ptr %tmp95, align 4, !dbg !3056
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp) #14, !dbg !3054
  %59 = load i32, ptr %tmp95, align 4, !dbg !3056
  %60 = load i32, ptr %__val_gu, align 4, !dbg !3054
  store i32 %60, ptr %uval, align 4, !dbg !3054
  %61 = load i32, ptr %__ret_gu, align 4, !dbg !3054
  %conv98 = sext i32 %61 to i64, !dbg !3054
  %expval99 = call i64 @llvm.expect.i64(i64 %conv98, i64 0), !dbg !3054
  store i64 %expval99, ptr %tmp97, align 8, !dbg !3054
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_gu) #14, !dbg !3053
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_gu) #14, !dbg !3053
  %62 = load i64, ptr %tmp97, align 8, !dbg !3054
  store i64 %62, ptr %tmp91, align 8, !dbg !3053
  %63 = load i64, ptr %tmp91, align 8, !dbg !3053
  %tobool100 = icmp ne i64 %63, 0, !dbg !3057
  br i1 %tobool100, label %if.then101, label %if.end102, !dbg !3058

if.then101:                                       ; preds = %if.then90
  store i32 -14, ptr %retval, align 4, !dbg !3059
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3059

if.end102:                                        ; preds = %if.then90
  store i8 1, ptr %retry, align 1, !dbg !3060
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3061

if.end103:                                        ; preds = %if.end88
  %64 = load i32, ptr %uval, align 4, !dbg !3062
  %65 = load i32, ptr %val, align 4, !dbg !3064
  %cmp104 = icmp ne i32 %64, %65, !dbg !3065
  br i1 %cmp104, label %if.then106, label %if.end107, !dbg !3066

if.then106:                                       ; preds = %if.end103
  store i32 -11, ptr %retval, align 4, !dbg !3067
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3067

if.end107:                                        ; preds = %if.end103
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3068
  br label %cleanup, !dbg !3068

cleanup:                                          ; preds = %if.end107, %if.then106, %if.end102, %if.then101, %if.then87, %if.then65
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #14, !dbg !3068
  call void @llvm.lifetime.end.p0(i64 8, ptr %q50) #14, !dbg !3068
  call void @llvm.lifetime.end.p0(i64 8, ptr %uaddr45) #14, !dbg !3068
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup113 [
    i32 0, label %cleanup.cont
    i32 20, label %for.inc110
    i32 2, label %retry1
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc110, !dbg !3069

for.inc110:                                       ; preds = %cleanup.cont, %cleanup
  %66 = load i32, ptr %i, align 4, !dbg !3070
  %inc111 = add i32 %66, 1, !dbg !3070
  store i32 %inc111, ptr %i, align 4, !dbg !3070
  br label %for.cond41, !dbg !3071, !llvm.loop !3072

for.end112:                                       ; preds = %for.cond41
  store i32 0, ptr %retval, align 4, !dbg !3074
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup113, !dbg !3074

cleanup113:                                       ; preds = %for.end112, %cleanup, %if.then21
  call void @llvm.lifetime.end.p0(i64 4, ptr %uval) #14, !dbg !3075
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !3075
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !3075
  call void @llvm.lifetime.end.p0(i64 1, ptr %retry) #14, !dbg !3075
  call void @llvm.lifetime.end.p0(i64 8, ptr %hb) #14, !dbg !3075
  %67 = load i32, ptr %retval, align 4, !dbg !3075
  ret i32 %67, !dbg !3075
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @futex_sleep_multiple(ptr noundef %vs, i32 noundef %count, ptr noundef %to) #0 align 16 !dbg !3076 {
entry:
  %vs.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  %to.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %vs, ptr %vs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vs.addr, metadata !3080, metadata !DIExpression()), !dbg !3083
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !3081, metadata !DIExpression()), !dbg !3084
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !3082, metadata !DIExpression()), !dbg !3085
  %0 = load ptr, ptr %to.addr, align 8, !dbg !3086
  %tobool = icmp ne ptr %0, null, !dbg !3086
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !3088

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %to.addr, align 8, !dbg !3089
  %task = getelementptr inbounds %struct.hrtimer_sleeper, ptr %1, i32 0, i32 1, !dbg !3090
  %2 = load ptr, ptr %task, align 8, !dbg !3090
  %tobool1 = icmp ne ptr %2, null, !dbg !3089
  br i1 %tobool1, label %if.end, label %if.then, !dbg !3091

if.then:                                          ; preds = %land.lhs.true
  br label %return, !dbg !3092

if.end:                                           ; preds = %land.lhs.true, %entry
  br label %for.cond, !dbg !3093

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, ptr %count.addr, align 4, !dbg !3094
  %tobool2 = icmp ne i32 %3, 0, !dbg !3097
  br i1 %tobool2, label %for.body, label %for.end, !dbg !3097

for.body:                                         ; preds = %for.cond
  br label %do.body, !dbg !3098

do.body:                                          ; preds = %for.body
  br label %do.end, !dbg !3102

do.end:                                           ; preds = %do.body
  %4 = load ptr, ptr %vs.addr, align 8, !dbg !3098
  %q = getelementptr inbounds %struct.futex_vector, ptr %4, i32 0, i32 1, !dbg !3098
  %lock_ptr = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 2, !dbg !3098
  %5 = load volatile ptr, ptr %lock_ptr, align 8, !dbg !3098
  store ptr %5, ptr %tmp, align 8, !dbg !3102
  %6 = load ptr, ptr %tmp, align 8, !dbg !3098
  %tobool3 = icmp ne ptr %6, null, !dbg !3104
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !3105

if.then4:                                         ; preds = %do.end
  br label %return, !dbg !3106

if.end5:                                          ; preds = %do.end
  br label %for.inc, !dbg !3107

for.inc:                                          ; preds = %if.end5
  %7 = load i32, ptr %count.addr, align 4, !dbg !3108
  %dec = add i32 %7, -1, !dbg !3108
  store i32 %dec, ptr %count.addr, align 4, !dbg !3108
  %8 = load ptr, ptr %vs.addr, align 8, !dbg !3109
  %incdec.ptr = getelementptr %struct.futex_vector, ptr %8, i32 1, !dbg !3109
  store ptr %incdec.ptr, ptr %vs.addr, align 8, !dbg !3109
  br label %for.cond, !dbg !3110, !llvm.loop !3111

for.end:                                          ; preds = %for.cond
  call void @schedule() #15, !dbg !3113
  br label %return, !dbg !3114

return:                                           ; preds = %for.end, %if.then4, %if.then
  ret void, !dbg !3114
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @unqueue_multiple(ptr noundef %v, i32 noundef %count) #0 align 16 !dbg !3115 {
entry:
  %v.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3119, metadata !DIExpression()), !dbg !3123
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !3120, metadata !DIExpression()), !dbg !3124
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !3125
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3121, metadata !DIExpression()), !dbg !3126
  store i32 -1, ptr %ret, align 4, !dbg !3126
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !3125
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3122, metadata !DIExpression()), !dbg !3127
  store i32 0, ptr %i, align 4, !dbg !3128
  br label %for.cond, !dbg !3130

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !3131
  %1 = load i32, ptr %count.addr, align 4, !dbg !3133
  %cmp = icmp slt i32 %0, %1, !dbg !3134
  br i1 %cmp, label %for.body, label %for.end, !dbg !3135

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3136
  %3 = load i32, ptr %i, align 4, !dbg !3139
  %idxprom = sext i32 %3 to i64, !dbg !3136
  %arrayidx = getelementptr %struct.futex_vector, ptr %2, i64 %idxprom, !dbg !3136
  %q = getelementptr inbounds %struct.futex_vector, ptr %arrayidx, i32 0, i32 1, !dbg !3140
  %call = call i32 @futex_unqueue(ptr noundef %q) #15, !dbg !3141
  %tobool = icmp ne i32 %call, 0, !dbg !3141
  br i1 %tobool, label %if.end, label %if.then, !dbg !3142

if.then:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4, !dbg !3143
  store i32 %4, ptr %ret, align 4, !dbg !3144
  br label %if.end, !dbg !3145

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !3146

for.inc:                                          ; preds = %if.end
  %5 = load i32, ptr %i, align 4, !dbg !3147
  %inc = add i32 %5, 1, !dbg !3147
  store i32 %inc, ptr %i, align 4, !dbg !3147
  br label %for.cond, !dbg !3148, !llvm.loop !3149

for.end:                                          ; preds = %for.cond
  %6 = load i32, ptr %ret, align 4, !dbg !3151
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !3152
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !3152
  ret i32 %6, !dbg !3153
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @signal_pending(ptr noundef %p) #5 align 16 !dbg !3154 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3158, metadata !DIExpression()), !dbg !3159
  %0 = load ptr, ptr %p.addr, align 8, !dbg !3160
  %call = call i32 @test_tsk_thread_flag(ptr noundef %0, i32 noundef 17) #15, !dbg !3160
  %tobool = icmp ne i32 %call, 0, !dbg !3160
  %lnot = xor i1 %tobool, true, !dbg !3160
  %lnot1 = xor i1 %lnot, true, !dbg !3160
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3160
  %conv = sext i32 %lnot.ext to i64, !dbg !3160
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3160
  %tobool2 = icmp ne i64 %expval, 0, !dbg !3160
  br i1 %tobool2, label %if.then, label %if.end, !dbg !3162

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !3163
  br label %return, !dbg !3163

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8, !dbg !3164
  %call3 = call i32 @task_sigpending(ptr noundef %1) #15, !dbg !3165
  store i32 %call3, ptr %retval, align 4, !dbg !3166
  br label %return, !dbg !3166

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !3167
  ret i32 %2, !dbg !3167
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @futex_wait_setup(ptr noundef %uaddr, i32 noundef %val, i32 noundef %flags, ptr noundef %q, ptr noundef %hb) #0 align 16 !dbg !3168 {
entry:
  %retval = alloca i32, align 4
  %uaddr.addr = alloca ptr, align 8
  %val.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %q.addr = alloca ptr, align 8
  %hb.addr = alloca ptr, align 8
  %uval = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_gu = alloca i32, align 4
  %__val_gu = alloca i32, align 4
  %__tmp = alloca i64, align 8
  %tmp10 = alloca i32, align 4
  %tmp12 = alloca i64, align 8
  store ptr %uaddr, ptr %uaddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uaddr.addr, metadata !3173, metadata !DIExpression()), !dbg !3190
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !3174, metadata !DIExpression()), !dbg !3191
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3175, metadata !DIExpression()), !dbg !3192
  store ptr %q, ptr %q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !3176, metadata !DIExpression()), !dbg !3193
  store ptr %hb, ptr %hb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hb.addr, metadata !3177, metadata !DIExpression()), !dbg !3194
  call void @llvm.lifetime.start.p0(i64 4, ptr %uval) #14, !dbg !3195
  call void @llvm.dbg.declare(metadata ptr %uval, metadata !3178, metadata !DIExpression()), !dbg !3196
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !3197
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3179, metadata !DIExpression()), !dbg !3198
  br label %retry, !dbg !3197

retry:                                            ; preds = %if.end22, %entry
  call void @llvm.dbg.label(metadata !3180), !dbg !3199
  %0 = load ptr, ptr %uaddr.addr, align 8, !dbg !3200
  %1 = load i32, ptr %flags.addr, align 4, !dbg !3201
  %and = and i32 %1, 1, !dbg !3202
  %tobool = icmp ne i32 %and, 0, !dbg !3201
  %2 = load ptr, ptr %q.addr, align 8, !dbg !3203
  %key = getelementptr inbounds %struct.futex_q, ptr %2, i32 0, i32 3, !dbg !3204
  %call = call i32 @get_futex_key(ptr noundef %0, i1 noundef zeroext %tobool, ptr noundef %key, i32 noundef 0) #15, !dbg !3205
  store i32 %call, ptr %ret, align 4, !dbg !3206
  %3 = load i32, ptr %ret, align 4, !dbg !3207
  %cmp = icmp ne i32 %3, 0, !dbg !3207
  %lnot = xor i1 %cmp, true, !dbg !3207
  %lnot1 = xor i1 %lnot, true, !dbg !3207
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3207
  %conv = sext i32 %lnot.ext to i64, !dbg !3207
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3207
  %tobool2 = icmp ne i64 %expval, 0, !dbg !3207
  br i1 %tobool2, label %if.then, label %if.end, !dbg !3209

if.then:                                          ; preds = %retry
  %4 = load i32, ptr %ret, align 4, !dbg !3210
  store i32 %4, ptr %retval, align 4, !dbg !3211
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3211

if.end:                                           ; preds = %retry
  br label %retry_private, !dbg !3207

retry_private:                                    ; preds = %if.then21, %if.end
  call void @llvm.dbg.label(metadata !3181), !dbg !3212
  %5 = load ptr, ptr %q.addr, align 8, !dbg !3213
  %call3 = call ptr @futex_q_lock(ptr noundef %5) #15, !dbg !3214
  %6 = load ptr, ptr %hb.addr, align 8, !dbg !3215
  store ptr %call3, ptr %6, align 8, !dbg !3216
  %7 = load ptr, ptr %uaddr.addr, align 8, !dbg !3217
  %call4 = call i32 @futex_get_value_locked(ptr noundef %uval, ptr noundef %7) #15, !dbg !3218
  store i32 %call4, ptr %ret, align 4, !dbg !3219
  %8 = load i32, ptr %ret, align 4, !dbg !3220
  %tobool5 = icmp ne i32 %8, 0, !dbg !3220
  br i1 %tobool5, label %if.then6, label %if.end23, !dbg !3221

if.then6:                                         ; preds = %retry_private
  %9 = load ptr, ptr %hb.addr, align 8, !dbg !3222
  %10 = load ptr, ptr %9, align 8, !dbg !3223
  call void @futex_q_unlock(ptr noundef %10) #15, !dbg !3224
  call void @might_fault() #15, !dbg !3225
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_gu) #14, !dbg !3226
  call void @llvm.dbg.declare(metadata ptr %__ret_gu, metadata !3182, metadata !DIExpression()), !dbg !3226
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_gu) #14, !dbg !3226
  call void @llvm.dbg.declare(metadata ptr %__val_gu, metadata !3187, metadata !DIExpression()), !dbg !3226
  %11 = call i64 @llvm.read_register.i64(metadata !1979), !dbg !3226
  %12 = load ptr, ptr %uaddr.addr, align 8, !dbg !3226
  %13 = call { ptr, i32, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %12, i64 4, i64 %11) #14, !dbg !3226, !srcloc !3227
  %asmresult = extractvalue { ptr, i32, i64 } %13, 0, !dbg !3226
  %asmresult7 = extractvalue { ptr, i32, i64 } %13, 1, !dbg !3226
  %asmresult8 = extractvalue { ptr, i32, i64 } %13, 2, !dbg !3226
  %14 = ptrtoint ptr %asmresult to i64, !dbg !3226
  %15 = trunc i64 %14 to i32, !dbg !3226
  store i32 %15, ptr %__ret_gu, align 4, !dbg !3226
  store i32 %asmresult7, ptr %__val_gu, align 4, !dbg !3226
  call void @llvm.write_register.i64(metadata !1979, i64 %asmresult8), !dbg !3226
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp) #14, !dbg !3228
  call void @llvm.dbg.declare(metadata ptr %__tmp, metadata !3188, metadata !DIExpression()), !dbg !3228
  %16 = load i32, ptr %__val_gu, align 4, !dbg !3228
  %conv9 = zext i32 %16 to i64, !dbg !3228
  store i64 %conv9, ptr %__tmp, align 8, !dbg !3228
  call void @kmsan_unpoison_memory(ptr noundef %__tmp, i64 noundef 8) #15, !dbg !3228
  %17 = load i64, ptr %__tmp, align 8, !dbg !3228
  %conv11 = trunc i64 %17 to i32, !dbg !3228
  store i32 %conv11, ptr %__val_gu, align 4, !dbg !3228
  store i32 %conv11, ptr %tmp10, align 4, !dbg !3228
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp) #14, !dbg !3226
  %18 = load i32, ptr %tmp10, align 4, !dbg !3228
  %19 = load i32, ptr %__val_gu, align 4, !dbg !3226
  store i32 %19, ptr %uval, align 4, !dbg !3226
  %20 = load i32, ptr %__ret_gu, align 4, !dbg !3226
  %conv13 = sext i32 %20 to i64, !dbg !3226
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !3226
  store i64 %expval14, ptr %tmp12, align 8, !dbg !3226
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_gu) #14, !dbg !3225
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_gu) #14, !dbg !3225
  %21 = load i64, ptr %tmp12, align 8, !dbg !3226
  store i64 %21, ptr %tmp, align 8, !dbg !3225
  %22 = load i64, ptr %tmp, align 8, !dbg !3225
  %conv15 = trunc i64 %22 to i32, !dbg !3229
  store i32 %conv15, ptr %ret, align 4, !dbg !3230
  %23 = load i32, ptr %ret, align 4, !dbg !3231
  %tobool16 = icmp ne i32 %23, 0, !dbg !3231
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !3233

if.then17:                                        ; preds = %if.then6
  %24 = load i32, ptr %ret, align 4, !dbg !3234
  store i32 %24, ptr %retval, align 4, !dbg !3235
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3235

if.end18:                                         ; preds = %if.then6
  %25 = load i32, ptr %flags.addr, align 4, !dbg !3236
  %and19 = and i32 %25, 1, !dbg !3238
  %tobool20 = icmp ne i32 %and19, 0, !dbg !3238
  br i1 %tobool20, label %if.end22, label %if.then21, !dbg !3239

if.then21:                                        ; preds = %if.end18
  br label %retry_private, !dbg !3240

if.end22:                                         ; preds = %if.end18
  br label %retry, !dbg !3241

if.end23:                                         ; preds = %retry_private
  %26 = load i32, ptr %uval, align 4, !dbg !3242
  %27 = load i32, ptr %val.addr, align 4, !dbg !3244
  %cmp24 = icmp ne i32 %26, %27, !dbg !3245
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !3246

if.then26:                                        ; preds = %if.end23
  %28 = load ptr, ptr %hb.addr, align 8, !dbg !3247
  %29 = load ptr, ptr %28, align 8, !dbg !3249
  call void @futex_q_unlock(ptr noundef %29) #15, !dbg !3250
  store i32 -11, ptr %ret, align 4, !dbg !3251
  br label %if.end27, !dbg !3252

if.end27:                                         ; preds = %if.then26, %if.end23
  %30 = load i32, ptr %ret, align 4, !dbg !3253
  store i32 %30, ptr %retval, align 4, !dbg !3254
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3254

cleanup:                                          ; preds = %if.end27, %if.then17, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !3255
  call void @llvm.lifetime.end.p0(i64 4, ptr %uval) #14, !dbg !3255
  %31 = load i32, ptr %retval, align 4, !dbg !3255
  ret i32 %31, !dbg !3255
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3256 dso_local ptr @futex_q_lock(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3259 dso_local i32 @futex_get_value_locked(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3262 dso_local void @futex_q_unlock(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_fault() #5 align 16 !dbg !3265 {
entry:
  ret void, !dbg !3266
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #8

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_unpoison_memory(ptr noundef %address, i64 noundef %size) #5 align 16 !dbg !3267 {
entry:
  %address.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !3272, metadata !DIExpression()), !dbg !3274
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3273, metadata !DIExpression()), !dbg !3275
  ret void, !dbg !3276
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @futex_wait(ptr noundef %uaddr, i32 noundef %flags, i32 noundef %val, ptr noundef %abs_time, i32 noundef %bitset) #0 align 16 !dbg !3277 {
entry:
  %retval = alloca i32, align 4
  %uaddr.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %abs_time.addr = alloca ptr, align 8
  %bitset.addr = alloca i32, align 4
  %timeout = alloca %struct.hrtimer_sleeper, align 8
  %to = alloca ptr, align 8
  %restart = alloca ptr, align 8
  %hb = alloca ptr, align 8
  %q = alloca %struct.futex_q, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %uaddr, ptr %uaddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uaddr.addr, metadata !3282, metadata !DIExpression()), !dbg !3295
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3283, metadata !DIExpression()), !dbg !3296
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !3284, metadata !DIExpression()), !dbg !3297
  store ptr %abs_time, ptr %abs_time.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %abs_time.addr, metadata !3285, metadata !DIExpression()), !dbg !3298
  store i32 %bitset, ptr %bitset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bitset.addr, metadata !3286, metadata !DIExpression()), !dbg !3299
  call void @llvm.lifetime.start.p0(i64 72, ptr %timeout) #14, !dbg !3300
  call void @llvm.dbg.declare(metadata ptr %timeout, metadata !3287, metadata !DIExpression()), !dbg !3301
  call void @llvm.lifetime.start.p0(i64 8, ptr %to) #14, !dbg !3300
  call void @llvm.dbg.declare(metadata ptr %to, metadata !3288, metadata !DIExpression()), !dbg !3302
  call void @llvm.lifetime.start.p0(i64 8, ptr %restart) #14, !dbg !3303
  call void @llvm.dbg.declare(metadata ptr %restart, metadata !3289, metadata !DIExpression()), !dbg !3304
  call void @llvm.lifetime.start.p0(i64 8, ptr %hb) #14, !dbg !3305
  call void @llvm.dbg.declare(metadata ptr %hb, metadata !3290, metadata !DIExpression()), !dbg !3306
  call void @llvm.lifetime.start.p0(i64 112, ptr %q) #14, !dbg !3307
  call void @llvm.dbg.declare(metadata ptr %q, metadata !3291, metadata !DIExpression()), !dbg !3308
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %q, ptr align 8 @futex_q_init, i64 112, i1 false), !dbg !3309
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !3310
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3292, metadata !DIExpression()), !dbg !3311
  %0 = load i32, ptr %bitset.addr, align 4, !dbg !3312
  %tobool = icmp ne i32 %0, 0, !dbg !3312
  br i1 %tobool, label %if.end, label %if.then, !dbg !3314

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !3315
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3315

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %bitset.addr, align 4, !dbg !3316
  %bitset1 = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 7, !dbg !3317
  store i32 %1, ptr %bitset1, align 8, !dbg !3318
  %2 = load ptr, ptr %abs_time.addr, align 8, !dbg !3319
  %3 = load i32, ptr %flags.addr, align 4, !dbg !3320
  %call = call ptr @get_current() #15, !dbg !3321
  %timer_slack_ns = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 173, !dbg !3322
  %4 = load i64, ptr %timer_slack_ns, align 16, !dbg !3322
  %call2 = call ptr @futex_setup_timer(ptr noundef %2, ptr noundef %timeout, i32 noundef %3, i64 noundef %4) #15, !dbg !3323
  store ptr %call2, ptr %to, align 8, !dbg !3324
  br label %retry, !dbg !3325

retry:                                            ; preds = %if.then18, %if.end
  call void @llvm.dbg.label(metadata !3293), !dbg !3326
  %5 = load ptr, ptr %uaddr.addr, align 8, !dbg !3327
  %6 = load i32, ptr %val.addr, align 4, !dbg !3328
  %7 = load i32, ptr %flags.addr, align 4, !dbg !3329
  %call3 = call i32 @futex_wait_setup(ptr noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %q, ptr noundef %hb) #15, !dbg !3330
  store i32 %call3, ptr %ret, align 4, !dbg !3331
  %8 = load i32, ptr %ret, align 4, !dbg !3332
  %tobool4 = icmp ne i32 %8, 0, !dbg !3332
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !3334

if.then5:                                         ; preds = %retry
  br label %out, !dbg !3335

if.end6:                                          ; preds = %retry
  %9 = load ptr, ptr %hb, align 8, !dbg !3336
  %10 = load ptr, ptr %to, align 8, !dbg !3337
  call void @futex_wait_queue(ptr noundef %9, ptr noundef %q, ptr noundef %10) #15, !dbg !3338
  store i32 0, ptr %ret, align 4, !dbg !3339
  %call7 = call i32 @futex_unqueue(ptr noundef %q) #15, !dbg !3340
  %tobool8 = icmp ne i32 %call7, 0, !dbg !3340
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !3342

if.then9:                                         ; preds = %if.end6
  br label %out, !dbg !3343

if.end10:                                         ; preds = %if.end6
  store i32 -110, ptr %ret, align 4, !dbg !3344
  %11 = load ptr, ptr %to, align 8, !dbg !3345
  %tobool11 = icmp ne ptr %11, null, !dbg !3345
  br i1 %tobool11, label %land.lhs.true, label %if.end14, !dbg !3347

land.lhs.true:                                    ; preds = %if.end10
  %12 = load ptr, ptr %to, align 8, !dbg !3348
  %task = getelementptr inbounds %struct.hrtimer_sleeper, ptr %12, i32 0, i32 1, !dbg !3349
  %13 = load ptr, ptr %task, align 8, !dbg !3349
  %tobool12 = icmp ne ptr %13, null, !dbg !3348
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !3350

if.then13:                                        ; preds = %land.lhs.true
  br label %out, !dbg !3351

if.end14:                                         ; preds = %land.lhs.true, %if.end10
  %call15 = call ptr @get_current() #15, !dbg !3352
  %call16 = call i32 @signal_pending(ptr noundef %call15) #15, !dbg !3354
  %tobool17 = icmp ne i32 %call16, 0, !dbg !3354
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !3355

if.then18:                                        ; preds = %if.end14
  br label %retry, !dbg !3356

if.end19:                                         ; preds = %if.end14
  store i32 -512, ptr %ret, align 4, !dbg !3357
  %14 = load ptr, ptr %abs_time.addr, align 8, !dbg !3358
  %tobool20 = icmp ne ptr %14, null, !dbg !3358
  br i1 %tobool20, label %if.end22, label %if.then21, !dbg !3360

if.then21:                                        ; preds = %if.end19
  br label %out, !dbg !3361

if.end22:                                         ; preds = %if.end19
  %call23 = call ptr @get_current() #15, !dbg !3362
  %restart_block = getelementptr inbounds %struct.task_struct, ptr %call23, i32 0, i32 61, !dbg !3363
  store ptr %restart_block, ptr %restart, align 8, !dbg !3364
  %15 = load ptr, ptr %uaddr.addr, align 8, !dbg !3365
  %16 = load ptr, ptr %restart, align 8, !dbg !3366
  %17 = getelementptr inbounds %struct.restart_block, ptr %16, i32 0, i32 2, !dbg !3367
  %uaddr24 = getelementptr inbounds %struct.anon.4, ptr %17, i32 0, i32 0, !dbg !3368
  store ptr %15, ptr %uaddr24, align 8, !dbg !3369
  %18 = load i32, ptr %val.addr, align 4, !dbg !3370
  %19 = load ptr, ptr %restart, align 8, !dbg !3371
  %20 = getelementptr inbounds %struct.restart_block, ptr %19, i32 0, i32 2, !dbg !3372
  %val25 = getelementptr inbounds %struct.anon.4, ptr %20, i32 0, i32 1, !dbg !3373
  store i32 %18, ptr %val25, align 8, !dbg !3374
  %21 = load ptr, ptr %abs_time.addr, align 8, !dbg !3375
  %22 = load i64, ptr %21, align 8, !dbg !3376
  %23 = load ptr, ptr %restart, align 8, !dbg !3377
  %24 = getelementptr inbounds %struct.restart_block, ptr %23, i32 0, i32 2, !dbg !3378
  %time = getelementptr inbounds %struct.anon.4, ptr %24, i32 0, i32 4, !dbg !3379
  store i64 %22, ptr %time, align 8, !dbg !3380
  %25 = load i32, ptr %bitset.addr, align 4, !dbg !3381
  %26 = load ptr, ptr %restart, align 8, !dbg !3382
  %27 = getelementptr inbounds %struct.restart_block, ptr %26, i32 0, i32 2, !dbg !3383
  %bitset26 = getelementptr inbounds %struct.anon.4, ptr %27, i32 0, i32 3, !dbg !3384
  store i32 %25, ptr %bitset26, align 8, !dbg !3385
  %28 = load i32, ptr %flags.addr, align 4, !dbg !3386
  %or = or i32 %28, 4, !dbg !3387
  %29 = load ptr, ptr %restart, align 8, !dbg !3388
  %30 = getelementptr inbounds %struct.restart_block, ptr %29, i32 0, i32 2, !dbg !3389
  %flags27 = getelementptr inbounds %struct.anon.4, ptr %30, i32 0, i32 2, !dbg !3390
  store i32 %or, ptr %flags27, align 4, !dbg !3391
  %31 = load ptr, ptr %restart, align 8, !dbg !3392
  %call28 = call i64 @set_restart_fn(ptr noundef %31, ptr noundef @futex_wait_restart) #15, !dbg !3393
  %conv = trunc i64 %call28 to i32, !dbg !3393
  store i32 %conv, ptr %ret, align 4, !dbg !3394
  br label %out, !dbg !3395

out:                                              ; preds = %if.end22, %if.then21, %if.then13, %if.then9, %if.then5
  call void @llvm.dbg.label(metadata !3294), !dbg !3396
  %32 = load ptr, ptr %to, align 8, !dbg !3397
  %tobool29 = icmp ne ptr %32, null, !dbg !3397
  br i1 %tobool29, label %if.then30, label %if.end33, !dbg !3399

if.then30:                                        ; preds = %out
  %33 = load ptr, ptr %to, align 8, !dbg !3400
  %timer = getelementptr inbounds %struct.hrtimer_sleeper, ptr %33, i32 0, i32 0, !dbg !3402
  %call31 = call i32 @hrtimer_cancel(ptr noundef %timer) #15, !dbg !3403
  %34 = load ptr, ptr %to, align 8, !dbg !3404
  %timer32 = getelementptr inbounds %struct.hrtimer_sleeper, ptr %34, i32 0, i32 0, !dbg !3405
  call void @destroy_hrtimer_on_stack(ptr noundef %timer32) #15, !dbg !3406
  br label %if.end33, !dbg !3407

if.end33:                                         ; preds = %if.then30, %out
  %35 = load i32, ptr %ret, align 4, !dbg !3408
  store i32 %35, ptr %retval, align 4, !dbg !3409
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3409

cleanup:                                          ; preds = %if.end33, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !3410
  call void @llvm.lifetime.end.p0(i64 112, ptr %q) #14, !dbg !3410
  call void @llvm.lifetime.end.p0(i64 8, ptr %hb) #14, !dbg !3410
  call void @llvm.lifetime.end.p0(i64 8, ptr %restart) #14, !dbg !3410
  call void @llvm.lifetime.end.p0(i64 8, ptr %to) #14, !dbg !3410
  call void @llvm.lifetime.end.p0(i64 72, ptr %timeout) #14, !dbg !3410
  %36 = load i32, ptr %retval, align 4, !dbg !3410
  ret i32 %36, !dbg !3410
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3411 dso_local ptr @futex_setup_timer(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3414 dso_local i32 @futex_unqueue(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @set_restart_fn(ptr noundef %restart, ptr noundef %fn) #5 align 16 !dbg !3417 {
entry:
  %restart.addr = alloca ptr, align 8
  %fn.addr = alloca ptr, align 8
  store ptr %restart, ptr %restart.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %restart.addr, metadata !3422, metadata !DIExpression()), !dbg !3424
  store ptr %fn, ptr %fn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fn.addr, metadata !3423, metadata !DIExpression()), !dbg !3425
  %0 = load ptr, ptr %fn.addr, align 8, !dbg !3426
  %1 = load ptr, ptr %restart.addr, align 8, !dbg !3427
  %fn1 = getelementptr inbounds %struct.restart_block, ptr %1, i32 0, i32 1, !dbg !3428
  store ptr %0, ptr %fn1, align 8, !dbg !3429
  br label %do.body, !dbg !3430

do.body:                                          ; preds = %entry
  %call = call ptr @get_current() #15, !dbg !3431
  %status = getelementptr inbounds %struct.thread_info, ptr %call, i32 0, i32 2, !dbg !3431
  %2 = load i32, ptr %status, align 8, !dbg !3431
  %conv = zext i32 %2 to i64, !dbg !3431
  %3 = load ptr, ptr %restart.addr, align 8, !dbg !3431
  %arch_data = getelementptr inbounds %struct.restart_block, ptr %3, i32 0, i32 0, !dbg !3431
  store i64 %conv, ptr %arch_data, align 8, !dbg !3431
  br label %do.end, !dbg !3431

do.end:                                           ; preds = %do.body
  ret i64 -516, !dbg !3433
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @futex_wait_restart(ptr noundef %restart) #0 align 16 !dbg !3434 {
entry:
  %restart.addr = alloca ptr, align 8
  %uaddr = alloca ptr, align 8
  %t = alloca i64, align 8
  %tp = alloca ptr, align 8
  store ptr %restart, ptr %restart.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %restart.addr, metadata !3436, metadata !DIExpression()), !dbg !3440
  call void @llvm.lifetime.start.p0(i64 8, ptr %uaddr) #14, !dbg !3441
  call void @llvm.dbg.declare(metadata ptr %uaddr, metadata !3437, metadata !DIExpression()), !dbg !3442
  %0 = load ptr, ptr %restart.addr, align 8, !dbg !3443
  %1 = getelementptr inbounds %struct.restart_block, ptr %0, i32 0, i32 2, !dbg !3444
  %uaddr1 = getelementptr inbounds %struct.anon.4, ptr %1, i32 0, i32 0, !dbg !3445
  %2 = load ptr, ptr %uaddr1, align 8, !dbg !3445
  store ptr %2, ptr %uaddr, align 8, !dbg !3442
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #14, !dbg !3446
  call void @llvm.dbg.declare(metadata ptr %t, metadata !3438, metadata !DIExpression()), !dbg !3447
  call void @llvm.lifetime.start.p0(i64 8, ptr %tp) #14, !dbg !3446
  call void @llvm.dbg.declare(metadata ptr %tp, metadata !3439, metadata !DIExpression()), !dbg !3448
  store ptr null, ptr %tp, align 8, !dbg !3448
  %3 = load ptr, ptr %restart.addr, align 8, !dbg !3449
  %4 = getelementptr inbounds %struct.restart_block, ptr %3, i32 0, i32 2, !dbg !3451
  %flags = getelementptr inbounds %struct.anon.4, ptr %4, i32 0, i32 2, !dbg !3452
  %5 = load i32, ptr %flags, align 4, !dbg !3452
  %and = and i32 %5, 4, !dbg !3453
  %tobool = icmp ne i32 %and, 0, !dbg !3453
  br i1 %tobool, label %if.then, label %if.end, !dbg !3454

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %restart.addr, align 8, !dbg !3455
  %7 = getelementptr inbounds %struct.restart_block, ptr %6, i32 0, i32 2, !dbg !3457
  %time = getelementptr inbounds %struct.anon.4, ptr %7, i32 0, i32 4, !dbg !3458
  %8 = load i64, ptr %time, align 8, !dbg !3458
  store i64 %8, ptr %t, align 8, !dbg !3459
  store ptr %t, ptr %tp, align 8, !dbg !3460
  br label %if.end, !dbg !3461

if.end:                                           ; preds = %if.then, %entry
  %9 = load ptr, ptr %restart.addr, align 8, !dbg !3462
  %fn = getelementptr inbounds %struct.restart_block, ptr %9, i32 0, i32 1, !dbg !3463
  store ptr @do_no_restart_syscall, ptr %fn, align 8, !dbg !3464
  %10 = load ptr, ptr %uaddr, align 8, !dbg !3465
  %11 = load ptr, ptr %restart.addr, align 8, !dbg !3466
  %12 = getelementptr inbounds %struct.restart_block, ptr %11, i32 0, i32 2, !dbg !3467
  %flags2 = getelementptr inbounds %struct.anon.4, ptr %12, i32 0, i32 2, !dbg !3468
  %13 = load i32, ptr %flags2, align 4, !dbg !3468
  %14 = load ptr, ptr %restart.addr, align 8, !dbg !3469
  %15 = getelementptr inbounds %struct.restart_block, ptr %14, i32 0, i32 2, !dbg !3470
  %val = getelementptr inbounds %struct.anon.4, ptr %15, i32 0, i32 1, !dbg !3471
  %16 = load i32, ptr %val, align 8, !dbg !3471
  %17 = load ptr, ptr %tp, align 8, !dbg !3472
  %18 = load ptr, ptr %restart.addr, align 8, !dbg !3473
  %19 = getelementptr inbounds %struct.restart_block, ptr %18, i32 0, i32 2, !dbg !3474
  %bitset = getelementptr inbounds %struct.anon.4, ptr %19, i32 0, i32 3, !dbg !3475
  %20 = load i32, ptr %bitset, align 8, !dbg !3475
  %call = call i32 @futex_wait(ptr noundef %10, i32 noundef %13, i32 noundef %16, ptr noundef %17, i32 noundef %20) #15, !dbg !3476
  %conv = sext i32 %call to i64, !dbg !3477
  call void @llvm.lifetime.end.p0(i64 8, ptr %tp) #14, !dbg !3478
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #14, !dbg !3478
  call void @llvm.lifetime.end.p0(i64 8, ptr %uaddr) #14, !dbg !3478
  ret i64 %conv, !dbg !3479
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3480 dso_local i32 @hrtimer_cancel(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @destroy_hrtimer_on_stack(ptr noundef %timer) #5 align 16 !dbg !3483 {
entry:
  %timer.addr = alloca ptr, align 8
  store ptr %timer, ptr %timer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timer.addr, metadata !3487, metadata !DIExpression()), !dbg !3488
  ret void, !dbg !3489
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_inc(ptr noundef %r) #5 align 16 !dbg !3490 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !3495, metadata !DIExpression()), !dbg !3496
  %0 = load ptr, ptr %r.addr, align 8, !dbg !3497
  call void @__refcount_inc(ptr noundef %0, ptr noundef null) #15, !dbg !3498
  ret void, !dbg !3499
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_inc(ptr noundef %r, ptr noundef %oldp) #5 align 16 !dbg !3500 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !3504, metadata !DIExpression()), !dbg !3506
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !3505, metadata !DIExpression()), !dbg !3507
  %0 = load ptr, ptr %r.addr, align 8, !dbg !3508
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !3509
  call void @__refcount_add(i32 noundef 1, ptr noundef %0, ptr noundef %1) #15, !dbg !3510
  ret void, !dbg !3511
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_add(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #5 align 16 !dbg !3512 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3516, metadata !DIExpression()), !dbg !3520
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !3517, metadata !DIExpression()), !dbg !3521
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !3518, metadata !DIExpression()), !dbg !3522
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #14, !dbg !3523
  call void @llvm.dbg.declare(metadata ptr %old, metadata !3519, metadata !DIExpression()), !dbg !3524
  %0 = load i32, ptr %i.addr, align 4, !dbg !3525
  %1 = load ptr, ptr %r.addr, align 8, !dbg !3526
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !3527
  %call = call i32 @atomic_fetch_add_relaxed(i32 noundef %0, ptr noundef %refs) #15, !dbg !3528
  store i32 %call, ptr %old, align 4, !dbg !3524
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !3529
  %tobool = icmp ne ptr %2, null, !dbg !3529
  br i1 %tobool, label %if.then, label %if.end, !dbg !3531

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !3532
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !3533
  store i32 %3, ptr %4, align 4, !dbg !3534
  br label %if.end, !dbg !3535

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !3536
  %tobool1 = icmp ne i32 %5, 0, !dbg !3536
  %lnot = xor i1 %tobool1, true, !dbg !3536
  %lnot2 = xor i1 %lnot, true, !dbg !3536
  %lnot3 = xor i1 %lnot2, true, !dbg !3536
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !3536
  %conv = sext i32 %lnot.ext to i64, !dbg !3536
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3536
  %tobool4 = icmp ne i64 %expval, 0, !dbg !3536
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !3538

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %r.addr, align 8, !dbg !3539
  call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 2) #15, !dbg !3540
  br label %if.end18, !dbg !3540

if.else:                                          ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !3541
  %cmp = icmp slt i32 %7, 0, !dbg !3541
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !3541

lor.rhs:                                          ; preds = %if.else
  %8 = load i32, ptr %old, align 4, !dbg !3541
  %9 = load i32, ptr %i.addr, align 4, !dbg !3541
  %add = add i32 %8, %9, !dbg !3541
  %cmp7 = icmp slt i32 %add, 0, !dbg !3541
  br label %lor.end, !dbg !3541

lor.end:                                          ; preds = %lor.rhs, %if.else
  %10 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %10, true, !dbg !3541
  %lnot11 = xor i1 %lnot9, true, !dbg !3541
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !3541
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !3541
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !3541
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !3541
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !3543

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !3544
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 1) #15, !dbg !3545
  br label %if.end17, !dbg !3545

if.end17:                                         ; preds = %if.then16, %lor.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #14, !dbg !3546
  ret void, !dbg !3546
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #7 align 16 !dbg !3547 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3553, metadata !DIExpression()), !dbg !3555
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3554, metadata !DIExpression()), !dbg !3556
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3557
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #15, !dbg !3558
  %1 = load i32, ptr %i.addr, align 4, !dbg !3559
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3560
  %call = call i32 @raw_atomic_fetch_add_relaxed(i32 noundef %1, ptr noundef %2) #15, !dbg !3561
  ret i32 %call, !dbg !3562
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3563 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #7 align 16 !dbg !3566 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3569, metadata !DIExpression()), !dbg !3571
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3570, metadata !DIExpression()), !dbg !3572
  %0 = load i32, ptr %i.addr, align 4, !dbg !3573
  %1 = load ptr, ptr %v.addr, align 8, !dbg !3574
  %call = call i32 @arch_atomic_fetch_add(i32 noundef %0, ptr noundef %1) #15, !dbg !3575
  ret i32 %call, !dbg !3576
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_add(i32 noundef %i, ptr noundef %v) #7 align 16 !dbg !3577 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3580, metadata !DIExpression()), !dbg !3584
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3581, metadata !DIExpression()), !dbg !3585
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #14, !dbg !3586
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !3582, metadata !DIExpression()), !dbg !3586
  %0 = load i32, ptr %i.addr, align 4, !dbg !3586
  store i32 %0, ptr %__ret, align 4, !dbg !3586
  %1 = load i32, ptr %__ret, align 4, !dbg !3586
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3586
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !3586
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #14, !dbg !3586, !srcloc !3587
  store i32 %3, ptr %__ret, align 4, !dbg !3586
  %4 = load i32, ptr %__ret, align 4, !dbg !3586
  store i32 %4, ptr %tmp, align 4, !dbg !3586
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #14, !dbg !3588
  %5 = load i32, ptr %tmp, align 4, !dbg !3586
  ret i32 %5, !dbg !3589
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #7 align 16 !dbg !3590 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3596, metadata !DIExpression()), !dbg !3597
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3598
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #15, !dbg !3599
  %1 = load ptr, ptr %v.addr, align 8, !dbg !3600
  %call = call i32 @raw_atomic_read(ptr noundef %1) #15, !dbg !3601
  ret i32 %call, !dbg !3602
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !3603 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3605, metadata !DIExpression()), !dbg !3607
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3606, metadata !DIExpression()), !dbg !3608
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3609
  %1 = load i64, ptr %size.addr, align 8, !dbg !3610
  %conv = trunc i64 %1 to i32, !dbg !3610
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #15, !dbg !3611
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3612
  %3 = load i64, ptr %size.addr, align 8, !dbg !3612
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #15, !dbg !3612
  ret void, !dbg !3613
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #7 align 16 !dbg !3614 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3616, metadata !DIExpression()), !dbg !3617
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3618
  %call = call i32 @arch_atomic_read(ptr noundef %0) #15, !dbg !3619
  ret i32 %call, !dbg !3620
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !3621 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3626, metadata !DIExpression()), !dbg !3628
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3627, metadata !DIExpression()), !dbg !3629
  ret i1 true, !dbg !3630
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !3631 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !3636, metadata !DIExpression()), !dbg !3639
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3637, metadata !DIExpression()), !dbg !3640
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !3638, metadata !DIExpression()), !dbg !3641
  ret void, !dbg !3642
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #7 align 16 !dbg !3643 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3645, metadata !DIExpression()), !dbg !3646
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3647
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !3647
  %1 = load volatile i32, ptr %counter, align 4, !dbg !3647
  ret i32 %1, !dbg !3648
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3649 dso_local void @_raw_spin_lock(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3654 dso_local void @_raw_spin_unlock(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #7 align 16 !dbg !3655 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !3659, metadata !DIExpression()), !dbg !3660
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !3661
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !3662
  ret ptr %1, !dbg !3663
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sign_extend32(i32 noundef %value, i32 noundef %index) #7 align 16 !dbg !3664 {
entry:
  %value.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %shift = alloca i8, align 1
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !3669, metadata !DIExpression()), !dbg !3672
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !3670, metadata !DIExpression()), !dbg !3673
  call void @llvm.lifetime.start.p0(i64 1, ptr %shift) #14, !dbg !3674
  call void @llvm.dbg.declare(metadata ptr %shift, metadata !3671, metadata !DIExpression()), !dbg !3675
  %0 = load i32, ptr %index.addr, align 4, !dbg !3676
  %sub = sub i32 31, %0, !dbg !3677
  %conv = trunc i32 %sub to i8, !dbg !3678
  store i8 %conv, ptr %shift, align 1, !dbg !3675
  %1 = load i32, ptr %value.addr, align 4, !dbg !3679
  %2 = load i8, ptr %shift, align 1, !dbg !3680
  %conv1 = zext i8 %2 to i32, !dbg !3680
  %shl = shl i32 %1, %conv1, !dbg !3681
  %3 = load i8, ptr %shift, align 1, !dbg !3682
  %conv2 = zext i8 %3 to i32, !dbg !3682
  %shr = ashr i32 %shl, %conv2, !dbg !3683
  call void @llvm.lifetime.end.p0(i64 1, ptr %shift) #14, !dbg !3684
  ret i32 %shr, !dbg !3685
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3686 dso_local i32 @___ratelimit(ptr noundef, ptr noundef) #4

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !3690 dso_local i32 @_printk(ptr noundef, ...) #11

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3694 dso_local ptr @__get_task_comm(ptr noundef, i64 noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pagefault_disable() #5 align 16 !dbg !3697 {
entry:
  call void @pagefault_disabled_inc() #15, !dbg !3699
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !3700, !srcloc !3701
  ret void, !dbg !3702
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_futex_atomic_op_inuser(i32 noundef %op, i32 noundef %oparg, ptr noundef %oval, ptr noundef %uaddr) #7 align 16 !dbg !3703 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca i32, align 4
  %oparg.addr = alloca i32, align 4
  %oval.addr = alloca ptr, align 8
  %uaddr.addr = alloca ptr, align 8
  %oldval = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %oldval7 = alloca i32, align 4
  %ret8 = alloca i32, align 4
  %oldval21 = alloca i32, align 4
  %ret22 = alloca i32, align 4
  %tem = alloca i32, align 4
  %oldval37 = alloca i32, align 4
  %ret38 = alloca i32, align 4
  %tem39 = alloca i32, align 4
  %oldval54 = alloca i32, align 4
  %ret55 = alloca i32, align 4
  %tem56 = alloca i32, align 4
  store i32 %op, ptr %op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !3708, metadata !DIExpression()), !dbg !3732
  store i32 %oparg, ptr %oparg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %oparg.addr, metadata !3709, metadata !DIExpression()), !dbg !3733
  store ptr %oval, ptr %oval.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oval.addr, metadata !3710, metadata !DIExpression()), !dbg !3734
  store ptr %uaddr, ptr %uaddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uaddr.addr, metadata !3711, metadata !DIExpression()), !dbg !3735
  %0 = load ptr, ptr %uaddr.addr, align 8, !dbg !3736
  %call = call zeroext i1 @user_access_begin(ptr noundef %0, i64 noundef 4) #15, !dbg !3736
  br i1 %call, label %if.end, label %if.then, !dbg !3738

if.then:                                          ; preds = %entry
  store i32 -14, ptr %retval, align 4, !dbg !3739
  br label %return, !dbg !3739

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %op.addr, align 4, !dbg !3740
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
    i32 2, label %sw.bb19
    i32 3, label %sw.bb35
    i32 4, label %sw.bb52
  ], !dbg !3741

sw.bb:                                            ; preds = %if.end
  br label %do.body, !dbg !3742

do.body:                                          ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 4, ptr %oldval) #14, !dbg !3743
  call void @llvm.dbg.declare(metadata ptr %oldval, metadata !3712, metadata !DIExpression()), !dbg !3743
  store i32 0, ptr %oldval, align 4, !dbg !3743
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !3743
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3715, metadata !DIExpression()), !dbg !3743
  %2 = load ptr, ptr %uaddr.addr, align 8, !dbg !3743
  %3 = load i32, ptr %oparg.addr, align 4, !dbg !3743
  %4 = call { i32, i32 } asm sideeffect "1:\09xchgl $0, $2\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A.macro extable_type_reg type:req reg:req\0A.set .Lfound, 0\0A.set .Lregnr, 0\0A.irp rs,rax,rcx,rdx,rbx,rsp,rbp,rsi,rdi,r8,r9,r10,r11,r12,r13,r14,r15\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.set .Lregnr, 0\0A.irp rs,eax,ecx,edx,ebx,esp,ebp,esi,edi,r8d,r9d,r10d,r11d,r12d,r13d,r14d,r15d\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.if (.Lfound != 1)\0A.error \22extable_type_reg: bad register argument\22\0A.endif\0A.endm\0Aextable_type_reg reg=$1, type=(17 $| ((-14) << 16)) \0A.purgem extable_type_reg\0A .popsection\0A", "=r,=r,=*m,0,1,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %2, i32 %3, i32 0, ptr elementtype(i32) %2) #14, !dbg !3743, !srcloc !3744
  %asmresult = extractvalue { i32, i32 } %4, 0, !dbg !3743
  %asmresult1 = extractvalue { i32, i32 } %4, 1, !dbg !3743
  store i32 %asmresult, ptr %oldval, align 4, !dbg !3743
  store i32 %asmresult1, ptr %ret, align 4, !dbg !3743
  %5 = load i32, ptr %ret, align 4, !dbg !3745
  %tobool = icmp ne i32 %5, 0, !dbg !3745
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !3743

if.then2:                                         ; preds = %do.body
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3745

if.end3:                                          ; preds = %do.body
  %6 = load i32, ptr %oldval, align 4, !dbg !3743
  %7 = load ptr, ptr %oval.addr, align 8, !dbg !3743
  store i32 %6, ptr %7, align 4, !dbg !3743
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3742
  br label %cleanup, !dbg !3742

cleanup:                                          ; preds = %if.then2, %if.end3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !3742
  call void @llvm.lifetime.end.p0(i64 4, ptr %oldval) #14, !dbg !3742
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 5, label %Efault
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end, !dbg !3743

do.end:                                           ; preds = %cleanup.cont
  br label %sw.epilog, !dbg !3747

sw.bb5:                                           ; preds = %if.end
  br label %do.body6, !dbg !3748

do.body6:                                         ; preds = %sw.bb5
  call void @llvm.lifetime.start.p0(i64 4, ptr %oldval7) #14, !dbg !3749
  call void @llvm.dbg.declare(metadata ptr %oldval7, metadata !3716, metadata !DIExpression()), !dbg !3749
  store i32 0, ptr %oldval7, align 4, !dbg !3749
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret8) #14, !dbg !3749
  call void @llvm.dbg.declare(metadata ptr %ret8, metadata !3718, metadata !DIExpression()), !dbg !3749
  %8 = load ptr, ptr %uaddr.addr, align 8, !dbg !3749
  %9 = load i32, ptr %oparg.addr, align 4, !dbg !3749
  %10 = call { i32, i32 } asm sideeffect "1:\09.pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $2\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A.macro extable_type_reg type:req reg:req\0A.set .Lfound, 0\0A.set .Lregnr, 0\0A.irp rs,rax,rcx,rdx,rbx,rsp,rbp,rsi,rdi,r8,r9,r10,r11,r12,r13,r14,r15\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.set .Lregnr, 0\0A.irp rs,eax,ecx,edx,ebx,esp,ebp,esi,edi,r8d,r9d,r10d,r11d,r12d,r13d,r14d,r15d\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.if (.Lfound != 1)\0A.error \22extable_type_reg: bad register argument\22\0A.endif\0A.endm\0Aextable_type_reg reg=$1, type=(17 $| ((-14) << 16)) \0A.purgem extable_type_reg\0A .popsection\0A", "=r,=r,=*m,0,1,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %8, i32 %9, i32 0, ptr elementtype(i32) %8) #14, !dbg !3749, !srcloc !3750
  %asmresult9 = extractvalue { i32, i32 } %10, 0, !dbg !3749
  %asmresult10 = extractvalue { i32, i32 } %10, 1, !dbg !3749
  store i32 %asmresult9, ptr %oldval7, align 4, !dbg !3749
  store i32 %asmresult10, ptr %ret8, align 4, !dbg !3749
  %11 = load i32, ptr %ret8, align 4, !dbg !3751
  %tobool11 = icmp ne i32 %11, 0, !dbg !3751
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !3749

if.then12:                                        ; preds = %do.body6
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup14, !dbg !3751

if.end13:                                         ; preds = %do.body6
  %12 = load i32, ptr %oldval7, align 4, !dbg !3749
  %13 = load ptr, ptr %oval.addr, align 8, !dbg !3749
  store i32 %12, ptr %13, align 4, !dbg !3749
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3748
  br label %cleanup14, !dbg !3748

cleanup14:                                        ; preds = %if.then12, %if.end13
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret8) #14, !dbg !3748
  call void @llvm.lifetime.end.p0(i64 4, ptr %oldval7) #14, !dbg !3748
  %cleanup.dest16 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest16, label %unreachable [
    i32 0, label %cleanup.cont17
    i32 5, label %Efault
  ]

cleanup.cont17:                                   ; preds = %cleanup14
  br label %do.end18, !dbg !3749

do.end18:                                         ; preds = %cleanup.cont17
  br label %sw.epilog, !dbg !3753

sw.bb19:                                          ; preds = %if.end
  br label %do.body20, !dbg !3754

do.body20:                                        ; preds = %sw.bb19
  call void @llvm.lifetime.start.p0(i64 4, ptr %oldval21) #14, !dbg !3755
  call void @llvm.dbg.declare(metadata ptr %oldval21, metadata !3719, metadata !DIExpression()), !dbg !3755
  store i32 0, ptr %oldval21, align 4, !dbg !3755
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret22) #14, !dbg !3755
  call void @llvm.dbg.declare(metadata ptr %ret22, metadata !3721, metadata !DIExpression()), !dbg !3755
  call void @llvm.lifetime.start.p0(i64 4, ptr %tem) #14, !dbg !3755
  call void @llvm.dbg.declare(metadata ptr %tem, metadata !3722, metadata !DIExpression()), !dbg !3755
  %14 = load ptr, ptr %uaddr.addr, align 8, !dbg !3755
  %15 = load i32, ptr %oparg.addr, align 4, !dbg !3755
  %16 = call { i32, i32, i32 } asm sideeffect "1:\09movl\09$2, $0\0A2:\09movl\09$0, $3\0A\09orl $4, $3\0A3:\09.pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgl $3, $2\0A\09jnz\092b\0A4:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (4b) - .\0A.macro extable_type_reg type:req reg:req\0A.set .Lfound, 0\0A.set .Lregnr, 0\0A.irp rs,rax,rcx,rdx,rbx,rsp,rbp,rsi,rdi,r8,r9,r10,r11,r12,r13,r14,r15\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.set .Lregnr, 0\0A.irp rs,eax,ecx,edx,ebx,esp,ebp,esi,edi,r8d,r9d,r10d,r11d,r12d,r13d,r14d,r15d\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.if (.Lfound != 1)\0A.error \22extable_type_reg: bad register argument\22\0A.endif\0A.endm\0Aextable_type_reg reg=$1, type=(17 $| ((-14) << 16)) \0A.purgem extable_type_reg\0A .popsection\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (3b) - .\0A .long (4b) - .\0A.macro extable_type_reg type:req reg:req\0A.set .Lfound, 0\0A.set .Lregnr, 0\0A.irp rs,rax,rcx,rdx,rbx,rsp,rbp,rsi,rdi,r8,r9,r10,r11,r12,r13,r14,r15\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.set .Lregnr, 0\0A.irp rs,eax,ecx,edx,ebx,esp,ebp,esi,edi,r8d,r9d,r10d,r11d,r12d,r13d,r14d,r15d\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.if (.Lfound != 1)\0A.error \22extable_type_reg: bad register argument\22\0A.endif\0A.endm\0Aextable_type_reg reg=$1, type=(17 $| ((-14) << 16)) \0A.purgem extable_type_reg\0A .popsection\0A", "=&{ax},=&r,=*m,=&r,r,1,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %14, i32 %15, i32 0, ptr elementtype(i32) %14) #14, !dbg !3755, !srcloc !3756
  %asmresult23 = extractvalue { i32, i32, i32 } %16, 0, !dbg !3755
  %asmresult24 = extractvalue { i32, i32, i32 } %16, 1, !dbg !3755
  %asmresult25 = extractvalue { i32, i32, i32 } %16, 2, !dbg !3755
  store i32 %asmresult23, ptr %oldval21, align 4, !dbg !3755
  store i32 %asmresult24, ptr %ret22, align 4, !dbg !3755
  store i32 %asmresult25, ptr %tem, align 4, !dbg !3755
  %17 = load i32, ptr %ret22, align 4, !dbg !3757
  %tobool26 = icmp ne i32 %17, 0, !dbg !3757
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !3755

if.then27:                                        ; preds = %do.body20
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup29, !dbg !3757

if.end28:                                         ; preds = %do.body20
  %18 = load i32, ptr %oldval21, align 4, !dbg !3755
  %19 = load ptr, ptr %oval.addr, align 8, !dbg !3755
  store i32 %18, ptr %19, align 4, !dbg !3755
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3754
  br label %cleanup29, !dbg !3754

cleanup29:                                        ; preds = %if.then27, %if.end28
  call void @llvm.lifetime.end.p0(i64 4, ptr %tem) #14, !dbg !3754
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret22) #14, !dbg !3754
  call void @llvm.lifetime.end.p0(i64 4, ptr %oldval21) #14, !dbg !3754
  %cleanup.dest32 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest32, label %unreachable [
    i32 0, label %cleanup.cont33
    i32 5, label %Efault
  ]

cleanup.cont33:                                   ; preds = %cleanup29
  br label %do.end34, !dbg !3755

do.end34:                                         ; preds = %cleanup.cont33
  br label %sw.epilog, !dbg !3759

sw.bb35:                                          ; preds = %if.end
  br label %do.body36, !dbg !3760

do.body36:                                        ; preds = %sw.bb35
  call void @llvm.lifetime.start.p0(i64 4, ptr %oldval37) #14, !dbg !3761
  call void @llvm.dbg.declare(metadata ptr %oldval37, metadata !3723, metadata !DIExpression()), !dbg !3761
  store i32 0, ptr %oldval37, align 4, !dbg !3761
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret38) #14, !dbg !3761
  call void @llvm.dbg.declare(metadata ptr %ret38, metadata !3725, metadata !DIExpression()), !dbg !3761
  call void @llvm.lifetime.start.p0(i64 4, ptr %tem39) #14, !dbg !3761
  call void @llvm.dbg.declare(metadata ptr %tem39, metadata !3726, metadata !DIExpression()), !dbg !3761
  %20 = load ptr, ptr %uaddr.addr, align 8, !dbg !3761
  %21 = load i32, ptr %oparg.addr, align 4, !dbg !3761
  %not = xor i32 %21, -1, !dbg !3761
  %22 = call { i32, i32, i32 } asm sideeffect "1:\09movl\09$2, $0\0A2:\09movl\09$0, $3\0A\09andl $4, $3\0A3:\09.pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgl $3, $2\0A\09jnz\092b\0A4:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (4b) - .\0A.macro extable_type_reg type:req reg:req\0A.set .Lfound, 0\0A.set .Lregnr, 0\0A.irp rs,rax,rcx,rdx,rbx,rsp,rbp,rsi,rdi,r8,r9,r10,r11,r12,r13,r14,r15\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.set .Lregnr, 0\0A.irp rs,eax,ecx,edx,ebx,esp,ebp,esi,edi,r8d,r9d,r10d,r11d,r12d,r13d,r14d,r15d\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.if (.Lfound != 1)\0A.error \22extable_type_reg: bad register argument\22\0A.endif\0A.endm\0Aextable_type_reg reg=$1, type=(17 $| ((-14) << 16)) \0A.purgem extable_type_reg\0A .popsection\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (3b) - .\0A .long (4b) - .\0A.macro extable_type_reg type:req reg:req\0A.set .Lfound, 0\0A.set .Lregnr, 0\0A.irp rs,rax,rcx,rdx,rbx,rsp,rbp,rsi,rdi,r8,r9,r10,r11,r12,r13,r14,r15\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.set .Lregnr, 0\0A.irp rs,eax,ecx,edx,ebx,esp,ebp,esi,edi,r8d,r9d,r10d,r11d,r12d,r13d,r14d,r15d\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.if (.Lfound != 1)\0A.error \22extable_type_reg: bad register argument\22\0A.endif\0A.endm\0Aextable_type_reg reg=$1, type=(17 $| ((-14) << 16)) \0A.purgem extable_type_reg\0A .popsection\0A", "=&{ax},=&r,=*m,=&r,r,1,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %20, i32 %not, i32 0, ptr elementtype(i32) %20) #14, !dbg !3761, !srcloc !3762
  %asmresult40 = extractvalue { i32, i32, i32 } %22, 0, !dbg !3761
  %asmresult41 = extractvalue { i32, i32, i32 } %22, 1, !dbg !3761
  %asmresult42 = extractvalue { i32, i32, i32 } %22, 2, !dbg !3761
  store i32 %asmresult40, ptr %oldval37, align 4, !dbg !3761
  store i32 %asmresult41, ptr %ret38, align 4, !dbg !3761
  store i32 %asmresult42, ptr %tem39, align 4, !dbg !3761
  %23 = load i32, ptr %ret38, align 4, !dbg !3763
  %tobool43 = icmp ne i32 %23, 0, !dbg !3763
  br i1 %tobool43, label %if.then44, label %if.end45, !dbg !3761

if.then44:                                        ; preds = %do.body36
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup46, !dbg !3763

if.end45:                                         ; preds = %do.body36
  %24 = load i32, ptr %oldval37, align 4, !dbg !3761
  %25 = load ptr, ptr %oval.addr, align 8, !dbg !3761
  store i32 %24, ptr %25, align 4, !dbg !3761
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3760
  br label %cleanup46, !dbg !3760

cleanup46:                                        ; preds = %if.then44, %if.end45
  call void @llvm.lifetime.end.p0(i64 4, ptr %tem39) #14, !dbg !3760
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret38) #14, !dbg !3760
  call void @llvm.lifetime.end.p0(i64 4, ptr %oldval37) #14, !dbg !3760
  %cleanup.dest49 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest49, label %unreachable [
    i32 0, label %cleanup.cont50
    i32 5, label %Efault
  ]

cleanup.cont50:                                   ; preds = %cleanup46
  br label %do.end51, !dbg !3761

do.end51:                                         ; preds = %cleanup.cont50
  br label %sw.epilog, !dbg !3765

sw.bb52:                                          ; preds = %if.end
  br label %do.body53, !dbg !3766

do.body53:                                        ; preds = %sw.bb52
  call void @llvm.lifetime.start.p0(i64 4, ptr %oldval54) #14, !dbg !3767
  call void @llvm.dbg.declare(metadata ptr %oldval54, metadata !3727, metadata !DIExpression()), !dbg !3767
  store i32 0, ptr %oldval54, align 4, !dbg !3767
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret55) #14, !dbg !3767
  call void @llvm.dbg.declare(metadata ptr %ret55, metadata !3729, metadata !DIExpression()), !dbg !3767
  call void @llvm.lifetime.start.p0(i64 4, ptr %tem56) #14, !dbg !3767
  call void @llvm.dbg.declare(metadata ptr %tem56, metadata !3730, metadata !DIExpression()), !dbg !3767
  %26 = load ptr, ptr %uaddr.addr, align 8, !dbg !3767
  %27 = load i32, ptr %oparg.addr, align 4, !dbg !3767
  %28 = call { i32, i32, i32 } asm sideeffect "1:\09movl\09$2, $0\0A2:\09movl\09$0, $3\0A\09xorl $4, $3\0A3:\09.pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgl $3, $2\0A\09jnz\092b\0A4:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (4b) - .\0A.macro extable_type_reg type:req reg:req\0A.set .Lfound, 0\0A.set .Lregnr, 0\0A.irp rs,rax,rcx,rdx,rbx,rsp,rbp,rsi,rdi,r8,r9,r10,r11,r12,r13,r14,r15\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.set .Lregnr, 0\0A.irp rs,eax,ecx,edx,ebx,esp,ebp,esi,edi,r8d,r9d,r10d,r11d,r12d,r13d,r14d,r15d\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.if (.Lfound != 1)\0A.error \22extable_type_reg: bad register argument\22\0A.endif\0A.endm\0Aextable_type_reg reg=$1, type=(17 $| ((-14) << 16)) \0A.purgem extable_type_reg\0A .popsection\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (3b) - .\0A .long (4b) - .\0A.macro extable_type_reg type:req reg:req\0A.set .Lfound, 0\0A.set .Lregnr, 0\0A.irp rs,rax,rcx,rdx,rbx,rsp,rbp,rsi,rdi,r8,r9,r10,r11,r12,r13,r14,r15\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.set .Lregnr, 0\0A.irp rs,eax,ecx,edx,ebx,esp,ebp,esi,edi,r8d,r9d,r10d,r11d,r12d,r13d,r14d,r15d\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.if (.Lfound != 1)\0A.error \22extable_type_reg: bad register argument\22\0A.endif\0A.endm\0Aextable_type_reg reg=$1, type=(17 $| ((-14) << 16)) \0A.purgem extable_type_reg\0A .popsection\0A", "=&{ax},=&r,=*m,=&r,r,1,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %26, i32 %27, i32 0, ptr elementtype(i32) %26) #14, !dbg !3767, !srcloc !3768
  %asmresult57 = extractvalue { i32, i32, i32 } %28, 0, !dbg !3767
  %asmresult58 = extractvalue { i32, i32, i32 } %28, 1, !dbg !3767
  %asmresult59 = extractvalue { i32, i32, i32 } %28, 2, !dbg !3767
  store i32 %asmresult57, ptr %oldval54, align 4, !dbg !3767
  store i32 %asmresult58, ptr %ret55, align 4, !dbg !3767
  store i32 %asmresult59, ptr %tem56, align 4, !dbg !3767
  %29 = load i32, ptr %ret55, align 4, !dbg !3769
  %tobool60 = icmp ne i32 %29, 0, !dbg !3769
  br i1 %tobool60, label %if.then61, label %if.end62, !dbg !3767

if.then61:                                        ; preds = %do.body53
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup63, !dbg !3769

if.end62:                                         ; preds = %do.body53
  %30 = load i32, ptr %oldval54, align 4, !dbg !3767
  %31 = load ptr, ptr %oval.addr, align 8, !dbg !3767
  store i32 %30, ptr %31, align 4, !dbg !3767
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3766
  br label %cleanup63, !dbg !3766

cleanup63:                                        ; preds = %if.then61, %if.end62
  call void @llvm.lifetime.end.p0(i64 4, ptr %tem56) #14, !dbg !3766
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret55) #14, !dbg !3766
  call void @llvm.lifetime.end.p0(i64 4, ptr %oldval54) #14, !dbg !3766
  %cleanup.dest66 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest66, label %unreachable [
    i32 0, label %cleanup.cont67
    i32 5, label %Efault
  ]

cleanup.cont67:                                   ; preds = %cleanup63
  br label %do.end68, !dbg !3767

do.end68:                                         ; preds = %cleanup.cont67
  br label %sw.epilog, !dbg !3771

sw.default:                                       ; preds = %if.end
  call void @clac() #15, !dbg !3772
  store i32 -38, ptr %retval, align 4, !dbg !3773
  br label %return, !dbg !3773

sw.epilog:                                        ; preds = %do.end68, %do.end51, %do.end34, %do.end18, %do.end
  call void @clac() #15, !dbg !3774
  store i32 0, ptr %retval, align 4, !dbg !3775
  br label %return, !dbg !3775

Efault:                                           ; preds = %cleanup63, %cleanup46, %cleanup29, %cleanup14, %cleanup
  call void @llvm.dbg.label(metadata !3731), !dbg !3776
  call void @clac() #15, !dbg !3777
  store i32 -14, ptr %retval, align 4, !dbg !3778
  br label %return, !dbg !3778

return:                                           ; preds = %Efault, %sw.epilog, %sw.default, %if.then
  %32 = load i32, ptr %retval, align 4, !dbg !3779
  ret i32 %32, !dbg !3779

unreachable:                                      ; preds = %cleanup63, %cleanup46, %cleanup29, %cleanup14, %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pagefault_enable() #5 align 16 !dbg !3780 {
entry:
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !3781, !srcloc !3782
  call void @pagefault_disabled_dec() #15, !dbg !3783
  ret void, !dbg !3784
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pagefault_disabled_inc() #7 align 16 !dbg !3785 {
entry:
  %call = call ptr @get_current() #15, !dbg !3786
  %pagefault_disabled = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 181, !dbg !3787
  %0 = load i32, ptr %pagefault_disabled, align 4, !dbg !3788
  %inc = add i32 %0, 1, !dbg !3788
  store i32 %inc, ptr %pagefault_disabled, align 4, !dbg !3788
  ret void, !dbg !3789
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @user_access_begin(ptr noundef %ptr, i64 noundef %len) #7 align 16 !dbg !3790 {
entry:
  %retval = alloca i1, align 1
  %ptr.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !3795, metadata !DIExpression()), !dbg !3797
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !3796, metadata !DIExpression()), !dbg !3798
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !3799
  %1 = load i64, ptr %len.addr, align 8, !dbg !3799
  %call = call zeroext i1 @__access_ok(ptr noundef %0, i64 noundef %1) #15, !dbg !3799
  %lnot = xor i1 %call, true, !dbg !3799
  %lnot1 = xor i1 %lnot, true, !dbg !3799
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3799
  %conv = sext i32 %lnot.ext to i64, !dbg !3799
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !3799
  %tobool = icmp ne i64 %expval, 0, !dbg !3799
  %lnot2 = xor i1 %tobool, true, !dbg !3799
  %lnot4 = xor i1 %lnot2, true, !dbg !3799
  %lnot6 = xor i1 %lnot4, true, !dbg !3799
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !3799
  %conv8 = sext i32 %lnot.ext7 to i64, !dbg !3799
  %expval9 = call i64 @llvm.expect.i64(i64 %conv8, i64 0), !dbg !3799
  %tobool10 = icmp ne i64 %expval9, 0, !dbg !3799
  br i1 %tobool10, label %if.then, label %if.end, !dbg !3801

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !3802
  br label %return, !dbg !3802

if.end:                                           ; preds = %entry
  call void @stac() #15, !dbg !3803
  call void asm sideeffect "# ALT: oldnstr\0A661:\0A\09\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte (20*32+ 2)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09lfence\0A6651:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !3803, !srcloc !3805
  store i1 true, ptr %retval, align 1, !dbg !3806
  br label %return, !dbg !3806

return:                                           ; preds = %if.end, %if.then
  %2 = load i1, ptr %retval, align 1, !dbg !3807
  ret i1 %2, !dbg !3807
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clac() #7 align 16 !dbg !3808 {
entry:
  call void asm sideeffect "# ALT: oldnstr\0A661:\0A\09\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 9*32+20)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09.byte 0x0f,0x01,0xca\0A6651:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !3810, !srcloc !3811
  ret void, !dbg !3812
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__access_ok(ptr noundef %ptr, i64 noundef %size) #5 align 16 !dbg !3813 {
entry:
  %retval = alloca i1, align 1
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %sum = alloca i64, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !3818, metadata !DIExpression()), !dbg !3823
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3819, metadata !DIExpression()), !dbg !3824
  %0 = load i64, ptr %size.addr, align 8, !dbg !3825
  %cmp = icmp ule i64 %0, 4096, !dbg !3826
  %conv = zext i1 %cmp to i32, !dbg !3826
  %1 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !3827
  br i1 %1, label %land.lhs.true, label %if.else, !dbg !3828

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !3829
  %cmp1 = icmp ule i64 %2, 4096, !dbg !3830
  br i1 %cmp1, label %if.then, label %if.else, !dbg !3831

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %ptr.addr, align 8, !dbg !3832
  %4 = ptrtoint ptr %3 to i64, !dbg !3832
  %cmp3 = icmp sge i64 %4, 0, !dbg !3832
  store i1 %cmp3, ptr %retval, align 1, !dbg !3834
  br label %return, !dbg !3834

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %sum) #14, !dbg !3835
  call void @llvm.dbg.declare(metadata ptr %sum, metadata !3820, metadata !DIExpression()), !dbg !3836
  %5 = load i64, ptr %size.addr, align 8, !dbg !3837
  %6 = load ptr, ptr %ptr.addr, align 8, !dbg !3838
  %7 = ptrtoint ptr %6 to i64, !dbg !3839
  %add = add i64 %5, %7, !dbg !3840
  store i64 %add, ptr %sum, align 8, !dbg !3836
  %8 = load i64, ptr %sum, align 8, !dbg !3841
  %cmp5 = icmp sge i64 %8, 0, !dbg !3841
  br i1 %cmp5, label %land.rhs, label %land.end, !dbg !3842

land.rhs:                                         ; preds = %if.else
  %9 = load i64, ptr %sum, align 8, !dbg !3843
  %10 = load ptr, ptr %ptr.addr, align 8, !dbg !3844
  %11 = ptrtoint ptr %10 to i64, !dbg !3845
  %cmp7 = icmp uge i64 %9, %11, !dbg !3846
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else
  %12 = phi i1 [ false, %if.else ], [ %cmp7, %land.rhs ], !dbg !3847
  store i1 %12, ptr %retval, align 1, !dbg !3848
  call void @llvm.lifetime.end.p0(i64 8, ptr %sum) #14, !dbg !3849
  br label %return

return:                                           ; preds = %land.end, %if.then
  %13 = load i1, ptr %retval, align 1, !dbg !3850
  ret i1 %13, !dbg !3850
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @stac() #7 align 16 !dbg !3851 {
entry:
  call void asm sideeffect "# ALT: oldnstr\0A661:\0A\09\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 9*32+20)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09.byte 0x0f,0x01,0xcb\0A6651:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !3852, !srcloc !3853
  ret void, !dbg !3854
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pagefault_disabled_dec() #7 align 16 !dbg !3855 {
entry:
  %call = call ptr @get_current() #15, !dbg !3856
  %pagefault_disabled = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 181, !dbg !3857
  %0 = load i32, ptr %pagefault_disabled, align 4, !dbg !3858
  %dec = add i32 %0, -1, !dbg !3858
  store i32 %dec, ptr %pagefault_disabled, align 4, !dbg !3858
  ret void, !dbg !3859
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__cond_resched() #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !3860 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3862, metadata !DIExpression()), !dbg !3864
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3863, metadata !DIExpression()), !dbg !3865
  ret i1 true, !dbg !3866
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3867 dso_local void @__futex_queue(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #5 align 16 !dbg !3868 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !3875, metadata !DIExpression()), !dbg !3876
  br label %do.body, !dbg !3877

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3879

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !3877
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !3877
  %1 = load volatile ptr, ptr %next, align 8, !dbg !3877
  store ptr %1, ptr %tmp, align 8, !dbg !3879
  %2 = load ptr, ptr %tmp, align 8, !dbg !3877
  %3 = load ptr, ptr %head.addr, align 8, !dbg !3881
  %cmp = icmp eq ptr %2, %3, !dbg !3882
  %conv = zext i1 %cmp to i32, !dbg !3882
  ret i32 %conv, !dbg !3883
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @test_tsk_thread_flag(ptr noundef %tsk, i32 noundef %flag) #5 align 16 !dbg !3884 {
entry:
  %tsk.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !3888, metadata !DIExpression()), !dbg !3890
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !3889, metadata !DIExpression()), !dbg !3891
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !3892
  %thread_info = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 0, !dbg !3892
  %1 = load i32, ptr %flag.addr, align 4, !dbg !3893
  %call = call i32 @test_ti_thread_flag(ptr noundef %thread_info, i32 noundef %1) #15, !dbg !3894
  ret i32 %call, !dbg !3895
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @task_sigpending(ptr noundef %p) #5 align 16 !dbg !3896 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3898, metadata !DIExpression()), !dbg !3899
  %0 = load ptr, ptr %p.addr, align 8, !dbg !3900
  %call = call i32 @test_tsk_thread_flag(ptr noundef %0, i32 noundef 2) #15, !dbg !3900
  %tobool = icmp ne i32 %call, 0, !dbg !3900
  %lnot = xor i1 %tobool, true, !dbg !3900
  %lnot1 = xor i1 %lnot, true, !dbg !3900
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3900
  %conv = sext i32 %lnot.ext to i64, !dbg !3900
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3900
  %conv2 = trunc i64 %expval to i32, !dbg !3900
  ret i32 %conv2, !dbg !3901
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @test_ti_thread_flag(ptr noundef %ti, i32 noundef %flag) #5 align 16 !dbg !3902 {
entry:
  %ti.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %ti, ptr %ti.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ti.addr, metadata !3906, metadata !DIExpression()), !dbg !3908
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !3907, metadata !DIExpression()), !dbg !3909
  %0 = load i32, ptr %flag.addr, align 4, !dbg !3910
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !3910
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !3910

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ti.addr, align 8, !dbg !3910
  %flags = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 0, !dbg !3910
  %3 = ptrtoint ptr %flags to i64, !dbg !3910
  %cmp = icmp ne i64 %3, 0, !dbg !3910
  %conv = zext i1 %cmp to i32, !dbg !3910
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !3910
  br i1 %4, label %land.lhs.true1, label %cond.false, !dbg !3910

land.lhs.true1:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %ti.addr, align 8, !dbg !3910
  %flags2 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 0, !dbg !3910
  %6 = ptrtoint ptr %flags2 to i64, !dbg !3910
  %cmp3 = icmp ne i64 %6, 0, !dbg !3910
  br i1 %cmp3, label %land.lhs.true5, label %cond.false, !dbg !3910

land.lhs.true5:                                   ; preds = %land.lhs.true1
  %7 = load ptr, ptr %ti.addr, align 8, !dbg !3910
  %flags6 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 0, !dbg !3910
  %8 = load i64, ptr %flags6, align 8, !dbg !3910
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !3910
  br i1 %9, label %cond.true, label %cond.false, !dbg !3910

cond.true:                                        ; preds = %land.lhs.true5
  %10 = load i32, ptr %flag.addr, align 4, !dbg !3910
  %conv7 = sext i32 %10 to i64, !dbg !3910
  %11 = load ptr, ptr %ti.addr, align 8, !dbg !3910
  %flags8 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 0, !dbg !3910
  %call = call zeroext i1 @const_test_bit(i64 noundef %conv7, ptr noundef %flags8) #15, !dbg !3910
  %conv9 = zext i1 %call to i32, !dbg !3910
  br label %cond.end, !dbg !3910

cond.false:                                       ; preds = %land.lhs.true5, %land.lhs.true1, %land.lhs.true, %entry
  %12 = load i32, ptr %flag.addr, align 4, !dbg !3910
  %conv10 = sext i32 %12 to i64, !dbg !3910
  %13 = load ptr, ptr %ti.addr, align 8, !dbg !3910
  %flags11 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 0, !dbg !3910
  %call12 = call zeroext i1 @_test_bit(i64 noundef %conv10, ptr noundef %flags11) #15, !dbg !3910
  %conv13 = zext i1 %call12 to i32, !dbg !3910
  br label %cond.end, !dbg !3910

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv9, %cond.true ], [ %conv13, %cond.false ], !dbg !3910
  ret i32 %cond, !dbg !3911
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !3912 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3920, metadata !DIExpression()), !dbg !3925
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3921, metadata !DIExpression()), !dbg !3926
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #14, !dbg !3927
  call void @llvm.dbg.declare(metadata ptr %p, metadata !3922, metadata !DIExpression()), !dbg !3928
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3929
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3930
  %div = udiv i64 %1, 64, !dbg !3930
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !3931
  store ptr %add.ptr, ptr %p, align 8, !dbg !3928
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #14, !dbg !3932
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !3923, metadata !DIExpression()), !dbg !3933
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3934
  %rem = urem i64 %2, 64, !dbg !3934
  %shl = shl i64 1, %rem, !dbg !3934
  store i64 %shl, ptr %mask, align 8, !dbg !3933
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #14, !dbg !3935
  call void @llvm.dbg.declare(metadata ptr %val, metadata !3924, metadata !DIExpression()), !dbg !3936
  %3 = load ptr, ptr %p, align 8, !dbg !3937
  %4 = load i64, ptr %3, align 8, !dbg !3938
  store i64 %4, ptr %val, align 8, !dbg !3936
  %5 = load i64, ptr %val, align 8, !dbg !3939
  %6 = load i64, ptr %mask, align 8, !dbg !3940
  %and = and i64 %5, %6, !dbg !3941
  %tobool = icmp ne i64 %and, 0, !dbg !3942
  %lnot = xor i1 %tobool, true, !dbg !3942
  %lnot1 = xor i1 %lnot, true, !dbg !3943
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #14, !dbg !3944
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #14, !dbg !3944
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #14, !dbg !3944
  ret i1 %lnot1, !dbg !3945
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !3946 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3949, metadata !DIExpression()), !dbg !3951
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3950, metadata !DIExpression()), !dbg !3952
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3953
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3954
  %div = udiv i64 %1, 64, !dbg !3954
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !3955
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #15, !dbg !3956
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3957
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !3958
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #15, !dbg !3959
  ret i1 %call, !dbg !3960
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !3961 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3964, metadata !DIExpression()), !dbg !3966
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3965, metadata !DIExpression()), !dbg !3967
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3968
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3969
  br i1 %1, label %cond.true, label %cond.false, !dbg !3969

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3970
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !3971
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #15, !dbg !3972
  %conv = zext i1 %call to i32, !dbg !3972
  br label %cond.end, !dbg !3969

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !3973
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !3974
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #15, !dbg !3975
  %conv2 = zext i1 %call1 to i32, !dbg !3975
  br label %cond.end, !dbg !3969

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !3969
  %tobool = icmp ne i32 %cond, 0, !dbg !3969
  ret i1 %tobool, !dbg !3976
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !3977 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3981, metadata !DIExpression()), !dbg !3983
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3982, metadata !DIExpression()), !dbg !3984
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3985
  %and = and i64 %0, 63, !dbg !3986
  %shl = shl i64 1, %and, !dbg !3987
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !3988
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3989
  %shr = ashr i64 %2, 6, !dbg !3990
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !3988
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !3988
  %and1 = and i64 %shl, %3, !dbg !3991
  %cmp = icmp ne i64 %and1, 0, !dbg !3992
  ret i1 %cmp, !dbg !3993
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !3994 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3996, metadata !DIExpression()), !dbg !3999
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3997, metadata !DIExpression()), !dbg !4000
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #14, !dbg !4001
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !3998, metadata !DIExpression()), !dbg !4002
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4003
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4004
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #14, !dbg !4005, !srcloc !4006
  %3 = icmp ult i8 %2, 2, !dbg !4005
  call void @llvm.assume(i1 %3), !dbg !4005
  store i8 %2, ptr %oldbit, align 1, !dbg !4005
  %4 = load i8, ptr %oldbit, align 1, !dbg !4007, !range !2944, !noundef !479
  %tobool = trunc i8 %4 to i1, !dbg !4007
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #14, !dbg !4008
  ret i1 %tobool, !dbg !4009
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @do_no_restart_syscall(ptr noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #9 = { nocallback nounwind }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { noredzone }
attributes #16 = { cold noredzone }
attributes #17 = { nounwind memory(none) }

!llvm.dbg.cu = !{!24}
!llvm.named.register.rsp = !{!1979}
!llvm.module.flags = !{!1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987}
!llvm.ident = !{!1988}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 119, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "kernel/futex/waitwake.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05218ccea551a5fbd702088c403d1bce")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 27)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 119, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 24)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "_rs", scope: !14, file: !2, line: 203, type: !1009, isLocal: true, isDefinition: true)
!14 = distinct !DISubprogram(name: "futex_atomic_op_inuser", scope: !2, file: !2, line: 188, type: !15, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1965)
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !18, !19}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !21, line: 21, baseType: !22)
!21 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !23, line: 27, baseType: !18)
!23 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!24 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/futex/.waitwake.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/futex/waitwake\22 -D KBUILD_BASENAME=\22waitwake\22 -D KBUILD_MODNAME=\22waitwake\22 -D __KBUILD_MODNAME=kmod_waitwake -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/futex/waitwake.ll kernel/futex/waitwake.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !25, retainedTypes: !79, globals: !1949, splitDebugInlining: false, nameTableKind: None)
!25 = !{!26, !31, !37, !44, !49, !66, !74}
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !27, line: 65, baseType: !18, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!28 = !{!29, !30}
!29 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!30 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !32, line: 16, baseType: !18, size: 32, elements: !33)
!32 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!33 = !{!34, !35, !36}
!34 = !DIEnumerator(name: "TT_NONE", value: 0)
!35 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!36 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !38, line: 51, baseType: !18, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!39 = !{!40, !41, !42, !43}
!40 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!41 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!42 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!43 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "futex_access", file: !45, line: 114, baseType: !18, size: 32, elements: !46)
!45 = !DIFile(filename: "kernel/futex/futex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b31fce36210e902319cec20378aafe08")
!46 = !{!47, !48}
!47 = !DIEnumerator(name: "FUTEX_READ", value: 0)
!48 = !DIEnumerator(name: "FUTEX_WRITE", value: 1)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_mode", file: !27, line: 39, baseType: !18, size: 32, elements: !50)
!50 = !{!51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65}
!51 = !DIEnumerator(name: "HRTIMER_MODE_ABS", value: 0)
!52 = !DIEnumerator(name: "HRTIMER_MODE_REL", value: 1)
!53 = !DIEnumerator(name: "HRTIMER_MODE_PINNED", value: 2)
!54 = !DIEnumerator(name: "HRTIMER_MODE_SOFT", value: 4)
!55 = !DIEnumerator(name: "HRTIMER_MODE_HARD", value: 8)
!56 = !DIEnumerator(name: "HRTIMER_MODE_ABS_PINNED", value: 2)
!57 = !DIEnumerator(name: "HRTIMER_MODE_REL_PINNED", value: 3)
!58 = !DIEnumerator(name: "HRTIMER_MODE_ABS_SOFT", value: 4)
!59 = !DIEnumerator(name: "HRTIMER_MODE_REL_SOFT", value: 5)
!60 = !DIEnumerator(name: "HRTIMER_MODE_ABS_PINNED_SOFT", value: 6)
!61 = !DIEnumerator(name: "HRTIMER_MODE_REL_PINNED_SOFT", value: 7)
!62 = !DIEnumerator(name: "HRTIMER_MODE_ABS_HARD", value: 8)
!63 = !DIEnumerator(name: "HRTIMER_MODE_REL_HARD", value: 9)
!64 = !DIEnumerator(name: "HRTIMER_MODE_ABS_PINNED_HARD", value: 10)
!65 = !DIEnumerator(name: "HRTIMER_MODE_REL_PINNED_HARD", value: 11)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !67, line: 119, baseType: !18, size: 32, elements: !68)
!67 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!68 = !{!69, !70, !71, !72, !73}
!69 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!70 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!71 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!72 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!73 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !75, line: 10, baseType: !18, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!76 = !{!77, !78}
!77 = !DIEnumerator(name: "false", value: 0)
!78 = !DIEnumerator(name: "true", value: 1)
!79 = !{!80, !124, !129, !130, !1933, !212, !20, !1935, !572, !678, !154, !1938, !146, !1939, !1942, !19, !1943, !1945, !1946, !1948}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !84, line: 29, baseType: !85)
!84 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !84, line: 17, size: 32, elements: !86)
!86 = !{!87}
!87 = !DIDerivedType(tag: DW_TAG_member, scope: !85, file: !84, line: 18, baseType: !88, size: 32)
!88 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !85, file: !84, line: 18, size: 32, elements: !89)
!89 = !{!90}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !88, file: !84, line: 19, baseType: !91, size: 32)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !92, line: 14, size: 32, elements: !93)
!92 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!93 = !{!94}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !91, file: !92, line: 15, baseType: !95, size: 32)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !96, line: 44, baseType: !97)
!96 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !96, line: 14, size: 32, elements: !98)
!98 = !{!99}
!99 = !DIDerivedType(tag: DW_TAG_member, scope: !97, file: !96, line: 15, baseType: !100, size: 32)
!100 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !97, file: !96, line: 15, size: 32, elements: !101)
!101 = !{!102, !108, !116}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !100, file: !96, line: 16, baseType: !103, size: 32)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !104, line: 174, baseType: !105)
!104 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !104, line: 172, size: 32, elements: !106)
!106 = !{!107}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !105, file: !104, line: 173, baseType: !17, size: 32)
!108 = !DIDerivedType(tag: DW_TAG_member, scope: !100, file: !96, line: 24, baseType: !109, size: 16)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !100, file: !96, line: 24, size: 16, elements: !110)
!110 = !{!111, !115}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !109, file: !96, line: 25, baseType: !112, size: 8)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !21, line: 17, baseType: !113)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !23, line: 21, baseType: !114)
!114 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !109, file: !96, line: 26, baseType: !112, size: 8, offset: 8)
!116 = !DIDerivedType(tag: DW_TAG_member, scope: !100, file: !96, line: 28, baseType: !117, size: 32)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !100, file: !96, line: 28, size: 32, elements: !118)
!118 = !{!119, !123}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !117, file: !96, line: 29, baseType: !120, size: 16)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !21, line: 19, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !23, line: 24, baseType: !122)
!122 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !117, file: !96, line: 30, baseType: !120, size: 16, offset: 16)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !126, line: 735, size: 64, elements: !127)
!126 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!127 = !{!128}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !125, file: !126, line: 736, baseType: !124, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "futex_q", file: !45, line: 96, size: 896, elements: !132)
!132 = !{!133, !145, !1925, !1926, !1927, !1928, !1929, !1931, !1932}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !131, file: !45, line: 97, baseType: !134, size: 320)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !135, line: 86, size: 320, elements: !136)
!135 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!136 = !{!137, !138, !144}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !134, file: !135, line: 87, baseType: !17, size: 32)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !134, file: !135, line: 88, baseType: !139, size: 128, offset: 64)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !104, line: 190, size: 128, elements: !140)
!140 = !{!141, !143}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !139, file: !104, line: 191, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !139, file: !104, line: 191, baseType: !142, size: 64, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !134, file: !135, line: 89, baseType: !139, size: 128, offset: 192)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !131, file: !45, line: 99, baseType: !146, size: 64, offset: 320)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !126, line: 746, size: 58368, elements: !148)
!148 = !{!149, !158, !159, !160, !165, !166, !167, !168, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !252, !263, !365, !369, !372, !403, !404, !405, !406, !417, !419, !420, !421, !422, !423, !424, !435, !436, !439, !440, !441, !442, !443, !444, !445, !446, !453, !454, !455, !456, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !727, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !783, !785, !786, !787, !799, !801, !802, !803, !804, !805, !806, !812, !813, !814, !815, !816, !817, !818, !832, !838, !1037, !1038, !1039, !1040, !1044, !1047, !1054, !1059, !1062, !1065, !1068, !1071, !1216, !1247, !1248, !1249, !1250, !1251, !1252, !1255, !1256, !1257, !1260, !1261, !1262, !1271, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1289, !1290, !1293, !1296, !1299, !1302, !1305, !1306, !1393, !1394, !1395, !1396, !1397, !1403, !1404, !1405, !1406, !1409, !1410, !1422, !1425, !1426, !1466, !1467, !1468, !1471, !1472, !1473, !1476, !1477, !1478, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1510, !1513, !1581, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1593, !1665, !1667, !1668, !1669, !1670, !1671, !1683, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1700, !1701, !1702}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !147, file: !126, line: 752, baseType: !150, size: 192)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !151, line: 56, size: 192, elements: !152)
!151 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!152 = !{!153, !155, !156, !157}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !150, file: !151, line: 57, baseType: !154, size: 64)
!154 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !150, file: !151, line: 58, baseType: !154, size: 64, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !150, file: !151, line: 59, baseType: !20, size: 32, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !150, file: !151, line: 61, baseType: !20, size: 32, offset: 160)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !147, file: !126, line: 754, baseType: !18, size: 32, offset: 192)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !147, file: !126, line: 767, baseType: !129, size: 64, offset: 256)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !147, file: !126, line: 768, baseType: !161, size: 32, offset: 320)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !67, line: 113, baseType: !162)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !67, line: 111, size: 32, elements: !163)
!163 = !{!164}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !162, file: !67, line: 112, baseType: !103, size: 32)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !147, file: !126, line: 770, baseType: !18, size: 32, offset: 352)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !147, file: !126, line: 771, baseType: !18, size: 32, offset: 384)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !147, file: !126, line: 774, baseType: !17, size: 32, offset: 416)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !147, file: !126, line: 775, baseType: !169, size: 128, offset: 448)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !170, line: 58, size: 128, elements: !171)
!170 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!171 = !{!172, !178, !183, !184}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !169, file: !170, line: 59, baseType: !173, size: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !174, line: 60, size: 64, elements: !175)
!174 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!175 = !{!176}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !173, file: !174, line: 61, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, scope: !169, file: !170, line: 60, baseType: !179, size: 32, offset: 64)
!179 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !169, file: !170, line: 60, size: 32, elements: !180)
!180 = !{!181, !182}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !179, file: !170, line: 61, baseType: !18, size: 32)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !179, file: !170, line: 62, baseType: !103, size: 32)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !169, file: !170, line: 65, baseType: !120, size: 16, offset: 96)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !169, file: !170, line: 65, baseType: !120, size: 16, offset: 112)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !147, file: !126, line: 776, baseType: !18, size: 32, offset: 576)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !147, file: !126, line: 777, baseType: !154, size: 64, offset: 640)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !147, file: !126, line: 778, baseType: !146, size: 64, offset: 704)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !147, file: !126, line: 787, baseType: !17, size: 32, offset: 768)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !147, file: !126, line: 788, baseType: !17, size: 32, offset: 800)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !147, file: !126, line: 790, baseType: !17, size: 32, offset: 832)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !147, file: !126, line: 792, baseType: !17, size: 32, offset: 864)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !147, file: !126, line: 793, baseType: !17, size: 32, offset: 896)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !147, file: !126, line: 794, baseType: !17, size: 32, offset: 928)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !147, file: !126, line: 795, baseType: !18, size: 32, offset: 960)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !147, file: !126, line: 797, baseType: !196, size: 2048, offset: 1024)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !126, line: 551, size: 2048, elements: !197)
!197 = !{!198, !203, !211, !215, !216, !217, !218, !219, !220, !221, !222, !226, !227, !228, !229, !231, !234, !235, !236}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !196, file: !126, line: 553, baseType: !199, size: 128)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !126, line: 411, size: 128, elements: !200)
!200 = !{!201, !202}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !199, file: !126, line: 412, baseType: !154, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !199, file: !126, line: 413, baseType: !20, size: 32, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !196, file: !126, line: 554, baseType: !204, size: 192, align: 64, offset: 128)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !205, line: 5, size: 192, align: 64, elements: !206)
!205 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!206 = !{!207, !208, !210}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !204, file: !205, line: 6, baseType: !154, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !204, file: !205, line: 7, baseType: !209, size: 64, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !204, file: !205, line: 8, baseType: !209, size: 64, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !196, file: !126, line: 555, baseType: !212, size: 64, offset: 320)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !21, line: 23, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !23, line: 31, baseType: !214)
!214 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !196, file: !126, line: 556, baseType: !212, size: 64, offset: 384)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !196, file: !126, line: 558, baseType: !139, size: 128, offset: 448)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !196, file: !126, line: 559, baseType: !18, size: 32, offset: 576)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !196, file: !126, line: 561, baseType: !212, size: 64, offset: 640)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !196, file: !126, line: 562, baseType: !212, size: 64, offset: 704)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !196, file: !126, line: 563, baseType: !212, size: 64, offset: 768)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !196, file: !126, line: 564, baseType: !212, size: 64, offset: 832)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !196, file: !126, line: 565, baseType: !223, size: 64, offset: 896)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !21, line: 22, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !23, line: 30, baseType: !225)
!225 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !196, file: !126, line: 566, baseType: !212, size: 64, offset: 960)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !196, file: !126, line: 568, baseType: !212, size: 64, offset: 1024)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !196, file: !126, line: 571, baseType: !17, size: 32, offset: 1088)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !196, file: !126, line: 572, baseType: !230, size: 64, offset: 1152)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !196, file: !126, line: 574, baseType: !232, size: 64, offset: 1216)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !126, line: 49, flags: DIFlagFwdDecl)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !196, file: !126, line: 576, baseType: !232, size: 64, offset: 1280)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !196, file: !126, line: 578, baseType: !154, size: 64, offset: 1344)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !196, file: !126, line: 588, baseType: !237, size: 512, align: 512, offset: 1536)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !126, line: 497, size: 512, align: 512, elements: !238)
!238 = !{!239, !240, !241, !242, !243, !244, !245, !246, !247}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !237, file: !126, line: 498, baseType: !212, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !237, file: !126, line: 499, baseType: !212, size: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !237, file: !126, line: 500, baseType: !212, size: 64, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !237, file: !126, line: 501, baseType: !20, size: 32, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !237, file: !126, line: 502, baseType: !20, size: 32, offset: 224)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !237, file: !126, line: 503, baseType: !154, size: 64, offset: 256)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !237, file: !126, line: 504, baseType: !154, size: 64, offset: 320)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !237, file: !126, line: 505, baseType: !154, size: 64, offset: 384)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !237, file: !126, line: 506, baseType: !248, size: 64, align: 64, offset: 448)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !126, line: 445, size: 64, align: 64, elements: !249)
!249 = !{!250, !251}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !248, file: !126, line: 446, baseType: !18, size: 32)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !248, file: !126, line: 447, baseType: !18, size: 32, offset: 32)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !147, file: !126, line: 798, baseType: !253, size: 384, offset: 3072)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !126, line: 592, size: 384, elements: !254)
!254 = !{!255, !256, !257, !258, !259, !260, !261}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !253, file: !126, line: 593, baseType: !139, size: 128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !253, file: !126, line: 594, baseType: !154, size: 64, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !253, file: !126, line: 595, baseType: !154, size: 64, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !253, file: !126, line: 596, baseType: !18, size: 32, offset: 256)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !253, file: !126, line: 597, baseType: !122, size: 16, offset: 288)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !253, file: !126, line: 598, baseType: !122, size: 16, offset: 304)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !253, file: !126, line: 600, baseType: !262, size: 64, offset: 320)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !147, file: !126, line: 799, baseType: !264, size: 1792, offset: 3456)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !126, line: 610, size: 1792, elements: !265)
!265 = !{!266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !362, !363}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !264, file: !126, line: 611, baseType: !204, size: 192, align: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !264, file: !126, line: 618, baseType: !212, size: 64, offset: 192)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !264, file: !126, line: 619, baseType: !212, size: 64, offset: 256)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !264, file: !126, line: 620, baseType: !212, size: 64, offset: 320)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !264, file: !126, line: 621, baseType: !212, size: 64, offset: 384)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !264, file: !126, line: 622, baseType: !212, size: 64, offset: 448)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !264, file: !126, line: 629, baseType: !223, size: 64, offset: 512)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !264, file: !126, line: 630, baseType: !212, size: 64, offset: 576)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !264, file: !126, line: 631, baseType: !18, size: 32, offset: 640)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !264, file: !126, line: 653, baseType: !18, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !264, file: !126, line: 654, baseType: !18, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !264, file: !126, line: 655, baseType: !18, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !264, file: !126, line: 656, baseType: !18, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !264, file: !126, line: 662, baseType: !280, size: 512, offset: 704)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !27, line: 118, size: 512, elements: !281)
!281 = !{!282, !290, !291, !296, !358, !359, !360, !361}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !280, file: !27, line: 119, baseType: !283, size: 256)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !284, line: 9, size: 256, elements: !285)
!284 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!285 = !{!286, !287}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !283, file: !284, line: 10, baseType: !204, size: 192, align: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !283, file: !284, line: 11, baseType: !288, size: 64, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !289, line: 29, baseType: !223)
!289 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !280, file: !27, line: 120, baseType: !288, size: 64, offset: 256)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !280, file: !27, line: 121, baseType: !292, size: 64, offset: 320)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DISubroutineType(types: !294)
!294 = !{!26, !295}
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !280, file: !27, line: 122, baseType: !297, size: 64, offset: 384)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !27, line: 159, size: 512, align: 512, elements: !299)
!299 = !{!300, !326, !327, !331, !341, !342, !353, !357}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !298, file: !27, line: 160, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !27, line: 215, size: 4608, align: 512, elements: !303)
!303 = !{!304, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !302, file: !27, line: 216, baseType: !305, size: 32)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !92, line: 23, baseType: !91)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !302, file: !27, line: 217, baseType: !18, size: 32, offset: 32)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !302, file: !27, line: 218, baseType: !18, size: 32, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !302, file: !27, line: 219, baseType: !18, size: 32, offset: 96)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !302, file: !27, line: 220, baseType: !18, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !302, file: !27, line: 221, baseType: !18, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !302, file: !27, line: 222, baseType: !18, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !302, file: !27, line: 223, baseType: !18, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !302, file: !27, line: 224, baseType: !18, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !302, file: !27, line: 226, baseType: !18, size: 32, offset: 160)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !302, file: !27, line: 227, baseType: !122, size: 16, offset: 192)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !302, file: !27, line: 228, baseType: !122, size: 16, offset: 208)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !302, file: !27, line: 229, baseType: !18, size: 32, offset: 224)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !302, file: !27, line: 235, baseType: !288, size: 64, offset: 256)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !302, file: !27, line: 236, baseType: !295, size: 64, offset: 320)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !302, file: !27, line: 237, baseType: !288, size: 64, offset: 384)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !302, file: !27, line: 238, baseType: !295, size: 64, offset: 448)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !302, file: !27, line: 239, baseType: !323, size: 4096, align: 512, offset: 512)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 4096, align: 512, elements: !324)
!324 = !{!325}
!325 = !DISubrange(count: 8)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !298, file: !27, line: 161, baseType: !18, size: 32, offset: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !298, file: !27, line: 162, baseType: !328, size: 32, offset: 96)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !104, line: 32, baseType: !329)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !330, line: 96, baseType: !17)
!330 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!331 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !298, file: !27, line: 163, baseType: !332, size: 32, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !333, line: 274, baseType: !334)
!333 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !333, line: 274, size: 32, elements: !335)
!335 = !{!336}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !334, file: !333, line: 274, baseType: !337, size: 32)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !333, line: 69, baseType: !338)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !333, line: 64, size: 32, elements: !339)
!339 = !{!340}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !338, file: !333, line: 65, baseType: !18, size: 32)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !298, file: !27, line: 164, baseType: !295, size: 64, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !298, file: !27, line: 165, baseType: !343, size: 128, offset: 256)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !284, line: 14, size: 128, elements: !344)
!344 = !{!345}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !343, file: !284, line: 15, baseType: !346, size: 128)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !205, line: 26, size: 128, elements: !347)
!347 = !{!348, !352}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !346, file: !205, line: 27, baseType: !349, size: 64)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !205, line: 12, size: 64, elements: !350)
!350 = !{!351}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !349, file: !205, line: 13, baseType: !209, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !346, file: !205, line: 28, baseType: !209, size: 64, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !298, file: !27, line: 166, baseType: !354, size: 64, offset: 384)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DISubroutineType(types: !356)
!356 = !{!288}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !298, file: !27, line: 167, baseType: !288, size: 64, offset: 448)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !280, file: !27, line: 123, baseType: !112, size: 8, offset: 448)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !280, file: !27, line: 124, baseType: !112, size: 8, offset: 456)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !280, file: !27, line: 125, baseType: !112, size: 8, offset: 464)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !280, file: !27, line: 126, baseType: !112, size: 8, offset: 472)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !264, file: !126, line: 671, baseType: !280, size: 512, offset: 1216)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !264, file: !126, line: 679, baseType: !364, size: 64, offset: 1728)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !147, file: !126, line: 800, baseType: !366, size: 64, offset: 5248)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !368)
!368 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !126, line: 800, flags: DIFlagFwdDecl)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !147, file: !126, line: 809, baseType: !370, size: 64, offset: 5312)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !126, line: 70, flags: DIFlagFwdDecl)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !147, file: !126, line: 825, baseType: !373, size: 2048, align: 512, offset: 5632)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !126, line: 509, size: 2048, align: 512, elements: !374)
!374 = !{!375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !373, file: !126, line: 511, baseType: !212, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !373, file: !126, line: 512, baseType: !212, size: 64, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !373, file: !126, line: 513, baseType: !212, size: 64, offset: 128)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !373, file: !126, line: 514, baseType: !212, size: 64, offset: 192)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !373, file: !126, line: 515, baseType: !212, size: 64, offset: 256)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !373, file: !126, line: 516, baseType: !212, size: 64, offset: 320)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !373, file: !126, line: 518, baseType: !212, size: 64, offset: 384)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !373, file: !126, line: 519, baseType: !212, size: 64, offset: 448)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !373, file: !126, line: 520, baseType: !223, size: 64, offset: 512)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !373, file: !126, line: 522, baseType: !212, size: 64, offset: 576)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !373, file: !126, line: 523, baseType: !212, size: 64, offset: 640)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !373, file: !126, line: 524, baseType: !223, size: 64, offset: 704)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !373, file: !126, line: 526, baseType: !223, size: 64, offset: 768)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !373, file: !126, line: 527, baseType: !212, size: 64, offset: 832)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !373, file: !126, line: 529, baseType: !212, size: 64, offset: 896)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !373, file: !126, line: 530, baseType: !212, size: 64, offset: 960)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !373, file: !126, line: 531, baseType: !212, size: 64, offset: 1024)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !373, file: !126, line: 532, baseType: !212, size: 64, offset: 1088)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !373, file: !126, line: 533, baseType: !212, size: 64, offset: 1152)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !373, file: !126, line: 535, baseType: !212, size: 64, offset: 1216)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !373, file: !126, line: 536, baseType: !212, size: 64, offset: 1280)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !373, file: !126, line: 537, baseType: !212, size: 64, offset: 1344)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !373, file: !126, line: 538, baseType: !212, size: 64, offset: 1408)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !373, file: !126, line: 539, baseType: !212, size: 64, offset: 1472)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !373, file: !126, line: 540, baseType: !212, size: 64, offset: 1536)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !373, file: !126, line: 541, baseType: !212, size: 64, offset: 1600)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !373, file: !126, line: 542, baseType: !212, size: 64, offset: 1664)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !373, file: !126, line: 543, baseType: !212, size: 64, offset: 1728)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !147, file: !126, line: 833, baseType: !18, size: 32, offset: 7680)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !147, file: !126, line: 836, baseType: !18, size: 32, offset: 7712)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !147, file: !126, line: 837, baseType: !17, size: 32, offset: 7744)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !147, file: !126, line: 838, baseType: !407, size: 64, offset: 7808)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !409)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !410, line: 19, baseType: !411)
!410 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !410, line: 19, size: 64, elements: !412)
!412 = !{!413}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !411, file: !410, line: 19, baseType: !414, size: 64)
!414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 64, elements: !415)
!415 = !{!416}
!416 = !DISubrange(count: 1)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !147, file: !126, line: 839, baseType: !418, size: 64, offset: 7872)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !147, file: !126, line: 840, baseType: !409, size: 64, offset: 7936)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !147, file: !126, line: 841, baseType: !129, size: 64, offset: 8000)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !147, file: !126, line: 843, baseType: !122, size: 16, offset: 8064)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !147, file: !126, line: 845, baseType: !122, size: 16, offset: 8080)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !147, file: !126, line: 848, baseType: !17, size: 32, offset: 8096)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !147, file: !126, line: 849, baseType: !425, size: 32, offset: 8128)
!425 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !126, line: 718, size: 32, elements: !426)
!426 = !{!427, !434}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !425, file: !126, line: 724, baseType: !428, size: 32)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !425, file: !126, line: 719, size: 32, elements: !429)
!429 = !{!430, !431, !432, !433}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !428, file: !126, line: 720, baseType: !112, size: 8)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !428, file: !126, line: 721, baseType: !112, size: 8, offset: 8)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !428, file: !126, line: 722, baseType: !112, size: 8, offset: 16)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !428, file: !126, line: 723, baseType: !112, size: 8, offset: 24)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !425, file: !126, line: 725, baseType: !20, size: 32)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !147, file: !126, line: 850, baseType: !139, size: 128, offset: 8192)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !147, file: !126, line: 851, baseType: !437, size: 64, offset: 8320)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !126, line: 60, flags: DIFlagFwdDecl)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !147, file: !126, line: 855, baseType: !154, size: 64, offset: 8384)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !147, file: !126, line: 856, baseType: !112, size: 8, offset: 8448)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !147, file: !126, line: 857, baseType: !112, size: 8, offset: 8456)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !147, file: !126, line: 858, baseType: !17, size: 32, offset: 8480)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !147, file: !126, line: 859, baseType: !139, size: 128, offset: 8512)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !147, file: !126, line: 860, baseType: !17, size: 32, offset: 8640)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !147, file: !126, line: 861, baseType: !139, size: 128, offset: 8704)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !147, file: !126, line: 873, baseType: !447, size: 256, offset: 8832)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !126, line: 376, size: 256, elements: !448)
!448 = !{!449, !450, !451, !452}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !447, file: !126, line: 381, baseType: !154, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !447, file: !126, line: 384, baseType: !214, size: 64, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !447, file: !126, line: 389, baseType: !214, size: 64, offset: 128)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !447, file: !126, line: 392, baseType: !214, size: 64, offset: 192)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !147, file: !126, line: 875, baseType: !139, size: 128, offset: 9088)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !147, file: !126, line: 877, baseType: !134, size: 320, offset: 9216)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !147, file: !126, line: 878, baseType: !204, size: 192, align: 64, offset: 9536)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !147, file: !126, line: 881, baseType: !457, size: 64, offset: 9728)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !459, line: 733, size: 10240, elements: !460)
!459 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!460 = !{!461, !644}
!461 = !DIDerivedType(tag: DW_TAG_member, scope: !458, file: !459, line: 734, baseType: !462, size: 10240)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !458, file: !459, line: 734, size: 10240, elements: !463)
!463 = !{!464, !468, !482, !489, !490, !491, !492, !493, !494, !502, !503, !504, !510, !511, !518, !519, !520, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !561, !575, !578, !610, !611, !612, !615, !619, !620, !623, !624, !625, !631, !632}
!464 = !DIDerivedType(tag: DW_TAG_member, scope: !462, file: !459, line: 739, baseType: !465, size: 512, align: 512)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !462, file: !459, line: 739, size: 512, align: 512, elements: !466)
!466 = !{!467}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !465, file: !459, line: 747, baseType: !103, size: 32)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !462, file: !459, line: 750, baseType: !469, size: 128, offset: 512)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !470, line: 218, size: 128, elements: !471)
!470 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!471 = !{!472, !480, !481}
!472 = !DIDerivedType(tag: DW_TAG_member, scope: !469, file: !470, line: 219, baseType: !473, size: 32)
!473 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !469, file: !470, line: 219, size: 32, elements: !474)
!474 = !{!475, !476}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !473, file: !470, line: 220, baseType: !83, size: 32)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !473, file: !470, line: 221, baseType: !477)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !470, line: 197, baseType: !478)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !470, line: 197, elements: !479)
!479 = !{}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !469, file: !470, line: 223, baseType: !18, size: 32, offset: 32)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !469, file: !470, line: 224, baseType: !129, size: 64, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !462, file: !459, line: 752, baseType: !483, size: 64, offset: 640)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{!154, !486, !154, !154, !154, !154}
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !488, line: 537, flags: DIFlagFwdDecl)
!488 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!489 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !462, file: !459, line: 756, baseType: !154, size: 64, offset: 704)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !462, file: !459, line: 757, baseType: !154, size: 64, offset: 768)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !462, file: !459, line: 760, baseType: !154, size: 64, offset: 832)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !462, file: !459, line: 761, baseType: !154, size: 64, offset: 896)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !462, file: !459, line: 763, baseType: !154, size: 64, offset: 960)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !462, file: !459, line: 764, baseType: !495, size: 64, offset: 1024)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !488, line: 299, baseType: !497)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !488, line: 299, size: 64, elements: !498)
!498 = !{!499}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !497, file: !488, line: 299, baseType: !500, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !501, line: 18, baseType: !154)
!501 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!502 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !462, file: !459, line: 773, baseType: !103, size: 32, offset: 1088)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !462, file: !459, line: 785, baseType: !103, size: 32, offset: 1120)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !462, file: !459, line: 795, baseType: !505, size: 64, offset: 1152)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !459, line: 726, size: 128, elements: !507)
!507 = !{!508, !509}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !506, file: !459, line: 727, baseType: !212, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !506, file: !459, line: 728, baseType: !17, size: 32, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !462, file: !459, line: 801, baseType: !154, size: 64, offset: 1216)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !462, file: !459, line: 804, baseType: !512, size: 64, offset: 1280)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !513, line: 13, baseType: !514)
!513 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !104, line: 181, baseType: !515)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !104, line: 179, size: 64, elements: !516)
!516 = !{!517}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !515, file: !104, line: 180, baseType: !223, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !462, file: !459, line: 806, baseType: !17, size: 32, offset: 1344)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !462, file: !459, line: 808, baseType: !83, size: 32, offset: 1376)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !462, file: !459, line: 823, baseType: !521, size: 320, offset: 1408)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !522, line: 48, size: 320, elements: !523)
!522 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!523 = !{!524, !525, !526, !531, !532}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !521, file: !522, line: 49, baseType: !512, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !521, file: !522, line: 55, baseType: !512, size: 64, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !521, file: !522, line: 57, baseType: !527, size: 32, offset: 128)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !528, line: 15, size: 32, elements: !529)
!528 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!529 = !{!530}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !527, file: !528, line: 20, baseType: !103, size: 32)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !521, file: !522, line: 59, baseType: !305, size: 32, offset: 160)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !521, file: !522, line: 60, baseType: !139, size: 128, offset: 192)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !462, file: !459, line: 825, baseType: !139, size: 128, offset: 1728)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !462, file: !459, line: 845, baseType: !17, size: 32, offset: 1856)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !462, file: !459, line: 849, baseType: !154, size: 64, offset: 1920)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !462, file: !459, line: 850, baseType: !154, size: 64, offset: 1984)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !462, file: !459, line: 852, baseType: !154, size: 64, offset: 2048)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !462, file: !459, line: 853, baseType: !154, size: 64, offset: 2112)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !462, file: !459, line: 854, baseType: !514, size: 64, offset: 2176)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !462, file: !459, line: 855, baseType: !154, size: 64, offset: 2240)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !462, file: !459, line: 856, baseType: !154, size: 64, offset: 2304)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !462, file: !459, line: 857, baseType: !154, size: 64, offset: 2368)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !462, file: !459, line: 858, baseType: !154, size: 64, offset: 2432)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !462, file: !459, line: 865, baseType: !337, size: 32, offset: 2496)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !462, file: !459, line: 867, baseType: !83, size: 32, offset: 2528)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !462, file: !459, line: 869, baseType: !154, size: 64, offset: 2560)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !462, file: !459, line: 869, baseType: !154, size: 64, offset: 2624)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !462, file: !459, line: 869, baseType: !154, size: 64, offset: 2688)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !462, file: !459, line: 869, baseType: !154, size: 64, offset: 2752)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !462, file: !459, line: 870, baseType: !154, size: 64, offset: 2816)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !462, file: !459, line: 870, baseType: !154, size: 64, offset: 2880)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !462, file: !459, line: 870, baseType: !154, size: 64, offset: 2944)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !462, file: !459, line: 871, baseType: !154, size: 64, offset: 3008)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !462, file: !459, line: 871, baseType: !154, size: 64, offset: 3072)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !462, file: !459, line: 871, baseType: !154, size: 64, offset: 3136)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !462, file: !459, line: 871, baseType: !154, size: 64, offset: 3200)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !462, file: !459, line: 873, baseType: !558, size: 3328, offset: 3264)
!558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 3328, elements: !559)
!559 = !{!560}
!560 = !DISubrange(count: 52)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !462, file: !459, line: 875, baseType: !562, size: 1280, offset: 6592)
!562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 1280, elements: !573)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !564, line: 22, size: 320, elements: !565)
!564 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!565 = !{!566, !567, !568, !569}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !563, file: !564, line: 23, baseType: !305, size: 32)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !563, file: !564, line: 24, baseType: !223, size: 64, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !563, file: !564, line: 26, baseType: !139, size: 128, offset: 128)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !563, file: !564, line: 28, baseType: !570, size: 64, offset: 256)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !21, line: 20, baseType: !572)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !23, line: 26, baseType: !17)
!573 = !{!574}
!574 = !DISubrange(count: 4)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !462, file: !459, line: 877, baseType: !576, size: 64, offset: 7872)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !459, line: 877, flags: DIFlagFwdDecl)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !462, file: !459, line: 880, baseType: !579, size: 1088, offset: 7936)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !580, line: 72, baseType: !581)
!580 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !580, line: 23, size: 1088, elements: !582)
!582 = !{!583, !584, !585, !586, !587, !590, !591, !599, !600, !604, !605, !606}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !581, file: !580, line: 28, baseType: !212, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !581, file: !580, line: 38, baseType: !514, size: 64, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !581, file: !580, line: 40, baseType: !154, size: 64, offset: 128)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !581, file: !580, line: 43, baseType: !521, size: 320, offset: 192)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !581, file: !580, line: 44, baseType: !588, size: 64, offset: 512)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !580, line: 44, flags: DIFlagFwdDecl)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !581, file: !580, line: 48, baseType: !154, size: 64, offset: 576)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !581, file: !580, line: 59, baseType: !592, size: 256, offset: 640)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !593, line: 66, size: 256, elements: !594)
!593 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!594 = !{!595, !596, !597, !598}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !592, file: !593, line: 67, baseType: !512, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !592, file: !593, line: 68, baseType: !305, size: 32, offset: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !592, file: !593, line: 70, baseType: !527, size: 32, offset: 96)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !592, file: !593, line: 72, baseType: !139, size: 128, offset: 128)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !581, file: !580, line: 60, baseType: !129, size: 64, offset: 896)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !581, file: !580, line: 61, baseType: !601, size: 64, offset: 960)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !603)
!603 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !580, line: 61, flags: DIFlagFwdDecl)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !581, file: !580, line: 63, baseType: !103, size: 32, offset: 1024)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !581, file: !580, line: 69, baseType: !120, size: 16, offset: 1056)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !581, file: !580, line: 70, baseType: !607, size: 16, offset: 1072)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !21, line: 18, baseType: !608)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !23, line: 23, baseType: !609)
!609 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !462, file: !459, line: 882, baseType: !154, size: 64, offset: 9024)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !462, file: !459, line: 885, baseType: !83, size: 32, offset: 9088)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !462, file: !459, line: 886, baseType: !613, size: 64, offset: 9152)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !459, line: 732, flags: DIFlagFwdDecl)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !462, file: !459, line: 901, baseType: !616, size: 64, offset: 9216)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !618, line: 18, flags: DIFlagFwdDecl)
!618 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!619 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !462, file: !459, line: 904, baseType: !486, size: 64, offset: 9280)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !462, file: !459, line: 906, baseType: !621, size: 64, offset: 9344)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !459, line: 906, flags: DIFlagFwdDecl)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !462, file: !459, line: 930, baseType: !103, size: 32, offset: 9408)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !462, file: !459, line: 933, baseType: !103, size: 32, offset: 9440)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !462, file: !459, line: 935, baseType: !626, size: 64, offset: 9472)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !38, line: 103, size: 64, elements: !627)
!627 = !{!628}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !626, file: !38, line: 104, baseType: !629, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !38, line: 101, flags: DIFlagFwdDecl)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !462, file: !459, line: 940, baseType: !512, size: 64, offset: 9536)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !462, file: !459, line: 942, baseType: !633, size: 256, offset: 9600)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !634, line: 98, size: 256, elements: !635)
!634 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!635 = !{!636, !637, !638}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !633, file: !634, line: 99, baseType: !512, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !633, file: !634, line: 100, baseType: !139, size: 128, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !633, file: !634, line: 101, baseType: !639, size: 64, offset: 192)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !634, line: 21, baseType: !640)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{null, !643}
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !458, file: !459, line: 986, baseType: !645, offset: 10240)
!645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, elements: !646)
!646 = !{!647}
!647 = !DISubrange(count: -1)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !147, file: !126, line: 882, baseType: !457, size: 64, offset: 9792)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !147, file: !126, line: 884, baseType: !17, size: 32, offset: 9856)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !147, file: !126, line: 885, baseType: !17, size: 32, offset: 9888)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !147, file: !126, line: 886, baseType: !17, size: 32, offset: 9920)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !147, file: !126, line: 888, baseType: !17, size: 32, offset: 9952)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !147, file: !126, line: 890, baseType: !154, size: 64, offset: 9984)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !147, file: !126, line: 893, baseType: !18, size: 32, offset: 10048)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !147, file: !126, line: 896, baseType: !18, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !147, file: !126, line: 897, baseType: !18, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !147, file: !126, line: 898, baseType: !18, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !147, file: !126, line: 899, baseType: !18, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !147, file: !126, line: 919, baseType: !18, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !147, file: !126, line: 922, baseType: !18, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !147, file: !126, line: 923, baseType: !18, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !147, file: !126, line: 925, baseType: !18, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !147, file: !126, line: 939, baseType: !18, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !147, file: !126, line: 941, baseType: !18, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !147, file: !126, line: 944, baseType: !18, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !147, file: !126, line: 956, baseType: !18, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !147, file: !126, line: 962, baseType: !18, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !147, file: !126, line: 966, baseType: !18, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !147, file: !126, line: 969, baseType: !154, size: 64, offset: 10176)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !147, file: !126, line: 971, baseType: !671, size: 448, offset: 10240)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !32, line: 25, size: 448, elements: !672)
!672 = !{!673, !674, !680}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !671, file: !32, line: 26, baseType: !154, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !671, file: !32, line: 27, baseType: !675, size: 64, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DISubroutineType(types: !677)
!677 = !{!678, !679}
!678 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, scope: !671, file: !32, line: 28, baseType: !681, size: 320, offset: 128)
!681 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !671, file: !32, line: 28, size: 320, elements: !682)
!682 = !{!683, !692, !717}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !681, file: !32, line: 37, baseType: !684, size: 320)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !681, file: !32, line: 30, size: 320, elements: !685)
!685 = !{!686, !687, !688, !689, !690, !691}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !684, file: !32, line: 31, baseType: !19, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !684, file: !32, line: 32, baseType: !20, size: 32, offset: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !684, file: !32, line: 33, baseType: !20, size: 32, offset: 96)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !684, file: !32, line: 34, baseType: !20, size: 32, offset: 128)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !684, file: !32, line: 35, baseType: !212, size: 64, offset: 192)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !684, file: !32, line: 36, baseType: !19, size: 64, offset: 256)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !681, file: !32, line: 47, baseType: !693, size: 192)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !681, file: !32, line: 39, size: 192, elements: !694)
!694 = !{!695, !696, !697, !716}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !693, file: !32, line: 40, baseType: !328, size: 32)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !693, file: !32, line: 41, baseType: !31, size: 32, offset: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, scope: !693, file: !32, line: 42, baseType: !698, size: 64, offset: 64)
!698 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !693, file: !32, line: 42, size: 64, elements: !699)
!699 = !{!700, !708}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !698, file: !32, line: 43, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !703, line: 7, size: 128, elements: !704)
!703 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!704 = !{!705, !707}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !702, file: !703, line: 8, baseType: !706, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !330, line: 93, baseType: !225)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !702, file: !703, line: 9, baseType: !225, size: 64, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !698, file: !32, line: 44, baseType: !709, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !711, line: 7, size: 64, elements: !712)
!711 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!712 = !{!713, !715}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !710, file: !711, line: 8, baseType: !714, size: 32)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !711, line: 5, baseType: !571)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !710, file: !711, line: 9, baseType: !571, size: 32, offset: 32)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !693, file: !32, line: 46, baseType: !212, size: 64, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !681, file: !32, line: 55, baseType: !718, size: 256)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !681, file: !32, line: 49, size: 256, elements: !719)
!719 = !{!720, !723, !724, !725, !726}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !718, file: !32, line: 50, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !32, line: 14, flags: DIFlagFwdDecl)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !718, file: !32, line: 51, baseType: !17, size: 32, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !718, file: !32, line: 52, baseType: !17, size: 32, offset: 96)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !718, file: !32, line: 53, baseType: !154, size: 64, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !718, file: !32, line: 54, baseType: !154, size: 64, offset: 192)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !147, file: !126, line: 973, baseType: !728, size: 32, offset: 10688)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !104, line: 27, baseType: !729)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !330, line: 28, baseType: !17)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !147, file: !126, line: 974, baseType: !728, size: 32, offset: 10720)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !147, file: !126, line: 978, baseType: !154, size: 64, offset: 10752)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !147, file: !126, line: 987, baseType: !146, size: 64, offset: 10816)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !147, file: !126, line: 990, baseType: !146, size: 64, offset: 10880)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !147, file: !126, line: 995, baseType: !139, size: 128, offset: 10944)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !147, file: !126, line: 996, baseType: !139, size: 128, offset: 11072)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !147, file: !126, line: 997, baseType: !146, size: 64, offset: 11200)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !147, file: !126, line: 1005, baseType: !139, size: 128, offset: 11264)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !147, file: !126, line: 1006, baseType: !139, size: 128, offset: 11392)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !147, file: !126, line: 1009, baseType: !740, size: 64, offset: 11520)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !742, line: 59, size: 768, elements: !743)
!742 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!743 = !{!744, !745, !746, !747, !758, !759, !766, !775}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !741, file: !742, line: 61, baseType: !161, size: 32)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !741, file: !742, line: 62, baseType: !18, size: 32, offset: 32)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !741, file: !742, line: 63, baseType: !83, size: 32, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !741, file: !742, line: 65, baseType: !748, size: 256, offset: 128)
!748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !749, size: 256, elements: !573)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !104, line: 194, size: 64, elements: !750)
!750 = !{!751}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !749, file: !104, line: 195, baseType: !752, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !104, line: 198, size: 128, elements: !754)
!754 = !{!755, !756}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !753, file: !104, line: 199, baseType: !752, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !753, file: !104, line: 199, baseType: !757, size: 64, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !741, file: !742, line: 66, baseType: !749, size: 64, offset: 384)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !741, file: !742, line: 68, baseType: !760, size: 192, offset: 448)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !761, line: 41, baseType: !762)
!761 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !761, line: 37, size: 192, elements: !763)
!763 = !{!764, !765}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !762, file: !761, line: 38, baseType: !83, size: 32)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !762, file: !761, line: 39, baseType: !139, size: 128, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !741, file: !742, line: 69, baseType: !767, size: 128, align: 64, offset: 640)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !104, line: 232, size: 128, align: 64, elements: !768)
!768 = !{!769, !771}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !767, file: !104, line: 233, baseType: !770, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !767, file: !104, line: 234, baseType: !772, size: 64, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{null, !770}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !741, file: !742, line: 70, baseType: !776, offset: 768)
!776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !777, elements: !646)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !742, line: 54, size: 128, elements: !778)
!778 = !{!779, !780}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !777, file: !742, line: 55, baseType: !17, size: 32)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !777, file: !742, line: 56, baseType: !781, size: 64, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !742, line: 56, flags: DIFlagFwdDecl)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !147, file: !126, line: 1010, baseType: !784, size: 512, offset: 11584)
!784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !753, size: 512, elements: !573)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !147, file: !126, line: 1011, baseType: !139, size: 128, offset: 12096)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !147, file: !126, line: 1012, baseType: !139, size: 128, offset: 12224)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !147, file: !126, line: 1014, baseType: !788, size: 64, offset: 12352)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !790, line: 26, size: 256, elements: !791)
!790 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!791 = !{!792, !793}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !789, file: !790, line: 27, baseType: !18, size: 32)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !789, file: !790, line: 28, baseType: !794, size: 192, offset: 64)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !795, line: 43, size: 192, elements: !796)
!795 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!796 = !{!797, !798}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !794, file: !795, line: 44, baseType: !305, size: 32)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !794, file: !795, line: 45, baseType: !139, size: 128, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !147, file: !126, line: 1017, baseType: !800, size: 64, offset: 12416)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !147, file: !126, line: 1020, baseType: !800, size: 64, offset: 12480)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !147, file: !126, line: 1023, baseType: !129, size: 64, offset: 12544)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !147, file: !126, line: 1025, baseType: !212, size: 64, offset: 12608)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !147, file: !126, line: 1026, baseType: !212, size: 64, offset: 12672)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !147, file: !126, line: 1031, baseType: !212, size: 64, offset: 12736)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !147, file: !126, line: 1032, baseType: !807, size: 192, offset: 12800)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !126, line: 324, size: 192, elements: !808)
!808 = !{!809, !810, !811}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !807, file: !126, line: 326, baseType: !212, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !807, file: !126, line: 327, baseType: !212, size: 64, offset: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !807, file: !126, line: 328, baseType: !305, size: 32, offset: 128)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !147, file: !126, line: 1041, baseType: !154, size: 64, offset: 12992)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !147, file: !126, line: 1042, baseType: !154, size: 64, offset: 13056)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !147, file: !126, line: 1045, baseType: !212, size: 64, offset: 13120)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !147, file: !126, line: 1048, baseType: !212, size: 64, offset: 13184)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !147, file: !126, line: 1051, baseType: !154, size: 64, offset: 13248)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !147, file: !126, line: 1052, baseType: !154, size: 64, offset: 13312)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !147, file: !126, line: 1055, baseType: !819, size: 640, offset: 13376)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !820, line: 132, size: 640, elements: !821)
!820 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!821 = !{!822, !830, !831}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !819, file: !820, line: 133, baseType: !823, size: 576)
!823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !824, size: 576, elements: !828)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !820, line: 117, size: 192, elements: !825)
!825 = !{!826, !827}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !824, file: !820, line: 118, baseType: !212, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !824, file: !820, line: 119, baseType: !343, size: 128, offset: 64)
!828 = !{!829}
!829 = !DISubrange(count: 3)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !819, file: !820, line: 134, baseType: !18, size: 32, offset: 576)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !819, file: !820, line: 135, baseType: !18, size: 32, offset: 608)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !147, file: !126, line: 1058, baseType: !833, size: 448, offset: 14016)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !820, line: 144, size: 448, elements: !834)
!834 = !{!835, !836, !837}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !833, file: !820, line: 145, baseType: !767, size: 128, align: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !833, file: !820, line: 146, baseType: !592, size: 256, offset: 128)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !833, file: !820, line: 147, baseType: !18, size: 32, offset: 384)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !147, file: !126, line: 1064, baseType: !839, size: 64, offset: 14464)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !841)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !842, line: 110, size: 1472, elements: !843)
!842 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!843 = !{!844, !845, !852, !859, !860, !861, !862, !863, !864, !865, !866, !872, !873, !874, !875, !876, !877, !992, !993, !994, !995, !996, !1019, !1020, !1024, !1032}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !841, file: !842, line: 111, baseType: !512, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !841, file: !842, line: 112, baseType: !846, size: 32, offset: 64)
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !618, line: 23, baseType: !847)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !618, line: 21, size: 32, elements: !848)
!848 = !{!849}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !847, file: !618, line: 22, baseType: !850, size: 32)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !104, line: 37, baseType: !851)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !330, line: 49, baseType: !18)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !841, file: !842, line: 113, baseType: !853, size: 32, offset: 96)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !618, line: 28, baseType: !854)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !618, line: 26, size: 32, elements: !855)
!855 = !{!856}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !854, file: !618, line: 27, baseType: !857, size: 32)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !104, line: 38, baseType: !858)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !330, line: 50, baseType: !18)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !841, file: !842, line: 114, baseType: !846, size: 32, offset: 128)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !841, file: !842, line: 115, baseType: !853, size: 32, offset: 160)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !841, file: !842, line: 116, baseType: !846, size: 32, offset: 192)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !841, file: !842, line: 117, baseType: !853, size: 32, offset: 224)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !841, file: !842, line: 118, baseType: !846, size: 32, offset: 256)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !841, file: !842, line: 119, baseType: !853, size: 32, offset: 288)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !841, file: !842, line: 120, baseType: !18, size: 32, offset: 320)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !841, file: !842, line: 121, baseType: !867, size: 64, offset: 384)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !868, line: 24, baseType: !869)
!868 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !868, line: 24, size: 64, elements: !870)
!870 = !{!871}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !869, file: !868, line: 24, baseType: !212, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !841, file: !842, line: 122, baseType: !867, size: 64, offset: 448)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !841, file: !842, line: 123, baseType: !867, size: 64, offset: 512)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !841, file: !842, line: 124, baseType: !867, size: 64, offset: 576)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !841, file: !842, line: 125, baseType: !867, size: 64, offset: 640)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !841, file: !842, line: 127, baseType: !114, size: 8, offset: 704)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !841, file: !842, line: 129, baseType: !878, size: 64, offset: 768)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !880, line: 195, size: 1728, elements: !881)
!880 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!881 = !{!882, !883, !886, !891, !892, !895, !896, !903, !904, !905, !906, !909, !910, !911, !912, !913, !956, !977}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !879, file: !880, line: 196, baseType: !161, size: 32)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !879, file: !880, line: 197, baseType: !884, size: 32, offset: 32)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !880, line: 28, baseType: !885)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !104, line: 104, baseType: !571)
!886 = !DIDerivedType(tag: DW_TAG_member, scope: !879, file: !880, line: 198, baseType: !887, size: 192, offset: 64)
!887 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !879, file: !880, line: 198, size: 192, elements: !888)
!888 = !{!889, !890}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !887, file: !880, line: 199, baseType: !139, size: 128)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !887, file: !880, line: 200, baseType: !204, size: 192, align: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !879, file: !880, line: 205, baseType: !521, size: 320, offset: 256)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !879, file: !880, line: 206, baseType: !893, size: 64, offset: 576)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !880, line: 206, flags: DIFlagFwdDecl)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !879, file: !880, line: 207, baseType: !129, size: 64, offset: 640)
!896 = !DIDerivedType(tag: DW_TAG_member, scope: !879, file: !880, line: 208, baseType: !897, size: 64, offset: 704)
!897 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !879, file: !880, line: 208, size: 64, elements: !898)
!898 = !{!899, !902}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !897, file: !880, line: 209, baseType: !900, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !901, line: 8, baseType: !224)
!901 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!902 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !897, file: !880, line: 210, baseType: !900, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !879, file: !880, line: 212, baseType: !900, size: 64, offset: 768)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !879, file: !880, line: 213, baseType: !846, size: 32, offset: 832)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !879, file: !880, line: 214, baseType: !853, size: 32, offset: 864)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !879, file: !880, line: 215, baseType: !907, size: 32, offset: 896)
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !880, line: 31, baseType: !908)
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !104, line: 110, baseType: !20)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !879, file: !880, line: 216, baseType: !122, size: 16, offset: 928)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !879, file: !880, line: 217, baseType: !122, size: 16, offset: 944)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !879, file: !880, line: 221, baseType: !609, size: 16, offset: 960)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !879, file: !880, line: 228, baseType: !154, size: 64, offset: 1024)
!913 = !DIDerivedType(tag: DW_TAG_member, scope: !879, file: !880, line: 245, baseType: !914, size: 320, offset: 1088)
!914 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !879, file: !880, line: 245, size: 320, elements: !915)
!915 = !{!916, !947}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !914, file: !880, line: 246, baseType: !917, size: 320)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !880, line: 114, size: 320, elements: !918)
!918 = !{!919, !920, !932, !935, !944}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !917, file: !880, line: 116, baseType: !154, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, scope: !917, file: !880, line: 117, baseType: !921, size: 64, offset: 64)
!921 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !917, file: !880, line: 117, size: 64, elements: !922)
!922 = !{!923, !931}
!923 = !DIDerivedType(tag: DW_TAG_member, scope: !921, file: !880, line: 118, baseType: !924, size: 64)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !921, file: !880, line: 118, size: 64, elements: !925)
!925 = !{!926, !927}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !924, file: !880, line: 120, baseType: !120, size: 16)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !924, file: !880, line: 121, baseType: !928, size: 48, offset: 16)
!928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !929)
!929 = !{!930}
!930 = !DISubrange(count: 6)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !921, file: !880, line: 127, baseType: !154, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !917, file: !880, line: 129, baseType: !933, size: 64, offset: 128)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !880, line: 102, flags: DIFlagFwdDecl)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !917, file: !880, line: 130, baseType: !936, size: 64, offset: 192)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !880, line: 108, size: 192, elements: !938)
!938 = !{!939, !940, !941}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !937, file: !880, line: 109, baseType: !767, size: 128, align: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !937, file: !880, line: 110, baseType: !161, size: 32, offset: 128)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !937, file: !880, line: 111, baseType: !942, size: 8, offset: 160)
!942 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !104, line: 35, baseType: !943)
!943 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !917, file: !880, line: 131, baseType: !945, size: 64, offset: 256)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!947 = !DIDerivedType(tag: DW_TAG_member, scope: !914, file: !880, line: 247, baseType: !948, size: 320)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !914, file: !880, line: 247, size: 320, elements: !949)
!949 = !{!950, !951, !952, !953, !954}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !948, file: !880, line: 248, baseType: !154, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !948, file: !880, line: 249, baseType: !154, size: 64, offset: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !948, file: !880, line: 250, baseType: !933, size: 64, offset: 128)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !948, file: !880, line: 251, baseType: !936, size: 64, offset: 192)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !948, file: !880, line: 252, baseType: !955, size: 64, offset: 256)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, scope: !879, file: !880, line: 260, baseType: !957, size: 256, offset: 1408)
!957 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !879, file: !880, line: 260, size: 256, elements: !958)
!958 = !{!959, !965}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !957, file: !880, line: 261, baseType: !960, size: 256)
!960 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !880, line: 134, size: 256, elements: !961)
!961 = !{!962, !963}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !960, file: !880, line: 135, baseType: !129, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !960, file: !880, line: 136, baseType: !964, size: 256)
!964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 256, elements: !573)
!965 = !DIDerivedType(tag: DW_TAG_member, scope: !957, file: !880, line: 262, baseType: !966, size: 256)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !957, file: !880, line: 262, size: 256, elements: !967)
!967 = !{!968, !969}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !966, file: !880, line: 264, baseType: !139, size: 128)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !966, file: !880, line: 265, baseType: !970, size: 128, offset: 128)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !971, line: 22, size: 128, elements: !972)
!971 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!972 = !{!973, !976}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !970, file: !971, line: 23, baseType: !974, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !971, line: 23, flags: DIFlagFwdDecl)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !970, file: !971, line: 24, baseType: !154, size: 64, offset: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !879, file: !880, line: 280, baseType: !978, size: 64, offset: 1664)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !880, line: 176, size: 192, elements: !980)
!980 = !{!981, !990, !991}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !979, file: !880, line: 177, baseType: !982, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !880, line: 171, baseType: !983)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DISubroutineType(types: !985)
!985 = !{!17, !878, !986, !988, !878}
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !934)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !960)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !979, file: !880, line: 178, baseType: !878, size: 64, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !979, file: !880, line: 179, baseType: !933, size: 64, offset: 128)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !841, file: !842, line: 130, baseType: !878, size: 64, offset: 832)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !841, file: !842, line: 131, baseType: !878, size: 64, offset: 896)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !841, file: !842, line: 132, baseType: !878, size: 64, offset: 960)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !841, file: !842, line: 135, baseType: !129, size: 64, offset: 1024)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !841, file: !842, line: 137, baseType: !997, size: 64, offset: 1088)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !999, line: 14, size: 1088, elements: !1000)
!999 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1000 = !{!1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !998, file: !999, line: 15, baseType: !161, size: 32)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !998, file: !999, line: 17, baseType: !563, size: 320, offset: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !998, file: !999, line: 19, baseType: !154, size: 64, offset: 384)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !998, file: !999, line: 20, baseType: !512, size: 64, offset: 448)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !998, file: !999, line: 23, baseType: !753, size: 128, offset: 512)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !998, file: !999, line: 24, baseType: !846, size: 32, offset: 640)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !998, file: !999, line: 29, baseType: !512, size: 64, offset: 704)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !998, file: !999, line: 36, baseType: !1009, size: 320, offset: 768)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1010, line: 15, size: 320, elements: !1011)
!1010 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1011 = !{!1012, !1013, !1014, !1015, !1016, !1017, !1018}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1009, file: !1010, line: 16, baseType: !305, size: 32)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1009, file: !1010, line: 18, baseType: !17, size: 32, offset: 32)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1009, file: !1010, line: 19, baseType: !17, size: 32, offset: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1009, file: !1010, line: 20, baseType: !17, size: 32, offset: 96)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1009, file: !1010, line: 21, baseType: !17, size: 32, offset: 128)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1009, file: !1010, line: 22, baseType: !154, size: 64, offset: 192)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1009, file: !1010, line: 23, baseType: !154, size: 64, offset: 256)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !841, file: !842, line: 138, baseType: !616, size: 64, offset: 1152)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !841, file: !842, line: 139, baseType: !1021, size: 64, offset: 1216)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1023, line: 16, flags: DIFlagFwdDecl)
!1023 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !841, file: !842, line: 140, baseType: !1025, size: 64, offset: 1280)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !842, line: 25, size: 64, elements: !1027)
!1027 = !{!1028, !1029, !1030}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1026, file: !842, line: 26, baseType: !103, size: 32)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1026, file: !842, line: 27, baseType: !17, size: 32, offset: 32)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1026, file: !842, line: 28, baseType: !1031, offset: 64)
!1031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !853, elements: !646)
!1032 = !DIDerivedType(tag: DW_TAG_member, scope: !841, file: !842, line: 142, baseType: !1033, size: 128, offset: 1344)
!1033 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !841, file: !842, line: 142, size: 128, elements: !1034)
!1034 = !{!1035, !1036}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1033, file: !842, line: 143, baseType: !17, size: 32)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1033, file: !842, line: 144, baseType: !767, size: 128, align: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !147, file: !126, line: 1067, baseType: !839, size: 64, offset: 14528)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !147, file: !126, line: 1070, baseType: !839, size: 64, offset: 14592)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !147, file: !126, line: 1074, baseType: !878, size: 64, offset: 14656)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !147, file: !126, line: 1084, baseType: !1041, size: 128, offset: 14720)
!1041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !1042)
!1042 = !{!1043}
!1043 = !DISubrange(count: 16)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !147, file: !126, line: 1086, baseType: !1045, size: 64, offset: 14848)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !126, line: 55, flags: DIFlagFwdDecl)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !147, file: !126, line: 1089, baseType: !1048, size: 64, offset: 14912)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1049, line: 12, size: 64, elements: !1050)
!1049 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1050 = !{!1051}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1048, file: !1049, line: 13, baseType: !1052, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1049, line: 8, flags: DIFlagFwdDecl)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !147, file: !126, line: 1090, baseType: !1055, size: 128, offset: 14976)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1056, line: 13, size: 128, elements: !1057)
!1056 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1057 = !{!1058}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1055, file: !1056, line: 14, baseType: !139, size: 128)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !147, file: !126, line: 1097, baseType: !1060, size: 64, offset: 15104)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !126, line: 50, flags: DIFlagFwdDecl)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !147, file: !126, line: 1100, baseType: !1063, size: 64, offset: 15168)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !126, line: 1100, flags: DIFlagFwdDecl)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !147, file: !126, line: 1103, baseType: !1066, size: 64, offset: 15232)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !126, line: 53, flags: DIFlagFwdDecl)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !147, file: !126, line: 1107, baseType: !1069, size: 64, offset: 15296)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !126, line: 56, flags: DIFlagFwdDecl)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !147, file: !126, line: 1110, baseType: !1072, size: 64, offset: 15360)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1074, line: 93, size: 8768, elements: !1075)
!1074 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!1075 = !{!1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1125, !1134, !1135, !1137, !1138, !1139, !1142, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1184, !1185, !1193, !1203, !1206, !1207, !1210, !1211, !1212, !1213, !1214, !1215}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1073, file: !1074, line: 94, baseType: !161, size: 32)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1073, file: !1074, line: 95, baseType: !103, size: 32, offset: 32)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1073, file: !1074, line: 96, baseType: !17, size: 32, offset: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !1073, file: !1074, line: 97, baseType: !17, size: 32, offset: 96)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1073, file: !1074, line: 98, baseType: !139, size: 128, offset: 128)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1073, file: !1074, line: 100, baseType: !760, size: 192, offset: 256)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1073, file: !1074, line: 103, baseType: !146, size: 64, offset: 448)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1073, file: !1074, line: 106, baseType: !1084, size: 192, offset: 512)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1023, line: 32, size: 192, elements: !1085)
!1085 = !{!1086, !1087}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1084, file: !1023, line: 33, baseType: !139, size: 128)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1084, file: !1023, line: 34, baseType: !1088, size: 64, offset: 128)
!1088 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1089, line: 25, baseType: !1090)
!1089 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1089, line: 23, size: 64, elements: !1091)
!1091 = !{!1092}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1090, file: !1089, line: 24, baseType: !414, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1073, file: !1074, line: 109, baseType: !749, size: 64, offset: 704)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1073, file: !1074, line: 112, baseType: !17, size: 32, offset: 768)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1073, file: !1074, line: 114, baseType: !17, size: 32, offset: 800)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !1073, file: !1074, line: 115, baseType: !146, size: 64, offset: 832)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1073, file: !1074, line: 118, baseType: !17, size: 32, offset: 896)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1073, file: !1074, line: 119, baseType: !18, size: 32, offset: 928)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1073, file: !1074, line: 121, baseType: !1100, size: 64, offset: 960)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1074, line: 80, size: 448, elements: !1102)
!1102 = !{!1103, !1104, !1110}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1101, file: !1074, line: 81, baseType: !103, size: 32)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1101, file: !1074, line: 82, baseType: !1105, size: 128, offset: 64)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1074, line: 75, size: 128, elements: !1106)
!1106 = !{!1107, !1108}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1105, file: !1074, line: 76, baseType: !146, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1105, file: !1074, line: 77, baseType: !1109, size: 64, offset: 64)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1101, file: !1074, line: 83, baseType: !789, size: 256, offset: 192)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1073, file: !1074, line: 132, baseType: !18, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1073, file: !1074, line: 133, baseType: !18, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !1073, file: !1074, line: 138, baseType: !18, size: 32, offset: 1056)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1073, file: !1074, line: 139, baseType: !139, size: 128, offset: 1088)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1073, file: !1074, line: 142, baseType: !280, size: 512, offset: 1216)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1073, file: !1074, line: 143, baseType: !288, size: 64, offset: 1728)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1073, file: !1074, line: 150, baseType: !1118, size: 256, offset: 1792)
!1118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1119, size: 256, elements: !1123)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1074, line: 38, size: 128, elements: !1120)
!1120 = !{!1121, !1122}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1119, file: !1074, line: 39, baseType: !212, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1119, file: !1074, line: 40, baseType: !212, size: 64, offset: 64)
!1123 = !{!1124}
!1124 = !DISubrange(count: 2)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1073, file: !1074, line: 156, baseType: !1126, size: 192, offset: 2048)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1074, line: 66, size: 192, elements: !1127)
!1127 = !{!1128}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1126, file: !1074, line: 67, baseType: !1129, size: 192)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1074, line: 47, size: 192, elements: !1130)
!1130 = !{!1131, !1132, !1133}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1129, file: !1074, line: 48, baseType: !514, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1129, file: !1074, line: 49, baseType: !514, size: 64, offset: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1129, file: !1074, line: 50, baseType: !514, size: 64, offset: 128)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1073, file: !1074, line: 160, baseType: !819, size: 640, offset: 2240)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1073, file: !1074, line: 163, baseType: !1136, size: 256, offset: 2880)
!1136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !740, size: 256, elements: !573)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1073, file: !1074, line: 169, baseType: !740, size: 64, offset: 3136)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1073, file: !1074, line: 172, baseType: !17, size: 32, offset: 3200)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1073, file: !1074, line: 174, baseType: !1140, size: 64, offset: 3264)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1074, line: 174, flags: DIFlagFwdDecl)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1073, file: !1074, line: 185, baseType: !1143, size: 64, offset: 3328)
!1143 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !333, line: 860, baseType: !1144)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !333, line: 853, size: 64, elements: !1145)
!1145 = !{!1146, !1151}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1144, file: !333, line: 858, baseType: !1147, size: 32)
!1147 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !333, line: 275, baseType: !1148)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !333, line: 275, size: 32, elements: !1149)
!1149 = !{!1150}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1148, file: !333, line: 275, baseType: !337, size: 32)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1144, file: !333, line: 859, baseType: !83, size: 32, offset: 32)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1073, file: !1074, line: 186, baseType: !212, size: 64, offset: 3392)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1073, file: !1074, line: 186, baseType: !212, size: 64, offset: 3456)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1073, file: !1074, line: 186, baseType: !212, size: 64, offset: 3520)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1073, file: !1074, line: 186, baseType: !212, size: 64, offset: 3584)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1073, file: !1074, line: 187, baseType: !212, size: 64, offset: 3648)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1073, file: !1074, line: 188, baseType: !212, size: 64, offset: 3712)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1073, file: !1074, line: 189, baseType: !807, size: 192, offset: 3776)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1073, file: !1074, line: 190, baseType: !154, size: 64, offset: 3968)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1073, file: !1074, line: 190, baseType: !154, size: 64, offset: 4032)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1073, file: !1074, line: 190, baseType: !154, size: 64, offset: 4096)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1073, file: !1074, line: 190, baseType: !154, size: 64, offset: 4160)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1073, file: !1074, line: 191, baseType: !154, size: 64, offset: 4224)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1073, file: !1074, line: 191, baseType: !154, size: 64, offset: 4288)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1073, file: !1074, line: 191, baseType: !154, size: 64, offset: 4352)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1073, file: !1074, line: 191, baseType: !154, size: 64, offset: 4416)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1073, file: !1074, line: 192, baseType: !154, size: 64, offset: 4480)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1073, file: !1074, line: 192, baseType: !154, size: 64, offset: 4544)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1073, file: !1074, line: 192, baseType: !154, size: 64, offset: 4608)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1073, file: !1074, line: 192, baseType: !154, size: 64, offset: 4672)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1073, file: !1074, line: 193, baseType: !154, size: 64, offset: 4736)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1073, file: !1074, line: 193, baseType: !154, size: 64, offset: 4800)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1073, file: !1074, line: 194, baseType: !1174, size: 448, offset: 4864)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1175, line: 12, size: 448, elements: !1176)
!1175 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1176 = !{!1177, !1178, !1179, !1180, !1181, !1182, !1183}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1174, file: !1175, line: 15, baseType: !212, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1174, file: !1175, line: 17, baseType: !212, size: 64, offset: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1174, file: !1175, line: 19, baseType: !212, size: 64, offset: 128)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1174, file: !1175, line: 21, baseType: !212, size: 64, offset: 192)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1174, file: !1175, line: 29, baseType: !212, size: 64, offset: 256)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1174, file: !1175, line: 35, baseType: !212, size: 64, offset: 320)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1174, file: !1175, line: 44, baseType: !212, size: 64, offset: 384)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1073, file: !1074, line: 202, baseType: !214, size: 64, offset: 5312)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1073, file: !1074, line: 213, baseType: !1186, size: 2048, offset: 5376)
!1186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1187, size: 2048, elements: !1042)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1188, line: 43, size: 128, elements: !1189)
!1188 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!1189 = !{!1190, !1192}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1187, file: !1188, line: 44, baseType: !1191, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !330, line: 16, baseType: !154)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1187, file: !1188, line: 45, baseType: !1191, size: 64, offset: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !1073, file: !1074, line: 216, baseType: !1194, size: 448, offset: 7424)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !1074, line: 30, size: 448, elements: !1195)
!1195 = !{!1196, !1197, !1198, !1199, !1200, !1201, !1202}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !1194, file: !1074, line: 31, baseType: !17, size: 32)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !1194, file: !1074, line: 32, baseType: !678, size: 64, offset: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !1194, file: !1074, line: 33, baseType: !154, size: 64, offset: 128)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !1194, file: !1074, line: 34, baseType: !212, size: 64, offset: 192)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !1194, file: !1074, line: 34, baseType: !212, size: 64, offset: 256)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !1194, file: !1074, line: 35, baseType: !154, size: 64, offset: 320)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !1194, file: !1074, line: 35, baseType: !154, size: 64, offset: 384)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1073, file: !1074, line: 219, baseType: !1204, size: 64, offset: 7872)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !1074, line: 219, flags: DIFlagFwdDecl)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !1073, file: !1074, line: 222, baseType: !18, size: 32, offset: 7936)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !1073, file: !1074, line: 223, baseType: !1208, size: 64, offset: 8000)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !1074, line: 223, flags: DIFlagFwdDecl)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1073, file: !1074, line: 230, baseType: !942, size: 8, offset: 8064)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1073, file: !1074, line: 231, baseType: !609, size: 16, offset: 8080)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1073, file: !1074, line: 232, baseType: !609, size: 16, offset: 8096)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1073, file: !1074, line: 234, baseType: !457, size: 64, offset: 8128)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1073, file: !1074, line: 237, baseType: !592, size: 256, offset: 8192)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !1073, file: !1074, line: 243, baseType: !521, size: 320, offset: 8448)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !147, file: !126, line: 1111, baseType: !1217, size: 64, offset: 15424)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1074, line: 20, size: 16640, elements: !1219)
!1219 = !{!1220, !1221, !1222, !1223}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1218, file: !1074, line: 21, baseType: !83, size: 32)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1218, file: !1074, line: 22, baseType: !161, size: 32, offset: 32)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1218, file: !1074, line: 23, baseType: !760, size: 192, offset: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1218, file: !1074, line: 24, baseType: !1224, size: 16384, offset: 256)
!1224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1225, size: 16384, elements: !1245)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1023, line: 51, size: 256, elements: !1226)
!1226 = !{!1227}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1225, file: !1023, line: 52, baseType: !1228, size: 256)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1023, line: 37, size: 256, elements: !1229)
!1229 = !{!1230, !1237, !1238, !1244}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1228, file: !1023, line: 39, baseType: !1231, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1232, line: 83, baseType: !1233)
!1232 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1232, line: 82, baseType: !1235)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{null, !17}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1228, file: !1023, line: 40, baseType: !154, size: 64, offset: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1228, file: !1023, line: 46, baseType: !1239, size: 64, offset: 128)
!1239 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1232, line: 86, baseType: !1240)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1232, line: 85, baseType: !1242)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{null}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1228, file: !1023, line: 48, baseType: !1088, size: 64, offset: 192)
!1245 = !{!1246}
!1246 = !DISubrange(count: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !147, file: !126, line: 1112, baseType: !1088, size: 64, offset: 15488)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !147, file: !126, line: 1113, baseType: !1088, size: 64, offset: 15552)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !147, file: !126, line: 1115, baseType: !1088, size: 64, offset: 15616)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !147, file: !126, line: 1116, baseType: !1084, size: 192, offset: 15680)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !147, file: !126, line: 1117, baseType: !154, size: 64, offset: 15872)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !147, file: !126, line: 1118, baseType: !1253, size: 64, offset: 15936)
!1253 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !104, line: 61, baseType: !1254)
!1254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !330, line: 72, baseType: !1191)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !147, file: !126, line: 1119, baseType: !18, size: 32, offset: 16000)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !147, file: !126, line: 1121, baseType: !770, size: 64, offset: 16064)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !147, file: !126, line: 1125, baseType: !1258, size: 64, offset: 16128)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !126, line: 43, flags: DIFlagFwdDecl)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !147, file: !126, line: 1127, baseType: !846, size: 32, offset: 16192)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !147, file: !126, line: 1128, baseType: !18, size: 32, offset: 16224)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !147, file: !126, line: 1130, baseType: !1263, size: 128, offset: 16256)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1264, line: 37, size: 128, elements: !1265)
!1264 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!1265 = !{!1266, !1267, !1268}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1263, file: !1264, line: 38, baseType: !17, size: 32)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1263, file: !1264, line: 39, baseType: !103, size: 32, offset: 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1263, file: !1264, line: 40, baseType: !1269, size: 64, offset: 64)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1264, line: 24, flags: DIFlagFwdDecl)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !147, file: !126, line: 1131, baseType: !1272, size: 256, offset: 16384)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !1273, line: 12, size: 256, elements: !1274)
!1273 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!1274 = !{!1275, !1276, !1277, !1278}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !1272, file: !1273, line: 13, baseType: !955, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1272, file: !1273, line: 14, baseType: !154, size: 64, offset: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1272, file: !1273, line: 15, baseType: !154, size: 64, offset: 128)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !1272, file: !1273, line: 16, baseType: !942, size: 8, offset: 192)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !147, file: !126, line: 1134, baseType: !212, size: 64, offset: 16640)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !147, file: !126, line: 1135, baseType: !212, size: 64, offset: 16704)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !147, file: !126, line: 1138, baseType: !83, size: 32, offset: 16768)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !147, file: !126, line: 1141, baseType: !305, size: 32, offset: 16800)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !147, file: !126, line: 1143, baseType: !125, size: 64, offset: 16832)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !147, file: !126, line: 1147, baseType: !346, size: 128, offset: 16896)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !147, file: !126, line: 1149, baseType: !146, size: 64, offset: 17024)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !147, file: !126, line: 1151, baseType: !1287, size: 64, offset: 17088)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !126, line: 1151, flags: DIFlagFwdDecl)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !147, file: !126, line: 1188, baseType: !129, size: 64, offset: 17152)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !147, file: !126, line: 1191, baseType: !1291, size: 64, offset: 17216)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !126, line: 44, flags: DIFlagFwdDecl)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !147, file: !126, line: 1194, baseType: !1294, size: 64, offset: 17280)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !126, line: 45, flags: DIFlagFwdDecl)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !147, file: !126, line: 1197, baseType: !1297, size: 64, offset: 17344)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !126, line: 61, flags: DIFlagFwdDecl)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !147, file: !126, line: 1199, baseType: !1300, size: 64, offset: 17408)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !126, line: 52, flags: DIFlagFwdDecl)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !147, file: !126, line: 1202, baseType: !1303, size: 64, offset: 17472)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !126, line: 48, flags: DIFlagFwdDecl)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !147, file: !126, line: 1205, baseType: !154, size: 64, offset: 17536)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !147, file: !126, line: 1206, baseType: !1307, size: 64, offset: 17600)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1023, line: 14, baseType: !1309)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1023, line: 12, size: 384, elements: !1310)
!1310 = !{!1311}
!1311 = !DIDerivedType(tag: DW_TAG_member, scope: !1309, file: !1023, line: 13, baseType: !1312, size: 384)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1309, file: !1023, line: 13, size: 384, elements: !1313)
!1313 = !{!1314, !1315, !1316, !1317}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1312, file: !1023, line: 13, baseType: !17, size: 32)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1312, file: !1023, line: 13, baseType: !17, size: 32, offset: 32)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1312, file: !1023, line: 13, baseType: !17, size: 32, offset: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1312, file: !1023, line: 13, baseType: !1318, size: 256, offset: 128)
!1318 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1319, line: 37, size: 256, elements: !1320)
!1319 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!1320 = !{!1321, !1326, !1339, !1345, !1355, !1382, !1387}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1318, file: !1319, line: 42, baseType: !1322, size: 64)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1318, file: !1319, line: 39, size: 64, elements: !1323)
!1323 = !{!1324, !1325}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1322, file: !1319, line: 40, baseType: !729, size: 32)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1322, file: !1319, line: 41, baseType: !851, size: 32, offset: 32)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1318, file: !1319, line: 50, baseType: !1327, size: 192)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1318, file: !1319, line: 45, size: 192, elements: !1328)
!1328 = !{!1329, !1331, !1332, !1338}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1327, file: !1319, line: 46, baseType: !1330, size: 32)
!1330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !330, line: 95, baseType: !17)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1327, file: !1319, line: 47, baseType: !17, size: 32, offset: 32)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1327, file: !1319, line: 48, baseType: !1333, size: 64, offset: 64)
!1333 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1319, line: 11, baseType: !1334)
!1334 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1319, line: 8, size: 64, elements: !1335)
!1335 = !{!1336, !1337}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1334, file: !1319, line: 9, baseType: !17, size: 32)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1334, file: !1319, line: 10, baseType: !129, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1327, file: !1319, line: 49, baseType: !17, size: 32, offset: 128)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1318, file: !1319, line: 57, baseType: !1340, size: 128)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1318, file: !1319, line: 53, size: 128, elements: !1341)
!1341 = !{!1342, !1343, !1344}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1340, file: !1319, line: 54, baseType: !729, size: 32)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1340, file: !1319, line: 55, baseType: !851, size: 32, offset: 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1340, file: !1319, line: 56, baseType: !1333, size: 64, offset: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1318, file: !1319, line: 66, baseType: !1346, size: 256)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1318, file: !1319, line: 60, size: 256, elements: !1347)
!1347 = !{!1348, !1349, !1350, !1351, !1354}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1346, file: !1319, line: 61, baseType: !729, size: 32)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1346, file: !1319, line: 62, baseType: !851, size: 32, offset: 32)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1346, file: !1319, line: 63, baseType: !17, size: 32, offset: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1346, file: !1319, line: 64, baseType: !1352, size: 64, offset: 128)
!1352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !330, line: 94, baseType: !1353)
!1353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !330, line: 15, baseType: !678)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1346, file: !1319, line: 65, baseType: !1352, size: 64, offset: 192)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1318, file: !1319, line: 105, baseType: !1356, size: 256)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1318, file: !1319, line: 69, size: 256, elements: !1357)
!1357 = !{!1358, !1359}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1356, file: !1319, line: 70, baseType: !129, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, scope: !1356, file: !1319, line: 79, baseType: !1360, size: 192, offset: 64)
!1360 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1356, file: !1319, line: 79, size: 192, elements: !1361)
!1361 = !{!1362, !1363, !1364, !1371, !1376}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !1360, file: !1319, line: 81, baseType: !17, size: 32)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1360, file: !1319, line: 86, baseType: !609, size: 16)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1360, file: !1319, line: 92, baseType: !1365, size: 192)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1360, file: !1319, line: 88, size: 192, elements: !1366)
!1366 = !{!1367, !1369, !1370}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1365, file: !1319, line: 89, baseType: !1368, size: 64)
!1368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !324)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1365, file: !1319, line: 90, baseType: !129, size: 64, offset: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1365, file: !1319, line: 91, baseType: !129, size: 64, offset: 128)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1360, file: !1319, line: 97, baseType: !1372, size: 96)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1360, file: !1319, line: 94, size: 96, elements: !1373)
!1373 = !{!1374, !1375}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1372, file: !1319, line: 95, baseType: !1368, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1372, file: !1319, line: 96, baseType: !22, size: 32, offset: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !1360, file: !1319, line: 103, baseType: !1377, size: 128)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1360, file: !1319, line: 99, size: 128, elements: !1378)
!1378 = !{!1379, !1380, !1381}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !1377, file: !1319, line: 100, baseType: !154, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !1377, file: !1319, line: 101, baseType: !22, size: 32, offset: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1377, file: !1319, line: 102, baseType: !22, size: 32, offset: 96)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1318, file: !1319, line: 111, baseType: !1383, size: 128)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1318, file: !1319, line: 108, size: 128, elements: !1384)
!1384 = !{!1385, !1386}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1383, file: !1319, line: 109, baseType: !678, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1383, file: !1319, line: 110, baseType: !17, size: 32, offset: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1318, file: !1319, line: 118, baseType: !1388, size: 128)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1318, file: !1319, line: 114, size: 128, elements: !1389)
!1389 = !{!1390, !1391, !1392}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1388, file: !1319, line: 115, baseType: !129, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1388, file: !1319, line: 116, baseType: !17, size: 32, offset: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1388, file: !1319, line: 117, baseType: !18, size: 32, offset: 96)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !147, file: !126, line: 1208, baseType: !1174, size: 448, offset: 17664)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !147, file: !126, line: 1215, baseType: !212, size: 64, offset: 18112)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !147, file: !126, line: 1217, baseType: !212, size: 64, offset: 18176)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !147, file: !126, line: 1219, baseType: !212, size: 64, offset: 18240)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !147, file: !126, line: 1223, baseType: !1398, size: 64, offset: 18304)
!1398 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !1399, line: 99, baseType: !1400)
!1399 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1399, line: 99, size: 64, elements: !1401)
!1401 = !{!1402}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1400, file: !1399, line: 99, baseType: !414, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !147, file: !126, line: 1225, baseType: !1147, size: 32, offset: 18368)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !147, file: !126, line: 1226, baseType: !17, size: 32, offset: 18400)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !147, file: !126, line: 1227, baseType: !17, size: 32, offset: 18432)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !147, file: !126, line: 1231, baseType: !1407, size: 64, offset: 18496)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !126, line: 1231, flags: DIFlagFwdDecl)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !147, file: !126, line: 1233, baseType: !139, size: 128, offset: 18560)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !147, file: !126, line: 1240, baseType: !1411, size: 64, offset: 18688)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1413, line: 97, size: 192, elements: !1414)
!1413 = !DIFile(filename: "./include/uapi/linux/futex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84a6875ed19116fa53fb0213593793f9")
!1414 = !{!1415, !1420, !1421}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1412, file: !1413, line: 101, baseType: !1416, size: 64)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list", file: !1413, line: 85, size: 64, elements: !1417)
!1417 = !{!1418}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1416, file: !1413, line: 86, baseType: !1419, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !1412, file: !1413, line: 109, baseType: !678, size: 64, offset: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !1412, file: !1413, line: 121, baseType: !1419, size: 64, offset: 128)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !147, file: !126, line: 1242, baseType: !1423, size: 64, offset: 18752)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !126, line: 1242, flags: DIFlagFwdDecl)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !147, file: !126, line: 1244, baseType: !139, size: 128, offset: 18816)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !147, file: !126, line: 1245, baseType: !1427, size: 64, offset: 18944)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !45, line: 54, size: 704, elements: !1429)
!1429 = !{!1430, !1431, !1438, !1439, !1440}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1428, file: !45, line: 59, baseType: !139, size: 128)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "pi_mutex", scope: !1428, file: !45, line: 64, baseType: !1432, size: 256, offset: 128)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_base", file: !1433, line: 23, size: 256, elements: !1434)
!1433 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c3b60a10bef9e89c790a516317bab43b")
!1434 = !{!1435, !1436, !1437}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1432, file: !1433, line: 24, baseType: !305, size: 32)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1432, file: !1433, line: 25, baseType: !346, size: 128, offset: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1432, file: !1433, line: 26, baseType: !146, size: 64, offset: 192)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1428, file: !45, line: 66, baseType: !146, size: 64, offset: 384)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1428, file: !45, line: 67, baseType: !161, size: 32, offset: 448)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1428, file: !45, line: 69, baseType: !1441, size: 192, offset: 512)
!1441 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "futex_key", file: !1442, line: 32, size: 192, elements: !1443)
!1442 = !DIFile(filename: "./include/linux/futex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6aa02e7d322e20d7feefbd4fcf13a2f0")
!1443 = !{!1444, !1450, !1460}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1441, file: !1442, line: 37, baseType: !1445, size: 192)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1441, file: !1442, line: 33, size: 192, elements: !1446)
!1446 = !{!1447, !1448, !1449}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "i_seq", scope: !1445, file: !1442, line: 34, baseType: !212, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1445, file: !1442, line: 35, baseType: !154, size: 64, offset: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1445, file: !1442, line: 36, baseType: !18, size: 32, offset: 128)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1441, file: !1442, line: 45, baseType: !1451, size: 192)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1441, file: !1442, line: 38, size: 192, elements: !1452)
!1452 = !{!1453, !1458, !1459}
!1453 = !DIDerivedType(tag: DW_TAG_member, scope: !1451, file: !1442, line: 39, baseType: !1454, size: 64)
!1454 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1451, file: !1442, line: 39, size: 64, elements: !1455)
!1455 = !{!1456, !1457}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1454, file: !1442, line: 40, baseType: !457, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "__tmp", scope: !1454, file: !1442, line: 41, baseType: !212, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1451, file: !1442, line: 43, baseType: !154, size: 64, offset: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1451, file: !1442, line: 44, baseType: !18, size: 32, offset: 128)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "both", scope: !1441, file: !1442, line: 50, baseType: !1461, size: 192)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1441, file: !1442, line: 46, size: 192, elements: !1462)
!1462 = !{!1463, !1464, !1465}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1461, file: !1442, line: 47, baseType: !212, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !1461, file: !1442, line: 48, baseType: !154, size: 64, offset: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1461, file: !1442, line: 49, baseType: !18, size: 32, offset: 128)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !147, file: !126, line: 1246, baseType: !592, size: 256, offset: 19008)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !147, file: !126, line: 1247, baseType: !18, size: 32, offset: 19264)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !147, file: !126, line: 1250, baseType: !1469, size: 64, offset: 19328)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !126, line: 57, flags: DIFlagFwdDecl)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !147, file: !126, line: 1251, baseType: !592, size: 256, offset: 19392)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !147, file: !126, line: 1252, baseType: !139, size: 128, offset: 19648)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !147, file: !126, line: 1259, baseType: !1474, size: 64, offset: 19776)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !126, line: 54, flags: DIFlagFwdDecl)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !147, file: !126, line: 1260, baseType: !609, size: 16, offset: 19840)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !147, file: !126, line: 1261, baseType: !609, size: 16, offset: 19856)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !147, file: !126, line: 1314, baseType: !1479, size: 64, offset: 19904)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1481, line: 62, size: 256, align: 256, elements: !1482)
!1481 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!1482 = !{!1483, !1484, !1485, !1486, !1487, !1488, !1489}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1480, file: !1481, line: 75, baseType: !22, size: 32)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1480, file: !1481, line: 90, baseType: !22, size: 32, offset: 32)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1480, file: !1481, line: 112, baseType: !213, size: 64, offset: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1480, file: !1481, line: 132, baseType: !22, size: 32, offset: 128)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !1480, file: !1481, line: 140, baseType: !22, size: 32, offset: 160)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1480, file: !1481, line: 149, baseType: !22, size: 32, offset: 192)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1480, file: !1481, line: 154, baseType: !1490, offset: 224)
!1490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !646)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !147, file: !126, line: 1315, baseType: !20, size: 32, offset: 19968)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !147, file: !126, line: 1316, baseType: !20, size: 32, offset: 20000)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !147, file: !126, line: 1321, baseType: !154, size: 64, offset: 20032)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !147, file: !126, line: 1325, baseType: !17, size: 32, offset: 20096)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !147, file: !126, line: 1326, baseType: !17, size: 32, offset: 20128)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !147, file: !126, line: 1327, baseType: !17, size: 32, offset: 20160)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !147, file: !126, line: 1328, baseType: !17, size: 32, offset: 20192)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !147, file: !126, line: 1329, baseType: !767, size: 128, align: 64, offset: 20224)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !147, file: !126, line: 1332, baseType: !1500, size: 128, offset: 20352)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1501, line: 51, size: 128, elements: !1502)
!1501 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!1502 = !{!1503, !1508, !1509}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1500, file: !1501, line: 60, baseType: !1504, size: 64)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1505, line: 7, size: 64, elements: !1506)
!1505 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!1506 = !{!1507}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1504, file: !1505, line: 12, baseType: !411, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1500, file: !1501, line: 63, baseType: !942, size: 8, offset: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1500, file: !1501, line: 70, baseType: !942, size: 8, offset: 72)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !147, file: !126, line: 1335, baseType: !1511, size: 64, offset: 20480)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !126, line: 59, flags: DIFlagFwdDecl)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !147, file: !126, line: 1337, baseType: !1514, size: 128, offset: 20544)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1501, line: 39, size: 128, elements: !1515)
!1515 = !{!1516, !1579, !1580}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1514, file: !1501, line: 40, baseType: !1517, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !459, line: 74, size: 512, align: 128, elements: !1519)
!1519 = !{!1520, !1521, !1573, !1578}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1518, file: !459, line: 75, baseType: !154, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, scope: !1518, file: !459, line: 83, baseType: !1522, size: 320, offset: 64)
!1522 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1518, file: !459, line: 83, size: 320, elements: !1523)
!1523 = !{!1524, !1547, !1561, !1565, !1572}
!1524 = !DIDerivedType(tag: DW_TAG_member, scope: !1522, file: !459, line: 84, baseType: !1525, size: 320)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1522, file: !459, line: 84, size: 320, elements: !1526)
!1526 = !{!1527, !1538, !1541, !1546}
!1527 = !DIDerivedType(tag: DW_TAG_member, scope: !1525, file: !459, line: 90, baseType: !1528, size: 128)
!1528 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1525, file: !459, line: 90, size: 128, elements: !1529)
!1529 = !{!1530, !1531, !1536, !1537}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1528, file: !459, line: 91, baseType: !139, size: 128)
!1531 = !DIDerivedType(tag: DW_TAG_member, scope: !1528, file: !459, line: 94, baseType: !1532, size: 128)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1528, file: !459, line: 94, size: 128, elements: !1533)
!1533 = !{!1534, !1535}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1532, file: !459, line: 96, baseType: !129, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1532, file: !459, line: 98, baseType: !18, size: 32, offset: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1528, file: !459, line: 102, baseType: !139, size: 128)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1528, file: !459, line: 103, baseType: !139, size: 128)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1525, file: !459, line: 106, baseType: !1539, size: 64, offset: 128)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !459, line: 32, flags: DIFlagFwdDecl)
!1541 = !DIDerivedType(tag: DW_TAG_member, scope: !1525, file: !459, line: 107, baseType: !1542, size: 64, offset: 192)
!1542 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1525, file: !459, line: 107, size: 64, elements: !1543)
!1543 = !{!1544, !1545}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1542, file: !459, line: 108, baseType: !154, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1542, file: !459, line: 109, baseType: !154, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1525, file: !459, line: 117, baseType: !154, size: 64, offset: 256)
!1547 = !DIDerivedType(tag: DW_TAG_member, scope: !1522, file: !459, line: 119, baseType: !1548, size: 320)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1522, file: !459, line: 119, size: 320, elements: !1549)
!1549 = !{!1550, !1551, !1554, !1555, !1556}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1548, file: !459, line: 124, baseType: !154, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1548, file: !459, line: 125, baseType: !1552, size: 64, offset: 64)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !459, line: 125, flags: DIFlagFwdDecl)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1548, file: !459, line: 126, baseType: !154, size: 64, offset: 128)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1548, file: !459, line: 127, baseType: !154, size: 64, offset: 192)
!1556 = !DIDerivedType(tag: DW_TAG_member, scope: !1548, file: !459, line: 128, baseType: !1557, size: 64, offset: 256)
!1557 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1548, file: !459, line: 128, size: 64, elements: !1558)
!1558 = !{!1559, !1560}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1557, file: !459, line: 133, baseType: !154, size: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1557, file: !459, line: 138, baseType: !512, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, scope: !1522, file: !459, line: 141, baseType: !1562, size: 64)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1522, file: !459, line: 141, size: 64, elements: !1563)
!1563 = !{!1564}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1562, file: !459, line: 142, baseType: !154, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, scope: !1522, file: !459, line: 144, baseType: !1566, size: 128)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1522, file: !459, line: 144, size: 128, elements: !1567)
!1567 = !{!1568, !1571}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1566, file: !459, line: 146, baseType: !1569, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !459, line: 146, flags: DIFlagFwdDecl)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1566, file: !459, line: 147, baseType: !129, size: 64, offset: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1522, file: !459, line: 161, baseType: !767, size: 128, align: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, scope: !1518, file: !459, line: 164, baseType: !1574, size: 32, offset: 384)
!1574 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1518, file: !459, line: 164, size: 32, elements: !1575)
!1575 = !{!1576, !1577}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1574, file: !459, line: 169, baseType: !103, size: 32)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1574, file: !459, line: 177, baseType: !18, size: 32)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1518, file: !459, line: 181, baseType: !103, size: 32, offset: 416)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1514, file: !1501, line: 42, baseType: !22, size: 32, offset: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1514, file: !1501, line: 43, baseType: !22, size: 32, offset: 96)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !147, file: !126, line: 1340, baseType: !1582, size: 64, offset: 20672)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !126, line: 69, flags: DIFlagFwdDecl)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !147, file: !126, line: 1351, baseType: !17, size: 32, offset: 20736)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !147, file: !126, line: 1352, baseType: !17, size: 32, offset: 20768)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !147, file: !126, line: 1354, baseType: !154, size: 64, offset: 20800)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !147, file: !126, line: 1364, baseType: !212, size: 64, offset: 20864)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !147, file: !126, line: 1365, baseType: !212, size: 64, offset: 20928)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !147, file: !126, line: 1412, baseType: !154, size: 64, offset: 20992)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !147, file: !126, line: 1453, baseType: !1591, size: 64, offset: 21056)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !126, line: 1453, flags: DIFlagFwdDecl)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !147, file: !126, line: 1457, baseType: !1594, size: 64, offset: 21120)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !38, line: 61, size: 576, elements: !1596)
!1596 = !{!1597, !1598, !1617, !1620, !1621, !1654, !1664}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1595, file: !38, line: 62, baseType: !37, size: 32)
!1598 = !DIDerivedType(tag: DW_TAG_member, scope: !1595, file: !38, line: 64, baseType: !1599, size: 192, offset: 64)
!1599 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1595, file: !38, line: 64, size: 192, elements: !1600)
!1600 = !{!1601, !1612}
!1601 = !DIDerivedType(tag: DW_TAG_member, scope: !1599, file: !38, line: 65, baseType: !1602, size: 192)
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1599, file: !38, line: 65, size: 192, elements: !1603)
!1603 = !{!1604, !1611}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !1602, file: !38, line: 66, baseType: !1605, size: 128)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !1606, line: 50, size: 128, elements: !1607)
!1606 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!1607 = !{!1608, !1609, !1610}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !1605, file: !1606, line: 52, baseType: !154, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !1605, file: !1606, line: 54, baseType: !18, size: 32, offset: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !1605, file: !1606, line: 55, baseType: !18, size: 32, offset: 96)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !1602, file: !38, line: 67, baseType: !154, size: 64, offset: 128)
!1612 = !DIDerivedType(tag: DW_TAG_member, scope: !1599, file: !38, line: 70, baseType: !1613, size: 192)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1599, file: !38, line: 70, size: 192, elements: !1614)
!1614 = !{!1615, !1616}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !1613, file: !38, line: 71, baseType: !767, size: 128, align: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !1613, file: !38, line: 72, baseType: !154, size: 64, offset: 128)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !1595, file: !38, line: 76, baseType: !1618, size: 64, offset: 256)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !38, line: 76, flags: DIFlagFwdDecl)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !1595, file: !38, line: 77, baseType: !154, size: 64, offset: 320)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !1595, file: !38, line: 79, baseType: !1622, size: 64, offset: 384)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !1606, line: 25, size: 256, elements: !1624)
!1624 = !{!1625, !1631, !1635}
!1625 = !DIDerivedType(tag: DW_TAG_member, scope: !1623, file: !1606, line: 26, baseType: !1626, size: 128)
!1626 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1623, file: !1606, line: 26, size: 128, elements: !1627)
!1627 = !{!1628, !1630}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1626, file: !1606, line: 27, baseType: !1629, size: 128)
!1629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 128, elements: !1042)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !1626, file: !1606, line: 28, baseType: !1629, size: 128)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1623, file: !1606, line: 31, baseType: !1632, size: 64, offset: 128)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1634)
!1634 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !1606, line: 23, flags: DIFlagFwdDecl)
!1635 = !DIDerivedType(tag: DW_TAG_member, scope: !1623, file: !1606, line: 33, baseType: !1636, size: 64, offset: 192)
!1636 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1623, file: !1606, line: 33, size: 64, elements: !1637)
!1637 = !{!1638, !1644, !1649}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !1636, file: !1606, line: 38, baseType: !1639, size: 64)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1636, file: !1606, line: 34, size: 64, elements: !1640)
!1640 = !{!1641, !1642, !1643}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !1639, file: !1606, line: 35, baseType: !571, size: 32)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1639, file: !1606, line: 36, baseType: !112, size: 8, offset: 32)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !1639, file: !1606, line: 37, baseType: !112, size: 8, offset: 40)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !1636, file: !1606, line: 42, baseType: !1645, size: 16)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1636, file: !1606, line: 39, size: 16, elements: !1646)
!1646 = !{!1647, !1648}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !1645, file: !1606, line: 40, baseType: !112, size: 8)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1645, file: !1606, line: 41, baseType: !112, size: 8, offset: 8)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !1636, file: !1606, line: 46, baseType: !1650, size: 16)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1636, file: !1606, line: 43, size: 16, elements: !1651)
!1651 = !{!1652, !1653}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !1650, file: !1606, line: 44, baseType: !112, size: 8)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1650, file: !1606, line: 45, baseType: !112, size: 8, offset: 8)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !1595, file: !38, line: 81, baseType: !1655, size: 64, offset: 448)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !38, line: 85, size: 384, elements: !1657)
!1657 = !{!1658, !1659, !1660, !1661, !1662, !1663}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !1656, file: !38, line: 86, baseType: !1618, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1656, file: !38, line: 87, baseType: !154, size: 64, offset: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1656, file: !38, line: 88, baseType: !154, size: 64, offset: 128)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !1656, file: !38, line: 89, baseType: !154, size: 64, offset: 192)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !1656, file: !38, line: 90, baseType: !942, size: 8, offset: 256)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1656, file: !38, line: 92, baseType: !1655, size: 64, offset: 320)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1595, file: !38, line: 82, baseType: !18, size: 32, offset: 512)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !147, file: !126, line: 1463, baseType: !1666, offset: 21184)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !126, line: 739, elements: !479)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !147, file: !126, line: 1470, baseType: !767, size: 128, align: 64, offset: 21184)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !147, file: !126, line: 1471, baseType: !161, size: 32, offset: 21312)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !147, file: !126, line: 1472, baseType: !17, size: 32, offset: 21344)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !147, file: !126, line: 1474, baseType: !146, size: 64, offset: 21376)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !147, file: !126, line: 1475, baseType: !1672, size: 320, offset: 21440)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1673, line: 11, size: 320, elements: !1674)
!1673 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1674 = !{!1675, !1676, !1677, !1682}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1672, file: !1673, line: 16, baseType: !753, size: 128)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1672, file: !1673, line: 17, baseType: !154, size: 64, offset: 128)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1672, file: !1673, line: 18, baseType: !1678, size: 64, offset: 192)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{null, !1681}
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1672, file: !1673, line: 19, baseType: !20, size: 32, offset: 256)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !147, file: !126, line: 1478, baseType: !1684, size: 64, offset: 21760)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !126, line: 1478, flags: DIFlagFwdDecl)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !147, file: !126, line: 1482, baseType: !161, size: 32, offset: 21824)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !147, file: !126, line: 1489, baseType: !129, size: 64, offset: 21888)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !147, file: !126, line: 1504, baseType: !129, size: 64, offset: 21952)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !147, file: !126, line: 1505, baseType: !213, size: 64, offset: 22016)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !147, file: !126, line: 1506, baseType: !212, size: 64, offset: 22080)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !147, file: !126, line: 1507, baseType: !213, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !147, file: !126, line: 1508, baseType: !213, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !147, file: !126, line: 1509, baseType: !213, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !147, file: !126, line: 1510, baseType: !767, size: 128, align: 64, offset: 22208)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !147, file: !126, line: 1511, baseType: !17, size: 32, offset: 22336)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !147, file: !126, line: 1515, baseType: !1697, size: 64, offset: 22400)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !174, line: 56, size: 64, elements: !1698)
!1698 = !{!1699}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1697, file: !174, line: 57, baseType: !177, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !147, file: !126, line: 1518, baseType: !1697, size: 64, offset: 22464)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !147, file: !126, line: 1528, baseType: !767, size: 128, align: 64, offset: 22528)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !147, file: !126, line: 1552, baseType: !1703, size: 35328, offset: 23040)
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1704, line: 430, size: 35328, elements: !1705)
!1704 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!1705 = !{!1706, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1735, !1736, !1737, !1738, !1739, !1740, !1743, !1744, !1745, !1746}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1703, file: !1704, line: 432, baseType: !1707, size: 192)
!1707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1708, size: 192, elements: !828)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1709, line: 16, size: 64, elements: !1710)
!1709 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!1710 = !{!1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1708, file: !1709, line: 17, baseType: !120, size: 16)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1708, file: !1709, line: 18, baseType: !120, size: 16, offset: 16)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1708, file: !1709, line: 19, baseType: !120, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1708, file: !1709, line: 19, baseType: !120, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1708, file: !1709, line: 19, baseType: !120, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1708, file: !1709, line: 19, baseType: !120, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1708, file: !1709, line: 19, baseType: !120, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1708, file: !1709, line: 20, baseType: !120, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1708, file: !1709, line: 20, baseType: !120, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1708, file: !1709, line: 20, baseType: !120, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1708, file: !1709, line: 20, baseType: !120, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1708, file: !1709, line: 20, baseType: !120, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1708, file: !1709, line: 20, baseType: !120, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1703, file: !1704, line: 436, baseType: !154, size: 64, offset: 192)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1703, file: !1704, line: 440, baseType: !122, size: 16, offset: 256)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1703, file: !1704, line: 441, baseType: !122, size: 16, offset: 272)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1703, file: !1704, line: 442, baseType: !122, size: 16, offset: 288)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1703, file: !1704, line: 443, baseType: !122, size: 16, offset: 304)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1703, file: !1704, line: 447, baseType: !154, size: 64, offset: 320)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1703, file: !1704, line: 448, baseType: !154, size: 64, offset: 384)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1703, file: !1704, line: 459, baseType: !1732, size: 256, offset: 448)
!1732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1733, size: 256, elements: !573)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1704, line: 428, flags: DIFlagFwdDecl)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1703, file: !1704, line: 461, baseType: !154, size: 64, offset: 704)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1703, file: !1704, line: 463, baseType: !154, size: 64, offset: 768)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1703, file: !1704, line: 465, baseType: !154, size: 64, offset: 832)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1703, file: !1704, line: 466, baseType: !154, size: 64, offset: 896)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1703, file: !1704, line: 467, baseType: !154, size: 64, offset: 960)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1703, file: !1704, line: 473, baseType: !1741, size: 64, offset: 1024)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1704, line: 10, flags: DIFlagFwdDecl)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1703, file: !1704, line: 480, baseType: !154, size: 64, offset: 1088)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !1703, file: !1704, line: 482, baseType: !18, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !1703, file: !1704, line: 491, baseType: !20, size: 32, offset: 1184)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1703, file: !1704, line: 501, baseType: !1747, size: 33792, offset: 1536)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1748, line: 448, size: 33792, elements: !1749)
!1748 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!1749 = !{!1750, !1751, !1752, !1916, !1917, !1923, !1924}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1747, file: !1748, line: 461, baseType: !18, size: 32)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1747, file: !1748, line: 468, baseType: !154, size: 64, offset: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !1747, file: !1748, line: 476, baseType: !1753, size: 64, offset: 128)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !1748, line: 356, size: 33280, align: 512, elements: !1755)
!1755 = !{!1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1754, file: !1748, line: 358, baseType: !18, size: 32)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !1754, file: !1748, line: 361, baseType: !18, size: 32, offset: 32)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1754, file: !1748, line: 364, baseType: !212, size: 64, offset: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !1754, file: !1748, line: 367, baseType: !212, size: 64, offset: 128)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !1754, file: !1748, line: 370, baseType: !212, size: 64, offset: 192)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !1754, file: !1748, line: 373, baseType: !18, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !1754, file: !1748, line: 376, baseType: !18, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !1754, file: !1748, line: 391, baseType: !18, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !1754, file: !1748, line: 394, baseType: !18, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1754, file: !1748, line: 397, baseType: !1766, size: 32768, offset: 512)
!1766 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1748, line: 348, size: 32768, elements: !1767)
!1767 = !{!1768, !1783, !1822, !1899, !1912}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1766, file: !1748, line: 349, baseType: !1769, size: 896)
!1769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1748, line: 12, size: 896, elements: !1770)
!1770 = !{!1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1782}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1769, file: !1748, line: 13, baseType: !20, size: 32)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1769, file: !1748, line: 14, baseType: !20, size: 32, offset: 32)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1769, file: !1748, line: 15, baseType: !20, size: 32, offset: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1769, file: !1748, line: 16, baseType: !20, size: 32, offset: 96)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1769, file: !1748, line: 17, baseType: !20, size: 32, offset: 128)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1769, file: !1748, line: 18, baseType: !20, size: 32, offset: 160)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1769, file: !1748, line: 19, baseType: !20, size: 32, offset: 192)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1769, file: !1748, line: 22, baseType: !1779, size: 640, offset: 224)
!1779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 640, elements: !1780)
!1780 = !{!1781}
!1781 = !DISubrange(count: 20)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1769, file: !1748, line: 25, baseType: !20, size: 32, offset: 864)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1766, file: !1748, line: 350, baseType: !1784, size: 4096, align: 128)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1748, line: 34, size: 4096, align: 128, elements: !1785)
!1785 = !{!1786, !1787, !1788, !1789, !1790, !1805, !1806, !1807, !1811, !1813, !1817}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1784, file: !1748, line: 35, baseType: !120, size: 16)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1784, file: !1748, line: 36, baseType: !120, size: 16, offset: 16)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1784, file: !1748, line: 37, baseType: !120, size: 16, offset: 32)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1784, file: !1748, line: 38, baseType: !120, size: 16, offset: 48)
!1790 = !DIDerivedType(tag: DW_TAG_member, scope: !1784, file: !1748, line: 39, baseType: !1791, size: 128, offset: 64)
!1791 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1784, file: !1748, line: 39, size: 128, elements: !1792)
!1792 = !{!1793, !1798}
!1793 = !DIDerivedType(tag: DW_TAG_member, scope: !1791, file: !1748, line: 40, baseType: !1794, size: 128)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1791, file: !1748, line: 40, size: 128, elements: !1795)
!1795 = !{!1796, !1797}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1794, file: !1748, line: 41, baseType: !212, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1794, file: !1748, line: 42, baseType: !212, size: 64, offset: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, scope: !1791, file: !1748, line: 44, baseType: !1799, size: 128)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1791, file: !1748, line: 44, size: 128, elements: !1800)
!1800 = !{!1801, !1802, !1803, !1804}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1799, file: !1748, line: 45, baseType: !20, size: 32)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1799, file: !1748, line: 46, baseType: !20, size: 32, offset: 32)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1799, file: !1748, line: 47, baseType: !20, size: 32, offset: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1799, file: !1748, line: 48, baseType: !20, size: 32, offset: 96)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1784, file: !1748, line: 51, baseType: !20, size: 32, offset: 192)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1784, file: !1748, line: 52, baseType: !20, size: 32, offset: 224)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1784, file: !1748, line: 55, baseType: !1808, size: 1024, offset: 256)
!1808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 1024, elements: !1809)
!1809 = !{!1810}
!1810 = !DISubrange(count: 32)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1784, file: !1748, line: 58, baseType: !1812, size: 2048, offset: 1280)
!1812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 2048, elements: !1245)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1784, file: !1748, line: 60, baseType: !1814, size: 384, offset: 3328)
!1814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 384, elements: !1815)
!1815 = !{!1816}
!1816 = !DISubrange(count: 12)
!1817 = !DIDerivedType(tag: DW_TAG_member, scope: !1784, file: !1748, line: 62, baseType: !1818, size: 384, offset: 3712)
!1818 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1784, file: !1748, line: 62, size: 384, elements: !1819)
!1819 = !{!1820, !1821}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1818, file: !1748, line: 63, baseType: !1814, size: 384)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1818, file: !1748, line: 64, baseType: !1814, size: 384)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1766, file: !1748, line: 351, baseType: !1823, size: 1088)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1748, line: 79, size: 1088, elements: !1824)
!1824 = !{!1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1898}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1823, file: !1748, line: 80, baseType: !20, size: 32)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1823, file: !1748, line: 81, baseType: !20, size: 32, offset: 32)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1823, file: !1748, line: 82, baseType: !20, size: 32, offset: 64)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1823, file: !1748, line: 83, baseType: !20, size: 32, offset: 96)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1823, file: !1748, line: 84, baseType: !20, size: 32, offset: 128)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1823, file: !1748, line: 85, baseType: !20, size: 32, offset: 160)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1823, file: !1748, line: 86, baseType: !20, size: 32, offset: 192)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1823, file: !1748, line: 88, baseType: !1779, size: 640, offset: 224)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1823, file: !1748, line: 89, baseType: !112, size: 8, offset: 864)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1823, file: !1748, line: 90, baseType: !112, size: 8, offset: 872)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1823, file: !1748, line: 91, baseType: !112, size: 8, offset: 880)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1823, file: !1748, line: 92, baseType: !112, size: 8, offset: 888)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1823, file: !1748, line: 93, baseType: !112, size: 8, offset: 896)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1823, file: !1748, line: 94, baseType: !112, size: 8, offset: 904)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1823, file: !1748, line: 95, baseType: !1840, size: 64, offset: 960)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1842, line: 11, size: 128, elements: !1843)
!1842 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!1843 = !{!1844, !1845}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1841, file: !1842, line: 12, baseType: !678, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1841, file: !1842, line: 13, baseType: !1846, size: 64, offset: 64)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1848, line: 103, size: 1344, elements: !1849)
!1848 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!1849 = !{!1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1878, !1879, !1880}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1847, file: !1848, line: 109, baseType: !154, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1847, file: !1848, line: 110, baseType: !154, size: 64, offset: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1847, file: !1848, line: 111, baseType: !154, size: 64, offset: 128)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1847, file: !1848, line: 112, baseType: !154, size: 64, offset: 192)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1847, file: !1848, line: 113, baseType: !154, size: 64, offset: 256)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1847, file: !1848, line: 114, baseType: !154, size: 64, offset: 320)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1847, file: !1848, line: 117, baseType: !154, size: 64, offset: 384)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1847, file: !1848, line: 118, baseType: !154, size: 64, offset: 448)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1847, file: !1848, line: 119, baseType: !154, size: 64, offset: 512)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1847, file: !1848, line: 120, baseType: !154, size: 64, offset: 576)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1847, file: !1848, line: 121, baseType: !154, size: 64, offset: 640)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1847, file: !1848, line: 122, baseType: !154, size: 64, offset: 704)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1847, file: !1848, line: 123, baseType: !154, size: 64, offset: 768)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1847, file: !1848, line: 124, baseType: !154, size: 64, offset: 832)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1847, file: !1848, line: 125, baseType: !154, size: 64, offset: 896)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1847, file: !1848, line: 139, baseType: !154, size: 64, offset: 960)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1847, file: !1848, line: 142, baseType: !154, size: 64, offset: 1024)
!1867 = !DIDerivedType(tag: DW_TAG_member, scope: !1847, file: !1848, line: 144, baseType: !1868, size: 64, offset: 1088)
!1868 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1847, file: !1848, line: 144, size: 64, elements: !1869)
!1869 = !{!1870, !1871, !1872}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1868, file: !1848, line: 146, baseType: !120, size: 16)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !1868, file: !1848, line: 148, baseType: !212, size: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !1868, file: !1848, line: 150, baseType: !1873, size: 64)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !1848, line: 59, size: 64, elements: !1874)
!1874 = !{!1875, !1876, !1877}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1873, file: !1848, line: 61, baseType: !212, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !1873, file: !1848, line: 63, baseType: !212, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !1873, file: !1848, line: 65, baseType: !212, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1847, file: !1848, line: 153, baseType: !154, size: 64, offset: 1152)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1847, file: !1848, line: 154, baseType: !154, size: 64, offset: 1216)
!1880 = !DIDerivedType(tag: DW_TAG_member, scope: !1847, file: !1848, line: 156, baseType: !1881, size: 64, offset: 1280)
!1881 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1847, file: !1848, line: 156, size: 64, elements: !1882)
!1882 = !{!1883, !1884, !1885}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1881, file: !1848, line: 158, baseType: !120, size: 16)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !1881, file: !1848, line: 160, baseType: !212, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !1881, file: !1848, line: 162, baseType: !1886, size: 64)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !1848, line: 69, size: 64, elements: !1887)
!1887 = !{!1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1886, file: !1848, line: 71, baseType: !212, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !1886, file: !1848, line: 73, baseType: !212, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !1886, file: !1848, line: 75, baseType: !212, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !1886, file: !1848, line: 77, baseType: !212, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !1886, file: !1848, line: 80, baseType: !212, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1886, file: !1848, line: 83, baseType: !212, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !1886, file: !1848, line: 86, baseType: !212, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !1886, file: !1848, line: 88, baseType: !212, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !1886, file: !1848, line: 93, baseType: !212, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !1886, file: !1848, line: 100, baseType: !212, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1823, file: !1748, line: 96, baseType: !20, size: 32, offset: 1024)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1766, file: !1748, line: 352, baseType: !1900, size: 4608, align: 512)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1748, line: 333, size: 4608, align: 512, elements: !1901)
!1901 = !{!1902, !1903, !1910}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1900, file: !1748, line: 334, baseType: !1784, size: 4096, align: 128)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1900, file: !1748, line: 335, baseType: !1904, size: 512, offset: 4096)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1748, line: 312, size: 512, elements: !1905)
!1905 = !{!1906, !1907, !1908}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1904, file: !1748, line: 313, baseType: !212, size: 64)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1904, file: !1748, line: 314, baseType: !212, size: 64, offset: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1904, file: !1748, line: 315, baseType: !1909, size: 384, offset: 128)
!1909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 384, elements: !929)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1900, file: !1748, line: 336, baseType: !1911, offset: 4608)
!1911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, elements: !646)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1766, file: !1748, line: 353, baseType: !1913, size: 32768)
!1913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 32768, elements: !1914)
!1914 = !{!1915}
!1915 = !DISubrange(count: 4096)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !1747, file: !1748, line: 484, baseType: !1753, size: 64, offset: 192)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1747, file: !1748, line: 491, baseType: !1918, size: 128, offset: 256)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !1748, line: 404, size: 128, elements: !1919)
!1919 = !{!1920, !1921, !1922}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !1918, file: !1748, line: 424, baseType: !212, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !1918, file: !1748, line: 432, baseType: !18, size: 32, offset: 64)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !1918, file: !1748, line: 440, baseType: !18, size: 32, offset: 96)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !1747, file: !1748, line: 498, baseType: !1918, size: 128, offset: 384)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !1747, file: !1748, line: 508, baseType: !1754, size: 33280, align: 512, offset: 512)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ptr", scope: !131, file: !45, line: 100, baseType: !82, size: 64, offset: 384)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !131, file: !45, line: 101, baseType: !1441, size: 192, offset: 448)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state", scope: !131, file: !45, line: 102, baseType: !1427, size: 64, offset: 640)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "rt_waiter", scope: !131, file: !45, line: 103, baseType: !1287, size: 64, offset: 704)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_pi_key", scope: !131, file: !45, line: 104, baseType: !1930, size: 64, offset: 768)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !131, file: !45, line: 105, baseType: !20, size: 32, offset: 832)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_state", scope: !131, file: !45, line: 106, baseType: !103, size: 32, offset: 864)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !18)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1937)
!1937 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !17)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1941)
!1941 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !142)
!1942 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !104, line: 42, baseType: !154)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!1949 = !{!0, !7, !12, !1950, !1955, !1960}
!1950 = !DIGlobalVariableExpression(var: !1951, expr: !DIExpression())
!1951 = distinct !DIGlobalVariable(scope: null, file: !2, line: 203, type: !1952, isLocal: true, isDefinition: true)
!1952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !946, size: 184, elements: !1953)
!1953 = !{!1954}
!1954 = !DISubrange(count: 23)
!1955 = !DIGlobalVariableExpression(var: !1956, expr: !DIExpression())
!1956 = distinct !DIGlobalVariable(scope: null, file: !2, line: 203, type: !1957, isLocal: true, isDefinition: true)
!1957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 504, elements: !1958)
!1958 = !{!1959}
!1959 = !DISubrange(count: 63)
!1960 = !DIGlobalVariableExpression(var: !1961, expr: !DIExpression())
!1961 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__cond_resched144", scope: !1962, file: !126, line: 2104, type: !129, isLocal: true, isDefinition: true)
!1962 = distinct !DISubprogram(name: "_cond_resched", scope: !126, file: !126, line: 2102, type: !1963, scopeLine: 2103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24)
!1963 = !DISubroutineType(types: !1964)
!1964 = !{!17}
!1965 = !{!1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974}
!1966 = !DILocalVariable(name: "encoded_op", arg: 1, scope: !14, file: !2, line: 188, type: !18)
!1967 = !DILocalVariable(name: "uaddr", arg: 2, scope: !14, file: !2, line: 188, type: !19)
!1968 = !DILocalVariable(name: "op", scope: !14, file: !2, line: 190, type: !18)
!1969 = !DILocalVariable(name: "cmp", scope: !14, file: !2, line: 191, type: !18)
!1970 = !DILocalVariable(name: "oparg", scope: !14, file: !2, line: 192, type: !17)
!1971 = !DILocalVariable(name: "cmparg", scope: !14, file: !2, line: 193, type: !17)
!1972 = !DILocalVariable(name: "oldval", scope: !14, file: !2, line: 194, type: !17)
!1973 = !DILocalVariable(name: "ret", scope: !14, file: !2, line: 194, type: !17)
!1974 = !DILocalVariable(name: "comm", scope: !1975, file: !2, line: 198, type: !1041)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !2, line: 197, column: 32)
!1976 = distinct !DILexicalBlock(scope: !1977, file: !2, line: 197, column: 7)
!1977 = distinct !DILexicalBlock(scope: !1978, file: !2, line: 196, column: 49)
!1978 = distinct !DILexicalBlock(scope: !14, file: !2, line: 196, column: 6)
!1979 = !{!"rsp"}
!1980 = !{i32 7, !"Dwarf Version", i32 5}
!1981 = !{i32 2, !"Debug Info Version", i32 3}
!1982 = !{i32 1, !"wchar_size", i32 2}
!1983 = !{i32 8, !"cf-protection-branch", i32 1}
!1984 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1985 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1986 = !{i32 1, !"Code Model", i32 2}
!1987 = !{i32 1, !"override-stack-alignment", i32 8}
!1988 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1989 = distinct !DISubprogram(name: "futex_wake_mark", scope: !2, file: !2, line: 115, type: !1990, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1999)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{null, !1992, !130}
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_head", file: !1994, line: 38, size: 128, elements: !1995)
!1994 = !DIFile(filename: "./include/linux/sched/wake_q.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d0534a004845bdc2d4b9ab1b4e9297e")
!1995 = !{!1996, !1997}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1993, file: !1994, line: 39, baseType: !124, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "lastp", scope: !1993, file: !1994, line: 40, baseType: !1998, size: 64, offset: 64)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!1999 = !{!2000, !2001, !2002, !2003, !2006}
!2000 = !DILocalVariable(name: "wake_q", arg: 1, scope: !1989, file: !2, line: 115, type: !1992)
!2001 = !DILocalVariable(name: "q", arg: 2, scope: !1989, file: !2, line: 115, type: !130)
!2002 = !DILocalVariable(name: "p", scope: !1989, file: !2, line: 117, type: !146)
!2003 = !DILocalVariable(name: "__ret_warn_on", scope: !2004, file: !2, line: 119, type: !17)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !2, line: 119, column: 6)
!2005 = distinct !DILexicalBlock(scope: !1989, file: !2, line: 119, column: 6)
!2006 = !DILocalVariable(name: "__flags", scope: !2007, file: !2, line: 119, type: !17)
!2007 = distinct !DILexicalBlock(scope: !2008, file: !2, line: 119, column: 6)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !2, line: 119, column: 6)
!2009 = distinct !DILexicalBlock(scope: !2004, file: !2, line: 119, column: 6)
!2010 = !DILocation(line: 115, column: 42, scope: !1989)
!2011 = !DILocation(line: 115, column: 66, scope: !1989)
!2012 = !DILocation(line: 117, column: 2, scope: !1989)
!2013 = !DILocation(line: 117, column: 22, scope: !1989)
!2014 = !DILocation(line: 117, column: 26, scope: !1989)
!2015 = !DILocation(line: 117, column: 29, scope: !1989)
!2016 = !DILocation(line: 119, column: 6, scope: !2004)
!2017 = !DILocation(line: 119, column: 6, scope: !2009)
!2018 = !DILocation(line: 119, column: 6, scope: !2008)
!2019 = !DILocation(line: 119, column: 6, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2008, file: !2, line: 119, column: 6)
!2021 = !DILocation(line: 119, column: 6, scope: !2007)
!2022 = !DILocation(line: 119, column: 6, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2007, file: !2, line: 119, column: 6)
!2024 = !DILocation(line: 119, column: 6, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2007, file: !2, line: 119, column: 6)
!2026 = !{i64 2151940271, i64 2151940300, i64 2151940346, i64 2151940404, i64 2151940458, i64 2151940512, i64 2151940567, i64 2151940598, i64 2151940906, i64 2151940912, i64 2151940959, i64 2151940982, i64 2151941008}
!2027 = !DILocation(line: 119, column: 6, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2007, file: !2, line: 119, column: 6)
!2029 = !DILocation(line: 119, column: 6, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2008, file: !2, line: 119, column: 6)
!2031 = !DILocation(line: 119, column: 6, scope: !2005)
!2032 = !DILocation(line: 119, column: 6, scope: !1989)
!2033 = !DILocation(line: 120, column: 3, scope: !2005)
!2034 = !DILocation(line: 122, column: 18, scope: !1989)
!2035 = !DILocation(line: 122, column: 2, scope: !1989)
!2036 = !DILocation(line: 123, column: 18, scope: !1989)
!2037 = !DILocation(line: 123, column: 2, scope: !1989)
!2038 = !DILocation(line: 131, column: 2, scope: !1989)
!2039 = !DILocation(line: 131, column: 2, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !1989, file: !2, line: 131, column: 2)
!2041 = !DILocation(line: 131, column: 2, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2040, file: !2, line: 131, column: 2)
!2043 = !DILocation(line: 131, column: 2, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2040, file: !2, line: 131, column: 2)
!2045 = !DILocation(line: 131, column: 2, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2044, file: !2, line: 131, column: 2)
!2047 = !{i64 2151943278}
!2048 = !DILocation(line: 131, column: 2, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2044, file: !2, line: 131, column: 2)
!2050 = !DILocation(line: 131, column: 2, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2049, file: !2, line: 131, column: 2)
!2052 = !DILocation(line: 131, column: 2, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2049, file: !2, line: 131, column: 2)
!2054 = !DILocation(line: 137, column: 18, scope: !1989)
!2055 = !DILocation(line: 137, column: 26, scope: !1989)
!2056 = !DILocation(line: 137, column: 2, scope: !1989)
!2057 = !DILocation(line: 138, column: 1, scope: !1989)
!2058 = !DISubprogram(name: "__warn_printk", scope: !2059, file: !2059, line: 93, type: !2060, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2059 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2060 = !DISubroutineType(types: !2061)
!2061 = !{null, !945, null}
!2062 = distinct !DISubprogram(name: "get_task_struct", scope: !2063, file: !2063, line: 115, type: !2064, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2066)
!2063 = !DIFile(filename: "./include/linux/sched/task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ef3d4d4bfe7d22703d2dead2224ab376")
!2064 = !DISubroutineType(types: !2065)
!2065 = !{!146, !146}
!2066 = !{!2067}
!2067 = !DILocalVariable(name: "t", arg: 1, scope: !2062, file: !2063, line: 115, type: !146)
!2068 = !DILocation(line: 115, column: 71, scope: !2062)
!2069 = !DILocation(line: 117, column: 16, scope: !2062)
!2070 = !DILocation(line: 117, column: 19, scope: !2062)
!2071 = !DILocation(line: 117, column: 2, scope: !2062)
!2072 = !DILocation(line: 118, column: 9, scope: !2062)
!2073 = !DILocation(line: 118, column: 2, scope: !2062)
!2074 = !DISubprogram(name: "__futex_unqueue", scope: !45, file: !45, line: 154, type: !2075, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{null, !130}
!2077 = !DISubprogram(name: "wake_q_add_safe", scope: !1994, file: !1994, line: 63, type: !2078, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{null, !1992, !146}
!2080 = distinct !DISubprogram(name: "futex_wake", scope: !2, file: !2, line: 143, type: !2081, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2083)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!17, !19, !18, !17, !20}
!2083 = !{!2084, !2085, !2086, !2087, !2088, !2098, !2099, !2100, !2101, !2102, !2103, !2106, !2108}
!2084 = !DILocalVariable(name: "uaddr", arg: 1, scope: !2080, file: !2, line: 143, type: !19)
!2085 = !DILocalVariable(name: "flags", arg: 2, scope: !2080, file: !2, line: 143, type: !18)
!2086 = !DILocalVariable(name: "nr_wake", arg: 3, scope: !2080, file: !2, line: 143, type: !17)
!2087 = !DILocalVariable(name: "bitset", arg: 4, scope: !2080, file: !2, line: 143, type: !20)
!2088 = !DILocalVariable(name: "hb", scope: !2080, file: !2, line: 145, type: !2089)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "futex_hash_bucket", file: !45, line: 45, size: 512, align: 512, elements: !2091)
!2091 = !{!2092, !2093, !2094}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2090, file: !45, line: 46, baseType: !103, size: 32)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2090, file: !45, line: 47, baseType: !83, size: 32, offset: 32)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !2090, file: !45, line: 48, baseType: !2095, size: 128, offset: 64)
!2095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_head", file: !135, line: 82, size: 128, elements: !2096)
!2096 = !{!2097}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2095, file: !135, line: 83, baseType: !139, size: 128)
!2098 = !DILocalVariable(name: "this", scope: !2080, file: !2, line: 146, type: !130)
!2099 = !DILocalVariable(name: "next", scope: !2080, file: !2, line: 146, type: !130)
!2100 = !DILocalVariable(name: "key", scope: !2080, file: !2, line: 147, type: !1441)
!2101 = !DILocalVariable(name: "ret", scope: !2080, file: !2, line: 148, type: !17)
!2102 = !DILocalVariable(name: "wake_q", scope: !2080, file: !2, line: 149, type: !1993)
!2103 = !DILocalVariable(name: "__mptr", scope: !2104, file: !2, line: 166, type: !129)
!2104 = distinct !DILexicalBlock(scope: !2105, file: !2, line: 166, column: 2)
!2105 = distinct !DILexicalBlock(scope: !2080, file: !2, line: 166, column: 2)
!2106 = !DILocalVariable(name: "__mptr", scope: !2107, file: !2, line: 166, type: !129)
!2107 = distinct !DILexicalBlock(scope: !2105, file: !2, line: 166, column: 2)
!2108 = !DILocalVariable(name: "__mptr", scope: !2109, file: !2, line: 166, type: !129)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !2, line: 166, column: 2)
!2110 = distinct !DILexicalBlock(scope: !2105, file: !2, line: 166, column: 2)
!2111 = !DILocation(line: 143, column: 28, scope: !2080)
!2112 = !DILocation(line: 143, column: 48, scope: !2080)
!2113 = !DILocation(line: 143, column: 59, scope: !2080)
!2114 = !DILocation(line: 143, column: 72, scope: !2080)
!2115 = !DILocation(line: 145, column: 2, scope: !2080)
!2116 = !DILocation(line: 145, column: 28, scope: !2080)
!2117 = !DILocation(line: 146, column: 2, scope: !2080)
!2118 = !DILocation(line: 146, column: 18, scope: !2080)
!2119 = !DILocation(line: 146, column: 25, scope: !2080)
!2120 = !DILocation(line: 147, column: 2, scope: !2080)
!2121 = !DILocation(line: 147, column: 18, scope: !2080)
!2122 = !DILocation(line: 148, column: 2, scope: !2080)
!2123 = !DILocation(line: 148, column: 6, scope: !2080)
!2124 = !DILocation(line: 149, column: 2, scope: !2080)
!2125 = !DILocation(line: 151, column: 7, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2080, file: !2, line: 151, column: 6)
!2127 = !DILocation(line: 151, column: 6, scope: !2080)
!2128 = !DILocation(line: 152, column: 3, scope: !2126)
!2129 = !DILocation(line: 154, column: 22, scope: !2080)
!2130 = !DILocation(line: 154, column: 29, scope: !2080)
!2131 = !DILocation(line: 154, column: 35, scope: !2080)
!2132 = !DILocation(line: 154, column: 8, scope: !2080)
!2133 = !DILocation(line: 154, column: 6, scope: !2080)
!2134 = !DILocation(line: 155, column: 6, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2080, file: !2, line: 155, column: 6)
!2136 = !DILocation(line: 155, column: 6, scope: !2080)
!2137 = !DILocation(line: 156, column: 10, scope: !2135)
!2138 = !DILocation(line: 156, column: 3, scope: !2135)
!2139 = !DILocation(line: 158, column: 7, scope: !2080)
!2140 = !DILocation(line: 158, column: 5, scope: !2080)
!2141 = !DILocation(line: 161, column: 32, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2080, file: !2, line: 161, column: 6)
!2143 = !DILocation(line: 161, column: 7, scope: !2142)
!2144 = !DILocation(line: 161, column: 6, scope: !2080)
!2145 = !DILocation(line: 162, column: 10, scope: !2142)
!2146 = !DILocation(line: 162, column: 3, scope: !2142)
!2147 = !DILocation(line: 164, column: 13, scope: !2080)
!2148 = !DILocation(line: 164, column: 17, scope: !2080)
!2149 = !DILocation(line: 164, column: 2, scope: !2080)
!2150 = !DILocation(line: 166, column: 2, scope: !2104)
!2151 = !DILocation(line: 166, column: 2, scope: !2105)
!2152 = !DILocation(line: 166, column: 2, scope: !2107)
!2153 = !DILocation(line: 166, column: 2, scope: !2110)
!2154 = !DILocation(line: 167, column: 21, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2156, file: !2, line: 167, column: 7)
!2156 = distinct !DILexicalBlock(scope: !2110, file: !2, line: 166, column: 58)
!2157 = !DILocation(line: 167, column: 27, scope: !2155)
!2158 = !DILocation(line: 167, column: 7, scope: !2155)
!2159 = !DILocation(line: 167, column: 7, scope: !2156)
!2160 = !DILocation(line: 168, column: 8, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2162, file: !2, line: 168, column: 8)
!2162 = distinct !DILexicalBlock(scope: !2155, file: !2, line: 167, column: 39)
!2163 = !DILocation(line: 168, column: 14, scope: !2161)
!2164 = !DILocation(line: 168, column: 23, scope: !2161)
!2165 = !DILocation(line: 168, column: 26, scope: !2161)
!2166 = !DILocation(line: 168, column: 32, scope: !2161)
!2167 = !DILocation(line: 168, column: 8, scope: !2162)
!2168 = !DILocation(line: 169, column: 9, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2161, file: !2, line: 168, column: 43)
!2170 = !DILocation(line: 170, column: 5, scope: !2169)
!2171 = !DILocation(line: 174, column: 10, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2162, file: !2, line: 174, column: 8)
!2173 = !DILocation(line: 174, column: 16, scope: !2172)
!2174 = !DILocation(line: 174, column: 25, scope: !2172)
!2175 = !DILocation(line: 174, column: 23, scope: !2172)
!2176 = !DILocation(line: 174, column: 8, scope: !2162)
!2177 = !DILocation(line: 175, column: 5, scope: !2172)
!2178 = !DILocation(line: 177, column: 29, scope: !2162)
!2179 = !DILocation(line: 177, column: 4, scope: !2162)
!2180 = !DILocation(line: 178, column: 8, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2162, file: !2, line: 178, column: 8)
!2182 = !DILocation(line: 178, column: 17, scope: !2181)
!2183 = !DILocation(line: 178, column: 14, scope: !2181)
!2184 = !DILocation(line: 178, column: 8, scope: !2162)
!2185 = !DILocation(line: 179, column: 5, scope: !2181)
!2186 = !DILocation(line: 180, column: 3, scope: !2162)
!2187 = !DILocation(line: 181, column: 2, scope: !2156)
!2188 = !DILocation(line: 166, column: 2, scope: !2109)
!2189 = distinct !{!2189, !2151, !2190, !2191, !2192}
!2190 = !DILocation(line: 181, column: 2, scope: !2105)
!2191 = !{!"llvm.loop.mustprogress"}
!2192 = !{!"llvm.loop.unroll.disable"}
!2193 = !DILocation(line: 183, column: 15, scope: !2080)
!2194 = !DILocation(line: 183, column: 19, scope: !2080)
!2195 = !DILocation(line: 183, column: 2, scope: !2080)
!2196 = !DILocation(line: 184, column: 2, scope: !2080)
!2197 = !DILocation(line: 185, column: 9, scope: !2080)
!2198 = !DILocation(line: 185, column: 2, scope: !2080)
!2199 = !DILocation(line: 186, column: 1, scope: !2080)
!2200 = !DISubprogram(name: "get_futex_key", scope: !45, file: !45, line: 119, type: !2201, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!17, !19, !942, !1930, !44}
!2203 = !DISubprogram(name: "futex_hash", scope: !45, file: !45, line: 126, type: !2204, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{!2089, !1930}
!2206 = distinct !DISubprogram(name: "futex_hb_waiters_pending", scope: !45, file: !45, line: 206, type: !2207, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2209)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{!17, !2089}
!2209 = !{!2210}
!2210 = !DILocalVariable(name: "hb", arg: 1, scope: !2206, file: !45, line: 206, type: !2089)
!2211 = !DILocation(line: 206, column: 70, scope: !2206)
!2212 = !DILocation(line: 212, column: 2, scope: !2206)
!2213 = !DILocation(line: 212, column: 2, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2206, file: !45, line: 212, column: 2)
!2215 = !DILocation(line: 212, column: 2, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2214, file: !45, line: 212, column: 2)
!2217 = !{i64 2151938470}
!2218 = !DILocation(line: 213, column: 22, scope: !2206)
!2219 = !DILocation(line: 213, column: 26, scope: !2206)
!2220 = !DILocation(line: 213, column: 9, scope: !2206)
!2221 = !DILocation(line: 213, column: 2, scope: !2206)
!2222 = distinct !DISubprogram(name: "spin_lock", scope: !2223, file: !2223, line: 349, type: !2224, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2226)
!2223 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!2224 = !DISubroutineType(types: !2225)
!2225 = !{null, !82}
!2226 = !{!2227}
!2227 = !DILocalVariable(name: "lock", arg: 1, scope: !2222, file: !2223, line: 349, type: !82)
!2228 = !DILocation(line: 349, column: 51, scope: !2222)
!2229 = !DILocation(line: 351, column: 2, scope: !2222)
!2230 = !DILocation(line: 352, column: 1, scope: !2222)
!2231 = distinct !DISubprogram(name: "futex_match", scope: !45, file: !45, line: 135, type: !2232, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2234)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{!17, !1930, !1930}
!2234 = !{!2235, !2236}
!2235 = !DILocalVariable(name: "key1", arg: 1, scope: !2231, file: !45, line: 135, type: !1930)
!2236 = !DILocalVariable(name: "key2", arg: 2, scope: !2231, file: !45, line: 135, type: !1930)
!2237 = !DILocation(line: 135, column: 48, scope: !2231)
!2238 = !DILocation(line: 135, column: 71, scope: !2231)
!2239 = !DILocation(line: 137, column: 10, scope: !2231)
!2240 = !DILocation(line: 137, column: 15, scope: !2231)
!2241 = !DILocation(line: 137, column: 18, scope: !2231)
!2242 = !DILocation(line: 138, column: 3, scope: !2231)
!2243 = !DILocation(line: 138, column: 6, scope: !2231)
!2244 = !DILocation(line: 138, column: 17, scope: !2231)
!2245 = !DILocation(line: 138, column: 25, scope: !2231)
!2246 = !DILocation(line: 138, column: 36, scope: !2231)
!2247 = !DILocation(line: 138, column: 22, scope: !2231)
!2248 = !DILocation(line: 139, column: 3, scope: !2231)
!2249 = !DILocation(line: 139, column: 6, scope: !2231)
!2250 = !DILocation(line: 139, column: 17, scope: !2231)
!2251 = !DILocation(line: 139, column: 24, scope: !2231)
!2252 = !DILocation(line: 139, column: 35, scope: !2231)
!2253 = !DILocation(line: 139, column: 21, scope: !2231)
!2254 = !DILocation(line: 140, column: 3, scope: !2231)
!2255 = !DILocation(line: 140, column: 6, scope: !2231)
!2256 = !DILocation(line: 140, column: 17, scope: !2231)
!2257 = !DILocation(line: 140, column: 27, scope: !2231)
!2258 = !DILocation(line: 140, column: 38, scope: !2231)
!2259 = !DILocation(line: 140, column: 24, scope: !2231)
!2260 = !DILocation(line: 0, scope: !2231)
!2261 = !DILocation(line: 137, column: 2, scope: !2231)
!2262 = distinct !DISubprogram(name: "spin_unlock", scope: !2223, file: !2223, line: 389, type: !2224, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2263)
!2263 = !{!2264}
!2264 = !DILocalVariable(name: "lock", arg: 1, scope: !2262, file: !2223, line: 389, type: !82)
!2265 = !DILocation(line: 389, column: 53, scope: !2262)
!2266 = !DILocation(line: 391, column: 2, scope: !2262)
!2267 = !DILocation(line: 392, column: 1, scope: !2262)
!2268 = !DISubprogram(name: "wake_up_q", scope: !1994, file: !1994, line: 64, type: !2269, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{null, !1992}
!2271 = distinct !DISubprogram(name: "futex_wake_op", scope: !2, file: !2, line: 238, type: !2272, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2274)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{!17, !19, !18, !19, !17, !17, !17}
!2274 = !{!2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2295, !2297, !2300, !2305, !2307, !2310}
!2275 = !DILocalVariable(name: "uaddr1", arg: 1, scope: !2271, file: !2, line: 238, type: !19)
!2276 = !DILocalVariable(name: "flags", arg: 2, scope: !2271, file: !2, line: 238, type: !18)
!2277 = !DILocalVariable(name: "uaddr2", arg: 3, scope: !2271, file: !2, line: 238, type: !19)
!2278 = !DILocalVariable(name: "nr_wake", arg: 4, scope: !2271, file: !2, line: 239, type: !17)
!2279 = !DILocalVariable(name: "nr_wake2", arg: 5, scope: !2271, file: !2, line: 239, type: !17)
!2280 = !DILocalVariable(name: "op", arg: 6, scope: !2271, file: !2, line: 239, type: !17)
!2281 = !DILocalVariable(name: "key1", scope: !2271, file: !2, line: 241, type: !1441)
!2282 = !DILocalVariable(name: "key2", scope: !2271, file: !2, line: 241, type: !1441)
!2283 = !DILocalVariable(name: "hb1", scope: !2271, file: !2, line: 242, type: !2089)
!2284 = !DILocalVariable(name: "hb2", scope: !2271, file: !2, line: 242, type: !2089)
!2285 = !DILocalVariable(name: "this", scope: !2271, file: !2, line: 243, type: !130)
!2286 = !DILocalVariable(name: "next", scope: !2271, file: !2, line: 243, type: !130)
!2287 = !DILocalVariable(name: "ret", scope: !2271, file: !2, line: 244, type: !17)
!2288 = !DILocalVariable(name: "op_ret", scope: !2271, file: !2, line: 244, type: !17)
!2289 = !DILocalVariable(name: "wake_q", scope: !2271, file: !2, line: 245, type: !1993)
!2290 = !DILabel(scope: !2271, name: "retry", file: !2, line: 247)
!2291 = !DILabel(scope: !2271, name: "retry_private", file: !2, line: 258)
!2292 = !DILocalVariable(name: "__mptr", scope: !2293, file: !2, line: 286, type: !129)
!2293 = distinct !DILexicalBlock(scope: !2294, file: !2, line: 286, column: 2)
!2294 = distinct !DILexicalBlock(scope: !2271, file: !2, line: 286, column: 2)
!2295 = !DILocalVariable(name: "__mptr", scope: !2296, file: !2, line: 286, type: !129)
!2296 = distinct !DILexicalBlock(scope: !2294, file: !2, line: 286, column: 2)
!2297 = !DILocalVariable(name: "__mptr", scope: !2298, file: !2, line: 286, type: !129)
!2298 = distinct !DILexicalBlock(scope: !2299, file: !2, line: 286, column: 2)
!2299 = distinct !DILexicalBlock(scope: !2294, file: !2, line: 286, column: 2)
!2300 = !DILocalVariable(name: "__mptr", scope: !2301, file: !2, line: 300, type: !129)
!2301 = distinct !DILexicalBlock(scope: !2302, file: !2, line: 300, column: 3)
!2302 = distinct !DILexicalBlock(scope: !2303, file: !2, line: 300, column: 3)
!2303 = distinct !DILexicalBlock(scope: !2304, file: !2, line: 298, column: 18)
!2304 = distinct !DILexicalBlock(scope: !2271, file: !2, line: 298, column: 6)
!2305 = !DILocalVariable(name: "__mptr", scope: !2306, file: !2, line: 300, type: !129)
!2306 = distinct !DILexicalBlock(scope: !2302, file: !2, line: 300, column: 3)
!2307 = !DILocalVariable(name: "__mptr", scope: !2308, file: !2, line: 300, type: !129)
!2308 = distinct !DILexicalBlock(scope: !2309, file: !2, line: 300, column: 3)
!2309 = distinct !DILexicalBlock(scope: !2302, file: !2, line: 300, column: 3)
!2310 = !DILabel(scope: !2271, name: "out_unlock", file: !2, line: 314)
!2311 = !DILocation(line: 238, column: 31, scope: !2271)
!2312 = !DILocation(line: 238, column: 52, scope: !2271)
!2313 = !DILocation(line: 238, column: 71, scope: !2271)
!2314 = !DILocation(line: 239, column: 9, scope: !2271)
!2315 = !DILocation(line: 239, column: 22, scope: !2271)
!2316 = !DILocation(line: 239, column: 36, scope: !2271)
!2317 = !DILocation(line: 241, column: 2, scope: !2271)
!2318 = !DILocation(line: 241, column: 18, scope: !2271)
!2319 = !DILocation(line: 241, column: 41, scope: !2271)
!2320 = !DILocation(line: 242, column: 2, scope: !2271)
!2321 = !DILocation(line: 242, column: 28, scope: !2271)
!2322 = !DILocation(line: 242, column: 34, scope: !2271)
!2323 = !DILocation(line: 243, column: 2, scope: !2271)
!2324 = !DILocation(line: 243, column: 18, scope: !2271)
!2325 = !DILocation(line: 243, column: 25, scope: !2271)
!2326 = !DILocation(line: 244, column: 2, scope: !2271)
!2327 = !DILocation(line: 244, column: 6, scope: !2271)
!2328 = !DILocation(line: 244, column: 11, scope: !2271)
!2329 = !DILocation(line: 245, column: 2, scope: !2271)
!2330 = !DILocation(line: 247, column: 1, scope: !2271)
!2331 = !DILocation(line: 248, column: 22, scope: !2271)
!2332 = !DILocation(line: 248, column: 30, scope: !2271)
!2333 = !DILocation(line: 248, column: 36, scope: !2271)
!2334 = !DILocation(line: 248, column: 8, scope: !2271)
!2335 = !DILocation(line: 248, column: 6, scope: !2271)
!2336 = !DILocation(line: 249, column: 6, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2271, file: !2, line: 249, column: 6)
!2338 = !DILocation(line: 249, column: 6, scope: !2271)
!2339 = !DILocation(line: 250, column: 10, scope: !2337)
!2340 = !DILocation(line: 250, column: 3, scope: !2337)
!2341 = !DILocation(line: 251, column: 22, scope: !2271)
!2342 = !DILocation(line: 251, column: 30, scope: !2271)
!2343 = !DILocation(line: 251, column: 36, scope: !2271)
!2344 = !DILocation(line: 251, column: 8, scope: !2271)
!2345 = !DILocation(line: 251, column: 6, scope: !2271)
!2346 = !DILocation(line: 252, column: 6, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2271, file: !2, line: 252, column: 6)
!2348 = !DILocation(line: 252, column: 6, scope: !2271)
!2349 = !DILocation(line: 253, column: 10, scope: !2347)
!2350 = !DILocation(line: 253, column: 3, scope: !2347)
!2351 = !DILocation(line: 255, column: 8, scope: !2271)
!2352 = !DILocation(line: 255, column: 6, scope: !2271)
!2353 = !DILocation(line: 256, column: 8, scope: !2271)
!2354 = !DILocation(line: 256, column: 6, scope: !2271)
!2355 = !DILocation(line: 256, column: 2, scope: !2271)
!2356 = !DILocation(line: 258, column: 1, scope: !2271)
!2357 = !DILocation(line: 259, column: 17, scope: !2271)
!2358 = !DILocation(line: 259, column: 22, scope: !2271)
!2359 = !DILocation(line: 259, column: 2, scope: !2271)
!2360 = !DILocation(line: 260, column: 34, scope: !2271)
!2361 = !DILocation(line: 260, column: 38, scope: !2271)
!2362 = !DILocation(line: 260, column: 11, scope: !2271)
!2363 = !DILocation(line: 260, column: 9, scope: !2271)
!2364 = !DILocation(line: 261, column: 6, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2271, file: !2, line: 261, column: 6)
!2366 = !DILocation(line: 261, column: 6, scope: !2271)
!2367 = !DILocation(line: 262, column: 20, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2365, file: !2, line: 261, column: 28)
!2369 = !DILocation(line: 262, column: 25, scope: !2368)
!2370 = !DILocation(line: 262, column: 3, scope: !2368)
!2371 = !DILocation(line: 265, column: 7, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2368, file: !2, line: 264, column: 7)
!2373 = !DILocation(line: 0, scope: !2372)
!2374 = !DILocation(line: 264, column: 7, scope: !2368)
!2375 = !DILocation(line: 270, column: 10, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2372, file: !2, line: 265, column: 57)
!2377 = !DILocation(line: 270, column: 8, scope: !2376)
!2378 = !DILocation(line: 271, column: 11, scope: !2376)
!2379 = !DILocation(line: 271, column: 4, scope: !2376)
!2380 = !DILocation(line: 274, column: 7, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2368, file: !2, line: 274, column: 7)
!2382 = !DILocation(line: 274, column: 14, scope: !2381)
!2383 = !DILocation(line: 274, column: 7, scope: !2368)
!2384 = !DILocation(line: 275, column: 34, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2381, file: !2, line: 274, column: 26)
!2386 = !DILocation(line: 275, column: 10, scope: !2385)
!2387 = !DILocation(line: 275, column: 8, scope: !2385)
!2388 = !DILocation(line: 276, column: 8, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2385, file: !2, line: 276, column: 8)
!2390 = !DILocation(line: 276, column: 8, scope: !2385)
!2391 = !DILocation(line: 277, column: 12, scope: !2389)
!2392 = !DILocation(line: 277, column: 5, scope: !2389)
!2393 = !DILocation(line: 278, column: 3, scope: !2385)
!2394 = !DILocation(line: 280, column: 3, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2368, file: !2, line: 280, column: 3)
!2396 = !DILocation(line: 281, column: 9, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2368, file: !2, line: 281, column: 7)
!2398 = !DILocation(line: 281, column: 15, scope: !2397)
!2399 = !DILocation(line: 281, column: 7, scope: !2368)
!2400 = !DILocation(line: 282, column: 4, scope: !2397)
!2401 = !DILocation(line: 283, column: 3, scope: !2368)
!2402 = !DILocation(line: 286, column: 2, scope: !2293)
!2403 = !DILocation(line: 286, column: 2, scope: !2294)
!2404 = !DILocation(line: 286, column: 2, scope: !2296)
!2405 = !DILocation(line: 286, column: 2, scope: !2299)
!2406 = !DILocation(line: 287, column: 21, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2408, file: !2, line: 287, column: 7)
!2408 = distinct !DILexicalBlock(scope: !2299, file: !2, line: 286, column: 59)
!2409 = !DILocation(line: 287, column: 27, scope: !2407)
!2410 = !DILocation(line: 287, column: 7, scope: !2407)
!2411 = !DILocation(line: 287, column: 7, scope: !2408)
!2412 = !DILocation(line: 288, column: 8, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2414, file: !2, line: 288, column: 8)
!2414 = distinct !DILexicalBlock(scope: !2407, file: !2, line: 287, column: 40)
!2415 = !DILocation(line: 288, column: 14, scope: !2413)
!2416 = !DILocation(line: 288, column: 23, scope: !2413)
!2417 = !DILocation(line: 288, column: 26, scope: !2413)
!2418 = !DILocation(line: 288, column: 32, scope: !2413)
!2419 = !DILocation(line: 288, column: 8, scope: !2414)
!2420 = !DILocation(line: 289, column: 9, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2413, file: !2, line: 288, column: 43)
!2422 = !DILocation(line: 290, column: 5, scope: !2421)
!2423 = !DILocation(line: 292, column: 29, scope: !2414)
!2424 = !DILocation(line: 292, column: 4, scope: !2414)
!2425 = !DILocation(line: 293, column: 8, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2414, file: !2, line: 293, column: 8)
!2427 = !DILocation(line: 293, column: 17, scope: !2426)
!2428 = !DILocation(line: 293, column: 14, scope: !2426)
!2429 = !DILocation(line: 293, column: 8, scope: !2414)
!2430 = !DILocation(line: 294, column: 5, scope: !2426)
!2431 = !DILocation(line: 295, column: 3, scope: !2414)
!2432 = !DILocation(line: 296, column: 2, scope: !2408)
!2433 = !DILocation(line: 286, column: 2, scope: !2298)
!2434 = distinct !{!2434, !2403, !2435, !2191, !2192}
!2435 = !DILocation(line: 296, column: 2, scope: !2294)
!2436 = !DILocation(line: 298, column: 6, scope: !2304)
!2437 = !DILocation(line: 298, column: 13, scope: !2304)
!2438 = !DILocation(line: 298, column: 6, scope: !2271)
!2439 = !DILocation(line: 299, column: 10, scope: !2303)
!2440 = !DILocation(line: 300, column: 3, scope: !2301)
!2441 = !DILocation(line: 300, column: 3, scope: !2302)
!2442 = !DILocation(line: 300, column: 3, scope: !2306)
!2443 = !DILocation(line: 300, column: 3, scope: !2309)
!2444 = !DILocation(line: 301, column: 22, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2446, file: !2, line: 301, column: 8)
!2446 = distinct !DILexicalBlock(scope: !2309, file: !2, line: 300, column: 60)
!2447 = !DILocation(line: 301, column: 28, scope: !2445)
!2448 = !DILocation(line: 301, column: 8, scope: !2445)
!2449 = !DILocation(line: 301, column: 8, scope: !2446)
!2450 = !DILocation(line: 302, column: 9, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2452, file: !2, line: 302, column: 9)
!2452 = distinct !DILexicalBlock(scope: !2445, file: !2, line: 301, column: 41)
!2453 = !DILocation(line: 302, column: 15, scope: !2451)
!2454 = !DILocation(line: 302, column: 24, scope: !2451)
!2455 = !DILocation(line: 302, column: 27, scope: !2451)
!2456 = !DILocation(line: 302, column: 33, scope: !2451)
!2457 = !DILocation(line: 302, column: 9, scope: !2452)
!2458 = !DILocation(line: 303, column: 10, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2451, file: !2, line: 302, column: 44)
!2460 = !DILocation(line: 304, column: 6, scope: !2459)
!2461 = !DILocation(line: 306, column: 30, scope: !2452)
!2462 = !DILocation(line: 306, column: 5, scope: !2452)
!2463 = !DILocation(line: 307, column: 9, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2452, file: !2, line: 307, column: 9)
!2465 = !DILocation(line: 307, column: 21, scope: !2464)
!2466 = !DILocation(line: 307, column: 18, scope: !2464)
!2467 = !DILocation(line: 307, column: 9, scope: !2452)
!2468 = !DILocation(line: 308, column: 6, scope: !2464)
!2469 = !DILocation(line: 309, column: 4, scope: !2452)
!2470 = !DILocation(line: 310, column: 3, scope: !2446)
!2471 = !DILocation(line: 300, column: 3, scope: !2308)
!2472 = distinct !{!2472, !2441, !2473, !2191, !2192}
!2473 = !DILocation(line: 310, column: 3, scope: !2302)
!2474 = !DILocation(line: 311, column: 10, scope: !2303)
!2475 = !DILocation(line: 311, column: 7, scope: !2303)
!2476 = !DILocation(line: 312, column: 2, scope: !2303)
!2477 = !DILocation(line: 298, column: 15, scope: !2304)
!2478 = !DILocation(line: 314, column: 1, scope: !2271)
!2479 = !DILocation(line: 315, column: 19, scope: !2271)
!2480 = !DILocation(line: 315, column: 24, scope: !2271)
!2481 = !DILocation(line: 315, column: 2, scope: !2271)
!2482 = !DILocation(line: 316, column: 2, scope: !2271)
!2483 = !DILocation(line: 317, column: 9, scope: !2271)
!2484 = !DILocation(line: 317, column: 2, scope: !2271)
!2485 = !DILocation(line: 318, column: 1, scope: !2271)
!2486 = distinct !DISubprogram(name: "double_lock_hb", scope: !45, file: !45, line: 239, type: !2487, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2489)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{null, !2089, !2089}
!2489 = !{!2490, !2491, !2492}
!2490 = !DILocalVariable(name: "hb1", arg: 1, scope: !2486, file: !45, line: 239, type: !2089)
!2491 = !DILocalVariable(name: "hb2", arg: 2, scope: !2486, file: !45, line: 239, type: !2089)
!2492 = !DILocalVariable(name: "__tmp", scope: !2493, file: !45, line: 242, type: !2089)
!2493 = distinct !DILexicalBlock(scope: !2494, file: !45, line: 242, column: 3)
!2494 = distinct !DILexicalBlock(scope: !2486, file: !45, line: 241, column: 6)
!2495 = !DILocation(line: 239, column: 42, scope: !2486)
!2496 = !DILocation(line: 239, column: 73, scope: !2486)
!2497 = !DILocation(line: 241, column: 6, scope: !2494)
!2498 = !DILocation(line: 241, column: 12, scope: !2494)
!2499 = !DILocation(line: 241, column: 10, scope: !2494)
!2500 = !DILocation(line: 241, column: 6, scope: !2486)
!2501 = !DILocation(line: 242, column: 3, scope: !2494)
!2502 = !DILocation(line: 242, column: 3, scope: !2493)
!2503 = !DILocation(line: 244, column: 13, scope: !2486)
!2504 = !DILocation(line: 244, column: 18, scope: !2486)
!2505 = !DILocation(line: 244, column: 2, scope: !2486)
!2506 = !DILocation(line: 245, column: 6, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2486, file: !45, line: 245, column: 6)
!2508 = !DILocation(line: 245, column: 13, scope: !2507)
!2509 = !DILocation(line: 245, column: 10, scope: !2507)
!2510 = !DILocation(line: 245, column: 6, scope: !2486)
!2511 = !DILocation(line: 246, column: 3, scope: !2507)
!2512 = !DILocation(line: 246, column: 3, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2507, file: !45, line: 246, column: 3)
!2514 = !DILocation(line: 247, column: 1, scope: !2486)
!2515 = !DILocation(line: 188, column: 48, scope: !14)
!2516 = !DILocation(line: 188, column: 72, scope: !14)
!2517 = !DILocation(line: 190, column: 2, scope: !14)
!2518 = !DILocation(line: 190, column: 15, scope: !14)
!2519 = !DILocation(line: 190, column: 23, scope: !14)
!2520 = !DILocation(line: 190, column: 34, scope: !14)
!2521 = !DILocation(line: 190, column: 48, scope: !14)
!2522 = !DILocation(line: 191, column: 2, scope: !14)
!2523 = !DILocation(line: 191, column: 15, scope: !14)
!2524 = !DILocation(line: 191, column: 24, scope: !14)
!2525 = !DILocation(line: 191, column: 35, scope: !14)
!2526 = !DILocation(line: 191, column: 49, scope: !14)
!2527 = !DILocation(line: 192, column: 2, scope: !14)
!2528 = !DILocation(line: 192, column: 6, scope: !14)
!2529 = !DILocation(line: 192, column: 29, scope: !14)
!2530 = !DILocation(line: 192, column: 40, scope: !14)
!2531 = !DILocation(line: 192, column: 54, scope: !14)
!2532 = !DILocation(line: 192, column: 14, scope: !14)
!2533 = !DILocation(line: 193, column: 2, scope: !14)
!2534 = !DILocation(line: 193, column: 6, scope: !14)
!2535 = !DILocation(line: 193, column: 29, scope: !14)
!2536 = !DILocation(line: 193, column: 40, scope: !14)
!2537 = !DILocation(line: 193, column: 15, scope: !14)
!2538 = !DILocation(line: 194, column: 2, scope: !14)
!2539 = !DILocation(line: 194, column: 6, scope: !14)
!2540 = !DILocation(line: 194, column: 14, scope: !14)
!2541 = !DILocation(line: 196, column: 6, scope: !1978)
!2542 = !DILocation(line: 196, column: 17, scope: !1978)
!2543 = !DILocation(line: 196, column: 6, scope: !14)
!2544 = !DILocation(line: 197, column: 7, scope: !1976)
!2545 = !DILocation(line: 197, column: 13, scope: !1976)
!2546 = !DILocation(line: 197, column: 17, scope: !1976)
!2547 = !DILocation(line: 197, column: 20, scope: !1976)
!2548 = !DILocation(line: 197, column: 26, scope: !1976)
!2549 = !DILocation(line: 197, column: 7, scope: !1977)
!2550 = !DILocation(line: 198, column: 4, scope: !1975)
!2551 = !DILocation(line: 198, column: 9, scope: !1975)
!2552 = !DILocation(line: 203, column: 4, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2554, file: !2, line: 203, column: 4)
!2554 = distinct !DILexicalBlock(scope: !1975, file: !2, line: 203, column: 4)
!2555 = !DILocation(line: 203, column: 4, scope: !2554)
!2556 = !DILocation(line: 203, column: 4, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2553, file: !2, line: 203, column: 4)
!2558 = !DILocation(line: 203, column: 4, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2557, file: !2, line: 203, column: 4)
!2560 = !DILocation(line: 203, column: 4, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2557, file: !2, line: 203, column: 4)
!2562 = !DILocation(line: 203, column: 4, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2561, file: !2, line: 203, column: 4)
!2564 = !DILocation(line: 205, column: 10, scope: !1975)
!2565 = !DILocation(line: 206, column: 3, scope: !1976)
!2566 = !DILocation(line: 206, column: 3, scope: !1975)
!2567 = !DILocation(line: 207, column: 16, scope: !1977)
!2568 = !DILocation(line: 207, column: 13, scope: !1977)
!2569 = !DILocation(line: 207, column: 9, scope: !1977)
!2570 = !DILocation(line: 208, column: 2, scope: !1977)
!2571 = !DILocation(line: 210, column: 2, scope: !14)
!2572 = !DILocation(line: 211, column: 36, scope: !14)
!2573 = !DILocation(line: 211, column: 40, scope: !14)
!2574 = !DILocation(line: 211, column: 56, scope: !14)
!2575 = !DILocation(line: 211, column: 8, scope: !14)
!2576 = !DILocation(line: 211, column: 6, scope: !14)
!2577 = !DILocation(line: 212, column: 2, scope: !14)
!2578 = !DILocation(line: 213, column: 6, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !14, file: !2, line: 213, column: 6)
!2580 = !DILocation(line: 213, column: 6, scope: !14)
!2581 = !DILocation(line: 214, column: 10, scope: !2579)
!2582 = !DILocation(line: 214, column: 3, scope: !2579)
!2583 = !DILocation(line: 216, column: 10, scope: !14)
!2584 = !DILocation(line: 216, column: 2, scope: !14)
!2585 = !DILocation(line: 218, column: 10, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !14, file: !2, line: 216, column: 15)
!2587 = !DILocation(line: 218, column: 20, scope: !2586)
!2588 = !DILocation(line: 218, column: 17, scope: !2586)
!2589 = !DILocation(line: 218, column: 3, scope: !2586)
!2590 = !DILocation(line: 220, column: 10, scope: !2586)
!2591 = !DILocation(line: 220, column: 20, scope: !2586)
!2592 = !DILocation(line: 220, column: 17, scope: !2586)
!2593 = !DILocation(line: 220, column: 3, scope: !2586)
!2594 = !DILocation(line: 222, column: 10, scope: !2586)
!2595 = !DILocation(line: 222, column: 19, scope: !2586)
!2596 = !DILocation(line: 222, column: 17, scope: !2586)
!2597 = !DILocation(line: 222, column: 3, scope: !2586)
!2598 = !DILocation(line: 224, column: 10, scope: !2586)
!2599 = !DILocation(line: 224, column: 20, scope: !2586)
!2600 = !DILocation(line: 224, column: 17, scope: !2586)
!2601 = !DILocation(line: 224, column: 3, scope: !2586)
!2602 = !DILocation(line: 226, column: 10, scope: !2586)
!2603 = !DILocation(line: 226, column: 20, scope: !2586)
!2604 = !DILocation(line: 226, column: 17, scope: !2586)
!2605 = !DILocation(line: 226, column: 3, scope: !2586)
!2606 = !DILocation(line: 228, column: 10, scope: !2586)
!2607 = !DILocation(line: 228, column: 19, scope: !2586)
!2608 = !DILocation(line: 228, column: 17, scope: !2586)
!2609 = !DILocation(line: 228, column: 3, scope: !2586)
!2610 = !DILocation(line: 230, column: 3, scope: !2586)
!2611 = !DILocation(line: 232, column: 1, scope: !14)
!2612 = distinct !DISubprogram(name: "double_unlock_hb", scope: !45, file: !45, line: 250, type: !2487, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2613)
!2613 = !{!2614, !2615}
!2614 = !DILocalVariable(name: "hb1", arg: 1, scope: !2612, file: !45, line: 250, type: !2089)
!2615 = !DILocalVariable(name: "hb2", arg: 2, scope: !2612, file: !45, line: 250, type: !2089)
!2616 = !DILocation(line: 250, column: 44, scope: !2612)
!2617 = !DILocation(line: 250, column: 75, scope: !2612)
!2618 = !DILocation(line: 252, column: 15, scope: !2612)
!2619 = !DILocation(line: 252, column: 20, scope: !2612)
!2620 = !DILocation(line: 252, column: 2, scope: !2612)
!2621 = !DILocation(line: 253, column: 6, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2612, file: !45, line: 253, column: 6)
!2623 = !DILocation(line: 253, column: 13, scope: !2622)
!2624 = !DILocation(line: 253, column: 10, scope: !2622)
!2625 = !DILocation(line: 253, column: 6, scope: !2612)
!2626 = !DILocation(line: 254, column: 16, scope: !2622)
!2627 = !DILocation(line: 254, column: 21, scope: !2622)
!2628 = !DILocation(line: 254, column: 3, scope: !2622)
!2629 = !DILocation(line: 255, column: 1, scope: !2612)
!2630 = !DISubprogram(name: "fault_in_user_writeable", scope: !45, file: !45, line: 149, type: !2631, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{!17, !19}
!2633 = distinct !DISubprogram(name: "__might_resched", scope: !2634, file: !2634, line: 184, type: !2635, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2637)
!2634 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!2635 = !DISubroutineType(types: !2636)
!2636 = !{null, !945, !17, !18}
!2637 = !{!2638, !2639, !2640}
!2638 = !DILocalVariable(name: "file", arg: 1, scope: !2633, file: !2634, line: 184, type: !945)
!2639 = !DILocalVariable(name: "line", arg: 2, scope: !2633, file: !2634, line: 184, type: !17)
!2640 = !DILocalVariable(name: "offsets", arg: 3, scope: !2633, file: !2634, line: 185, type: !18)
!2641 = !DILocation(line: 184, column: 50, scope: !2633)
!2642 = !DILocation(line: 184, column: 60, scope: !2633)
!2643 = !DILocation(line: 185, column: 23, scope: !2633)
!2644 = !DILocation(line: 185, column: 34, scope: !2633)
!2645 = !DILocation(line: 2104, column: 9, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !1962, file: !126, line: 2104, column: 9)
!2647 = !DILocation(line: 2104, column: 9, scope: !1962)
!2648 = !DILocation(line: 2104, column: 2, scope: !1962)
!2649 = distinct !DISubprogram(name: "futex_wait_queue", scope: !2, file: !2, line: 328, type: !2650, scopeLine: 330, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2657)
!2650 = !DISubroutineType(types: !2651)
!2651 = !{null, !2089, !130, !2652}
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_sleeper", file: !27, line: 136, size: 576, elements: !2654)
!2654 = !{!2655, !2656}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2653, file: !27, line: 137, baseType: !280, size: 512)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2653, file: !27, line: 138, baseType: !146, size: 64, offset: 512)
!2657 = !{!2658, !2659, !2660, !2661, !2667}
!2658 = !DILocalVariable(name: "hb", arg: 1, scope: !2649, file: !2, line: 328, type: !2089)
!2659 = !DILocalVariable(name: "q", arg: 2, scope: !2649, file: !2, line: 328, type: !130)
!2660 = !DILocalVariable(name: "timeout", arg: 3, scope: !2649, file: !2, line: 329, type: !2652)
!2661 = !DILocalVariable(name: "__ai_ptr", scope: !2662, file: !2, line: 337, type: !2666)
!2662 = distinct !DILexicalBlock(scope: !2663, file: !2, line: 337, column: 2)
!2663 = distinct !DILexicalBlock(scope: !2664, file: !2, line: 337, column: 2)
!2664 = distinct !DILexicalBlock(scope: !2665, file: !2, line: 337, column: 2)
!2665 = distinct !DILexicalBlock(scope: !2649, file: !2, line: 337, column: 2)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!2667 = !DILocalVariable(name: "__ret", scope: !2668, file: !2, line: 337, type: !18)
!2668 = distinct !DILexicalBlock(scope: !2662, file: !2, line: 337, column: 2)
!2669 = !DILocation(line: 328, column: 49, scope: !2649)
!2670 = !DILocation(line: 328, column: 69, scope: !2649)
!2671 = !DILocation(line: 329, column: 32, scope: !2649)
!2672 = !DILocation(line: 337, column: 2, scope: !2649)
!2673 = !DILocation(line: 337, column: 2, scope: !2665)
!2674 = !DILocation(line: 337, column: 2, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2665, file: !2, line: 337, column: 2)
!2676 = !DILocation(line: 337, column: 2, scope: !2664)
!2677 = !DILocation(line: 337, column: 2, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2664, file: !2, line: 337, column: 2)
!2679 = !DILocation(line: 337, column: 2, scope: !2662)
!2680 = !DILocation(line: 337, column: 2, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2662, file: !2, line: 337, column: 2)
!2682 = !DILocation(line: 337, column: 2, scope: !2668)
!2683 = !{i64 2151968489}
!2684 = !DILocation(line: 337, column: 2, scope: !2663)
!2685 = !DILocation(line: 338, column: 14, scope: !2649)
!2686 = !DILocation(line: 338, column: 17, scope: !2649)
!2687 = !DILocation(line: 338, column: 2, scope: !2649)
!2688 = !DILocation(line: 341, column: 6, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2649, file: !2, line: 341, column: 6)
!2690 = !DILocation(line: 341, column: 6, scope: !2649)
!2691 = !DILocation(line: 342, column: 33, scope: !2689)
!2692 = !DILocation(line: 342, column: 3, scope: !2689)
!2693 = !DILocation(line: 348, column: 6, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2649, file: !2, line: 348, column: 6)
!2695 = !DILocation(line: 348, column: 6, scope: !2649)
!2696 = !DILocation(line: 354, column: 8, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2698, file: !2, line: 354, column: 7)
!2698 = distinct !DILexicalBlock(scope: !2694, file: !2, line: 348, column: 43)
!2699 = !DILocation(line: 354, column: 16, scope: !2697)
!2700 = !DILocation(line: 354, column: 19, scope: !2697)
!2701 = !DILocation(line: 354, column: 28, scope: !2697)
!2702 = !DILocation(line: 354, column: 7, scope: !2698)
!2703 = !DILocation(line: 355, column: 4, scope: !2697)
!2704 = !DILocation(line: 356, column: 2, scope: !2698)
!2705 = !DILocation(line: 357, column: 2, scope: !2649)
!2706 = !DILocation(line: 357, column: 2, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2649, file: !2, line: 357, column: 2)
!2708 = !DILocation(line: 357, column: 2, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2707, file: !2, line: 357, column: 2)
!2710 = !DILocation(line: 357, column: 2, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2707, file: !2, line: 357, column: 2)
!2712 = !DILocation(line: 357, column: 2, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2711, file: !2, line: 357, column: 2)
!2714 = !DILocation(line: 357, column: 2, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2711, file: !2, line: 357, column: 2)
!2716 = !DILocation(line: 358, column: 1, scope: !2649)
!2717 = distinct !DISubprogram(name: "get_current", scope: !2718, file: !2718, line: 39, type: !2719, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2721)
!2718 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!2719 = !DISubroutineType(types: !2720)
!2720 = !{!146}
!2721 = !{!2722, !2724, !2728}
!2722 = !DILocalVariable(name: "pscr_ret__", scope: !2723, file: !2718, line: 41, type: !146)
!2723 = distinct !DILexicalBlock(scope: !2717, file: !2718, line: 41, column: 9)
!2724 = !DILocalVariable(name: "__vpp_verify", scope: !2725, file: !2718, line: 41, type: !2726)
!2725 = distinct !DILexicalBlock(scope: !2723, file: !2718, line: 41, column: 9)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2728 = !DILocalVariable(name: "pfo_val__", scope: !2729, file: !2718, line: 41, type: !212)
!2729 = distinct !DILexicalBlock(scope: !2723, file: !2718, line: 41, column: 9)
!2730 = !DILocation(line: 41, column: 9, scope: !2723)
!2731 = !DILocation(line: 41, column: 9, scope: !2725)
!2732 = !DILocation(line: 41, column: 9, scope: !2729)
!2733 = !{i64 2148215419}
!2734 = !DILocation(line: 41, column: 9, scope: !2717)
!2735 = !DILocation(line: 41, column: 2, scope: !2717)
!2736 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !2737, file: !2737, line: 94, type: !2738, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2743)
!2737 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!2738 = !DISubroutineType(types: !2739)
!2739 = !{null, !2740, !1253}
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2742)
!2742 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2743 = !{!2744, !2745}
!2744 = !DILocalVariable(name: "v", arg: 1, scope: !2736, file: !2737, line: 94, type: !2740)
!2745 = !DILocalVariable(name: "size", arg: 2, scope: !2736, file: !2737, line: 94, type: !1253)
!2746 = !DILocation(line: 94, column: 79, scope: !2736)
!2747 = !DILocation(line: 94, column: 89, scope: !2736)
!2748 = !DILocation(line: 96, column: 20, scope: !2736)
!2749 = !DILocation(line: 96, column: 23, scope: !2736)
!2750 = !DILocation(line: 96, column: 2, scope: !2736)
!2751 = !DILocation(line: 97, column: 2, scope: !2736)
!2752 = !DILocation(line: 98, column: 1, scope: !2736)
!2753 = distinct !DISubprogram(name: "futex_queue", scope: !45, file: !45, line: 170, type: !2754, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2756)
!2754 = !DISubroutineType(types: !2755)
!2755 = !{null, !130, !2089}
!2756 = !{!2757, !2758}
!2757 = !DILocalVariable(name: "q", arg: 1, scope: !2753, file: !45, line: 170, type: !130)
!2758 = !DILocalVariable(name: "hb", arg: 2, scope: !2753, file: !45, line: 170, type: !2089)
!2759 = !DILocation(line: 170, column: 48, scope: !2753)
!2760 = !DILocation(line: 170, column: 77, scope: !2753)
!2761 = !DILocation(line: 173, column: 16, scope: !2753)
!2762 = !DILocation(line: 173, column: 19, scope: !2753)
!2763 = !DILocation(line: 173, column: 2, scope: !2753)
!2764 = !DILocation(line: 174, column: 15, scope: !2753)
!2765 = !DILocation(line: 174, column: 19, scope: !2753)
!2766 = !DILocation(line: 174, column: 2, scope: !2753)
!2767 = !DILocation(line: 175, column: 1, scope: !2753)
!2768 = !DISubprogram(name: "hrtimer_sleeper_start_expires", scope: !27, file: !27, line: 437, type: !2769, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2769 = !DISubroutineType(types: !2770)
!2770 = !{null, !2652, !49}
!2771 = distinct !DISubprogram(name: "plist_node_empty", scope: !135, file: !135, line: 222, type: !2772, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2776)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{!17, !2774}
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!2776 = !{!2777}
!2777 = !DILocalVariable(name: "node", arg: 1, scope: !2771, file: !135, line: 222, type: !2774)
!2778 = !DILocation(line: 222, column: 61, scope: !2771)
!2779 = !DILocation(line: 224, column: 21, scope: !2771)
!2780 = !DILocation(line: 224, column: 27, scope: !2771)
!2781 = !DILocation(line: 224, column: 9, scope: !2771)
!2782 = !DILocation(line: 224, column: 2, scope: !2771)
!2783 = !DISubprogram(name: "schedule", scope: !126, file: !126, line: 303, type: !1242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2784 = distinct !DISubprogram(name: "futex_wait_multiple", scope: !2, file: !2, line: 524, type: !2785, scopeLine: 526, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2798)
!2785 = !DISubroutineType(types: !2786)
!2786 = !{!17, !2787, !18, !2652}
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "futex_vector", file: !45, line: 277, size: 1088, elements: !2789)
!2789 = !{!2790, !2797}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !2788, file: !45, line: 278, baseType: !2791, size: 192)
!2791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "futex_waitv", file: !1413, line: 64, size: 192, elements: !2792)
!2792 = !{!2793, !2794, !2795, !2796}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2791, file: !1413, line: 65, baseType: !213, size: 64)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2791, file: !1413, line: 66, baseType: !213, size: 64, offset: 64)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2791, file: !1413, line: 67, baseType: !22, size: 32, offset: 128)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved", scope: !2791, file: !1413, line: 68, baseType: !22, size: 32, offset: 160)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2788, file: !45, line: 279, baseType: !131, size: 896, offset: 192)
!2798 = !{!2799, !2800, !2801, !2802, !2803}
!2799 = !DILocalVariable(name: "vs", arg: 1, scope: !2784, file: !2, line: 524, type: !2787)
!2800 = !DILocalVariable(name: "count", arg: 2, scope: !2784, file: !2, line: 524, type: !18)
!2801 = !DILocalVariable(name: "to", arg: 3, scope: !2784, file: !2, line: 525, type: !2652)
!2802 = !DILocalVariable(name: "ret", scope: !2784, file: !2, line: 527, type: !17)
!2803 = !DILocalVariable(name: "hint", scope: !2784, file: !2, line: 527, type: !17)
!2804 = !DILocation(line: 524, column: 46, scope: !2784)
!2805 = !DILocation(line: 524, column: 63, scope: !2784)
!2806 = !DILocation(line: 525, column: 28, scope: !2784)
!2807 = !DILocation(line: 527, column: 2, scope: !2784)
!2808 = !DILocation(line: 527, column: 6, scope: !2784)
!2809 = !DILocation(line: 527, column: 11, scope: !2784)
!2810 = !DILocation(line: 529, column: 6, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2784, file: !2, line: 529, column: 6)
!2812 = !DILocation(line: 529, column: 6, scope: !2784)
!2813 = !DILocation(line: 530, column: 33, scope: !2811)
!2814 = !DILocation(line: 530, column: 3, scope: !2811)
!2815 = !DILocation(line: 532, column: 2, scope: !2784)
!2816 = !DILocation(line: 533, column: 35, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2784, file: !2, line: 532, column: 12)
!2818 = !DILocation(line: 533, column: 39, scope: !2817)
!2819 = !DILocation(line: 533, column: 9, scope: !2817)
!2820 = !DILocation(line: 533, column: 7, scope: !2817)
!2821 = !DILocation(line: 534, column: 7, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2817, file: !2, line: 534, column: 7)
!2823 = !DILocation(line: 534, column: 7, scope: !2817)
!2824 = !DILocation(line: 535, column: 8, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2826, file: !2, line: 535, column: 8)
!2826 = distinct !DILexicalBlock(scope: !2822, file: !2, line: 534, column: 12)
!2827 = !DILocation(line: 535, column: 12, scope: !2825)
!2828 = !DILocation(line: 535, column: 8, scope: !2826)
!2829 = !DILocation(line: 537, column: 11, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2825, file: !2, line: 535, column: 17)
!2831 = !DILocation(line: 537, column: 9, scope: !2830)
!2832 = !DILocation(line: 538, column: 4, scope: !2830)
!2833 = !DILocation(line: 539, column: 11, scope: !2826)
!2834 = !DILocation(line: 539, column: 4, scope: !2826)
!2835 = !DILocation(line: 542, column: 24, scope: !2817)
!2836 = !DILocation(line: 542, column: 28, scope: !2817)
!2837 = !DILocation(line: 542, column: 35, scope: !2817)
!2838 = !DILocation(line: 542, column: 3, scope: !2817)
!2839 = !DILocation(line: 544, column: 3, scope: !2817)
!2840 = !DILocation(line: 544, column: 3, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2817, file: !2, line: 544, column: 3)
!2842 = !DILocation(line: 544, column: 3, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2841, file: !2, line: 544, column: 3)
!2844 = !DILocation(line: 544, column: 3, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2841, file: !2, line: 544, column: 3)
!2846 = !DILocation(line: 544, column: 3, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2845, file: !2, line: 544, column: 3)
!2848 = !DILocation(line: 544, column: 3, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2845, file: !2, line: 544, column: 3)
!2850 = !DILocation(line: 546, column: 26, scope: !2817)
!2851 = !DILocation(line: 546, column: 30, scope: !2817)
!2852 = !DILocation(line: 546, column: 9, scope: !2817)
!2853 = !DILocation(line: 546, column: 7, scope: !2817)
!2854 = !DILocation(line: 547, column: 7, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2817, file: !2, line: 547, column: 7)
!2856 = !DILocation(line: 547, column: 11, scope: !2855)
!2857 = !DILocation(line: 547, column: 7, scope: !2817)
!2858 = !DILocation(line: 548, column: 11, scope: !2855)
!2859 = !DILocation(line: 548, column: 4, scope: !2855)
!2860 = !DILocation(line: 550, column: 7, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2817, file: !2, line: 550, column: 7)
!2862 = !DILocation(line: 550, column: 10, scope: !2861)
!2863 = !DILocation(line: 550, column: 14, scope: !2861)
!2864 = !DILocation(line: 550, column: 18, scope: !2861)
!2865 = !DILocation(line: 550, column: 7, scope: !2817)
!2866 = !DILocation(line: 551, column: 4, scope: !2861)
!2867 = !DILocation(line: 552, column: 27, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2861, file: !2, line: 552, column: 12)
!2869 = !DILocation(line: 552, column: 12, scope: !2868)
!2870 = !DILocation(line: 552, column: 12, scope: !2861)
!2871 = !DILocation(line: 553, column: 4, scope: !2868)
!2872 = distinct !{!2872, !2815, !2873, !2192}
!2873 = !DILocation(line: 558, column: 2, scope: !2784)
!2874 = !DILocation(line: 559, column: 1, scope: !2784)
!2875 = distinct !DISubprogram(name: "futex_wait_multiple_setup", scope: !2, file: !2, line: 399, type: !2876, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2878)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{!17, !2787, !17, !800}
!2878 = !{!2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2894, !2895, !2900, !2902, !2906, !2907, !2908, !2914, !2915}
!2879 = !DILocalVariable(name: "vs", arg: 1, scope: !2875, file: !2, line: 399, type: !2787)
!2880 = !DILocalVariable(name: "count", arg: 2, scope: !2875, file: !2, line: 399, type: !17)
!2881 = !DILocalVariable(name: "woken", arg: 3, scope: !2875, file: !2, line: 399, type: !800)
!2882 = !DILocalVariable(name: "hb", scope: !2875, file: !2, line: 401, type: !2089)
!2883 = !DILocalVariable(name: "retry", scope: !2875, file: !2, line: 402, type: !942)
!2884 = !DILocalVariable(name: "ret", scope: !2875, file: !2, line: 403, type: !17)
!2885 = !DILocalVariable(name: "i", scope: !2875, file: !2, line: 403, type: !17)
!2886 = !DILocalVariable(name: "uval", scope: !2875, file: !2, line: 404, type: !20)
!2887 = !DILabel(scope: !2875, name: "retry", file: !2, line: 420)
!2888 = !DILocalVariable(name: "__dummy", scope: !2889, file: !2, line: 425, type: !212)
!2889 = distinct !DILexicalBlock(scope: !2890, file: !2, line: 425, column: 23)
!2890 = distinct !DILexicalBlock(scope: !2891, file: !2, line: 425, column: 23)
!2891 = distinct !DILexicalBlock(scope: !2892, file: !2, line: 421, column: 30)
!2892 = distinct !DILexicalBlock(scope: !2893, file: !2, line: 421, column: 2)
!2893 = distinct !DILexicalBlock(scope: !2875, file: !2, line: 421, column: 2)
!2894 = !DILocalVariable(name: "__dummy2", scope: !2889, file: !2, line: 425, type: !213)
!2895 = !DILocalVariable(name: "__ai_ptr", scope: !2896, file: !2, line: 433, type: !2666)
!2896 = distinct !DILexicalBlock(scope: !2897, file: !2, line: 433, column: 2)
!2897 = distinct !DILexicalBlock(scope: !2898, file: !2, line: 433, column: 2)
!2898 = distinct !DILexicalBlock(scope: !2899, file: !2, line: 433, column: 2)
!2899 = distinct !DILexicalBlock(scope: !2875, file: !2, line: 433, column: 2)
!2900 = !DILocalVariable(name: "__ret", scope: !2901, file: !2, line: 433, type: !18)
!2901 = distinct !DILexicalBlock(scope: !2896, file: !2, line: 433, column: 2)
!2902 = !DILocalVariable(name: "uaddr", scope: !2903, file: !2, line: 436, type: !19)
!2903 = distinct !DILexicalBlock(scope: !2904, file: !2, line: 435, column: 30)
!2904 = distinct !DILexicalBlock(scope: !2905, file: !2, line: 435, column: 2)
!2905 = distinct !DILexicalBlock(scope: !2875, file: !2, line: 435, column: 2)
!2906 = !DILocalVariable(name: "q", scope: !2903, file: !2, line: 437, type: !130)
!2907 = !DILocalVariable(name: "val", scope: !2903, file: !2, line: 438, type: !20)
!2908 = !DILocalVariable(name: "__ret_gu", scope: !2909, file: !2, line: 473, type: !17)
!2909 = distinct !DILexicalBlock(scope: !2910, file: !2, line: 473, column: 8)
!2910 = distinct !DILexicalBlock(scope: !2911, file: !2, line: 473, column: 8)
!2911 = distinct !DILexicalBlock(scope: !2912, file: !2, line: 473, column: 8)
!2912 = distinct !DILexicalBlock(scope: !2913, file: !2, line: 465, column: 12)
!2913 = distinct !DILexicalBlock(scope: !2903, file: !2, line: 465, column: 7)
!2914 = !DILocalVariable(name: "__val_gu", scope: !2909, file: !2, line: 473, type: !18)
!2915 = !DILocalVariable(name: "__tmp", scope: !2916, file: !2, line: 473, type: !212)
!2916 = distinct !DILexicalBlock(scope: !2909, file: !2, line: 473, column: 8)
!2917 = !DILocation(line: 399, column: 59, scope: !2875)
!2918 = !DILocation(line: 399, column: 67, scope: !2875)
!2919 = !DILocation(line: 399, column: 79, scope: !2875)
!2920 = !DILocation(line: 401, column: 2, scope: !2875)
!2921 = !DILocation(line: 401, column: 28, scope: !2875)
!2922 = !DILocation(line: 402, column: 2, scope: !2875)
!2923 = !DILocation(line: 402, column: 7, scope: !2875)
!2924 = !DILocation(line: 403, column: 2, scope: !2875)
!2925 = !DILocation(line: 403, column: 6, scope: !2875)
!2926 = !DILocation(line: 403, column: 11, scope: !2875)
!2927 = !DILocation(line: 404, column: 2, scope: !2875)
!2928 = !DILocation(line: 404, column: 6, scope: !2875)
!2929 = !DILocation(line: 420, column: 1, scope: !2875)
!2930 = !DILocation(line: 421, column: 9, scope: !2893)
!2931 = !DILocation(line: 421, column: 7, scope: !2893)
!2932 = !DILocation(line: 421, column: 14, scope: !2892)
!2933 = !DILocation(line: 421, column: 18, scope: !2892)
!2934 = !DILocation(line: 421, column: 16, scope: !2892)
!2935 = !DILocation(line: 421, column: 2, scope: !2893)
!2936 = !DILocation(line: 422, column: 8, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2891, file: !2, line: 422, column: 7)
!2938 = !DILocation(line: 422, column: 11, scope: !2937)
!2939 = !DILocation(line: 422, column: 14, scope: !2937)
!2940 = !DILocation(line: 422, column: 16, scope: !2937)
!2941 = !DILocation(line: 422, column: 22, scope: !2937)
!2942 = !DILocation(line: 422, column: 44, scope: !2937)
!2943 = !DILocation(line: 422, column: 47, scope: !2937)
!2944 = !{i8 0, i8 2}
!2945 = !DILocation(line: 422, column: 7, scope: !2891)
!2946 = !DILocation(line: 423, column: 4, scope: !2937)
!2947 = !DILocation(line: 425, column: 23, scope: !2889)
!2948 = !DILocation(line: 425, column: 23, scope: !2890)
!2949 = !DILocation(line: 426, column: 11, scope: !2891)
!2950 = !DILocation(line: 426, column: 14, scope: !2891)
!2951 = !DILocation(line: 426, column: 17, scope: !2891)
!2952 = !DILocation(line: 426, column: 19, scope: !2891)
!2953 = !DILocation(line: 426, column: 25, scope: !2891)
!2954 = !DILocation(line: 426, column: 9, scope: !2891)
!2955 = !DILocation(line: 427, column: 10, scope: !2891)
!2956 = !DILocation(line: 427, column: 13, scope: !2891)
!2957 = !DILocation(line: 427, column: 16, scope: !2891)
!2958 = !DILocation(line: 427, column: 18, scope: !2891)
!2959 = !DILocation(line: 425, column: 9, scope: !2891)
!2960 = !DILocation(line: 425, column: 7, scope: !2891)
!2961 = !DILocation(line: 429, column: 7, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2891, file: !2, line: 429, column: 7)
!2963 = !DILocation(line: 429, column: 7, scope: !2891)
!2964 = !DILocation(line: 430, column: 11, scope: !2962)
!2965 = !DILocation(line: 430, column: 4, scope: !2962)
!2966 = !DILocation(line: 431, column: 2, scope: !2891)
!2967 = !DILocation(line: 421, column: 26, scope: !2892)
!2968 = !DILocation(line: 421, column: 2, scope: !2892)
!2969 = distinct !{!2969, !2935, !2970, !2191, !2192}
!2970 = !DILocation(line: 431, column: 2, scope: !2893)
!2971 = !DILocation(line: 433, column: 2, scope: !2875)
!2972 = !DILocation(line: 433, column: 2, scope: !2899)
!2973 = !DILocation(line: 433, column: 2, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2899, file: !2, line: 433, column: 2)
!2975 = !DILocation(line: 433, column: 2, scope: !2898)
!2976 = !DILocation(line: 433, column: 2, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2898, file: !2, line: 433, column: 2)
!2978 = !DILocation(line: 433, column: 2, scope: !2896)
!2979 = !DILocation(line: 433, column: 2, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2896, file: !2, line: 433, column: 2)
!2981 = !DILocation(line: 433, column: 2, scope: !2901)
!2982 = !{i64 2151973187}
!2983 = !DILocation(line: 433, column: 2, scope: !2897)
!2984 = !DILocation(line: 435, column: 9, scope: !2905)
!2985 = !DILocation(line: 435, column: 7, scope: !2905)
!2986 = !DILocation(line: 435, column: 14, scope: !2904)
!2987 = !DILocation(line: 435, column: 18, scope: !2904)
!2988 = !DILocation(line: 435, column: 16, scope: !2904)
!2989 = !DILocation(line: 435, column: 2, scope: !2905)
!2990 = !DILocation(line: 436, column: 3, scope: !2903)
!2991 = !DILocation(line: 436, column: 15, scope: !2903)
!2992 = !DILocation(line: 436, column: 52, scope: !2903)
!2993 = !DILocation(line: 436, column: 55, scope: !2903)
!2994 = !DILocation(line: 436, column: 58, scope: !2903)
!2995 = !DILocation(line: 436, column: 60, scope: !2903)
!2996 = !DILocation(line: 436, column: 23, scope: !2903)
!2997 = !DILocation(line: 437, column: 3, scope: !2903)
!2998 = !DILocation(line: 437, column: 19, scope: !2903)
!2999 = !DILocation(line: 437, column: 24, scope: !2903)
!3000 = !DILocation(line: 437, column: 27, scope: !2903)
!3001 = !DILocation(line: 437, column: 30, scope: !2903)
!3002 = !DILocation(line: 438, column: 3, scope: !2903)
!3003 = !DILocation(line: 438, column: 7, scope: !2903)
!3004 = !DILocation(line: 438, column: 18, scope: !2903)
!3005 = !DILocation(line: 438, column: 21, scope: !2903)
!3006 = !DILocation(line: 438, column: 24, scope: !2903)
!3007 = !DILocation(line: 438, column: 26, scope: !2903)
!3008 = !DILocation(line: 438, column: 13, scope: !2903)
!3009 = !DILocation(line: 440, column: 21, scope: !2903)
!3010 = !DILocation(line: 440, column: 8, scope: !2903)
!3011 = !DILocation(line: 440, column: 6, scope: !2903)
!3012 = !DILocation(line: 441, column: 39, scope: !2903)
!3013 = !DILocation(line: 441, column: 9, scope: !2903)
!3014 = !DILocation(line: 441, column: 7, scope: !2903)
!3015 = !DILocation(line: 443, column: 8, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !2903, file: !2, line: 443, column: 7)
!3017 = !DILocation(line: 443, column: 12, scope: !3016)
!3018 = !DILocation(line: 443, column: 15, scope: !3016)
!3019 = !DILocation(line: 443, column: 23, scope: !3016)
!3020 = !DILocation(line: 443, column: 20, scope: !3016)
!3021 = !DILocation(line: 443, column: 7, scope: !2903)
!3022 = !DILocation(line: 449, column: 16, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !3016, file: !2, line: 443, column: 28)
!3024 = !DILocation(line: 449, column: 19, scope: !3023)
!3025 = !DILocation(line: 449, column: 4, scope: !3023)
!3026 = !DILocation(line: 450, column: 4, scope: !3023)
!3027 = !DILocation(line: 453, column: 18, scope: !2903)
!3028 = !DILocation(line: 453, column: 3, scope: !2903)
!3029 = !DILocation(line: 454, column: 3, scope: !2903)
!3030 = !DILocation(line: 454, column: 3, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !2903, file: !2, line: 454, column: 3)
!3032 = !DILocation(line: 454, column: 3, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !3031, file: !2, line: 454, column: 3)
!3034 = !DILocation(line: 454, column: 3, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3031, file: !2, line: 454, column: 3)
!3036 = !DILocation(line: 454, column: 3, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !3035, file: !2, line: 454, column: 3)
!3038 = !DILocation(line: 454, column: 3, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !3035, file: !2, line: 454, column: 3)
!3040 = !DILocation(line: 461, column: 29, scope: !2903)
!3041 = !DILocation(line: 461, column: 33, scope: !2903)
!3042 = !DILocation(line: 461, column: 12, scope: !2903)
!3043 = !DILocation(line: 461, column: 4, scope: !2903)
!3044 = !DILocation(line: 461, column: 10, scope: !2903)
!3045 = !DILocation(line: 462, column: 8, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !2903, file: !2, line: 462, column: 7)
!3047 = !DILocation(line: 462, column: 7, scope: !3046)
!3048 = !DILocation(line: 462, column: 14, scope: !3046)
!3049 = !DILocation(line: 462, column: 7, scope: !2903)
!3050 = !DILocation(line: 463, column: 4, scope: !3046)
!3051 = !DILocation(line: 465, column: 7, scope: !2913)
!3052 = !DILocation(line: 465, column: 7, scope: !2903)
!3053 = !DILocation(line: 473, column: 8, scope: !2910)
!3054 = !DILocation(line: 473, column: 8, scope: !2909)
!3055 = !{i64 2151976083}
!3056 = !DILocation(line: 473, column: 8, scope: !2916)
!3057 = !DILocation(line: 473, column: 8, scope: !2911)
!3058 = !DILocation(line: 473, column: 8, scope: !2912)
!3059 = !DILocation(line: 474, column: 5, scope: !2911)
!3060 = !DILocation(line: 476, column: 10, scope: !2912)
!3061 = !DILocation(line: 477, column: 4, scope: !2912)
!3062 = !DILocation(line: 480, column: 7, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !2903, file: !2, line: 480, column: 7)
!3064 = !DILocation(line: 480, column: 15, scope: !3063)
!3065 = !DILocation(line: 480, column: 12, scope: !3063)
!3066 = !DILocation(line: 480, column: 7, scope: !2903)
!3067 = !DILocation(line: 481, column: 4, scope: !3063)
!3068 = !DILocation(line: 482, column: 2, scope: !2904)
!3069 = !DILocation(line: 482, column: 2, scope: !2903)
!3070 = !DILocation(line: 435, column: 26, scope: !2904)
!3071 = !DILocation(line: 435, column: 2, scope: !2904)
!3072 = distinct !{!3072, !2989, !3073, !2191, !2192}
!3073 = !DILocation(line: 482, column: 2, scope: !2905)
!3074 = !DILocation(line: 484, column: 2, scope: !2875)
!3075 = !DILocation(line: 485, column: 1, scope: !2875)
!3076 = distinct !DISubprogram(name: "futex_sleep_multiple", scope: !2, file: !2, line: 496, type: !3077, scopeLine: 498, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3079)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{null, !2787, !18, !2652}
!3079 = !{!3080, !3081, !3082}
!3080 = !DILocalVariable(name: "vs", arg: 1, scope: !3076, file: !2, line: 496, type: !2787)
!3081 = !DILocalVariable(name: "count", arg: 2, scope: !3076, file: !2, line: 496, type: !18)
!3082 = !DILocalVariable(name: "to", arg: 3, scope: !3076, file: !2, line: 497, type: !2652)
!3083 = !DILocation(line: 496, column: 55, scope: !3076)
!3084 = !DILocation(line: 496, column: 72, scope: !3076)
!3085 = !DILocation(line: 497, column: 30, scope: !3076)
!3086 = !DILocation(line: 499, column: 6, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3076, file: !2, line: 499, column: 6)
!3088 = !DILocation(line: 499, column: 9, scope: !3087)
!3089 = !DILocation(line: 499, column: 13, scope: !3087)
!3090 = !DILocation(line: 499, column: 17, scope: !3087)
!3091 = !DILocation(line: 499, column: 6, scope: !3076)
!3092 = !DILocation(line: 500, column: 3, scope: !3087)
!3093 = !DILocation(line: 502, column: 2, scope: !3076)
!3094 = !DILocation(line: 502, column: 9, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3096, file: !2, line: 502, column: 2)
!3096 = distinct !DILexicalBlock(scope: !3076, file: !2, line: 502, column: 2)
!3097 = !DILocation(line: 502, column: 2, scope: !3096)
!3098 = !DILocation(line: 503, column: 8, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3100, file: !2, line: 503, column: 8)
!3100 = distinct !DILexicalBlock(scope: !3101, file: !2, line: 503, column: 7)
!3101 = distinct !DILexicalBlock(scope: !3095, file: !2, line: 502, column: 31)
!3102 = !DILocation(line: 503, column: 8, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3099, file: !2, line: 503, column: 8)
!3104 = !DILocation(line: 503, column: 8, scope: !3100)
!3105 = !DILocation(line: 503, column: 7, scope: !3101)
!3106 = !DILocation(line: 504, column: 4, scope: !3100)
!3107 = !DILocation(line: 505, column: 2, scope: !3101)
!3108 = !DILocation(line: 502, column: 21, scope: !3095)
!3109 = !DILocation(line: 502, column: 27, scope: !3095)
!3110 = !DILocation(line: 502, column: 2, scope: !3095)
!3111 = distinct !{!3111, !3097, !3112, !2191, !2192}
!3112 = !DILocation(line: 505, column: 2, scope: !3096)
!3113 = !DILocation(line: 507, column: 2, scope: !3076)
!3114 = !DILocation(line: 508, column: 1, scope: !3076)
!3115 = distinct !DISubprogram(name: "unqueue_multiple", scope: !2, file: !2, line: 371, type: !3116, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3118)
!3116 = !DISubroutineType(types: !3117)
!3117 = !{!17, !2787, !17}
!3118 = !{!3119, !3120, !3121, !3122}
!3119 = !DILocalVariable(name: "v", arg: 1, scope: !3115, file: !2, line: 371, type: !2787)
!3120 = !DILocalVariable(name: "count", arg: 2, scope: !3115, file: !2, line: 371, type: !17)
!3121 = !DILocalVariable(name: "ret", scope: !3115, file: !2, line: 373, type: !17)
!3122 = !DILocalVariable(name: "i", scope: !3115, file: !2, line: 373, type: !17)
!3123 = !DILocation(line: 371, column: 50, scope: !3115)
!3124 = !DILocation(line: 371, column: 57, scope: !3115)
!3125 = !DILocation(line: 373, column: 2, scope: !3115)
!3126 = !DILocation(line: 373, column: 6, scope: !3115)
!3127 = !DILocation(line: 373, column: 16, scope: !3115)
!3128 = !DILocation(line: 375, column: 9, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3115, file: !2, line: 375, column: 2)
!3130 = !DILocation(line: 375, column: 7, scope: !3129)
!3131 = !DILocation(line: 375, column: 14, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3129, file: !2, line: 375, column: 2)
!3133 = !DILocation(line: 375, column: 18, scope: !3132)
!3134 = !DILocation(line: 375, column: 16, scope: !3132)
!3135 = !DILocation(line: 375, column: 2, scope: !3129)
!3136 = !DILocation(line: 376, column: 23, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !3138, file: !2, line: 376, column: 7)
!3138 = distinct !DILexicalBlock(scope: !3132, file: !2, line: 375, column: 30)
!3139 = !DILocation(line: 376, column: 25, scope: !3137)
!3140 = !DILocation(line: 376, column: 28, scope: !3137)
!3141 = !DILocation(line: 376, column: 8, scope: !3137)
!3142 = !DILocation(line: 376, column: 7, scope: !3138)
!3143 = !DILocation(line: 377, column: 10, scope: !3137)
!3144 = !DILocation(line: 377, column: 8, scope: !3137)
!3145 = !DILocation(line: 377, column: 4, scope: !3137)
!3146 = !DILocation(line: 378, column: 2, scope: !3138)
!3147 = !DILocation(line: 375, column: 26, scope: !3132)
!3148 = !DILocation(line: 375, column: 2, scope: !3132)
!3149 = distinct !{!3149, !3135, !3150, !2191, !2192}
!3150 = !DILocation(line: 378, column: 2, scope: !3129)
!3151 = !DILocation(line: 380, column: 9, scope: !3115)
!3152 = !DILocation(line: 381, column: 1, scope: !3115)
!3153 = !DILocation(line: 380, column: 2, scope: !3115)
!3154 = distinct !DISubprogram(name: "signal_pending", scope: !1074, file: !1074, line: 392, type: !3155, scopeLine: 393, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3157)
!3155 = !DISubroutineType(types: !3156)
!3156 = !{!17, !146}
!3157 = !{!3158}
!3158 = !DILocalVariable(name: "p", arg: 1, scope: !3154, file: !1074, line: 392, type: !146)
!3159 = !DILocation(line: 392, column: 54, scope: !3154)
!3160 = !DILocation(line: 399, column: 6, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3154, file: !1074, line: 399, column: 6)
!3162 = !DILocation(line: 399, column: 6, scope: !3154)
!3163 = !DILocation(line: 400, column: 3, scope: !3161)
!3164 = !DILocation(line: 401, column: 25, scope: !3154)
!3165 = !DILocation(line: 401, column: 9, scope: !3154)
!3166 = !DILocation(line: 401, column: 2, scope: !3154)
!3167 = !DILocation(line: 402, column: 1, scope: !3154)
!3168 = distinct !DISubprogram(name: "futex_wait_setup", scope: !2, file: !2, line: 577, type: !3169, scopeLine: 579, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3172)
!3169 = !DISubroutineType(types: !3170)
!3170 = !{!17, !19, !20, !18, !130, !3171}
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!3172 = !{!3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3187, !3188}
!3173 = !DILocalVariable(name: "uaddr", arg: 1, scope: !3168, file: !2, line: 577, type: !19)
!3174 = !DILocalVariable(name: "val", arg: 2, scope: !3168, file: !2, line: 577, type: !20)
!3175 = !DILocalVariable(name: "flags", arg: 3, scope: !3168, file: !2, line: 577, type: !18)
!3176 = !DILocalVariable(name: "q", arg: 4, scope: !3168, file: !2, line: 578, type: !130)
!3177 = !DILocalVariable(name: "hb", arg: 5, scope: !3168, file: !2, line: 578, type: !3171)
!3178 = !DILocalVariable(name: "uval", scope: !3168, file: !2, line: 580, type: !20)
!3179 = !DILocalVariable(name: "ret", scope: !3168, file: !2, line: 581, type: !17)
!3180 = !DILabel(scope: !3168, name: "retry", file: !2, line: 601)
!3181 = !DILabel(scope: !3168, name: "retry_private", file: !2, line: 606)
!3182 = !DILocalVariable(name: "__ret_gu", scope: !3183, file: !2, line: 614, type: !17)
!3183 = distinct !DILexicalBlock(scope: !3184, file: !2, line: 614, column: 9)
!3184 = distinct !DILexicalBlock(scope: !3185, file: !2, line: 614, column: 9)
!3185 = distinct !DILexicalBlock(scope: !3186, file: !2, line: 611, column: 11)
!3186 = distinct !DILexicalBlock(scope: !3168, file: !2, line: 611, column: 6)
!3187 = !DILocalVariable(name: "__val_gu", scope: !3183, file: !2, line: 614, type: !18)
!3188 = !DILocalVariable(name: "__tmp", scope: !3189, file: !2, line: 614, type: !212)
!3189 = distinct !DILexicalBlock(scope: !3183, file: !2, line: 614, column: 9)
!3190 = !DILocation(line: 577, column: 34, scope: !3168)
!3191 = !DILocation(line: 577, column: 45, scope: !3168)
!3192 = !DILocation(line: 577, column: 63, scope: !3168)
!3193 = !DILocation(line: 578, column: 24, scope: !3168)
!3194 = !DILocation(line: 578, column: 54, scope: !3168)
!3195 = !DILocation(line: 580, column: 2, scope: !3168)
!3196 = !DILocation(line: 580, column: 6, scope: !3168)
!3197 = !DILocation(line: 581, column: 2, scope: !3168)
!3198 = !DILocation(line: 581, column: 6, scope: !3168)
!3199 = !DILocation(line: 601, column: 1, scope: !3168)
!3200 = !DILocation(line: 602, column: 22, scope: !3168)
!3201 = !DILocation(line: 602, column: 29, scope: !3168)
!3202 = !DILocation(line: 602, column: 35, scope: !3168)
!3203 = !DILocation(line: 602, column: 52, scope: !3168)
!3204 = !DILocation(line: 602, column: 55, scope: !3168)
!3205 = !DILocation(line: 602, column: 8, scope: !3168)
!3206 = !DILocation(line: 602, column: 6, scope: !3168)
!3207 = !DILocation(line: 603, column: 6, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3168, file: !2, line: 603, column: 6)
!3209 = !DILocation(line: 603, column: 6, scope: !3168)
!3210 = !DILocation(line: 604, column: 10, scope: !3208)
!3211 = !DILocation(line: 604, column: 3, scope: !3208)
!3212 = !DILocation(line: 606, column: 1, scope: !3168)
!3213 = !DILocation(line: 607, column: 21, scope: !3168)
!3214 = !DILocation(line: 607, column: 8, scope: !3168)
!3215 = !DILocation(line: 607, column: 3, scope: !3168)
!3216 = !DILocation(line: 607, column: 6, scope: !3168)
!3217 = !DILocation(line: 609, column: 38, scope: !3168)
!3218 = !DILocation(line: 609, column: 8, scope: !3168)
!3219 = !DILocation(line: 609, column: 6, scope: !3168)
!3220 = !DILocation(line: 611, column: 6, scope: !3186)
!3221 = !DILocation(line: 611, column: 6, scope: !3168)
!3222 = !DILocation(line: 612, column: 19, scope: !3185)
!3223 = !DILocation(line: 612, column: 18, scope: !3185)
!3224 = !DILocation(line: 612, column: 3, scope: !3185)
!3225 = !DILocation(line: 614, column: 9, scope: !3184)
!3226 = !DILocation(line: 614, column: 9, scope: !3183)
!3227 = !{i64 2151983505}
!3228 = !DILocation(line: 614, column: 9, scope: !3189)
!3229 = !DILocation(line: 614, column: 9, scope: !3185)
!3230 = !DILocation(line: 614, column: 7, scope: !3185)
!3231 = !DILocation(line: 615, column: 7, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3185, file: !2, line: 615, column: 7)
!3233 = !DILocation(line: 615, column: 7, scope: !3185)
!3234 = !DILocation(line: 616, column: 11, scope: !3232)
!3235 = !DILocation(line: 616, column: 4, scope: !3232)
!3236 = !DILocation(line: 618, column: 9, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !3185, file: !2, line: 618, column: 7)
!3238 = !DILocation(line: 618, column: 15, scope: !3237)
!3239 = !DILocation(line: 618, column: 7, scope: !3185)
!3240 = !DILocation(line: 619, column: 4, scope: !3237)
!3241 = !DILocation(line: 621, column: 3, scope: !3185)
!3242 = !DILocation(line: 624, column: 6, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3168, file: !2, line: 624, column: 6)
!3244 = !DILocation(line: 624, column: 14, scope: !3243)
!3245 = !DILocation(line: 624, column: 11, scope: !3243)
!3246 = !DILocation(line: 624, column: 6, scope: !3168)
!3247 = !DILocation(line: 625, column: 19, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3243, file: !2, line: 624, column: 19)
!3249 = !DILocation(line: 625, column: 18, scope: !3248)
!3250 = !DILocation(line: 625, column: 3, scope: !3248)
!3251 = !DILocation(line: 626, column: 7, scope: !3248)
!3252 = !DILocation(line: 627, column: 2, scope: !3248)
!3253 = !DILocation(line: 629, column: 9, scope: !3168)
!3254 = !DILocation(line: 629, column: 2, scope: !3168)
!3255 = !DILocation(line: 630, column: 1, scope: !3168)
!3256 = !DISubprogram(name: "futex_q_lock", scope: !45, file: !45, line: 219, type: !3257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{!2089, !130}
!3259 = !DISubprogram(name: "futex_get_value_locked", scope: !45, file: !45, line: 151, type: !3260, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3260 = !DISubroutineType(types: !3261)
!3261 = !{!17, !19, !19}
!3262 = !DISubprogram(name: "futex_q_unlock", scope: !45, file: !45, line: 220, type: !3263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3263 = !DISubroutineType(types: !3264)
!3264 = !{null, !2089}
!3265 = distinct !DISubprogram(name: "might_fault", scope: !2634, file: !2634, line: 202, type: !1242, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24)
!3266 = !DILocation(line: 202, column: 40, scope: !3265)
!3267 = distinct !DISubprogram(name: "kmsan_unpoison_memory", scope: !3268, file: !3268, line: 70, type: !3269, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3271)
!3268 = !DIFile(filename: "./include/linux/kmsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cfeb6fcb47441b7815b086def457771")
!3269 = !DISubroutineType(types: !3270)
!3270 = !{null, !2726, !1253}
!3271 = !{!3272, !3273}
!3272 = !DILocalVariable(name: "address", arg: 1, scope: !3267, file: !3268, line: 70, type: !2726)
!3273 = !DILocalVariable(name: "size", arg: 2, scope: !3267, file: !3268, line: 70, type: !1253)
!3274 = !DILocation(line: 70, column: 54, scope: !3267)
!3275 = !DILocation(line: 70, column: 70, scope: !3267)
!3276 = !DILocation(line: 72, column: 1, scope: !3267)
!3277 = distinct !DISubprogram(name: "futex_wait", scope: !2, file: !2, line: 632, type: !3278, scopeLine: 633, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3281)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{!17, !19, !18, !20, !3280, !20}
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!3281 = !{!3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294}
!3282 = !DILocalVariable(name: "uaddr", arg: 1, scope: !3277, file: !2, line: 632, type: !19)
!3283 = !DILocalVariable(name: "flags", arg: 2, scope: !3277, file: !2, line: 632, type: !18)
!3284 = !DILocalVariable(name: "val", arg: 3, scope: !3277, file: !2, line: 632, type: !20)
!3285 = !DILocalVariable(name: "abs_time", arg: 4, scope: !3277, file: !2, line: 632, type: !3280)
!3286 = !DILocalVariable(name: "bitset", arg: 5, scope: !3277, file: !2, line: 632, type: !20)
!3287 = !DILocalVariable(name: "timeout", scope: !3277, file: !2, line: 634, type: !2653)
!3288 = !DILocalVariable(name: "to", scope: !3277, file: !2, line: 634, type: !2652)
!3289 = !DILocalVariable(name: "restart", scope: !3277, file: !2, line: 635, type: !679)
!3290 = !DILocalVariable(name: "hb", scope: !3277, file: !2, line: 636, type: !2089)
!3291 = !DILocalVariable(name: "q", scope: !3277, file: !2, line: 637, type: !131)
!3292 = !DILocalVariable(name: "ret", scope: !3277, file: !2, line: 638, type: !17)
!3293 = !DILabel(scope: !3277, name: "retry", file: !2, line: 646)
!3294 = !DILabel(scope: !3277, name: "out", file: !2, line: 686)
!3295 = !DILocation(line: 632, column: 28, scope: !3277)
!3296 = !DILocation(line: 632, column: 48, scope: !3277)
!3297 = !DILocation(line: 632, column: 59, scope: !3277)
!3298 = !DILocation(line: 632, column: 73, scope: !3277)
!3299 = !DILocation(line: 632, column: 87, scope: !3277)
!3300 = !DILocation(line: 634, column: 2, scope: !3277)
!3301 = !DILocation(line: 634, column: 25, scope: !3277)
!3302 = !DILocation(line: 634, column: 35, scope: !3277)
!3303 = !DILocation(line: 635, column: 2, scope: !3277)
!3304 = !DILocation(line: 635, column: 24, scope: !3277)
!3305 = !DILocation(line: 636, column: 2, scope: !3277)
!3306 = !DILocation(line: 636, column: 28, scope: !3277)
!3307 = !DILocation(line: 637, column: 2, scope: !3277)
!3308 = !DILocation(line: 637, column: 17, scope: !3277)
!3309 = !DILocation(line: 637, column: 21, scope: !3277)
!3310 = !DILocation(line: 638, column: 2, scope: !3277)
!3311 = !DILocation(line: 638, column: 6, scope: !3277)
!3312 = !DILocation(line: 640, column: 7, scope: !3313)
!3313 = distinct !DILexicalBlock(scope: !3277, file: !2, line: 640, column: 6)
!3314 = !DILocation(line: 640, column: 6, scope: !3277)
!3315 = !DILocation(line: 641, column: 3, scope: !3313)
!3316 = !DILocation(line: 642, column: 13, scope: !3277)
!3317 = !DILocation(line: 642, column: 4, scope: !3277)
!3318 = !DILocation(line: 642, column: 11, scope: !3277)
!3319 = !DILocation(line: 644, column: 25, scope: !3277)
!3320 = !DILocation(line: 644, column: 45, scope: !3277)
!3321 = !DILocation(line: 645, column: 11, scope: !3277)
!3322 = !DILocation(line: 645, column: 20, scope: !3277)
!3323 = !DILocation(line: 644, column: 7, scope: !3277)
!3324 = !DILocation(line: 644, column: 5, scope: !3277)
!3325 = !DILocation(line: 644, column: 2, scope: !3277)
!3326 = !DILocation(line: 646, column: 1, scope: !3277)
!3327 = !DILocation(line: 651, column: 25, scope: !3277)
!3328 = !DILocation(line: 651, column: 32, scope: !3277)
!3329 = !DILocation(line: 651, column: 37, scope: !3277)
!3330 = !DILocation(line: 651, column: 8, scope: !3277)
!3331 = !DILocation(line: 651, column: 6, scope: !3277)
!3332 = !DILocation(line: 652, column: 6, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3277, file: !2, line: 652, column: 6)
!3334 = !DILocation(line: 652, column: 6, scope: !3277)
!3335 = !DILocation(line: 653, column: 3, scope: !3333)
!3336 = !DILocation(line: 656, column: 19, scope: !3277)
!3337 = !DILocation(line: 656, column: 27, scope: !3277)
!3338 = !DILocation(line: 656, column: 2, scope: !3277)
!3339 = !DILocation(line: 659, column: 6, scope: !3277)
!3340 = !DILocation(line: 660, column: 7, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3277, file: !2, line: 660, column: 6)
!3342 = !DILocation(line: 660, column: 6, scope: !3277)
!3343 = !DILocation(line: 661, column: 3, scope: !3341)
!3344 = !DILocation(line: 662, column: 6, scope: !3277)
!3345 = !DILocation(line: 663, column: 6, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3277, file: !2, line: 663, column: 6)
!3347 = !DILocation(line: 663, column: 9, scope: !3346)
!3348 = !DILocation(line: 663, column: 13, scope: !3346)
!3349 = !DILocation(line: 663, column: 17, scope: !3346)
!3350 = !DILocation(line: 663, column: 6, scope: !3277)
!3351 = !DILocation(line: 664, column: 3, scope: !3346)
!3352 = !DILocation(line: 670, column: 22, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3277, file: !2, line: 670, column: 6)
!3354 = !DILocation(line: 670, column: 7, scope: !3353)
!3355 = !DILocation(line: 670, column: 6, scope: !3277)
!3356 = !DILocation(line: 671, column: 3, scope: !3353)
!3357 = !DILocation(line: 673, column: 6, scope: !3277)
!3358 = !DILocation(line: 674, column: 7, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3277, file: !2, line: 674, column: 6)
!3360 = !DILocation(line: 674, column: 6, scope: !3277)
!3361 = !DILocation(line: 675, column: 3, scope: !3359)
!3362 = !DILocation(line: 677, column: 13, scope: !3277)
!3363 = !DILocation(line: 677, column: 22, scope: !3277)
!3364 = !DILocation(line: 677, column: 10, scope: !3277)
!3365 = !DILocation(line: 678, column: 25, scope: !3277)
!3366 = !DILocation(line: 678, column: 2, scope: !3277)
!3367 = !DILocation(line: 678, column: 11, scope: !3277)
!3368 = !DILocation(line: 678, column: 17, scope: !3277)
!3369 = !DILocation(line: 678, column: 23, scope: !3277)
!3370 = !DILocation(line: 679, column: 23, scope: !3277)
!3371 = !DILocation(line: 679, column: 2, scope: !3277)
!3372 = !DILocation(line: 679, column: 11, scope: !3277)
!3373 = !DILocation(line: 679, column: 17, scope: !3277)
!3374 = !DILocation(line: 679, column: 21, scope: !3277)
!3375 = !DILocation(line: 680, column: 25, scope: !3277)
!3376 = !DILocation(line: 680, column: 24, scope: !3277)
!3377 = !DILocation(line: 680, column: 2, scope: !3277)
!3378 = !DILocation(line: 680, column: 11, scope: !3277)
!3379 = !DILocation(line: 680, column: 17, scope: !3277)
!3380 = !DILocation(line: 680, column: 22, scope: !3277)
!3381 = !DILocation(line: 681, column: 26, scope: !3277)
!3382 = !DILocation(line: 681, column: 2, scope: !3277)
!3383 = !DILocation(line: 681, column: 11, scope: !3277)
!3384 = !DILocation(line: 681, column: 17, scope: !3277)
!3385 = !DILocation(line: 681, column: 24, scope: !3277)
!3386 = !DILocation(line: 682, column: 25, scope: !3277)
!3387 = !DILocation(line: 682, column: 31, scope: !3277)
!3388 = !DILocation(line: 682, column: 2, scope: !3277)
!3389 = !DILocation(line: 682, column: 11, scope: !3277)
!3390 = !DILocation(line: 682, column: 17, scope: !3277)
!3391 = !DILocation(line: 682, column: 23, scope: !3277)
!3392 = !DILocation(line: 684, column: 23, scope: !3277)
!3393 = !DILocation(line: 684, column: 8, scope: !3277)
!3394 = !DILocation(line: 684, column: 6, scope: !3277)
!3395 = !DILocation(line: 684, column: 2, scope: !3277)
!3396 = !DILocation(line: 686, column: 1, scope: !3277)
!3397 = !DILocation(line: 687, column: 6, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3277, file: !2, line: 687, column: 6)
!3399 = !DILocation(line: 687, column: 6, scope: !3277)
!3400 = !DILocation(line: 688, column: 19, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3398, file: !2, line: 687, column: 10)
!3402 = !DILocation(line: 688, column: 23, scope: !3401)
!3403 = !DILocation(line: 688, column: 3, scope: !3401)
!3404 = !DILocation(line: 689, column: 29, scope: !3401)
!3405 = !DILocation(line: 689, column: 33, scope: !3401)
!3406 = !DILocation(line: 689, column: 3, scope: !3401)
!3407 = !DILocation(line: 690, column: 2, scope: !3401)
!3408 = !DILocation(line: 691, column: 9, scope: !3277)
!3409 = !DILocation(line: 691, column: 2, scope: !3277)
!3410 = !DILocation(line: 692, column: 1, scope: !3277)
!3411 = !DISubprogram(name: "futex_setup_timer", scope: !45, file: !45, line: 123, type: !3412, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3412 = !DISubroutineType(types: !3413)
!3413 = !{!2652, !3280, !2652, !17, !212}
!3414 = !DISubprogram(name: "futex_unqueue", scope: !45, file: !45, line: 156, type: !3415, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3415 = !DISubroutineType(types: !3416)
!3416 = !{!17, !130}
!3417 = distinct !DISubprogram(name: "set_restart_fn", scope: !3418, file: !3418, line: 68, type: !3419, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3421)
!3418 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!3419 = !DISubroutineType(types: !3420)
!3420 = !{!678, !679, !675}
!3421 = !{!3422, !3423}
!3422 = !DILocalVariable(name: "restart", arg: 1, scope: !3417, file: !3418, line: 68, type: !679)
!3423 = !DILocalVariable(name: "fn", arg: 2, scope: !3417, file: !3418, line: 69, type: !675)
!3424 = !DILocation(line: 68, column: 57, scope: !3417)
!3425 = !DILocation(line: 69, column: 13, scope: !3417)
!3426 = !DILocation(line: 71, column: 16, scope: !3417)
!3427 = !DILocation(line: 71, column: 2, scope: !3417)
!3428 = !DILocation(line: 71, column: 11, scope: !3417)
!3429 = !DILocation(line: 71, column: 14, scope: !3417)
!3430 = !DILocation(line: 72, column: 2, scope: !3417)
!3431 = !DILocation(line: 72, column: 2, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3417, file: !3418, line: 72, column: 2)
!3433 = !DILocation(line: 73, column: 2, scope: !3417)
!3434 = distinct !DISubprogram(name: "futex_wait_restart", scope: !2, file: !2, line: 694, type: !676, scopeLine: 695, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3435)
!3435 = !{!3436, !3437, !3438, !3439}
!3436 = !DILocalVariable(name: "restart", arg: 1, scope: !3434, file: !2, line: 694, type: !679)
!3437 = !DILocalVariable(name: "uaddr", scope: !3434, file: !2, line: 696, type: !19)
!3438 = !DILocalVariable(name: "t", scope: !3434, file: !2, line: 697, type: !288)
!3439 = !DILocalVariable(name: "tp", scope: !3434, file: !2, line: 697, type: !3280)
!3440 = !DILocation(line: 694, column: 54, scope: !3434)
!3441 = !DILocation(line: 696, column: 2, scope: !3434)
!3442 = !DILocation(line: 696, column: 14, scope: !3434)
!3443 = !DILocation(line: 696, column: 22, scope: !3434)
!3444 = !DILocation(line: 696, column: 31, scope: !3434)
!3445 = !DILocation(line: 696, column: 37, scope: !3434)
!3446 = !DILocation(line: 697, column: 2, scope: !3434)
!3447 = !DILocation(line: 697, column: 10, scope: !3434)
!3448 = !DILocation(line: 697, column: 14, scope: !3434)
!3449 = !DILocation(line: 699, column: 6, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !3434, file: !2, line: 699, column: 6)
!3451 = !DILocation(line: 699, column: 15, scope: !3450)
!3452 = !DILocation(line: 699, column: 21, scope: !3450)
!3453 = !DILocation(line: 699, column: 27, scope: !3450)
!3454 = !DILocation(line: 699, column: 6, scope: !3434)
!3455 = !DILocation(line: 700, column: 7, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3450, file: !2, line: 699, column: 48)
!3457 = !DILocation(line: 700, column: 16, scope: !3456)
!3458 = !DILocation(line: 700, column: 22, scope: !3456)
!3459 = !DILocation(line: 700, column: 5, scope: !3456)
!3460 = !DILocation(line: 701, column: 6, scope: !3456)
!3461 = !DILocation(line: 702, column: 2, scope: !3456)
!3462 = !DILocation(line: 703, column: 2, scope: !3434)
!3463 = !DILocation(line: 703, column: 11, scope: !3434)
!3464 = !DILocation(line: 703, column: 14, scope: !3434)
!3465 = !DILocation(line: 705, column: 26, scope: !3434)
!3466 = !DILocation(line: 705, column: 33, scope: !3434)
!3467 = !DILocation(line: 705, column: 42, scope: !3434)
!3468 = !DILocation(line: 705, column: 48, scope: !3434)
!3469 = !DILocation(line: 706, column: 5, scope: !3434)
!3470 = !DILocation(line: 706, column: 14, scope: !3434)
!3471 = !DILocation(line: 706, column: 20, scope: !3434)
!3472 = !DILocation(line: 706, column: 25, scope: !3434)
!3473 = !DILocation(line: 706, column: 29, scope: !3434)
!3474 = !DILocation(line: 706, column: 38, scope: !3434)
!3475 = !DILocation(line: 706, column: 44, scope: !3434)
!3476 = !DILocation(line: 705, column: 15, scope: !3434)
!3477 = !DILocation(line: 705, column: 9, scope: !3434)
!3478 = !DILocation(line: 707, column: 1, scope: !3434)
!3479 = !DILocation(line: 705, column: 2, scope: !3434)
!3480 = !DISubprogram(name: "hrtimer_cancel", scope: !27, file: !27, line: 423, type: !3481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3481 = !DISubroutineType(types: !3482)
!3482 = !{!17, !295}
!3483 = distinct !DISubprogram(name: "destroy_hrtimer_on_stack", scope: !27, file: !27, line: 402, type: !3484, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3486)
!3484 = !DISubroutineType(types: !3485)
!3485 = !{null, !295}
!3486 = !{!3487}
!3487 = !DILocalVariable(name: "timer", arg: 1, scope: !3483, file: !27, line: 402, type: !295)
!3488 = !DILocation(line: 402, column: 61, scope: !3483)
!3489 = !DILocation(line: 402, column: 70, scope: !3483)
!3490 = distinct !DISubprogram(name: "refcount_inc", scope: !67, file: !67, line: 265, type: !3491, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3494)
!3491 = !DISubroutineType(types: !3492)
!3492 = !{null, !3493}
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!3494 = !{!3495}
!3495 = !DILocalVariable(name: "r", arg: 1, scope: !3490, file: !67, line: 265, type: !3493)
!3496 = !DILocation(line: 265, column: 45, scope: !3490)
!3497 = !DILocation(line: 267, column: 17, scope: !3490)
!3498 = !DILocation(line: 267, column: 2, scope: !3490)
!3499 = !DILocation(line: 268, column: 1, scope: !3490)
!3500 = distinct !DISubprogram(name: "__refcount_inc", scope: !67, file: !67, line: 248, type: !3501, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3503)
!3501 = !DISubroutineType(types: !3502)
!3502 = !{null, !3493, !800}
!3503 = !{!3504, !3505}
!3504 = !DILocalVariable(name: "r", arg: 1, scope: !3500, file: !67, line: 248, type: !3493)
!3505 = !DILocalVariable(name: "oldp", arg: 2, scope: !3500, file: !67, line: 248, type: !800)
!3506 = !DILocation(line: 248, column: 47, scope: !3500)
!3507 = !DILocation(line: 248, column: 55, scope: !3500)
!3508 = !DILocation(line: 250, column: 20, scope: !3500)
!3509 = !DILocation(line: 250, column: 23, scope: !3500)
!3510 = !DILocation(line: 250, column: 2, scope: !3500)
!3511 = !DILocation(line: 251, column: 1, scope: !3500)
!3512 = distinct !DISubprogram(name: "__refcount_add", scope: !67, file: !67, line: 191, type: !3513, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3515)
!3513 = !DISubroutineType(types: !3514)
!3514 = !{null, !17, !3493, !800}
!3515 = !{!3516, !3517, !3518, !3519}
!3516 = !DILocalVariable(name: "i", arg: 1, scope: !3512, file: !67, line: 191, type: !17)
!3517 = !DILocalVariable(name: "r", arg: 2, scope: !3512, file: !67, line: 191, type: !3493)
!3518 = !DILocalVariable(name: "oldp", arg: 3, scope: !3512, file: !67, line: 191, type: !800)
!3519 = !DILocalVariable(name: "old", scope: !3512, file: !67, line: 193, type: !17)
!3520 = !DILocation(line: 191, column: 39, scope: !3512)
!3521 = !DILocation(line: 191, column: 54, scope: !3512)
!3522 = !DILocation(line: 191, column: 62, scope: !3512)
!3523 = !DILocation(line: 193, column: 2, scope: !3512)
!3524 = !DILocation(line: 193, column: 6, scope: !3512)
!3525 = !DILocation(line: 193, column: 37, scope: !3512)
!3526 = !DILocation(line: 193, column: 41, scope: !3512)
!3527 = !DILocation(line: 193, column: 44, scope: !3512)
!3528 = !DILocation(line: 193, column: 12, scope: !3512)
!3529 = !DILocation(line: 195, column: 6, scope: !3530)
!3530 = distinct !DILexicalBlock(scope: !3512, file: !67, line: 195, column: 6)
!3531 = !DILocation(line: 195, column: 6, scope: !3512)
!3532 = !DILocation(line: 196, column: 11, scope: !3530)
!3533 = !DILocation(line: 196, column: 4, scope: !3530)
!3534 = !DILocation(line: 196, column: 9, scope: !3530)
!3535 = !DILocation(line: 196, column: 3, scope: !3530)
!3536 = !DILocation(line: 198, column: 6, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3512, file: !67, line: 198, column: 6)
!3538 = !DILocation(line: 198, column: 6, scope: !3512)
!3539 = !DILocation(line: 199, column: 26, scope: !3537)
!3540 = !DILocation(line: 199, column: 3, scope: !3537)
!3541 = !DILocation(line: 200, column: 11, scope: !3542)
!3542 = distinct !DILexicalBlock(scope: !3537, file: !67, line: 200, column: 11)
!3543 = !DILocation(line: 200, column: 11, scope: !3537)
!3544 = !DILocation(line: 201, column: 26, scope: !3542)
!3545 = !DILocation(line: 201, column: 3, scope: !3542)
!3546 = !DILocation(line: 202, column: 1, scope: !3512)
!3547 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !3548, file: !3548, line: 250, type: !3549, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3552)
!3548 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!3549 = !DISubroutineType(types: !3550)
!3550 = !{!17, !17, !3551}
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!3552 = !{!3553, !3554}
!3553 = !DILocalVariable(name: "i", arg: 1, scope: !3547, file: !3548, line: 250, type: !17)
!3554 = !DILocalVariable(name: "v", arg: 2, scope: !3547, file: !3548, line: 250, type: !3551)
!3555 = !DILocation(line: 250, column: 30, scope: !3547)
!3556 = !DILocation(line: 250, column: 43, scope: !3547)
!3557 = !DILocation(line: 252, column: 31, scope: !3547)
!3558 = !DILocation(line: 252, column: 2, scope: !3547)
!3559 = !DILocation(line: 253, column: 38, scope: !3547)
!3560 = !DILocation(line: 253, column: 41, scope: !3547)
!3561 = !DILocation(line: 253, column: 9, scope: !3547)
!3562 = !DILocation(line: 253, column: 2, scope: !3547)
!3563 = !DISubprogram(name: "refcount_warn_saturate", scope: !67, file: !67, line: 127, type: !3564, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3564 = !DISubroutineType(types: !3565)
!3565 = !{null, !3493, !66}
!3566 = distinct !DISubprogram(name: "raw_atomic_fetch_add_relaxed", scope: !3567, file: !3567, line: 731, type: !3549, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3568)
!3567 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!3568 = !{!3569, !3570}
!3569 = !DILocalVariable(name: "i", arg: 1, scope: !3566, file: !3567, line: 731, type: !17)
!3570 = !DILocalVariable(name: "v", arg: 2, scope: !3566, file: !3567, line: 731, type: !3551)
!3571 = !DILocation(line: 731, column: 34, scope: !3566)
!3572 = !DILocation(line: 731, column: 47, scope: !3566)
!3573 = !DILocation(line: 736, column: 31, scope: !3566)
!3574 = !DILocation(line: 736, column: 34, scope: !3566)
!3575 = !DILocation(line: 736, column: 9, scope: !3566)
!3576 = !DILocation(line: 736, column: 2, scope: !3566)
!3577 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !3578, file: !3578, line: 95, type: !3549, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3579)
!3578 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!3579 = !{!3580, !3581, !3582}
!3580 = !DILocalVariable(name: "i", arg: 1, scope: !3577, file: !3578, line: 95, type: !17)
!3581 = !DILocalVariable(name: "v", arg: 2, scope: !3577, file: !3578, line: 95, type: !3551)
!3582 = !DILocalVariable(name: "__ret", scope: !3583, file: !3578, line: 97, type: !17)
!3583 = distinct !DILexicalBlock(scope: !3577, file: !3578, line: 97, column: 9)
!3584 = !DILocation(line: 95, column: 54, scope: !3577)
!3585 = !DILocation(line: 95, column: 67, scope: !3577)
!3586 = !DILocation(line: 97, column: 9, scope: !3583)
!3587 = !{i64 2148432923, i64 2148432962, i64 2148432983, i64 2148433020, i64 2148433043, i64 2148433052}
!3588 = !DILocation(line: 97, column: 9, scope: !3577)
!3589 = !DILocation(line: 97, column: 2, scope: !3577)
!3590 = distinct !DISubprogram(name: "atomic_read", scope: !3548, file: !3548, line: 30, type: !3591, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3595)
!3591 = !DISubroutineType(types: !3592)
!3592 = !{!17, !3593}
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!3595 = !{!3596}
!3596 = !DILocalVariable(name: "v", arg: 1, scope: !3590, file: !3548, line: 30, type: !3593)
!3597 = !DILocation(line: 30, column: 29, scope: !3590)
!3598 = !DILocation(line: 32, column: 25, scope: !3590)
!3599 = !DILocation(line: 32, column: 2, scope: !3590)
!3600 = !DILocation(line: 33, column: 25, scope: !3590)
!3601 = !DILocation(line: 33, column: 9, scope: !3590)
!3602 = !DILocation(line: 33, column: 2, scope: !3590)
!3603 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !2737, file: !2737, line: 66, type: !2738, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3604)
!3604 = !{!3605, !3606}
!3605 = !DILocalVariable(name: "v", arg: 1, scope: !3603, file: !2737, line: 66, type: !2740)
!3606 = !DILocalVariable(name: "size", arg: 2, scope: !3603, file: !2737, line: 66, type: !1253)
!3607 = !DILocation(line: 66, column: 73, scope: !3603)
!3608 = !DILocation(line: 66, column: 83, scope: !3603)
!3609 = !DILocation(line: 68, column: 19, scope: !3603)
!3610 = !DILocation(line: 68, column: 22, scope: !3603)
!3611 = !DILocation(line: 68, column: 2, scope: !3603)
!3612 = !DILocation(line: 69, column: 2, scope: !3603)
!3613 = !DILocation(line: 70, column: 1, scope: !3603)
!3614 = distinct !DISubprogram(name: "raw_atomic_read", scope: !3567, file: !3567, line: 442, type: !3591, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3615)
!3615 = !{!3616}
!3616 = !DILocalVariable(name: "v", arg: 1, scope: !3614, file: !3567, line: 442, type: !3593)
!3617 = !DILocation(line: 442, column: 33, scope: !3614)
!3618 = !DILocation(line: 444, column: 26, scope: !3614)
!3619 = !DILocation(line: 444, column: 9, scope: !3614)
!3620 = !DILocation(line: 444, column: 2, scope: !3614)
!3621 = distinct !DISubprogram(name: "kasan_check_read", scope: !3622, file: !3622, line: 40, type: !3623, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3625)
!3622 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!3623 = !DISubroutineType(types: !3624)
!3624 = !{!942, !2740, !18}
!3625 = !{!3626, !3627}
!3626 = !DILocalVariable(name: "p", arg: 1, scope: !3621, file: !3622, line: 40, type: !2740)
!3627 = !DILocalVariable(name: "size", arg: 2, scope: !3621, file: !3622, line: 40, type: !18)
!3628 = !DILocation(line: 40, column: 58, scope: !3621)
!3629 = !DILocation(line: 40, column: 74, scope: !3621)
!3630 = !DILocation(line: 42, column: 2, scope: !3621)
!3631 = distinct !DISubprogram(name: "kcsan_check_access", scope: !3632, file: !3632, line: 229, type: !3633, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3635)
!3632 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!3633 = !DISubroutineType(types: !3634)
!3634 = !{null, !2740, !1253, !17}
!3635 = !{!3636, !3637, !3638}
!3636 = !DILocalVariable(name: "ptr", arg: 1, scope: !3631, file: !3632, line: 229, type: !2740)
!3637 = !DILocalVariable(name: "size", arg: 2, scope: !3631, file: !3632, line: 229, type: !1253)
!3638 = !DILocalVariable(name: "type", arg: 3, scope: !3631, file: !3632, line: 230, type: !17)
!3639 = !DILocation(line: 229, column: 60, scope: !3631)
!3640 = !DILocation(line: 229, column: 72, scope: !3631)
!3641 = !DILocation(line: 230, column: 15, scope: !3631)
!3642 = !DILocation(line: 230, column: 23, scope: !3631)
!3643 = distinct !DISubprogram(name: "arch_atomic_read", scope: !3578, file: !3578, line: 17, type: !3591, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3644)
!3644 = !{!3645}
!3645 = !DILocalVariable(name: "v", arg: 1, scope: !3643, file: !3578, line: 17, type: !3593)
!3646 = !DILocation(line: 17, column: 61, scope: !3643)
!3647 = !DILocation(line: 23, column: 9, scope: !3643)
!3648 = !DILocation(line: 23, column: 2, scope: !3643)
!3649 = !DISubprogram(name: "_raw_spin_lock", scope: !3650, file: !3650, line: 22, type: !3651, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3650 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!3651 = !DISubroutineType(types: !3652)
!3652 = !{null, !3653}
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!3654 = !DISubprogram(name: "_raw_spin_unlock", scope: !3650, file: !3650, line: 39, type: !3651, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3655 = distinct !DISubprogram(name: "spinlock_check", scope: !2223, file: !2223, line: 324, type: !3656, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3658)
!3656 = !DISubroutineType(types: !3657)
!3657 = !{!3653, !82}
!3658 = !{!3659}
!3659 = !DILocalVariable(name: "lock", arg: 1, scope: !3655, file: !2223, line: 324, type: !82)
!3660 = !DILocation(line: 324, column: 67, scope: !3655)
!3661 = !DILocation(line: 326, column: 10, scope: !3655)
!3662 = !DILocation(line: 326, column: 16, scope: !3655)
!3663 = !DILocation(line: 326, column: 2, scope: !3655)
!3664 = distinct !DISubprogram(name: "sign_extend32", scope: !3665, file: !3665, line: 187, type: !3666, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3668)
!3665 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!3666 = !DISubroutineType(types: !3667)
!3667 = !{!572, !22, !17}
!3668 = !{!3669, !3670, !3671}
!3669 = !DILocalVariable(name: "value", arg: 1, scope: !3664, file: !3665, line: 187, type: !22)
!3670 = !DILocalVariable(name: "index", arg: 2, scope: !3664, file: !3665, line: 187, type: !17)
!3671 = !DILocalVariable(name: "shift", scope: !3664, file: !3665, line: 189, type: !113)
!3672 = !DILocation(line: 187, column: 50, scope: !3664)
!3673 = !DILocation(line: 187, column: 61, scope: !3664)
!3674 = !DILocation(line: 189, column: 2, scope: !3664)
!3675 = !DILocation(line: 189, column: 7, scope: !3664)
!3676 = !DILocation(line: 189, column: 20, scope: !3664)
!3677 = !DILocation(line: 189, column: 18, scope: !3664)
!3678 = !DILocation(line: 189, column: 15, scope: !3664)
!3679 = !DILocation(line: 190, column: 17, scope: !3664)
!3680 = !DILocation(line: 190, column: 26, scope: !3664)
!3681 = !DILocation(line: 190, column: 23, scope: !3664)
!3682 = !DILocation(line: 190, column: 36, scope: !3664)
!3683 = !DILocation(line: 190, column: 33, scope: !3664)
!3684 = !DILocation(line: 191, column: 1, scope: !3664)
!3685 = !DILocation(line: 190, column: 2, scope: !3664)
!3686 = !DISubprogram(name: "___ratelimit", scope: !1010, file: !1010, line: 44, type: !3687, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3687 = !DISubroutineType(types: !3688)
!3688 = !{!17, !3689, !945}
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!3690 = !DISubprogram(name: "_printk", scope: !3691, file: !3691, line: 153, type: !3692, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3691 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!17, !945, null}
!3694 = !DISubprogram(name: "__get_task_comm", scope: !126, file: !126, line: 2014, type: !3695, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3695 = !DISubroutineType(types: !3696)
!3696 = !{!955, !955, !1253, !146}
!3697 = distinct !DISubprogram(name: "pagefault_disable", scope: !3698, file: !3698, line: 225, type: !1242, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24)
!3698 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!3699 = !DILocation(line: 227, column: 2, scope: !3697)
!3700 = !DILocation(line: 232, column: 2, scope: !3697)
!3701 = !{i64 2151667206}
!3702 = !DILocation(line: 233, column: 1, scope: !3697)
!3703 = distinct !DISubprogram(name: "arch_futex_atomic_op_inuser", scope: !3704, file: !3704, line: 48, type: !3705, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3707)
!3704 = !DIFile(filename: "./arch/x86/include/asm/futex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0ef9b616653437476f90734b4672ecb2")
!3705 = !DISubroutineType(types: !3706)
!3706 = !{!17, !17, !17, !800, !19}
!3707 = !{!3708, !3709, !3710, !3711, !3712, !3715, !3716, !3718, !3719, !3721, !3722, !3723, !3725, !3726, !3727, !3729, !3730, !3731}
!3708 = !DILocalVariable(name: "op", arg: 1, scope: !3703, file: !3704, line: 48, type: !17)
!3709 = !DILocalVariable(name: "oparg", arg: 2, scope: !3703, file: !3704, line: 48, type: !17)
!3710 = !DILocalVariable(name: "oval", arg: 3, scope: !3703, file: !3704, line: 48, type: !800)
!3711 = !DILocalVariable(name: "uaddr", arg: 4, scope: !3703, file: !3704, line: 49, type: !19)
!3712 = !DILocalVariable(name: "oldval", scope: !3713, file: !3704, line: 56, type: !17)
!3713 = distinct !DILexicalBlock(scope: !3714, file: !3704, line: 56, column: 3)
!3714 = distinct !DILexicalBlock(scope: !3703, file: !3704, line: 54, column: 14)
!3715 = !DILocalVariable(name: "ret", scope: !3713, file: !3704, line: 56, type: !17)
!3716 = !DILocalVariable(name: "oldval", scope: !3717, file: !3704, line: 59, type: !17)
!3717 = distinct !DILexicalBlock(scope: !3714, file: !3704, line: 59, column: 3)
!3718 = !DILocalVariable(name: "ret", scope: !3717, file: !3704, line: 59, type: !17)
!3719 = !DILocalVariable(name: "oldval", scope: !3720, file: !3704, line: 63, type: !17)
!3720 = distinct !DILexicalBlock(scope: !3714, file: !3704, line: 63, column: 3)
!3721 = !DILocalVariable(name: "ret", scope: !3720, file: !3704, line: 63, type: !17)
!3722 = !DILocalVariable(name: "tem", scope: !3720, file: !3704, line: 63, type: !17)
!3723 = !DILocalVariable(name: "oldval", scope: !3724, file: !3704, line: 66, type: !17)
!3724 = distinct !DILexicalBlock(scope: !3714, file: !3704, line: 66, column: 3)
!3725 = !DILocalVariable(name: "ret", scope: !3724, file: !3704, line: 66, type: !17)
!3726 = !DILocalVariable(name: "tem", scope: !3724, file: !3704, line: 66, type: !17)
!3727 = !DILocalVariable(name: "oldval", scope: !3728, file: !3704, line: 69, type: !17)
!3728 = distinct !DILexicalBlock(scope: !3714, file: !3704, line: 69, column: 3)
!3729 = !DILocalVariable(name: "ret", scope: !3728, file: !3704, line: 69, type: !17)
!3730 = !DILocalVariable(name: "tem", scope: !3728, file: !3704, line: 69, type: !17)
!3731 = !DILabel(scope: !3703, name: "Efault", file: !3704, line: 77)
!3732 = !DILocation(line: 48, column: 60, scope: !3703)
!3733 = !DILocation(line: 48, column: 68, scope: !3703)
!3734 = !DILocation(line: 48, column: 80, scope: !3703)
!3735 = !DILocation(line: 49, column: 15, scope: !3703)
!3736 = !DILocation(line: 51, column: 7, scope: !3737)
!3737 = distinct !DILexicalBlock(scope: !3703, file: !3704, line: 51, column: 6)
!3738 = !DILocation(line: 51, column: 6, scope: !3703)
!3739 = !DILocation(line: 52, column: 3, scope: !3737)
!3740 = !DILocation(line: 54, column: 10, scope: !3703)
!3741 = !DILocation(line: 54, column: 2, scope: !3703)
!3742 = !DILocation(line: 56, column: 3, scope: !3714)
!3743 = !DILocation(line: 56, column: 3, scope: !3713)
!3744 = !{i64 2151920901, i64 2151920931, i64 2151921204, i64 2151921250, i64 2151921275, i64 2151921310, i64 2151921628, i64 2151921681, i64 2151921712, i64 2151921743, i64 2151921821, i64 2151921855, i64 2151921893, i64 2151921936, i64 2151921959, i64 2151921997, i64 2151922019, i64 2151922050, i64 2151922135, i64 2151922169, i64 2151922207, i64 2151922250, i64 2151922273, i64 2151922311, i64 2151922333, i64 2151922367, i64 2151922429, i64 2151922452, i64 2151921376, i64 2151922560, i64 2151921487}
!3745 = !DILocation(line: 56, column: 3, scope: !3746)
!3746 = distinct !DILexicalBlock(scope: !3713, file: !3704, line: 56, column: 3)
!3747 = !DILocation(line: 57, column: 3, scope: !3714)
!3748 = !DILocation(line: 59, column: 3, scope: !3714)
!3749 = !DILocation(line: 59, column: 3, scope: !3717)
!3750 = !{i64 2151922648, i64 2151923106, i64 2151923127, i64 2151923164, i64 2151923187, i64 2151923196, i64 2151922678, i64 2151923246, i64 2151923292, i64 2151923317, i64 2151923352, i64 2151923670, i64 2151923723, i64 2151923754, i64 2151923785, i64 2151923863, i64 2151923897, i64 2151923935, i64 2151923978, i64 2151924001, i64 2151924039, i64 2151924061, i64 2151924092, i64 2151924177, i64 2151924211, i64 2151924249, i64 2151924292, i64 2151924315, i64 2151924353, i64 2151924375, i64 2151924409, i64 2151924471, i64 2151924494, i64 2151923418, i64 2151924602, i64 2151923529}
!3751 = !DILocation(line: 59, column: 3, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3717, file: !3704, line: 59, column: 3)
!3753 = !DILocation(line: 61, column: 3, scope: !3714)
!3754 = !DILocation(line: 63, column: 3, scope: !3714)
!3755 = !DILocation(line: 63, column: 3, scope: !3720)
!3756 = !{i64 2151924694, i64 2151924726, i64 2151924758, i64 2151924785, i64 2151925291, i64 2151925312, i64 2151925349, i64 2151925372, i64 2151925242, i64 2151924833, i64 2151924859, i64 2151925379, i64 2151925425, i64 2151925450, i64 2151925485, i64 2151925803, i64 2151925856, i64 2151925887, i64 2151925918, i64 2151925996, i64 2151926030, i64 2151926068, i64 2151926111, i64 2151926134, i64 2151926172, i64 2151926194, i64 2151926225, i64 2151926310, i64 2151926344, i64 2151926382, i64 2151926425, i64 2151926448, i64 2151926486, i64 2151926508, i64 2151926542, i64 2151926604, i64 2151926627, i64 2151925551, i64 2151926735, i64 2151925662, i64 2151926764, i64 2151926810, i64 2151926835, i64 2151926870, i64 2151927188, i64 2151927241, i64 2151927272, i64 2151927303, i64 2151927381, i64 2151927415, i64 2151927453, i64 2151927496, i64 2151927519, i64 2151927557, i64 2151927579, i64 2151927610, i64 2151927695, i64 2151927729, i64 2151927767, i64 2151927810, i64 2151927833, i64 2151927871, i64 2151927893, i64 2151927927, i64 2151927989, i64 2151928012, i64 2151926936, i64 2151928120, i64 2151927047}
!3757 = !DILocation(line: 63, column: 3, scope: !3758)
!3758 = distinct !DILexicalBlock(scope: !3720, file: !3704, line: 63, column: 3)
!3759 = !DILocation(line: 64, column: 3, scope: !3714)
!3760 = !DILocation(line: 66, column: 3, scope: !3714)
!3761 = !DILocation(line: 66, column: 3, scope: !3724)
!3762 = !{i64 2151928212, i64 2151928244, i64 2151928276, i64 2151928303, i64 2151928811, i64 2151928832, i64 2151928869, i64 2151928892, i64 2151928762, i64 2151928351, i64 2151928377, i64 2151928899, i64 2151928945, i64 2151928970, i64 2151929005, i64 2151929323, i64 2151929376, i64 2151929407, i64 2151929438, i64 2151929516, i64 2151929550, i64 2151929588, i64 2151929631, i64 2151929654, i64 2151929692, i64 2151929714, i64 2151929745, i64 2151929830, i64 2151929864, i64 2151929902, i64 2151929945, i64 2151929968, i64 2151930006, i64 2151930028, i64 2151930062, i64 2151930124, i64 2151930147, i64 2151929071, i64 2151930255, i64 2151929182, i64 2151930284, i64 2151930330, i64 2151930355, i64 2151930390, i64 2151930708, i64 2151930761, i64 2151930792, i64 2151930823, i64 2151930901, i64 2151930935, i64 2151930973, i64 2151931016, i64 2151931039, i64 2151931077, i64 2151931099, i64 2151931130, i64 2151931215, i64 2151931249, i64 2151931287, i64 2151931330, i64 2151931353, i64 2151931391, i64 2151931413, i64 2151931447, i64 2151931509, i64 2151931532, i64 2151930456, i64 2151931640, i64 2151930567}
!3763 = !DILocation(line: 66, column: 3, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3724, file: !3704, line: 66, column: 3)
!3765 = !DILocation(line: 67, column: 3, scope: !3714)
!3766 = !DILocation(line: 69, column: 3, scope: !3714)
!3767 = !DILocation(line: 69, column: 3, scope: !3728)
!3768 = !{i64 2151931732, i64 2151931764, i64 2151931796, i64 2151931823, i64 2151932330, i64 2151932351, i64 2151932388, i64 2151932411, i64 2151932281, i64 2151931871, i64 2151931897, i64 2151932418, i64 2151932464, i64 2151932489, i64 2151932524, i64 2151932842, i64 2151932895, i64 2151932926, i64 2151932957, i64 2151933035, i64 2151933069, i64 2151933107, i64 2151933150, i64 2151933173, i64 2151933211, i64 2151933233, i64 2151933264, i64 2151933349, i64 2151933383, i64 2151933421, i64 2151933464, i64 2151933487, i64 2151933525, i64 2151933547, i64 2151933581, i64 2151933643, i64 2151933666, i64 2151932590, i64 2151933774, i64 2151932701, i64 2151933803, i64 2151933849, i64 2151933874, i64 2151933909, i64 2151934227, i64 2151934280, i64 2151934311, i64 2151934342, i64 2151934420, i64 2151934454, i64 2151934492, i64 2151934535, i64 2151934558, i64 2151934596, i64 2151934618, i64 2151934649, i64 2151934734, i64 2151934768, i64 2151934806, i64 2151934849, i64 2151934872, i64 2151934910, i64 2151934932, i64 2151934966, i64 2151935028, i64 2151935051, i64 2151933975, i64 2151935159, i64 2151934086}
!3769 = !DILocation(line: 69, column: 3, scope: !3770)
!3770 = distinct !DILexicalBlock(scope: !3728, file: !3704, line: 69, column: 3)
!3771 = !DILocation(line: 70, column: 3, scope: !3714)
!3772 = !DILocation(line: 72, column: 3, scope: !3714)
!3773 = !DILocation(line: 73, column: 3, scope: !3714)
!3774 = !DILocation(line: 75, column: 2, scope: !3703)
!3775 = !DILocation(line: 76, column: 2, scope: !3703)
!3776 = !DILocation(line: 77, column: 1, scope: !3703)
!3777 = !DILocation(line: 78, column: 2, scope: !3703)
!3778 = !DILocation(line: 79, column: 2, scope: !3703)
!3779 = !DILocation(line: 80, column: 1, scope: !3703)
!3780 = distinct !DISubprogram(name: "pagefault_enable", scope: !3698, file: !3698, line: 235, type: !1242, scopeLine: 236, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24)
!3781 = !DILocation(line: 241, column: 2, scope: !3780)
!3782 = !{i64 2151667409}
!3783 = !DILocation(line: 242, column: 2, scope: !3780)
!3784 = !DILocation(line: 243, column: 1, scope: !3780)
!3785 = distinct !DISubprogram(name: "pagefault_disabled_inc", scope: !3698, file: !3698, line: 208, type: !1242, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24)
!3786 = !DILocation(line: 210, column: 2, scope: !3785)
!3787 = !DILocation(line: 210, column: 11, scope: !3785)
!3788 = !DILocation(line: 210, column: 29, scope: !3785)
!3789 = !DILocation(line: 211, column: 1, scope: !3785)
!3790 = distinct !DISubprogram(name: "user_access_begin", scope: !3791, file: !3791, line: 519, type: !3792, scopeLine: 520, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3794)
!3791 = !DIFile(filename: "./arch/x86/include/asm/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b103a53a1960df693128e0148737f8c5")
!3792 = !DISubroutineType(types: !3793)
!3793 = !{!942, !2726, !1253}
!3794 = !{!3795, !3796}
!3795 = !DILocalVariable(name: "ptr", arg: 1, scope: !3790, file: !3791, line: 519, type: !2726)
!3796 = !DILocalVariable(name: "len", arg: 2, scope: !3790, file: !3791, line: 519, type: !1253)
!3797 = !DILocation(line: 519, column: 79, scope: !3790)
!3798 = !DILocation(line: 519, column: 91, scope: !3790)
!3799 = !DILocation(line: 521, column: 6, scope: !3800)
!3800 = distinct !DILexicalBlock(scope: !3790, file: !3791, line: 521, column: 6)
!3801 = !DILocation(line: 521, column: 6, scope: !3790)
!3802 = !DILocation(line: 522, column: 3, scope: !3800)
!3803 = !DILocation(line: 523, column: 2, scope: !3804)
!3804 = distinct !DILexicalBlock(scope: !3790, file: !3791, line: 523, column: 2)
!3805 = !{i64 2151663862, i64 2151663890, i64 2151663896, i64 2151663912, i64 2151663928, i64 2151663955, i64 2151664269, i64 2151663626, i64 2151664275, i64 2151664323, i64 2151664387, i64 2151664451, i64 2151664508, i64 2151663707, i64 2151663732, i64 2151664715, i64 2151664837, i64 2151664776, i64 2151664851, i64 2151663824}
!3806 = !DILocation(line: 524, column: 2, scope: !3790)
!3807 = !DILocation(line: 525, column: 1, scope: !3790)
!3808 = distinct !DISubprogram(name: "clac", scope: !3809, file: !3809, line: 30, type: !1242, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24)
!3809 = !DIFile(filename: "./arch/x86/include/asm/smap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f3f8be6e1b47df7f19894949839b589")
!3810 = !DILocation(line: 33, column: 2, scope: !3808)
!3811 = !{i64 2151095088, i64 2151095116, i64 2151095122, i64 2151095138, i64 2151095154, i64 2151095181, i64 2151095495, i64 2151094838, i64 2151095501, i64 2151095549, i64 2151095613, i64 2151095677, i64 2151095734, i64 2151094919, i64 2151094944, i64 2151095941, i64 2151096077, i64 2151096002, i64 2151096091, i64 2151095036}
!3812 = !DILocation(line: 34, column: 1, scope: !3808)
!3813 = distinct !DISubprogram(name: "__access_ok", scope: !3814, file: !3814, line: 85, type: !3815, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3817)
!3814 = !DIFile(filename: "./arch/x86/include/asm/uaccess_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c63bf78a3e0eae48ab190f2bbecab5d")
!3815 = !DISubroutineType(types: !3816)
!3816 = !{!942, !2726, !154}
!3817 = !{!3818, !3819, !3820}
!3818 = !DILocalVariable(name: "ptr", arg: 1, scope: !3813, file: !3814, line: 85, type: !2726)
!3819 = !DILocalVariable(name: "size", arg: 2, scope: !3813, file: !3814, line: 85, type: !154)
!3820 = !DILocalVariable(name: "sum", scope: !3821, file: !3814, line: 90, type: !154)
!3821 = distinct !DILexicalBlock(scope: !3822, file: !3814, line: 89, column: 9)
!3822 = distinct !DILexicalBlock(scope: !3813, file: !3814, line: 87, column: 6)
!3823 = !DILocation(line: 85, column: 51, scope: !3813)
!3824 = !DILocation(line: 85, column: 70, scope: !3813)
!3825 = !DILocation(line: 87, column: 27, scope: !3822)
!3826 = !DILocation(line: 87, column: 32, scope: !3822)
!3827 = !DILocation(line: 87, column: 6, scope: !3822)
!3828 = !DILocation(line: 87, column: 46, scope: !3822)
!3829 = !DILocation(line: 87, column: 49, scope: !3822)
!3830 = !DILocation(line: 87, column: 54, scope: !3822)
!3831 = !DILocation(line: 87, column: 6, scope: !3813)
!3832 = !DILocation(line: 88, column: 10, scope: !3833)
!3833 = distinct !DILexicalBlock(scope: !3822, file: !3814, line: 87, column: 68)
!3834 = !DILocation(line: 88, column: 3, scope: !3833)
!3835 = !DILocation(line: 90, column: 3, scope: !3821)
!3836 = !DILocation(line: 90, column: 17, scope: !3821)
!3837 = !DILocation(line: 90, column: 23, scope: !3821)
!3838 = !DILocation(line: 90, column: 45, scope: !3821)
!3839 = !DILocation(line: 90, column: 30, scope: !3821)
!3840 = !DILocation(line: 90, column: 28, scope: !3821)
!3841 = !DILocation(line: 91, column: 10, scope: !3821)
!3842 = !DILocation(line: 91, column: 34, scope: !3821)
!3843 = !DILocation(line: 91, column: 37, scope: !3821)
!3844 = !DILocation(line: 91, column: 59, scope: !3821)
!3845 = !DILocation(line: 91, column: 44, scope: !3821)
!3846 = !DILocation(line: 91, column: 41, scope: !3821)
!3847 = !DILocation(line: 0, scope: !3821)
!3848 = !DILocation(line: 91, column: 3, scope: !3821)
!3849 = !DILocation(line: 92, column: 2, scope: !3822)
!3850 = !DILocation(line: 93, column: 1, scope: !3813)
!3851 = distinct !DISubprogram(name: "stac", scope: !3809, file: !3809, line: 36, type: !1242, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24)
!3852 = !DILocation(line: 39, column: 2, scope: !3851)
!3853 = !{i64 2151096755, i64 2151096783, i64 2151096789, i64 2151096805, i64 2151096821, i64 2151096848, i64 2151097162, i64 2151096505, i64 2151097168, i64 2151097216, i64 2151097280, i64 2151097344, i64 2151097401, i64 2151096586, i64 2151096611, i64 2151097608, i64 2151097744, i64 2151097669, i64 2151097758, i64 2151096703}
!3854 = !DILocation(line: 40, column: 1, scope: !3851)
!3855 = distinct !DISubprogram(name: "pagefault_disabled_dec", scope: !3698, file: !3698, line: 213, type: !1242, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24)
!3856 = !DILocation(line: 215, column: 2, scope: !3855)
!3857 = !DILocation(line: 215, column: 11, scope: !3855)
!3858 = !DILocation(line: 215, column: 29, scope: !3855)
!3859 = !DILocation(line: 216, column: 1, scope: !3855)
!3860 = distinct !DISubprogram(name: "kasan_check_write", scope: !3622, file: !3622, line: 44, type: !3623, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3861)
!3861 = !{!3862, !3863}
!3862 = !DILocalVariable(name: "p", arg: 1, scope: !3860, file: !3622, line: 44, type: !2740)
!3863 = !DILocalVariable(name: "size", arg: 2, scope: !3860, file: !3622, line: 44, type: !18)
!3864 = !DILocation(line: 44, column: 59, scope: !3860)
!3865 = !DILocation(line: 44, column: 75, scope: !3860)
!3866 = !DILocation(line: 46, column: 2, scope: !3860)
!3867 = !DISubprogram(name: "__futex_queue", scope: !45, file: !45, line: 155, type: !2754, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3868 = distinct !DISubprogram(name: "list_empty", scope: !3869, file: !3869, line: 371, type: !3870, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3874)
!3869 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!3870 = !DISubroutineType(types: !3871)
!3871 = !{!17, !3872}
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!3874 = !{!3875}
!3875 = !DILocalVariable(name: "head", arg: 1, scope: !3868, file: !3869, line: 371, type: !3872)
!3876 = !DILocation(line: 371, column: 54, scope: !3868)
!3877 = !DILocation(line: 373, column: 9, scope: !3878)
!3878 = distinct !DILexicalBlock(scope: !3868, file: !3869, line: 373, column: 9)
!3879 = !DILocation(line: 373, column: 9, scope: !3880)
!3880 = distinct !DILexicalBlock(scope: !3878, file: !3869, line: 373, column: 9)
!3881 = !DILocation(line: 373, column: 34, scope: !3868)
!3882 = !DILocation(line: 373, column: 31, scope: !3868)
!3883 = !DILocation(line: 373, column: 2, scope: !3868)
!3884 = distinct !DISubprogram(name: "test_tsk_thread_flag", scope: !126, file: !126, line: 2066, type: !3885, scopeLine: 2067, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3887)
!3885 = !DISubroutineType(types: !3886)
!3886 = !{!17, !146, !17}
!3887 = !{!3888, !3889}
!3888 = !DILocalVariable(name: "tsk", arg: 1, scope: !3884, file: !126, line: 2066, type: !146)
!3889 = !DILocalVariable(name: "flag", arg: 2, scope: !3884, file: !126, line: 2066, type: !17)
!3890 = !DILocation(line: 2066, column: 60, scope: !3884)
!3891 = !DILocation(line: 2066, column: 69, scope: !3884)
!3892 = !DILocation(line: 2068, column: 29, scope: !3884)
!3893 = !DILocation(line: 2068, column: 52, scope: !3884)
!3894 = !DILocation(line: 2068, column: 9, scope: !3884)
!3895 = !DILocation(line: 2068, column: 2, scope: !3884)
!3896 = distinct !DISubprogram(name: "task_sigpending", scope: !1074, file: !1074, line: 387, type: !3155, scopeLine: 388, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3897)
!3897 = !{!3898}
!3898 = !DILocalVariable(name: "p", arg: 1, scope: !3896, file: !1074, line: 387, type: !146)
!3899 = !DILocation(line: 387, column: 55, scope: !3896)
!3900 = !DILocation(line: 389, column: 9, scope: !3896)
!3901 = !DILocation(line: 389, column: 2, scope: !3896)
!3902 = distinct !DISubprogram(name: "test_ti_thread_flag", scope: !3418, file: !3418, line: 116, type: !3903, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3905)
!3903 = !DISubroutineType(types: !3904)
!3904 = !{!17, !1948, !17}
!3905 = !{!3906, !3907}
!3906 = !DILocalVariable(name: "ti", arg: 1, scope: !3902, file: !3418, line: 116, type: !1948)
!3907 = !DILocalVariable(name: "flag", arg: 2, scope: !3902, file: !3418, line: 116, type: !17)
!3908 = !DILocation(line: 116, column: 59, scope: !3902)
!3909 = !DILocation(line: 116, column: 67, scope: !3902)
!3910 = !DILocation(line: 118, column: 9, scope: !3902)
!3911 = !DILocation(line: 118, column: 2, scope: !3902)
!3912 = distinct !DISubprogram(name: "const_test_bit", scope: !3913, file: !3913, line: 166, type: !3914, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3919)
!3913 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!3914 = !DISubroutineType(types: !3915)
!3915 = !{!942, !154, !3916}
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3918)
!3918 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !154)
!3919 = !{!3920, !3921, !3922, !3923, !3924}
!3920 = !DILocalVariable(name: "nr", arg: 1, scope: !3912, file: !3913, line: 166, type: !154)
!3921 = !DILocalVariable(name: "addr", arg: 2, scope: !3912, file: !3913, line: 166, type: !3916)
!3922 = !DILocalVariable(name: "p", scope: !3912, file: !3913, line: 168, type: !1946)
!3923 = !DILocalVariable(name: "mask", scope: !3912, file: !3913, line: 169, type: !154)
!3924 = !DILocalVariable(name: "val", scope: !3912, file: !3913, line: 170, type: !154)
!3925 = !DILocation(line: 166, column: 30, scope: !3912)
!3926 = !DILocation(line: 166, column: 64, scope: !3912)
!3927 = !DILocation(line: 168, column: 2, scope: !3912)
!3928 = !DILocation(line: 168, column: 23, scope: !3912)
!3929 = !DILocation(line: 168, column: 50, scope: !3912)
!3930 = !DILocation(line: 168, column: 57, scope: !3912)
!3931 = !DILocation(line: 168, column: 55, scope: !3912)
!3932 = !DILocation(line: 169, column: 2, scope: !3912)
!3933 = !DILocation(line: 169, column: 16, scope: !3912)
!3934 = !DILocation(line: 169, column: 23, scope: !3912)
!3935 = !DILocation(line: 170, column: 2, scope: !3912)
!3936 = !DILocation(line: 170, column: 16, scope: !3912)
!3937 = !DILocation(line: 170, column: 23, scope: !3912)
!3938 = !DILocation(line: 170, column: 22, scope: !3912)
!3939 = !DILocation(line: 172, column: 12, scope: !3912)
!3940 = !DILocation(line: 172, column: 18, scope: !3912)
!3941 = !DILocation(line: 172, column: 16, scope: !3912)
!3942 = !DILocation(line: 172, column: 10, scope: !3912)
!3943 = !DILocation(line: 172, column: 9, scope: !3912)
!3944 = !DILocation(line: 173, column: 1, scope: !3912)
!3945 = !DILocation(line: 172, column: 2, scope: !3912)
!3946 = distinct !DISubprogram(name: "_test_bit", scope: !3947, file: !3947, line: 139, type: !3914, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3948)
!3947 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!3948 = !{!3949, !3950}
!3949 = !DILocalVariable(name: "nr", arg: 1, scope: !3946, file: !3947, line: 139, type: !154)
!3950 = !DILocalVariable(name: "addr", arg: 2, scope: !3946, file: !3947, line: 139, type: !3916)
!3951 = !DILocation(line: 139, column: 25, scope: !3946)
!3952 = !DILocation(line: 139, column: 59, scope: !3946)
!3953 = !DILocation(line: 141, column: 25, scope: !3946)
!3954 = !DILocation(line: 141, column: 32, scope: !3946)
!3955 = !DILocation(line: 141, column: 30, scope: !3946)
!3956 = !DILocation(line: 141, column: 2, scope: !3946)
!3957 = !DILocation(line: 142, column: 23, scope: !3946)
!3958 = !DILocation(line: 142, column: 27, scope: !3946)
!3959 = !DILocation(line: 142, column: 9, scope: !3946)
!3960 = !DILocation(line: 142, column: 2, scope: !3946)
!3961 = distinct !DISubprogram(name: "arch_test_bit", scope: !3962, file: !3962, line: 237, type: !3914, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3963)
!3962 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!3963 = !{!3964, !3965}
!3964 = !DILocalVariable(name: "nr", arg: 1, scope: !3961, file: !3962, line: 237, type: !154)
!3965 = !DILocalVariable(name: "addr", arg: 2, scope: !3961, file: !3962, line: 237, type: !3916)
!3966 = !DILocation(line: 237, column: 29, scope: !3961)
!3967 = !DILocation(line: 237, column: 63, scope: !3961)
!3968 = !DILocation(line: 239, column: 30, scope: !3961)
!3969 = !DILocation(line: 239, column: 9, scope: !3961)
!3970 = !DILocation(line: 239, column: 54, scope: !3961)
!3971 = !DILocation(line: 239, column: 58, scope: !3961)
!3972 = !DILocation(line: 239, column: 36, scope: !3961)
!3973 = !DILocation(line: 240, column: 26, scope: !3961)
!3974 = !DILocation(line: 240, column: 30, scope: !3961)
!3975 = !DILocation(line: 240, column: 8, scope: !3961)
!3976 = !DILocation(line: 239, column: 2, scope: !3961)
!3977 = distinct !DISubprogram(name: "constant_test_bit", scope: !3962, file: !3962, line: 204, type: !3978, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3980)
!3978 = !DISubroutineType(types: !3979)
!3979 = !{!942, !678, !3916}
!3980 = !{!3981, !3982}
!3981 = !DILocalVariable(name: "nr", arg: 1, scope: !3977, file: !3962, line: 204, type: !678)
!3982 = !DILocalVariable(name: "addr", arg: 2, scope: !3977, file: !3962, line: 204, type: !3916)
!3983 = !DILocation(line: 204, column: 52, scope: !3977)
!3984 = !DILocation(line: 204, column: 86, scope: !3977)
!3985 = !DILocation(line: 206, column: 19, scope: !3977)
!3986 = !DILocation(line: 206, column: 22, scope: !3977)
!3987 = !DILocation(line: 206, column: 15, scope: !3977)
!3988 = !DILocation(line: 207, column: 4, scope: !3977)
!3989 = !DILocation(line: 207, column: 9, scope: !3977)
!3990 = !DILocation(line: 207, column: 12, scope: !3977)
!3991 = !DILocation(line: 206, column: 44, scope: !3977)
!3992 = !DILocation(line: 207, column: 37, scope: !3977)
!3993 = !DILocation(line: 206, column: 2, scope: !3977)
!3994 = distinct !DISubprogram(name: "variable_test_bit", scope: !3962, file: !3962, line: 224, type: !3978, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !3995)
!3995 = !{!3996, !3997, !3998}
!3996 = !DILocalVariable(name: "nr", arg: 1, scope: !3994, file: !3962, line: 224, type: !678)
!3997 = !DILocalVariable(name: "addr", arg: 2, scope: !3994, file: !3962, line: 224, type: !3916)
!3998 = !DILocalVariable(name: "oldbit", scope: !3994, file: !3962, line: 226, type: !942)
!3999 = !DILocation(line: 224, column: 52, scope: !3994)
!4000 = !DILocation(line: 224, column: 86, scope: !3994)
!4001 = !DILocation(line: 226, column: 2, scope: !3994)
!4002 = !DILocation(line: 226, column: 7, scope: !3994)
!4003 = !DILocation(line: 231, column: 33, scope: !3994)
!4004 = !DILocation(line: 231, column: 46, scope: !3994)
!4005 = !DILocation(line: 228, column: 2, scope: !3994)
!4006 = !{i64 2147923227, i64 2147923301}
!4007 = !DILocation(line: 233, column: 9, scope: !3994)
!4008 = !DILocation(line: 234, column: 1, scope: !3994)
!4009 = !DILocation(line: 233, column: 2, scope: !3994)
