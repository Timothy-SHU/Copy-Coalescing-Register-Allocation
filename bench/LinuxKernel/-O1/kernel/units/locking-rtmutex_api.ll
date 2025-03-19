; ModuleID = 'kernel/locking/rtmutex_api.c'
source_filename = "kernel/locking/rtmutex_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rt_mutex_base_init: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad rt_mutex_base_init ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rt_mutex_lock: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad rt_mutex_lock ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rt_mutex_lock_interruptible: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad rt_mutex_lock_interruptible ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rt_mutex_lock_killable: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad rt_mutex_lock_killable ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rt_mutex_trylock: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad rt_mutex_trylock ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rt_mutex_unlock: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad rt_mutex_unlock ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___rt_mutex_init: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad __rt_mutex_init ; .previous"

%struct.lock_class_key = type {}
%struct.static_call_key = type { ptr, %union.anon.13 }
%union.anon.13 = type { i64 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.14 }
%struct.atomic_t = type { i32 }
%union.anon.14 = type { i64 }
%struct.pcpu_hot = type { %union.anon.15 }
%union.anon.15 = type { %struct.anon.16, [16 x i8] }
%struct.anon.16 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.cpumask = type { [1 x i64] }
%struct.lockdep_map = type {}
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
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
%struct.wake_q_node = type { ptr }
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
%struct.rt_wake_q_head = type { %struct.wake_q_head, ptr }
%struct.wake_q_head = type { ptr, ptr }
%struct.rt_mutex_waiter = type { %struct.rt_waiter_node, %struct.rt_waiter_node, ptr, ptr, i32, ptr }
%struct.rt_waiter_node = type { %struct.rb_node, i32, i64 }
%struct.hrtimer_sleeper = type { %struct.hrtimer, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }

@max_lock_depth = hidden global i32 1024, align 4, !dbg !0
@__UNIQUE_ID___addressable_rt_mutex_base_init264 = internal global ptr @rt_mutex_base_init, section ".discard.addressable", align 8, !dbg !1936
@__UNIQUE_ID___addressable_rt_mutex_lock265 = internal global ptr @rt_mutex_lock, section ".discard.addressable", align 8, !dbg !1938
@__UNIQUE_ID___addressable_rt_mutex_lock_interruptible266 = internal global ptr @rt_mutex_lock_interruptible, section ".discard.addressable", align 8, !dbg !1940
@__UNIQUE_ID___addressable_rt_mutex_lock_killable267 = internal global ptr @rt_mutex_lock_killable, section ".discard.addressable", align 8, !dbg !1942
@__UNIQUE_ID___addressable_rt_mutex_trylock268 = internal global ptr @rt_mutex_trylock, section ".discard.addressable", align 8, !dbg !1944
@__UNIQUE_ID___addressable_rt_mutex_unlock269 = internal global ptr @rt_mutex_unlock, section ".discard.addressable", align 8, !dbg !1946
@__UNIQUE_ID___addressable___rt_mutex_init270 = internal global ptr @__rt_mutex_init, section ".discard.addressable", align 8, !dbg !1948
@rt_mutex_init_proxy_locked.pi_futex_key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !1950
@might_resched.__UNIQUE_ID___addressable___SCK__might_resched29 = internal global ptr @__SCK__might_resched, section ".discard.addressable", align 8, !dbg !1960
@__SCK__might_resched = external dso_local global %struct.static_call_key, align 8
@__tracepoint_contention_begin = external dso_local global %struct.tracepoint, align 8
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str = private unnamed_addr constant [28 x i8] c"include/trace/events/lock.h\00", align 1, !dbg !1964
@trace_contention_begin.__UNIQUE_ID___addressable___SCK__tp_func_contention_begin241 = internal global ptr @__SCK__tp_func_contention_begin, section ".discard.addressable", align 8, !dbg !1970
@__SCK__tp_func_contention_begin = external dso_local global %struct.static_call_key, align 8
@trace_contention_begin.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace242 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !1999
@__SCK__preempt_schedule_notrace = external dso_local global %struct.static_call_key, align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"rtmutex deadlock detected\0A\00", align 1, !dbg !2001
@.str.2 = private unnamed_addr constant [25 x i8] c"kernel/locking/rtmutex.c\00", align 1, !dbg !2007
@__tracepoint_contention_end = external dso_local global %struct.tracepoint, align 8
@trace_contention_end.__UNIQUE_ID___addressable___SCK__tp_func_contention_end249 = internal global ptr @__SCK__tp_func_contention_end, section ".discard.addressable", align 8, !dbg !2012
@__SCK__tp_func_contention_end = external dso_local global %struct.static_call_key, align 8
@trace_contention_end.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace250 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !2041
@.str.3 = private unnamed_addr constant [32 x i8] c"kernel/locking/rtmutex_common.h\00", align 1, !dbg !2043
@rt_mutex_adjust_prio_chain.prev_max = internal global i32 0, align 4, !dbg !2046
@.str.4 = private unnamed_addr constant [47 x i8] c"\014Maximum lock depth %d reached task: %s (%d)\0A\00", align 1, !dbg !2070
@put_task_struct.put_task_map = internal global %struct.lockdep_map undef, align 1, !dbg !2075
@rt_mutex_wake_up_q.__UNIQUE_ID___addressable___SCK__preempt_schedule261 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !2084
@__SCK__preempt_schedule = external dso_local global %struct.static_call_key, align 8
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID___addressable_rt_mutex_base_init264, ptr @__UNIQUE_ID___addressable_rt_mutex_lock265, ptr @__UNIQUE_ID___addressable_rt_mutex_lock_interruptible266, ptr @__UNIQUE_ID___addressable_rt_mutex_lock_killable267, ptr @__UNIQUE_ID___addressable_rt_mutex_trylock268, ptr @__UNIQUE_ID___addressable_rt_mutex_unlock269, ptr @__UNIQUE_ID___addressable___rt_mutex_init270, ptr @might_resched.__UNIQUE_ID___addressable___SCK__might_resched29, ptr @trace_contention_begin.__UNIQUE_ID___addressable___SCK__tp_func_contention_begin241, ptr @trace_contention_begin.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace242, ptr @trace_contention_end.__UNIQUE_ID___addressable___SCK__tp_func_contention_end249, ptr @trace_contention_end.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace250, ptr @rt_mutex_wake_up_q.__UNIQUE_ID___addressable___SCK__preempt_schedule261], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rt_mutex_base_init(ptr noundef %rtb) #0 align 16 !dbg !2112 {
entry:
  %rtb.addr = alloca ptr, align 8
  store ptr %rtb, ptr %rtb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rtb.addr, metadata !2116, metadata !DIExpression()), !dbg !2117
  %0 = load ptr, ptr %rtb.addr, align 8, !dbg !2118
  call void @__rt_mutex_base_init(ptr noundef %0) #14, !dbg !2119
  ret void, !dbg !2120
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__rt_mutex_base_init(ptr noundef %lock) #2 align 16 !dbg !2121 {
entry:
  %lock.addr = alloca ptr, align 8
  %.compoundliteral = alloca %struct.raw_spinlock, align 4
  %.compoundliteral1 = alloca %struct.rb_root_cached, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2123, metadata !DIExpression()), !dbg !2124
  br label %do.body, !dbg !2125

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2126
  %wait_lock = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 0, !dbg !2126
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !2126
  %1 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !2126
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !2126
  store i32 0, ptr %counter, align 4, !dbg !2126
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %wait_lock, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !2126
  br label %do.end, !dbg !2126

do.end:                                           ; preds = %do.body
  %2 = load ptr, ptr %lock.addr, align 8, !dbg !2128
  %waiters = getelementptr inbounds %struct.rt_mutex_base, ptr %2, i32 0, i32 1, !dbg !2129
  %rb_root = getelementptr inbounds %struct.rb_root_cached, ptr %.compoundliteral1, i32 0, i32 0, !dbg !2130
  %rb_node = getelementptr inbounds %struct.rb_root, ptr %rb_root, i32 0, i32 0, !dbg !2130
  store ptr null, ptr %rb_node, align 8, !dbg !2130
  %rb_leftmost = getelementptr inbounds %struct.rb_root_cached, ptr %.compoundliteral1, i32 0, i32 1, !dbg !2130
  store ptr null, ptr %rb_leftmost, align 8, !dbg !2130
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %waiters, ptr align 8 %.compoundliteral1, i64 16, i1 false), !dbg !2130
  %3 = load ptr, ptr %lock.addr, align 8, !dbg !2131
  %owner = getelementptr inbounds %struct.rt_mutex_base, ptr %3, i32 0, i32 2, !dbg !2132
  store ptr null, ptr %owner, align 8, !dbg !2133
  ret void, !dbg !2134
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rt_mutex_lock(ptr noundef %lock) #0 section ".sched.text" align 16 !dbg !2135 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2139, metadata !DIExpression()), !dbg !2140
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2141
  %call = call i32 @__rt_mutex_lock_common(ptr noundef %0, i32 noundef 2, ptr noundef null, i32 noundef 0) #14, !dbg !2142
  ret void, !dbg !2143
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__rt_mutex_lock_common(ptr noundef %lock, i32 noundef %state, ptr noundef %nest_lock, i32 noundef %subclass) #3 align 16 !dbg !2144 {
entry:
  %lock.addr = alloca ptr, align 8
  %state.addr = alloca i32, align 4
  %nest_lock.addr = alloca ptr, align 8
  %subclass.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2149, metadata !DIExpression()), !dbg !2154
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !2150, metadata !DIExpression()), !dbg !2155
  store ptr %nest_lock, ptr %nest_lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nest_lock.addr, metadata !2151, metadata !DIExpression()), !dbg !2156
  store i32 %subclass, ptr %subclass.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %subclass.addr, metadata !2152, metadata !DIExpression()), !dbg !2157
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !2158
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2153, metadata !DIExpression()), !dbg !2159
  br label %do.body, !dbg !2160

do.body:                                          ; preds = %entry
  call void @might_resched() #14, !dbg !2161
  br label %do.cond, !dbg !2161

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2161

do.end:                                           ; preds = %do.cond
  br label %do.body1, !dbg !2163

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !2164

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !2164

do.end3:                                          ; preds = %do.cond2
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2166
  %rtmutex = getelementptr inbounds %struct.rt_mutex, ptr %0, i32 0, i32 0, !dbg !2167
  %1 = load i32, ptr %state.addr, align 4, !dbg !2168
  %call = call i32 @__rt_mutex_lock(ptr noundef %rtmutex, i32 noundef %1) #14, !dbg !2169
  store i32 %call, ptr %ret, align 4, !dbg !2170
  %2 = load i32, ptr %ret, align 4, !dbg !2171
  %tobool = icmp ne i32 %2, 0, !dbg !2171
  br i1 %tobool, label %if.then, label %if.end, !dbg !2173

if.then:                                          ; preds = %do.end3
  br label %do.body4, !dbg !2174

do.body4:                                         ; preds = %if.then
  br label %do.cond5, !dbg !2175

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !2175

do.end6:                                          ; preds = %do.cond5
  br label %if.end, !dbg !2175

if.end:                                           ; preds = %do.end6, %do.end3
  %3 = load i32, ptr %ret, align 4, !dbg !2177
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !2178
  ret i32 %3, !dbg !2179
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @rt_mutex_lock_interruptible(ptr noundef %lock) #0 section ".sched.text" align 16 !dbg !2180 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2184, metadata !DIExpression()), !dbg !2185
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2186
  %call = call i32 @__rt_mutex_lock_common(ptr noundef %0, i32 noundef 1, ptr noundef null, i32 noundef 0) #14, !dbg !2187
  ret i32 %call, !dbg !2188
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @rt_mutex_lock_killable(ptr noundef %lock) #0 section ".sched.text" align 16 !dbg !2189 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2191, metadata !DIExpression()), !dbg !2192
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2193
  %call = call i32 @__rt_mutex_lock_common(ptr noundef %0, i32 noundef 258, ptr noundef null, i32 noundef 0) #14, !dbg !2194
  ret i32 %call, !dbg !2195
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @rt_mutex_trylock(ptr noundef %lock) #0 section ".sched.text" align 16 !dbg !2196 {
entry:
  %lock.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2198, metadata !DIExpression()), !dbg !2200
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !2201
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2199, metadata !DIExpression()), !dbg !2202
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2203
  %rtmutex = getelementptr inbounds %struct.rt_mutex, ptr %0, i32 0, i32 0, !dbg !2204
  %call = call i32 @__rt_mutex_trylock(ptr noundef %rtmutex) #14, !dbg !2205
  store i32 %call, ptr %ret, align 4, !dbg !2206
  %1 = load i32, ptr %ret, align 4, !dbg !2207
  %tobool = icmp ne i32 %1, 0, !dbg !2207
  br i1 %tobool, label %if.then, label %if.end, !dbg !2209

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2210

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !2211

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2211

do.end:                                           ; preds = %do.cond
  br label %if.end, !dbg !2211

if.end:                                           ; preds = %do.end, %entry
  %2 = load i32, ptr %ret, align 4, !dbg !2213
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !2214
  ret i32 %2, !dbg !2215
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__rt_mutex_trylock(ptr noundef %lock) #3 align 16 !dbg !2216 {
entry:
  %retval = alloca i32, align 4
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2220, metadata !DIExpression()), !dbg !2221
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2222
  %call = call ptr @get_current() #14, !dbg !2222
  %call1 = call zeroext i1 @rt_mutex_cmpxchg_acquire(ptr noundef %0, ptr noundef null, ptr noundef %call) #14, !dbg !2222
  %lnot = xor i1 %call1, true, !dbg !2222
  %lnot2 = xor i1 %lnot, true, !dbg !2222
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !2222
  %conv = sext i32 %lnot.ext to i64, !dbg !2222
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2222
  %tobool = icmp ne i64 %expval, 0, !dbg !2222
  br i1 %tobool, label %if.then, label %if.end, !dbg !2224

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !2225
  br label %return, !dbg !2225

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !2226
  %call3 = call i32 @rt_mutex_slowtrylock(ptr noundef %1) #14, !dbg !2227
  store i32 %call3, ptr %retval, align 4, !dbg !2228
  br label %return, !dbg !2228

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !2229
  ret i32 %2, !dbg !2229
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rt_mutex_unlock(ptr noundef %lock) #0 section ".sched.text" align 16 !dbg !2230 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2232, metadata !DIExpression()), !dbg !2233
  br label %do.body, !dbg !2234

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2235

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2237
  %rtmutex = getelementptr inbounds %struct.rt_mutex, ptr %0, i32 0, i32 0, !dbg !2238
  call void @__rt_mutex_unlock(ptr noundef %rtmutex) #14, !dbg !2239
  ret void, !dbg !2240
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__rt_mutex_unlock(ptr noundef %lock) #3 align 16 !dbg !2241 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2243, metadata !DIExpression()), !dbg !2244
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2245
  %call = call ptr @get_current() #14, !dbg !2245
  %call1 = call zeroext i1 @rt_mutex_cmpxchg_release(ptr noundef %0, ptr noundef %call, ptr noundef null) #14, !dbg !2245
  %lnot = xor i1 %call1, true, !dbg !2245
  %lnot2 = xor i1 %lnot, true, !dbg !2245
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !2245
  %conv = sext i32 %lnot.ext to i64, !dbg !2245
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2245
  %tobool = icmp ne i64 %expval, 0, !dbg !2245
  br i1 %tobool, label %if.then, label %if.end, !dbg !2247

if.then:                                          ; preds = %entry
  br label %return, !dbg !2248

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !2249
  call void @rt_mutex_slowunlock(ptr noundef %1) #14, !dbg !2250
  br label %return, !dbg !2251

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !2251
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @rt_mutex_futex_trylock(ptr noundef %lock) #0 section ".sched.text" align 16 !dbg !2252 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2254, metadata !DIExpression()), !dbg !2255
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2256
  %call = call i32 @rt_mutex_slowtrylock(ptr noundef %0) #14, !dbg !2257
  ret i32 %call, !dbg !2258
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rt_mutex_slowtrylock(ptr noundef %lock) #0 section ".sched.text" align 16 !dbg !2259 {
entry:
  %retval = alloca i32, align 4
  %lock.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy4 = alloca i64, align 8
  %__dummy25 = alloca i64, align 8
  %tmp8 = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2261, metadata !DIExpression()), !dbg !2272
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !2273
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !2262, metadata !DIExpression()), !dbg !2274
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !2275
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2263, metadata !DIExpression()), !dbg !2276
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2277
  %call = call ptr @rt_mutex_owner(ptr noundef %0) #14, !dbg !2279
  %tobool = icmp ne ptr %call, null, !dbg !2279
  br i1 %tobool, label %if.then, label %if.end, !dbg !2280

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2281
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2281

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !2282

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !2283
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !2264, metadata !DIExpression()), !dbg !2283
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !2283
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !2267, metadata !DIExpression()), !dbg !2283
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !2283
  %conv = zext i1 %cmp to i32, !dbg !2283
  store i32 1, ptr %tmp, align 4, !dbg !2283
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !2284
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !2284
  %1 = load i32, ptr %tmp, align 4, !dbg !2283
  %2 = load ptr, ptr %lock.addr, align 8, !dbg !2284
  %wait_lock = getelementptr inbounds %struct.rt_mutex_base, ptr %2, i32 0, i32 0, !dbg !2284
  %call1 = call i64 @_raw_spin_lock_irqsave(ptr noundef %wait_lock) #14, !dbg !2284
  store i64 %call1, ptr %flags, align 8, !dbg !2284
  br label %do.cond, !dbg !2284

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2284

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %lock.addr, align 8, !dbg !2285
  %call2 = call i32 @__rt_mutex_slowtrylock(ptr noundef %3) #14, !dbg !2286
  store i32 %call2, ptr %ret, align 4, !dbg !2287
  br label %do.body3, !dbg !2288

do.body3:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy4) #15, !dbg !2289
  call void @llvm.dbg.declare(metadata ptr %__dummy4, metadata !2268, metadata !DIExpression()), !dbg !2289
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy25) #15, !dbg !2289
  call void @llvm.dbg.declare(metadata ptr %__dummy25, metadata !2271, metadata !DIExpression()), !dbg !2289
  %cmp6 = icmp eq ptr %__dummy4, %__dummy25, !dbg !2289
  %conv7 = zext i1 %cmp6 to i32, !dbg !2289
  store i32 1, ptr %tmp8, align 4, !dbg !2289
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy25) #15, !dbg !2290
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy4) #15, !dbg !2290
  %4 = load i32, ptr %tmp8, align 4, !dbg !2289
  %5 = load ptr, ptr %lock.addr, align 8, !dbg !2290
  %wait_lock9 = getelementptr inbounds %struct.rt_mutex_base, ptr %5, i32 0, i32 0, !dbg !2290
  %6 = load i64, ptr %flags, align 8, !dbg !2290
  call void @_raw_spin_unlock_irqrestore(ptr noundef %wait_lock9, i64 noundef %6) #14, !dbg !2290
  br label %do.cond10, !dbg !2290

do.cond10:                                        ; preds = %do.body3
  br label %do.end11, !dbg !2290

do.end11:                                         ; preds = %do.cond10
  %7 = load i32, ptr %ret, align 4, !dbg !2291
  store i32 %7, ptr %retval, align 4, !dbg !2292
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2292

cleanup:                                          ; preds = %do.end11, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !2293
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !2293
  %8 = load i32, ptr %retval, align 4, !dbg !2293
  ret i32 %8, !dbg !2293
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__rt_mutex_futex_trylock(ptr noundef %lock) #0 section ".sched.text" align 16 !dbg !2294 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2296, metadata !DIExpression()), !dbg !2297
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2298
  %call = call i32 @__rt_mutex_slowtrylock(ptr noundef %0) #14, !dbg !2299
  ret i32 %call, !dbg !2300
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__rt_mutex_slowtrylock(ptr noundef %lock) #0 section ".sched.text" align 16 !dbg !2301 {
entry:
  %lock.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2303, metadata !DIExpression()), !dbg !2305
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !2306
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2304, metadata !DIExpression()), !dbg !2307
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2308
  %call = call ptr @get_current() #14, !dbg !2309
  %call1 = call i32 @try_to_take_rt_mutex(ptr noundef %0, ptr noundef %call, ptr noundef null) #14, !dbg !2310
  store i32 %call1, ptr %ret, align 4, !dbg !2307
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !2311
  call void @fixup_rt_mutex_waiters(ptr noundef %1, i1 noundef zeroext true) #14, !dbg !2312
  %2 = load i32, ptr %ret, align 4, !dbg !2313
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !2314
  ret i32 %2, !dbg !2315
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @__rt_mutex_futex_unlock(ptr noundef %lock, ptr noundef %wqh) #0 section ".sched.text" align 16 !dbg !2316 {
entry:
  %retval = alloca i1, align 1
  %lock.addr = alloca ptr, align 8
  %wqh.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2320, metadata !DIExpression()), !dbg !2322
  store ptr %wqh, ptr %wqh.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wqh.addr, metadata !2321, metadata !DIExpression()), !dbg !2323
  br label %do.body, !dbg !2324

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2325
  %wait_lock = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 0, !dbg !2325
  br label %do.end, !dbg !2325

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !2327
  call void @debug_rt_mutex_unlock(ptr noundef %1) #14, !dbg !2328
  %2 = load ptr, ptr %lock.addr, align 8, !dbg !2329
  %call = call i32 @rt_mutex_has_waiters(ptr noundef %2) #14, !dbg !2331
  %tobool = icmp ne i32 %call, 0, !dbg !2331
  br i1 %tobool, label %if.end, label %if.then, !dbg !2332

if.then:                                          ; preds = %do.end
  %3 = load ptr, ptr %lock.addr, align 8, !dbg !2333
  %owner = getelementptr inbounds %struct.rt_mutex_base, ptr %3, i32 0, i32 2, !dbg !2335
  store ptr null, ptr %owner, align 8, !dbg !2336
  store i1 false, ptr %retval, align 1, !dbg !2337
  br label %return, !dbg !2337

if.end:                                           ; preds = %do.end
  %4 = load ptr, ptr %wqh.addr, align 8, !dbg !2338
  %5 = load ptr, ptr %lock.addr, align 8, !dbg !2339
  call void @mark_wakeup_next_waiter(ptr noundef %4, ptr noundef %5) #14, !dbg !2340
  store i1 true, ptr %retval, align 1, !dbg !2341
  br label %return, !dbg !2341

return:                                           ; preds = %if.end, %if.then
  %6 = load i1, ptr %retval, align 1, !dbg !2342
  ret i1 %6, !dbg !2342
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @debug_rt_mutex_unlock(ptr noundef %lock) #2 align 16 !dbg !2343 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2345, metadata !DIExpression()), !dbg !2346
  ret void, !dbg !2347
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rt_mutex_has_waiters(ptr noundef %lock) #2 align 16 !dbg !2348 {
entry:
  %lock.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2350, metadata !DIExpression()), !dbg !2351
  br label %do.body, !dbg !2352

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2354

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2352
  %waiters = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 1, !dbg !2352
  %rb_root = getelementptr inbounds %struct.rb_root_cached, ptr %waiters, i32 0, i32 0, !dbg !2352
  %rb_node = getelementptr inbounds %struct.rb_root, ptr %rb_root, i32 0, i32 0, !dbg !2352
  %1 = load volatile ptr, ptr %rb_node, align 8, !dbg !2352
  store ptr %1, ptr %tmp, align 8, !dbg !2354
  %2 = load ptr, ptr %tmp, align 8, !dbg !2352
  %cmp = icmp eq ptr %2, null, !dbg !2356
  %lnot = xor i1 %cmp, true, !dbg !2357
  %lnot.ext = zext i1 %lnot to i32, !dbg !2357
  ret i32 %lnot.ext, !dbg !2358
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mark_wakeup_next_waiter(ptr noundef %wqh, ptr noundef %lock) #0 section ".sched.text" align 16 !dbg !2359 {
entry:
  %wqh.addr = alloca ptr, align 8
  %lock.addr = alloca ptr, align 8
  %waiter = alloca ptr, align 8
  store ptr %wqh, ptr %wqh.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wqh.addr, metadata !2363, metadata !DIExpression()), !dbg !2366
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2364, metadata !DIExpression()), !dbg !2367
  call void @llvm.lifetime.start.p0(i64 8, ptr %waiter) #15, !dbg !2368
  call void @llvm.dbg.declare(metadata ptr %waiter, metadata !2365, metadata !DIExpression()), !dbg !2369
  br label %do.body, !dbg !2370

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2371
  %wait_lock = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 0, !dbg !2371
  br label %do.cond, !dbg !2371

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2371

do.end:                                           ; preds = %do.cond
  %call = call ptr @get_current() #14, !dbg !2373
  %pi_lock = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 122, !dbg !2373
  call void @_raw_spin_lock(ptr noundef %pi_lock) #14, !dbg !2373
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !2374
  %call1 = call ptr @rt_mutex_top_waiter(ptr noundef %1) #14, !dbg !2375
  store ptr %call1, ptr %waiter, align 8, !dbg !2376
  %call2 = call ptr @get_current() #14, !dbg !2377
  %2 = load ptr, ptr %waiter, align 8, !dbg !2378
  call void @rt_mutex_dequeue_pi(ptr noundef %call2, ptr noundef %2) #14, !dbg !2379
  %3 = load ptr, ptr %lock.addr, align 8, !dbg !2380
  %call3 = call ptr @get_current() #14, !dbg !2381
  call void @rt_mutex_adjust_prio(ptr noundef %3, ptr noundef %call3) #14, !dbg !2382
  %4 = load ptr, ptr %lock.addr, align 8, !dbg !2383
  %owner = getelementptr inbounds %struct.rt_mutex_base, ptr %4, i32 0, i32 2, !dbg !2384
  store ptr inttoptr (i64 1 to ptr), ptr %owner, align 8, !dbg !2385
  br label %do.body4, !dbg !2386

do.body4:                                         ; preds = %do.end
  call void @__preempt_count_add(i32 noundef 1) #14, !dbg !2387
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !2387, !srcloc !2389
  br label %do.cond5, !dbg !2387

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !2387

do.end6:                                          ; preds = %do.cond5
  %5 = load ptr, ptr %wqh.addr, align 8, !dbg !2390
  %6 = load ptr, ptr %waiter, align 8, !dbg !2391
  call void @rt_mutex_wake_q_add(ptr noundef %5, ptr noundef %6) #14, !dbg !2392
  %call7 = call ptr @get_current() #14, !dbg !2393
  %pi_lock8 = getelementptr inbounds %struct.task_struct, ptr %call7, i32 0, i32 122, !dbg !2393
  call void @_raw_spin_unlock(ptr noundef %pi_lock8) #14, !dbg !2393
  call void @llvm.lifetime.end.p0(i64 8, ptr %waiter) #15, !dbg !2394
  ret void, !dbg !2394
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rt_mutex_futex_unlock(ptr noundef %lock) #0 section ".sched.text" align 16 !dbg !2395 {
entry:
  %lock.addr = alloca ptr, align 8
  %wqh = alloca %struct.rt_wake_q_head, align 8
  %flags = alloca i64, align 8
  %postunlock = alloca i8, align 1
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2397, metadata !DIExpression()), !dbg !2409
  call void @llvm.lifetime.start.p0(i64 24, ptr %wqh) #15, !dbg !2410
  call void @llvm.dbg.declare(metadata ptr %wqh, metadata !2398, metadata !DIExpression()), !dbg !2410
  %head = getelementptr inbounds %struct.rt_wake_q_head, ptr %wqh, i32 0, i32 0, !dbg !2410
  %first = getelementptr inbounds %struct.wake_q_head, ptr %head, i32 0, i32 0, !dbg !2410
  store ptr inttoptr (i64 1 to ptr), ptr %first, align 8, !dbg !2410
  %lastp = getelementptr inbounds %struct.wake_q_head, ptr %head, i32 0, i32 1, !dbg !2410
  %head1 = getelementptr inbounds %struct.rt_wake_q_head, ptr %wqh, i32 0, i32 0, !dbg !2410
  %first2 = getelementptr inbounds %struct.wake_q_head, ptr %head1, i32 0, i32 0, !dbg !2410
  store ptr %first2, ptr %lastp, align 8, !dbg !2410
  %rtlock_task = getelementptr inbounds %struct.rt_wake_q_head, ptr %wqh, i32 0, i32 1, !dbg !2410
  store ptr null, ptr %rtlock_task, align 8, !dbg !2410
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !2411
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !2399, metadata !DIExpression()), !dbg !2412
  call void @llvm.lifetime.start.p0(i64 1, ptr %postunlock) #15, !dbg !2413
  call void @llvm.dbg.declare(metadata ptr %postunlock, metadata !2400, metadata !DIExpression()), !dbg !2414
  br label %do.body, !dbg !2415

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !2416
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !2401, metadata !DIExpression()), !dbg !2416
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !2416
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !2404, metadata !DIExpression()), !dbg !2416
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !2416
  %conv = zext i1 %cmp to i32, !dbg !2416
  store i32 1, ptr %tmp, align 4, !dbg !2416
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !2417
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !2417
  %0 = load i32, ptr %tmp, align 4, !dbg !2416
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !2417
  %wait_lock = getelementptr inbounds %struct.rt_mutex_base, ptr %1, i32 0, i32 0, !dbg !2417
  %call = call i64 @_raw_spin_lock_irqsave(ptr noundef %wait_lock) #14, !dbg !2417
  store i64 %call, ptr %flags, align 8, !dbg !2417
  br label %do.cond, !dbg !2417

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2417

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %lock.addr, align 8, !dbg !2418
  %call3 = call zeroext i1 @__rt_mutex_futex_unlock(ptr noundef %2, ptr noundef %wqh) #14, !dbg !2419
  %frombool = zext i1 %call3 to i8, !dbg !2420
  store i8 %frombool, ptr %postunlock, align 1, !dbg !2420
  br label %do.body4, !dbg !2421

do.body4:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy5) #15, !dbg !2422
  call void @llvm.dbg.declare(metadata ptr %__dummy5, metadata !2405, metadata !DIExpression()), !dbg !2422
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy26) #15, !dbg !2422
  call void @llvm.dbg.declare(metadata ptr %__dummy26, metadata !2408, metadata !DIExpression()), !dbg !2422
  %cmp7 = icmp eq ptr %__dummy5, %__dummy26, !dbg !2422
  %conv8 = zext i1 %cmp7 to i32, !dbg !2422
  store i32 1, ptr %tmp9, align 4, !dbg !2422
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy26) #15, !dbg !2423
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy5) #15, !dbg !2423
  %3 = load i32, ptr %tmp9, align 4, !dbg !2422
  %4 = load ptr, ptr %lock.addr, align 8, !dbg !2423
  %wait_lock10 = getelementptr inbounds %struct.rt_mutex_base, ptr %4, i32 0, i32 0, !dbg !2423
  %5 = load i64, ptr %flags, align 8, !dbg !2423
  call void @_raw_spin_unlock_irqrestore(ptr noundef %wait_lock10, i64 noundef %5) #14, !dbg !2423
  br label %do.cond11, !dbg !2423

do.cond11:                                        ; preds = %do.body4
  br label %do.end12, !dbg !2423

do.end12:                                         ; preds = %do.cond11
  %6 = load i8, ptr %postunlock, align 1, !dbg !2424, !range !2426, !noundef !440
  %tobool = trunc i8 %6 to i1, !dbg !2424
  br i1 %tobool, label %if.then, label %if.end, !dbg !2427

if.then:                                          ; preds = %do.end12
  call void @rt_mutex_postunlock(ptr noundef %wqh) #14, !dbg !2428
  br label %if.end, !dbg !2428

if.end:                                           ; preds = %if.then, %do.end12
  call void @llvm.lifetime.end.p0(i64 1, ptr %postunlock) #15, !dbg !2429
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !2429
  call void @llvm.lifetime.end.p0(i64 24, ptr %wqh) #15, !dbg !2429
  ret void, !dbg !2429
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2430 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2435 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #5 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rt_mutex_postunlock(ptr noundef %wqh) #0 section ".sched.text" align 16 !dbg !2438 {
entry:
  %wqh.addr = alloca ptr, align 8
  store ptr %wqh, ptr %wqh.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wqh.addr, metadata !2440, metadata !DIExpression()), !dbg !2441
  %0 = load ptr, ptr %wqh.addr, align 8, !dbg !2442
  call void @rt_mutex_wake_up_q(ptr noundef %0) #14, !dbg !2443
  ret void, !dbg !2444
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__rt_mutex_init(ptr noundef %lock, ptr noundef %name, ptr noundef %key) #0 section ".sched.text" align 16 !dbg !2445 {
entry:
  %lock.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2450, metadata !DIExpression()), !dbg !2453
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !2451, metadata !DIExpression()), !dbg !2454
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !2452, metadata !DIExpression()), !dbg !2455
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2456
  call void @debug_check_no_locks_freed(ptr noundef %0, i64 noundef 32) #14, !dbg !2457
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !2458
  %rtmutex = getelementptr inbounds %struct.rt_mutex, ptr %1, i32 0, i32 0, !dbg !2459
  call void @__rt_mutex_base_init(ptr noundef %rtmutex) #14, !dbg !2460
  br label %do.body, !dbg !2461

do.body:                                          ; preds = %entry
  %2 = load ptr, ptr %name.addr, align 8, !dbg !2462
  %3 = load ptr, ptr %key.addr, align 8, !dbg !2462
  br label %do.end, !dbg !2462

do.end:                                           ; preds = %do.body
  ret void, !dbg !2464
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @debug_check_no_locks_freed(ptr noundef %from, i64 noundef %len) #2 align 16 !dbg !2465 {
entry:
  %from.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !2470, metadata !DIExpression()), !dbg !2472
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !2471, metadata !DIExpression()), !dbg !2473
  ret void, !dbg !2474
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rt_mutex_init_proxy_locked(ptr noundef %lock, ptr noundef %proxy_owner) #0 section ".sched.text" align 16 !dbg !1952 {
entry:
  %lock.addr = alloca ptr, align 8
  %proxy_owner.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1956, metadata !DIExpression()), !dbg !2475
  store ptr %proxy_owner, ptr %proxy_owner.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %proxy_owner.addr, metadata !1957, metadata !DIExpression()), !dbg !2476
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2477
  call void @__rt_mutex_base_init(ptr noundef %0) #14, !dbg !2478
  br label %do.body, !dbg !2479

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2480

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !2482
  %2 = load ptr, ptr %proxy_owner.addr, align 8, !dbg !2483
  call void @rt_mutex_set_owner(ptr noundef %1, ptr noundef %2) #14, !dbg !2484
  ret void, !dbg !2485
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rt_mutex_set_owner(ptr noundef %lock, ptr noundef %owner) #3 align 16 !dbg !2486 {
entry:
  %lock.addr = alloca ptr, align 8
  %owner.addr = alloca ptr, align 8
  %__ai_ptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ret = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2488, metadata !DIExpression()), !dbg !2494
  store ptr %owner, ptr %owner.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %owner.addr, metadata !2489, metadata !DIExpression()), !dbg !2495
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #15, !dbg !2496
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !2490, metadata !DIExpression()), !dbg !2496
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2496
  %owner1 = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 2, !dbg !2496
  store ptr %owner1, ptr %__ai_ptr, align 8, !dbg !2496
  %1 = load ptr, ptr %__ai_ptr, align 8, !dbg !2496
  call void @instrument_atomic_read_write(ptr noundef %1, i64 noundef 8) #14, !dbg !2496
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #15, !dbg !2497
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !2492, metadata !DIExpression()), !dbg !2497
  %2 = load ptr, ptr %lock.addr, align 8, !dbg !2497
  %3 = load ptr, ptr %owner.addr, align 8, !dbg !2497
  %call = call ptr @rt_mutex_owner_encode(ptr noundef %2, ptr noundef %3) #14, !dbg !2497
  store ptr %call, ptr %__ret, align 8, !dbg !2497
  %4 = load ptr, ptr %__ret, align 8, !dbg !2497
  %5 = load ptr, ptr %__ai_ptr, align 8, !dbg !2497
  %6 = call ptr asm sideeffect "xchgq ${0:q}, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) %5, ptr %4, ptr elementtype(ptr) %5) #15, !dbg !2497, !srcloc !2498
  store ptr %6, ptr %__ret, align 8, !dbg !2497
  %7 = load ptr, ptr %__ret, align 8, !dbg !2497
  store ptr %7, ptr %tmp2, align 8, !dbg !2497
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #15, !dbg !2496
  %8 = load ptr, ptr %tmp2, align 8, !dbg !2497
  store ptr %8, ptr %tmp, align 8, !dbg !2496
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #15, !dbg !2499
  %9 = load ptr, ptr %tmp, align 8, !dbg !2496
  ret void, !dbg !2500
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rt_mutex_proxy_unlock(ptr noundef %lock) #0 section ".sched.text" align 16 !dbg !2501 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2503, metadata !DIExpression()), !dbg !2504
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2505
  call void @debug_rt_mutex_proxy_unlock(ptr noundef %0) #14, !dbg !2506
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !2507
  call void @rt_mutex_clear_owner(ptr noundef %1) #14, !dbg !2508
  ret void, !dbg !2509
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @debug_rt_mutex_proxy_unlock(ptr noundef %lock) #2 align 16 !dbg !2510 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2512, metadata !DIExpression()), !dbg !2513
  ret void, !dbg !2514
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rt_mutex_clear_owner(ptr noundef %lock) #3 align 16 !dbg !2515 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2517, metadata !DIExpression()), !dbg !2518
  br label %do.body, !dbg !2519

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !2520

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !2522

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !2520

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2524
  %call = call ptr @rt_mutex_owner_encode(ptr noundef %0, ptr noundef null) #14, !dbg !2524
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !2524
  %owner = getelementptr inbounds %struct.rt_mutex_base, ptr %1, i32 0, i32 2, !dbg !2524
  store volatile ptr %call, ptr %owner, align 8, !dbg !2524
  br label %do.end3, !dbg !2524

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !2520

do.end4:                                          ; preds = %do.end3
  ret void, !dbg !2526
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__rt_mutex_start_proxy_lock(ptr noundef %lock, ptr noundef %waiter, ptr noundef %task) #0 section ".sched.text" align 16 !dbg !2527 {
entry:
  %retval = alloca i32, align 4
  %lock.addr = alloca ptr, align 8
  %waiter.addr = alloca ptr, align 8
  %task.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2531, metadata !DIExpression()), !dbg !2535
  store ptr %waiter, ptr %waiter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %waiter.addr, metadata !2532, metadata !DIExpression()), !dbg !2536
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !2533, metadata !DIExpression()), !dbg !2537
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !2538
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2534, metadata !DIExpression()), !dbg !2539
  br label %do.body, !dbg !2540

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2541
  %wait_lock = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 0, !dbg !2541
  br label %do.cond, !dbg !2541

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2541

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !2543
  %2 = load ptr, ptr %task.addr, align 8, !dbg !2545
  %call = call i32 @try_to_take_rt_mutex(ptr noundef %1, ptr noundef %2, ptr noundef null) #14, !dbg !2546
  %tobool = icmp ne i32 %call, 0, !dbg !2546
  br i1 %tobool, label %if.then, label %if.end, !dbg !2547

if.then:                                          ; preds = %do.end
  store i32 1, ptr %retval, align 4, !dbg !2548
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2548

if.end:                                           ; preds = %do.end
  %3 = load ptr, ptr %lock.addr, align 8, !dbg !2549
  %4 = load ptr, ptr %waiter.addr, align 8, !dbg !2550
  %5 = load ptr, ptr %task.addr, align 8, !dbg !2551
  %call1 = call i32 @task_blocks_on_rt_mutex(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef null, i32 noundef 1) #14, !dbg !2552
  store i32 %call1, ptr %ret, align 4, !dbg !2553
  %6 = load i32, ptr %ret, align 4, !dbg !2554
  %tobool2 = icmp ne i32 %6, 0, !dbg !2554
  br i1 %tobool2, label %land.lhs.true, label %if.end6, !dbg !2556

land.lhs.true:                                    ; preds = %if.end
  %7 = load ptr, ptr %lock.addr, align 8, !dbg !2557
  %call3 = call ptr @rt_mutex_owner(ptr noundef %7) #14, !dbg !2558
  %tobool4 = icmp ne ptr %call3, null, !dbg !2558
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !2559

if.then5:                                         ; preds = %land.lhs.true
  store i32 0, ptr %ret, align 4, !dbg !2560
  br label %if.end6, !dbg !2562

if.end6:                                          ; preds = %if.then5, %land.lhs.true, %if.end
  %8 = load i32, ptr %ret, align 4, !dbg !2563
  store i32 %8, ptr %retval, align 4, !dbg !2564
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2564

cleanup:                                          ; preds = %if.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !2565
  %9 = load i32, ptr %retval, align 4, !dbg !2565
  ret i32 %9, !dbg !2565
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @try_to_take_rt_mutex(ptr noundef %lock, ptr noundef %task, ptr noundef %waiter) #0 section ".sched.text" align 16 !dbg !2566 {
entry:
  %retval = alloca i32, align 4
  %lock.addr = alloca ptr, align 8
  %task.addr = alloca ptr, align 8
  %waiter.addr = alloca ptr, align 8
  %top_waiter = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.rt_mutex_waiter, align 8
  %.compoundliteral11 = alloca %struct.rt_waiter_node, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2570, metadata !DIExpression()), !dbg !2577
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !2571, metadata !DIExpression()), !dbg !2578
  store ptr %waiter, ptr %waiter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %waiter.addr, metadata !2572, metadata !DIExpression()), !dbg !2579
  br label %do.body, !dbg !2580

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2581
  %wait_lock = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 0, !dbg !2581
  br label %do.end, !dbg !2581

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !2583
  call void @mark_rt_mutex_waiters(ptr noundef %1) #14, !dbg !2584
  %2 = load ptr, ptr %lock.addr, align 8, !dbg !2585
  %call = call ptr @rt_mutex_owner(ptr noundef %2) #14, !dbg !2587
  %tobool = icmp ne ptr %call, null, !dbg !2587
  br i1 %tobool, label %if.then, label %if.end, !dbg !2588

if.then:                                          ; preds = %do.end
  store i32 0, ptr %retval, align 4, !dbg !2589
  br label %return, !dbg !2589

if.end:                                           ; preds = %do.end
  %3 = load ptr, ptr %waiter.addr, align 8, !dbg !2590
  %tobool1 = icmp ne ptr %3, null, !dbg !2590
  br i1 %tobool1, label %if.then2, label %if.else7, !dbg !2591

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %top_waiter) #15, !dbg !2592
  call void @llvm.dbg.declare(metadata ptr %top_waiter, metadata !2573, metadata !DIExpression()), !dbg !2593
  %4 = load ptr, ptr %lock.addr, align 8, !dbg !2594
  %call3 = call ptr @rt_mutex_top_waiter(ptr noundef %4) #14, !dbg !2595
  store ptr %call3, ptr %top_waiter, align 8, !dbg !2593
  %5 = load ptr, ptr %waiter.addr, align 8, !dbg !2596
  %6 = load ptr, ptr %top_waiter, align 8, !dbg !2598
  %cmp = icmp eq ptr %5, %6, !dbg !2599
  br i1 %cmp, label %if.then5, label %lor.lhs.false, !dbg !2600

lor.lhs.false:                                    ; preds = %if.then2
  %7 = load ptr, ptr %waiter.addr, align 8, !dbg !2601
  %8 = load ptr, ptr %top_waiter, align 8, !dbg !2602
  %call4 = call zeroext i1 @rt_mutex_steal(ptr noundef %7, ptr noundef %8) #14, !dbg !2603
  br i1 %call4, label %if.then5, label %if.else, !dbg !2604

if.then5:                                         ; preds = %lor.lhs.false, %if.then2
  %9 = load ptr, ptr %lock.addr, align 8, !dbg !2605
  %10 = load ptr, ptr %waiter.addr, align 8, !dbg !2607
  call void @rt_mutex_dequeue(ptr noundef %9, ptr noundef %10) #14, !dbg !2608
  br label %if.end6, !dbg !2609

if.else:                                          ; preds = %lor.lhs.false
  store i32 0, ptr %retval, align 4, !dbg !2610
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2610

if.end6:                                          ; preds = %if.then5
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2612
  br label %cleanup, !dbg !2612

cleanup:                                          ; preds = %if.end6, %if.else
  call void @llvm.lifetime.end.p0(i64 8, ptr %top_waiter) #15, !dbg !2612
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end23, !dbg !2613

if.else7:                                         ; preds = %if.end
  %11 = load ptr, ptr %lock.addr, align 8, !dbg !2614
  %call8 = call i32 @rt_mutex_has_waiters(ptr noundef %11) #14, !dbg !2617
  %tobool9 = icmp ne i32 %call8, 0, !dbg !2617
  br i1 %tobool9, label %if.then10, label %if.else21, !dbg !2618

if.then10:                                        ; preds = %if.else7
  %tree = getelementptr inbounds %struct.rt_mutex_waiter, ptr %.compoundliteral, i32 0, i32 0, !dbg !2619
  %entry12 = getelementptr inbounds %struct.rt_waiter_node, ptr %.compoundliteral11, i32 0, i32 0, !dbg !2619
  call void @llvm.memset.p0.i64(ptr align 8 %entry12, i8 0, i64 24, i1 false), !dbg !2619
  %prio = getelementptr inbounds %struct.rt_waiter_node, ptr %.compoundliteral11, i32 0, i32 1, !dbg !2619
  %12 = load ptr, ptr %task.addr, align 8, !dbg !2619
  %call13 = call i32 @__waiter_prio(ptr noundef %12) #14, !dbg !2619
  store i32 %call13, ptr %prio, align 8, !dbg !2619
  %deadline = getelementptr inbounds %struct.rt_waiter_node, ptr %.compoundliteral11, i32 0, i32 2, !dbg !2619
  %13 = load ptr, ptr %task.addr, align 8, !dbg !2619
  %dl = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 20, !dbg !2619
  %deadline14 = getelementptr inbounds %struct.sched_dl_entity, ptr %dl, i32 0, i32 7, !dbg !2619
  %14 = load i64, ptr %deadline14, align 8, !dbg !2619
  store i64 %14, ptr %deadline, align 8, !dbg !2619
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %tree, ptr align 8 %.compoundliteral11, i64 40, i1 false), !dbg !2619
  %pi_tree = getelementptr inbounds %struct.rt_mutex_waiter, ptr %.compoundliteral, i32 0, i32 1, !dbg !2619
  call void @llvm.memset.p0.i64(ptr align 8 %pi_tree, i8 0, i64 40, i1 false), !dbg !2619
  %task15 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %.compoundliteral, i32 0, i32 2, !dbg !2619
  store ptr null, ptr %task15, align 8, !dbg !2619
  %lock16 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %.compoundliteral, i32 0, i32 3, !dbg !2619
  store ptr null, ptr %lock16, align 8, !dbg !2619
  %wake_state = getelementptr inbounds %struct.rt_mutex_waiter, ptr %.compoundliteral, i32 0, i32 4, !dbg !2619
  store i32 0, ptr %wake_state, align 8, !dbg !2619
  %ww_ctx = getelementptr inbounds %struct.rt_mutex_waiter, ptr %.compoundliteral, i32 0, i32 5, !dbg !2619
  store ptr null, ptr %ww_ctx, align 8, !dbg !2619
  %15 = load ptr, ptr %lock.addr, align 8, !dbg !2622
  %call17 = call ptr @rt_mutex_top_waiter(ptr noundef %15) #14, !dbg !2623
  %call18 = call zeroext i1 @rt_mutex_steal(ptr noundef %.compoundliteral, ptr noundef %call17) #14, !dbg !2624
  br i1 %call18, label %if.end20, label %if.then19, !dbg !2625

if.then19:                                        ; preds = %if.then10
  store i32 0, ptr %retval, align 4, !dbg !2626
  br label %return, !dbg !2626

if.end20:                                         ; preds = %if.then10
  br label %if.end22, !dbg !2627

if.else21:                                        ; preds = %if.else7
  br label %takeit, !dbg !2628

if.end22:                                         ; preds = %if.end20
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %cleanup.cont
  %16 = load ptr, ptr %task.addr, align 8, !dbg !2630
  %pi_lock = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 122, !dbg !2630
  call void @_raw_spin_lock(ptr noundef %pi_lock) #14, !dbg !2630
  %17 = load ptr, ptr %task.addr, align 8, !dbg !2631
  %pi_blocked_on = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 126, !dbg !2632
  store ptr null, ptr %pi_blocked_on, align 8, !dbg !2633
  %18 = load ptr, ptr %lock.addr, align 8, !dbg !2634
  %call24 = call i32 @rt_mutex_has_waiters(ptr noundef %18) #14, !dbg !2636
  %tobool25 = icmp ne i32 %call24, 0, !dbg !2636
  br i1 %tobool25, label %if.then26, label %if.end28, !dbg !2637

if.then26:                                        ; preds = %if.end23
  %19 = load ptr, ptr %task.addr, align 8, !dbg !2638
  %20 = load ptr, ptr %lock.addr, align 8, !dbg !2639
  %call27 = call ptr @rt_mutex_top_waiter(ptr noundef %20) #14, !dbg !2640
  call void @rt_mutex_enqueue_pi(ptr noundef %19, ptr noundef %call27) #14, !dbg !2641
  br label %if.end28, !dbg !2641

if.end28:                                         ; preds = %if.then26, %if.end23
  %21 = load ptr, ptr %task.addr, align 8, !dbg !2642
  %pi_lock29 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 122, !dbg !2642
  call void @_raw_spin_unlock(ptr noundef %pi_lock29) #14, !dbg !2642
  br label %takeit, !dbg !2642

takeit:                                           ; preds = %if.end28, %if.else21
  call void @llvm.dbg.label(metadata !2576), !dbg !2643
  %22 = load ptr, ptr %lock.addr, align 8, !dbg !2644
  %23 = load ptr, ptr %task.addr, align 8, !dbg !2645
  call void @rt_mutex_set_owner(ptr noundef %22, ptr noundef %23) #14, !dbg !2646
  store i32 1, ptr %retval, align 4, !dbg !2647
  br label %return, !dbg !2647

return:                                           ; preds = %takeit, %if.then19, %cleanup, %if.then
  %24 = load i32, ptr %retval, align 4, !dbg !2648
  ret i32 %24, !dbg !2648

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @task_blocks_on_rt_mutex(ptr noundef %lock, ptr noundef %waiter, ptr noundef %task, ptr noundef %ww_ctx, i32 noundef %chwalk) #0 section ".sched.text" align 16 !dbg !2649 {
entry:
  %retval = alloca i32, align 4
  %lock.addr = alloca ptr, align 8
  %waiter.addr = alloca ptr, align 8
  %task.addr = alloca ptr, align 8
  %ww_ctx.addr = alloca ptr, align 8
  %chwalk.addr = alloca i32, align 4
  %owner = alloca ptr, align 8
  %top_waiter = alloca ptr, align 8
  %next_lock = alloca ptr, align 8
  %chain_walk = alloca i32, align 4
  %res = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2653, metadata !DIExpression()), !dbg !2663
  store ptr %waiter, ptr %waiter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %waiter.addr, metadata !2654, metadata !DIExpression()), !dbg !2664
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !2655, metadata !DIExpression()), !dbg !2665
  store ptr %ww_ctx, ptr %ww_ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ww_ctx.addr, metadata !2656, metadata !DIExpression()), !dbg !2666
  store i32 %chwalk, ptr %chwalk.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %chwalk.addr, metadata !2657, metadata !DIExpression()), !dbg !2667
  call void @llvm.lifetime.start.p0(i64 8, ptr %owner) #15, !dbg !2668
  call void @llvm.dbg.declare(metadata ptr %owner, metadata !2658, metadata !DIExpression()), !dbg !2669
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2670
  %call = call ptr @rt_mutex_owner(ptr noundef %0) #14, !dbg !2671
  store ptr %call, ptr %owner, align 8, !dbg !2669
  call void @llvm.lifetime.start.p0(i64 8, ptr %top_waiter) #15, !dbg !2672
  call void @llvm.dbg.declare(metadata ptr %top_waiter, metadata !2659, metadata !DIExpression()), !dbg !2673
  %1 = load ptr, ptr %waiter.addr, align 8, !dbg !2674
  store ptr %1, ptr %top_waiter, align 8, !dbg !2673
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_lock) #15, !dbg !2675
  call void @llvm.dbg.declare(metadata ptr %next_lock, metadata !2660, metadata !DIExpression()), !dbg !2676
  call void @llvm.lifetime.start.p0(i64 4, ptr %chain_walk) #15, !dbg !2677
  call void @llvm.dbg.declare(metadata ptr %chain_walk, metadata !2661, metadata !DIExpression()), !dbg !2678
  store i32 0, ptr %chain_walk, align 4, !dbg !2678
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #15, !dbg !2677
  call void @llvm.dbg.declare(metadata ptr %res, metadata !2662, metadata !DIExpression()), !dbg !2679
  br label %do.body, !dbg !2680

do.body:                                          ; preds = %entry
  %2 = load ptr, ptr %lock.addr, align 8, !dbg !2681
  %wait_lock = getelementptr inbounds %struct.rt_mutex_base, ptr %2, i32 0, i32 0, !dbg !2681
  br label %do.cond, !dbg !2681

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2681

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %owner, align 8, !dbg !2683
  %4 = load ptr, ptr %task.addr, align 8, !dbg !2685
  %cmp = icmp eq ptr %3, %4, !dbg !2686
  br i1 %cmp, label %if.then, label %if.end, !dbg !2687

if.then:                                          ; preds = %do.end
  store i32 -35, ptr %retval, align 4, !dbg !2688
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2688

if.end:                                           ; preds = %do.end
  %5 = load ptr, ptr %task.addr, align 8, !dbg !2689
  %pi_lock = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 122, !dbg !2689
  call void @_raw_spin_lock(ptr noundef %pi_lock) #14, !dbg !2689
  %6 = load ptr, ptr %task.addr, align 8, !dbg !2690
  %7 = load ptr, ptr %waiter.addr, align 8, !dbg !2691
  %task1 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %7, i32 0, i32 2, !dbg !2692
  store ptr %6, ptr %task1, align 8, !dbg !2693
  %8 = load ptr, ptr %lock.addr, align 8, !dbg !2694
  %9 = load ptr, ptr %waiter.addr, align 8, !dbg !2695
  %lock2 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %9, i32 0, i32 3, !dbg !2696
  store ptr %8, ptr %lock2, align 8, !dbg !2697
  %10 = load ptr, ptr %waiter.addr, align 8, !dbg !2698
  %11 = load ptr, ptr %task.addr, align 8, !dbg !2699
  call void @waiter_update_prio(ptr noundef %10, ptr noundef %11) #14, !dbg !2700
  %12 = load ptr, ptr %waiter.addr, align 8, !dbg !2701
  %13 = load ptr, ptr %task.addr, align 8, !dbg !2702
  call void @waiter_clone_prio(ptr noundef %12, ptr noundef %13) #14, !dbg !2703
  %14 = load ptr, ptr %lock.addr, align 8, !dbg !2704
  %call3 = call i32 @rt_mutex_has_waiters(ptr noundef %14) #14, !dbg !2706
  %tobool = icmp ne i32 %call3, 0, !dbg !2706
  br i1 %tobool, label %if.then4, label %if.end6, !dbg !2707

if.then4:                                         ; preds = %if.end
  %15 = load ptr, ptr %lock.addr, align 8, !dbg !2708
  %call5 = call ptr @rt_mutex_top_waiter(ptr noundef %15) #14, !dbg !2709
  store ptr %call5, ptr %top_waiter, align 8, !dbg !2710
  br label %if.end6, !dbg !2711

if.end6:                                          ; preds = %if.then4, %if.end
  %16 = load ptr, ptr %lock.addr, align 8, !dbg !2712
  %17 = load ptr, ptr %waiter.addr, align 8, !dbg !2713
  call void @rt_mutex_enqueue(ptr noundef %16, ptr noundef %17) #14, !dbg !2714
  %18 = load ptr, ptr %waiter.addr, align 8, !dbg !2715
  %19 = load ptr, ptr %task.addr, align 8, !dbg !2716
  %pi_blocked_on = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 126, !dbg !2717
  store ptr %18, ptr %pi_blocked_on, align 8, !dbg !2718
  %20 = load ptr, ptr %task.addr, align 8, !dbg !2719
  %pi_lock7 = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 122, !dbg !2719
  call void @_raw_spin_unlock(ptr noundef %pi_lock7) #14, !dbg !2719
  %21 = load ptr, ptr %owner, align 8, !dbg !2720
  %tobool8 = icmp ne ptr %21, null, !dbg !2720
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !2722

if.then9:                                         ; preds = %if.end6
  store i32 0, ptr %retval, align 4, !dbg !2723
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2723

if.end10:                                         ; preds = %if.end6
  %22 = load ptr, ptr %owner, align 8, !dbg !2724
  %pi_lock11 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 122, !dbg !2724
  call void @_raw_spin_lock(ptr noundef %pi_lock11) #14, !dbg !2724
  %23 = load ptr, ptr %waiter.addr, align 8, !dbg !2725
  %24 = load ptr, ptr %lock.addr, align 8, !dbg !2727
  %call12 = call ptr @rt_mutex_top_waiter(ptr noundef %24) #14, !dbg !2728
  %cmp13 = icmp eq ptr %23, %call12, !dbg !2729
  br i1 %cmp13, label %if.then14, label %if.else, !dbg !2730

if.then14:                                        ; preds = %if.end10
  %25 = load ptr, ptr %owner, align 8, !dbg !2731
  %26 = load ptr, ptr %top_waiter, align 8, !dbg !2733
  call void @rt_mutex_dequeue_pi(ptr noundef %25, ptr noundef %26) #14, !dbg !2734
  %27 = load ptr, ptr %owner, align 8, !dbg !2735
  %28 = load ptr, ptr %waiter.addr, align 8, !dbg !2736
  call void @rt_mutex_enqueue_pi(ptr noundef %27, ptr noundef %28) #14, !dbg !2737
  %29 = load ptr, ptr %lock.addr, align 8, !dbg !2738
  %30 = load ptr, ptr %owner, align 8, !dbg !2739
  call void @rt_mutex_adjust_prio(ptr noundef %29, ptr noundef %30) #14, !dbg !2740
  %31 = load ptr, ptr %owner, align 8, !dbg !2741
  %pi_blocked_on15 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 126, !dbg !2743
  %32 = load ptr, ptr %pi_blocked_on15, align 8, !dbg !2743
  %tobool16 = icmp ne ptr %32, null, !dbg !2741
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !2744

if.then17:                                        ; preds = %if.then14
  store i32 1, ptr %chain_walk, align 4, !dbg !2745
  br label %if.end18, !dbg !2746

if.end18:                                         ; preds = %if.then17, %if.then14
  br label %if.end22, !dbg !2747

if.else:                                          ; preds = %if.end10
  %33 = load ptr, ptr %waiter.addr, align 8, !dbg !2748
  %34 = load i32, ptr %chwalk.addr, align 4, !dbg !2750
  %call19 = call zeroext i1 @rt_mutex_cond_detect_deadlock(ptr noundef %33, i32 noundef %34) #14, !dbg !2751
  br i1 %call19, label %if.then20, label %if.end21, !dbg !2752

if.then20:                                        ; preds = %if.else
  store i32 1, ptr %chain_walk, align 4, !dbg !2753
  br label %if.end21, !dbg !2755

if.end21:                                         ; preds = %if.then20, %if.else
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.end18
  %35 = load ptr, ptr %owner, align 8, !dbg !2756
  %call23 = call ptr @task_blocked_on_lock(ptr noundef %35) #14, !dbg !2757
  store ptr %call23, ptr %next_lock, align 8, !dbg !2758
  %36 = load ptr, ptr %owner, align 8, !dbg !2759
  %pi_lock24 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 122, !dbg !2759
  call void @_raw_spin_unlock(ptr noundef %pi_lock24) #14, !dbg !2759
  %37 = load i32, ptr %chain_walk, align 4, !dbg !2760
  %tobool25 = icmp ne i32 %37, 0, !dbg !2760
  br i1 %tobool25, label %lor.lhs.false, label %if.then27, !dbg !2762

lor.lhs.false:                                    ; preds = %if.end22
  %38 = load ptr, ptr %next_lock, align 8, !dbg !2763
  %tobool26 = icmp ne ptr %38, null, !dbg !2763
  br i1 %tobool26, label %if.end28, label %if.then27, !dbg !2764

if.then27:                                        ; preds = %lor.lhs.false, %if.end22
  store i32 0, ptr %retval, align 4, !dbg !2765
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2765

if.end28:                                         ; preds = %lor.lhs.false
  %39 = load ptr, ptr %owner, align 8, !dbg !2766
  %call29 = call ptr @get_task_struct(ptr noundef %39) #14, !dbg !2767
  %40 = load ptr, ptr %lock.addr, align 8, !dbg !2768
  %wait_lock30 = getelementptr inbounds %struct.rt_mutex_base, ptr %40, i32 0, i32 0, !dbg !2768
  call void @_raw_spin_unlock_irq(ptr noundef %wait_lock30) #14, !dbg !2768
  %41 = load ptr, ptr %owner, align 8, !dbg !2769
  %42 = load i32, ptr %chwalk.addr, align 4, !dbg !2770
  %43 = load ptr, ptr %lock.addr, align 8, !dbg !2771
  %44 = load ptr, ptr %next_lock, align 8, !dbg !2772
  %45 = load ptr, ptr %waiter.addr, align 8, !dbg !2773
  %46 = load ptr, ptr %task.addr, align 8, !dbg !2774
  %call31 = call i32 @rt_mutex_adjust_prio_chain(ptr noundef %41, i32 noundef %42, ptr noundef %43, ptr noundef %44, ptr noundef %45, ptr noundef %46) #14, !dbg !2775
  store i32 %call31, ptr %res, align 4, !dbg !2776
  %47 = load ptr, ptr %lock.addr, align 8, !dbg !2777
  %wait_lock32 = getelementptr inbounds %struct.rt_mutex_base, ptr %47, i32 0, i32 0, !dbg !2777
  call void @_raw_spin_lock_irq(ptr noundef %wait_lock32) #14, !dbg !2777
  %48 = load i32, ptr %res, align 4, !dbg !2778
  store i32 %48, ptr %retval, align 4, !dbg !2779
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2779

cleanup:                                          ; preds = %if.end28, %if.then27, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #15, !dbg !2780
  call void @llvm.lifetime.end.p0(i64 4, ptr %chain_walk) #15, !dbg !2780
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_lock) #15, !dbg !2780
  call void @llvm.lifetime.end.p0(i64 8, ptr %top_waiter) #15, !dbg !2780
  call void @llvm.lifetime.end.p0(i64 8, ptr %owner) #15, !dbg !2780
  %49 = load i32, ptr %retval, align 4, !dbg !2780
  ret i32 %49, !dbg !2780
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @rt_mutex_owner(ptr noundef %lock) #2 align 16 !dbg !2781 {
entry:
  %lock.addr = alloca ptr, align 8
  %owner = alloca i64, align 8
  %tmp = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2785, metadata !DIExpression()), !dbg !2787
  call void @llvm.lifetime.start.p0(i64 8, ptr %owner) #15, !dbg !2788
  call void @llvm.dbg.declare(metadata ptr %owner, metadata !2786, metadata !DIExpression()), !dbg !2789
  br label %do.body, !dbg !2790

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !2792

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2792

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2790
  %owner1 = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 2, !dbg !2790
  %1 = load volatile ptr, ptr %owner1, align 8, !dbg !2790
  store ptr %1, ptr %tmp, align 8, !dbg !2792
  %2 = load ptr, ptr %tmp, align 8, !dbg !2790
  %3 = ptrtoint ptr %2 to i64, !dbg !2794
  store i64 %3, ptr %owner, align 8, !dbg !2789
  %4 = load i64, ptr %owner, align 8, !dbg !2795
  %and = and i64 %4, -2, !dbg !2796
  %5 = inttoptr i64 %and to ptr, !dbg !2797
  call void @llvm.lifetime.end.p0(i64 8, ptr %owner) #15, !dbg !2798
  ret ptr %5, !dbg !2799
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @rt_mutex_start_proxy_lock(ptr noundef %lock, ptr noundef %waiter, ptr noundef %task) #0 section ".sched.text" align 16 !dbg !2800 {
entry:
  %lock.addr = alloca ptr, align 8
  %waiter.addr = alloca ptr, align 8
  %task.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2802, metadata !DIExpression()), !dbg !2806
  store ptr %waiter, ptr %waiter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %waiter.addr, metadata !2803, metadata !DIExpression()), !dbg !2807
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !2804, metadata !DIExpression()), !dbg !2808
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !2809
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2805, metadata !DIExpression()), !dbg !2810
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2811
  %wait_lock = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 0, !dbg !2811
  call void @_raw_spin_lock_irq(ptr noundef %wait_lock) #14, !dbg !2811
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !2812
  %2 = load ptr, ptr %waiter.addr, align 8, !dbg !2813
  %3 = load ptr, ptr %task.addr, align 8, !dbg !2814
  %call = call i32 @__rt_mutex_start_proxy_lock(ptr noundef %1, ptr noundef %2, ptr noundef %3) #14, !dbg !2815
  store i32 %call, ptr %ret, align 4, !dbg !2816
  %4 = load i32, ptr %ret, align 4, !dbg !2817
  %tobool = icmp ne i32 %4, 0, !dbg !2817
  %lnot = xor i1 %tobool, true, !dbg !2817
  %lnot1 = xor i1 %lnot, true, !dbg !2817
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2817
  %conv = sext i32 %lnot.ext to i64, !dbg !2817
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2817
  %tobool2 = icmp ne i64 %expval, 0, !dbg !2817
  br i1 %tobool2, label %if.then, label %if.end, !dbg !2819

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %lock.addr, align 8, !dbg !2820
  %6 = load ptr, ptr %waiter.addr, align 8, !dbg !2821
  call void @remove_waiter(ptr noundef %5, ptr noundef %6) #14, !dbg !2822
  br label %if.end, !dbg !2822

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %lock.addr, align 8, !dbg !2823
  %wait_lock3 = getelementptr inbounds %struct.rt_mutex_base, ptr %7, i32 0, i32 0, !dbg !2823
  call void @_raw_spin_unlock_irq(ptr noundef %wait_lock3) #14, !dbg !2823
  %8 = load i32, ptr %ret, align 4, !dbg !2824
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !2825
  ret i32 %8, !dbg !2826
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2827 dso_local void @_raw_spin_lock_irq(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @remove_waiter(ptr noundef %lock, ptr noundef %waiter) #0 section ".sched.text" align 16 !dbg !2830 {
entry:
  %lock.addr = alloca ptr, align 8
  %waiter.addr = alloca ptr, align 8
  %is_top_waiter = alloca i8, align 1
  %owner = alloca ptr, align 8
  %next_lock = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2834, metadata !DIExpression()), !dbg !2839
  store ptr %waiter, ptr %waiter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %waiter.addr, metadata !2835, metadata !DIExpression()), !dbg !2840
  call void @llvm.lifetime.start.p0(i64 1, ptr %is_top_waiter) #15, !dbg !2841
  call void @llvm.dbg.declare(metadata ptr %is_top_waiter, metadata !2836, metadata !DIExpression()), !dbg !2842
  %0 = load ptr, ptr %waiter.addr, align 8, !dbg !2843
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !2844
  %call = call ptr @rt_mutex_top_waiter(ptr noundef %1) #14, !dbg !2845
  %cmp = icmp eq ptr %0, %call, !dbg !2846
  %frombool = zext i1 %cmp to i8, !dbg !2842
  store i8 %frombool, ptr %is_top_waiter, align 1, !dbg !2842
  call void @llvm.lifetime.start.p0(i64 8, ptr %owner) #15, !dbg !2847
  call void @llvm.dbg.declare(metadata ptr %owner, metadata !2837, metadata !DIExpression()), !dbg !2848
  %2 = load ptr, ptr %lock.addr, align 8, !dbg !2849
  %call1 = call ptr @rt_mutex_owner(ptr noundef %2) #14, !dbg !2850
  store ptr %call1, ptr %owner, align 8, !dbg !2848
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_lock) #15, !dbg !2851
  call void @llvm.dbg.declare(metadata ptr %next_lock, metadata !2838, metadata !DIExpression()), !dbg !2852
  br label %do.body, !dbg !2853

do.body:                                          ; preds = %entry
  %3 = load ptr, ptr %lock.addr, align 8, !dbg !2854
  %wait_lock = getelementptr inbounds %struct.rt_mutex_base, ptr %3, i32 0, i32 0, !dbg !2854
  br label %do.cond, !dbg !2854

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2854

do.end:                                           ; preds = %do.cond
  %call2 = call ptr @get_current() #14, !dbg !2856
  %pi_lock = getelementptr inbounds %struct.task_struct, ptr %call2, i32 0, i32 122, !dbg !2856
  call void @_raw_spin_lock(ptr noundef %pi_lock) #14, !dbg !2856
  %4 = load ptr, ptr %lock.addr, align 8, !dbg !2857
  %5 = load ptr, ptr %waiter.addr, align 8, !dbg !2858
  call void @rt_mutex_dequeue(ptr noundef %4, ptr noundef %5) #14, !dbg !2859
  %call3 = call ptr @get_current() #14, !dbg !2860
  %pi_blocked_on = getelementptr inbounds %struct.task_struct, ptr %call3, i32 0, i32 126, !dbg !2861
  store ptr null, ptr %pi_blocked_on, align 8, !dbg !2862
  %call4 = call ptr @get_current() #14, !dbg !2863
  %pi_lock5 = getelementptr inbounds %struct.task_struct, ptr %call4, i32 0, i32 122, !dbg !2863
  call void @_raw_spin_unlock(ptr noundef %pi_lock5) #14, !dbg !2863
  %6 = load ptr, ptr %owner, align 8, !dbg !2864
  %tobool = icmp ne ptr %6, null, !dbg !2864
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2866

lor.lhs.false:                                    ; preds = %do.end
  %7 = load i8, ptr %is_top_waiter, align 1, !dbg !2867, !range !2426, !noundef !440
  %tobool6 = trunc i8 %7 to i1, !dbg !2867
  br i1 %tobool6, label %if.end, label %if.then, !dbg !2868

if.then:                                          ; preds = %lor.lhs.false, %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2869

if.end:                                           ; preds = %lor.lhs.false
  %8 = load ptr, ptr %owner, align 8, !dbg !2870
  %pi_lock7 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 122, !dbg !2870
  call void @_raw_spin_lock(ptr noundef %pi_lock7) #14, !dbg !2870
  %9 = load ptr, ptr %owner, align 8, !dbg !2871
  %10 = load ptr, ptr %waiter.addr, align 8, !dbg !2872
  call void @rt_mutex_dequeue_pi(ptr noundef %9, ptr noundef %10) #14, !dbg !2873
  %11 = load ptr, ptr %lock.addr, align 8, !dbg !2874
  %call8 = call i32 @rt_mutex_has_waiters(ptr noundef %11) #14, !dbg !2876
  %tobool9 = icmp ne i32 %call8, 0, !dbg !2876
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !2877

if.then10:                                        ; preds = %if.end
  %12 = load ptr, ptr %owner, align 8, !dbg !2878
  %13 = load ptr, ptr %lock.addr, align 8, !dbg !2879
  %call11 = call ptr @rt_mutex_top_waiter(ptr noundef %13) #14, !dbg !2880
  call void @rt_mutex_enqueue_pi(ptr noundef %12, ptr noundef %call11) #14, !dbg !2881
  br label %if.end12, !dbg !2881

if.end12:                                         ; preds = %if.then10, %if.end
  %14 = load ptr, ptr %lock.addr, align 8, !dbg !2882
  %15 = load ptr, ptr %owner, align 8, !dbg !2883
  call void @rt_mutex_adjust_prio(ptr noundef %14, ptr noundef %15) #14, !dbg !2884
  %16 = load ptr, ptr %owner, align 8, !dbg !2885
  %call13 = call ptr @task_blocked_on_lock(ptr noundef %16) #14, !dbg !2886
  store ptr %call13, ptr %next_lock, align 8, !dbg !2887
  %17 = load ptr, ptr %owner, align 8, !dbg !2888
  %pi_lock14 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 122, !dbg !2888
  call void @_raw_spin_unlock(ptr noundef %pi_lock14) #14, !dbg !2888
  %18 = load ptr, ptr %next_lock, align 8, !dbg !2889
  %tobool15 = icmp ne ptr %18, null, !dbg !2889
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !2891

if.then16:                                        ; preds = %if.end12
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2892

if.end17:                                         ; preds = %if.end12
  %19 = load ptr, ptr %owner, align 8, !dbg !2893
  %call18 = call ptr @get_task_struct(ptr noundef %19) #14, !dbg !2894
  %20 = load ptr, ptr %lock.addr, align 8, !dbg !2895
  %wait_lock19 = getelementptr inbounds %struct.rt_mutex_base, ptr %20, i32 0, i32 0, !dbg !2895
  call void @_raw_spin_unlock_irq(ptr noundef %wait_lock19) #14, !dbg !2895
  %21 = load ptr, ptr %owner, align 8, !dbg !2896
  %22 = load ptr, ptr %lock.addr, align 8, !dbg !2897
  %23 = load ptr, ptr %next_lock, align 8, !dbg !2898
  %call20 = call ptr @get_current() #14, !dbg !2899
  %call21 = call i32 @rt_mutex_adjust_prio_chain(ptr noundef %21, i32 noundef 0, ptr noundef %22, ptr noundef %23, ptr noundef null, ptr noundef %call20) #14, !dbg !2900
  %24 = load ptr, ptr %lock.addr, align 8, !dbg !2901
  %wait_lock22 = getelementptr inbounds %struct.rt_mutex_base, ptr %24, i32 0, i32 0, !dbg !2901
  call void @_raw_spin_lock_irq(ptr noundef %wait_lock22) #14, !dbg !2901
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2902
  br label %cleanup, !dbg !2902

cleanup:                                          ; preds = %if.end17, %if.then16, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_lock) #15, !dbg !2902
  call void @llvm.lifetime.end.p0(i64 8, ptr %owner) #15, !dbg !2902
  call void @llvm.lifetime.end.p0(i64 1, ptr %is_top_waiter) #15, !dbg !2902
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2902

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2903 dso_local void @_raw_spin_unlock_irq(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @rt_mutex_wait_proxy_lock(ptr noundef %lock, ptr noundef %to, ptr noundef %waiter) #0 section ".sched.text" align 16 !dbg !2904 {
entry:
  %lock.addr = alloca ptr, align 8
  %to.addr = alloca ptr, align 8
  %waiter.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %__ai_ptr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %__ret = alloca i32, align 4
  %tmp10 = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2913, metadata !DIExpression()), !dbg !2925
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !2914, metadata !DIExpression()), !dbg !2926
  store ptr %waiter, ptr %waiter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %waiter.addr, metadata !2915, metadata !DIExpression()), !dbg !2927
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !2928
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2916, metadata !DIExpression()), !dbg !2929
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2930
  %wait_lock = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 0, !dbg !2930
  call void @_raw_spin_lock_irq(ptr noundef %wait_lock) #14, !dbg !2930
  br label %do.body, !dbg !2931

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !2932

do.body1:                                         ; preds = %do.body
  br label %do.cond, !dbg !2933

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !2933

do.end:                                           ; preds = %do.cond
  br label %do.body2, !dbg !2932

do.body2:                                         ; preds = %do.end
  br label %do.body3, !dbg !2935

do.body3:                                         ; preds = %do.body2
  br label %do.cond4, !dbg !2936

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !2936

do.end5:                                          ; preds = %do.cond4
  br label %do.body6, !dbg !2935

do.body6:                                         ; preds = %do.end5
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #15, !dbg !2938
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !2917, metadata !DIExpression()), !dbg !2938
  %call = call ptr @get_current() #14, !dbg !2938
  %__state = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 1, !dbg !2938
  store ptr %__state, ptr %__ai_ptr, align 8, !dbg !2938
  br label %do.body7, !dbg !2938

do.body7:                                         ; preds = %do.body6
  br label %do.cond8, !dbg !2939

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !2939

do.end9:                                          ; preds = %do.cond8
  %1 = load ptr, ptr %__ai_ptr, align 8, !dbg !2938
  call void @instrument_atomic_read_write(ptr noundef %1, i64 noundef 4) #14, !dbg !2938
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #15, !dbg !2941
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !2923, metadata !DIExpression()), !dbg !2941
  store i32 1, ptr %__ret, align 4, !dbg !2941
  %2 = load i32, ptr %__ret, align 4, !dbg !2941
  %3 = load ptr, ptr %__ai_ptr, align 8, !dbg !2941
  %4 = call i32 asm sideeffect "xchgl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %3, i32 %2, ptr elementtype(i32) %3) #15, !dbg !2941, !srcloc !2942
  store i32 %4, ptr %__ret, align 4, !dbg !2941
  %5 = load i32, ptr %__ret, align 4, !dbg !2941
  store i32 %5, ptr %tmp10, align 4, !dbg !2941
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #15, !dbg !2938
  %6 = load i32, ptr %tmp10, align 4, !dbg !2941
  store i32 %6, ptr %tmp, align 4, !dbg !2938
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #15, !dbg !2943
  %7 = load i32, ptr %tmp, align 4, !dbg !2938
  br label %do.cond11, !dbg !2943

do.cond11:                                        ; preds = %do.end9
  br label %do.end12, !dbg !2943

do.end12:                                         ; preds = %do.cond11
  br label %do.cond13, !dbg !2935

do.cond13:                                        ; preds = %do.end12
  br label %do.end14, !dbg !2935

do.end14:                                         ; preds = %do.cond13
  br label %do.cond15, !dbg !2932

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !2932

do.end16:                                         ; preds = %do.cond15
  %8 = load ptr, ptr %lock.addr, align 8, !dbg !2944
  %9 = load ptr, ptr %to.addr, align 8, !dbg !2945
  %10 = load ptr, ptr %waiter.addr, align 8, !dbg !2946
  %call17 = call i32 @rt_mutex_slowlock_block(ptr noundef %8, ptr noundef null, i32 noundef 1, ptr noundef %9, ptr noundef %10) #14, !dbg !2947
  store i32 %call17, ptr %ret, align 4, !dbg !2948
  %11 = load ptr, ptr %lock.addr, align 8, !dbg !2949
  call void @fixup_rt_mutex_waiters(ptr noundef %11, i1 noundef zeroext true) #14, !dbg !2950
  %12 = load ptr, ptr %lock.addr, align 8, !dbg !2951
  %wait_lock18 = getelementptr inbounds %struct.rt_mutex_base, ptr %12, i32 0, i32 0, !dbg !2951
  call void @_raw_spin_unlock_irq(ptr noundef %wait_lock18) #14, !dbg !2951
  %13 = load i32, ptr %ret, align 4, !dbg !2952
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !2953
  ret i32 %13, !dbg !2954
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #3 align 16 !dbg !2955 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #15, !dbg !2966
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !2960, metadata !DIExpression()), !dbg !2966
  br label %do.body, !dbg !2966

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !2967
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2962, metadata !DIExpression()), !dbg !2967
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2967
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !2967
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !2966
  br label %do.cond, !dbg !2967

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2967

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #15, !dbg !2968
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !2964, metadata !DIExpression()), !dbg !2968
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #16, !dbg !2968, !srcloc !2969
  store i64 %1, ptr %pfo_val__, align 8, !dbg !2968
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !2968
  %3 = inttoptr i64 %2 to ptr, !dbg !2968
  store ptr %3, ptr %tmp, align 8, !dbg !2968
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #15, !dbg !2966
  %4 = load ptr, ptr %tmp, align 8, !dbg !2968
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !2966
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !2966
  store ptr %5, ptr %tmp1, align 8, !dbg !2966
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #15, !dbg !2970
  %6 = load ptr, ptr %tmp1, align 8, !dbg !2966
  ret ptr %6, !dbg !2971
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !2972 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2980, metadata !DIExpression()), !dbg !2982
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2981, metadata !DIExpression()), !dbg !2983
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2984
  %1 = load i64, ptr %size.addr, align 8, !dbg !2985
  %conv = trunc i64 %1 to i32, !dbg !2985
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #14, !dbg !2986
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2987
  %3 = load i64, ptr %size.addr, align 8, !dbg !2987
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #14, !dbg !2987
  ret void, !dbg !2988
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rt_mutex_slowlock_block(ptr noundef %lock, ptr noundef %ww_ctx, i32 noundef %state, ptr noundef %timeout, ptr noundef %waiter) #0 section ".sched.text" align 16 !dbg !2989 {
entry:
  %lock.addr = alloca ptr, align 8
  %ww_ctx.addr = alloca ptr, align 8
  %state.addr = alloca i32, align 4
  %timeout.addr = alloca ptr, align 8
  %waiter.addr = alloca ptr, align 8
  %rtm = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %owner = alloca ptr, align 8
  %ret = alloca i32, align 4
  %__ai_ptr = alloca ptr, align 8
  %tmp30 = alloca i32, align 4
  %__ret = alloca i32, align 4
  %tmp31 = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2993, metadata !DIExpression()), !dbg !3013
  store ptr %ww_ctx, ptr %ww_ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ww_ctx.addr, metadata !2994, metadata !DIExpression()), !dbg !3014
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !2995, metadata !DIExpression()), !dbg !3015
  store ptr %timeout, ptr %timeout.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timeout.addr, metadata !2996, metadata !DIExpression()), !dbg !3016
  store ptr %waiter, ptr %waiter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %waiter.addr, metadata !2997, metadata !DIExpression()), !dbg !3017
  call void @llvm.lifetime.start.p0(i64 8, ptr %rtm) #15, !dbg !3018
  call void @llvm.dbg.declare(metadata ptr %rtm, metadata !2998, metadata !DIExpression()), !dbg !3019
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !3020
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2999, metadata !DIExpression()), !dbg !3020
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !3020
  store ptr %0, ptr %__mptr, align 8, !dbg !3020
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3020
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !3020
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3020
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !3021
  %2 = load ptr, ptr %tmp, align 8, !dbg !3020
  store ptr %2, ptr %rtm, align 8, !dbg !3019
  call void @llvm.lifetime.start.p0(i64 8, ptr %owner) #15, !dbg !3022
  call void @llvm.dbg.declare(metadata ptr %owner, metadata !3001, metadata !DIExpression()), !dbg !3023
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !3024
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3002, metadata !DIExpression()), !dbg !3025
  store i32 0, ptr %ret, align 4, !dbg !3025
  br label %for.cond, !dbg !3026

for.cond:                                         ; preds = %do.end37, %entry
  %3 = load ptr, ptr %lock.addr, align 8, !dbg !3027
  %call = call ptr @get_current() #14, !dbg !3029
  %4 = load ptr, ptr %waiter.addr, align 8, !dbg !3030
  %call1 = call i32 @try_to_take_rt_mutex(ptr noundef %3, ptr noundef %call, ptr noundef %4) #14, !dbg !3031
  %tobool = icmp ne i32 %call1, 0, !dbg !3031
  br i1 %tobool, label %if.then, label %if.end, !dbg !3032

if.then:                                          ; preds = %for.cond
  br label %for.end, !dbg !3033

if.end:                                           ; preds = %for.cond
  %5 = load ptr, ptr %timeout.addr, align 8, !dbg !3034
  %tobool2 = icmp ne ptr %5, null, !dbg !3034
  br i1 %tobool2, label %land.lhs.true, label %if.end5, !dbg !3036

land.lhs.true:                                    ; preds = %if.end
  %6 = load ptr, ptr %timeout.addr, align 8, !dbg !3037
  %task = getelementptr inbounds %struct.hrtimer_sleeper, ptr %6, i32 0, i32 1, !dbg !3038
  %7 = load ptr, ptr %task, align 8, !dbg !3038
  %tobool3 = icmp ne ptr %7, null, !dbg !3037
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !3039

if.then4:                                         ; preds = %land.lhs.true
  store i32 -110, ptr %ret, align 4, !dbg !3040
  br label %for.end, !dbg !3042

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %8 = load i32, ptr %state.addr, align 4, !dbg !3043
  %call6 = call ptr @get_current() #14, !dbg !3045
  %call7 = call i32 @signal_pending_state(i32 noundef %8, ptr noundef %call6) #14, !dbg !3046
  %tobool8 = icmp ne i32 %call7, 0, !dbg !3046
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !3047

if.then9:                                         ; preds = %if.end5
  store i32 -4, ptr %ret, align 4, !dbg !3048
  br label %for.end, !dbg !3050

if.end10:                                         ; preds = %if.end5
  %9 = load ptr, ptr %waiter.addr, align 8, !dbg !3051
  %10 = load ptr, ptr %lock.addr, align 8, !dbg !3053
  %call11 = call ptr @rt_mutex_top_waiter(ptr noundef %10) #14, !dbg !3054
  %cmp = icmp eq ptr %9, %call11, !dbg !3055
  br i1 %cmp, label %if.then12, label %if.else, !dbg !3056

if.then12:                                        ; preds = %if.end10
  %11 = load ptr, ptr %lock.addr, align 8, !dbg !3057
  %call13 = call ptr @rt_mutex_owner(ptr noundef %11) #14, !dbg !3058
  store ptr %call13, ptr %owner, align 8, !dbg !3059
  br label %if.end14, !dbg !3060

if.else:                                          ; preds = %if.end10
  store ptr null, ptr %owner, align 8, !dbg !3061
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then12
  %12 = load ptr, ptr %lock.addr, align 8, !dbg !3062
  %wait_lock = getelementptr inbounds %struct.rt_mutex_base, ptr %12, i32 0, i32 0, !dbg !3062
  call void @_raw_spin_unlock_irq(ptr noundef %wait_lock) #14, !dbg !3062
  %13 = load ptr, ptr %owner, align 8, !dbg !3063
  %tobool15 = icmp ne ptr %13, null, !dbg !3063
  br i1 %tobool15, label %lor.lhs.false, label %if.then17, !dbg !3065

lor.lhs.false:                                    ; preds = %if.end14
  %14 = load ptr, ptr %lock.addr, align 8, !dbg !3066
  %15 = load ptr, ptr %waiter.addr, align 8, !dbg !3067
  %16 = load ptr, ptr %owner, align 8, !dbg !3068
  %call16 = call zeroext i1 @rtmutex_spin_on_owner(ptr noundef %14, ptr noundef %15, ptr noundef %16) #14, !dbg !3069
  br i1 %call16, label %if.end18, label %if.then17, !dbg !3070

if.then17:                                        ; preds = %lor.lhs.false, %if.end14
  call void @schedule() #14, !dbg !3071
  br label %if.end18, !dbg !3071

if.end18:                                         ; preds = %if.then17, %lor.lhs.false
  %17 = load ptr, ptr %lock.addr, align 8, !dbg !3072
  %wait_lock19 = getelementptr inbounds %struct.rt_mutex_base, ptr %17, i32 0, i32 0, !dbg !3072
  call void @_raw_spin_lock_irq(ptr noundef %wait_lock19) #14, !dbg !3072
  br label %do.body, !dbg !3073

do.body:                                          ; preds = %if.end18
  br label %do.body20, !dbg !3074

do.body20:                                        ; preds = %do.body
  br label %do.cond, !dbg !3075

do.cond:                                          ; preds = %do.body20
  br label %do.end, !dbg !3075

do.end:                                           ; preds = %do.cond
  br label %do.body21, !dbg !3074

do.body21:                                        ; preds = %do.end
  br label %do.body22, !dbg !3077

do.body22:                                        ; preds = %do.body21
  br label %do.cond23, !dbg !3078

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !3078

do.end24:                                         ; preds = %do.cond23
  br label %do.body25, !dbg !3077

do.body25:                                        ; preds = %do.end24
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #15, !dbg !3080
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !3003, metadata !DIExpression()), !dbg !3080
  %call26 = call ptr @get_current() #14, !dbg !3080
  %__state = getelementptr inbounds %struct.task_struct, ptr %call26, i32 0, i32 1, !dbg !3080
  store ptr %__state, ptr %__ai_ptr, align 8, !dbg !3080
  br label %do.body27, !dbg !3080

do.body27:                                        ; preds = %do.body25
  br label %do.cond28, !dbg !3081

do.cond28:                                        ; preds = %do.body27
  br label %do.end29, !dbg !3081

do.end29:                                         ; preds = %do.cond28
  %18 = load ptr, ptr %__ai_ptr, align 8, !dbg !3080
  call void @instrument_atomic_read_write(ptr noundef %18, i64 noundef 4) #14, !dbg !3080
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #15, !dbg !3083
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !3011, metadata !DIExpression()), !dbg !3083
  %19 = load i32, ptr %state.addr, align 4, !dbg !3083
  store i32 %19, ptr %__ret, align 4, !dbg !3083
  %20 = load i32, ptr %__ret, align 4, !dbg !3083
  %21 = load ptr, ptr %__ai_ptr, align 8, !dbg !3083
  %22 = call i32 asm sideeffect "xchgl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %21, i32 %20, ptr elementtype(i32) %21) #15, !dbg !3083, !srcloc !3084
  store i32 %22, ptr %__ret, align 4, !dbg !3083
  %23 = load i32, ptr %__ret, align 4, !dbg !3083
  store i32 %23, ptr %tmp31, align 4, !dbg !3083
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #15, !dbg !3080
  %24 = load i32, ptr %tmp31, align 4, !dbg !3083
  store i32 %24, ptr %tmp30, align 4, !dbg !3080
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #15, !dbg !3085
  %25 = load i32, ptr %tmp30, align 4, !dbg !3080
  br label %do.cond32, !dbg !3085

do.cond32:                                        ; preds = %do.end29
  br label %do.end33, !dbg !3085

do.end33:                                         ; preds = %do.cond32
  br label %do.cond34, !dbg !3077

do.cond34:                                        ; preds = %do.end33
  br label %do.end35, !dbg !3077

do.end35:                                         ; preds = %do.cond34
  br label %do.cond36, !dbg !3074

do.cond36:                                        ; preds = %do.end35
  br label %do.end37, !dbg !3074

do.end37:                                         ; preds = %do.cond36
  br label %for.cond, !dbg !3086, !llvm.loop !3087

for.end:                                          ; preds = %if.then9, %if.then4, %if.then
  br label %do.body38, !dbg !3091

do.body38:                                        ; preds = %for.end
  br label %do.body39, !dbg !3092

do.body39:                                        ; preds = %do.body38
  br label %do.cond40, !dbg !3094

do.cond40:                                        ; preds = %do.body39
  br label %do.end41, !dbg !3094

do.end41:                                         ; preds = %do.cond40
  br label %do.body42, !dbg !3092

do.body42:                                        ; preds = %do.end41
  br label %do.body43, !dbg !3096

do.body43:                                        ; preds = %do.body42
  br label %do.cond44, !dbg !3098

do.cond44:                                        ; preds = %do.body43
  br label %do.end45, !dbg !3098

do.end45:                                         ; preds = %do.cond44
  br label %do.body46, !dbg !3096

do.body46:                                        ; preds = %do.end45
  %call47 = call ptr @get_current() #14, !dbg !3100
  %__state48 = getelementptr inbounds %struct.task_struct, ptr %call47, i32 0, i32 1, !dbg !3100
  store volatile i32 0, ptr %__state48, align 8, !dbg !3100
  br label %do.cond49, !dbg !3100

do.cond49:                                        ; preds = %do.body46
  br label %do.end50, !dbg !3100

do.end50:                                         ; preds = %do.cond49
  br label %do.cond51, !dbg !3096

do.cond51:                                        ; preds = %do.end50
  br label %do.end52, !dbg !3096

do.end52:                                         ; preds = %do.cond51
  br label %do.cond53, !dbg !3092

do.cond53:                                        ; preds = %do.end52
  br label %do.end54, !dbg !3092

do.end54:                                         ; preds = %do.cond53
  %26 = load i32, ptr %ret, align 4, !dbg !3102
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !3103
  call void @llvm.lifetime.end.p0(i64 8, ptr %owner) #15, !dbg !3103
  call void @llvm.lifetime.end.p0(i64 8, ptr %rtm) #15, !dbg !3103
  ret i32 %26, !dbg !3104
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fixup_rt_mutex_waiters(ptr noundef %lock, i1 noundef zeroext %acquire_lock) #3 align 16 !dbg !3105 {
entry:
  %lock.addr = alloca ptr, align 8
  %acquire_lock.addr = alloca i8, align 1
  %owner = alloca i64, align 8
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ai_ptr = alloca ptr, align 8
  %tmp6 = alloca i64, align 8
  %__ret = alloca i64, align 8
  %tmp8 = alloca i64, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !3109, metadata !DIExpression()), !dbg !3120
  %frombool = zext i1 %acquire_lock to i8
  store i8 %frombool, ptr %acquire_lock.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %acquire_lock.addr, metadata !3110, metadata !DIExpression()), !dbg !3121
  call void @llvm.lifetime.start.p0(i64 8, ptr %owner) #15, !dbg !3122
  call void @llvm.dbg.declare(metadata ptr %owner, metadata !3111, metadata !DIExpression()), !dbg !3123
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15, !dbg !3122
  call void @llvm.dbg.declare(metadata ptr %p, metadata !3112, metadata !DIExpression()), !dbg !3124
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !3125
  %owner1 = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 2, !dbg !3126
  store ptr %owner1, ptr %p, align 8, !dbg !3124
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !3127
  %call = call i32 @rt_mutex_has_waiters(ptr noundef %1) #14, !dbg !3129
  %tobool = icmp ne i32 %call, 0, !dbg !3129
  br i1 %tobool, label %if.then, label %if.end, !dbg !3130

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3131

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !3132

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !3134

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3134

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %p, align 8, !dbg !3132
  %3 = load volatile i64, ptr %2, align 8, !dbg !3132
  store i64 %3, ptr %tmp, align 8, !dbg !3134
  %4 = load i64, ptr %tmp, align 8, !dbg !3132
  store i64 %4, ptr %owner, align 8, !dbg !3136
  %5 = load i64, ptr %owner, align 8, !dbg !3137
  %and = and i64 %5, 1, !dbg !3138
  %tobool2 = icmp ne i64 %and, 0, !dbg !3138
  br i1 %tobool2, label %if.then3, label %if.end20, !dbg !3139

if.then3:                                         ; preds = %do.end
  %6 = load i8, ptr %acquire_lock.addr, align 1, !dbg !3140, !range !2426, !noundef !440
  %tobool4 = trunc i8 %6 to i1, !dbg !3140
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !3141

if.then5:                                         ; preds = %if.then3
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #15, !dbg !3142
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !3113, metadata !DIExpression()), !dbg !3142
  %7 = load ptr, ptr %p, align 8, !dbg !3142
  store ptr %7, ptr %__ai_ptr, align 8, !dbg !3142
  %8 = load ptr, ptr %__ai_ptr, align 8, !dbg !3142
  call void @instrument_atomic_read_write(ptr noundef %8, i64 noundef 8) #14, !dbg !3142
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #15, !dbg !3143
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !3118, metadata !DIExpression()), !dbg !3143
  %9 = load i64, ptr %owner, align 8, !dbg !3143
  %and7 = and i64 %9, -2, !dbg !3143
  store i64 %and7, ptr %__ret, align 8, !dbg !3143
  %10 = load i64, ptr %__ret, align 8, !dbg !3143
  %11 = load ptr, ptr %__ai_ptr, align 8, !dbg !3143
  %12 = call i64 asm sideeffect "xchgq ${0:q}, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %11, i64 %10, ptr elementtype(i64) %11) #15, !dbg !3143, !srcloc !3144
  store i64 %12, ptr %__ret, align 8, !dbg !3143
  %13 = load i64, ptr %__ret, align 8, !dbg !3143
  store i64 %13, ptr %tmp8, align 8, !dbg !3143
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #15, !dbg !3142
  %14 = load i64, ptr %tmp8, align 8, !dbg !3143
  store i64 %14, ptr %tmp6, align 8, !dbg !3142
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #15, !dbg !3145
  %15 = load i64, ptr %tmp6, align 8, !dbg !3142
  br label %if.end19, !dbg !3145

if.else:                                          ; preds = %if.then3
  br label %do.body9, !dbg !3146

do.body9:                                         ; preds = %if.else
  br label %do.body10, !dbg !3147

do.body10:                                        ; preds = %do.body9
  br label %do.cond11, !dbg !3149

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !3149

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !3147

do.body13:                                        ; preds = %do.end12
  %16 = load i64, ptr %owner, align 8, !dbg !3151
  %and14 = and i64 %16, -2, !dbg !3151
  %17 = load ptr, ptr %p, align 8, !dbg !3151
  store volatile i64 %and14, ptr %17, align 8, !dbg !3151
  br label %do.cond15, !dbg !3151

do.cond15:                                        ; preds = %do.body13
  br label %do.end16, !dbg !3151

do.end16:                                         ; preds = %do.cond15
  br label %do.cond17, !dbg !3147

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !3147

do.end18:                                         ; preds = %do.cond17
  br label %if.end19

if.end19:                                         ; preds = %do.end18, %if.then5
  br label %if.end20, !dbg !3153

if.end20:                                         ; preds = %if.end19, %do.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3154
  br label %cleanup, !dbg !3154

cleanup:                                          ; preds = %if.end20, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15, !dbg !3154
  call void @llvm.lifetime.end.p0(i64 8, ptr %owner) #15, !dbg !3154
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !3154

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @rt_mutex_cleanup_proxy_lock(ptr noundef %lock, ptr noundef %waiter) #0 section ".sched.text" align 16 !dbg !3155 {
entry:
  %lock.addr = alloca ptr, align 8
  %waiter.addr = alloca ptr, align 8
  %cleanup = alloca i8, align 1
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !3159, metadata !DIExpression()), !dbg !3162
  store ptr %waiter, ptr %waiter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %waiter.addr, metadata !3160, metadata !DIExpression()), !dbg !3163
  call void @llvm.lifetime.start.p0(i64 1, ptr %cleanup) #15, !dbg !3164
  call void @llvm.dbg.declare(metadata ptr %cleanup, metadata !3161, metadata !DIExpression()), !dbg !3165
  store i8 0, ptr %cleanup, align 1, !dbg !3165
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !3166
  %wait_lock = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 0, !dbg !3166
  call void @_raw_spin_lock_irq(ptr noundef %wait_lock) #14, !dbg !3166
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !3167
  %call = call ptr @get_current() #14, !dbg !3168
  %2 = load ptr, ptr %waiter.addr, align 8, !dbg !3169
  %call1 = call i32 @try_to_take_rt_mutex(ptr noundef %1, ptr noundef %call, ptr noundef %2) #14, !dbg !3170
  %3 = load ptr, ptr %lock.addr, align 8, !dbg !3171
  %call2 = call ptr @rt_mutex_owner(ptr noundef %3) #14, !dbg !3173
  %call3 = call ptr @get_current() #14, !dbg !3174
  %cmp = icmp ne ptr %call2, %call3, !dbg !3175
  br i1 %cmp, label %if.then, label %if.end, !dbg !3176

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %lock.addr, align 8, !dbg !3177
  %5 = load ptr, ptr %waiter.addr, align 8, !dbg !3179
  call void @remove_waiter(ptr noundef %4, ptr noundef %5) #14, !dbg !3180
  store i8 1, ptr %cleanup, align 1, !dbg !3181
  br label %if.end, !dbg !3182

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %lock.addr, align 8, !dbg !3183
  call void @fixup_rt_mutex_waiters(ptr noundef %6, i1 noundef zeroext false) #14, !dbg !3184
  %7 = load ptr, ptr %lock.addr, align 8, !dbg !3185
  %wait_lock4 = getelementptr inbounds %struct.rt_mutex_base, ptr %7, i32 0, i32 0, !dbg !3185
  call void @_raw_spin_unlock_irq(ptr noundef %wait_lock4) #14, !dbg !3185
  %8 = load i8, ptr %cleanup, align 1, !dbg !3186, !range !2426, !noundef !440
  %tobool = trunc i8 %8 to i1, !dbg !3186
  call void @llvm.lifetime.end.p0(i64 1, ptr %cleanup) #15, !dbg !3187
  ret i1 %tobool, !dbg !3188
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rt_mutex_adjust_pi(ptr noundef %task) #0 section ".sched.text" align 16 !dbg !3189 {
entry:
  %task.addr = alloca ptr, align 8
  %waiter = alloca ptr, align 8
  %next_lock = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %.compoundliteral = alloca %struct.rt_waiter_node, align 8
  %__dummy7 = alloca i64, align 8
  %__dummy28 = alloca i64, align 8
  %tmp11 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy16 = alloca i64, align 8
  %__dummy217 = alloca i64, align 8
  %tmp20 = alloca i32, align 4
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !3191, metadata !DIExpression()), !dbg !3209
  call void @llvm.lifetime.start.p0(i64 8, ptr %waiter) #15, !dbg !3210
  call void @llvm.dbg.declare(metadata ptr %waiter, metadata !3192, metadata !DIExpression()), !dbg !3211
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_lock) #15, !dbg !3212
  call void @llvm.dbg.declare(metadata ptr %next_lock, metadata !3193, metadata !DIExpression()), !dbg !3213
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !3214
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !3194, metadata !DIExpression()), !dbg !3215
  br label %do.body, !dbg !3216

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !3217
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !3195, metadata !DIExpression()), !dbg !3217
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !3217
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !3198, metadata !DIExpression()), !dbg !3217
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !3217
  %conv = zext i1 %cmp to i32, !dbg !3217
  store i32 1, ptr %tmp, align 4, !dbg !3217
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !3218
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !3218
  %0 = load i32, ptr %tmp, align 4, !dbg !3217
  %1 = load ptr, ptr %task.addr, align 8, !dbg !3218
  %pi_lock = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 122, !dbg !3218
  %call = call i64 @_raw_spin_lock_irqsave(ptr noundef %pi_lock) #14, !dbg !3218
  store i64 %call, ptr %flags, align 8, !dbg !3218
  br label %do.cond, !dbg !3218

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3218

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %task.addr, align 8, !dbg !3219
  %pi_blocked_on = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 126, !dbg !3220
  %3 = load ptr, ptr %pi_blocked_on, align 8, !dbg !3220
  store ptr %3, ptr %waiter, align 8, !dbg !3221
  %4 = load ptr, ptr %waiter, align 8, !dbg !3222
  %tobool = icmp ne ptr %4, null, !dbg !3222
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3223

lor.lhs.false:                                    ; preds = %do.end
  %5 = load ptr, ptr %waiter, align 8, !dbg !3224
  %tree = getelementptr inbounds %struct.rt_mutex_waiter, ptr %5, i32 0, i32 0, !dbg !3225
  %entry1 = getelementptr inbounds %struct.rt_waiter_node, ptr %.compoundliteral, i32 0, i32 0, !dbg !3226
  call void @llvm.memset.p0.i64(ptr align 8 %entry1, i8 0, i64 24, i1 false), !dbg !3226
  %prio = getelementptr inbounds %struct.rt_waiter_node, ptr %.compoundliteral, i32 0, i32 1, !dbg !3226
  %6 = load ptr, ptr %task.addr, align 8, !dbg !3226
  %call2 = call i32 @__waiter_prio(ptr noundef %6) #14, !dbg !3226
  store i32 %call2, ptr %prio, align 8, !dbg !3226
  %deadline = getelementptr inbounds %struct.rt_waiter_node, ptr %.compoundliteral, i32 0, i32 2, !dbg !3226
  %7 = load ptr, ptr %task.addr, align 8, !dbg !3226
  %dl = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 20, !dbg !3226
  %deadline3 = getelementptr inbounds %struct.sched_dl_entity, ptr %dl, i32 0, i32 7, !dbg !3226
  %8 = load i64, ptr %deadline3, align 8, !dbg !3226
  store i64 %8, ptr %deadline, align 8, !dbg !3226
  %call4 = call i32 @rt_waiter_node_equal(ptr noundef %tree, ptr noundef %.compoundliteral) #14, !dbg !3227
  %tobool5 = icmp ne i32 %call4, 0, !dbg !3227
  br i1 %tobool5, label %if.then, label %if.end, !dbg !3228

if.then:                                          ; preds = %lor.lhs.false, %do.end
  br label %do.body6, !dbg !3229

do.body6:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy7) #15, !dbg !3230
  call void @llvm.dbg.declare(metadata ptr %__dummy7, metadata !3199, metadata !DIExpression()), !dbg !3230
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy28) #15, !dbg !3230
  call void @llvm.dbg.declare(metadata ptr %__dummy28, metadata !3204, metadata !DIExpression()), !dbg !3230
  %cmp9 = icmp eq ptr %__dummy7, %__dummy28, !dbg !3230
  %conv10 = zext i1 %cmp9 to i32, !dbg !3230
  store i32 1, ptr %tmp11, align 4, !dbg !3230
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy28) #15, !dbg !3231
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy7) #15, !dbg !3231
  %9 = load i32, ptr %tmp11, align 4, !dbg !3230
  %10 = load ptr, ptr %task.addr, align 8, !dbg !3231
  %pi_lock12 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 122, !dbg !3231
  %11 = load i64, ptr %flags, align 8, !dbg !3231
  call void @_raw_spin_unlock_irqrestore(ptr noundef %pi_lock12, i64 noundef %11) #14, !dbg !3231
  br label %do.cond13, !dbg !3231

do.cond13:                                        ; preds = %do.body6
  br label %do.end14, !dbg !3231

do.end14:                                         ; preds = %do.cond13
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3232

if.end:                                           ; preds = %lor.lhs.false
  %12 = load ptr, ptr %waiter, align 8, !dbg !3233
  %lock = getelementptr inbounds %struct.rt_mutex_waiter, ptr %12, i32 0, i32 3, !dbg !3234
  %13 = load ptr, ptr %lock, align 8, !dbg !3234
  store ptr %13, ptr %next_lock, align 8, !dbg !3235
  br label %do.body15, !dbg !3236

do.body15:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy16) #15, !dbg !3237
  call void @llvm.dbg.declare(metadata ptr %__dummy16, metadata !3205, metadata !DIExpression()), !dbg !3237
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy217) #15, !dbg !3237
  call void @llvm.dbg.declare(metadata ptr %__dummy217, metadata !3208, metadata !DIExpression()), !dbg !3237
  %cmp18 = icmp eq ptr %__dummy16, %__dummy217, !dbg !3237
  %conv19 = zext i1 %cmp18 to i32, !dbg !3237
  store i32 1, ptr %tmp20, align 4, !dbg !3237
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy217) #15, !dbg !3238
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy16) #15, !dbg !3238
  %14 = load i32, ptr %tmp20, align 4, !dbg !3237
  %15 = load ptr, ptr %task.addr, align 8, !dbg !3238
  %pi_lock21 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 122, !dbg !3238
  %16 = load i64, ptr %flags, align 8, !dbg !3238
  call void @_raw_spin_unlock_irqrestore(ptr noundef %pi_lock21, i64 noundef %16) #14, !dbg !3238
  br label %do.cond22, !dbg !3238

do.cond22:                                        ; preds = %do.body15
  br label %do.end23, !dbg !3238

do.end23:                                         ; preds = %do.cond22
  %17 = load ptr, ptr %task.addr, align 8, !dbg !3239
  %call24 = call ptr @get_task_struct(ptr noundef %17) #14, !dbg !3240
  %18 = load ptr, ptr %task.addr, align 8, !dbg !3241
  %19 = load ptr, ptr %next_lock, align 8, !dbg !3242
  %20 = load ptr, ptr %task.addr, align 8, !dbg !3243
  %call25 = call i32 @rt_mutex_adjust_prio_chain(ptr noundef %18, i32 noundef 0, ptr noundef null, ptr noundef %19, ptr noundef null, ptr noundef %20) #14, !dbg !3244
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3245
  br label %cleanup, !dbg !3245

cleanup:                                          ; preds = %do.end23, %do.end14
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !3245
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_lock) #15, !dbg !3245
  call void @llvm.lifetime.end.p0(i64 8, ptr %waiter) #15, !dbg !3245
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !3245

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rt_waiter_node_equal(ptr noundef %left, ptr noundef %right) #3 align 16 !dbg !3246 {
entry:
  %retval = alloca i32, align 4
  %left.addr = alloca ptr, align 8
  %right.addr = alloca ptr, align 8
  store ptr %left, ptr %left.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %left.addr, metadata !3250, metadata !DIExpression()), !dbg !3252
  store ptr %right, ptr %right.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %right.addr, metadata !3251, metadata !DIExpression()), !dbg !3253
  %0 = load ptr, ptr %left.addr, align 8, !dbg !3254
  %prio = getelementptr inbounds %struct.rt_waiter_node, ptr %0, i32 0, i32 1, !dbg !3256
  %1 = load i32, ptr %prio, align 8, !dbg !3256
  %2 = load ptr, ptr %right.addr, align 8, !dbg !3257
  %prio1 = getelementptr inbounds %struct.rt_waiter_node, ptr %2, i32 0, i32 1, !dbg !3258
  %3 = load i32, ptr %prio1, align 8, !dbg !3258
  %cmp = icmp ne i32 %1, %3, !dbg !3259
  br i1 %cmp, label %if.then, label %if.end, !dbg !3260

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3261
  br label %return, !dbg !3261

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %left.addr, align 8, !dbg !3262
  %prio2 = getelementptr inbounds %struct.rt_waiter_node, ptr %4, i32 0, i32 1, !dbg !3264
  %5 = load i32, ptr %prio2, align 8, !dbg !3264
  %call = call i32 @dl_prio(i32 noundef %5) #14, !dbg !3265
  %tobool = icmp ne i32 %call, 0, !dbg !3265
  br i1 %tobool, label %if.then3, label %if.end6, !dbg !3266

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %left.addr, align 8, !dbg !3267
  %deadline = getelementptr inbounds %struct.rt_waiter_node, ptr %6, i32 0, i32 2, !dbg !3268
  %7 = load i64, ptr %deadline, align 8, !dbg !3268
  %8 = load ptr, ptr %right.addr, align 8, !dbg !3269
  %deadline4 = getelementptr inbounds %struct.rt_waiter_node, ptr %8, i32 0, i32 2, !dbg !3270
  %9 = load i64, ptr %deadline4, align 8, !dbg !3270
  %cmp5 = icmp eq i64 %7, %9, !dbg !3271
  %conv = zext i1 %cmp5 to i32, !dbg !3271
  store i32 %conv, ptr %retval, align 4, !dbg !3272
  br label %return, !dbg !3272

if.end6:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !3273
  br label %return, !dbg !3273

return:                                           ; preds = %if.end6, %if.then3, %if.then
  %10 = load i32, ptr %retval, align 4, !dbg !3274
  ret i32 %10, !dbg !3274
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__waiter_prio(ptr noundef %task) #3 align 16 !dbg !3275 {
entry:
  %retval = alloca i32, align 4
  %task.addr = alloca ptr, align 8
  %prio = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !3279, metadata !DIExpression()), !dbg !3281
  call void @llvm.lifetime.start.p0(i64 4, ptr %prio) #15, !dbg !3282
  call void @llvm.dbg.declare(metadata ptr %prio, metadata !3280, metadata !DIExpression()), !dbg !3283
  %0 = load ptr, ptr %task.addr, align 8, !dbg !3284
  %prio1 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 14, !dbg !3285
  %1 = load i32, ptr %prio1, align 4, !dbg !3285
  store i32 %1, ptr %prio, align 4, !dbg !3283
  %2 = load i32, ptr %prio, align 4, !dbg !3286
  %call = call i32 @rt_prio(i32 noundef %2) #14, !dbg !3288
  %tobool = icmp ne i32 %call, 0, !dbg !3288
  br i1 %tobool, label %if.end, label %if.then, !dbg !3289

if.then:                                          ; preds = %entry
  store i32 120, ptr %retval, align 4, !dbg !3290
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3290

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %prio, align 4, !dbg !3291
  store i32 %3, ptr %retval, align 4, !dbg !3292
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3292

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %prio) #15, !dbg !3293
  %4 = load i32, ptr %retval, align 4, !dbg !3293
  ret i32 %4, !dbg !3293
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_task_struct(ptr noundef %t) #2 align 16 !dbg !3294 {
entry:
  %t.addr = alloca ptr, align 8
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !3298, metadata !DIExpression()), !dbg !3299
  %0 = load ptr, ptr %t.addr, align 8, !dbg !3300
  %usage = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 3, !dbg !3301
  call void @refcount_inc(ptr noundef %usage) #14, !dbg !3302
  %1 = load ptr, ptr %t.addr, align 8, !dbg !3303
  ret ptr %1, !dbg !3304
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rt_mutex_adjust_prio_chain(ptr noundef %task, i32 noundef %chwalk, ptr noundef %orig_lock, ptr noundef %next_lock, ptr noundef %orig_waiter, ptr noundef %top_task) #0 section ".sched.text" align 16 !dbg !2048 {
entry:
  %retval = alloca i32, align 4
  %task.addr = alloca ptr, align 8
  %chwalk.addr = alloca i32, align 4
  %orig_lock.addr = alloca ptr, align 8
  %next_lock.addr = alloca ptr, align 8
  %orig_waiter.addr = alloca ptr, align 8
  %top_task.addr = alloca ptr, align 8
  %waiter = alloca ptr, align 8
  %top_waiter = alloca ptr, align 8
  %prerequeue_top_waiter = alloca ptr, align 8
  %ret = alloca i32, align 4
  %depth = alloca i32, align 4
  %lock = alloca ptr, align 8
  %detect_deadlock = alloca i8, align 1
  %requeue = alloca i8, align 1
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.rt_waiter_node, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !2052, metadata !DIExpression()), !dbg !3305
  store i32 %chwalk, ptr %chwalk.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %chwalk.addr, metadata !2053, metadata !DIExpression()), !dbg !3306
  store ptr %orig_lock, ptr %orig_lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %orig_lock.addr, metadata !2054, metadata !DIExpression()), !dbg !3307
  store ptr %next_lock, ptr %next_lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next_lock.addr, metadata !2055, metadata !DIExpression()), !dbg !3308
  store ptr %orig_waiter, ptr %orig_waiter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %orig_waiter.addr, metadata !2056, metadata !DIExpression()), !dbg !3309
  store ptr %top_task, ptr %top_task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %top_task.addr, metadata !2057, metadata !DIExpression()), !dbg !3310
  call void @llvm.lifetime.start.p0(i64 8, ptr %waiter) #15, !dbg !3311
  call void @llvm.dbg.declare(metadata ptr %waiter, metadata !2058, metadata !DIExpression()), !dbg !3312
  call void @llvm.lifetime.start.p0(i64 8, ptr %top_waiter) #15, !dbg !3311
  call void @llvm.dbg.declare(metadata ptr %top_waiter, metadata !2059, metadata !DIExpression()), !dbg !3313
  %0 = load ptr, ptr %orig_waiter.addr, align 8, !dbg !3314
  store ptr %0, ptr %top_waiter, align 8, !dbg !3313
  call void @llvm.lifetime.start.p0(i64 8, ptr %prerequeue_top_waiter) #15, !dbg !3315
  call void @llvm.dbg.declare(metadata ptr %prerequeue_top_waiter, metadata !2060, metadata !DIExpression()), !dbg !3316
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !3317
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2061, metadata !DIExpression()), !dbg !3318
  store i32 0, ptr %ret, align 4, !dbg !3318
  call void @llvm.lifetime.start.p0(i64 4, ptr %depth) #15, !dbg !3317
  call void @llvm.dbg.declare(metadata ptr %depth, metadata !2062, metadata !DIExpression()), !dbg !3319
  store i32 0, ptr %depth, align 4, !dbg !3319
  call void @llvm.lifetime.start.p0(i64 8, ptr %lock) #15, !dbg !3320
  call void @llvm.dbg.declare(metadata ptr %lock, metadata !2063, metadata !DIExpression()), !dbg !3321
  call void @llvm.lifetime.start.p0(i64 1, ptr %detect_deadlock) #15, !dbg !3322
  call void @llvm.dbg.declare(metadata ptr %detect_deadlock, metadata !2064, metadata !DIExpression()), !dbg !3323
  call void @llvm.lifetime.start.p0(i64 1, ptr %requeue) #15, !dbg !3324
  call void @llvm.dbg.declare(metadata ptr %requeue, metadata !2065, metadata !DIExpression()), !dbg !3325
  store i8 1, ptr %requeue, align 1, !dbg !3325
  %1 = load ptr, ptr %orig_waiter.addr, align 8, !dbg !3326
  %2 = load i32, ptr %chwalk.addr, align 4, !dbg !3327
  %call = call zeroext i1 @rt_mutex_cond_detect_deadlock(ptr noundef %1, i32 noundef %2) #14, !dbg !3328
  %frombool = zext i1 %call to i8, !dbg !3329
  store i8 %frombool, ptr %detect_deadlock, align 1, !dbg !3329
  br label %again, !dbg !3330

again:                                            ; preds = %if.end110, %if.end71, %entry
  call void @llvm.dbg.label(metadata !2066), !dbg !3331
  %3 = load i32, ptr %depth, align 4, !dbg !3332
  %inc = add i32 %3, 1, !dbg !3332
  store i32 %inc, ptr %depth, align 4, !dbg !3332
  %4 = load i32, ptr @max_lock_depth, align 4, !dbg !3334
  %cmp = icmp sgt i32 %inc, %4, !dbg !3335
  br i1 %cmp, label %if.then, label %if.end5, !dbg !3336

if.then:                                          ; preds = %again
  %5 = load i32, ptr @rt_mutex_adjust_prio_chain.prev_max, align 4, !dbg !3337
  %6 = load i32, ptr @max_lock_depth, align 4, !dbg !3340
  %cmp1 = icmp ne i32 %5, %6, !dbg !3341
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !3342

if.then2:                                         ; preds = %if.then
  %7 = load i32, ptr @max_lock_depth, align 4, !dbg !3343
  store i32 %7, ptr @rt_mutex_adjust_prio_chain.prev_max, align 4, !dbg !3345
  br label %do.body, !dbg !3346

do.body:                                          ; preds = %if.then2
  br label %do.cond, !dbg !3348

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3348

do.end:                                           ; preds = %do.cond
  %8 = load i32, ptr @max_lock_depth, align 4, !dbg !3346
  %9 = load ptr, ptr %top_task.addr, align 8, !dbg !3346
  %comm = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 96, !dbg !3346
  %arraydecay = getelementptr inbounds [16 x i8], ptr %comm, i64 0, i64 0, !dbg !3346
  %10 = load ptr, ptr %top_task.addr, align 8, !dbg !3346
  %call3 = call i32 @task_pid_nr(ptr noundef %10) #14, !dbg !3346
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4, i32 noundef %8, ptr noundef %arraydecay, i32 noundef %call3) #17, !dbg !3346
  store i32 %call4, ptr %tmp, align 4, !dbg !3348
  %11 = load i32, ptr %tmp, align 4, !dbg !3346
  br label %if.end, !dbg !3350

if.end:                                           ; preds = %do.end, %if.then
  %12 = load ptr, ptr %task.addr, align 8, !dbg !3351
  call void @put_task_struct(ptr noundef %12) #14, !dbg !3352
  store i32 -35, ptr %retval, align 4, !dbg !3353
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3353

if.end5:                                          ; preds = %again
  br label %retry, !dbg !3334

retry:                                            ; preds = %if.then45, %if.end5
  call void @llvm.dbg.label(metadata !2067), !dbg !3354
  %13 = load ptr, ptr %task.addr, align 8, !dbg !3355
  %pi_lock = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 122, !dbg !3355
  call void @_raw_spin_lock_irq(ptr noundef %pi_lock) #14, !dbg !3355
  %14 = load ptr, ptr %task.addr, align 8, !dbg !3356
  %pi_blocked_on = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 126, !dbg !3357
  %15 = load ptr, ptr %pi_blocked_on, align 8, !dbg !3357
  store ptr %15, ptr %waiter, align 8, !dbg !3358
  %16 = load ptr, ptr %waiter, align 8, !dbg !3359
  %tobool = icmp ne ptr %16, null, !dbg !3359
  br i1 %tobool, label %if.end7, label %if.then6, !dbg !3361

if.then6:                                         ; preds = %retry
  br label %out_unlock_pi, !dbg !3362

if.end7:                                          ; preds = %retry
  %17 = load ptr, ptr %orig_waiter.addr, align 8, !dbg !3363
  %tobool8 = icmp ne ptr %17, null, !dbg !3363
  br i1 %tobool8, label %land.lhs.true, label %if.end12, !dbg !3365

land.lhs.true:                                    ; preds = %if.end7
  %18 = load ptr, ptr %orig_lock.addr, align 8, !dbg !3366
  %call9 = call ptr @rt_mutex_owner(ptr noundef %18) #14, !dbg !3367
  %tobool10 = icmp ne ptr %call9, null, !dbg !3367
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !3368

if.then11:                                        ; preds = %land.lhs.true
  br label %out_unlock_pi, !dbg !3369

if.end12:                                         ; preds = %land.lhs.true, %if.end7
  %19 = load ptr, ptr %next_lock.addr, align 8, !dbg !3370
  %20 = load ptr, ptr %waiter, align 8, !dbg !3372
  %lock13 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %20, i32 0, i32 3, !dbg !3373
  %21 = load ptr, ptr %lock13, align 8, !dbg !3373
  %cmp14 = icmp ne ptr %19, %21, !dbg !3374
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !3375

if.then15:                                        ; preds = %if.end12
  br label %out_unlock_pi, !dbg !3376

if.end16:                                         ; preds = %if.end12
  %22 = load ptr, ptr %top_waiter, align 8, !dbg !3377
  %tobool17 = icmp ne ptr %22, null, !dbg !3377
  br i1 %tobool17, label %if.then18, label %if.end30, !dbg !3379

if.then18:                                        ; preds = %if.end16
  %23 = load ptr, ptr %task.addr, align 8, !dbg !3380
  %call19 = call i32 @task_has_pi_waiters(ptr noundef %23) #14, !dbg !3383
  %tobool20 = icmp ne i32 %call19, 0, !dbg !3383
  br i1 %tobool20, label %if.end22, label %if.then21, !dbg !3384

if.then21:                                        ; preds = %if.then18
  br label %out_unlock_pi, !dbg !3385

if.end22:                                         ; preds = %if.then18
  %24 = load ptr, ptr %top_waiter, align 8, !dbg !3386
  %25 = load ptr, ptr %task.addr, align 8, !dbg !3388
  %call23 = call ptr @task_top_pi_waiter(ptr noundef %25) #14, !dbg !3389
  %cmp24 = icmp ne ptr %24, %call23, !dbg !3390
  br i1 %cmp24, label %if.then25, label %if.end29, !dbg !3391

if.then25:                                        ; preds = %if.end22
  %26 = load i8, ptr %detect_deadlock, align 1, !dbg !3392, !range !2426, !noundef !440
  %tobool26 = trunc i8 %26 to i1, !dbg !3392
  br i1 %tobool26, label %if.else, label %if.then27, !dbg !3395

if.then27:                                        ; preds = %if.then25
  br label %out_unlock_pi, !dbg !3396

if.else:                                          ; preds = %if.then25
  store i8 0, ptr %requeue, align 1, !dbg !3397
  br label %if.end28

if.end28:                                         ; preds = %if.else
  br label %if.end29, !dbg !3398

if.end29:                                         ; preds = %if.end28, %if.end22
  br label %if.end30, !dbg !3399

if.end30:                                         ; preds = %if.end29, %if.end16
  %27 = load ptr, ptr %waiter, align 8, !dbg !3400
  %tree = getelementptr inbounds %struct.rt_mutex_waiter, ptr %27, i32 0, i32 0, !dbg !3402
  %entry31 = getelementptr inbounds %struct.rt_waiter_node, ptr %.compoundliteral, i32 0, i32 0, !dbg !3403
  call void @llvm.memset.p0.i64(ptr align 8 %entry31, i8 0, i64 24, i1 false), !dbg !3403
  %prio = getelementptr inbounds %struct.rt_waiter_node, ptr %.compoundliteral, i32 0, i32 1, !dbg !3403
  %28 = load ptr, ptr %task.addr, align 8, !dbg !3403
  %call32 = call i32 @__waiter_prio(ptr noundef %28) #14, !dbg !3403
  store i32 %call32, ptr %prio, align 8, !dbg !3403
  %deadline = getelementptr inbounds %struct.rt_waiter_node, ptr %.compoundliteral, i32 0, i32 2, !dbg !3403
  %29 = load ptr, ptr %task.addr, align 8, !dbg !3403
  %dl = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 20, !dbg !3403
  %deadline33 = getelementptr inbounds %struct.sched_dl_entity, ptr %dl, i32 0, i32 7, !dbg !3403
  %30 = load i64, ptr %deadline33, align 8, !dbg !3403
  store i64 %30, ptr %deadline, align 8, !dbg !3403
  %call34 = call i32 @rt_waiter_node_equal(ptr noundef %tree, ptr noundef %.compoundliteral) #14, !dbg !3404
  %tobool35 = icmp ne i32 %call34, 0, !dbg !3404
  br i1 %tobool35, label %if.then36, label %if.end41, !dbg !3405

if.then36:                                        ; preds = %if.end30
  %31 = load i8, ptr %detect_deadlock, align 1, !dbg !3406, !range !2426, !noundef !440
  %tobool37 = trunc i8 %31 to i1, !dbg !3406
  br i1 %tobool37, label %if.else39, label %if.then38, !dbg !3409

if.then38:                                        ; preds = %if.then36
  br label %out_unlock_pi, !dbg !3410

if.else39:                                        ; preds = %if.then36
  store i8 0, ptr %requeue, align 1, !dbg !3411
  br label %if.end40

if.end40:                                         ; preds = %if.else39
  br label %if.end41, !dbg !3412

if.end41:                                         ; preds = %if.end40, %if.end30
  %32 = load ptr, ptr %waiter, align 8, !dbg !3413
  %lock42 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %32, i32 0, i32 3, !dbg !3414
  %33 = load ptr, ptr %lock42, align 8, !dbg !3414
  store ptr %33, ptr %lock, align 8, !dbg !3415
  %34 = load ptr, ptr %lock, align 8, !dbg !3416
  %wait_lock = getelementptr inbounds %struct.rt_mutex_base, ptr %34, i32 0, i32 0, !dbg !3416
  %call43 = call i32 @_raw_spin_trylock(ptr noundef %wait_lock) #14, !dbg !3416
  %tobool44 = icmp ne i32 %call43, 0, !dbg !3416
  br i1 %tobool44, label %if.end47, label %if.then45, !dbg !3418

if.then45:                                        ; preds = %if.end41
  %35 = load ptr, ptr %task.addr, align 8, !dbg !3419
  %pi_lock46 = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 122, !dbg !3419
  call void @_raw_spin_unlock_irq(ptr noundef %pi_lock46) #14, !dbg !3419
  call void @cpu_relax() #14, !dbg !3421
  br label %retry, !dbg !3422

if.end47:                                         ; preds = %if.end41
  %36 = load ptr, ptr %lock, align 8, !dbg !3423
  %37 = load ptr, ptr %orig_lock.addr, align 8, !dbg !3425
  %cmp48 = icmp eq ptr %36, %37, !dbg !3426
  br i1 %cmp48, label %if.then51, label %lor.lhs.false, !dbg !3427

lor.lhs.false:                                    ; preds = %if.end47
  %38 = load ptr, ptr %lock, align 8, !dbg !3428
  %call49 = call ptr @rt_mutex_owner(ptr noundef %38) #14, !dbg !3429
  %39 = load ptr, ptr %top_task.addr, align 8, !dbg !3430
  %cmp50 = icmp eq ptr %call49, %39, !dbg !3431
  br i1 %cmp50, label %if.then51, label %if.end53, !dbg !3432

if.then51:                                        ; preds = %lor.lhs.false, %if.end47
  store i32 -35, ptr %ret, align 4, !dbg !3433
  %40 = load ptr, ptr %lock, align 8, !dbg !3435
  %wait_lock52 = getelementptr inbounds %struct.rt_mutex_base, ptr %40, i32 0, i32 0, !dbg !3435
  call void @_raw_spin_unlock(ptr noundef %wait_lock52) #14, !dbg !3435
  br label %out_unlock_pi, !dbg !3436

if.end53:                                         ; preds = %lor.lhs.false
  %41 = load i8, ptr %requeue, align 1, !dbg !3437, !range !2426, !noundef !440
  %tobool54 = trunc i8 %41 to i1, !dbg !3437
  br i1 %tobool54, label %if.end72, label %if.then55, !dbg !3439

if.then55:                                        ; preds = %if.end53
  %42 = load ptr, ptr %task.addr, align 8, !dbg !3440
  %pi_lock56 = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 122, !dbg !3440
  call void @_raw_spin_unlock(ptr noundef %pi_lock56) #14, !dbg !3440
  %43 = load ptr, ptr %task.addr, align 8, !dbg !3442
  call void @put_task_struct(ptr noundef %43) #14, !dbg !3443
  %44 = load ptr, ptr %lock, align 8, !dbg !3444
  %call57 = call ptr @rt_mutex_owner(ptr noundef %44) #14, !dbg !3446
  %tobool58 = icmp ne ptr %call57, null, !dbg !3446
  br i1 %tobool58, label %if.end61, label %if.then59, !dbg !3447

if.then59:                                        ; preds = %if.then55
  %45 = load ptr, ptr %lock, align 8, !dbg !3448
  %wait_lock60 = getelementptr inbounds %struct.rt_mutex_base, ptr %45, i32 0, i32 0, !dbg !3448
  call void @_raw_spin_unlock_irq(ptr noundef %wait_lock60) #14, !dbg !3448
  store i32 0, ptr %retval, align 4, !dbg !3450
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3450

if.end61:                                         ; preds = %if.then55
  %46 = load ptr, ptr %lock, align 8, !dbg !3451
  %call62 = call ptr @rt_mutex_owner(ptr noundef %46) #14, !dbg !3452
  %call63 = call ptr @get_task_struct(ptr noundef %call62) #14, !dbg !3453
  store ptr %call63, ptr %task.addr, align 8, !dbg !3454
  %47 = load ptr, ptr %task.addr, align 8, !dbg !3455
  %pi_lock64 = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 122, !dbg !3455
  call void @_raw_spin_lock(ptr noundef %pi_lock64) #14, !dbg !3455
  %48 = load ptr, ptr %task.addr, align 8, !dbg !3456
  %call65 = call ptr @task_blocked_on_lock(ptr noundef %48) #14, !dbg !3457
  store ptr %call65, ptr %next_lock.addr, align 8, !dbg !3458
  %49 = load ptr, ptr %lock, align 8, !dbg !3459
  %call66 = call ptr @rt_mutex_top_waiter(ptr noundef %49) #14, !dbg !3460
  store ptr %call66, ptr %top_waiter, align 8, !dbg !3461
  %50 = load ptr, ptr %task.addr, align 8, !dbg !3462
  %pi_lock67 = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 122, !dbg !3462
  call void @_raw_spin_unlock(ptr noundef %pi_lock67) #14, !dbg !3462
  %51 = load ptr, ptr %lock, align 8, !dbg !3463
  %wait_lock68 = getelementptr inbounds %struct.rt_mutex_base, ptr %51, i32 0, i32 0, !dbg !3463
  call void @_raw_spin_unlock_irq(ptr noundef %wait_lock68) #14, !dbg !3463
  %52 = load ptr, ptr %next_lock.addr, align 8, !dbg !3464
  %tobool69 = icmp ne ptr %52, null, !dbg !3464
  br i1 %tobool69, label %if.end71, label %if.then70, !dbg !3466

if.then70:                                        ; preds = %if.end61
  br label %out_put_task, !dbg !3467

if.end71:                                         ; preds = %if.end61
  br label %again, !dbg !3468

if.end72:                                         ; preds = %if.end53
  %53 = load ptr, ptr %lock, align 8, !dbg !3469
  %call73 = call ptr @rt_mutex_top_waiter(ptr noundef %53) #14, !dbg !3470
  store ptr %call73, ptr %prerequeue_top_waiter, align 8, !dbg !3471
  %54 = load ptr, ptr %lock, align 8, !dbg !3472
  %55 = load ptr, ptr %waiter, align 8, !dbg !3473
  call void @rt_mutex_dequeue(ptr noundef %54, ptr noundef %55) #14, !dbg !3474
  %56 = load ptr, ptr %waiter, align 8, !dbg !3475
  %57 = load ptr, ptr %task.addr, align 8, !dbg !3476
  call void @waiter_update_prio(ptr noundef %56, ptr noundef %57) #14, !dbg !3477
  %58 = load ptr, ptr %lock, align 8, !dbg !3478
  %59 = load ptr, ptr %waiter, align 8, !dbg !3479
  call void @rt_mutex_enqueue(ptr noundef %58, ptr noundef %59) #14, !dbg !3480
  %60 = load ptr, ptr %task.addr, align 8, !dbg !3481
  %pi_lock74 = getelementptr inbounds %struct.task_struct, ptr %60, i32 0, i32 122, !dbg !3481
  call void @_raw_spin_unlock(ptr noundef %pi_lock74) #14, !dbg !3481
  %61 = load ptr, ptr %task.addr, align 8, !dbg !3482
  call void @put_task_struct(ptr noundef %61) #14, !dbg !3483
  %62 = load ptr, ptr %lock, align 8, !dbg !3484
  %call75 = call ptr @rt_mutex_owner(ptr noundef %62) #14, !dbg !3486
  %tobool76 = icmp ne ptr %call75, null, !dbg !3486
  br i1 %tobool76, label %if.end85, label %if.then77, !dbg !3487

if.then77:                                        ; preds = %if.end72
  %63 = load ptr, ptr %lock, align 8, !dbg !3488
  %call78 = call ptr @rt_mutex_top_waiter(ptr noundef %63) #14, !dbg !3490
  store ptr %call78, ptr %top_waiter, align 8, !dbg !3491
  %64 = load ptr, ptr %prerequeue_top_waiter, align 8, !dbg !3492
  %65 = load ptr, ptr %top_waiter, align 8, !dbg !3494
  %cmp79 = icmp ne ptr %64, %65, !dbg !3495
  br i1 %cmp79, label %if.then80, label %if.end83, !dbg !3496

if.then80:                                        ; preds = %if.then77
  %66 = load ptr, ptr %top_waiter, align 8, !dbg !3497
  %task81 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %66, i32 0, i32 2, !dbg !3498
  %67 = load ptr, ptr %task81, align 8, !dbg !3498
  %68 = load ptr, ptr %top_waiter, align 8, !dbg !3499
  %wake_state = getelementptr inbounds %struct.rt_mutex_waiter, ptr %68, i32 0, i32 4, !dbg !3500
  %69 = load i32, ptr %wake_state, align 8, !dbg !3500
  %call82 = call i32 @wake_up_state(ptr noundef %67, i32 noundef %69) #14, !dbg !3501
  br label %if.end83, !dbg !3501

if.end83:                                         ; preds = %if.then80, %if.then77
  %70 = load ptr, ptr %lock, align 8, !dbg !3502
  %wait_lock84 = getelementptr inbounds %struct.rt_mutex_base, ptr %70, i32 0, i32 0, !dbg !3502
  call void @_raw_spin_unlock_irq(ptr noundef %wait_lock84) #14, !dbg !3502
  store i32 0, ptr %retval, align 4, !dbg !3503
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3503

if.end85:                                         ; preds = %if.end72
  %71 = load ptr, ptr %lock, align 8, !dbg !3504
  %call86 = call ptr @rt_mutex_owner(ptr noundef %71) #14, !dbg !3505
  %call87 = call ptr @get_task_struct(ptr noundef %call86) #14, !dbg !3506
  store ptr %call87, ptr %task.addr, align 8, !dbg !3507
  %72 = load ptr, ptr %task.addr, align 8, !dbg !3508
  %pi_lock88 = getelementptr inbounds %struct.task_struct, ptr %72, i32 0, i32 122, !dbg !3508
  call void @_raw_spin_lock(ptr noundef %pi_lock88) #14, !dbg !3508
  %73 = load ptr, ptr %waiter, align 8, !dbg !3509
  %74 = load ptr, ptr %lock, align 8, !dbg !3511
  %call89 = call ptr @rt_mutex_top_waiter(ptr noundef %74) #14, !dbg !3512
  %cmp90 = icmp eq ptr %73, %call89, !dbg !3513
  br i1 %cmp90, label %if.then91, label %if.else92, !dbg !3514

if.then91:                                        ; preds = %if.end85
  %75 = load ptr, ptr %task.addr, align 8, !dbg !3515
  %76 = load ptr, ptr %prerequeue_top_waiter, align 8, !dbg !3517
  call void @rt_mutex_dequeue_pi(ptr noundef %75, ptr noundef %76) #14, !dbg !3518
  %77 = load ptr, ptr %waiter, align 8, !dbg !3519
  %78 = load ptr, ptr %task.addr, align 8, !dbg !3520
  call void @waiter_clone_prio(ptr noundef %77, ptr noundef %78) #14, !dbg !3521
  %79 = load ptr, ptr %task.addr, align 8, !dbg !3522
  %80 = load ptr, ptr %waiter, align 8, !dbg !3523
  call void @rt_mutex_enqueue_pi(ptr noundef %79, ptr noundef %80) #14, !dbg !3524
  %81 = load ptr, ptr %lock, align 8, !dbg !3525
  %82 = load ptr, ptr %task.addr, align 8, !dbg !3526
  call void @rt_mutex_adjust_prio(ptr noundef %81, ptr noundef %82) #14, !dbg !3527
  br label %if.end98, !dbg !3528

if.else92:                                        ; preds = %if.end85
  %83 = load ptr, ptr %prerequeue_top_waiter, align 8, !dbg !3529
  %84 = load ptr, ptr %waiter, align 8, !dbg !3531
  %cmp93 = icmp eq ptr %83, %84, !dbg !3532
  br i1 %cmp93, label %if.then94, label %if.else96, !dbg !3533

if.then94:                                        ; preds = %if.else92
  %85 = load ptr, ptr %task.addr, align 8, !dbg !3534
  %86 = load ptr, ptr %waiter, align 8, !dbg !3536
  call void @rt_mutex_dequeue_pi(ptr noundef %85, ptr noundef %86) #14, !dbg !3537
  %87 = load ptr, ptr %lock, align 8, !dbg !3538
  %call95 = call ptr @rt_mutex_top_waiter(ptr noundef %87) #14, !dbg !3539
  store ptr %call95, ptr %waiter, align 8, !dbg !3540
  %88 = load ptr, ptr %waiter, align 8, !dbg !3541
  %89 = load ptr, ptr %task.addr, align 8, !dbg !3542
  call void @waiter_clone_prio(ptr noundef %88, ptr noundef %89) #14, !dbg !3543
  %90 = load ptr, ptr %task.addr, align 8, !dbg !3544
  %91 = load ptr, ptr %waiter, align 8, !dbg !3545
  call void @rt_mutex_enqueue_pi(ptr noundef %90, ptr noundef %91) #14, !dbg !3546
  %92 = load ptr, ptr %lock, align 8, !dbg !3547
  %93 = load ptr, ptr %task.addr, align 8, !dbg !3548
  call void @rt_mutex_adjust_prio(ptr noundef %92, ptr noundef %93) #14, !dbg !3549
  br label %if.end97, !dbg !3550

if.else96:                                        ; preds = %if.else92
  br label %if.end97

if.end97:                                         ; preds = %if.else96, %if.then94
  br label %if.end98

if.end98:                                         ; preds = %if.end97, %if.then91
  %94 = load ptr, ptr %task.addr, align 8, !dbg !3551
  %call99 = call ptr @task_blocked_on_lock(ptr noundef %94) #14, !dbg !3552
  store ptr %call99, ptr %next_lock.addr, align 8, !dbg !3553
  %95 = load ptr, ptr %lock, align 8, !dbg !3554
  %call100 = call ptr @rt_mutex_top_waiter(ptr noundef %95) #14, !dbg !3555
  store ptr %call100, ptr %top_waiter, align 8, !dbg !3556
  %96 = load ptr, ptr %task.addr, align 8, !dbg !3557
  %pi_lock101 = getelementptr inbounds %struct.task_struct, ptr %96, i32 0, i32 122, !dbg !3557
  call void @_raw_spin_unlock(ptr noundef %pi_lock101) #14, !dbg !3557
  %97 = load ptr, ptr %lock, align 8, !dbg !3558
  %wait_lock102 = getelementptr inbounds %struct.rt_mutex_base, ptr %97, i32 0, i32 0, !dbg !3558
  call void @_raw_spin_unlock_irq(ptr noundef %wait_lock102) #14, !dbg !3558
  %98 = load ptr, ptr %next_lock.addr, align 8, !dbg !3559
  %tobool103 = icmp ne ptr %98, null, !dbg !3559
  br i1 %tobool103, label %if.end105, label %if.then104, !dbg !3561

if.then104:                                       ; preds = %if.end98
  br label %out_put_task, !dbg !3562

if.end105:                                        ; preds = %if.end98
  %99 = load i8, ptr %detect_deadlock, align 1, !dbg !3563, !range !2426, !noundef !440
  %tobool106 = trunc i8 %99 to i1, !dbg !3563
  br i1 %tobool106, label %if.end110, label %land.lhs.true107, !dbg !3565

land.lhs.true107:                                 ; preds = %if.end105
  %100 = load ptr, ptr %waiter, align 8, !dbg !3566
  %101 = load ptr, ptr %top_waiter, align 8, !dbg !3567
  %cmp108 = icmp ne ptr %100, %101, !dbg !3568
  br i1 %cmp108, label %if.then109, label %if.end110, !dbg !3569

if.then109:                                       ; preds = %land.lhs.true107
  br label %out_put_task, !dbg !3570

if.end110:                                        ; preds = %land.lhs.true107, %if.end105
  br label %again, !dbg !3571

out_unlock_pi:                                    ; preds = %if.then51, %if.then38, %if.then27, %if.then21, %if.then15, %if.then11, %if.then6
  call void @llvm.dbg.label(metadata !2068), !dbg !3572
  %102 = load ptr, ptr %task.addr, align 8, !dbg !3573
  %pi_lock111 = getelementptr inbounds %struct.task_struct, ptr %102, i32 0, i32 122, !dbg !3573
  call void @_raw_spin_unlock_irq(ptr noundef %pi_lock111) #14, !dbg !3573
  br label %out_put_task, !dbg !3573

out_put_task:                                     ; preds = %out_unlock_pi, %if.then109, %if.then104, %if.then70
  call void @llvm.dbg.label(metadata !2069), !dbg !3574
  %103 = load ptr, ptr %task.addr, align 8, !dbg !3575
  call void @put_task_struct(ptr noundef %103) #14, !dbg !3576
  %104 = load i32, ptr %ret, align 4, !dbg !3577
  store i32 %104, ptr %retval, align 4, !dbg !3578
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3578

cleanup:                                          ; preds = %out_put_task, %if.end83, %if.then59, %if.end
  call void @llvm.lifetime.end.p0(i64 1, ptr %requeue) #15, !dbg !3579
  call void @llvm.lifetime.end.p0(i64 1, ptr %detect_deadlock) #15, !dbg !3579
  call void @llvm.lifetime.end.p0(i64 8, ptr %lock) #15, !dbg !3579
  call void @llvm.lifetime.end.p0(i64 4, ptr %depth) #15, !dbg !3579
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !3579
  call void @llvm.lifetime.end.p0(i64 8, ptr %prerequeue_top_waiter) #15, !dbg !3579
  call void @llvm.lifetime.end.p0(i64 8, ptr %top_waiter) #15, !dbg !3579
  call void @llvm.lifetime.end.p0(i64 8, ptr %waiter) #15, !dbg !3579
  %105 = load i32, ptr %retval, align 4, !dbg !3579
  ret i32 %105, !dbg !3579
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rt_mutex_wake_up_q(ptr noundef %wqh) #3 align 16 !dbg !2086 {
entry:
  %wqh.addr = alloca ptr, align 8
  store ptr %wqh, ptr %wqh.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wqh.addr, metadata !2101, metadata !DIExpression()), !dbg !3580
  %0 = load ptr, ptr %wqh.addr, align 8, !dbg !3581
  %head = getelementptr inbounds %struct.rt_wake_q_head, ptr %0, i32 0, i32 0, !dbg !3583
  %call = call zeroext i1 @wake_q_empty(ptr noundef %head) #14, !dbg !3584
  br i1 %call, label %if.end, label %if.then, !dbg !3585

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %wqh.addr, align 8, !dbg !3586
  %head1 = getelementptr inbounds %struct.rt_wake_q_head, ptr %1, i32 0, i32 0, !dbg !3587
  call void @wake_up_q(ptr noundef %head1) #14, !dbg !3588
  br label %if.end, !dbg !3588

if.end:                                           ; preds = %if.then, %entry
  br label %do.body, !dbg !3589

do.body:                                          ; preds = %if.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !3590, !srcloc !3592
  %call2 = call zeroext i1 @__preempt_count_dec_and_test() #14, !dbg !3593
  %lnot = xor i1 %call2, true, !dbg !3593
  %lnot3 = xor i1 %lnot, true, !dbg !3593
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !3593
  %conv = sext i32 %lnot.ext to i64, !dbg !3593
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3593
  %tobool = icmp ne i64 %expval, 0, !dbg !3593
  br i1 %tobool, label %if.then4, label %if.end6, !dbg !3590

if.then4:                                         ; preds = %do.body
  br label %do.body5, !dbg !3593

do.body5:                                         ; preds = %if.then4
  %2 = call i64 @llvm.read_register.i64(metadata !2102), !dbg !3595
  %3 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %2) #15, !dbg !3595, !srcloc !3597
  call void @llvm.write_register.i64(metadata !2102, i64 %3), !dbg !3595
  br label %do.end, !dbg !3595

do.end:                                           ; preds = %do.body5
  br label %if.end6, !dbg !3595

if.end6:                                          ; preds = %do.end, %do.body
  br label %do.end7, !dbg !3590

do.end7:                                          ; preds = %if.end6
  ret void, !dbg !3598
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_resched() #3 align 16 !dbg !1962 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__might_resched, ptr %tmp, align 8, !dbg !3599
  %0 = load ptr, ptr %tmp, align 8, !dbg !3599
  %call = call i32 %0() #14, !dbg !3601
  ret void, !dbg !3602
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__rt_mutex_lock(ptr noundef %lock, i32 noundef %state) #3 align 16 !dbg !3603 {
entry:
  %retval = alloca i32, align 4
  %lock.addr = alloca ptr, align 8
  %state.addr = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !3607, metadata !DIExpression()), !dbg !3609
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !3608, metadata !DIExpression()), !dbg !3610
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !3611
  %call = call ptr @get_current() #14, !dbg !3611
  %call1 = call zeroext i1 @rt_mutex_cmpxchg_acquire(ptr noundef %0, ptr noundef null, ptr noundef %call) #14, !dbg !3611
  %lnot = xor i1 %call1, true, !dbg !3611
  %lnot2 = xor i1 %lnot, true, !dbg !3611
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !3611
  %conv = sext i32 %lnot.ext to i64, !dbg !3611
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !3611
  %tobool = icmp ne i64 %expval, 0, !dbg !3611
  br i1 %tobool, label %if.then, label %if.end, !dbg !3613

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3614
  br label %return, !dbg !3614

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !3615
  %2 = load i32, ptr %state.addr, align 4, !dbg !3616
  %call3 = call i32 @rt_mutex_slowlock(ptr noundef %1, ptr noundef null, i32 noundef %2) #14, !dbg !3617
  store i32 %call3, ptr %retval, align 4, !dbg !3618
  br label %return, !dbg !3618

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !3619
  ret i32 %3, !dbg !3619
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @rt_mutex_cmpxchg_acquire(ptr noundef %lock, ptr noundef %old, ptr noundef %new) #3 align 16 !dbg !3620 {
entry:
  %lock.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca ptr, align 8
  %__ai_ptr = alloca ptr, align 8
  %__ai_oldp = alloca ptr, align 8
  %tmp = alloca i64, align 8
  %success = alloca i8, align 1
  %_old = alloca ptr, align 8
  %__old = alloca ptr, align 8
  %__new = alloca ptr, align 8
  %__ptr = alloca ptr, align 8
  %tmp5 = alloca i64, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !3624, metadata !DIExpression()), !dbg !3636
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !3625, metadata !DIExpression()), !dbg !3637
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3626, metadata !DIExpression()), !dbg !3638
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #15, !dbg !3639
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !3627, metadata !DIExpression()), !dbg !3639
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !3639
  %owner = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 2, !dbg !3639
  store ptr %owner, ptr %__ai_ptr, align 8, !dbg !3639
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_oldp) #15, !dbg !3639
  call void @llvm.dbg.declare(metadata ptr %__ai_oldp, metadata !3629, metadata !DIExpression()), !dbg !3639
  store ptr %old.addr, ptr %__ai_oldp, align 8, !dbg !3639
  %1 = load ptr, ptr %__ai_ptr, align 8, !dbg !3639
  call void @instrument_atomic_read_write(ptr noundef %1, i64 noundef 8) #14, !dbg !3639
  %2 = load ptr, ptr %__ai_oldp, align 8, !dbg !3639
  call void @instrument_read_write(ptr noundef %2, i64 noundef 8) #14, !dbg !3639
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #15, !dbg !3640
  call void @llvm.dbg.declare(metadata ptr %success, metadata !3630, metadata !DIExpression()), !dbg !3640
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #15, !dbg !3640
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !3632, metadata !DIExpression()), !dbg !3640
  %3 = load ptr, ptr %__ai_oldp, align 8, !dbg !3640
  store ptr %3, ptr %_old, align 8, !dbg !3640
  call void @llvm.lifetime.start.p0(i64 8, ptr %__old) #15, !dbg !3640
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !3633, metadata !DIExpression()), !dbg !3640
  %4 = load ptr, ptr %_old, align 8, !dbg !3640
  %5 = load ptr, ptr %4, align 8, !dbg !3640
  store ptr %5, ptr %__old, align 8, !dbg !3640
  call void @llvm.lifetime.start.p0(i64 8, ptr %__new) #15, !dbg !3640
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !3634, metadata !DIExpression()), !dbg !3640
  %6 = load ptr, ptr %new.addr, align 8, !dbg !3640
  store ptr %6, ptr %__new, align 8, !dbg !3640
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #15, !dbg !3640
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !3635, metadata !DIExpression()), !dbg !3640
  %7 = load ptr, ptr %__ai_ptr, align 8, !dbg !3640
  store ptr %7, ptr %__ptr, align 8, !dbg !3640
  %8 = load ptr, ptr %__ptr, align 8, !dbg !3640
  %9 = load ptr, ptr %__old, align 8, !dbg !3640
  %10 = load ptr, ptr %__new, align 8, !dbg !3640
  %11 = call { i8, ptr } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgq $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %8, ptr %10, ptr elementtype(i64) %8, ptr %9) #15, !dbg !3640, !srcloc !3641
  %asmresult = extractvalue { i8, ptr } %11, 0, !dbg !3640
  %asmresult1 = extractvalue { i8, ptr } %11, 1, !dbg !3640
  %12 = icmp ult i8 %asmresult, 2, !dbg !3640
  call void @llvm.assume(i1 %12), !dbg !3640
  store i8 %asmresult, ptr %success, align 1, !dbg !3640
  store ptr %asmresult1, ptr %__old, align 8, !dbg !3640
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #15, !dbg !3640
  %13 = load i8, ptr %success, align 1, !dbg !3642, !range !2426, !noundef !440
  %tobool = trunc i8 %13 to i1, !dbg !3642
  %lnot = xor i1 %tobool, true, !dbg !3642
  %lnot2 = xor i1 %lnot, true, !dbg !3642
  %lnot3 = xor i1 %lnot2, true, !dbg !3642
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !3642
  %conv = sext i32 %lnot.ext to i64, !dbg !3642
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3642
  %tobool4 = icmp ne i64 %expval, 0, !dbg !3642
  br i1 %tobool4, label %if.then, label %if.end, !dbg !3640

if.then:                                          ; preds = %entry
  %14 = load ptr, ptr %__old, align 8, !dbg !3642
  %15 = load ptr, ptr %_old, align 8, !dbg !3642
  store ptr %14, ptr %15, align 8, !dbg !3642
  br label %if.end, !dbg !3642

if.end:                                           ; preds = %if.then, %entry
  %16 = load i8, ptr %success, align 1, !dbg !3640, !range !2426, !noundef !440
  %tobool6 = trunc i8 %16 to i1, !dbg !3640
  %lnot7 = xor i1 %tobool6, true, !dbg !3640
  %lnot9 = xor i1 %lnot7, true, !dbg !3640
  %lnot.ext10 = zext i1 %lnot9 to i32, !dbg !3640
  %conv11 = sext i32 %lnot.ext10 to i64, !dbg !3640
  %expval12 = call i64 @llvm.expect.i64(i64 %conv11, i64 1), !dbg !3640
  store i64 %expval12, ptr %tmp5, align 8, !dbg !3642
  call void @llvm.lifetime.end.p0(i64 8, ptr %__new) #15, !dbg !3639
  call void @llvm.lifetime.end.p0(i64 8, ptr %__old) #15, !dbg !3639
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #15, !dbg !3639
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #15, !dbg !3639
  %17 = load i64, ptr %tmp5, align 8, !dbg !3640
  store i64 %17, ptr %tmp, align 8, !dbg !3639
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_oldp) #15, !dbg !3644
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #15, !dbg !3644
  %18 = load i64, ptr %tmp, align 8, !dbg !3639
  %tobool13 = icmp ne i64 %18, 0, !dbg !3644
  ret i1 %tobool13, !dbg !3645
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rt_mutex_slowlock(ptr noundef %lock, ptr noundef %ww_ctx, i32 noundef %state) #0 section ".sched.text" align 16 !dbg !3646 {
entry:
  %lock.addr = alloca ptr, align 8
  %ww_ctx.addr = alloca ptr, align 8
  %state.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %ret = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy3 = alloca i64, align 8
  %__dummy24 = alloca i64, align 8
  %tmp7 = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !3650, metadata !DIExpression()), !dbg !3663
  store ptr %ww_ctx, ptr %ww_ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ww_ctx.addr, metadata !3651, metadata !DIExpression()), !dbg !3664
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !3652, metadata !DIExpression()), !dbg !3665
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !3666
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !3653, metadata !DIExpression()), !dbg !3667
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !3668
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3654, metadata !DIExpression()), !dbg !3669
  br label %do.body, !dbg !3670

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !3671
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !3655, metadata !DIExpression()), !dbg !3671
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !3671
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !3658, metadata !DIExpression()), !dbg !3671
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !3671
  %conv = zext i1 %cmp to i32, !dbg !3671
  store i32 1, ptr %tmp, align 4, !dbg !3671
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !3672
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !3672
  %0 = load i32, ptr %tmp, align 4, !dbg !3671
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !3672
  %wait_lock = getelementptr inbounds %struct.rt_mutex_base, ptr %1, i32 0, i32 0, !dbg !3672
  %call = call i64 @_raw_spin_lock_irqsave(ptr noundef %wait_lock) #14, !dbg !3672
  store i64 %call, ptr %flags, align 8, !dbg !3672
  br label %do.cond, !dbg !3672

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3672

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %lock.addr, align 8, !dbg !3673
  %3 = load ptr, ptr %ww_ctx.addr, align 8, !dbg !3674
  %4 = load i32, ptr %state.addr, align 4, !dbg !3675
  %call1 = call i32 @__rt_mutex_slowlock_locked(ptr noundef %2, ptr noundef %3, i32 noundef %4) #14, !dbg !3676
  store i32 %call1, ptr %ret, align 4, !dbg !3677
  br label %do.body2, !dbg !3678

do.body2:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #15, !dbg !3679
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !3659, metadata !DIExpression()), !dbg !3679
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #15, !dbg !3679
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !3662, metadata !DIExpression()), !dbg !3679
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !3679
  %conv6 = zext i1 %cmp5 to i32, !dbg !3679
  store i32 1, ptr %tmp7, align 4, !dbg !3679
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #15, !dbg !3680
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #15, !dbg !3680
  %5 = load i32, ptr %tmp7, align 4, !dbg !3679
  %6 = load ptr, ptr %lock.addr, align 8, !dbg !3680
  %wait_lock8 = getelementptr inbounds %struct.rt_mutex_base, ptr %6, i32 0, i32 0, !dbg !3680
  %7 = load i64, ptr %flags, align 8, !dbg !3680
  call void @_raw_spin_unlock_irqrestore(ptr noundef %wait_lock8, i64 noundef %7) #14, !dbg !3680
  br label %do.cond9, !dbg !3680

do.cond9:                                         ; preds = %do.body2
  br label %do.end10, !dbg !3680

do.end10:                                         ; preds = %do.cond9
  %8 = load i32, ptr %ret, align 4, !dbg !3681
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !3682
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !3682
  ret i32 %8, !dbg !3683
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_read_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !3684 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3686, metadata !DIExpression()), !dbg !3688
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3687, metadata !DIExpression()), !dbg !3689
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3690
  %1 = load i64, ptr %size.addr, align 8, !dbg !3691
  %conv = trunc i64 %1 to i32, !dbg !3691
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #14, !dbg !3692
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3693
  %3 = load i64, ptr %size.addr, align 8, !dbg !3693
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 3) #14, !dbg !3693
  ret void, !dbg !3694
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #2 align 16 !dbg !3695 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3700, metadata !DIExpression()), !dbg !3702
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3701, metadata !DIExpression()), !dbg !3703
  ret i1 true, !dbg !3704
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #2 align 16 !dbg !3705 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !3710, metadata !DIExpression()), !dbg !3713
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3711, metadata !DIExpression()), !dbg !3714
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !3712, metadata !DIExpression()), !dbg !3715
  ret void, !dbg !3716
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__rt_mutex_slowlock_locked(ptr noundef %lock, ptr noundef %ww_ctx, i32 noundef %state) #2 align 16 !dbg !3717 {
entry:
  %lock.addr = alloca ptr, align 8
  %ww_ctx.addr = alloca ptr, align 8
  %state.addr = alloca i32, align 4
  %waiter = alloca %struct.rt_mutex_waiter, align 8
  %ret = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !3719, metadata !DIExpression()), !dbg !3724
  store ptr %ww_ctx, ptr %ww_ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ww_ctx.addr, metadata !3720, metadata !DIExpression()), !dbg !3725
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !3721, metadata !DIExpression()), !dbg !3726
  call void @llvm.lifetime.start.p0(i64 112, ptr %waiter) #15, !dbg !3727
  call void @llvm.dbg.declare(metadata ptr %waiter, metadata !3722, metadata !DIExpression()), !dbg !3728
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !3729
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3723, metadata !DIExpression()), !dbg !3730
  call void @rt_mutex_init_waiter(ptr noundef %waiter) #14, !dbg !3731
  %0 = load ptr, ptr %ww_ctx.addr, align 8, !dbg !3732
  %ww_ctx1 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %waiter, i32 0, i32 5, !dbg !3733
  store ptr %0, ptr %ww_ctx1, align 8, !dbg !3734
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !3735
  %2 = load ptr, ptr %ww_ctx.addr, align 8, !dbg !3736
  %3 = load i32, ptr %state.addr, align 4, !dbg !3737
  %call = call i32 @__rt_mutex_slowlock(ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef 0, ptr noundef %waiter) #14, !dbg !3738
  store i32 %call, ptr %ret, align 4, !dbg !3739
  call void @debug_rt_mutex_free_waiter(ptr noundef %waiter) #14, !dbg !3740
  %4 = load i32, ptr %ret, align 4, !dbg !3741
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !3742
  call void @llvm.lifetime.end.p0(i64 112, ptr %waiter) #15, !dbg !3742
  ret i32 %4, !dbg !3743
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rt_mutex_init_waiter(ptr noundef %waiter) #2 align 16 !dbg !3744 {
entry:
  %waiter.addr = alloca ptr, align 8
  store ptr %waiter, ptr %waiter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %waiter.addr, metadata !3748, metadata !DIExpression()), !dbg !3749
  %0 = load ptr, ptr %waiter.addr, align 8, !dbg !3750
  call void @debug_rt_mutex_init_waiter(ptr noundef %0) #14, !dbg !3751
  %1 = load ptr, ptr %waiter.addr, align 8, !dbg !3752
  %pi_tree = getelementptr inbounds %struct.rt_mutex_waiter, ptr %1, i32 0, i32 1, !dbg !3752
  %entry1 = getelementptr inbounds %struct.rt_waiter_node, ptr %pi_tree, i32 0, i32 0, !dbg !3752
  %2 = ptrtoint ptr %entry1 to i64, !dbg !3752
  %3 = load ptr, ptr %waiter.addr, align 8, !dbg !3752
  %pi_tree2 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %3, i32 0, i32 1, !dbg !3752
  %entry3 = getelementptr inbounds %struct.rt_waiter_node, ptr %pi_tree2, i32 0, i32 0, !dbg !3752
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %entry3, i32 0, i32 0, !dbg !3752
  store i64 %2, ptr %__rb_parent_color, align 8, !dbg !3752
  %4 = load ptr, ptr %waiter.addr, align 8, !dbg !3753
  %tree = getelementptr inbounds %struct.rt_mutex_waiter, ptr %4, i32 0, i32 0, !dbg !3753
  %entry4 = getelementptr inbounds %struct.rt_waiter_node, ptr %tree, i32 0, i32 0, !dbg !3753
  %5 = ptrtoint ptr %entry4 to i64, !dbg !3753
  %6 = load ptr, ptr %waiter.addr, align 8, !dbg !3753
  %tree5 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %6, i32 0, i32 0, !dbg !3753
  %entry6 = getelementptr inbounds %struct.rt_waiter_node, ptr %tree5, i32 0, i32 0, !dbg !3753
  %__rb_parent_color7 = getelementptr inbounds %struct.rb_node, ptr %entry6, i32 0, i32 0, !dbg !3753
  store i64 %5, ptr %__rb_parent_color7, align 8, !dbg !3753
  %7 = load ptr, ptr %waiter.addr, align 8, !dbg !3754
  %wake_state = getelementptr inbounds %struct.rt_mutex_waiter, ptr %7, i32 0, i32 4, !dbg !3755
  store i32 3, ptr %wake_state, align 8, !dbg !3756
  %8 = load ptr, ptr %waiter.addr, align 8, !dbg !3757
  %task = getelementptr inbounds %struct.rt_mutex_waiter, ptr %8, i32 0, i32 2, !dbg !3758
  store ptr null, ptr %task, align 8, !dbg !3759
  ret void, !dbg !3760
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__rt_mutex_slowlock(ptr noundef %lock, ptr noundef %ww_ctx, i32 noundef %state, i32 noundef %chwalk, ptr noundef %waiter) #0 section ".sched.text" align 16 !dbg !3761 {
entry:
  %retval = alloca i32, align 4
  %lock.addr = alloca ptr, align 8
  %ww_ctx.addr = alloca ptr, align 8
  %state.addr = alloca i32, align 4
  %chwalk.addr = alloca i32, align 4
  %waiter.addr = alloca ptr, align 8
  %rtm = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %ww = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ai_ptr = alloca ptr, align 8
  %tmp15 = alloca i32, align 4
  %__ret = alloca i32, align 4
  %tmp16 = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !3765, metadata !DIExpression()), !dbg !3787
  store ptr %ww_ctx, ptr %ww_ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ww_ctx.addr, metadata !3766, metadata !DIExpression()), !dbg !3788
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !3767, metadata !DIExpression()), !dbg !3789
  store i32 %chwalk, ptr %chwalk.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %chwalk.addr, metadata !3768, metadata !DIExpression()), !dbg !3790
  store ptr %waiter, ptr %waiter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %waiter.addr, metadata !3769, metadata !DIExpression()), !dbg !3791
  call void @llvm.lifetime.start.p0(i64 8, ptr %rtm) #15, !dbg !3792
  call void @llvm.dbg.declare(metadata ptr %rtm, metadata !3770, metadata !DIExpression()), !dbg !3793
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !3794
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3771, metadata !DIExpression()), !dbg !3794
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !3794
  store ptr %0, ptr %__mptr, align 8, !dbg !3794
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3794
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !3794
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3794
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !3795
  %2 = load ptr, ptr %tmp, align 8, !dbg !3794
  store ptr %2, ptr %rtm, align 8, !dbg !3793
  call void @llvm.lifetime.start.p0(i64 8, ptr %ww) #15, !dbg !3796
  call void @llvm.dbg.declare(metadata ptr %ww, metadata !3773, metadata !DIExpression()), !dbg !3797
  store ptr null, ptr %ww, align 8, !dbg !3797
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !3798
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3779, metadata !DIExpression()), !dbg !3799
  br label %do.body, !dbg !3800

do.body:                                          ; preds = %entry
  %3 = load ptr, ptr %lock.addr, align 8, !dbg !3801
  %wait_lock = getelementptr inbounds %struct.rt_mutex_base, ptr %3, i32 0, i32 0, !dbg !3801
  br label %do.cond, !dbg !3801

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3801

do.end:                                           ; preds = %do.cond
  %4 = load ptr, ptr %lock.addr, align 8, !dbg !3803
  %call = call ptr @get_current() #14, !dbg !3805
  %call1 = call i32 @try_to_take_rt_mutex(ptr noundef %4, ptr noundef %call, ptr noundef null) #14, !dbg !3806
  %tobool = icmp ne i32 %call1, 0, !dbg !3806
  br i1 %tobool, label %if.then, label %if.end, !dbg !3807

if.then:                                          ; preds = %do.end
  store i32 0, ptr %retval, align 4, !dbg !3808
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3808

if.end:                                           ; preds = %do.end
  br label %do.body2, !dbg !3810

do.body2:                                         ; preds = %if.end
  br label %do.body3, !dbg !3811

do.body3:                                         ; preds = %do.body2
  br label %do.cond4, !dbg !3812

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !3812

do.end5:                                          ; preds = %do.cond4
  br label %do.body6, !dbg !3811

do.body6:                                         ; preds = %do.end5
  br label %do.body7, !dbg !3814

do.body7:                                         ; preds = %do.body6
  br label %do.cond8, !dbg !3815

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !3815

do.end9:                                          ; preds = %do.cond8
  br label %do.body10, !dbg !3814

do.body10:                                        ; preds = %do.end9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #15, !dbg !3817
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !3780, metadata !DIExpression()), !dbg !3817
  %call11 = call ptr @get_current() #14, !dbg !3817
  %__state = getelementptr inbounds %struct.task_struct, ptr %call11, i32 0, i32 1, !dbg !3817
  store ptr %__state, ptr %__ai_ptr, align 8, !dbg !3817
  br label %do.body12, !dbg !3817

do.body12:                                        ; preds = %do.body10
  br label %do.cond13, !dbg !3818

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !3818

do.end14:                                         ; preds = %do.cond13
  %5 = load ptr, ptr %__ai_ptr, align 8, !dbg !3817
  call void @instrument_atomic_read_write(ptr noundef %5, i64 noundef 4) #14, !dbg !3817
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #15, !dbg !3820
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !3785, metadata !DIExpression()), !dbg !3820
  %6 = load i32, ptr %state.addr, align 4, !dbg !3820
  store i32 %6, ptr %__ret, align 4, !dbg !3820
  %7 = load i32, ptr %__ret, align 4, !dbg !3820
  %8 = load ptr, ptr %__ai_ptr, align 8, !dbg !3820
  %9 = call i32 asm sideeffect "xchgl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %8, i32 %7, ptr elementtype(i32) %8) #15, !dbg !3820, !srcloc !3821
  store i32 %9, ptr %__ret, align 4, !dbg !3820
  %10 = load i32, ptr %__ret, align 4, !dbg !3820
  store i32 %10, ptr %tmp16, align 4, !dbg !3820
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #15, !dbg !3817
  %11 = load i32, ptr %tmp16, align 4, !dbg !3820
  store i32 %11, ptr %tmp15, align 4, !dbg !3817
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #15, !dbg !3822
  %12 = load i32, ptr %tmp15, align 4, !dbg !3817
  br label %do.cond17, !dbg !3822

do.cond17:                                        ; preds = %do.end14
  br label %do.end18, !dbg !3822

do.end18:                                         ; preds = %do.cond17
  br label %do.cond19, !dbg !3814

do.cond19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !3814

do.end20:                                         ; preds = %do.cond19
  br label %do.cond21, !dbg !3811

do.cond21:                                        ; preds = %do.end20
  br label %do.end22, !dbg !3811

do.end22:                                         ; preds = %do.cond21
  %13 = load ptr, ptr %lock.addr, align 8, !dbg !3823
  call void @trace_contention_begin(ptr noundef %13, i32 noundef 8) #14, !dbg !3824
  %14 = load ptr, ptr %lock.addr, align 8, !dbg !3825
  %15 = load ptr, ptr %waiter.addr, align 8, !dbg !3826
  %call23 = call ptr @get_current() #14, !dbg !3827
  %16 = load ptr, ptr %ww_ctx.addr, align 8, !dbg !3828
  %17 = load i32, ptr %chwalk.addr, align 4, !dbg !3829
  %call24 = call i32 @task_blocks_on_rt_mutex(ptr noundef %14, ptr noundef %15, ptr noundef %call23, ptr noundef %16, i32 noundef %17) #14, !dbg !3830
  store i32 %call24, ptr %ret, align 4, !dbg !3831
  %18 = load i32, ptr %ret, align 4, !dbg !3832
  %tobool25 = icmp ne i32 %18, 0, !dbg !3832
  %lnot = xor i1 %tobool25, true, !dbg !3832
  %lnot26 = xor i1 %lnot, true, !dbg !3832
  %lnot27 = xor i1 %lnot26, true, !dbg !3832
  %lnot.ext = zext i1 %lnot27 to i32, !dbg !3832
  %conv = sext i32 %lnot.ext to i64, !dbg !3832
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !3832
  %tobool28 = icmp ne i64 %expval, 0, !dbg !3832
  br i1 %tobool28, label %if.then29, label %if.end31, !dbg !3834

if.then29:                                        ; preds = %do.end22
  %19 = load ptr, ptr %lock.addr, align 8, !dbg !3835
  %20 = load ptr, ptr %ww_ctx.addr, align 8, !dbg !3836
  %21 = load i32, ptr %state.addr, align 4, !dbg !3837
  %22 = load ptr, ptr %waiter.addr, align 8, !dbg !3838
  %call30 = call i32 @rt_mutex_slowlock_block(ptr noundef %19, ptr noundef %20, i32 noundef %21, ptr noundef null, ptr noundef %22) #14, !dbg !3839
  store i32 %call30, ptr %ret, align 4, !dbg !3840
  br label %if.end31, !dbg !3841

if.end31:                                         ; preds = %if.then29, %do.end22
  %23 = load i32, ptr %ret, align 4, !dbg !3842
  %tobool32 = icmp ne i32 %23, 0, !dbg !3842
  %lnot33 = xor i1 %tobool32, true, !dbg !3842
  %lnot35 = xor i1 %lnot33, true, !dbg !3842
  %lnot37 = xor i1 %lnot35, true, !dbg !3842
  %lnot.ext38 = zext i1 %lnot37 to i32, !dbg !3842
  %conv39 = sext i32 %lnot.ext38 to i64, !dbg !3842
  %expval40 = call i64 @llvm.expect.i64(i64 %conv39, i64 1), !dbg !3842
  %tobool41 = icmp ne i64 %expval40, 0, !dbg !3842
  br i1 %tobool41, label %if.then42, label %if.else, !dbg !3844

if.then42:                                        ; preds = %if.end31
  br label %if.end60, !dbg !3845

if.else:                                          ; preds = %if.end31
  br label %do.body43, !dbg !3847

do.body43:                                        ; preds = %if.else
  br label %do.body44, !dbg !3849

do.body44:                                        ; preds = %do.body43
  br label %do.cond45, !dbg !3851

do.cond45:                                        ; preds = %do.body44
  br label %do.end46, !dbg !3851

do.end46:                                         ; preds = %do.cond45
  br label %do.body47, !dbg !3849

do.body47:                                        ; preds = %do.end46
  br label %do.body48, !dbg !3853

do.body48:                                        ; preds = %do.body47
  br label %do.cond49, !dbg !3855

do.cond49:                                        ; preds = %do.body48
  br label %do.end50, !dbg !3855

do.end50:                                         ; preds = %do.cond49
  br label %do.body51, !dbg !3853

do.body51:                                        ; preds = %do.end50
  %call52 = call ptr @get_current() #14, !dbg !3857
  %__state53 = getelementptr inbounds %struct.task_struct, ptr %call52, i32 0, i32 1, !dbg !3857
  store volatile i32 0, ptr %__state53, align 8, !dbg !3857
  br label %do.cond54, !dbg !3857

do.cond54:                                        ; preds = %do.body51
  br label %do.end55, !dbg !3857

do.end55:                                         ; preds = %do.cond54
  br label %do.cond56, !dbg !3853

do.cond56:                                        ; preds = %do.end55
  br label %do.end57, !dbg !3853

do.end57:                                         ; preds = %do.cond56
  br label %do.cond58, !dbg !3849

do.cond58:                                        ; preds = %do.end57
  br label %do.end59, !dbg !3849

do.end59:                                         ; preds = %do.cond58
  %24 = load ptr, ptr %lock.addr, align 8, !dbg !3859
  %25 = load ptr, ptr %waiter.addr, align 8, !dbg !3860
  call void @remove_waiter(ptr noundef %24, ptr noundef %25) #14, !dbg !3861
  %26 = load i32, ptr %ret, align 4, !dbg !3862
  %27 = load i32, ptr %chwalk.addr, align 4, !dbg !3863
  %28 = load ptr, ptr %lock.addr, align 8, !dbg !3864
  %29 = load ptr, ptr %waiter.addr, align 8, !dbg !3865
  call void @rt_mutex_handle_deadlock(i32 noundef %26, i32 noundef %27, ptr noundef %28, ptr noundef %29) #14, !dbg !3866
  br label %if.end60

if.end60:                                         ; preds = %do.end59, %if.then42
  %30 = load ptr, ptr %lock.addr, align 8, !dbg !3867
  call void @fixup_rt_mutex_waiters(ptr noundef %30, i1 noundef zeroext true) #14, !dbg !3868
  %31 = load ptr, ptr %lock.addr, align 8, !dbg !3869
  %32 = load i32, ptr %ret, align 4, !dbg !3870
  call void @trace_contention_end(ptr noundef %31, i32 noundef %32) #14, !dbg !3871
  %33 = load i32, ptr %ret, align 4, !dbg !3872
  store i32 %33, ptr %retval, align 4, !dbg !3873
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3873

cleanup:                                          ; preds = %if.end60, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !3874
  call void @llvm.lifetime.end.p0(i64 8, ptr %ww) #15, !dbg !3874
  call void @llvm.lifetime.end.p0(i64 8, ptr %rtm) #15, !dbg !3874
  %34 = load i32, ptr %retval, align 4, !dbg !3874
  ret i32 %34, !dbg !3874
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @debug_rt_mutex_free_waiter(ptr noundef %waiter) #2 align 16 !dbg !3875 {
entry:
  %waiter.addr = alloca ptr, align 8
  store ptr %waiter, ptr %waiter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %waiter.addr, metadata !3877, metadata !DIExpression()), !dbg !3878
  ret void, !dbg !3879
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @debug_rt_mutex_init_waiter(ptr noundef %waiter) #2 align 16 !dbg !3880 {
entry:
  %waiter.addr = alloca ptr, align 8
  store ptr %waiter, ptr %waiter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %waiter.addr, metadata !3882, metadata !DIExpression()), !dbg !3883
  ret void, !dbg !3884
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_contention_begin(ptr noundef %lock, i32 noundef %flags) #2 align 16 !dbg !1972 {
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
  %__UNIQUE_ID_rcu239 = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %tmp45 = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1976, metadata !DIExpression()), !dbg !3885
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1977, metadata !DIExpression()), !dbg !3885
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_contention_begin, i32 0, i32 1)) #14, !dbg !3886
  br i1 %call, label %if.then, label %if.end68, !dbg !3885

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !3886

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__idx) #15, !dbg !3887
  call void @llvm.dbg.declare(metadata ptr %__idx, metadata !1978, metadata !DIExpression()), !dbg !3887
  store i32 0, ptr %__idx, align 4, !dbg !3887
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #15, !dbg !3888
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !1981, metadata !DIExpression()), !dbg !3888
  br label %do.body1, !dbg !3888

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !3889
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1984, metadata !DIExpression()), !dbg !3889
  store ptr null, ptr %__vpp_verify, align 8, !dbg !3889
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !3889
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !3888
  br label %do.cond, !dbg !3889

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !3889

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #15, !dbg !3890
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !1986, metadata !DIExpression()), !dbg !3890
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.16, ptr @pcpu_hot, i32 0, i32 2)) #15, !dbg !3890, !srcloc !3891
  store i32 %1, ptr %pfo_val__, align 4, !dbg !3890
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !3890
  %conv = zext i32 %2 to i64, !dbg !3890
  %conv2 = trunc i64 %conv to i32, !dbg !3890
  store i32 %conv2, ptr %tmp, align 4, !dbg !3890
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #15, !dbg !3888
  %3 = load i32, ptr %tmp, align 4, !dbg !3890
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !3888
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !3888
  store i32 %4, ptr %tmp3, align 4, !dbg !3888
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #15, !dbg !3892
  %5 = load i32, ptr %tmp3, align 4, !dbg !3888
  %call4 = call zeroext i1 @cpu_online(i32 noundef %5) #14, !dbg !3892
  br i1 %call4, label %if.end, label %if.then5, !dbg !3887

if.then5:                                         ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3892

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !3893
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1988, metadata !DIExpression()), !dbg !3893
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !3893
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !3894
  %tobool = icmp ne i32 %6, 0, !dbg !3894
  %lnot = xor i1 %tobool, true, !dbg !3894
  %lnot6 = xor i1 %lnot, true, !dbg !3894
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !3894
  %conv7 = sext i32 %lnot.ext to i64, !dbg !3894
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !3894
  %tobool8 = icmp ne i64 %expval, 0, !dbg !3894
  br i1 %tobool8, label %if.then9, label %if.end22, !dbg !3893

if.then9:                                         ; preds = %if.end
  br label %do.body10, !dbg !3894

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !3895
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1991, metadata !DIExpression()), !dbg !3895
  store i32 2307, ptr %__flags, align 4, !dbg !3895
  br label %do.body11, !dbg !3895

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !3896

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !3896

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !3895

do.body14:                                        ; preds = %do.end13
  %7 = load i32, ptr %__flags, align 4, !dbg !3898
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 120, i32 %7, i64 12) #15, !dbg !3898, !srcloc !3900
  br label %do.cond15, !dbg !3898

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !3898

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !3895

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !3901

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !3901

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !3894
  br label %do.cond20, !dbg !3895

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !3895

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !3895

if.end22:                                         ; preds = %do.end21, %if.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !3893
  %tobool24 = icmp ne i32 %8, 0, !dbg !3893
  %lnot25 = xor i1 %tobool24, true, !dbg !3893
  %lnot27 = xor i1 %lnot25, true, !dbg !3893
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !3893
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !3893
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !3893
  store i64 %expval30, ptr %tmp23, align 8, !dbg !3894
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !3903
  %9 = load i64, ptr %tmp23, align 8, !dbg !3893
  %tobool31 = icmp ne i64 %9, 0, !dbg !3903
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !3887

if.then32:                                        ; preds = %if.end22
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3903

if.end33:                                         ; preds = %if.end22
  br label %do.body34, !dbg !3887

do.body34:                                        ; preds = %if.end33
  call void @__preempt_count_add(i32 noundef 1) #14, !dbg !3904
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !3904, !srcloc !3906
  br label %do.cond35, !dbg !3904

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !3904

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !3887

do.body37:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #15, !dbg !3907
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !1994, metadata !DIExpression()), !dbg !3907
  call void @llvm.lifetime.start.p0(i64 8, ptr %__data) #15, !dbg !3907
  call void @llvm.dbg.declare(metadata ptr %__data, metadata !1996, metadata !DIExpression()), !dbg !3907
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu239) #15, !dbg !3908
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu239, metadata !1997, metadata !DIExpression()), !dbg !3908
  br label %do.body38, !dbg !3909

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !3911

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !3911

do.end40:                                         ; preds = %do.cond39
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_contention_begin, i32 0, i32 8), align 8, !dbg !3909
  store ptr %10, ptr %tmp41, align 8, !dbg !3911
  %11 = load ptr, ptr %tmp41, align 8, !dbg !3909
  store ptr %11, ptr %__UNIQUE_ID_rcu239, align 8, !dbg !3908
  %12 = load ptr, ptr %__UNIQUE_ID_rcu239, align 8, !dbg !3908
  store ptr %12, ptr %tmp42, align 8, !dbg !3908
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu239) #15, !dbg !3907
  %13 = load ptr, ptr %tmp42, align 8, !dbg !3908
  store ptr %13, ptr %it_func_ptr, align 8, !dbg !3907
  %14 = load ptr, ptr %it_func_ptr, align 8, !dbg !3913
  %tobool43 = icmp ne ptr %14, null, !dbg !3913
  br i1 %tobool43, label %if.then44, label %if.end47, !dbg !3907

if.then44:                                        ; preds = %do.end40
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !3915
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %15, i32 0, i32 1, !dbg !3915
  %16 = load ptr, ptr %data, align 8, !dbg !3915
  store ptr %16, ptr %__data, align 8, !dbg !3915
  store ptr @__SCT__tp_func_contention_begin, ptr %tmp45, align 8, !dbg !3917
  %17 = load ptr, ptr %tmp45, align 8, !dbg !3917
  %18 = load ptr, ptr %__data, align 8, !dbg !3915
  %19 = load ptr, ptr %lock.addr, align 8, !dbg !3915
  %20 = load i32, ptr %flags.addr, align 4, !dbg !3915
  %call46 = call i32 %17(ptr noundef %18, ptr noundef %19, i32 noundef %20) #14, !dbg !3915
  br label %if.end47, !dbg !3915

if.end47:                                         ; preds = %if.then44, %do.end40
  call void @llvm.lifetime.end.p0(i64 8, ptr %__data) #15, !dbg !3887
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #15, !dbg !3887
  br label %do.cond48, !dbg !3907

do.cond48:                                        ; preds = %if.end47
  br label %do.end49, !dbg !3907

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !3887

do.body50:                                        ; preds = %do.end49
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !3919, !srcloc !3921
  %call51 = call zeroext i1 @__preempt_count_dec_and_test() #14, !dbg !3922
  %lnot52 = xor i1 %call51, true, !dbg !3922
  %lnot54 = xor i1 %lnot52, true, !dbg !3922
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !3922
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !3922
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !3922
  %tobool58 = icmp ne i64 %expval57, 0, !dbg !3922
  br i1 %tobool58, label %if.then59, label %if.end63, !dbg !3919

if.then59:                                        ; preds = %do.body50
  br label %do.body60, !dbg !3922

do.body60:                                        ; preds = %if.then59
  %21 = call i64 @llvm.read_register.i64(metadata !2102), !dbg !3924
  %22 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %21) #15, !dbg !3924, !srcloc !3926
  call void @llvm.write_register.i64(metadata !2102, i64 %22), !dbg !3924
  br label %do.cond61, !dbg !3924

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !3924

do.end62:                                         ; preds = %do.cond61
  br label %if.end63, !dbg !3924

if.end63:                                         ; preds = %do.end62, %do.body50
  br label %do.cond64, !dbg !3919

do.cond64:                                        ; preds = %if.end63
  br label %do.end65, !dbg !3919

do.end65:                                         ; preds = %do.cond64
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3886
  br label %cleanup, !dbg !3886

cleanup:                                          ; preds = %do.end65, %if.then32, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__idx) #15, !dbg !3886
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end68
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end67, !dbg !3887

do.end67:                                         ; preds = %cleanup.cont
  br label %if.end68, !dbg !3887

if.end68:                                         ; preds = %cleanup, %do.end67, %entry
  ret void, !dbg !3885

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rt_mutex_handle_deadlock(i32 noundef %res, i32 noundef %detect_deadlock, ptr noundef %lock, ptr noundef %w) #0 section ".sched.text" align 16 !dbg !3927 {
entry:
  %res.addr = alloca i32, align 4
  %detect_deadlock.addr = alloca i32, align 4
  %lock.addr = alloca ptr, align 8
  %w.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ai_ptr = alloca ptr, align 8
  %tmp43 = alloca i32, align 4
  %__ret = alloca i32, align 4
  %tmp44 = alloca i32, align 4
  store i32 %res, ptr %res.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !3931, metadata !DIExpression()), !dbg !3949
  store i32 %detect_deadlock, ptr %detect_deadlock.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %detect_deadlock.addr, metadata !3932, metadata !DIExpression()), !dbg !3950
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !3933, metadata !DIExpression()), !dbg !3951
  store ptr %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !3934, metadata !DIExpression()), !dbg !3952
  %0 = load i32, ptr %res.addr, align 4, !dbg !3953
  %cmp = icmp ne i32 %0, -35, !dbg !3955
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3956

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %detect_deadlock.addr, align 4, !dbg !3957
  %tobool = icmp ne i32 %1, 0, !dbg !3957
  br i1 %tobool, label %if.then, label %if.end, !dbg !3958

if.then:                                          ; preds = %lor.lhs.false, %entry
  ret void, !dbg !3959

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %lock.addr, align 8, !dbg !3960
  %wait_lock = getelementptr inbounds %struct.rt_mutex_base, ptr %2, i32 0, i32 0, !dbg !3960
  call void @_raw_spin_unlock_irq(ptr noundef %wait_lock) #14, !dbg !3960
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !3961
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !3935, metadata !DIExpression()), !dbg !3961
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !3961
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !3962
  %tobool1 = icmp ne i32 %3, 0, !dbg !3962
  %lnot = xor i1 %tobool1, true, !dbg !3962
  %lnot2 = xor i1 %lnot, true, !dbg !3962
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !3962
  %conv = sext i32 %lnot.ext to i64, !dbg !3962
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3962
  %tobool3 = icmp ne i64 %expval, 0, !dbg !3962
  br i1 %tobool3, label %if.then4, label %if.end23, !dbg !3961

if.then4:                                         ; preds = %if.end
  br label %do.body, !dbg !3962

do.body:                                          ; preds = %if.then4
  br label %do.body5, !dbg !3963

do.body5:                                         ; preds = %do.body
  br label %do.cond, !dbg !3964

do.cond:                                          ; preds = %do.body5
  br label %do.end, !dbg !3964

do.end:                                           ; preds = %do.cond
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.1) #14, !dbg !3963
  br label %do.body6, !dbg !3963

do.body6:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !3966
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !3937, metadata !DIExpression()), !dbg !3966
  store i32 2313, ptr %__flags, align 4, !dbg !3966
  br label %do.body7, !dbg !3966

do.body7:                                         ; preds = %do.body6
  br label %do.cond8, !dbg !3967

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !3967

do.end9:                                          ; preds = %do.cond8
  br label %do.body10, !dbg !3966

do.body10:                                        ; preds = %do.end9
  %4 = load i32, ptr %__flags, align 4, !dbg !3969
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 1642, i32 %4, i64 12) #15, !dbg !3969, !srcloc !3971
  br label %do.cond11, !dbg !3969

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !3969

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !3966

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !3972

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !3972

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !3963
  br label %do.cond16, !dbg !3966

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !3966

do.end17:                                         ; preds = %do.cond16
  br label %do.body18, !dbg !3963

do.body18:                                        ; preds = %do.end17
  br label %do.cond19, !dbg !3974

do.cond19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !3974

do.end20:                                         ; preds = %do.cond19
  br label %do.cond21, !dbg !3963

do.cond21:                                        ; preds = %do.end20
  br label %do.end22, !dbg !3963

do.end22:                                         ; preds = %do.cond21
  br label %if.end23, !dbg !3963

if.end23:                                         ; preds = %do.end22, %if.end
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !3961
  %tobool24 = icmp ne i32 %5, 0, !dbg !3961
  %lnot25 = xor i1 %tobool24, true, !dbg !3961
  %lnot27 = xor i1 %lnot25, true, !dbg !3961
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !3961
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !3961
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !3961
  store i64 %expval30, ptr %tmp, align 8, !dbg !3962
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !3976
  %6 = load i64, ptr %tmp, align 8, !dbg !3961
  br label %while.body, !dbg !3977

while.body:                                       ; preds = %if.end23, %do.end50
  br label %do.body31, !dbg !3978

do.body31:                                        ; preds = %while.body
  br label %do.body32, !dbg !3979

do.body32:                                        ; preds = %do.body31
  br label %do.end34, !dbg !3980

do.end34:                                         ; preds = %do.body32
  br label %do.body35, !dbg !3979

do.body35:                                        ; preds = %do.end34
  br label %do.body36, !dbg !3982

do.body36:                                        ; preds = %do.body35
  br label %do.end38, !dbg !3983

do.end38:                                         ; preds = %do.body36
  br label %do.body39, !dbg !3982

do.body39:                                        ; preds = %do.end38
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #15, !dbg !3985
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !3941, metadata !DIExpression()), !dbg !3985
  %call = call ptr @get_current() #14, !dbg !3985
  %__state = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 1, !dbg !3985
  store ptr %__state, ptr %__ai_ptr, align 8, !dbg !3985
  br label %do.body40, !dbg !3985

do.body40:                                        ; preds = %do.body39
  br label %do.cond41, !dbg !3986

do.cond41:                                        ; preds = %do.body40
  br label %do.end42, !dbg !3986

do.end42:                                         ; preds = %do.cond41
  %7 = load ptr, ptr %__ai_ptr, align 8, !dbg !3985
  call void @instrument_atomic_read_write(ptr noundef %7, i64 noundef 4) #14, !dbg !3985
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #15, !dbg !3988
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !3947, metadata !DIExpression()), !dbg !3988
  store i32 1, ptr %__ret, align 4, !dbg !3988
  %8 = load i32, ptr %__ret, align 4, !dbg !3988
  %9 = load ptr, ptr %__ai_ptr, align 8, !dbg !3988
  %10 = call i32 asm sideeffect "xchgl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %9, i32 %8, ptr elementtype(i32) %9) #15, !dbg !3988, !srcloc !3989
  store i32 %10, ptr %__ret, align 4, !dbg !3988
  %11 = load i32, ptr %__ret, align 4, !dbg !3988
  store i32 %11, ptr %tmp44, align 4, !dbg !3988
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #15, !dbg !3985
  %12 = load i32, ptr %tmp44, align 4, !dbg !3988
  store i32 %12, ptr %tmp43, align 4, !dbg !3985
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #15, !dbg !3990
  %13 = load i32, ptr %tmp43, align 4, !dbg !3985
  br label %do.end46, !dbg !3990

do.end46:                                         ; preds = %do.end42
  br label %do.end48, !dbg !3982

do.end48:                                         ; preds = %do.end46
  br label %do.end50, !dbg !3979

do.end50:                                         ; preds = %do.end48
  call void @schedule() #14, !dbg !3991
  br label %while.body, !dbg !3977, !llvm.loop !3992
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_contention_end(ptr noundef %lock, i32 noundef %ret) #2 align 16 !dbg !2014 {
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
  %__UNIQUE_ID_rcu247 = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %tmp45 = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2018, metadata !DIExpression()), !dbg !3994
  store i32 %ret, ptr %ret.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ret.addr, metadata !2019, metadata !DIExpression()), !dbg !3994
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_contention_end, i32 0, i32 1)) #14, !dbg !3995
  br i1 %call, label %if.then, label %if.end68, !dbg !3994

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !3995

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__idx) #15, !dbg !3996
  call void @llvm.dbg.declare(metadata ptr %__idx, metadata !2020, metadata !DIExpression()), !dbg !3996
  store i32 0, ptr %__idx, align 4, !dbg !3996
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #15, !dbg !3997
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !2023, metadata !DIExpression()), !dbg !3997
  br label %do.body1, !dbg !3997

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !3998
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2026, metadata !DIExpression()), !dbg !3998
  store ptr null, ptr %__vpp_verify, align 8, !dbg !3998
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !3998
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !3997
  br label %do.cond, !dbg !3998

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !3998

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #15, !dbg !3999
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !2028, metadata !DIExpression()), !dbg !3999
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.16, ptr @pcpu_hot, i32 0, i32 2)) #15, !dbg !3999, !srcloc !4000
  store i32 %1, ptr %pfo_val__, align 4, !dbg !3999
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !3999
  %conv = zext i32 %2 to i64, !dbg !3999
  %conv2 = trunc i64 %conv to i32, !dbg !3999
  store i32 %conv2, ptr %tmp, align 4, !dbg !3999
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #15, !dbg !3997
  %3 = load i32, ptr %tmp, align 4, !dbg !3999
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !3997
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !3997
  store i32 %4, ptr %tmp3, align 4, !dbg !3997
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #15, !dbg !4001
  %5 = load i32, ptr %tmp3, align 4, !dbg !3997
  %call4 = call zeroext i1 @cpu_online(i32 noundef %5) #14, !dbg !4001
  br i1 %call4, label %if.end, label %if.then5, !dbg !3996

if.then5:                                         ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4001

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !4002
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2030, metadata !DIExpression()), !dbg !4002
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !4002
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !4003
  %tobool = icmp ne i32 %6, 0, !dbg !4003
  %lnot = xor i1 %tobool, true, !dbg !4003
  %lnot6 = xor i1 %lnot, true, !dbg !4003
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !4003
  %conv7 = sext i32 %lnot.ext to i64, !dbg !4003
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !4003
  %tobool8 = icmp ne i64 %expval, 0, !dbg !4003
  br i1 %tobool8, label %if.then9, label %if.end22, !dbg !4002

if.then9:                                         ; preds = %if.end
  br label %do.body10, !dbg !4003

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !4004
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !2033, metadata !DIExpression()), !dbg !4004
  store i32 2307, ptr %__flags, align 4, !dbg !4004
  br label %do.body11, !dbg !4004

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !4005

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !4005

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !4004

do.body14:                                        ; preds = %do.end13
  %7 = load i32, ptr %__flags, align 4, !dbg !4007
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 139, i32 %7, i64 12) #15, !dbg !4007, !srcloc !4009
  br label %do.cond15, !dbg !4007

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !4007

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !4004

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !4010

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !4010

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !4003
  br label %do.cond20, !dbg !4004

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !4004

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !4004

if.end22:                                         ; preds = %do.end21, %if.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !4002
  %tobool24 = icmp ne i32 %8, 0, !dbg !4002
  %lnot25 = xor i1 %tobool24, true, !dbg !4002
  %lnot27 = xor i1 %lnot25, true, !dbg !4002
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !4002
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !4002
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !4002
  store i64 %expval30, ptr %tmp23, align 8, !dbg !4003
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !4012
  %9 = load i64, ptr %tmp23, align 8, !dbg !4002
  %tobool31 = icmp ne i64 %9, 0, !dbg !4012
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !3996

if.then32:                                        ; preds = %if.end22
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4012

if.end33:                                         ; preds = %if.end22
  br label %do.body34, !dbg !3996

do.body34:                                        ; preds = %if.end33
  call void @__preempt_count_add(i32 noundef 1) #14, !dbg !4013
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !4013, !srcloc !4015
  br label %do.cond35, !dbg !4013

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !4013

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !3996

do.body37:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #15, !dbg !4016
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !2036, metadata !DIExpression()), !dbg !4016
  call void @llvm.lifetime.start.p0(i64 8, ptr %__data) #15, !dbg !4016
  call void @llvm.dbg.declare(metadata ptr %__data, metadata !2038, metadata !DIExpression()), !dbg !4016
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu247) #15, !dbg !4017
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu247, metadata !2039, metadata !DIExpression()), !dbg !4017
  br label %do.body38, !dbg !4018

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !4020

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !4020

do.end40:                                         ; preds = %do.cond39
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_contention_end, i32 0, i32 8), align 8, !dbg !4018
  store ptr %10, ptr %tmp41, align 8, !dbg !4020
  %11 = load ptr, ptr %tmp41, align 8, !dbg !4018
  store ptr %11, ptr %__UNIQUE_ID_rcu247, align 8, !dbg !4017
  %12 = load ptr, ptr %__UNIQUE_ID_rcu247, align 8, !dbg !4017
  store ptr %12, ptr %tmp42, align 8, !dbg !4017
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu247) #15, !dbg !4016
  %13 = load ptr, ptr %tmp42, align 8, !dbg !4017
  store ptr %13, ptr %it_func_ptr, align 8, !dbg !4016
  %14 = load ptr, ptr %it_func_ptr, align 8, !dbg !4022
  %tobool43 = icmp ne ptr %14, null, !dbg !4022
  br i1 %tobool43, label %if.then44, label %if.end47, !dbg !4016

if.then44:                                        ; preds = %do.end40
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !4024
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %15, i32 0, i32 1, !dbg !4024
  %16 = load ptr, ptr %data, align 8, !dbg !4024
  store ptr %16, ptr %__data, align 8, !dbg !4024
  store ptr @__SCT__tp_func_contention_end, ptr %tmp45, align 8, !dbg !4026
  %17 = load ptr, ptr %tmp45, align 8, !dbg !4026
  %18 = load ptr, ptr %__data, align 8, !dbg !4024
  %19 = load ptr, ptr %lock.addr, align 8, !dbg !4024
  %20 = load i32, ptr %ret.addr, align 4, !dbg !4024
  %call46 = call i32 %17(ptr noundef %18, ptr noundef %19, i32 noundef %20) #14, !dbg !4024
  br label %if.end47, !dbg !4024

if.end47:                                         ; preds = %if.then44, %do.end40
  call void @llvm.lifetime.end.p0(i64 8, ptr %__data) #15, !dbg !3996
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #15, !dbg !3996
  br label %do.cond48, !dbg !4016

do.cond48:                                        ; preds = %if.end47
  br label %do.end49, !dbg !4016

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !3996

do.body50:                                        ; preds = %do.end49
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !4028, !srcloc !4030
  %call51 = call zeroext i1 @__preempt_count_dec_and_test() #14, !dbg !4031
  %lnot52 = xor i1 %call51, true, !dbg !4031
  %lnot54 = xor i1 %lnot52, true, !dbg !4031
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !4031
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !4031
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !4031
  %tobool58 = icmp ne i64 %expval57, 0, !dbg !4031
  br i1 %tobool58, label %if.then59, label %if.end63, !dbg !4028

if.then59:                                        ; preds = %do.body50
  br label %do.body60, !dbg !4031

do.body60:                                        ; preds = %if.then59
  %21 = call i64 @llvm.read_register.i64(metadata !2102), !dbg !4033
  %22 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %21) #15, !dbg !4033, !srcloc !4035
  call void @llvm.write_register.i64(metadata !2102, i64 %22), !dbg !4033
  br label %do.cond61, !dbg !4033

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !4033

do.end62:                                         ; preds = %do.cond61
  br label %if.end63, !dbg !4033

if.end63:                                         ; preds = %do.end62, %do.body50
  br label %do.cond64, !dbg !4028

do.cond64:                                        ; preds = %if.end63
  br label %do.end65, !dbg !4028

do.end65:                                         ; preds = %do.cond64
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3995
  br label %cleanup, !dbg !3995

cleanup:                                          ; preds = %do.end65, %if.then32, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__idx) #15, !dbg !3995
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end68
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end67, !dbg !3996

do.end67:                                         ; preds = %cleanup.cont
  br label %if.end68, !dbg !3996

if.end68:                                         ; preds = %cleanup, %do.end67, %entry
  ret void, !dbg !3994

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #3 align 16 !dbg !4036 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !4059, metadata !DIExpression()), !dbg !4060
  %0 = load ptr, ptr %key.addr, align 8, !dbg !4061
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #14, !dbg !4062
  ret i1 %call, !dbg !4063
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpu_online(i32 noundef %cpu) #2 align 16 !dbg !4064 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4068, metadata !DIExpression()), !dbg !4069
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !4070
  %call = call zeroext i1 @cpumask_test_cpu(i32 noundef %0, ptr noundef @__cpu_online_mask) #14, !dbg !4071
  ret i1 %call, !dbg !4072
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #3 align 16 !dbg !4073 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !4076, metadata !DIExpression()), !dbg !4084
  br label %do.body, !dbg !4085

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #15, !dbg !4086
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !4077, metadata !DIExpression()), !dbg !4086
  %0 = load i32, ptr %val.addr, align 4, !dbg !4086
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !4086
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !4086

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !4086
  %cmp = icmp eq i32 %2, 1, !dbg !4086
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !4086

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !4086
  %cmp1 = icmp eq i32 %3, -1, !dbg !4086
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !4086

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !4086
  br label %cond.end, !dbg !4086

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !4086

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !4086
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !4086
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !4087
  %cmp2 = icmp eq i32 %5, 1, !dbg !4087
  br i1 %cmp2, label %if.then, label %if.else, !dbg !4086

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.16, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.16, ptr @pcpu_hot, i32 0, i32 1)) #15, !dbg !4088, !srcloc !4090
  br label %if.end8, !dbg !4087

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !4091
  %cmp3 = icmp eq i32 %6, -1, !dbg !4091
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !4087

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.16, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.16, ptr @pcpu_hot, i32 0, i32 1)) #15, !dbg !4092, !srcloc !4094
  br label %if.end, !dbg !4091

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !4091

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #15, !dbg !4095
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !4080, metadata !DIExpression()), !dbg !4095
  %7 = load i32, ptr %val.addr, align 4, !dbg !4095
  %conv = sext i32 %7 to i64, !dbg !4095
  %and = and i64 %conv, 4294967295, !dbg !4095
  %conv7 = trunc i64 %and to i32, !dbg !4095
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !4095
  %8 = load i32, ptr %pto_val__, align 4, !dbg !4095
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.16, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.16, ptr @pcpu_hot, i32 0, i32 1)) #15, !dbg !4095, !srcloc !4096
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #15, !dbg !4091
  br label %do.cond, !dbg !4095

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !4095

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #15, !dbg !4085
  br label %do.end10, !dbg !4086

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !4097
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_contention_begin(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #3 align 16 !dbg !4098 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #15, !dbg !4104
  call void @llvm.dbg.declare(metadata ptr %c, metadata !4102, metadata !DIExpression()), !dbg !4104
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.16, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.16, ptr @pcpu_hot, i32 0, i32 1)) #15, !dbg !4104, !srcloc !4105
  %1 = icmp ult i8 %0, 2, !dbg !4104
  call void @llvm.assume(i1 %1), !dbg !4104
  store i8 %0, ptr %c, align 1, !dbg !4104
  %2 = load i8, ptr %c, align 1, !dbg !4104, !range !2426, !noundef !440
  %tobool = trunc i8 %2 to i1, !dbg !4104
  %frombool = zext i1 %tobool to i8, !dbg !4104
  store i8 %frombool, ptr %tmp, align 1, !dbg !4104
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #15, !dbg !4106
  %3 = load i8, ptr %tmp, align 1, !dbg !4104, !range !2426, !noundef !440
  %tobool1 = trunc i8 %3 to i1, !dbg !4104
  ret i1 %tobool1, !dbg !4107
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #10

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #3 align 16 !dbg !4108 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !4113, metadata !DIExpression()), !dbg !4116
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !4114, metadata !DIExpression()), !dbg !4117
  %0 = load ptr, ptr %key.addr, align 8, !dbg !4118
  %1 = load i8, ptr %branch.addr, align 1, !dbg !4119, !range !2426, !noundef !440
  %tobool = trunc i8 %1 to i1, !dbg !4119
  %conv = zext i1 %tobool to i32, !dbg !4119
  %or = or i32 2, %conv, !dbg !4120
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #15
          to label %asm.fallthrough [label %l_yes], !dbg !4121, !srcloc !4122

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !4123
  br label %return, !dbg !4123

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !4115), !dbg !4124
  store i1 true, ptr %retval, align 1, !dbg !4125
  br label %return, !dbg !4125

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !4126
  ret i1 %2, !dbg !4126
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_test_cpu(i32 noundef %cpu, ptr noundef %cpumask) #3 align 16 !dbg !4127 {
entry:
  %cpu.addr = alloca i32, align 4
  %cpumask.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4131, metadata !DIExpression()), !dbg !4133
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !4132, metadata !DIExpression()), !dbg !4134
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !4135
  %call = call i32 @cpumask_check(i32 noundef %0) #14, !dbg !4135
  %conv = zext i32 %call to i64, !dbg !4135
  %1 = load ptr, ptr %cpumask.addr, align 8, !dbg !4135
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !4135
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !4135
  %call1 = call zeroext i1 @_test_bit(i64 noundef %conv, ptr noundef %arraydecay) #14, !dbg !4135
  ret i1 %call1, !dbg !4136
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !4137 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4142, metadata !DIExpression()), !dbg !4144
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4143, metadata !DIExpression()), !dbg !4145
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4146
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4147
  %div = udiv i64 %1, 64, !dbg !4147
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !4148
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #14, !dbg !4149
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4150
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4151
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #14, !dbg !4152
  ret i1 %call, !dbg !4153
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_check(i32 noundef %cpu) #3 align 16 !dbg !4154 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4158, metadata !DIExpression()), !dbg !4159
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !4160
  call void @cpu_max_bits_warn(i32 noundef %0, i32 noundef 64) #14, !dbg !4161
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !4162
  ret i32 %1, !dbg !4163
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !4164 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4166, metadata !DIExpression()), !dbg !4168
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4167, metadata !DIExpression()), !dbg !4169
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4170
  %1 = load i64, ptr %size.addr, align 8, !dbg !4171
  %conv = trunc i64 %1 to i32, !dbg !4171
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #14, !dbg !4172
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4173
  %3 = load i64, ptr %size.addr, align 8, !dbg !4173
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #14, !dbg !4173
  ret void, !dbg !4174
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !4175 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4178, metadata !DIExpression()), !dbg !4180
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4179, metadata !DIExpression()), !dbg !4181
  %0 = load i64, ptr %nr.addr, align 8, !dbg !4182
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4183
  br i1 %1, label %cond.true, label %cond.false, !dbg !4183

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4184
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4185
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #14, !dbg !4186
  %conv = zext i1 %call to i32, !dbg !4186
  br label %cond.end, !dbg !4183

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !4187
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !4188
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #14, !dbg !4189
  %conv2 = zext i1 %call1 to i32, !dbg !4189
  br label %cond.end, !dbg !4183

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !4183
  %tobool = icmp ne i32 %cond, 0, !dbg !4183
  ret i1 %tobool, !dbg !4190
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #2 align 16 !dbg !4191 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4193, metadata !DIExpression()), !dbg !4195
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4194, metadata !DIExpression()), !dbg !4196
  ret i1 true, !dbg !4197
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !4198 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4202, metadata !DIExpression()), !dbg !4204
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4203, metadata !DIExpression()), !dbg !4205
  %0 = load i64, ptr %nr.addr, align 8, !dbg !4206
  %and = and i64 %0, 63, !dbg !4207
  %shl = shl i64 1, %and, !dbg !4208
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !4209
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4210
  %shr = ashr i64 %2, 6, !dbg !4211
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !4209
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !4209
  %and1 = and i64 %shl, %3, !dbg !4212
  %cmp = icmp ne i64 %and1, 0, !dbg !4213
  ret i1 %cmp, !dbg !4214
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !4215 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4217, metadata !DIExpression()), !dbg !4220
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4218, metadata !DIExpression()), !dbg !4221
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #15, !dbg !4222
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !4219, metadata !DIExpression()), !dbg !4223
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4224
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4225
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #15, !dbg !4226, !srcloc !4227
  %3 = icmp ult i8 %2, 2, !dbg !4226
  call void @llvm.assume(i1 %3), !dbg !4226
  store i8 %2, ptr %oldbit, align 1, !dbg !4226
  %4 = load i8, ptr %oldbit, align 1, !dbg !4228, !range !2426, !noundef !440
  %tobool = trunc i8 %4 to i1, !dbg !4228
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #15, !dbg !4229
  ret i1 %tobool, !dbg !4230
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_max_bits_warn(i32 noundef %cpu, i32 noundef %bits) #3 align 16 !dbg !4231 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4235, metadata !DIExpression()), !dbg !4237
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !4236, metadata !DIExpression()), !dbg !4238
  ret void, !dbg !4239
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #12

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4240 dso_local void @__warn_printk(ptr noundef, ...) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4244 dso_local void @schedule() #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_contention_end(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @rt_mutex_cmpxchg_release(ptr noundef %lock, ptr noundef %old, ptr noundef %new) #3 align 16 !dbg !4245 {
entry:
  %lock.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca ptr, align 8
  %__ai_ptr = alloca ptr, align 8
  %__ai_oldp = alloca ptr, align 8
  %tmp = alloca i64, align 8
  %success = alloca i8, align 1
  %_old = alloca ptr, align 8
  %__old = alloca ptr, align 8
  %__new = alloca ptr, align 8
  %__ptr = alloca ptr, align 8
  %tmp5 = alloca i64, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4247, metadata !DIExpression()), !dbg !4259
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !4248, metadata !DIExpression()), !dbg !4260
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4249, metadata !DIExpression()), !dbg !4261
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #15, !dbg !4262
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !4250, metadata !DIExpression()), !dbg !4262
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4262
  %owner = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 2, !dbg !4262
  store ptr %owner, ptr %__ai_ptr, align 8, !dbg !4262
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_oldp) #15, !dbg !4262
  call void @llvm.dbg.declare(metadata ptr %__ai_oldp, metadata !4252, metadata !DIExpression()), !dbg !4262
  store ptr %old.addr, ptr %__ai_oldp, align 8, !dbg !4262
  br label %do.body, !dbg !4262

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !4263

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4263

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %__ai_ptr, align 8, !dbg !4262
  call void @instrument_atomic_read_write(ptr noundef %1, i64 noundef 8) #14, !dbg !4262
  %2 = load ptr, ptr %__ai_oldp, align 8, !dbg !4262
  call void @instrument_read_write(ptr noundef %2, i64 noundef 8) #14, !dbg !4262
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #15, !dbg !4265
  call void @llvm.dbg.declare(metadata ptr %success, metadata !4253, metadata !DIExpression()), !dbg !4265
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #15, !dbg !4265
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !4255, metadata !DIExpression()), !dbg !4265
  %3 = load ptr, ptr %__ai_oldp, align 8, !dbg !4265
  store ptr %3, ptr %_old, align 8, !dbg !4265
  call void @llvm.lifetime.start.p0(i64 8, ptr %__old) #15, !dbg !4265
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !4256, metadata !DIExpression()), !dbg !4265
  %4 = load ptr, ptr %_old, align 8, !dbg !4265
  %5 = load ptr, ptr %4, align 8, !dbg !4265
  store ptr %5, ptr %__old, align 8, !dbg !4265
  call void @llvm.lifetime.start.p0(i64 8, ptr %__new) #15, !dbg !4265
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !4257, metadata !DIExpression()), !dbg !4265
  %6 = load ptr, ptr %new.addr, align 8, !dbg !4265
  store ptr %6, ptr %__new, align 8, !dbg !4265
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #15, !dbg !4265
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4258, metadata !DIExpression()), !dbg !4265
  %7 = load ptr, ptr %__ai_ptr, align 8, !dbg !4265
  store ptr %7, ptr %__ptr, align 8, !dbg !4265
  %8 = load ptr, ptr %__ptr, align 8, !dbg !4265
  %9 = load ptr, ptr %__old, align 8, !dbg !4265
  %10 = load ptr, ptr %__new, align 8, !dbg !4265
  %11 = call { i8, ptr } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgq $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %8, ptr %10, ptr elementtype(i64) %8, ptr %9) #15, !dbg !4265, !srcloc !4266
  %asmresult = extractvalue { i8, ptr } %11, 0, !dbg !4265
  %asmresult1 = extractvalue { i8, ptr } %11, 1, !dbg !4265
  %12 = icmp ult i8 %asmresult, 2, !dbg !4265
  call void @llvm.assume(i1 %12), !dbg !4265
  store i8 %asmresult, ptr %success, align 1, !dbg !4265
  store ptr %asmresult1, ptr %__old, align 8, !dbg !4265
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #15, !dbg !4265
  %13 = load i8, ptr %success, align 1, !dbg !4267, !range !2426, !noundef !440
  %tobool = trunc i8 %13 to i1, !dbg !4267
  %lnot = xor i1 %tobool, true, !dbg !4267
  %lnot2 = xor i1 %lnot, true, !dbg !4267
  %lnot3 = xor i1 %lnot2, true, !dbg !4267
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !4267
  %conv = sext i32 %lnot.ext to i64, !dbg !4267
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4267
  %tobool4 = icmp ne i64 %expval, 0, !dbg !4267
  br i1 %tobool4, label %if.then, label %if.end, !dbg !4265

if.then:                                          ; preds = %do.end
  %14 = load ptr, ptr %__old, align 8, !dbg !4267
  %15 = load ptr, ptr %_old, align 8, !dbg !4267
  store ptr %14, ptr %15, align 8, !dbg !4267
  br label %if.end, !dbg !4267

if.end:                                           ; preds = %if.then, %do.end
  %16 = load i8, ptr %success, align 1, !dbg !4265, !range !2426, !noundef !440
  %tobool6 = trunc i8 %16 to i1, !dbg !4265
  %lnot7 = xor i1 %tobool6, true, !dbg !4265
  %lnot9 = xor i1 %lnot7, true, !dbg !4265
  %lnot.ext10 = zext i1 %lnot9 to i32, !dbg !4265
  %conv11 = sext i32 %lnot.ext10 to i64, !dbg !4265
  %expval12 = call i64 @llvm.expect.i64(i64 %conv11, i64 1), !dbg !4265
  store i64 %expval12, ptr %tmp5, align 8, !dbg !4267
  call void @llvm.lifetime.end.p0(i64 8, ptr %__new) #15, !dbg !4262
  call void @llvm.lifetime.end.p0(i64 8, ptr %__old) #15, !dbg !4262
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #15, !dbg !4262
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #15, !dbg !4262
  %17 = load i64, ptr %tmp5, align 8, !dbg !4265
  store i64 %17, ptr %tmp, align 8, !dbg !4262
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_oldp) #15, !dbg !4269
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #15, !dbg !4269
  %18 = load i64, ptr %tmp, align 8, !dbg !4262
  %tobool13 = icmp ne i64 %18, 0, !dbg !4269
  ret i1 %tobool13, !dbg !4270
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rt_mutex_slowunlock(ptr noundef %lock) #0 section ".sched.text" align 16 !dbg !4271 {
entry:
  %lock.addr = alloca ptr, align 8
  %wqh = alloca %struct.rt_wake_q_head, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy9 = alloca i64, align 8
  %__dummy210 = alloca i64, align 8
  %tmp13 = alloca i32, align 4
  %__dummy19 = alloca i64, align 8
  %__dummy220 = alloca i64, align 8
  %tmp23 = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4273, metadata !DIExpression()), !dbg !4289
  call void @llvm.lifetime.start.p0(i64 24, ptr %wqh) #15, !dbg !4290
  call void @llvm.dbg.declare(metadata ptr %wqh, metadata !4274, metadata !DIExpression()), !dbg !4290
  %head = getelementptr inbounds %struct.rt_wake_q_head, ptr %wqh, i32 0, i32 0, !dbg !4290
  %first = getelementptr inbounds %struct.wake_q_head, ptr %head, i32 0, i32 0, !dbg !4290
  store ptr inttoptr (i64 1 to ptr), ptr %first, align 8, !dbg !4290
  %lastp = getelementptr inbounds %struct.wake_q_head, ptr %head, i32 0, i32 1, !dbg !4290
  %head1 = getelementptr inbounds %struct.rt_wake_q_head, ptr %wqh, i32 0, i32 0, !dbg !4290
  %first2 = getelementptr inbounds %struct.wake_q_head, ptr %head1, i32 0, i32 0, !dbg !4290
  store ptr %first2, ptr %lastp, align 8, !dbg !4290
  %rtlock_task = getelementptr inbounds %struct.rt_wake_q_head, ptr %wqh, i32 0, i32 1, !dbg !4290
  store ptr null, ptr %rtlock_task, align 8, !dbg !4290
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !4291
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4275, metadata !DIExpression()), !dbg !4292
  br label %do.body, !dbg !4293

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !4294
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4276, metadata !DIExpression()), !dbg !4294
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !4294
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4279, metadata !DIExpression()), !dbg !4294
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !4294
  %conv = zext i1 %cmp to i32, !dbg !4294
  store i32 1, ptr %tmp, align 4, !dbg !4294
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !4295
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !4295
  %0 = load i32, ptr %tmp, align 4, !dbg !4294
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !4295
  %wait_lock = getelementptr inbounds %struct.rt_mutex_base, ptr %1, i32 0, i32 0, !dbg !4295
  %call = call i64 @_raw_spin_lock_irqsave(ptr noundef %wait_lock) #14, !dbg !4295
  store i64 %call, ptr %flags, align 8, !dbg !4295
  br label %do.cond, !dbg !4295

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4295

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %lock.addr, align 8, !dbg !4296
  call void @debug_rt_mutex_unlock(ptr noundef %2) #14, !dbg !4297
  br label %while.cond, !dbg !4298

while.cond:                                       ; preds = %do.end17, %do.end
  %3 = load ptr, ptr %lock.addr, align 8, !dbg !4299
  %call3 = call i32 @rt_mutex_has_waiters(ptr noundef %3) #14, !dbg !4300
  %tobool = icmp ne i32 %call3, 0, !dbg !4301
  %lnot = xor i1 %tobool, true, !dbg !4301
  br i1 %lnot, label %while.body, label %while.end, !dbg !4298

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %lock.addr, align 8, !dbg !4302
  %5 = load i64, ptr %flags, align 8, !dbg !4304
  %call4 = call zeroext i1 @unlock_rt_mutex_safe(ptr noundef %4, i64 noundef %5) #14, !dbg !4305
  %conv5 = zext i1 %call4 to i32, !dbg !4305
  %cmp6 = icmp eq i32 %conv5, 1, !dbg !4306
  br i1 %cmp6, label %if.then, label %if.end, !dbg !4307

if.then:                                          ; preds = %while.body
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4308

if.end:                                           ; preds = %while.body
  br label %do.body8, !dbg !4309

do.body8:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy9) #15, !dbg !4310
  call void @llvm.dbg.declare(metadata ptr %__dummy9, metadata !4280, metadata !DIExpression()), !dbg !4310
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy210) #15, !dbg !4310
  call void @llvm.dbg.declare(metadata ptr %__dummy210, metadata !4284, metadata !DIExpression()), !dbg !4310
  %cmp11 = icmp eq ptr %__dummy9, %__dummy210, !dbg !4310
  %conv12 = zext i1 %cmp11 to i32, !dbg !4310
  store i32 1, ptr %tmp13, align 4, !dbg !4310
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy210) #15, !dbg !4311
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy9) #15, !dbg !4311
  %6 = load i32, ptr %tmp13, align 4, !dbg !4310
  %7 = load ptr, ptr %lock.addr, align 8, !dbg !4311
  %wait_lock14 = getelementptr inbounds %struct.rt_mutex_base, ptr %7, i32 0, i32 0, !dbg !4311
  %call15 = call i64 @_raw_spin_lock_irqsave(ptr noundef %wait_lock14) #14, !dbg !4311
  store i64 %call15, ptr %flags, align 8, !dbg !4311
  br label %do.cond16, !dbg !4311

do.cond16:                                        ; preds = %do.body8
  br label %do.end17, !dbg !4311

do.end17:                                         ; preds = %do.cond16
  br label %while.cond, !dbg !4298, !llvm.loop !4312

while.end:                                        ; preds = %while.cond
  %8 = load ptr, ptr %lock.addr, align 8, !dbg !4315
  call void @mark_wakeup_next_waiter(ptr noundef %wqh, ptr noundef %8) #14, !dbg !4316
  br label %do.body18, !dbg !4317

do.body18:                                        ; preds = %while.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy19) #15, !dbg !4318
  call void @llvm.dbg.declare(metadata ptr %__dummy19, metadata !4285, metadata !DIExpression()), !dbg !4318
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy220) #15, !dbg !4318
  call void @llvm.dbg.declare(metadata ptr %__dummy220, metadata !4288, metadata !DIExpression()), !dbg !4318
  %cmp21 = icmp eq ptr %__dummy19, %__dummy220, !dbg !4318
  %conv22 = zext i1 %cmp21 to i32, !dbg !4318
  store i32 1, ptr %tmp23, align 4, !dbg !4318
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy220) #15, !dbg !4319
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy19) #15, !dbg !4319
  %9 = load i32, ptr %tmp23, align 4, !dbg !4318
  %10 = load ptr, ptr %lock.addr, align 8, !dbg !4319
  %wait_lock24 = getelementptr inbounds %struct.rt_mutex_base, ptr %10, i32 0, i32 0, !dbg !4319
  %11 = load i64, ptr %flags, align 8, !dbg !4319
  call void @_raw_spin_unlock_irqrestore(ptr noundef %wait_lock24, i64 noundef %11) #14, !dbg !4319
  br label %do.cond25, !dbg !4319

do.cond25:                                        ; preds = %do.body18
  br label %do.end26, !dbg !4319

do.end26:                                         ; preds = %do.cond25
  call void @rt_mutex_wake_up_q(ptr noundef %wqh) #14, !dbg !4320
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4321
  br label %cleanup, !dbg !4321

cleanup:                                          ; preds = %do.end26, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !4321
  call void @llvm.lifetime.end.p0(i64 24, ptr %wqh) #15, !dbg !4321
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4321

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @unlock_rt_mutex_safe(ptr noundef %lock, i64 noundef %flags) #3 align 16 !dbg !4322 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %owner = alloca ptr, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4326, metadata !DIExpression()), !dbg !4333
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4327, metadata !DIExpression()), !dbg !4334
  call void @llvm.lifetime.start.p0(i64 8, ptr %owner) #15, !dbg !4335
  call void @llvm.dbg.declare(metadata ptr %owner, metadata !4328, metadata !DIExpression()), !dbg !4336
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4337
  %call = call ptr @rt_mutex_owner(ptr noundef %0) #14, !dbg !4338
  store ptr %call, ptr %owner, align 8, !dbg !4336
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !4339
  call void @clear_rt_mutex_waiters(ptr noundef %1) #14, !dbg !4340
  br label %do.body, !dbg !4341

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !4342
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4329, metadata !DIExpression()), !dbg !4342
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !4342
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4332, metadata !DIExpression()), !dbg !4342
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !4342
  %conv = zext i1 %cmp to i32, !dbg !4342
  store i32 1, ptr %tmp, align 4, !dbg !4342
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !4343
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !4343
  %2 = load i32, ptr %tmp, align 4, !dbg !4342
  %3 = load ptr, ptr %lock.addr, align 8, !dbg !4343
  %wait_lock = getelementptr inbounds %struct.rt_mutex_base, ptr %3, i32 0, i32 0, !dbg !4343
  %4 = load i64, ptr %flags.addr, align 8, !dbg !4343
  call void @_raw_spin_unlock_irqrestore(ptr noundef %wait_lock, i64 noundef %4) #14, !dbg !4343
  br label %do.cond, !dbg !4343

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4343

do.end:                                           ; preds = %do.cond
  %5 = load ptr, ptr %lock.addr, align 8, !dbg !4344
  %6 = load ptr, ptr %owner, align 8, !dbg !4345
  %call1 = call zeroext i1 @rt_mutex_cmpxchg_release(ptr noundef %5, ptr noundef %6, ptr noundef null) #14, !dbg !4346
  call void @llvm.lifetime.end.p0(i64 8, ptr %owner) #15, !dbg !4347
  ret i1 %call1, !dbg !4348
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_rt_mutex_waiters(ptr noundef %lock) #3 align 16 !dbg !4349 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4351, metadata !DIExpression()), !dbg !4352
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4353
  %owner = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 2, !dbg !4354
  %1 = load ptr, ptr %owner, align 8, !dbg !4354
  %2 = ptrtoint ptr %1 to i64, !dbg !4355
  %and = and i64 %2, -2, !dbg !4356
  %3 = inttoptr i64 %and to ptr, !dbg !4357
  %4 = load ptr, ptr %lock.addr, align 8, !dbg !4358
  %owner1 = getelementptr inbounds %struct.rt_mutex_base, ptr %4, i32 0, i32 2, !dbg !4359
  store ptr %3, ptr %owner1, align 8, !dbg !4360
  ret void, !dbg !4361
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4362 dso_local void @_raw_spin_lock(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @rt_mutex_top_waiter(ptr noundef %lock) #2 align 16 !dbg !4363 {
entry:
  %lock.addr = alloca ptr, align 8
  %leftmost = alloca ptr, align 8
  %w = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4367, metadata !DIExpression()), !dbg !4374
  call void @llvm.lifetime.start.p0(i64 8, ptr %leftmost) #15, !dbg !4375
  call void @llvm.dbg.declare(metadata ptr %leftmost, metadata !4368, metadata !DIExpression()), !dbg !4376
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4377
  %waiters = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 1, !dbg !4377
  %rb_leftmost = getelementptr inbounds %struct.rb_root_cached, ptr %waiters, i32 0, i32 1, !dbg !4377
  %1 = load ptr, ptr %rb_leftmost, align 8, !dbg !4377
  store ptr %1, ptr %leftmost, align 8, !dbg !4376
  call void @llvm.lifetime.start.p0(i64 8, ptr %w) #15, !dbg !4378
  call void @llvm.dbg.declare(metadata ptr %w, metadata !4369, metadata !DIExpression()), !dbg !4379
  store ptr null, ptr %w, align 8, !dbg !4379
  br label %do.body, !dbg !4380

do.body:                                          ; preds = %entry
  %2 = load ptr, ptr %lock.addr, align 8, !dbg !4381
  %wait_lock = getelementptr inbounds %struct.rt_mutex_base, ptr %2, i32 0, i32 0, !dbg !4381
  br label %do.cond, !dbg !4381

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4381

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %leftmost, align 8, !dbg !4383
  %tobool = icmp ne ptr %3, null, !dbg !4383
  br i1 %tobool, label %if.then, label %if.end17, !dbg !4384

if.then:                                          ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !4385
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4370, metadata !DIExpression()), !dbg !4385
  %4 = load ptr, ptr %leftmost, align 8, !dbg !4385
  store ptr %4, ptr %__mptr, align 8, !dbg !4385
  %5 = load ptr, ptr %__mptr, align 8, !dbg !4385
  %add.ptr = getelementptr i8, ptr %5, i64 0, !dbg !4385
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4385
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !4386
  %6 = load ptr, ptr %tmp, align 8, !dbg !4385
  store ptr %6, ptr %w, align 8, !dbg !4387
  br label %do.body1, !dbg !4388

do.body1:                                         ; preds = %if.then
  %7 = load ptr, ptr %w, align 8, !dbg !4389
  %lock2 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %7, i32 0, i32 3, !dbg !4389
  %8 = load ptr, ptr %lock2, align 8, !dbg !4389
  %9 = load ptr, ptr %lock.addr, align 8, !dbg !4389
  %cmp = icmp ne ptr %8, %9, !dbg !4389
  %lnot = xor i1 %cmp, true, !dbg !4389
  %lnot3 = xor i1 %lnot, true, !dbg !4389
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !4389
  %conv = sext i32 %lnot.ext to i64, !dbg !4389
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4389
  %tobool4 = icmp ne i64 %expval, 0, !dbg !4389
  br i1 %tobool4, label %if.then5, label %if.end, !dbg !4392

if.then5:                                         ; preds = %do.body1
  br label %do.body6, !dbg !4389

do.body6:                                         ; preds = %if.then5
  br label %do.body7, !dbg !4393

do.body7:                                         ; preds = %do.body6
  br label %do.cond8, !dbg !4395

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !4395

do.end9:                                          ; preds = %do.cond8
  br label %do.body10, !dbg !4393

do.body10:                                        ; preds = %do.end9
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 137, i32 0, i64 12) #15, !dbg !4397, !srcloc !4399
  br label %do.cond11, !dbg !4397

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !4397

do.end12:                                         ; preds = %do.cond11
  unreachable, !dbg !4393

do.cond13:                                        ; No predecessors!
  br label %do.end14, !dbg !4393

do.end14:                                         ; preds = %do.cond13
  br label %if.end, !dbg !4393

if.end:                                           ; preds = %do.end14, %do.body1
  br label %do.cond15, !dbg !4392

do.cond15:                                        ; preds = %if.end
  br label %do.end16, !dbg !4392

do.end16:                                         ; preds = %do.cond15
  br label %if.end17, !dbg !4400

if.end17:                                         ; preds = %do.end16, %do.end
  %10 = load ptr, ptr %w, align 8, !dbg !4401
  call void @llvm.lifetime.end.p0(i64 8, ptr %w) #15, !dbg !4402
  call void @llvm.lifetime.end.p0(i64 8, ptr %leftmost) #15, !dbg !4402
  ret ptr %10, !dbg !4403
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rt_mutex_dequeue_pi(ptr noundef %task, ptr noundef %waiter) #3 align 16 !dbg !4404 {
entry:
  %task.addr = alloca ptr, align 8
  %waiter.addr = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !4408, metadata !DIExpression()), !dbg !4410
  store ptr %waiter, ptr %waiter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %waiter.addr, metadata !4409, metadata !DIExpression()), !dbg !4411
  br label %do.body, !dbg !4412

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %task.addr, align 8, !dbg !4413
  %pi_lock = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 122, !dbg !4413
  br label %do.end, !dbg !4413

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr %waiter.addr, align 8, !dbg !4415
  %pi_tree = getelementptr inbounds %struct.rt_mutex_waiter, ptr %1, i32 0, i32 1, !dbg !4415
  %entry1 = getelementptr inbounds %struct.rt_waiter_node, ptr %pi_tree, i32 0, i32 0, !dbg !4415
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %entry1, i32 0, i32 0, !dbg !4415
  %2 = load i64, ptr %__rb_parent_color, align 8, !dbg !4415
  %3 = load ptr, ptr %waiter.addr, align 8, !dbg !4415
  %pi_tree2 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %3, i32 0, i32 1, !dbg !4415
  %entry3 = getelementptr inbounds %struct.rt_waiter_node, ptr %pi_tree2, i32 0, i32 0, !dbg !4415
  %4 = ptrtoint ptr %entry3 to i64, !dbg !4415
  %cmp = icmp eq i64 %2, %4, !dbg !4415
  br i1 %cmp, label %if.then, label %if.end, !dbg !4417

if.then:                                          ; preds = %do.end
  br label %return, !dbg !4418

if.end:                                           ; preds = %do.end
  %5 = load ptr, ptr %waiter.addr, align 8, !dbg !4419
  %pi_tree4 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %5, i32 0, i32 1, !dbg !4420
  %entry5 = getelementptr inbounds %struct.rt_waiter_node, ptr %pi_tree4, i32 0, i32 0, !dbg !4421
  %6 = load ptr, ptr %task.addr, align 8, !dbg !4422
  %pi_waiters = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 124, !dbg !4423
  %call = call ptr @rb_erase_cached(ptr noundef %entry5, ptr noundef %pi_waiters) #14, !dbg !4424
  %7 = load ptr, ptr %waiter.addr, align 8, !dbg !4425
  %pi_tree6 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %7, i32 0, i32 1, !dbg !4425
  %entry7 = getelementptr inbounds %struct.rt_waiter_node, ptr %pi_tree6, i32 0, i32 0, !dbg !4425
  %8 = ptrtoint ptr %entry7 to i64, !dbg !4425
  %9 = load ptr, ptr %waiter.addr, align 8, !dbg !4425
  %pi_tree8 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %9, i32 0, i32 1, !dbg !4425
  %entry9 = getelementptr inbounds %struct.rt_waiter_node, ptr %pi_tree8, i32 0, i32 0, !dbg !4425
  %__rb_parent_color10 = getelementptr inbounds %struct.rb_node, ptr %entry9, i32 0, i32 0, !dbg !4425
  store i64 %8, ptr %__rb_parent_color10, align 8, !dbg !4425
  br label %return, !dbg !4426

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4426
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rt_mutex_adjust_prio(ptr noundef %lock, ptr noundef %p) #3 align 16 !dbg !4427 {
entry:
  %lock.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %pi_task = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4429, metadata !DIExpression()), !dbg !4432
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4430, metadata !DIExpression()), !dbg !4433
  call void @llvm.lifetime.start.p0(i64 8, ptr %pi_task) #15, !dbg !4434
  call void @llvm.dbg.declare(metadata ptr %pi_task, metadata !4431, metadata !DIExpression()), !dbg !4435
  store ptr null, ptr %pi_task, align 8, !dbg !4435
  br label %do.body, !dbg !4436

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4437
  %wait_lock = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 0, !dbg !4437
  br label %do.cond, !dbg !4437

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4437

do.end:                                           ; preds = %do.cond
  br label %do.body1, !dbg !4439

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !4440

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !4440

do.end3:                                          ; preds = %do.cond2
  br label %do.body4, !dbg !4442

do.body4:                                         ; preds = %do.end3
  %1 = load ptr, ptr %p.addr, align 8, !dbg !4443
  %pi_lock = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 122, !dbg !4443
  br label %do.cond5, !dbg !4443

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !4443

do.end6:                                          ; preds = %do.cond5
  %2 = load ptr, ptr %p.addr, align 8, !dbg !4445
  %call = call i32 @task_has_pi_waiters(ptr noundef %2) #14, !dbg !4447
  %tobool = icmp ne i32 %call, 0, !dbg !4447
  br i1 %tobool, label %if.then, label %if.end, !dbg !4448

if.then:                                          ; preds = %do.end6
  %3 = load ptr, ptr %p.addr, align 8, !dbg !4449
  %call7 = call ptr @task_top_pi_waiter(ptr noundef %3) #14, !dbg !4450
  %task = getelementptr inbounds %struct.rt_mutex_waiter, ptr %call7, i32 0, i32 2, !dbg !4451
  %4 = load ptr, ptr %task, align 8, !dbg !4451
  store ptr %4, ptr %pi_task, align 8, !dbg !4452
  br label %if.end, !dbg !4453

if.end:                                           ; preds = %if.then, %do.end6
  %5 = load ptr, ptr %p.addr, align 8, !dbg !4454
  %6 = load ptr, ptr %pi_task, align 8, !dbg !4455
  call void @rt_mutex_setprio(ptr noundef %5, ptr noundef %6) #14, !dbg !4456
  call void @llvm.lifetime.end.p0(i64 8, ptr %pi_task) #15, !dbg !4457
  ret void, !dbg !4457
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rt_mutex_wake_q_add(ptr noundef %wqh, ptr noundef %w) #3 align 16 !dbg !4458 {
entry:
  %wqh.addr = alloca ptr, align 8
  %w.addr = alloca ptr, align 8
  store ptr %wqh, ptr %wqh.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wqh.addr, metadata !4462, metadata !DIExpression()), !dbg !4464
  store ptr %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !4463, metadata !DIExpression()), !dbg !4465
  %0 = load ptr, ptr %wqh.addr, align 8, !dbg !4466
  %1 = load ptr, ptr %w.addr, align 8, !dbg !4467
  %task = getelementptr inbounds %struct.rt_mutex_waiter, ptr %1, i32 0, i32 2, !dbg !4468
  %2 = load ptr, ptr %task, align 8, !dbg !4468
  %3 = load ptr, ptr %w.addr, align 8, !dbg !4469
  %wake_state = getelementptr inbounds %struct.rt_mutex_waiter, ptr %3, i32 0, i32 4, !dbg !4470
  %4 = load i32, ptr %wake_state, align 8, !dbg !4470
  call void @rt_mutex_wake_q_add_task(ptr noundef %0, ptr noundef %2, i32 noundef %4) #14, !dbg !4471
  ret void, !dbg !4472
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4473 dso_local void @_raw_spin_unlock(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @rb_erase_cached(ptr noundef %node, ptr noundef %root) #2 align 16 !dbg !4474 {
entry:
  %node.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %leftmost = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !4480, metadata !DIExpression()), !dbg !4483
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !4481, metadata !DIExpression()), !dbg !4484
  call void @llvm.lifetime.start.p0(i64 8, ptr %leftmost) #15, !dbg !4485
  call void @llvm.dbg.declare(metadata ptr %leftmost, metadata !4482, metadata !DIExpression()), !dbg !4486
  store ptr null, ptr %leftmost, align 8, !dbg !4486
  %0 = load ptr, ptr %root.addr, align 8, !dbg !4487
  %rb_leftmost = getelementptr inbounds %struct.rb_root_cached, ptr %0, i32 0, i32 1, !dbg !4489
  %1 = load ptr, ptr %rb_leftmost, align 8, !dbg !4489
  %2 = load ptr, ptr %node.addr, align 8, !dbg !4490
  %cmp = icmp eq ptr %1, %2, !dbg !4491
  br i1 %cmp, label %if.then, label %if.end, !dbg !4492

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %node.addr, align 8, !dbg !4493
  %call = call ptr @rb_next(ptr noundef %3) #14, !dbg !4494
  %4 = load ptr, ptr %root.addr, align 8, !dbg !4495
  %rb_leftmost1 = getelementptr inbounds %struct.rb_root_cached, ptr %4, i32 0, i32 1, !dbg !4496
  store ptr %call, ptr %rb_leftmost1, align 8, !dbg !4497
  store ptr %call, ptr %leftmost, align 8, !dbg !4498
  br label %if.end, !dbg !4499

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %node.addr, align 8, !dbg !4500
  %6 = load ptr, ptr %root.addr, align 8, !dbg !4501
  %rb_root = getelementptr inbounds %struct.rb_root_cached, ptr %6, i32 0, i32 0, !dbg !4502
  call void @rb_erase(ptr noundef %5, ptr noundef %rb_root) #14, !dbg !4503
  %7 = load ptr, ptr %leftmost, align 8, !dbg !4504
  call void @llvm.lifetime.end.p0(i64 8, ptr %leftmost) #15, !dbg !4505
  ret ptr %7, !dbg !4506
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4507 dso_local ptr @rb_next(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4512 dso_local void @rb_erase(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @task_has_pi_waiters(ptr noundef %p) #2 align 16 !dbg !4516 {
entry:
  %p.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4518, metadata !DIExpression()), !dbg !4519
  br label %do.body, !dbg !4520

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4522

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %p.addr, align 8, !dbg !4520
  %pi_waiters = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 124, !dbg !4520
  %rb_root = getelementptr inbounds %struct.rb_root_cached, ptr %pi_waiters, i32 0, i32 0, !dbg !4520
  %rb_node = getelementptr inbounds %struct.rb_root, ptr %rb_root, i32 0, i32 0, !dbg !4520
  %1 = load volatile ptr, ptr %rb_node, align 64, !dbg !4520
  store ptr %1, ptr %tmp, align 8, !dbg !4522
  %2 = load ptr, ptr %tmp, align 8, !dbg !4520
  %cmp = icmp eq ptr %2, null, !dbg !4524
  %lnot = xor i1 %cmp, true, !dbg !4525
  %lnot.ext = zext i1 %lnot to i32, !dbg !4525
  ret i32 %lnot.ext, !dbg !4526
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @task_top_pi_waiter(ptr noundef %p) #2 align 16 !dbg !4527 {
entry:
  %p.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4531, metadata !DIExpression()), !dbg !4534
  br label %do.body, !dbg !4535

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %p.addr, align 8, !dbg !4536
  %pi_lock = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 122, !dbg !4536
  br label %do.end, !dbg !4536

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !4538
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4532, metadata !DIExpression()), !dbg !4538
  %1 = load ptr, ptr %p.addr, align 8, !dbg !4538
  %pi_waiters = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 124, !dbg !4538
  %rb_leftmost = getelementptr inbounds %struct.rb_root_cached, ptr %pi_waiters, i32 0, i32 1, !dbg !4538
  %2 = load ptr, ptr %rb_leftmost, align 8, !dbg !4538
  store ptr %2, ptr %__mptr, align 8, !dbg !4538
  %3 = load ptr, ptr %__mptr, align 8, !dbg !4538
  %add.ptr = getelementptr i8, ptr %3, i64 -40, !dbg !4538
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4538
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !4539
  %4 = load ptr, ptr %tmp, align 8, !dbg !4538
  ret ptr %4, !dbg !4540
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4541 dso_local void @rt_mutex_setprio(ptr noundef, ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rt_mutex_wake_q_add_task(ptr noundef %wqh, ptr noundef %task, i32 noundef %wake_state) #3 align 16 !dbg !4545 {
entry:
  %wqh.addr = alloca ptr, align 8
  %task.addr = alloca ptr, align 8
  %wake_state.addr = alloca i32, align 4
  store ptr %wqh, ptr %wqh.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wqh.addr, metadata !4549, metadata !DIExpression()), !dbg !4552
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !4550, metadata !DIExpression()), !dbg !4553
  store i32 %wake_state, ptr %wake_state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %wake_state.addr, metadata !4551, metadata !DIExpression()), !dbg !4554
  %0 = load ptr, ptr %wqh.addr, align 8, !dbg !4555
  %head = getelementptr inbounds %struct.rt_wake_q_head, ptr %0, i32 0, i32 0, !dbg !4558
  %1 = load ptr, ptr %task.addr, align 8, !dbg !4559
  call void @wake_q_add(ptr noundef %head, ptr noundef %1) #14, !dbg !4560
  ret void, !dbg !4561
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4562 dso_local void @wake_q_add(ptr noundef, ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @rt_mutex_owner_encode(ptr noundef %lock, ptr noundef %owner) #3 align 16 !dbg !4566 {
entry:
  %lock.addr = alloca ptr, align 8
  %owner.addr = alloca ptr, align 8
  %val = alloca i64, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4570, metadata !DIExpression()), !dbg !4573
  store ptr %owner, ptr %owner.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %owner.addr, metadata !4571, metadata !DIExpression()), !dbg !4574
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #15, !dbg !4575
  call void @llvm.dbg.declare(metadata ptr %val, metadata !4572, metadata !DIExpression()), !dbg !4576
  %0 = load ptr, ptr %owner.addr, align 8, !dbg !4577
  %1 = ptrtoint ptr %0 to i64, !dbg !4578
  store i64 %1, ptr %val, align 8, !dbg !4576
  %2 = load ptr, ptr %lock.addr, align 8, !dbg !4579
  %call = call i32 @rt_mutex_has_waiters(ptr noundef %2) #14, !dbg !4581
  %tobool = icmp ne i32 %call, 0, !dbg !4581
  br i1 %tobool, label %if.then, label %if.end, !dbg !4582

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %val, align 8, !dbg !4583
  %or = or i64 %3, 1, !dbg !4583
  store i64 %or, ptr %val, align 8, !dbg !4583
  br label %if.end, !dbg !4584

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, ptr %val, align 8, !dbg !4585
  %5 = inttoptr i64 %4 to ptr, !dbg !4586
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #15, !dbg !4587
  ret ptr %5, !dbg !4588
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mark_rt_mutex_waiters(ptr noundef %lock) #3 align 16 !dbg !4589 {
entry:
  %lock.addr = alloca ptr, align 8
  %owner = alloca i64, align 8
  %p = alloca ptr, align 8
  %__ai_ptr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  %__ret = alloca i64, align 8
  %__old = alloca i64, align 8
  %__new = alloca i64, align 8
  %__ptr = alloca ptr, align 8
  %tmp2 = alloca i64, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4591, metadata !DIExpression()), !dbg !4601
  call void @llvm.lifetime.start.p0(i64 8, ptr %owner) #15, !dbg !4602
  call void @llvm.dbg.declare(metadata ptr %owner, metadata !4592, metadata !DIExpression()), !dbg !4603
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15, !dbg !4602
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4593, metadata !DIExpression()), !dbg !4604
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4605
  %owner1 = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 2, !dbg !4606
  store ptr %owner1, ptr %p, align 8, !dbg !4604
  br label %do.body, !dbg !4607

do.body:                                          ; preds = %do.cond, %entry
  %1 = load ptr, ptr %p, align 8, !dbg !4608
  %2 = load i64, ptr %1, align 8, !dbg !4610
  store i64 %2, ptr %owner, align 8, !dbg !4611
  br label %do.cond, !dbg !4612

do.cond:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #15, !dbg !4613
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !4594, metadata !DIExpression()), !dbg !4613
  %3 = load ptr, ptr %p, align 8, !dbg !4613
  store ptr %3, ptr %__ai_ptr, align 8, !dbg !4613
  %4 = load ptr, ptr %__ai_ptr, align 8, !dbg !4613
  call void @instrument_atomic_read_write(ptr noundef %4, i64 noundef 8) #14, !dbg !4613
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #15, !dbg !4614
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !4596, metadata !DIExpression()), !dbg !4614
  call void @llvm.lifetime.start.p0(i64 8, ptr %__old) #15, !dbg !4614
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !4598, metadata !DIExpression()), !dbg !4614
  %5 = load i64, ptr %owner, align 8, !dbg !4614
  store i64 %5, ptr %__old, align 8, !dbg !4614
  call void @llvm.lifetime.start.p0(i64 8, ptr %__new) #15, !dbg !4614
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !4599, metadata !DIExpression()), !dbg !4614
  %6 = load i64, ptr %owner, align 8, !dbg !4614
  %or = or i64 %6, 1, !dbg !4614
  store i64 %or, ptr %__new, align 8, !dbg !4614
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #15, !dbg !4614
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4600, metadata !DIExpression()), !dbg !4614
  %7 = load ptr, ptr %__ai_ptr, align 8, !dbg !4614
  store ptr %7, ptr %__ptr, align 8, !dbg !4614
  %8 = load ptr, ptr %__ptr, align 8, !dbg !4614
  %9 = load i64, ptr %__new, align 8, !dbg !4614
  %10 = load i64, ptr %__old, align 8, !dbg !4614
  %11 = call i64 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgq $2,$1", "={ax},=*m,r,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %8, i64 %9, i64 %10, ptr elementtype(i64) %8) #15, !dbg !4614, !srcloc !4615
  store i64 %11, ptr %__ret, align 8, !dbg !4614
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #15, !dbg !4614
  %12 = load i64, ptr %__ret, align 8, !dbg !4614
  store i64 %12, ptr %tmp2, align 8, !dbg !4614
  call void @llvm.lifetime.end.p0(i64 8, ptr %__new) #15, !dbg !4613
  call void @llvm.lifetime.end.p0(i64 8, ptr %__old) #15, !dbg !4613
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #15, !dbg !4613
  %13 = load i64, ptr %tmp2, align 8, !dbg !4614
  store i64 %13, ptr %tmp, align 8, !dbg !4613
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #15, !dbg !4616
  %14 = load i64, ptr %tmp, align 8, !dbg !4613
  %15 = load i64, ptr %owner, align 8, !dbg !4617
  %cmp = icmp ne i64 %14, %15, !dbg !4618
  br i1 %cmp, label %do.body, label %do.end, !dbg !4612, !llvm.loop !4619

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !4621

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !4622

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !4624

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !4624

do.end6:                                          ; preds = %do.cond5
  br label %do.body7, !dbg !4622

do.body7:                                         ; preds = %do.end6
  br label %do.cond8, !dbg !4626

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !4626

do.end9:                                          ; preds = %do.cond8
  br label %do.cond10, !dbg !4622

do.cond10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !4622

do.end11:                                         ; preds = %do.cond10
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15, !dbg !4628
  call void @llvm.lifetime.end.p0(i64 8, ptr %owner) #15, !dbg !4628
  ret void, !dbg !4628
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @rt_mutex_steal(ptr noundef %waiter, ptr noundef %top_waiter) #2 align 16 !dbg !4629 {
entry:
  %retval = alloca i1, align 1
  %waiter.addr = alloca ptr, align 8
  %top_waiter.addr = alloca ptr, align 8
  store ptr %waiter, ptr %waiter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %waiter.addr, metadata !4633, metadata !DIExpression()), !dbg !4635
  store ptr %top_waiter, ptr %top_waiter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %top_waiter.addr, metadata !4634, metadata !DIExpression()), !dbg !4636
  %0 = load ptr, ptr %waiter.addr, align 8, !dbg !4637
  %tree = getelementptr inbounds %struct.rt_mutex_waiter, ptr %0, i32 0, i32 0, !dbg !4639
  %1 = load ptr, ptr %top_waiter.addr, align 8, !dbg !4640
  %tree1 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %1, i32 0, i32 0, !dbg !4641
  %call = call i32 @rt_waiter_node_less(ptr noundef %tree, ptr noundef %tree1) #14, !dbg !4642
  %tobool = icmp ne i32 %call, 0, !dbg !4642
  br i1 %tobool, label %if.then, label %if.end, !dbg !4643

if.then:                                          ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !4644
  br label %return, !dbg !4644

if.end:                                           ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !4645
  br label %return, !dbg !4645

return:                                           ; preds = %if.end, %if.then
  %2 = load i1, ptr %retval, align 1, !dbg !4646
  ret i1 %2, !dbg !4646
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rt_mutex_dequeue(ptr noundef %lock, ptr noundef %waiter) #3 align 16 !dbg !4647 {
entry:
  %lock.addr = alloca ptr, align 8
  %waiter.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4649, metadata !DIExpression()), !dbg !4651
  store ptr %waiter, ptr %waiter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %waiter.addr, metadata !4650, metadata !DIExpression()), !dbg !4652
  br label %do.body, !dbg !4653

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4654
  %wait_lock = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 0, !dbg !4654
  br label %do.end, !dbg !4654

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr %waiter.addr, align 8, !dbg !4656
  %tree = getelementptr inbounds %struct.rt_mutex_waiter, ptr %1, i32 0, i32 0, !dbg !4656
  %entry1 = getelementptr inbounds %struct.rt_waiter_node, ptr %tree, i32 0, i32 0, !dbg !4656
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %entry1, i32 0, i32 0, !dbg !4656
  %2 = load i64, ptr %__rb_parent_color, align 8, !dbg !4656
  %3 = load ptr, ptr %waiter.addr, align 8, !dbg !4656
  %tree2 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %3, i32 0, i32 0, !dbg !4656
  %entry3 = getelementptr inbounds %struct.rt_waiter_node, ptr %tree2, i32 0, i32 0, !dbg !4656
  %4 = ptrtoint ptr %entry3 to i64, !dbg !4656
  %cmp = icmp eq i64 %2, %4, !dbg !4656
  br i1 %cmp, label %if.then, label %if.end, !dbg !4658

if.then:                                          ; preds = %do.end
  br label %return, !dbg !4659

if.end:                                           ; preds = %do.end
  %5 = load ptr, ptr %waiter.addr, align 8, !dbg !4660
  %tree4 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %5, i32 0, i32 0, !dbg !4661
  %entry5 = getelementptr inbounds %struct.rt_waiter_node, ptr %tree4, i32 0, i32 0, !dbg !4662
  %6 = load ptr, ptr %lock.addr, align 8, !dbg !4663
  %waiters = getelementptr inbounds %struct.rt_mutex_base, ptr %6, i32 0, i32 1, !dbg !4664
  %call = call ptr @rb_erase_cached(ptr noundef %entry5, ptr noundef %waiters) #14, !dbg !4665
  %7 = load ptr, ptr %waiter.addr, align 8, !dbg !4666
  %tree6 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %7, i32 0, i32 0, !dbg !4666
  %entry7 = getelementptr inbounds %struct.rt_waiter_node, ptr %tree6, i32 0, i32 0, !dbg !4666
  %8 = ptrtoint ptr %entry7 to i64, !dbg !4666
  %9 = load ptr, ptr %waiter.addr, align 8, !dbg !4666
  %tree8 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %9, i32 0, i32 0, !dbg !4666
  %entry9 = getelementptr inbounds %struct.rt_waiter_node, ptr %tree8, i32 0, i32 0, !dbg !4666
  %__rb_parent_color10 = getelementptr inbounds %struct.rb_node, ptr %entry9, i32 0, i32 0, !dbg !4666
  store i64 %8, ptr %__rb_parent_color10, align 8, !dbg !4666
  br label %return, !dbg !4667

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4667
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rt_mutex_enqueue_pi(ptr noundef %task, ptr noundef %waiter) #3 align 16 !dbg !4668 {
entry:
  %task.addr = alloca ptr, align 8
  %waiter.addr = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !4670, metadata !DIExpression()), !dbg !4672
  store ptr %waiter, ptr %waiter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %waiter.addr, metadata !4671, metadata !DIExpression()), !dbg !4673
  br label %do.body, !dbg !4674

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %task.addr, align 8, !dbg !4675
  %pi_lock = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 122, !dbg !4675
  br label %do.end, !dbg !4675

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr %waiter.addr, align 8, !dbg !4677
  %pi_tree = getelementptr inbounds %struct.rt_mutex_waiter, ptr %1, i32 0, i32 1, !dbg !4678
  %entry1 = getelementptr inbounds %struct.rt_waiter_node, ptr %pi_tree, i32 0, i32 0, !dbg !4679
  %2 = load ptr, ptr %task.addr, align 8, !dbg !4680
  %pi_waiters = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 124, !dbg !4681
  %call = call ptr @rb_add_cached(ptr noundef %entry1, ptr noundef %pi_waiters, ptr noundef @__pi_waiter_less) #14, !dbg !4682
  ret void, !dbg !4683
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rt_waiter_node_less(ptr noundef %left, ptr noundef %right) #3 align 16 !dbg !4684 {
entry:
  %retval = alloca i32, align 4
  %left.addr = alloca ptr, align 8
  %right.addr = alloca ptr, align 8
  store ptr %left, ptr %left.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %left.addr, metadata !4686, metadata !DIExpression()), !dbg !4688
  store ptr %right, ptr %right.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %right.addr, metadata !4687, metadata !DIExpression()), !dbg !4689
  %0 = load ptr, ptr %left.addr, align 8, !dbg !4690
  %prio = getelementptr inbounds %struct.rt_waiter_node, ptr %0, i32 0, i32 1, !dbg !4692
  %1 = load i32, ptr %prio, align 8, !dbg !4692
  %2 = load ptr, ptr %right.addr, align 8, !dbg !4693
  %prio1 = getelementptr inbounds %struct.rt_waiter_node, ptr %2, i32 0, i32 1, !dbg !4694
  %3 = load i32, ptr %prio1, align 8, !dbg !4694
  %cmp = icmp slt i32 %1, %3, !dbg !4695
  br i1 %cmp, label %if.then, label %if.end, !dbg !4696

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !4697
  br label %return, !dbg !4697

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %left.addr, align 8, !dbg !4698
  %prio2 = getelementptr inbounds %struct.rt_waiter_node, ptr %4, i32 0, i32 1, !dbg !4700
  %5 = load i32, ptr %prio2, align 8, !dbg !4700
  %call = call i32 @dl_prio(i32 noundef %5) #14, !dbg !4701
  %tobool = icmp ne i32 %call, 0, !dbg !4701
  br i1 %tobool, label %if.then3, label %if.end6, !dbg !4702

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %left.addr, align 8, !dbg !4703
  %deadline = getelementptr inbounds %struct.rt_waiter_node, ptr %6, i32 0, i32 2, !dbg !4704
  %7 = load i64, ptr %deadline, align 8, !dbg !4704
  %8 = load ptr, ptr %right.addr, align 8, !dbg !4705
  %deadline4 = getelementptr inbounds %struct.rt_waiter_node, ptr %8, i32 0, i32 2, !dbg !4706
  %9 = load i64, ptr %deadline4, align 8, !dbg !4706
  %call5 = call zeroext i1 @dl_time_before(i64 noundef %7, i64 noundef %9) #14, !dbg !4707
  %conv = zext i1 %call5 to i32, !dbg !4707
  store i32 %conv, ptr %retval, align 4, !dbg !4708
  br label %return, !dbg !4708

if.end6:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !4709
  br label %return, !dbg !4709

return:                                           ; preds = %if.end6, %if.then3, %if.then
  %10 = load i32, ptr %retval, align 4, !dbg !4710
  ret i32 %10, !dbg !4710
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dl_prio(i32 noundef %prio) #2 align 16 !dbg !4711 {
entry:
  %retval = alloca i32, align 4
  %prio.addr = alloca i32, align 4
  store i32 %prio, ptr %prio.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %prio.addr, metadata !4716, metadata !DIExpression()), !dbg !4717
  %0 = load i32, ptr %prio.addr, align 4, !dbg !4718
  %cmp = icmp slt i32 %0, 0, !dbg !4718
  %lnot = xor i1 %cmp, true, !dbg !4718
  %lnot1 = xor i1 %lnot, true, !dbg !4718
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4718
  %conv = sext i32 %lnot.ext to i64, !dbg !4718
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4718
  %tobool = icmp ne i64 %expval, 0, !dbg !4718
  br i1 %tobool, label %if.then, label %if.end, !dbg !4720

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !4721
  br label %return, !dbg !4721

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4722
  br label %return, !dbg !4722

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, ptr %retval, align 4, !dbg !4723
  ret i32 %1, !dbg !4723
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @dl_time_before(i64 noundef %a, i64 noundef %b) #2 align 16 !dbg !4724 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !4728, metadata !DIExpression()), !dbg !4730
  store i64 %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !4729, metadata !DIExpression()), !dbg !4731
  %0 = load i64, ptr %a.addr, align 8, !dbg !4732
  %1 = load i64, ptr %b.addr, align 8, !dbg !4733
  %sub = sub i64 %0, %1, !dbg !4734
  %cmp = icmp slt i64 %sub, 0, !dbg !4735
  ret i1 %cmp, !dbg !4736
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @rb_add_cached(ptr noundef %node, ptr noundef %tree, ptr noundef %less) #3 align 16 !dbg !4737 {
entry:
  %node.addr = alloca ptr, align 8
  %tree.addr = alloca ptr, align 8
  %less.addr = alloca ptr, align 8
  %link = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %leftmost = alloca i8, align 1
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !4744, metadata !DIExpression()), !dbg !4751
  store ptr %tree, ptr %tree.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tree.addr, metadata !4745, metadata !DIExpression()), !dbg !4752
  store ptr %less, ptr %less.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %less.addr, metadata !4746, metadata !DIExpression()), !dbg !4753
  call void @llvm.lifetime.start.p0(i64 8, ptr %link) #15, !dbg !4754
  call void @llvm.dbg.declare(metadata ptr %link, metadata !4747, metadata !DIExpression()), !dbg !4755
  %0 = load ptr, ptr %tree.addr, align 8, !dbg !4756
  %rb_root = getelementptr inbounds %struct.rb_root_cached, ptr %0, i32 0, i32 0, !dbg !4757
  %rb_node = getelementptr inbounds %struct.rb_root, ptr %rb_root, i32 0, i32 0, !dbg !4758
  store ptr %rb_node, ptr %link, align 8, !dbg !4755
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #15, !dbg !4759
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !4749, metadata !DIExpression()), !dbg !4760
  store ptr null, ptr %parent, align 8, !dbg !4760
  call void @llvm.lifetime.start.p0(i64 1, ptr %leftmost) #15, !dbg !4761
  call void @llvm.dbg.declare(metadata ptr %leftmost, metadata !4750, metadata !DIExpression()), !dbg !4762
  store i8 1, ptr %leftmost, align 1, !dbg !4762
  br label %while.cond, !dbg !4763

while.cond:                                       ; preds = %if.end, %entry
  %1 = load ptr, ptr %link, align 8, !dbg !4764
  %2 = load ptr, ptr %1, align 8, !dbg !4765
  %tobool = icmp ne ptr %2, null, !dbg !4763
  br i1 %tobool, label %while.body, label %while.end, !dbg !4763

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %link, align 8, !dbg !4766
  %4 = load ptr, ptr %3, align 8, !dbg !4768
  store ptr %4, ptr %parent, align 8, !dbg !4769
  %5 = load ptr, ptr %less.addr, align 8, !dbg !4770
  %6 = load ptr, ptr %node.addr, align 8, !dbg !4772
  %7 = load ptr, ptr %parent, align 8, !dbg !4773
  %call = call zeroext i1 %5(ptr noundef %6, ptr noundef %7) #14, !dbg !4770
  br i1 %call, label %if.then, label %if.else, !dbg !4774

if.then:                                          ; preds = %while.body
  %8 = load ptr, ptr %parent, align 8, !dbg !4775
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %8, i32 0, i32 2, !dbg !4777
  store ptr %rb_left, ptr %link, align 8, !dbg !4778
  br label %if.end, !dbg !4779

if.else:                                          ; preds = %while.body
  %9 = load ptr, ptr %parent, align 8, !dbg !4780
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %9, i32 0, i32 1, !dbg !4782
  store ptr %rb_right, ptr %link, align 8, !dbg !4783
  store i8 0, ptr %leftmost, align 1, !dbg !4784
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond, !dbg !4763, !llvm.loop !4785

while.end:                                        ; preds = %while.cond
  %10 = load ptr, ptr %node.addr, align 8, !dbg !4787
  %11 = load ptr, ptr %parent, align 8, !dbg !4788
  %12 = load ptr, ptr %link, align 8, !dbg !4789
  call void @rb_link_node(ptr noundef %10, ptr noundef %11, ptr noundef %12) #14, !dbg !4790
  %13 = load ptr, ptr %node.addr, align 8, !dbg !4791
  %14 = load ptr, ptr %tree.addr, align 8, !dbg !4792
  %15 = load i8, ptr %leftmost, align 1, !dbg !4793, !range !2426, !noundef !440
  %tobool1 = trunc i8 %15 to i1, !dbg !4793
  call void @rb_insert_color_cached(ptr noundef %13, ptr noundef %14, i1 noundef zeroext %tobool1) #14, !dbg !4794
  %16 = load i8, ptr %leftmost, align 1, !dbg !4795, !range !2426, !noundef !440
  %tobool2 = trunc i8 %16 to i1, !dbg !4795
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !4795

cond.true:                                        ; preds = %while.end
  %17 = load ptr, ptr %node.addr, align 8, !dbg !4796
  br label %cond.end, !dbg !4795

cond.false:                                       ; preds = %while.end
  br label %cond.end, !dbg !4795

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %17, %cond.true ], [ null, %cond.false ], !dbg !4795
  call void @llvm.lifetime.end.p0(i64 1, ptr %leftmost) #15, !dbg !4797
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #15, !dbg !4797
  call void @llvm.lifetime.end.p0(i64 8, ptr %link) #15, !dbg !4797
  ret ptr %cond, !dbg !4798
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__pi_waiter_less(ptr noundef %a, ptr noundef %b) #3 align 16 !dbg !4799 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !4801, metadata !DIExpression()), !dbg !4807
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !4802, metadata !DIExpression()), !dbg !4808
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !4809
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4803, metadata !DIExpression()), !dbg !4809
  %0 = load ptr, ptr %a.addr, align 8, !dbg !4809
  store ptr %0, ptr %__mptr, align 8, !dbg !4809
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4809
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !4809
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4809
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !4810
  %2 = load ptr, ptr %tmp, align 8, !dbg !4809
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #15, !dbg !4811
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !4805, metadata !DIExpression()), !dbg !4811
  %3 = load ptr, ptr %b.addr, align 8, !dbg !4811
  store ptr %3, ptr %__mptr1, align 8, !dbg !4811
  %4 = load ptr, ptr %__mptr1, align 8, !dbg !4811
  %add.ptr3 = getelementptr i8, ptr %4, i64 0, !dbg !4811
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !4811
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #15, !dbg !4812
  %5 = load ptr, ptr %tmp2, align 8, !dbg !4811
  %call = call i32 @rt_waiter_node_less(ptr noundef %2, ptr noundef %5) #14, !dbg !4813
  %tobool = icmp ne i32 %call, 0, !dbg !4813
  ret i1 %tobool, !dbg !4814
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rb_link_node(ptr noundef %node, ptr noundef %parent, ptr noundef %rb_link) #2 align 16 !dbg !4815 {
entry:
  %node.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %rb_link.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !4819, metadata !DIExpression()), !dbg !4822
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !4820, metadata !DIExpression()), !dbg !4823
  store ptr %rb_link, ptr %rb_link.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb_link.addr, metadata !4821, metadata !DIExpression()), !dbg !4824
  %0 = load ptr, ptr %parent.addr, align 8, !dbg !4825
  %1 = ptrtoint ptr %0 to i64, !dbg !4826
  %2 = load ptr, ptr %node.addr, align 8, !dbg !4827
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 0, !dbg !4828
  store i64 %1, ptr %__rb_parent_color, align 8, !dbg !4829
  %3 = load ptr, ptr %node.addr, align 8, !dbg !4830
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %3, i32 0, i32 1, !dbg !4831
  store ptr null, ptr %rb_right, align 8, !dbg !4832
  %4 = load ptr, ptr %node.addr, align 8, !dbg !4833
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 2, !dbg !4834
  store ptr null, ptr %rb_left, align 8, !dbg !4835
  %5 = load ptr, ptr %node.addr, align 8, !dbg !4836
  %6 = load ptr, ptr %rb_link.addr, align 8, !dbg !4837
  store ptr %5, ptr %6, align 8, !dbg !4838
  ret void, !dbg !4839
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rb_insert_color_cached(ptr noundef %node, ptr noundef %root, i1 noundef zeroext %leftmost) #2 align 16 !dbg !4840 {
entry:
  %node.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %leftmost.addr = alloca i8, align 1
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !4844, metadata !DIExpression()), !dbg !4847
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !4845, metadata !DIExpression()), !dbg !4848
  %frombool = zext i1 %leftmost to i8
  store i8 %frombool, ptr %leftmost.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %leftmost.addr, metadata !4846, metadata !DIExpression()), !dbg !4849
  %0 = load i8, ptr %leftmost.addr, align 1, !dbg !4850, !range !2426, !noundef !440
  %tobool = trunc i8 %0 to i1, !dbg !4850
  br i1 %tobool, label %if.then, label %if.end, !dbg !4852

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %node.addr, align 8, !dbg !4853
  %2 = load ptr, ptr %root.addr, align 8, !dbg !4854
  %rb_leftmost = getelementptr inbounds %struct.rb_root_cached, ptr %2, i32 0, i32 1, !dbg !4855
  store ptr %1, ptr %rb_leftmost, align 8, !dbg !4856
  br label %if.end, !dbg !4854

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %node.addr, align 8, !dbg !4857
  %4 = load ptr, ptr %root.addr, align 8, !dbg !4858
  %rb_root = getelementptr inbounds %struct.rb_root_cached, ptr %4, i32 0, i32 0, !dbg !4859
  call void @rb_insert_color(ptr noundef %3, ptr noundef %rb_root) #14, !dbg !4860
  ret void, !dbg !4861
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4862 dso_local void @rb_insert_color(ptr noundef, ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @waiter_update_prio(ptr noundef %waiter, ptr noundef %task) #3 align 16 !dbg !4863 {
entry:
  %waiter.addr = alloca ptr, align 8
  %task.addr = alloca ptr, align 8
  store ptr %waiter, ptr %waiter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %waiter.addr, metadata !4867, metadata !DIExpression()), !dbg !4869
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !4868, metadata !DIExpression()), !dbg !4870
  br label %do.body, !dbg !4871

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %waiter.addr, align 8, !dbg !4872
  %lock = getelementptr inbounds %struct.rt_mutex_waiter, ptr %0, i32 0, i32 3, !dbg !4872
  %1 = load ptr, ptr %lock, align 8, !dbg !4872
  %wait_lock = getelementptr inbounds %struct.rt_mutex_base, ptr %1, i32 0, i32 0, !dbg !4872
  br label %do.end, !dbg !4872

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !4874

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !4875

do.end2:                                          ; preds = %do.body1
  %2 = load ptr, ptr %task.addr, align 8, !dbg !4877
  %call = call i32 @__waiter_prio(ptr noundef %2) #14, !dbg !4878
  %3 = load ptr, ptr %waiter.addr, align 8, !dbg !4879
  %tree = getelementptr inbounds %struct.rt_mutex_waiter, ptr %3, i32 0, i32 0, !dbg !4880
  %prio = getelementptr inbounds %struct.rt_waiter_node, ptr %tree, i32 0, i32 1, !dbg !4881
  store i32 %call, ptr %prio, align 8, !dbg !4882
  %4 = load ptr, ptr %task.addr, align 8, !dbg !4883
  %dl = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 20, !dbg !4884
  %deadline = getelementptr inbounds %struct.sched_dl_entity, ptr %dl, i32 0, i32 7, !dbg !4885
  %5 = load i64, ptr %deadline, align 8, !dbg !4885
  %6 = load ptr, ptr %waiter.addr, align 8, !dbg !4886
  %tree3 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %6, i32 0, i32 0, !dbg !4887
  %deadline4 = getelementptr inbounds %struct.rt_waiter_node, ptr %tree3, i32 0, i32 2, !dbg !4888
  store i64 %5, ptr %deadline4, align 8, !dbg !4889
  ret void, !dbg !4890
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @waiter_clone_prio(ptr noundef %waiter, ptr noundef %task) #3 align 16 !dbg !4891 {
entry:
  %waiter.addr = alloca ptr, align 8
  %task.addr = alloca ptr, align 8
  store ptr %waiter, ptr %waiter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %waiter.addr, metadata !4893, metadata !DIExpression()), !dbg !4895
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !4894, metadata !DIExpression()), !dbg !4896
  br label %do.body, !dbg !4897

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %waiter.addr, align 8, !dbg !4898
  %lock = getelementptr inbounds %struct.rt_mutex_waiter, ptr %0, i32 0, i32 3, !dbg !4898
  %1 = load ptr, ptr %lock, align 8, !dbg !4898
  %wait_lock = getelementptr inbounds %struct.rt_mutex_base, ptr %1, i32 0, i32 0, !dbg !4898
  br label %do.end, !dbg !4898

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !4900

do.body1:                                         ; preds = %do.end
  %2 = load ptr, ptr %task.addr, align 8, !dbg !4901
  %pi_lock = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 122, !dbg !4901
  br label %do.end2, !dbg !4901

do.end2:                                          ; preds = %do.body1
  br label %do.body3, !dbg !4903

do.body3:                                         ; preds = %do.end2
  br label %do.end4, !dbg !4904

do.end4:                                          ; preds = %do.body3
  %3 = load ptr, ptr %waiter.addr, align 8, !dbg !4906
  %tree = getelementptr inbounds %struct.rt_mutex_waiter, ptr %3, i32 0, i32 0, !dbg !4907
  %prio = getelementptr inbounds %struct.rt_waiter_node, ptr %tree, i32 0, i32 1, !dbg !4908
  %4 = load i32, ptr %prio, align 8, !dbg !4908
  %5 = load ptr, ptr %waiter.addr, align 8, !dbg !4909
  %pi_tree = getelementptr inbounds %struct.rt_mutex_waiter, ptr %5, i32 0, i32 1, !dbg !4910
  %prio5 = getelementptr inbounds %struct.rt_waiter_node, ptr %pi_tree, i32 0, i32 1, !dbg !4911
  store i32 %4, ptr %prio5, align 8, !dbg !4912
  %6 = load ptr, ptr %waiter.addr, align 8, !dbg !4913
  %tree6 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %6, i32 0, i32 0, !dbg !4914
  %deadline = getelementptr inbounds %struct.rt_waiter_node, ptr %tree6, i32 0, i32 2, !dbg !4915
  %7 = load i64, ptr %deadline, align 8, !dbg !4915
  %8 = load ptr, ptr %waiter.addr, align 8, !dbg !4916
  %pi_tree7 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %8, i32 0, i32 1, !dbg !4917
  %deadline8 = getelementptr inbounds %struct.rt_waiter_node, ptr %pi_tree7, i32 0, i32 2, !dbg !4918
  store i64 %7, ptr %deadline8, align 8, !dbg !4919
  ret void, !dbg !4920
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rt_mutex_enqueue(ptr noundef %lock, ptr noundef %waiter) #3 align 16 !dbg !4921 {
entry:
  %lock.addr = alloca ptr, align 8
  %waiter.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4923, metadata !DIExpression()), !dbg !4925
  store ptr %waiter, ptr %waiter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %waiter.addr, metadata !4924, metadata !DIExpression()), !dbg !4926
  br label %do.body, !dbg !4927

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4928
  %wait_lock = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 0, !dbg !4928
  br label %do.end, !dbg !4928

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr %waiter.addr, align 8, !dbg !4930
  %tree = getelementptr inbounds %struct.rt_mutex_waiter, ptr %1, i32 0, i32 0, !dbg !4931
  %entry1 = getelementptr inbounds %struct.rt_waiter_node, ptr %tree, i32 0, i32 0, !dbg !4932
  %2 = load ptr, ptr %lock.addr, align 8, !dbg !4933
  %waiters = getelementptr inbounds %struct.rt_mutex_base, ptr %2, i32 0, i32 1, !dbg !4934
  %call = call ptr @rb_add_cached(ptr noundef %entry1, ptr noundef %waiters, ptr noundef @__waiter_less) #14, !dbg !4935
  ret void, !dbg !4936
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @rt_mutex_cond_detect_deadlock(ptr noundef %waiter, i32 noundef %chwalk) #3 align 16 !dbg !4937 {
entry:
  %waiter.addr = alloca ptr, align 8
  %chwalk.addr = alloca i32, align 4
  store ptr %waiter, ptr %waiter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %waiter.addr, metadata !4941, metadata !DIExpression()), !dbg !4943
  store i32 %chwalk, ptr %chwalk.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %chwalk.addr, metadata !4942, metadata !DIExpression()), !dbg !4944
  %0 = load i32, ptr %chwalk.addr, align 4, !dbg !4945
  %cmp = icmp eq i32 %0, 1, !dbg !4946
  ret i1 %cmp, !dbg !4947
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @task_blocked_on_lock(ptr noundef %p) #3 align 16 !dbg !4948 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4952, metadata !DIExpression()), !dbg !4953
  %0 = load ptr, ptr %p.addr, align 8, !dbg !4954
  %pi_blocked_on = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 126, !dbg !4955
  %1 = load ptr, ptr %pi_blocked_on, align 8, !dbg !4955
  %tobool = icmp ne ptr %1, null, !dbg !4954
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4954

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8, !dbg !4956
  %pi_blocked_on1 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 126, !dbg !4957
  %3 = load ptr, ptr %pi_blocked_on1, align 8, !dbg !4957
  %lock = getelementptr inbounds %struct.rt_mutex_waiter, ptr %3, i32 0, i32 3, !dbg !4958
  %4 = load ptr, ptr %lock, align 8, !dbg !4958
  br label %cond.end, !dbg !4954

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4954

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ null, %cond.false ], !dbg !4954
  ret ptr %cond, !dbg !4959
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__waiter_less(ptr noundef %a, ptr noundef %b) #3 align 16 !dbg !4960 {
entry:
  %retval = alloca i1, align 1
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %aw = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %bw = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !4962, metadata !DIExpression()), !dbg !4970
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !4963, metadata !DIExpression()), !dbg !4971
  call void @llvm.lifetime.start.p0(i64 8, ptr %aw) #15, !dbg !4972
  call void @llvm.dbg.declare(metadata ptr %aw, metadata !4964, metadata !DIExpression()), !dbg !4973
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !4974
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4965, metadata !DIExpression()), !dbg !4974
  %0 = load ptr, ptr %a.addr, align 8, !dbg !4974
  store ptr %0, ptr %__mptr, align 8, !dbg !4974
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4974
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !4974
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4974
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !4975
  %2 = load ptr, ptr %tmp, align 8, !dbg !4974
  store ptr %2, ptr %aw, align 8, !dbg !4973
  call void @llvm.lifetime.start.p0(i64 8, ptr %bw) #15, !dbg !4976
  call void @llvm.dbg.declare(metadata ptr %bw, metadata !4967, metadata !DIExpression()), !dbg !4977
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #15, !dbg !4978
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !4968, metadata !DIExpression()), !dbg !4978
  %3 = load ptr, ptr %b.addr, align 8, !dbg !4978
  store ptr %3, ptr %__mptr1, align 8, !dbg !4978
  %4 = load ptr, ptr %__mptr1, align 8, !dbg !4978
  %add.ptr3 = getelementptr i8, ptr %4, i64 0, !dbg !4978
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !4978
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #15, !dbg !4979
  %5 = load ptr, ptr %tmp2, align 8, !dbg !4978
  store ptr %5, ptr %bw, align 8, !dbg !4977
  %6 = load ptr, ptr %aw, align 8, !dbg !4980
  %tree = getelementptr inbounds %struct.rt_mutex_waiter, ptr %6, i32 0, i32 0, !dbg !4982
  %7 = load ptr, ptr %bw, align 8, !dbg !4983
  %tree4 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %7, i32 0, i32 0, !dbg !4984
  %call = call i32 @rt_waiter_node_less(ptr noundef %tree, ptr noundef %tree4) #14, !dbg !4985
  %tobool = icmp ne i32 %call, 0, !dbg !4985
  br i1 %tobool, label %if.then, label %if.end, !dbg !4986

if.then:                                          ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !4987
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4987

if.end:                                           ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !4988
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4988

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bw) #15, !dbg !4990
  call void @llvm.lifetime.end.p0(i64 8, ptr %aw) #15, !dbg !4990
  %8 = load i1, ptr %retval, align 1, !dbg !4990
  ret i1 %8, !dbg !4990
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @signal_pending_state(i32 noundef %state, ptr noundef %p) #2 align 16 !dbg !4991 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !4995, metadata !DIExpression()), !dbg !4997
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4996, metadata !DIExpression()), !dbg !4998
  %0 = load i32, ptr %state.addr, align 4, !dbg !4999
  %and = and i32 %0, 257, !dbg !5001
  %tobool = icmp ne i32 %and, 0, !dbg !5001
  br i1 %tobool, label %if.end, label %if.then, !dbg !5002

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5003
  br label %return, !dbg !5003

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8, !dbg !5004
  %call = call i32 @signal_pending(ptr noundef %1) #14, !dbg !5006
  %tobool1 = icmp ne i32 %call, 0, !dbg !5006
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !5007

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !5008
  br label %return, !dbg !5008

if.end3:                                          ; preds = %if.end
  %2 = load i32, ptr %state.addr, align 4, !dbg !5009
  %and4 = and i32 %2, 1, !dbg !5010
  %tobool5 = icmp ne i32 %and4, 0, !dbg !5010
  br i1 %tobool5, label %lor.end, label %lor.rhs, !dbg !5011

lor.rhs:                                          ; preds = %if.end3
  %3 = load ptr, ptr %p.addr, align 8, !dbg !5012
  %call6 = call i32 @__fatal_signal_pending(ptr noundef %3) #14, !dbg !5013
  %tobool7 = icmp ne i32 %call6, 0, !dbg !5011
  br label %lor.end, !dbg !5011

lor.end:                                          ; preds = %lor.rhs, %if.end3
  %4 = phi i1 [ true, %if.end3 ], [ %tobool7, %lor.rhs ]
  %lor.ext = zext i1 %4 to i32, !dbg !5011
  store i32 %lor.ext, ptr %retval, align 4, !dbg !5014
  br label %return, !dbg !5014

return:                                           ; preds = %lor.end, %if.then2, %if.then
  %5 = load i32, ptr %retval, align 4, !dbg !5015
  ret i32 %5, !dbg !5015
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @rtmutex_spin_on_owner(ptr noundef %lock, ptr noundef %waiter, ptr noundef %owner) #0 align 16 !dbg !5016 {
entry:
  %lock.addr = alloca ptr, align 8
  %waiter.addr = alloca ptr, align 8
  %owner.addr = alloca ptr, align 8
  %res = alloca i8, align 1
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5020, metadata !DIExpression()), !dbg !5024
  store ptr %waiter, ptr %waiter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %waiter.addr, metadata !5021, metadata !DIExpression()), !dbg !5025
  store ptr %owner, ptr %owner.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %owner.addr, metadata !5022, metadata !DIExpression()), !dbg !5026
  call void @llvm.lifetime.start.p0(i64 1, ptr %res) #15, !dbg !5027
  call void @llvm.dbg.declare(metadata ptr %res, metadata !5023, metadata !DIExpression()), !dbg !5028
  store i8 1, ptr %res, align 1, !dbg !5028
  call void @rcu_read_lock() #14, !dbg !5029
  br label %for.cond, !dbg !5030

for.cond:                                         ; preds = %if.end6, %entry
  %0 = load ptr, ptr %owner.addr, align 8, !dbg !5031
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !5036
  %call = call ptr @rt_mutex_owner(ptr noundef %1) #14, !dbg !5037
  %cmp = icmp ne ptr %0, %call, !dbg !5038
  br i1 %cmp, label %if.then, label %if.end, !dbg !5039

if.then:                                          ; preds = %for.cond
  br label %for.end, !dbg !5040

if.end:                                           ; preds = %for.cond
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !5041, !srcloc !5042
  %2 = load ptr, ptr %owner.addr, align 8, !dbg !5043
  %call1 = call zeroext i1 @owner_on_cpu(ptr noundef %2) #14, !dbg !5045
  br i1 %call1, label %lor.lhs.false, label %if.then5, !dbg !5046

lor.lhs.false:                                    ; preds = %if.end
  %call2 = call zeroext i1 @need_resched() #14, !dbg !5047
  br i1 %call2, label %if.then5, label %lor.lhs.false3, !dbg !5048

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %lock.addr, align 8, !dbg !5049
  %4 = load ptr, ptr %waiter.addr, align 8, !dbg !5050
  %call4 = call zeroext i1 @rt_mutex_waiter_is_top_waiter(ptr noundef %3, ptr noundef %4) #14, !dbg !5051
  br i1 %call4, label %if.end6, label %if.then5, !dbg !5052

if.then5:                                         ; preds = %lor.lhs.false3, %lor.lhs.false, %if.end
  store i8 0, ptr %res, align 1, !dbg !5053
  br label %for.end, !dbg !5055

if.end6:                                          ; preds = %lor.lhs.false3
  call void @cpu_relax() #14, !dbg !5056
  br label %for.cond, !dbg !5057, !llvm.loop !5058

for.end:                                          ; preds = %if.then5, %if.then
  call void @rcu_read_unlock() #14, !dbg !5061
  %5 = load i8, ptr %res, align 1, !dbg !5062, !range !2426, !noundef !440
  %tobool = trunc i8 %5 to i1, !dbg !5062
  call void @llvm.lifetime.end.p0(i64 1, ptr %res) #15, !dbg !5063
  ret i1 %tobool, !dbg !5064
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @signal_pending(ptr noundef %p) #2 align 16 !dbg !5065 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5067, metadata !DIExpression()), !dbg !5068
  %0 = load ptr, ptr %p.addr, align 8, !dbg !5069
  %call = call i32 @test_tsk_thread_flag(ptr noundef %0, i32 noundef 17) #14, !dbg !5069
  %tobool = icmp ne i32 %call, 0, !dbg !5069
  %lnot = xor i1 %tobool, true, !dbg !5069
  %lnot1 = xor i1 %lnot, true, !dbg !5069
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5069
  %conv = sext i32 %lnot.ext to i64, !dbg !5069
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5069
  %tobool2 = icmp ne i64 %expval, 0, !dbg !5069
  br i1 %tobool2, label %if.then, label %if.end, !dbg !5071

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !5072
  br label %return, !dbg !5072

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8, !dbg !5073
  %call3 = call i32 @task_sigpending(ptr noundef %1) #14, !dbg !5074
  store i32 %call3, ptr %retval, align 4, !dbg !5075
  br label %return, !dbg !5075

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5076
  ret i32 %2, !dbg !5076
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__fatal_signal_pending(ptr noundef %p) #2 align 16 !dbg !5077 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5079, metadata !DIExpression()), !dbg !5080
  %0 = load ptr, ptr %p.addr, align 8, !dbg !5081
  %pending = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 109, !dbg !5081
  %signal = getelementptr inbounds %struct.sigpending, ptr %pending, i32 0, i32 1, !dbg !5081
  %call = call i32 @sigismember(ptr noundef %signal, i32 noundef 9) #14, !dbg !5081
  %tobool = icmp ne i32 %call, 0, !dbg !5081
  %lnot = xor i1 %tobool, true, !dbg !5081
  %lnot1 = xor i1 %lnot, true, !dbg !5081
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5081
  %conv = sext i32 %lnot.ext to i64, !dbg !5081
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5081
  %conv2 = trunc i64 %expval to i32, !dbg !5081
  ret i32 %conv2, !dbg !5082
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @test_tsk_thread_flag(ptr noundef %tsk, i32 noundef %flag) #2 align 16 !dbg !5083 {
entry:
  %tsk.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !5087, metadata !DIExpression()), !dbg !5089
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !5088, metadata !DIExpression()), !dbg !5090
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !5091
  %thread_info = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 0, !dbg !5091
  %1 = load i32, ptr %flag.addr, align 4, !dbg !5092
  %call = call i32 @test_ti_thread_flag(ptr noundef %thread_info, i32 noundef %1) #14, !dbg !5093
  ret i32 %call, !dbg !5094
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @task_sigpending(ptr noundef %p) #2 align 16 !dbg !5095 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5097, metadata !DIExpression()), !dbg !5098
  %0 = load ptr, ptr %p.addr, align 8, !dbg !5099
  %call = call i32 @test_tsk_thread_flag(ptr noundef %0, i32 noundef 2) #14, !dbg !5099
  %tobool = icmp ne i32 %call, 0, !dbg !5099
  %lnot = xor i1 %tobool, true, !dbg !5099
  %lnot1 = xor i1 %lnot, true, !dbg !5099
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5099
  %conv = sext i32 %lnot.ext to i64, !dbg !5099
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5099
  %conv2 = trunc i64 %expval to i32, !dbg !5099
  ret i32 %conv2, !dbg !5100
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @test_ti_thread_flag(ptr noundef %ti, i32 noundef %flag) #2 align 16 !dbg !5101 {
entry:
  %ti.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %ti, ptr %ti.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ti.addr, metadata !5106, metadata !DIExpression()), !dbg !5108
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !5107, metadata !DIExpression()), !dbg !5109
  %0 = load i32, ptr %flag.addr, align 4, !dbg !5110
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !5110
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !5110

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ti.addr, align 8, !dbg !5110
  %flags = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 0, !dbg !5110
  %3 = ptrtoint ptr %flags to i64, !dbg !5110
  %cmp = icmp ne i64 %3, 0, !dbg !5110
  %conv = zext i1 %cmp to i32, !dbg !5110
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !5110
  br i1 %4, label %land.lhs.true1, label %cond.false, !dbg !5110

land.lhs.true1:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %ti.addr, align 8, !dbg !5110
  %flags2 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 0, !dbg !5110
  %6 = ptrtoint ptr %flags2 to i64, !dbg !5110
  %cmp3 = icmp ne i64 %6, 0, !dbg !5110
  br i1 %cmp3, label %land.lhs.true5, label %cond.false, !dbg !5110

land.lhs.true5:                                   ; preds = %land.lhs.true1
  %7 = load ptr, ptr %ti.addr, align 8, !dbg !5110
  %flags6 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 0, !dbg !5110
  %8 = load i64, ptr %flags6, align 8, !dbg !5110
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !5110
  br i1 %9, label %cond.true, label %cond.false, !dbg !5110

cond.true:                                        ; preds = %land.lhs.true5
  %10 = load i32, ptr %flag.addr, align 4, !dbg !5110
  %conv7 = sext i32 %10 to i64, !dbg !5110
  %11 = load ptr, ptr %ti.addr, align 8, !dbg !5110
  %flags8 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 0, !dbg !5110
  %call = call zeroext i1 @const_test_bit(i64 noundef %conv7, ptr noundef %flags8) #14, !dbg !5110
  %conv9 = zext i1 %call to i32, !dbg !5110
  br label %cond.end, !dbg !5110

cond.false:                                       ; preds = %land.lhs.true5, %land.lhs.true1, %land.lhs.true, %entry
  %12 = load i32, ptr %flag.addr, align 4, !dbg !5110
  %conv10 = sext i32 %12 to i64, !dbg !5110
  %13 = load ptr, ptr %ti.addr, align 8, !dbg !5110
  %flags11 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 0, !dbg !5110
  %call12 = call zeroext i1 @_test_bit(i64 noundef %conv10, ptr noundef %flags11) #14, !dbg !5110
  %conv13 = zext i1 %call12 to i32, !dbg !5110
  br label %cond.end, !dbg !5110

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv9, %cond.true ], [ %conv13, %cond.false ], !dbg !5110
  ret i32 %cond, !dbg !5111
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !5112 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5115, metadata !DIExpression()), !dbg !5120
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5116, metadata !DIExpression()), !dbg !5121
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15, !dbg !5122
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5117, metadata !DIExpression()), !dbg !5123
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5124
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5125
  %div = udiv i64 %1, 64, !dbg !5125
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5126
  store ptr %add.ptr, ptr %p, align 8, !dbg !5123
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #15, !dbg !5127
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !5118, metadata !DIExpression()), !dbg !5128
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5129
  %rem = urem i64 %2, 64, !dbg !5129
  %shl = shl i64 1, %rem, !dbg !5129
  store i64 %shl, ptr %mask, align 8, !dbg !5128
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #15, !dbg !5130
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5119, metadata !DIExpression()), !dbg !5131
  %3 = load ptr, ptr %p, align 8, !dbg !5132
  %4 = load i64, ptr %3, align 8, !dbg !5133
  store i64 %4, ptr %val, align 8, !dbg !5131
  %5 = load i64, ptr %val, align 8, !dbg !5134
  %6 = load i64, ptr %mask, align 8, !dbg !5135
  %and = and i64 %5, %6, !dbg !5136
  %tobool = icmp ne i64 %and, 0, !dbg !5137
  %lnot = xor i1 %tobool, true, !dbg !5137
  %lnot1 = xor i1 %lnot, true, !dbg !5138
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #15, !dbg !5139
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #15, !dbg !5139
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15, !dbg !5139
  ret i1 %lnot1, !dbg !5140
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sigismember(ptr noundef %set, i32 noundef %_sig) #2 align 16 !dbg !5141 {
entry:
  %set.addr = alloca ptr, align 8
  %_sig.addr = alloca i32, align 4
  %sig = alloca i64, align 8
  store ptr %set, ptr %set.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !5147, metadata !DIExpression()), !dbg !5150
  store i32 %_sig, ptr %_sig.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %_sig.addr, metadata !5148, metadata !DIExpression()), !dbg !5151
  call void @llvm.lifetime.start.p0(i64 8, ptr %sig) #15, !dbg !5152
  call void @llvm.dbg.declare(metadata ptr %sig, metadata !5149, metadata !DIExpression()), !dbg !5153
  %0 = load i32, ptr %_sig.addr, align 4, !dbg !5154
  %sub = sub i32 %0, 1, !dbg !5155
  %conv = sext i32 %sub to i64, !dbg !5154
  store i64 %conv, ptr %sig, align 8, !dbg !5153
  %1 = load ptr, ptr %set.addr, align 8, !dbg !5156
  %sig1 = getelementptr inbounds %struct.sigset_t, ptr %1, i32 0, i32 0, !dbg !5158
  %arrayidx = getelementptr [1 x i64], ptr %sig1, i64 0, i64 0, !dbg !5156
  %2 = load i64, ptr %arrayidx, align 8, !dbg !5156
  %3 = load i64, ptr %sig, align 8, !dbg !5159
  %shr = lshr i64 %2, %3, !dbg !5160
  %and = and i64 1, %shr, !dbg !5161
  %conv2 = trunc i64 %and to i32, !dbg !5162
  call void @llvm.lifetime.end.p0(i64 8, ptr %sig) #15, !dbg !5163
  ret i32 %conv2, !dbg !5164
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_lock() #3 align 16 !dbg !5165 {
entry:
  call void @__rcu_read_lock() #14, !dbg !5167
  br label %do.body, !dbg !5168

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5169

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !5171

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !5172

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !5174
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @owner_on_cpu(ptr noundef %owner) #2 align 16 !dbg !5175 {
entry:
  %owner.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %owner, ptr %owner.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %owner.addr, metadata !5179, metadata !DIExpression()), !dbg !5180
  br label %do.body, !dbg !5181

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5183

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %owner.addr, align 8, !dbg !5181
  %on_cpu = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 6, !dbg !5181
  %1 = load volatile i32, ptr %on_cpu, align 4, !dbg !5181
  store i32 %1, ptr %tmp, align 4, !dbg !5183
  %2 = load i32, ptr %tmp, align 4, !dbg !5181
  %tobool = icmp ne i32 %2, 0, !dbg !5185
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !5186

land.rhs:                                         ; preds = %do.end
  %3 = load ptr, ptr %owner.addr, align 8, !dbg !5187
  %call = call i32 @task_cpu(ptr noundef %3) #14, !dbg !5188
  %call1 = call zeroext i1 @vcpu_is_preempted(i32 noundef %call) #14, !dbg !5189
  %lnot = xor i1 %call1, true, !dbg !5190
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.end
  %4 = phi i1 [ false, %do.end ], [ %lnot, %land.rhs ], !dbg !5191
  ret i1 %4, !dbg !5192
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @need_resched() #3 align 16 !dbg !5193 {
entry:
  %call = call zeroext i1 @tif_need_resched() #14, !dbg !5194
  %lnot = xor i1 %call, true, !dbg !5194
  %lnot1 = xor i1 %lnot, true, !dbg !5194
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5194
  %conv = sext i32 %lnot.ext to i64, !dbg !5194
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5194
  %tobool = icmp ne i64 %expval, 0, !dbg !5194
  ret i1 %tobool, !dbg !5195
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @rt_mutex_waiter_is_top_waiter(ptr noundef %lock, ptr noundef %waiter) #2 align 16 !dbg !5196 {
entry:
  %lock.addr = alloca ptr, align 8
  %waiter.addr = alloca ptr, align 8
  %leftmost = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5198, metadata !DIExpression()), !dbg !5203
  store ptr %waiter, ptr %waiter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %waiter.addr, metadata !5199, metadata !DIExpression()), !dbg !5204
  call void @llvm.lifetime.start.p0(i64 8, ptr %leftmost) #15, !dbg !5205
  call void @llvm.dbg.declare(metadata ptr %leftmost, metadata !5200, metadata !DIExpression()), !dbg !5206
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5207
  %waiters = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 1, !dbg !5207
  %rb_leftmost = getelementptr inbounds %struct.rb_root_cached, ptr %waiters, i32 0, i32 1, !dbg !5207
  %1 = load ptr, ptr %rb_leftmost, align 8, !dbg !5207
  store ptr %1, ptr %leftmost, align 8, !dbg !5206
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5208
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5201, metadata !DIExpression()), !dbg !5208
  %2 = load ptr, ptr %leftmost, align 8, !dbg !5208
  store ptr %2, ptr %__mptr, align 8, !dbg !5208
  %3 = load ptr, ptr %__mptr, align 8, !dbg !5208
  %add.ptr = getelementptr i8, ptr %3, i64 0, !dbg !5208
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5208
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5209
  %4 = load ptr, ptr %tmp, align 8, !dbg !5208
  %5 = load ptr, ptr %waiter.addr, align 8, !dbg !5210
  %cmp = icmp eq ptr %4, %5, !dbg !5211
  call void @llvm.lifetime.end.p0(i64 8, ptr %leftmost) #15, !dbg !5212
  ret i1 %cmp, !dbg !5213
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_relax() #3 align 16 !dbg !5214 {
entry:
  call void @rep_nop() #14, !dbg !5216
  ret void, !dbg !5217
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_unlock() #2 align 16 !dbg !5218 {
entry:
  br label %do.body, !dbg !5219

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5220

do.end:                                           ; preds = %do.body
  call void @__rcu_read_unlock() #14, !dbg !5222
  br label %do.body1, !dbg !5223

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !5224

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !5226
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5227 dso_local void @__rcu_read_lock() #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @vcpu_is_preempted(i32 noundef %cpu) #2 align 16 !dbg !5228 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5232, metadata !DIExpression()), !dbg !5233
  ret i1 false, !dbg !5234
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @task_cpu(ptr noundef %p) #2 align 16 !dbg !5235 {
entry:
  %p.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5241, metadata !DIExpression()), !dbg !5242
  br label %do.body, !dbg !5243

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5245

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %p.addr, align 8, !dbg !5243
  %thread_info = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 0, !dbg !5243
  %cpu = getelementptr inbounds %struct.thread_info, ptr %thread_info, i32 0, i32 3, !dbg !5243
  %1 = load volatile i32, ptr %cpu, align 4, !dbg !5243
  store i32 %1, ptr %tmp, align 4, !dbg !5245
  %2 = load i32, ptr %tmp, align 4, !dbg !5243
  ret i32 %2, !dbg !5247
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @tif_need_resched() #3 align 16 !dbg !5248 {
entry:
  %call = call ptr @get_current() #14, !dbg !5249
  %flags = getelementptr inbounds %struct.thread_info, ptr %call, i32 0, i32 0, !dbg !5250
  %call1 = call zeroext i1 @arch_test_bit(i64 noundef 3, ptr noundef %flags) #14, !dbg !5251
  ret i1 %call1, !dbg !5252
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rep_nop() #3 align 16 !dbg !5253 {
entry:
  call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !5254, !srcloc !5255
  ret void, !dbg !5256
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5257 dso_local void @__rcu_read_unlock() #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rt_prio(i32 noundef %prio) #2 align 16 !dbg !5258 {
entry:
  %retval = alloca i32, align 4
  %prio.addr = alloca i32, align 4
  store i32 %prio, ptr %prio.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %prio.addr, metadata !5260, metadata !DIExpression()), !dbg !5261
  %0 = load i32, ptr %prio.addr, align 4, !dbg !5262
  %cmp = icmp slt i32 %0, 100, !dbg !5262
  %lnot = xor i1 %cmp, true, !dbg !5262
  %lnot1 = xor i1 %lnot, true, !dbg !5262
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5262
  %conv = sext i32 %lnot.ext to i64, !dbg !5262
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5262
  %tobool = icmp ne i64 %expval, 0, !dbg !5262
  br i1 %tobool, label %if.then, label %if.end, !dbg !5264

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !5265
  br label %return, !dbg !5265

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5266
  br label %return, !dbg !5266

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, ptr %retval, align 4, !dbg !5267
  ret i32 %1, !dbg !5267
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_inc(ptr noundef %r) #2 align 16 !dbg !5268 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5273, metadata !DIExpression()), !dbg !5274
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5275
  call void @__refcount_inc(ptr noundef %0, ptr noundef null) #14, !dbg !5276
  ret void, !dbg !5277
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_inc(ptr noundef %r, ptr noundef %oldp) #2 align 16 !dbg !5278 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5282, metadata !DIExpression()), !dbg !5284
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !5283, metadata !DIExpression()), !dbg !5285
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5286
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !5287
  call void @__refcount_add(i32 noundef 1, ptr noundef %0, ptr noundef %1) #14, !dbg !5288
  ret void, !dbg !5289
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_add(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #2 align 16 !dbg !5290 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5294, metadata !DIExpression()), !dbg !5298
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5295, metadata !DIExpression()), !dbg !5299
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !5296, metadata !DIExpression()), !dbg !5300
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #15, !dbg !5301
  call void @llvm.dbg.declare(metadata ptr %old, metadata !5297, metadata !DIExpression()), !dbg !5302
  %0 = load i32, ptr %i.addr, align 4, !dbg !5303
  %1 = load ptr, ptr %r.addr, align 8, !dbg !5304
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !5305
  %call = call i32 @atomic_fetch_add_relaxed(i32 noundef %0, ptr noundef %refs) #14, !dbg !5306
  store i32 %call, ptr %old, align 4, !dbg !5302
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !5307
  %tobool = icmp ne ptr %2, null, !dbg !5307
  br i1 %tobool, label %if.then, label %if.end, !dbg !5309

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !5310
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !5311
  store i32 %3, ptr %4, align 4, !dbg !5312
  br label %if.end, !dbg !5313

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !5314
  %tobool1 = icmp ne i32 %5, 0, !dbg !5314
  %lnot = xor i1 %tobool1, true, !dbg !5314
  %lnot2 = xor i1 %lnot, true, !dbg !5314
  %lnot3 = xor i1 %lnot2, true, !dbg !5314
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5314
  %conv = sext i32 %lnot.ext to i64, !dbg !5314
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5314
  %tobool4 = icmp ne i64 %expval, 0, !dbg !5314
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !5316

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %r.addr, align 8, !dbg !5317
  call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 2) #14, !dbg !5318
  br label %if.end18, !dbg !5318

if.else:                                          ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !5319
  %cmp = icmp slt i32 %7, 0, !dbg !5319
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !5319

lor.rhs:                                          ; preds = %if.else
  %8 = load i32, ptr %old, align 4, !dbg !5319
  %9 = load i32, ptr %i.addr, align 4, !dbg !5319
  %add = add i32 %8, %9, !dbg !5319
  %cmp7 = icmp slt i32 %add, 0, !dbg !5319
  br label %lor.end, !dbg !5319

lor.end:                                          ; preds = %lor.rhs, %if.else
  %10 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %10, true, !dbg !5319
  %lnot11 = xor i1 %lnot9, true, !dbg !5319
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !5319
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !5319
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !5319
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !5319
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !5321

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !5322
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 1) #14, !dbg !5323
  br label %if.end17, !dbg !5323

if.end17:                                         ; preds = %if.then16, %lor.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #15, !dbg !5324
  ret void, !dbg !5324
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #3 align 16 !dbg !5325 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5331, metadata !DIExpression()), !dbg !5333
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5332, metadata !DIExpression()), !dbg !5334
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5335
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #14, !dbg !5336
  %1 = load i32, ptr %i.addr, align 4, !dbg !5337
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5338
  %call = call i32 @raw_atomic_fetch_add_relaxed(i32 noundef %1, ptr noundef %2) #14, !dbg !5339
  ret i32 %call, !dbg !5340
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5341 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #3 align 16 !dbg !5344 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5347, metadata !DIExpression()), !dbg !5349
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5348, metadata !DIExpression()), !dbg !5350
  %0 = load i32, ptr %i.addr, align 4, !dbg !5351
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5352
  %call = call i32 @arch_atomic_fetch_add(i32 noundef %0, ptr noundef %1) #14, !dbg !5353
  ret i32 %call, !dbg !5354
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_add(i32 noundef %i, ptr noundef %v) #3 align 16 !dbg !5355 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5358, metadata !DIExpression()), !dbg !5362
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5359, metadata !DIExpression()), !dbg !5363
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #15, !dbg !5364
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !5360, metadata !DIExpression()), !dbg !5364
  %0 = load i32, ptr %i.addr, align 4, !dbg !5364
  store i32 %0, ptr %__ret, align 4, !dbg !5364
  %1 = load i32, ptr %__ret, align 4, !dbg !5364
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5364
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !5364
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #15, !dbg !5364, !srcloc !5365
  store i32 %3, ptr %__ret, align 4, !dbg !5364
  %4 = load i32, ptr %__ret, align 4, !dbg !5364
  store i32 %4, ptr %tmp, align 4, !dbg !5364
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #15, !dbg !5366
  %5 = load i32, ptr %tmp, align 4, !dbg !5364
  ret i32 %5, !dbg !5367
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5368 dso_local i32 @_printk(ptr noundef, ...) #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @task_pid_nr(ptr noundef %tsk) #2 align 16 !dbg !5372 {
entry:
  %tsk.addr = alloca ptr, align 8
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !5376, metadata !DIExpression()), !dbg !5377
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !5378
  %pid = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 62, !dbg !5379
  %1 = load i32, ptr %pid, align 8, !dbg !5379
  ret i32 %1, !dbg !5380
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @put_task_struct(ptr noundef %t) #2 align 16 !dbg !2077 {
entry:
  %t.addr = alloca ptr, align 8
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !2082, metadata !DIExpression()), !dbg !5381
  %0 = load ptr, ptr %t.addr, align 8, !dbg !5382
  %usage = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 3, !dbg !5384
  %call = call zeroext i1 @refcount_dec_and_test(ptr noundef %usage) #14, !dbg !5385
  br i1 %call, label %if.end, label %if.then, !dbg !5386

if.then:                                          ; preds = %entry
  br label %return, !dbg !5387

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !5388

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !5391

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr %t.addr, align 8, !dbg !5393
  call void @__put_task_struct(ptr noundef %1) #14, !dbg !5394
  br label %do.body1, !dbg !5395

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !5396

do.end2:                                          ; preds = %do.body1
  br label %return, !dbg !5398

return:                                           ; preds = %do.end2, %if.then
  ret void, !dbg !5399
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5400 dso_local i32 @_raw_spin_trylock(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5403 dso_local i32 @wake_up_state(ptr noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_dec_and_test(ptr noundef %r) #2 align 16 !dbg !5406 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5410, metadata !DIExpression()), !dbg !5411
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5412
  %call = call zeroext i1 @__refcount_dec_and_test(ptr noundef %0, ptr noundef null) #14, !dbg !5413
  ret i1 %call, !dbg !5414
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5415 dso_local void @__put_task_struct(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_dec_and_test(ptr noundef %r, ptr noundef %oldp) #2 align 16 !dbg !5416 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5420, metadata !DIExpression()), !dbg !5422
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !5421, metadata !DIExpression()), !dbg !5423
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5424
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !5425
  %call = call zeroext i1 @__refcount_sub_and_test(i32 noundef 1, ptr noundef %0, ptr noundef %1) #14, !dbg !5426
  ret i1 %call, !dbg !5427
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #2 align 16 !dbg !5428 {
entry:
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5432, metadata !DIExpression()), !dbg !5436
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5433, metadata !DIExpression()), !dbg !5437
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !5434, metadata !DIExpression()), !dbg !5438
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #15, !dbg !5439
  call void @llvm.dbg.declare(metadata ptr %old, metadata !5435, metadata !DIExpression()), !dbg !5440
  %0 = load i32, ptr %i.addr, align 4, !dbg !5441
  %1 = load ptr, ptr %r.addr, align 8, !dbg !5442
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !5443
  %call = call i32 @atomic_fetch_sub_release(i32 noundef %0, ptr noundef %refs) #14, !dbg !5444
  store i32 %call, ptr %old, align 4, !dbg !5440
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !5445
  %tobool = icmp ne ptr %2, null, !dbg !5445
  br i1 %tobool, label %if.then, label %if.end, !dbg !5447

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !5448
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !5449
  store i32 %3, ptr %4, align 4, !dbg !5450
  br label %if.end, !dbg !5451

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !5452
  %6 = load i32, ptr %i.addr, align 4, !dbg !5454
  %cmp = icmp eq i32 %5, %6, !dbg !5455
  br i1 %cmp, label %if.then1, label %if.end11, !dbg !5456

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !5457

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !5459

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !5461

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !5461

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !5459

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !5463

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !5465

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !5465

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !5463, !srcloc !5467
  br label %do.cond7, !dbg !5463

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !5463

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !5459

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !5459

do.end10:                                         ; preds = %do.cond9
  store i1 true, ptr %retval, align 1, !dbg !5468
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5468

if.end11:                                         ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !5469
  %cmp12 = icmp slt i32 %7, 0, !dbg !5469
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !5469

lor.rhs:                                          ; preds = %if.end11
  %8 = load i32, ptr %old, align 4, !dbg !5469
  %9 = load i32, ptr %i.addr, align 4, !dbg !5469
  %sub = sub i32 %8, %9, !dbg !5469
  %cmp13 = icmp slt i32 %sub, 0, !dbg !5469
  br label %lor.end, !dbg !5469

lor.end:                                          ; preds = %lor.rhs, %if.end11
  %10 = phi i1 [ true, %if.end11 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !5469
  %lnot14 = xor i1 %lnot, true, !dbg !5469
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !5469
  %conv = sext i32 %lnot.ext to i64, !dbg !5469
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5469
  %tobool15 = icmp ne i64 %expval, 0, !dbg !5469
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !5471

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !5472
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #14, !dbg !5473
  br label %if.end17, !dbg !5473

if.end17:                                         ; preds = %if.then16, %lor.end
  store i1 false, ptr %retval, align 1, !dbg !5474
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5474

cleanup:                                          ; preds = %if.end17, %do.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #15, !dbg !5475
  %12 = load i1, ptr %retval, align 1, !dbg !5475
  ret i1 %12, !dbg !5475
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #3 align 16 !dbg !5476 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5478, metadata !DIExpression()), !dbg !5480
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5479, metadata !DIExpression()), !dbg !5481
  br label %do.body, !dbg !5482

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5483

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5485
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #14, !dbg !5486
  %1 = load i32, ptr %i.addr, align 4, !dbg !5487
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5488
  %call = call i32 @raw_atomic_fetch_sub_release(i32 noundef %1, ptr noundef %2) #14, !dbg !5489
  ret i32 %call, !dbg !5490
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #3 align 16 !dbg !5491 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5493, metadata !DIExpression()), !dbg !5495
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5494, metadata !DIExpression()), !dbg !5496
  %0 = load i32, ptr %i.addr, align 4, !dbg !5497
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5498
  %call = call i32 @arch_atomic_fetch_sub(i32 noundef %0, ptr noundef %1) #14, !dbg !5499
  ret i32 %call, !dbg !5500
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_sub(i32 noundef %i, ptr noundef %v) #3 align 16 !dbg !5501 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5503, metadata !DIExpression()), !dbg !5507
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5504, metadata !DIExpression()), !dbg !5508
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #15, !dbg !5509
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !5505, metadata !DIExpression()), !dbg !5509
  %0 = load i32, ptr %i.addr, align 4, !dbg !5509
  %sub = sub i32 0, %0, !dbg !5509
  store i32 %sub, ptr %__ret, align 4, !dbg !5509
  %1 = load i32, ptr %__ret, align 4, !dbg !5509
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5509
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !5509
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #15, !dbg !5509, !srcloc !5510
  store i32 %3, ptr %__ret, align 4, !dbg !5509
  %4 = load i32, ptr %__ret, align 4, !dbg !5509
  store i32 %4, ptr %tmp, align 4, !dbg !5509
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #15, !dbg !5511
  %5 = load i32, ptr %tmp, align 4, !dbg !5509
  ret i32 %5, !dbg !5512
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @wake_q_empty(ptr noundef %head) #2 align 16 !dbg !5513 {
entry:
  %head.addr = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5517, metadata !DIExpression()), !dbg !5518
  %0 = load ptr, ptr %head.addr, align 8, !dbg !5519
  %first = getelementptr inbounds %struct.wake_q_head, ptr %0, i32 0, i32 0, !dbg !5520
  %1 = load ptr, ptr %first, align 8, !dbg !5520
  %cmp = icmp eq ptr %1, inttoptr (i64 1 to ptr), !dbg !5521
  ret i1 %cmp, !dbg !5522
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5523 dso_local void @wake_up_q(ptr noundef) #5

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #11 = { nocallback nounwind }
attributes #12 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone }
attributes #15 = { nounwind }
attributes #16 = { nounwind memory(none) }
attributes #17 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!2102}
!llvm.module.flags = !{!2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110}
!llvm.ident = !{!2111}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "max_lock_depth", scope: !2, file: !3, line: 14, type: !78, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/locking/.rtmutex_api.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/locking/rtmutex_api\22 -D KBUILD_BASENAME=\22rtmutex_api\22 -D KBUILD_MODNAME=\22rtmutex_api\22 -D __KBUILD_MODNAME=kmod_rtmutex_api -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/locking/rtmutex_api.ll kernel/locking/rtmutex_api.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !42, globals: !1935, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "kernel/locking/rtmutex_api.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6d862a74b0a00ac9754bb613efc03dd2")
!4 = !{!5, !11, !17, !24, !29, !34}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !6, line: 65, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!10 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !12, line: 16, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!13 = !{!14, !15, !16}
!14 = !DIEnumerator(name: "TT_NONE", value: 0)
!15 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!16 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !18, line: 51, baseType: !7, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!19 = !{!20, !21, !22, !23}
!20 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!21 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!22 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!23 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !25, line: 10, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!26 = !{!27, !28}
!27 = !DIEnumerator(name: "false", value: 0)
!28 = !DIEnumerator(name: "true", value: 1)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rtmutex_chainwalk", file: !30, line: 174, baseType: !7, size: 32, elements: !31)
!30 = !DIFile(filename: "kernel/locking/rtmutex_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c615e119c487e73c2bc04a1b58a3742e")
!31 = !{!32, !33}
!32 = !DIEnumerator(name: "RT_MUTEX_MIN_CHAINWALK", value: 0)
!33 = !DIEnumerator(name: "RT_MUTEX_FULL_CHAINWALK", value: 1)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !35, line: 119, baseType: !7, size: 32, elements: !36)
!35 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!36 = !{!37, !38, !39, !40, !41}
!37 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!38 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!39 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!40 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!41 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!42 = !{!43, !44, !49, !1893, !58, !1895, !1899, !785, !78, !1901, !1904, !1911, !1913, !7, !61, !50, !1914, !1273, !1917, !145, !1919, !1920, !1922, !1923, !1925, !1928, !1930, !1931, !1934}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !46, line: 735, size: 64, elements: !47)
!46 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!47 = !{!48}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !45, file: !46, line: 736, baseType: !44, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !46, line: 746, size: 58368, elements: !52)
!52 = !{!53, !66, !67, !68, !79, !80, !81, !82, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !174, !185, !312, !316, !319, !350, !351, !352, !353, !364, !366, !367, !368, !369, !370, !371, !382, !383, !386, !387, !388, !389, !390, !391, !392, !393, !400, !401, !408, !409, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !712, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !768, !770, !771, !772, !784, !786, !787, !788, !789, !790, !791, !797, !798, !799, !800, !801, !802, !803, !817, !823, !1023, !1024, !1025, !1026, !1030, !1033, !1040, !1045, !1048, !1051, !1054, !1057, !1202, !1233, !1234, !1235, !1236, !1237, !1238, !1241, !1242, !1243, !1246, !1247, !1248, !1257, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1303, !1304, !1307, !1310, !1313, !1316, !1319, !1320, !1407, !1408, !1409, !1410, !1411, !1417, !1418, !1419, !1420, !1423, !1424, !1427, !1430, !1431, !1434, !1435, !1436, !1439, !1440, !1441, !1444, !1445, !1446, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1478, !1481, !1549, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1561, !1633, !1635, !1636, !1637, !1638, !1639, !1651, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1668, !1669, !1670}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !51, file: !46, line: 752, baseType: !54, size: 192)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !55, line: 56, size: 192, elements: !56)
!55 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!56 = !{!57, !59, !60, !65}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !54, file: !55, line: 57, baseType: !58, size: 64)
!58 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !54, file: !55, line: 58, baseType: !58, size: 64, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !54, file: !55, line: 59, baseType: !61, size: 32, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !62, line: 21, baseType: !63)
!62 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !64, line: 27, baseType: !7)
!64 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!65 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !54, file: !55, line: 61, baseType: !61, size: 32, offset: 160)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !51, file: !46, line: 754, baseType: !7, size: 32, offset: 192)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !51, file: !46, line: 767, baseType: !43, size: 64, offset: 256)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !51, file: !46, line: 768, baseType: !69, size: 32, offset: 320)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !35, line: 113, baseType: !70)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !35, line: 111, size: 32, elements: !71)
!71 = !{!72}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !70, file: !35, line: 112, baseType: !73, size: 32)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !74, line: 174, baseType: !75)
!74 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !74, line: 172, size: 32, elements: !76)
!76 = !{!77}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !75, file: !74, line: 173, baseType: !78, size: 32)
!78 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !51, file: !46, line: 770, baseType: !7, size: 32, offset: 352)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !51, file: !46, line: 771, baseType: !7, size: 32, offset: 384)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !51, file: !46, line: 774, baseType: !78, size: 32, offset: 416)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !51, file: !46, line: 775, baseType: !83, size: 128, offset: 448)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !84, line: 58, size: 128, elements: !85)
!84 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!85 = !{!86, !92, !97, !101}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !83, file: !84, line: 59, baseType: !87, size: 64)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !88, line: 60, size: 64, elements: !89)
!88 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!89 = !{!90}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !87, file: !88, line: 61, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, scope: !83, file: !84, line: 60, baseType: !93, size: 32, offset: 64)
!93 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !83, file: !84, line: 60, size: 32, elements: !94)
!94 = !{!95, !96}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !93, file: !84, line: 61, baseType: !7, size: 32)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !93, file: !84, line: 62, baseType: !73, size: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !83, file: !84, line: 65, baseType: !98, size: 16, offset: 96)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !62, line: 19, baseType: !99)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !64, line: 24, baseType: !100)
!100 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !83, file: !84, line: 65, baseType: !98, size: 16, offset: 112)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !51, file: !46, line: 776, baseType: !7, size: 32, offset: 576)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !51, file: !46, line: 777, baseType: !58, size: 64, offset: 640)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !51, file: !46, line: 778, baseType: !50, size: 64, offset: 704)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !51, file: !46, line: 787, baseType: !78, size: 32, offset: 768)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !51, file: !46, line: 788, baseType: !78, size: 32, offset: 800)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !51, file: !46, line: 790, baseType: !78, size: 32, offset: 832)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !51, file: !46, line: 792, baseType: !78, size: 32, offset: 864)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !51, file: !46, line: 793, baseType: !78, size: 32, offset: 896)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !51, file: !46, line: 794, baseType: !78, size: 32, offset: 928)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !51, file: !46, line: 795, baseType: !7, size: 32, offset: 960)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !51, file: !46, line: 797, baseType: !113, size: 2048, offset: 1024)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !46, line: 551, size: 2048, elements: !114)
!114 = !{!115, !120, !128, !132, !133, !139, !140, !141, !142, !143, !144, !148, !149, !150, !151, !153, !156, !157, !158}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !113, file: !46, line: 553, baseType: !116, size: 128)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !46, line: 411, size: 128, elements: !117)
!117 = !{!118, !119}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !116, file: !46, line: 412, baseType: !58, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !116, file: !46, line: 413, baseType: !61, size: 32, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !113, file: !46, line: 554, baseType: !121, size: 192, align: 64, offset: 128)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !122, line: 5, size: 192, align: 64, elements: !123)
!122 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!123 = !{!124, !125, !127}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !121, file: !122, line: 6, baseType: !58, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !121, file: !122, line: 7, baseType: !126, size: 64, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !121, file: !122, line: 8, baseType: !126, size: 64, offset: 128)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !113, file: !46, line: 555, baseType: !129, size: 64, offset: 320)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !62, line: 23, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !64, line: 31, baseType: !131)
!131 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !113, file: !46, line: 556, baseType: !129, size: 64, offset: 384)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !113, file: !46, line: 558, baseType: !134, size: 128, offset: 448)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !74, line: 190, size: 128, elements: !135)
!135 = !{!136, !138}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !134, file: !74, line: 191, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !134, file: !74, line: 191, baseType: !137, size: 64, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !113, file: !46, line: 559, baseType: !7, size: 32, offset: 576)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !113, file: !46, line: 561, baseType: !129, size: 64, offset: 640)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !113, file: !46, line: 562, baseType: !129, size: 64, offset: 704)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !113, file: !46, line: 563, baseType: !129, size: 64, offset: 768)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !113, file: !46, line: 564, baseType: !129, size: 64, offset: 832)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !113, file: !46, line: 565, baseType: !145, size: 64, offset: 896)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !62, line: 22, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !64, line: 30, baseType: !147)
!147 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !113, file: !46, line: 566, baseType: !129, size: 64, offset: 960)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !113, file: !46, line: 568, baseType: !129, size: 64, offset: 1024)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !113, file: !46, line: 571, baseType: !78, size: 32, offset: 1088)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !113, file: !46, line: 572, baseType: !152, size: 64, offset: 1152)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !113, file: !46, line: 574, baseType: !154, size: 64, offset: 1216)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !46, line: 49, flags: DIFlagFwdDecl)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !113, file: !46, line: 576, baseType: !154, size: 64, offset: 1280)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !113, file: !46, line: 578, baseType: !58, size: 64, offset: 1344)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !113, file: !46, line: 588, baseType: !159, size: 512, align: 512, offset: 1536)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !46, line: 497, size: 512, align: 512, elements: !160)
!160 = !{!161, !162, !163, !164, !165, !166, !167, !168, !169}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !159, file: !46, line: 498, baseType: !129, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !159, file: !46, line: 499, baseType: !129, size: 64, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !159, file: !46, line: 500, baseType: !129, size: 64, offset: 128)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !159, file: !46, line: 501, baseType: !61, size: 32, offset: 192)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !159, file: !46, line: 502, baseType: !61, size: 32, offset: 224)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !159, file: !46, line: 503, baseType: !58, size: 64, offset: 256)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !159, file: !46, line: 504, baseType: !58, size: 64, offset: 320)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !159, file: !46, line: 505, baseType: !58, size: 64, offset: 384)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !159, file: !46, line: 506, baseType: !170, size: 64, align: 64, offset: 448)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !46, line: 445, size: 64, align: 64, elements: !171)
!171 = !{!172, !173}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !170, file: !46, line: 446, baseType: !7, size: 32)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !170, file: !46, line: 447, baseType: !7, size: 32, offset: 32)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !51, file: !46, line: 798, baseType: !175, size: 384, offset: 3072)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !46, line: 592, size: 384, elements: !176)
!176 = !{!177, !178, !179, !180, !181, !182, !183}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !175, file: !46, line: 593, baseType: !134, size: 128)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !175, file: !46, line: 594, baseType: !58, size: 64, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !175, file: !46, line: 595, baseType: !58, size: 64, offset: 192)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !175, file: !46, line: 596, baseType: !7, size: 32, offset: 256)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !175, file: !46, line: 597, baseType: !100, size: 16, offset: 288)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !175, file: !46, line: 598, baseType: !100, size: 16, offset: 304)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !175, file: !46, line: 600, baseType: !184, size: 64, offset: 320)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !51, file: !46, line: 799, baseType: !186, size: 1792, offset: 3456)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !46, line: 610, size: 1792, elements: !187)
!187 = !{!188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !309, !310}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !186, file: !46, line: 611, baseType: !121, size: 192, align: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !186, file: !46, line: 618, baseType: !129, size: 64, offset: 192)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !186, file: !46, line: 619, baseType: !129, size: 64, offset: 256)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !186, file: !46, line: 620, baseType: !129, size: 64, offset: 320)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !186, file: !46, line: 621, baseType: !129, size: 64, offset: 384)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !186, file: !46, line: 622, baseType: !129, size: 64, offset: 448)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !186, file: !46, line: 629, baseType: !145, size: 64, offset: 512)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !186, file: !46, line: 630, baseType: !129, size: 64, offset: 576)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !186, file: !46, line: 631, baseType: !7, size: 32, offset: 640)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !186, file: !46, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !186, file: !46, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !186, file: !46, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !186, file: !46, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !186, file: !46, line: 662, baseType: !202, size: 512, offset: 704)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !203)
!203 = !{!204, !212, !213, !218, !305, !306, !307, !308}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !202, file: !6, line: 119, baseType: !205, size: 256)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !206, line: 9, size: 256, elements: !207)
!206 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!207 = !{!208, !209}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !205, file: !206, line: 10, baseType: !121, size: 192, align: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !205, file: !206, line: 11, baseType: !210, size: 64, offset: 192)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !211, line: 29, baseType: !145)
!211 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !202, file: !6, line: 120, baseType: !210, size: 64, offset: 256)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !202, file: !6, line: 121, baseType: !214, size: 64, offset: 320)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{!5, !217}
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !202, file: !6, line: 122, baseType: !219, size: 64, offset: 384)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !221)
!221 = !{!222, !273, !274, !278, !288, !289, !300, !304}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !220, file: !6, line: 160, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 215, size: 4608, align: 512, elements: !225)
!225 = !{!226, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !224, file: !6, line: 216, baseType: !227, size: 32)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !228, line: 23, baseType: !229)
!228 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !228, line: 14, size: 32, elements: !230)
!230 = !{!231}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !229, file: !228, line: 15, baseType: !232, size: 32)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !233, line: 44, baseType: !234)
!233 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !233, line: 14, size: 32, elements: !235)
!235 = !{!236}
!236 = !DIDerivedType(tag: DW_TAG_member, scope: !234, file: !233, line: 15, baseType: !237, size: 32)
!237 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !234, file: !233, line: 15, size: 32, elements: !238)
!238 = !{!239, !240, !248}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !237, file: !233, line: 16, baseType: !73, size: 32)
!240 = !DIDerivedType(tag: DW_TAG_member, scope: !237, file: !233, line: 24, baseType: !241, size: 16)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !237, file: !233, line: 24, size: 16, elements: !242)
!242 = !{!243, !247}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !241, file: !233, line: 25, baseType: !244, size: 8)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !62, line: 17, baseType: !245)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !64, line: 21, baseType: !246)
!246 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !241, file: !233, line: 26, baseType: !244, size: 8, offset: 8)
!248 = !DIDerivedType(tag: DW_TAG_member, scope: !237, file: !233, line: 28, baseType: !249, size: 32)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !237, file: !233, line: 28, size: 32, elements: !250)
!250 = !{!251, !252}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !249, file: !233, line: 29, baseType: !98, size: 16)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !249, file: !233, line: 30, baseType: !98, size: 16, offset: 16)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !224, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !224, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !224, file: !6, line: 219, baseType: !7, size: 32, offset: 96)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !224, file: !6, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !224, file: !6, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !224, file: !6, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !224, file: !6, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !224, file: !6, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !224, file: !6, line: 226, baseType: !7, size: 32, offset: 160)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !224, file: !6, line: 227, baseType: !100, size: 16, offset: 192)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !224, file: !6, line: 228, baseType: !100, size: 16, offset: 208)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !224, file: !6, line: 229, baseType: !7, size: 32, offset: 224)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !224, file: !6, line: 235, baseType: !210, size: 64, offset: 256)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !224, file: !6, line: 236, baseType: !217, size: 64, offset: 320)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !224, file: !6, line: 237, baseType: !210, size: 64, offset: 384)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !224, file: !6, line: 238, baseType: !217, size: 64, offset: 448)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !224, file: !6, line: 239, baseType: !270, size: 4096, align: 512, offset: 512)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 4096, align: 512, elements: !271)
!271 = !{!272}
!272 = !DISubrange(count: 8)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !220, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !220, file: !6, line: 162, baseType: !275, size: 32, offset: 96)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !74, line: 32, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !277, line: 96, baseType: !78)
!277 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!278 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !220, file: !6, line: 163, baseType: !279, size: 32, offset: 128)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !280, line: 274, baseType: !281)
!280 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !280, line: 274, size: 32, elements: !282)
!282 = !{!283}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !281, file: !280, line: 274, baseType: !284, size: 32)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !280, line: 69, baseType: !285)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !280, line: 64, size: 32, elements: !286)
!286 = !{!287}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !285, file: !280, line: 65, baseType: !7, size: 32)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !220, file: !6, line: 164, baseType: !217, size: 64, offset: 192)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !220, file: !6, line: 165, baseType: !290, size: 128, offset: 256)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !206, line: 14, size: 128, elements: !291)
!291 = !{!292}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !290, file: !206, line: 15, baseType: !293, size: 128)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !122, line: 26, size: 128, elements: !294)
!294 = !{!295, !299}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !293, file: !122, line: 27, baseType: !296, size: 64)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !122, line: 12, size: 64, elements: !297)
!297 = !{!298}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !296, file: !122, line: 13, baseType: !126, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !293, file: !122, line: 28, baseType: !126, size: 64, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !220, file: !6, line: 166, baseType: !301, size: 64, offset: 384)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{!210}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !220, file: !6, line: 167, baseType: !210, size: 64, offset: 448)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !202, file: !6, line: 123, baseType: !244, size: 8, offset: 448)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !202, file: !6, line: 124, baseType: !244, size: 8, offset: 456)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !202, file: !6, line: 125, baseType: !244, size: 8, offset: 464)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !202, file: !6, line: 126, baseType: !244, size: 8, offset: 472)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !186, file: !46, line: 671, baseType: !202, size: 512, offset: 1216)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !186, file: !46, line: 679, baseType: !311, size: 64, offset: 1728)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !51, file: !46, line: 800, baseType: !313, size: 64, offset: 5248)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !315)
!315 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !46, line: 800, flags: DIFlagFwdDecl)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !51, file: !46, line: 809, baseType: !317, size: 64, offset: 5312)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !46, line: 70, flags: DIFlagFwdDecl)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !51, file: !46, line: 825, baseType: !320, size: 2048, align: 512, offset: 5632)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !46, line: 509, size: 2048, align: 512, elements: !321)
!321 = !{!322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !320, file: !46, line: 511, baseType: !129, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !320, file: !46, line: 512, baseType: !129, size: 64, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !320, file: !46, line: 513, baseType: !129, size: 64, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !320, file: !46, line: 514, baseType: !129, size: 64, offset: 192)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !320, file: !46, line: 515, baseType: !129, size: 64, offset: 256)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !320, file: !46, line: 516, baseType: !129, size: 64, offset: 320)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !320, file: !46, line: 518, baseType: !129, size: 64, offset: 384)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !320, file: !46, line: 519, baseType: !129, size: 64, offset: 448)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !320, file: !46, line: 520, baseType: !145, size: 64, offset: 512)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !320, file: !46, line: 522, baseType: !129, size: 64, offset: 576)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !320, file: !46, line: 523, baseType: !129, size: 64, offset: 640)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !320, file: !46, line: 524, baseType: !145, size: 64, offset: 704)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !320, file: !46, line: 526, baseType: !145, size: 64, offset: 768)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !320, file: !46, line: 527, baseType: !129, size: 64, offset: 832)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !320, file: !46, line: 529, baseType: !129, size: 64, offset: 896)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !320, file: !46, line: 530, baseType: !129, size: 64, offset: 960)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !320, file: !46, line: 531, baseType: !129, size: 64, offset: 1024)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !320, file: !46, line: 532, baseType: !129, size: 64, offset: 1088)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !320, file: !46, line: 533, baseType: !129, size: 64, offset: 1152)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !320, file: !46, line: 535, baseType: !129, size: 64, offset: 1216)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !320, file: !46, line: 536, baseType: !129, size: 64, offset: 1280)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !320, file: !46, line: 537, baseType: !129, size: 64, offset: 1344)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !320, file: !46, line: 538, baseType: !129, size: 64, offset: 1408)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !320, file: !46, line: 539, baseType: !129, size: 64, offset: 1472)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !320, file: !46, line: 540, baseType: !129, size: 64, offset: 1536)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !320, file: !46, line: 541, baseType: !129, size: 64, offset: 1600)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !320, file: !46, line: 542, baseType: !129, size: 64, offset: 1664)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !320, file: !46, line: 543, baseType: !129, size: 64, offset: 1728)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !51, file: !46, line: 833, baseType: !7, size: 32, offset: 7680)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !51, file: !46, line: 836, baseType: !7, size: 32, offset: 7712)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !51, file: !46, line: 837, baseType: !78, size: 32, offset: 7744)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !51, file: !46, line: 838, baseType: !354, size: 64, offset: 7808)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !356)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !357, line: 19, baseType: !358)
!357 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !357, line: 19, size: 64, elements: !359)
!359 = !{!360}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !358, file: !357, line: 19, baseType: !361, size: 64)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 64, elements: !362)
!362 = !{!363}
!363 = !DISubrange(count: 1)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !51, file: !46, line: 839, baseType: !365, size: 64, offset: 7872)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !51, file: !46, line: 840, baseType: !356, size: 64, offset: 7936)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !51, file: !46, line: 841, baseType: !43, size: 64, offset: 8000)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !51, file: !46, line: 843, baseType: !100, size: 16, offset: 8064)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !51, file: !46, line: 845, baseType: !100, size: 16, offset: 8080)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !51, file: !46, line: 848, baseType: !78, size: 32, offset: 8096)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !51, file: !46, line: 849, baseType: !372, size: 32, offset: 8128)
!372 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !46, line: 718, size: 32, elements: !373)
!373 = !{!374, !381}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !372, file: !46, line: 724, baseType: !375, size: 32)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !372, file: !46, line: 719, size: 32, elements: !376)
!376 = !{!377, !378, !379, !380}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !375, file: !46, line: 720, baseType: !244, size: 8)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !375, file: !46, line: 721, baseType: !244, size: 8, offset: 8)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !375, file: !46, line: 722, baseType: !244, size: 8, offset: 16)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !375, file: !46, line: 723, baseType: !244, size: 8, offset: 24)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !372, file: !46, line: 725, baseType: !61, size: 32)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !51, file: !46, line: 850, baseType: !134, size: 128, offset: 8192)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !51, file: !46, line: 851, baseType: !384, size: 64, offset: 8320)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !46, line: 60, flags: DIFlagFwdDecl)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !51, file: !46, line: 855, baseType: !58, size: 64, offset: 8384)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !51, file: !46, line: 856, baseType: !244, size: 8, offset: 8448)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !51, file: !46, line: 857, baseType: !244, size: 8, offset: 8456)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !51, file: !46, line: 858, baseType: !78, size: 32, offset: 8480)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !51, file: !46, line: 859, baseType: !134, size: 128, offset: 8512)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !51, file: !46, line: 860, baseType: !78, size: 32, offset: 8640)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !51, file: !46, line: 861, baseType: !134, size: 128, offset: 8704)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !51, file: !46, line: 873, baseType: !394, size: 256, offset: 8832)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !46, line: 376, size: 256, elements: !395)
!395 = !{!396, !397, !398, !399}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !394, file: !46, line: 381, baseType: !58, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !394, file: !46, line: 384, baseType: !131, size: 64, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !394, file: !46, line: 389, baseType: !131, size: 64, offset: 128)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !394, file: !46, line: 392, baseType: !131, size: 64, offset: 192)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !51, file: !46, line: 875, baseType: !134, size: 128, offset: 9088)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !51, file: !46, line: 877, baseType: !402, size: 320, offset: 9216)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !403, line: 86, size: 320, elements: !404)
!403 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!404 = !{!405, !406, !407}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !402, file: !403, line: 87, baseType: !78, size: 32)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !402, file: !403, line: 88, baseType: !134, size: 128, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !402, file: !403, line: 89, baseType: !134, size: 128, offset: 192)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !51, file: !46, line: 878, baseType: !121, size: 192, align: 64, offset: 9536)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !51, file: !46, line: 881, baseType: !410, size: 64, offset: 9728)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !412, line: 733, size: 10240, elements: !413)
!412 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!413 = !{!414, !629}
!414 = !DIDerivedType(tag: DW_TAG_member, scope: !411, file: !412, line: 734, baseType: !415, size: 10240)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !411, file: !412, line: 734, size: 10240, elements: !416)
!416 = !{!417, !421, !443, !450, !451, !452, !453, !454, !455, !463, !464, !465, !471, !472, !479, !480, !481, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !522, !536, !539, !595, !596, !597, !600, !604, !605, !608, !609, !610, !616, !617}
!417 = !DIDerivedType(tag: DW_TAG_member, scope: !415, file: !412, line: 739, baseType: !418, size: 512, align: 512)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !415, file: !412, line: 739, size: 512, align: 512, elements: !419)
!419 = !{!420}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !418, file: !412, line: 747, baseType: !73, size: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !415, file: !412, line: 750, baseType: !422, size: 128, offset: 512)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !423, line: 218, size: 128, elements: !424)
!423 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!424 = !{!425, !441, !442}
!425 = !DIDerivedType(tag: DW_TAG_member, scope: !422, file: !423, line: 219, baseType: !426, size: 32)
!426 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !422, file: !423, line: 219, size: 32, elements: !427)
!427 = !{!428, !437}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !426, file: !423, line: 220, baseType: !429, size: 32)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !430, line: 29, baseType: !431)
!430 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !430, line: 17, size: 32, elements: !432)
!432 = !{!433}
!433 = !DIDerivedType(tag: DW_TAG_member, scope: !431, file: !430, line: 18, baseType: !434, size: 32)
!434 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !431, file: !430, line: 18, size: 32, elements: !435)
!435 = !{!436}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !434, file: !430, line: 19, baseType: !229, size: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !426, file: !423, line: 221, baseType: !438)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !423, line: 197, baseType: !439)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !423, line: 197, elements: !440)
!440 = !{}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !422, file: !423, line: 223, baseType: !7, size: 32, offset: 32)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !422, file: !423, line: 224, baseType: !43, size: 64, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !415, file: !412, line: 752, baseType: !444, size: 64, offset: 640)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{!58, !447, !58, !58, !58, !58}
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !449, line: 537, flags: DIFlagFwdDecl)
!449 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!450 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !415, file: !412, line: 756, baseType: !58, size: 64, offset: 704)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !415, file: !412, line: 757, baseType: !58, size: 64, offset: 768)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !415, file: !412, line: 760, baseType: !58, size: 64, offset: 832)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !415, file: !412, line: 761, baseType: !58, size: 64, offset: 896)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !415, file: !412, line: 763, baseType: !58, size: 64, offset: 960)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !415, file: !412, line: 764, baseType: !456, size: 64, offset: 1024)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !449, line: 299, baseType: !458)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !449, line: 299, size: 64, elements: !459)
!459 = !{!460}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !458, file: !449, line: 299, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !462, line: 18, baseType: !58)
!462 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!463 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !415, file: !412, line: 773, baseType: !73, size: 32, offset: 1088)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !415, file: !412, line: 785, baseType: !73, size: 32, offset: 1120)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !415, file: !412, line: 795, baseType: !466, size: 64, offset: 1152)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !412, line: 726, size: 128, elements: !468)
!468 = !{!469, !470}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !467, file: !412, line: 727, baseType: !129, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !467, file: !412, line: 728, baseType: !78, size: 32, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !415, file: !412, line: 801, baseType: !58, size: 64, offset: 1216)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !415, file: !412, line: 804, baseType: !473, size: 64, offset: 1280)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !474, line: 13, baseType: !475)
!474 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !74, line: 181, baseType: !476)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !74, line: 179, size: 64, elements: !477)
!477 = !{!478}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !476, file: !74, line: 180, baseType: !145, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !415, file: !412, line: 806, baseType: !78, size: 32, offset: 1344)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !415, file: !412, line: 808, baseType: !429, size: 32, offset: 1376)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !415, file: !412, line: 823, baseType: !482, size: 320, offset: 1408)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !483, line: 48, size: 320, elements: !484)
!483 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!484 = !{!485, !486, !487, !492, !493}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !482, file: !483, line: 49, baseType: !473, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !482, file: !483, line: 55, baseType: !473, size: 64, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !482, file: !483, line: 57, baseType: !488, size: 32, offset: 128)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !489, line: 15, size: 32, elements: !490)
!489 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!490 = !{!491}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !488, file: !489, line: 20, baseType: !73, size: 32)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !482, file: !483, line: 59, baseType: !227, size: 32, offset: 160)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !482, file: !483, line: 60, baseType: !134, size: 128, offset: 192)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !415, file: !412, line: 825, baseType: !134, size: 128, offset: 1728)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !415, file: !412, line: 845, baseType: !78, size: 32, offset: 1856)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !415, file: !412, line: 849, baseType: !58, size: 64, offset: 1920)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !415, file: !412, line: 850, baseType: !58, size: 64, offset: 1984)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !415, file: !412, line: 852, baseType: !58, size: 64, offset: 2048)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !415, file: !412, line: 853, baseType: !58, size: 64, offset: 2112)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !415, file: !412, line: 854, baseType: !475, size: 64, offset: 2176)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !415, file: !412, line: 855, baseType: !58, size: 64, offset: 2240)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !415, file: !412, line: 856, baseType: !58, size: 64, offset: 2304)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !415, file: !412, line: 857, baseType: !58, size: 64, offset: 2368)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !415, file: !412, line: 858, baseType: !58, size: 64, offset: 2432)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !415, file: !412, line: 865, baseType: !284, size: 32, offset: 2496)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !415, file: !412, line: 867, baseType: !429, size: 32, offset: 2528)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !415, file: !412, line: 869, baseType: !58, size: 64, offset: 2560)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !415, file: !412, line: 869, baseType: !58, size: 64, offset: 2624)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !415, file: !412, line: 869, baseType: !58, size: 64, offset: 2688)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !415, file: !412, line: 869, baseType: !58, size: 64, offset: 2752)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !415, file: !412, line: 870, baseType: !58, size: 64, offset: 2816)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !415, file: !412, line: 870, baseType: !58, size: 64, offset: 2880)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !415, file: !412, line: 870, baseType: !58, size: 64, offset: 2944)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !415, file: !412, line: 871, baseType: !58, size: 64, offset: 3008)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !415, file: !412, line: 871, baseType: !58, size: 64, offset: 3072)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !415, file: !412, line: 871, baseType: !58, size: 64, offset: 3136)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !415, file: !412, line: 871, baseType: !58, size: 64, offset: 3200)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !415, file: !412, line: 873, baseType: !519, size: 3328, offset: 3264)
!519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 3328, elements: !520)
!520 = !{!521}
!521 = !DISubrange(count: 52)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !415, file: !412, line: 875, baseType: !523, size: 1280, offset: 6592)
!523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !524, size: 1280, elements: !534)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !525, line: 22, size: 320, elements: !526)
!525 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!526 = !{!527, !528, !529, !530}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !524, file: !525, line: 23, baseType: !227, size: 32)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !524, file: !525, line: 24, baseType: !145, size: 64, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !524, file: !525, line: 26, baseType: !134, size: 128, offset: 128)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !524, file: !525, line: 28, baseType: !531, size: 64, offset: 256)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !62, line: 20, baseType: !533)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !64, line: 26, baseType: !78)
!534 = !{!535}
!535 = !DISubrange(count: 4)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !415, file: !412, line: 877, baseType: !537, size: 64, offset: 7872)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !412, line: 877, flags: DIFlagFwdDecl)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !415, file: !412, line: 880, baseType: !540, size: 1088, offset: 7936)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !541, line: 72, baseType: !542)
!541 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !541, line: 23, size: 1088, elements: !543)
!543 = !{!544, !545, !546, !547, !548, !551, !552, !560, !561, !589, !590, !591}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !542, file: !541, line: 28, baseType: !129, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !542, file: !541, line: 38, baseType: !475, size: 64, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !542, file: !541, line: 40, baseType: !58, size: 64, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !542, file: !541, line: 43, baseType: !482, size: 320, offset: 192)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !542, file: !541, line: 44, baseType: !549, size: 64, offset: 512)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !541, line: 44, flags: DIFlagFwdDecl)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !542, file: !541, line: 48, baseType: !58, size: 64, offset: 576)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !542, file: !541, line: 59, baseType: !553, size: 256, offset: 640)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !554, line: 66, size: 256, elements: !555)
!554 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!555 = !{!556, !557, !558, !559}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !553, file: !554, line: 67, baseType: !473, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !553, file: !554, line: 68, baseType: !227, size: 32, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !553, file: !554, line: 70, baseType: !488, size: 32, offset: 96)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !553, file: !554, line: 72, baseType: !134, size: 128, offset: 128)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !542, file: !541, line: 60, baseType: !43, size: 64, offset: 896)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !542, file: !541, line: 61, baseType: !562, size: 64, offset: 960)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !564)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !565, line: 13, size: 1216, elements: !566)
!565 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!566 = !{!567, !568, !569, !570, !571, !572, !573, !576, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !564, file: !565, line: 14, baseType: !43, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !564, file: !565, line: 15, baseType: !58, size: 64, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !564, file: !565, line: 17, baseType: !58, size: 64, offset: 128)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !564, file: !565, line: 17, baseType: !58, size: 64, offset: 192)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !564, file: !565, line: 18, baseType: !58, size: 64, offset: 256)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !564, file: !565, line: 18, baseType: !58, size: 64, offset: 320)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !564, file: !565, line: 19, baseType: !574, size: 64, offset: 384)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !564, file: !565, line: 21, baseType: !577, size: 64, offset: 448)
!577 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !564, file: !565, line: 23, baseType: !577, size: 64, offset: 512)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !564, file: !565, line: 24, baseType: !577, size: 64, offset: 576)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !564, file: !565, line: 25, baseType: !577, size: 64, offset: 640)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !564, file: !565, line: 26, baseType: !577, size: 64, offset: 704)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !564, file: !565, line: 27, baseType: !577, size: 64, offset: 768)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !564, file: !565, line: 28, baseType: !577, size: 64, offset: 832)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !564, file: !565, line: 29, baseType: !577, size: 64, offset: 896)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !564, file: !565, line: 30, baseType: !577, size: 64, offset: 960)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !564, file: !565, line: 31, baseType: !577, size: 64, offset: 1024)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !564, file: !565, line: 32, baseType: !577, size: 64, offset: 1088)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !564, file: !565, line: 33, baseType: !577, size: 64, offset: 1152)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !542, file: !541, line: 63, baseType: !73, size: 32, offset: 1024)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !542, file: !541, line: 69, baseType: !98, size: 16, offset: 1056)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !542, file: !541, line: 70, baseType: !592, size: 16, offset: 1072)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !62, line: 18, baseType: !593)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !64, line: 23, baseType: !594)
!594 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !415, file: !412, line: 882, baseType: !58, size: 64, offset: 9024)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !415, file: !412, line: 885, baseType: !429, size: 32, offset: 9088)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !415, file: !412, line: 886, baseType: !598, size: 64, offset: 9152)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !412, line: 732, flags: DIFlagFwdDecl)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !415, file: !412, line: 901, baseType: !601, size: 64, offset: 9216)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !603, line: 18, flags: DIFlagFwdDecl)
!603 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!604 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !415, file: !412, line: 904, baseType: !447, size: 64, offset: 9280)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !415, file: !412, line: 906, baseType: !606, size: 64, offset: 9344)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !412, line: 906, flags: DIFlagFwdDecl)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !415, file: !412, line: 930, baseType: !73, size: 32, offset: 9408)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !415, file: !412, line: 933, baseType: !73, size: 32, offset: 9440)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !415, file: !412, line: 935, baseType: !611, size: 64, offset: 9472)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !18, line: 103, size: 64, elements: !612)
!612 = !{!613}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !611, file: !18, line: 104, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !18, line: 101, flags: DIFlagFwdDecl)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !415, file: !412, line: 940, baseType: !473, size: 64, offset: 9536)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !415, file: !412, line: 942, baseType: !618, size: 256, offset: 9600)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !619, line: 98, size: 256, elements: !620)
!619 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!620 = !{!621, !622, !623}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !618, file: !619, line: 99, baseType: !473, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !618, file: !619, line: 100, baseType: !134, size: 128, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !618, file: !619, line: 101, baseType: !624, size: 64, offset: 192)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !619, line: 21, baseType: !625)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{null, !628}
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !411, file: !412, line: 986, baseType: !630, offset: 10240)
!630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, elements: !631)
!631 = !{!632}
!632 = !DISubrange(count: -1)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !51, file: !46, line: 882, baseType: !410, size: 64, offset: 9792)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !51, file: !46, line: 884, baseType: !78, size: 32, offset: 9856)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !51, file: !46, line: 885, baseType: !78, size: 32, offset: 9888)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !51, file: !46, line: 886, baseType: !78, size: 32, offset: 9920)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !51, file: !46, line: 888, baseType: !78, size: 32, offset: 9952)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !51, file: !46, line: 890, baseType: !58, size: 64, offset: 9984)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !51, file: !46, line: 893, baseType: !7, size: 32, offset: 10048)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !51, file: !46, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !51, file: !46, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !51, file: !46, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !51, file: !46, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !51, file: !46, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !51, file: !46, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !51, file: !46, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !51, file: !46, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !51, file: !46, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !51, file: !46, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !51, file: !46, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !51, file: !46, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !51, file: !46, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !51, file: !46, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !51, file: !46, line: 969, baseType: !58, size: 64, offset: 10176)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !51, file: !46, line: 971, baseType: !656, size: 448, offset: 10240)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 448, elements: !657)
!657 = !{!658, !659, !664}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !656, file: !12, line: 26, baseType: !58, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !656, file: !12, line: 27, baseType: !660, size: 64, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DISubroutineType(types: !662)
!662 = !{!577, !663}
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, scope: !656, file: !12, line: 28, baseType: !665, size: 320, offset: 128)
!665 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !656, file: !12, line: 28, size: 320, elements: !666)
!666 = !{!667, !677, !702}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !665, file: !12, line: 37, baseType: !668, size: 320)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !665, file: !12, line: 30, size: 320, elements: !669)
!669 = !{!670, !672, !673, !674, !675, !676}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !668, file: !12, line: 31, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !668, file: !12, line: 32, baseType: !61, size: 32, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !668, file: !12, line: 33, baseType: !61, size: 32, offset: 96)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !668, file: !12, line: 34, baseType: !61, size: 32, offset: 128)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !668, file: !12, line: 35, baseType: !129, size: 64, offset: 192)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !668, file: !12, line: 36, baseType: !671, size: 64, offset: 256)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !665, file: !12, line: 47, baseType: !678, size: 192)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !665, file: !12, line: 39, size: 192, elements: !679)
!679 = !{!680, !681, !682, !701}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !678, file: !12, line: 40, baseType: !275, size: 32)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !678, file: !12, line: 41, baseType: !11, size: 32, offset: 32)
!682 = !DIDerivedType(tag: DW_TAG_member, scope: !678, file: !12, line: 42, baseType: !683, size: 64, offset: 64)
!683 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !678, file: !12, line: 42, size: 64, elements: !684)
!684 = !{!685, !693}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !683, file: !12, line: 43, baseType: !686, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !688, line: 7, size: 128, elements: !689)
!688 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!689 = !{!690, !692}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !687, file: !688, line: 8, baseType: !691, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !277, line: 93, baseType: !147)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !687, file: !688, line: 9, baseType: !147, size: 64, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !683, file: !12, line: 44, baseType: !694, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !696, line: 7, size: 64, elements: !697)
!696 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!697 = !{!698, !700}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !695, file: !696, line: 8, baseType: !699, size: 32)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !696, line: 5, baseType: !532)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !695, file: !696, line: 9, baseType: !532, size: 32, offset: 32)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !678, file: !12, line: 46, baseType: !129, size: 64, offset: 128)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !665, file: !12, line: 55, baseType: !703, size: 256)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !665, file: !12, line: 49, size: 256, elements: !704)
!704 = !{!705, !708, !709, !710, !711}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !703, file: !12, line: 50, baseType: !706, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !703, file: !12, line: 51, baseType: !78, size: 32, offset: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !703, file: !12, line: 52, baseType: !78, size: 32, offset: 96)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !703, file: !12, line: 53, baseType: !58, size: 64, offset: 128)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !703, file: !12, line: 54, baseType: !58, size: 64, offset: 192)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !51, file: !46, line: 973, baseType: !713, size: 32, offset: 10688)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !74, line: 27, baseType: !714)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !277, line: 28, baseType: !78)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !51, file: !46, line: 974, baseType: !713, size: 32, offset: 10720)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !51, file: !46, line: 978, baseType: !58, size: 64, offset: 10752)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !51, file: !46, line: 987, baseType: !50, size: 64, offset: 10816)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !51, file: !46, line: 990, baseType: !50, size: 64, offset: 10880)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !51, file: !46, line: 995, baseType: !134, size: 128, offset: 10944)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !51, file: !46, line: 996, baseType: !134, size: 128, offset: 11072)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !51, file: !46, line: 997, baseType: !50, size: 64, offset: 11200)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !51, file: !46, line: 1005, baseType: !134, size: 128, offset: 11264)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !51, file: !46, line: 1006, baseType: !134, size: 128, offset: 11392)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !51, file: !46, line: 1009, baseType: !725, size: 64, offset: 11520)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !727, line: 59, size: 768, elements: !728)
!727 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!728 = !{!729, !730, !731, !732, !743, !744, !751, !760}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !726, file: !727, line: 61, baseType: !69, size: 32)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !726, file: !727, line: 62, baseType: !7, size: 32, offset: 32)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !726, file: !727, line: 63, baseType: !429, size: 32, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !726, file: !727, line: 65, baseType: !733, size: 256, offset: 128)
!733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !734, size: 256, elements: !534)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !74, line: 194, size: 64, elements: !735)
!735 = !{!736}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !734, file: !74, line: 195, baseType: !737, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !74, line: 198, size: 128, elements: !739)
!739 = !{!740, !741}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !738, file: !74, line: 199, baseType: !737, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !738, file: !74, line: 199, baseType: !742, size: 64, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !726, file: !727, line: 66, baseType: !734, size: 64, offset: 384)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !726, file: !727, line: 68, baseType: !745, size: 192, offset: 448)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !746, line: 41, baseType: !747)
!746 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !746, line: 37, size: 192, elements: !748)
!748 = !{!749, !750}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !747, file: !746, line: 38, baseType: !429, size: 32)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !747, file: !746, line: 39, baseType: !134, size: 128, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !726, file: !727, line: 69, baseType: !752, size: 128, align: 64, offset: 640)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !74, line: 232, size: 128, align: 64, elements: !753)
!753 = !{!754, !756}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !752, file: !74, line: 233, baseType: !755, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !752, file: !74, line: 234, baseType: !757, size: 64, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{null, !755}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !726, file: !727, line: 70, baseType: !761, offset: 768)
!761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !762, elements: !631)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !727, line: 54, size: 128, elements: !763)
!763 = !{!764, !765}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !762, file: !727, line: 55, baseType: !78, size: 32)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !762, file: !727, line: 56, baseType: !766, size: 64, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !727, line: 56, flags: DIFlagFwdDecl)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !51, file: !46, line: 1010, baseType: !769, size: 512, offset: 11584)
!769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !738, size: 512, elements: !534)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !51, file: !46, line: 1011, baseType: !134, size: 128, offset: 12096)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !51, file: !46, line: 1012, baseType: !134, size: 128, offset: 12224)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !51, file: !46, line: 1014, baseType: !773, size: 64, offset: 12352)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !775, line: 26, size: 256, elements: !776)
!775 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!776 = !{!777, !778}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !774, file: !775, line: 27, baseType: !7, size: 32)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !774, file: !775, line: 28, baseType: !779, size: 192, offset: 64)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !780, line: 43, size: 192, elements: !781)
!780 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!781 = !{!782, !783}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !779, file: !780, line: 44, baseType: !227, size: 32)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !779, file: !780, line: 45, baseType: !134, size: 128, offset: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !51, file: !46, line: 1017, baseType: !785, size: 64, offset: 12416)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !51, file: !46, line: 1020, baseType: !785, size: 64, offset: 12480)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !51, file: !46, line: 1023, baseType: !43, size: 64, offset: 12544)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !51, file: !46, line: 1025, baseType: !129, size: 64, offset: 12608)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !51, file: !46, line: 1026, baseType: !129, size: 64, offset: 12672)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !51, file: !46, line: 1031, baseType: !129, size: 64, offset: 12736)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !51, file: !46, line: 1032, baseType: !792, size: 192, offset: 12800)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !46, line: 324, size: 192, elements: !793)
!793 = !{!794, !795, !796}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !792, file: !46, line: 326, baseType: !129, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !792, file: !46, line: 327, baseType: !129, size: 64, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !792, file: !46, line: 328, baseType: !227, size: 32, offset: 128)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !51, file: !46, line: 1041, baseType: !58, size: 64, offset: 12992)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !51, file: !46, line: 1042, baseType: !58, size: 64, offset: 13056)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !51, file: !46, line: 1045, baseType: !129, size: 64, offset: 13120)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !51, file: !46, line: 1048, baseType: !129, size: 64, offset: 13184)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !51, file: !46, line: 1051, baseType: !58, size: 64, offset: 13248)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !51, file: !46, line: 1052, baseType: !58, size: 64, offset: 13312)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !51, file: !46, line: 1055, baseType: !804, size: 640, offset: 13376)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !805, line: 132, size: 640, elements: !806)
!805 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!806 = !{!807, !815, !816}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !804, file: !805, line: 133, baseType: !808, size: 576)
!808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !809, size: 576, elements: !813)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !805, line: 117, size: 192, elements: !810)
!810 = !{!811, !812}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !809, file: !805, line: 118, baseType: !129, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !809, file: !805, line: 119, baseType: !290, size: 128, offset: 64)
!813 = !{!814}
!814 = !DISubrange(count: 3)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !804, file: !805, line: 134, baseType: !7, size: 32, offset: 576)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !804, file: !805, line: 135, baseType: !7, size: 32, offset: 608)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !51, file: !46, line: 1058, baseType: !818, size: 448, offset: 14016)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !805, line: 144, size: 448, elements: !819)
!819 = !{!820, !821, !822}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !818, file: !805, line: 145, baseType: !752, size: 128, align: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !818, file: !805, line: 146, baseType: !553, size: 256, offset: 128)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !818, file: !805, line: 147, baseType: !7, size: 32, offset: 384)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !51, file: !46, line: 1064, baseType: !824, size: 64, offset: 14464)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !826)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !827, line: 110, size: 1472, elements: !828)
!827 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!828 = !{!829, !830, !837, !844, !845, !846, !847, !848, !849, !850, !851, !857, !858, !859, !860, !861, !862, !978, !979, !980, !981, !982, !1005, !1006, !1010, !1018}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !826, file: !827, line: 111, baseType: !473, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !826, file: !827, line: 112, baseType: !831, size: 32, offset: 64)
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !603, line: 23, baseType: !832)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !603, line: 21, size: 32, elements: !833)
!833 = !{!834}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !832, file: !603, line: 22, baseType: !835, size: 32)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !74, line: 37, baseType: !836)
!836 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !277, line: 49, baseType: !7)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !826, file: !827, line: 113, baseType: !838, size: 32, offset: 96)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !603, line: 28, baseType: !839)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !603, line: 26, size: 32, elements: !840)
!840 = !{!841}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !839, file: !603, line: 27, baseType: !842, size: 32)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !74, line: 38, baseType: !843)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !277, line: 50, baseType: !7)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !826, file: !827, line: 114, baseType: !831, size: 32, offset: 128)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !826, file: !827, line: 115, baseType: !838, size: 32, offset: 160)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !826, file: !827, line: 116, baseType: !831, size: 32, offset: 192)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !826, file: !827, line: 117, baseType: !838, size: 32, offset: 224)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !826, file: !827, line: 118, baseType: !831, size: 32, offset: 256)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !826, file: !827, line: 119, baseType: !838, size: 32, offset: 288)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !826, file: !827, line: 120, baseType: !7, size: 32, offset: 320)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !826, file: !827, line: 121, baseType: !852, size: 64, offset: 384)
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !853, line: 24, baseType: !854)
!853 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !853, line: 24, size: 64, elements: !855)
!855 = !{!856}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !854, file: !853, line: 24, baseType: !129, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !826, file: !827, line: 122, baseType: !852, size: 64, offset: 448)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !826, file: !827, line: 123, baseType: !852, size: 64, offset: 512)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !826, file: !827, line: 124, baseType: !852, size: 64, offset: 576)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !826, file: !827, line: 125, baseType: !852, size: 64, offset: 640)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !826, file: !827, line: 127, baseType: !246, size: 8, offset: 704)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !826, file: !827, line: 129, baseType: !863, size: 64, offset: 768)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !865, line: 195, size: 1728, elements: !866)
!865 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!866 = !{!867, !868, !871, !876, !877, !880, !881, !888, !889, !890, !891, !894, !895, !896, !897, !898, !942, !963}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !864, file: !865, line: 196, baseType: !69, size: 32)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !864, file: !865, line: 197, baseType: !869, size: 32, offset: 32)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !865, line: 28, baseType: !870)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !74, line: 104, baseType: !532)
!871 = !DIDerivedType(tag: DW_TAG_member, scope: !864, file: !865, line: 198, baseType: !872, size: 192, offset: 64)
!872 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !864, file: !865, line: 198, size: 192, elements: !873)
!873 = !{!874, !875}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !872, file: !865, line: 199, baseType: !134, size: 128)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !872, file: !865, line: 200, baseType: !121, size: 192, align: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !864, file: !865, line: 205, baseType: !482, size: 320, offset: 256)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !864, file: !865, line: 206, baseType: !878, size: 64, offset: 576)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !865, line: 206, flags: DIFlagFwdDecl)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !864, file: !865, line: 207, baseType: !43, size: 64, offset: 640)
!881 = !DIDerivedType(tag: DW_TAG_member, scope: !864, file: !865, line: 208, baseType: !882, size: 64, offset: 704)
!882 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !864, file: !865, line: 208, size: 64, elements: !883)
!883 = !{!884, !887}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !882, file: !865, line: 209, baseType: !885, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !886, line: 8, baseType: !146)
!886 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!887 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !882, file: !865, line: 210, baseType: !885, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !864, file: !865, line: 212, baseType: !885, size: 64, offset: 768)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !864, file: !865, line: 213, baseType: !831, size: 32, offset: 832)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !864, file: !865, line: 214, baseType: !838, size: 32, offset: 864)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !864, file: !865, line: 215, baseType: !892, size: 32, offset: 896)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !865, line: 31, baseType: !893)
!893 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !74, line: 110, baseType: !61)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !864, file: !865, line: 216, baseType: !100, size: 16, offset: 928)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !864, file: !865, line: 217, baseType: !100, size: 16, offset: 944)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !864, file: !865, line: 221, baseType: !594, size: 16, offset: 960)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !864, file: !865, line: 228, baseType: !58, size: 64, offset: 1024)
!898 = !DIDerivedType(tag: DW_TAG_member, scope: !864, file: !865, line: 245, baseType: !899, size: 320, offset: 1088)
!899 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !864, file: !865, line: 245, size: 320, elements: !900)
!900 = !{!901, !933}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !899, file: !865, line: 246, baseType: !902, size: 320)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !865, line: 114, size: 320, elements: !903)
!903 = !{!904, !905, !918, !921, !930}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !902, file: !865, line: 116, baseType: !58, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, scope: !902, file: !865, line: 117, baseType: !906, size: 64, offset: 64)
!906 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !902, file: !865, line: 117, size: 64, elements: !907)
!907 = !{!908, !917}
!908 = !DIDerivedType(tag: DW_TAG_member, scope: !906, file: !865, line: 118, baseType: !909, size: 64)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !906, file: !865, line: 118, size: 64, elements: !910)
!910 = !{!911, !912}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !909, file: !865, line: 120, baseType: !98, size: 16)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !909, file: !865, line: 121, baseType: !913, size: 48, offset: 16)
!913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !914, size: 48, elements: !915)
!914 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!915 = !{!916}
!916 = !DISubrange(count: 6)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !906, file: !865, line: 127, baseType: !58, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !902, file: !865, line: 129, baseType: !919, size: 64, offset: 128)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !865, line: 102, flags: DIFlagFwdDecl)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !902, file: !865, line: 130, baseType: !922, size: 64, offset: 192)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !865, line: 108, size: 192, elements: !924)
!924 = !{!925, !926, !927}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !923, file: !865, line: 109, baseType: !752, size: 128, align: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !923, file: !865, line: 110, baseType: !69, size: 32, offset: 128)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !923, file: !865, line: 111, baseType: !928, size: 8, offset: 160)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !74, line: 35, baseType: !929)
!929 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !902, file: !865, line: 131, baseType: !931, size: 64, offset: 256)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !914)
!933 = !DIDerivedType(tag: DW_TAG_member, scope: !899, file: !865, line: 247, baseType: !934, size: 320)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !899, file: !865, line: 247, size: 320, elements: !935)
!935 = !{!936, !937, !938, !939, !940}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !934, file: !865, line: 248, baseType: !58, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !934, file: !865, line: 249, baseType: !58, size: 64, offset: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !934, file: !865, line: 250, baseType: !919, size: 64, offset: 128)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !934, file: !865, line: 251, baseType: !922, size: 64, offset: 192)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !934, file: !865, line: 252, baseType: !941, size: 64, offset: 256)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, scope: !864, file: !865, line: 260, baseType: !943, size: 256, offset: 1408)
!943 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !864, file: !865, line: 260, size: 256, elements: !944)
!944 = !{!945, !951}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !943, file: !865, line: 261, baseType: !946, size: 256)
!946 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !865, line: 134, size: 256, elements: !947)
!947 = !{!948, !949}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !946, file: !865, line: 135, baseType: !43, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !946, file: !865, line: 136, baseType: !950, size: 256)
!950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 256, elements: !534)
!951 = !DIDerivedType(tag: DW_TAG_member, scope: !943, file: !865, line: 262, baseType: !952, size: 256)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !943, file: !865, line: 262, size: 256, elements: !953)
!953 = !{!954, !955}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !952, file: !865, line: 264, baseType: !134, size: 128)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !952, file: !865, line: 265, baseType: !956, size: 128, offset: 128)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !957, line: 22, size: 128, elements: !958)
!957 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!958 = !{!959, !962}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !956, file: !957, line: 23, baseType: !960, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !957, line: 23, flags: DIFlagFwdDecl)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !956, file: !957, line: 24, baseType: !58, size: 64, offset: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !864, file: !865, line: 280, baseType: !964, size: 64, offset: 1664)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !865, line: 176, size: 192, elements: !966)
!966 = !{!967, !976, !977}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !965, file: !865, line: 177, baseType: !968, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !865, line: 171, baseType: !969)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DISubroutineType(types: !971)
!971 = !{!78, !863, !972, !974, !863}
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !920)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !946)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !965, file: !865, line: 178, baseType: !863, size: 64, offset: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !965, file: !865, line: 179, baseType: !919, size: 64, offset: 128)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !826, file: !827, line: 130, baseType: !863, size: 64, offset: 832)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !826, file: !827, line: 131, baseType: !863, size: 64, offset: 896)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !826, file: !827, line: 132, baseType: !863, size: 64, offset: 960)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !826, file: !827, line: 135, baseType: !43, size: 64, offset: 1024)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !826, file: !827, line: 137, baseType: !983, size: 64, offset: 1088)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !985, line: 14, size: 1088, elements: !986)
!985 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!986 = !{!987, !988, !989, !990, !991, !992, !993, !994}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !984, file: !985, line: 15, baseType: !69, size: 32)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !984, file: !985, line: 17, baseType: !524, size: 320, offset: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !984, file: !985, line: 19, baseType: !58, size: 64, offset: 384)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !984, file: !985, line: 20, baseType: !473, size: 64, offset: 448)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !984, file: !985, line: 23, baseType: !738, size: 128, offset: 512)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !984, file: !985, line: 24, baseType: !831, size: 32, offset: 640)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !984, file: !985, line: 29, baseType: !473, size: 64, offset: 704)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !984, file: !985, line: 36, baseType: !995, size: 320, offset: 768)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !996, line: 15, size: 320, elements: !997)
!996 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!997 = !{!998, !999, !1000, !1001, !1002, !1003, !1004}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !995, file: !996, line: 16, baseType: !227, size: 32)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !995, file: !996, line: 18, baseType: !78, size: 32, offset: 32)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !995, file: !996, line: 19, baseType: !78, size: 32, offset: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !995, file: !996, line: 20, baseType: !78, size: 32, offset: 96)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !995, file: !996, line: 21, baseType: !78, size: 32, offset: 128)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !995, file: !996, line: 22, baseType: !58, size: 64, offset: 192)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !995, file: !996, line: 23, baseType: !58, size: 64, offset: 256)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !826, file: !827, line: 138, baseType: !601, size: 64, offset: 1152)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !826, file: !827, line: 139, baseType: !1007, size: 64, offset: 1216)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1009, line: 16, flags: DIFlagFwdDecl)
!1009 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !826, file: !827, line: 140, baseType: !1011, size: 64, offset: 1280)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !827, line: 25, size: 64, elements: !1013)
!1013 = !{!1014, !1015, !1016}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1012, file: !827, line: 26, baseType: !73, size: 32)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1012, file: !827, line: 27, baseType: !78, size: 32, offset: 32)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1012, file: !827, line: 28, baseType: !1017, offset: 64)
!1017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !838, elements: !631)
!1018 = !DIDerivedType(tag: DW_TAG_member, scope: !826, file: !827, line: 142, baseType: !1019, size: 128, offset: 1344)
!1019 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !826, file: !827, line: 142, size: 128, elements: !1020)
!1020 = !{!1021, !1022}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1019, file: !827, line: 143, baseType: !78, size: 32)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1019, file: !827, line: 144, baseType: !752, size: 128, align: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !51, file: !46, line: 1067, baseType: !824, size: 64, offset: 14528)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !51, file: !46, line: 1070, baseType: !824, size: 64, offset: 14592)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !51, file: !46, line: 1074, baseType: !863, size: 64, offset: 14656)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !51, file: !46, line: 1084, baseType: !1027, size: 128, offset: 14720)
!1027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !914, size: 128, elements: !1028)
!1028 = !{!1029}
!1029 = !DISubrange(count: 16)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !51, file: !46, line: 1086, baseType: !1031, size: 64, offset: 14848)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !46, line: 55, flags: DIFlagFwdDecl)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !51, file: !46, line: 1089, baseType: !1034, size: 64, offset: 14912)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1035, line: 12, size: 64, elements: !1036)
!1035 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1036 = !{!1037}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1034, file: !1035, line: 13, baseType: !1038, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1035, line: 8, flags: DIFlagFwdDecl)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !51, file: !46, line: 1090, baseType: !1041, size: 128, offset: 14976)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1042, line: 13, size: 128, elements: !1043)
!1042 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1043 = !{!1044}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1041, file: !1042, line: 14, baseType: !134, size: 128)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !51, file: !46, line: 1097, baseType: !1046, size: 64, offset: 15104)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !46, line: 50, flags: DIFlagFwdDecl)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !51, file: !46, line: 1100, baseType: !1049, size: 64, offset: 15168)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !46, line: 1100, flags: DIFlagFwdDecl)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !51, file: !46, line: 1103, baseType: !1052, size: 64, offset: 15232)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !46, line: 53, flags: DIFlagFwdDecl)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !51, file: !46, line: 1107, baseType: !1055, size: 64, offset: 15296)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !46, line: 56, flags: DIFlagFwdDecl)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !51, file: !46, line: 1110, baseType: !1058, size: 64, offset: 15360)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1060, line: 93, size: 8768, elements: !1061)
!1060 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!1061 = !{!1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1111, !1120, !1121, !1123, !1124, !1125, !1128, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1170, !1171, !1179, !1189, !1192, !1193, !1196, !1197, !1198, !1199, !1200, !1201}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1059, file: !1060, line: 94, baseType: !69, size: 32)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1059, file: !1060, line: 95, baseType: !73, size: 32, offset: 32)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1059, file: !1060, line: 96, baseType: !78, size: 32, offset: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !1059, file: !1060, line: 97, baseType: !78, size: 32, offset: 96)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1059, file: !1060, line: 98, baseType: !134, size: 128, offset: 128)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1059, file: !1060, line: 100, baseType: !745, size: 192, offset: 256)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1059, file: !1060, line: 103, baseType: !50, size: 64, offset: 448)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1059, file: !1060, line: 106, baseType: !1070, size: 192, offset: 512)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1009, line: 32, size: 192, elements: !1071)
!1071 = !{!1072, !1073}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1070, file: !1009, line: 33, baseType: !134, size: 128)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1070, file: !1009, line: 34, baseType: !1074, size: 64, offset: 128)
!1074 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1075, line: 25, baseType: !1076)
!1075 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1075, line: 23, size: 64, elements: !1077)
!1077 = !{!1078}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1076, file: !1075, line: 24, baseType: !361, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1059, file: !1060, line: 109, baseType: !734, size: 64, offset: 704)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1059, file: !1060, line: 112, baseType: !78, size: 32, offset: 768)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1059, file: !1060, line: 114, baseType: !78, size: 32, offset: 800)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !1059, file: !1060, line: 115, baseType: !50, size: 64, offset: 832)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1059, file: !1060, line: 118, baseType: !78, size: 32, offset: 896)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1059, file: !1060, line: 119, baseType: !7, size: 32, offset: 928)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1059, file: !1060, line: 121, baseType: !1086, size: 64, offset: 960)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1060, line: 80, size: 448, elements: !1088)
!1088 = !{!1089, !1090, !1096}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1087, file: !1060, line: 81, baseType: !73, size: 32)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1087, file: !1060, line: 82, baseType: !1091, size: 128, offset: 64)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1060, line: 75, size: 128, elements: !1092)
!1092 = !{!1093, !1094}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1091, file: !1060, line: 76, baseType: !50, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1091, file: !1060, line: 77, baseType: !1095, size: 64, offset: 64)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1087, file: !1060, line: 83, baseType: !774, size: 256, offset: 192)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1059, file: !1060, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1059, file: !1060, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !1059, file: !1060, line: 138, baseType: !7, size: 32, offset: 1056)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1059, file: !1060, line: 139, baseType: !134, size: 128, offset: 1088)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1059, file: !1060, line: 142, baseType: !202, size: 512, offset: 1216)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1059, file: !1060, line: 143, baseType: !210, size: 64, offset: 1728)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1059, file: !1060, line: 150, baseType: !1104, size: 256, offset: 1792)
!1104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1105, size: 256, elements: !1109)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1060, line: 38, size: 128, elements: !1106)
!1106 = !{!1107, !1108}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1105, file: !1060, line: 39, baseType: !129, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1105, file: !1060, line: 40, baseType: !129, size: 64, offset: 64)
!1109 = !{!1110}
!1110 = !DISubrange(count: 2)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1059, file: !1060, line: 156, baseType: !1112, size: 192, offset: 2048)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1060, line: 66, size: 192, elements: !1113)
!1113 = !{!1114}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1112, file: !1060, line: 67, baseType: !1115, size: 192)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1060, line: 47, size: 192, elements: !1116)
!1116 = !{!1117, !1118, !1119}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1115, file: !1060, line: 48, baseType: !475, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1115, file: !1060, line: 49, baseType: !475, size: 64, offset: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1115, file: !1060, line: 50, baseType: !475, size: 64, offset: 128)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1059, file: !1060, line: 160, baseType: !804, size: 640, offset: 2240)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1059, file: !1060, line: 163, baseType: !1122, size: 256, offset: 2880)
!1122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !725, size: 256, elements: !534)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1059, file: !1060, line: 169, baseType: !725, size: 64, offset: 3136)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1059, file: !1060, line: 172, baseType: !78, size: 32, offset: 3200)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1059, file: !1060, line: 174, baseType: !1126, size: 64, offset: 3264)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1060, line: 174, flags: DIFlagFwdDecl)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1059, file: !1060, line: 185, baseType: !1129, size: 64, offset: 3328)
!1129 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !280, line: 860, baseType: !1130)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !280, line: 853, size: 64, elements: !1131)
!1131 = !{!1132, !1137}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1130, file: !280, line: 858, baseType: !1133, size: 32)
!1133 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !280, line: 275, baseType: !1134)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !280, line: 275, size: 32, elements: !1135)
!1135 = !{!1136}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1134, file: !280, line: 275, baseType: !284, size: 32)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1130, file: !280, line: 859, baseType: !429, size: 32, offset: 32)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1059, file: !1060, line: 186, baseType: !129, size: 64, offset: 3392)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1059, file: !1060, line: 186, baseType: !129, size: 64, offset: 3456)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1059, file: !1060, line: 186, baseType: !129, size: 64, offset: 3520)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1059, file: !1060, line: 186, baseType: !129, size: 64, offset: 3584)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1059, file: !1060, line: 187, baseType: !129, size: 64, offset: 3648)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1059, file: !1060, line: 188, baseType: !129, size: 64, offset: 3712)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1059, file: !1060, line: 189, baseType: !792, size: 192, offset: 3776)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1059, file: !1060, line: 190, baseType: !58, size: 64, offset: 3968)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1059, file: !1060, line: 190, baseType: !58, size: 64, offset: 4032)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1059, file: !1060, line: 190, baseType: !58, size: 64, offset: 4096)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1059, file: !1060, line: 190, baseType: !58, size: 64, offset: 4160)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1059, file: !1060, line: 191, baseType: !58, size: 64, offset: 4224)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1059, file: !1060, line: 191, baseType: !58, size: 64, offset: 4288)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1059, file: !1060, line: 191, baseType: !58, size: 64, offset: 4352)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1059, file: !1060, line: 191, baseType: !58, size: 64, offset: 4416)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1059, file: !1060, line: 192, baseType: !58, size: 64, offset: 4480)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1059, file: !1060, line: 192, baseType: !58, size: 64, offset: 4544)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1059, file: !1060, line: 192, baseType: !58, size: 64, offset: 4608)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1059, file: !1060, line: 192, baseType: !58, size: 64, offset: 4672)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1059, file: !1060, line: 193, baseType: !58, size: 64, offset: 4736)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1059, file: !1060, line: 193, baseType: !58, size: 64, offset: 4800)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1059, file: !1060, line: 194, baseType: !1160, size: 448, offset: 4864)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1161, line: 12, size: 448, elements: !1162)
!1161 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1162 = !{!1163, !1164, !1165, !1166, !1167, !1168, !1169}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1160, file: !1161, line: 15, baseType: !129, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1160, file: !1161, line: 17, baseType: !129, size: 64, offset: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1160, file: !1161, line: 19, baseType: !129, size: 64, offset: 128)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1160, file: !1161, line: 21, baseType: !129, size: 64, offset: 192)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1160, file: !1161, line: 29, baseType: !129, size: 64, offset: 256)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1160, file: !1161, line: 35, baseType: !129, size: 64, offset: 320)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1160, file: !1161, line: 44, baseType: !129, size: 64, offset: 384)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1059, file: !1060, line: 202, baseType: !131, size: 64, offset: 5312)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1059, file: !1060, line: 213, baseType: !1172, size: 2048, offset: 5376)
!1172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1173, size: 2048, elements: !1028)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1174, line: 43, size: 128, elements: !1175)
!1174 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!1175 = !{!1176, !1178}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1173, file: !1174, line: 44, baseType: !1177, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !277, line: 16, baseType: !58)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1173, file: !1174, line: 45, baseType: !1177, size: 64, offset: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !1059, file: !1060, line: 216, baseType: !1180, size: 448, offset: 7424)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !1060, line: 30, size: 448, elements: !1181)
!1181 = !{!1182, !1183, !1184, !1185, !1186, !1187, !1188}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !1180, file: !1060, line: 31, baseType: !78, size: 32)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !1180, file: !1060, line: 32, baseType: !577, size: 64, offset: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !1180, file: !1060, line: 33, baseType: !58, size: 64, offset: 128)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !1180, file: !1060, line: 34, baseType: !129, size: 64, offset: 192)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !1180, file: !1060, line: 34, baseType: !129, size: 64, offset: 256)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !1180, file: !1060, line: 35, baseType: !58, size: 64, offset: 320)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !1180, file: !1060, line: 35, baseType: !58, size: 64, offset: 384)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1059, file: !1060, line: 219, baseType: !1190, size: 64, offset: 7872)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !1060, line: 219, flags: DIFlagFwdDecl)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !1059, file: !1060, line: 222, baseType: !7, size: 32, offset: 7936)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !1059, file: !1060, line: 223, baseType: !1194, size: 64, offset: 8000)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !1060, line: 223, flags: DIFlagFwdDecl)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1059, file: !1060, line: 230, baseType: !928, size: 8, offset: 8064)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1059, file: !1060, line: 231, baseType: !594, size: 16, offset: 8080)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1059, file: !1060, line: 232, baseType: !594, size: 16, offset: 8096)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1059, file: !1060, line: 234, baseType: !410, size: 64, offset: 8128)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1059, file: !1060, line: 237, baseType: !553, size: 256, offset: 8192)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !1059, file: !1060, line: 243, baseType: !482, size: 320, offset: 8448)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !51, file: !46, line: 1111, baseType: !1203, size: 64, offset: 15424)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1060, line: 20, size: 16640, elements: !1205)
!1205 = !{!1206, !1207, !1208, !1209}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1204, file: !1060, line: 21, baseType: !429, size: 32)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1204, file: !1060, line: 22, baseType: !69, size: 32, offset: 32)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1204, file: !1060, line: 23, baseType: !745, size: 192, offset: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1204, file: !1060, line: 24, baseType: !1210, size: 16384, offset: 256)
!1210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1211, size: 16384, elements: !1231)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1009, line: 51, size: 256, elements: !1212)
!1212 = !{!1213}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1211, file: !1009, line: 52, baseType: !1214, size: 256)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1009, line: 37, size: 256, elements: !1215)
!1215 = !{!1216, !1223, !1224, !1230}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1214, file: !1009, line: 39, baseType: !1217, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1218, line: 83, baseType: !1219)
!1218 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1218, line: 82, baseType: !1221)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{null, !78}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1214, file: !1009, line: 40, baseType: !58, size: 64, offset: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1214, file: !1009, line: 46, baseType: !1225, size: 64, offset: 128)
!1225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1218, line: 86, baseType: !1226)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1218, line: 85, baseType: !1228)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{null}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1214, file: !1009, line: 48, baseType: !1074, size: 64, offset: 192)
!1231 = !{!1232}
!1232 = !DISubrange(count: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !51, file: !46, line: 1112, baseType: !1074, size: 64, offset: 15488)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !51, file: !46, line: 1113, baseType: !1074, size: 64, offset: 15552)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !51, file: !46, line: 1115, baseType: !1074, size: 64, offset: 15616)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !51, file: !46, line: 1116, baseType: !1070, size: 192, offset: 15680)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !51, file: !46, line: 1117, baseType: !58, size: 64, offset: 15872)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !51, file: !46, line: 1118, baseType: !1239, size: 64, offset: 15936)
!1239 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !74, line: 61, baseType: !1240)
!1240 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !277, line: 72, baseType: !1177)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !51, file: !46, line: 1119, baseType: !7, size: 32, offset: 16000)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !51, file: !46, line: 1121, baseType: !755, size: 64, offset: 16064)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !51, file: !46, line: 1125, baseType: !1244, size: 64, offset: 16128)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !46, line: 43, flags: DIFlagFwdDecl)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !51, file: !46, line: 1127, baseType: !831, size: 32, offset: 16192)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !51, file: !46, line: 1128, baseType: !7, size: 32, offset: 16224)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !51, file: !46, line: 1130, baseType: !1249, size: 128, offset: 16256)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1250, line: 37, size: 128, elements: !1251)
!1250 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!1251 = !{!1252, !1253, !1254}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1249, file: !1250, line: 38, baseType: !78, size: 32)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1249, file: !1250, line: 39, baseType: !73, size: 32, offset: 32)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1249, file: !1250, line: 40, baseType: !1255, size: 64, offset: 64)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1250, line: 24, flags: DIFlagFwdDecl)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !51, file: !46, line: 1131, baseType: !1258, size: 256, offset: 16384)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !1259, line: 12, size: 256, elements: !1260)
!1259 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!1260 = !{!1261, !1262, !1263, !1264}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !1258, file: !1259, line: 13, baseType: !941, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1258, file: !1259, line: 14, baseType: !58, size: 64, offset: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1258, file: !1259, line: 15, baseType: !58, size: 64, offset: 128)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !1258, file: !1259, line: 16, baseType: !928, size: 8, offset: 192)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !51, file: !46, line: 1134, baseType: !129, size: 64, offset: 16640)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !51, file: !46, line: 1135, baseType: !129, size: 64, offset: 16704)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !51, file: !46, line: 1138, baseType: !429, size: 32, offset: 16768)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !51, file: !46, line: 1141, baseType: !227, size: 32, offset: 16800)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !51, file: !46, line: 1143, baseType: !45, size: 64, offset: 16832)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !51, file: !46, line: 1147, baseType: !293, size: 128, offset: 16896)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !51, file: !46, line: 1149, baseType: !50, size: 64, offset: 17024)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !51, file: !46, line: 1151, baseType: !1273, size: 64, offset: 17088)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !30, line: 52, size: 896, elements: !1275)
!1275 = !{!1276, !1282, !1283, !1284, !1292, !1293}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !1274, file: !30, line: 53, baseType: !1277, size: 320)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_waiter_node", file: !30, line: 32, size: 320, elements: !1278)
!1278 = !{!1279, !1280, !1281}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1277, file: !30, line: 33, baseType: !121, size: 192, align: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1277, file: !30, line: 34, baseType: !78, size: 32, offset: 192)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1277, file: !30, line: 35, baseType: !129, size: 64, offset: 256)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "pi_tree", scope: !1274, file: !30, line: 54, baseType: !1277, size: 320, offset: 320)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1274, file: !30, line: 55, baseType: !50, size: 64, offset: 640)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1274, file: !30, line: 56, baseType: !1285, size: 64, offset: 704)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_base", file: !1287, line: 23, size: 256, elements: !1288)
!1287 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c3b60a10bef9e89c790a516317bab43b")
!1288 = !{!1289, !1290, !1291}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1286, file: !1287, line: 24, baseType: !227, size: 32)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1286, file: !1287, line: 25, baseType: !293, size: 128, offset: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1286, file: !1287, line: 26, baseType: !50, size: 64, offset: 192)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "wake_state", scope: !1274, file: !30, line: 57, baseType: !7, size: 32, offset: 768)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "ww_ctx", scope: !1274, file: !30, line: 58, baseType: !1294, size: 64, offset: 832)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_acquire_ctx", file: !1296, line: 55, size: 192, elements: !1297)
!1296 = !DIFile(filename: "./include/linux/ww_mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a05845e2a030669ed50c8f228f8c6582")
!1297 = !{!1298, !1299, !1300, !1301, !1302}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1295, file: !1296, line: 56, baseType: !50, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !1295, file: !1296, line: 57, baseType: !58, size: 64, offset: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "acquired", scope: !1295, file: !1296, line: 58, baseType: !7, size: 32, offset: 128)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "wounded", scope: !1295, file: !1296, line: 59, baseType: !100, size: 16, offset: 160)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "is_wait_die", scope: !1295, file: !1296, line: 60, baseType: !100, size: 16, offset: 176)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !51, file: !46, line: 1188, baseType: !43, size: 64, offset: 17152)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !51, file: !46, line: 1191, baseType: !1305, size: 64, offset: 17216)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !46, line: 44, flags: DIFlagFwdDecl)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !51, file: !46, line: 1194, baseType: !1308, size: 64, offset: 17280)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !46, line: 45, flags: DIFlagFwdDecl)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !51, file: !46, line: 1197, baseType: !1311, size: 64, offset: 17344)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !46, line: 61, flags: DIFlagFwdDecl)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !51, file: !46, line: 1199, baseType: !1314, size: 64, offset: 17408)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !46, line: 52, flags: DIFlagFwdDecl)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !51, file: !46, line: 1202, baseType: !1317, size: 64, offset: 17472)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !46, line: 48, flags: DIFlagFwdDecl)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !51, file: !46, line: 1205, baseType: !58, size: 64, offset: 17536)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !51, file: !46, line: 1206, baseType: !1321, size: 64, offset: 17600)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1009, line: 14, baseType: !1323)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1009, line: 12, size: 384, elements: !1324)
!1324 = !{!1325}
!1325 = !DIDerivedType(tag: DW_TAG_member, scope: !1323, file: !1009, line: 13, baseType: !1326, size: 384)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1323, file: !1009, line: 13, size: 384, elements: !1327)
!1327 = !{!1328, !1329, !1330, !1331}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1326, file: !1009, line: 13, baseType: !78, size: 32)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1326, file: !1009, line: 13, baseType: !78, size: 32, offset: 32)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1326, file: !1009, line: 13, baseType: !78, size: 32, offset: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1326, file: !1009, line: 13, baseType: !1332, size: 256, offset: 128)
!1332 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1333, line: 37, size: 256, elements: !1334)
!1333 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!1334 = !{!1335, !1340, !1353, !1359, !1369, !1396, !1401}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1332, file: !1333, line: 42, baseType: !1336, size: 64)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1332, file: !1333, line: 39, size: 64, elements: !1337)
!1337 = !{!1338, !1339}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1336, file: !1333, line: 40, baseType: !714, size: 32)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1336, file: !1333, line: 41, baseType: !836, size: 32, offset: 32)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1332, file: !1333, line: 50, baseType: !1341, size: 192)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1332, file: !1333, line: 45, size: 192, elements: !1342)
!1342 = !{!1343, !1345, !1346, !1352}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1341, file: !1333, line: 46, baseType: !1344, size: 32)
!1344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !277, line: 95, baseType: !78)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1341, file: !1333, line: 47, baseType: !78, size: 32, offset: 32)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1341, file: !1333, line: 48, baseType: !1347, size: 64, offset: 64)
!1347 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1333, line: 11, baseType: !1348)
!1348 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1333, line: 8, size: 64, elements: !1349)
!1349 = !{!1350, !1351}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1348, file: !1333, line: 9, baseType: !78, size: 32)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1348, file: !1333, line: 10, baseType: !43, size: 64)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1341, file: !1333, line: 49, baseType: !78, size: 32, offset: 128)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1332, file: !1333, line: 57, baseType: !1354, size: 128)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1332, file: !1333, line: 53, size: 128, elements: !1355)
!1355 = !{!1356, !1357, !1358}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1354, file: !1333, line: 54, baseType: !714, size: 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1354, file: !1333, line: 55, baseType: !836, size: 32, offset: 32)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1354, file: !1333, line: 56, baseType: !1347, size: 64, offset: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1332, file: !1333, line: 66, baseType: !1360, size: 256)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1332, file: !1333, line: 60, size: 256, elements: !1361)
!1361 = !{!1362, !1363, !1364, !1365, !1368}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1360, file: !1333, line: 61, baseType: !714, size: 32)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1360, file: !1333, line: 62, baseType: !836, size: 32, offset: 32)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1360, file: !1333, line: 63, baseType: !78, size: 32, offset: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1360, file: !1333, line: 64, baseType: !1366, size: 64, offset: 128)
!1366 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !277, line: 94, baseType: !1367)
!1367 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !277, line: 15, baseType: !577)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1360, file: !1333, line: 65, baseType: !1366, size: 64, offset: 192)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1332, file: !1333, line: 105, baseType: !1370, size: 256)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1332, file: !1333, line: 69, size: 256, elements: !1371)
!1371 = !{!1372, !1373}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1370, file: !1333, line: 70, baseType: !43, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, scope: !1370, file: !1333, line: 79, baseType: !1374, size: 192, offset: 64)
!1374 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1370, file: !1333, line: 79, size: 192, elements: !1375)
!1375 = !{!1376, !1377, !1378, !1385, !1390}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !1374, file: !1333, line: 81, baseType: !78, size: 32)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1374, file: !1333, line: 86, baseType: !594, size: 16)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1374, file: !1333, line: 92, baseType: !1379, size: 192)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1374, file: !1333, line: 88, size: 192, elements: !1380)
!1380 = !{!1381, !1383, !1384}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1379, file: !1333, line: 89, baseType: !1382, size: 64)
!1382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !914, size: 64, elements: !271)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1379, file: !1333, line: 90, baseType: !43, size: 64, offset: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1379, file: !1333, line: 91, baseType: !43, size: 64, offset: 128)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1374, file: !1333, line: 97, baseType: !1386, size: 96)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1374, file: !1333, line: 94, size: 96, elements: !1387)
!1387 = !{!1388, !1389}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1386, file: !1333, line: 95, baseType: !1382, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1386, file: !1333, line: 96, baseType: !63, size: 32, offset: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !1374, file: !1333, line: 103, baseType: !1391, size: 128)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1374, file: !1333, line: 99, size: 128, elements: !1392)
!1392 = !{!1393, !1394, !1395}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !1391, file: !1333, line: 100, baseType: !58, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !1391, file: !1333, line: 101, baseType: !63, size: 32, offset: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1391, file: !1333, line: 102, baseType: !63, size: 32, offset: 96)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1332, file: !1333, line: 111, baseType: !1397, size: 128)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1332, file: !1333, line: 108, size: 128, elements: !1398)
!1398 = !{!1399, !1400}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1397, file: !1333, line: 109, baseType: !577, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1397, file: !1333, line: 110, baseType: !78, size: 32, offset: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1332, file: !1333, line: 118, baseType: !1402, size: 128)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1332, file: !1333, line: 114, size: 128, elements: !1403)
!1403 = !{!1404, !1405, !1406}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1402, file: !1333, line: 115, baseType: !43, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1402, file: !1333, line: 116, baseType: !78, size: 32, offset: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1402, file: !1333, line: 117, baseType: !7, size: 32, offset: 96)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !51, file: !46, line: 1208, baseType: !1160, size: 448, offset: 17664)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !51, file: !46, line: 1215, baseType: !129, size: 64, offset: 18112)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !51, file: !46, line: 1217, baseType: !129, size: 64, offset: 18176)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !51, file: !46, line: 1219, baseType: !129, size: 64, offset: 18240)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !51, file: !46, line: 1223, baseType: !1412, size: 64, offset: 18304)
!1412 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !1413, line: 99, baseType: !1414)
!1413 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1413, line: 99, size: 64, elements: !1415)
!1415 = !{!1416}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1414, file: !1413, line: 99, baseType: !361, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !51, file: !46, line: 1225, baseType: !1133, size: 32, offset: 18368)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !51, file: !46, line: 1226, baseType: !78, size: 32, offset: 18400)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !51, file: !46, line: 1227, baseType: !78, size: 32, offset: 18432)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !51, file: !46, line: 1231, baseType: !1421, size: 64, offset: 18496)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !46, line: 1231, flags: DIFlagFwdDecl)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !51, file: !46, line: 1233, baseType: !134, size: 128, offset: 18560)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !51, file: !46, line: 1240, baseType: !1425, size: 64, offset: 18688)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !46, line: 62, flags: DIFlagFwdDecl)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !51, file: !46, line: 1242, baseType: !1428, size: 64, offset: 18752)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !46, line: 1242, flags: DIFlagFwdDecl)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !51, file: !46, line: 1244, baseType: !134, size: 128, offset: 18816)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !51, file: !46, line: 1245, baseType: !1432, size: 64, offset: 18944)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !46, line: 51, flags: DIFlagFwdDecl)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !51, file: !46, line: 1246, baseType: !553, size: 256, offset: 19008)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !51, file: !46, line: 1247, baseType: !7, size: 32, offset: 19264)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !51, file: !46, line: 1250, baseType: !1437, size: 64, offset: 19328)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !46, line: 57, flags: DIFlagFwdDecl)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !51, file: !46, line: 1251, baseType: !553, size: 256, offset: 19392)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !51, file: !46, line: 1252, baseType: !134, size: 128, offset: 19648)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !51, file: !46, line: 1259, baseType: !1442, size: 64, offset: 19776)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !46, line: 54, flags: DIFlagFwdDecl)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !51, file: !46, line: 1260, baseType: !594, size: 16, offset: 19840)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !51, file: !46, line: 1261, baseType: !594, size: 16, offset: 19856)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !51, file: !46, line: 1314, baseType: !1447, size: 64, offset: 19904)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1449, line: 62, size: 256, align: 256, elements: !1450)
!1449 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!1450 = !{!1451, !1452, !1453, !1454, !1455, !1456, !1457}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1448, file: !1449, line: 75, baseType: !63, size: 32)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1448, file: !1449, line: 90, baseType: !63, size: 32, offset: 32)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1448, file: !1449, line: 112, baseType: !130, size: 64, offset: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1448, file: !1449, line: 132, baseType: !63, size: 32, offset: 128)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !1448, file: !1449, line: 140, baseType: !63, size: 32, offset: 160)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1448, file: !1449, line: 149, baseType: !63, size: 32, offset: 192)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1448, file: !1449, line: 154, baseType: !1458, offset: 224)
!1458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !914, elements: !631)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !51, file: !46, line: 1315, baseType: !61, size: 32, offset: 19968)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !51, file: !46, line: 1316, baseType: !61, size: 32, offset: 20000)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !51, file: !46, line: 1321, baseType: !58, size: 64, offset: 20032)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !51, file: !46, line: 1325, baseType: !78, size: 32, offset: 20096)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !51, file: !46, line: 1326, baseType: !78, size: 32, offset: 20128)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !51, file: !46, line: 1327, baseType: !78, size: 32, offset: 20160)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !51, file: !46, line: 1328, baseType: !78, size: 32, offset: 20192)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !51, file: !46, line: 1329, baseType: !752, size: 128, align: 64, offset: 20224)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !51, file: !46, line: 1332, baseType: !1468, size: 128, offset: 20352)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1469, line: 51, size: 128, elements: !1470)
!1469 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!1470 = !{!1471, !1476, !1477}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1468, file: !1469, line: 60, baseType: !1472, size: 64)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1473, line: 7, size: 64, elements: !1474)
!1473 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!1474 = !{!1475}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1472, file: !1473, line: 12, baseType: !358, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1468, file: !1469, line: 63, baseType: !928, size: 8, offset: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1468, file: !1469, line: 70, baseType: !928, size: 8, offset: 72)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !51, file: !46, line: 1335, baseType: !1479, size: 64, offset: 20480)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !46, line: 59, flags: DIFlagFwdDecl)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !51, file: !46, line: 1337, baseType: !1482, size: 128, offset: 20544)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1469, line: 39, size: 128, elements: !1483)
!1483 = !{!1484, !1547, !1548}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1482, file: !1469, line: 40, baseType: !1485, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !412, line: 74, size: 512, align: 128, elements: !1487)
!1487 = !{!1488, !1489, !1541, !1546}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1486, file: !412, line: 75, baseType: !58, size: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, scope: !1486, file: !412, line: 83, baseType: !1490, size: 320, offset: 64)
!1490 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1486, file: !412, line: 83, size: 320, elements: !1491)
!1491 = !{!1492, !1515, !1529, !1533, !1540}
!1492 = !DIDerivedType(tag: DW_TAG_member, scope: !1490, file: !412, line: 84, baseType: !1493, size: 320)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1490, file: !412, line: 84, size: 320, elements: !1494)
!1494 = !{!1495, !1506, !1509, !1514}
!1495 = !DIDerivedType(tag: DW_TAG_member, scope: !1493, file: !412, line: 90, baseType: !1496, size: 128)
!1496 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1493, file: !412, line: 90, size: 128, elements: !1497)
!1497 = !{!1498, !1499, !1504, !1505}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1496, file: !412, line: 91, baseType: !134, size: 128)
!1499 = !DIDerivedType(tag: DW_TAG_member, scope: !1496, file: !412, line: 94, baseType: !1500, size: 128)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1496, file: !412, line: 94, size: 128, elements: !1501)
!1501 = !{!1502, !1503}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1500, file: !412, line: 96, baseType: !43, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1500, file: !412, line: 98, baseType: !7, size: 32, offset: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1496, file: !412, line: 102, baseType: !134, size: 128)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1496, file: !412, line: 103, baseType: !134, size: 128)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1493, file: !412, line: 106, baseType: !1507, size: 64, offset: 128)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !412, line: 32, flags: DIFlagFwdDecl)
!1509 = !DIDerivedType(tag: DW_TAG_member, scope: !1493, file: !412, line: 107, baseType: !1510, size: 64, offset: 192)
!1510 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1493, file: !412, line: 107, size: 64, elements: !1511)
!1511 = !{!1512, !1513}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1510, file: !412, line: 108, baseType: !58, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1510, file: !412, line: 109, baseType: !58, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1493, file: !412, line: 117, baseType: !58, size: 64, offset: 256)
!1515 = !DIDerivedType(tag: DW_TAG_member, scope: !1490, file: !412, line: 119, baseType: !1516, size: 320)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1490, file: !412, line: 119, size: 320, elements: !1517)
!1517 = !{!1518, !1519, !1522, !1523, !1524}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1516, file: !412, line: 124, baseType: !58, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1516, file: !412, line: 125, baseType: !1520, size: 64, offset: 64)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !412, line: 125, flags: DIFlagFwdDecl)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1516, file: !412, line: 126, baseType: !58, size: 64, offset: 128)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1516, file: !412, line: 127, baseType: !58, size: 64, offset: 192)
!1524 = !DIDerivedType(tag: DW_TAG_member, scope: !1516, file: !412, line: 128, baseType: !1525, size: 64, offset: 256)
!1525 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1516, file: !412, line: 128, size: 64, elements: !1526)
!1526 = !{!1527, !1528}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1525, file: !412, line: 133, baseType: !58, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1525, file: !412, line: 138, baseType: !473, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, scope: !1490, file: !412, line: 141, baseType: !1530, size: 64)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1490, file: !412, line: 141, size: 64, elements: !1531)
!1531 = !{!1532}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1530, file: !412, line: 142, baseType: !58, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, scope: !1490, file: !412, line: 144, baseType: !1534, size: 128)
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1490, file: !412, line: 144, size: 128, elements: !1535)
!1535 = !{!1536, !1539}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1534, file: !412, line: 146, baseType: !1537, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !412, line: 146, flags: DIFlagFwdDecl)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1534, file: !412, line: 147, baseType: !43, size: 64, offset: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1490, file: !412, line: 161, baseType: !752, size: 128, align: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, scope: !1486, file: !412, line: 164, baseType: !1542, size: 32, offset: 384)
!1542 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1486, file: !412, line: 164, size: 32, elements: !1543)
!1543 = !{!1544, !1545}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1542, file: !412, line: 169, baseType: !73, size: 32)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1542, file: !412, line: 177, baseType: !7, size: 32)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1486, file: !412, line: 181, baseType: !73, size: 32, offset: 416)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1482, file: !1469, line: 42, baseType: !63, size: 32, offset: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1482, file: !1469, line: 43, baseType: !63, size: 32, offset: 96)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !51, file: !46, line: 1340, baseType: !1550, size: 64, offset: 20672)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !46, line: 69, flags: DIFlagFwdDecl)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !51, file: !46, line: 1351, baseType: !78, size: 32, offset: 20736)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !51, file: !46, line: 1352, baseType: !78, size: 32, offset: 20768)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !51, file: !46, line: 1354, baseType: !58, size: 64, offset: 20800)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !51, file: !46, line: 1364, baseType: !129, size: 64, offset: 20864)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !51, file: !46, line: 1365, baseType: !129, size: 64, offset: 20928)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !51, file: !46, line: 1412, baseType: !58, size: 64, offset: 20992)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !51, file: !46, line: 1453, baseType: !1559, size: 64, offset: 21056)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !46, line: 1453, flags: DIFlagFwdDecl)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !51, file: !46, line: 1457, baseType: !1562, size: 64, offset: 21120)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !18, line: 61, size: 576, elements: !1564)
!1564 = !{!1565, !1566, !1585, !1588, !1589, !1622, !1632}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1563, file: !18, line: 62, baseType: !17, size: 32)
!1566 = !DIDerivedType(tag: DW_TAG_member, scope: !1563, file: !18, line: 64, baseType: !1567, size: 192, offset: 64)
!1567 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1563, file: !18, line: 64, size: 192, elements: !1568)
!1568 = !{!1569, !1580}
!1569 = !DIDerivedType(tag: DW_TAG_member, scope: !1567, file: !18, line: 65, baseType: !1570, size: 192)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1567, file: !18, line: 65, size: 192, elements: !1571)
!1571 = !{!1572, !1579}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !1570, file: !18, line: 66, baseType: !1573, size: 128)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !1574, line: 50, size: 128, elements: !1575)
!1574 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!1575 = !{!1576, !1577, !1578}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !1573, file: !1574, line: 52, baseType: !58, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !1573, file: !1574, line: 54, baseType: !7, size: 32, offset: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !1573, file: !1574, line: 55, baseType: !7, size: 32, offset: 96)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !1570, file: !18, line: 67, baseType: !58, size: 64, offset: 128)
!1580 = !DIDerivedType(tag: DW_TAG_member, scope: !1567, file: !18, line: 70, baseType: !1581, size: 192)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1567, file: !18, line: 70, size: 192, elements: !1582)
!1582 = !{!1583, !1584}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !1581, file: !18, line: 71, baseType: !752, size: 128, align: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !1581, file: !18, line: 72, baseType: !58, size: 64, offset: 128)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !1563, file: !18, line: 76, baseType: !1586, size: 64, offset: 256)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !18, line: 76, flags: DIFlagFwdDecl)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !1563, file: !18, line: 77, baseType: !58, size: 64, offset: 320)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !1563, file: !18, line: 79, baseType: !1590, size: 64, offset: 384)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !1574, line: 25, size: 256, elements: !1592)
!1592 = !{!1593, !1599, !1603}
!1593 = !DIDerivedType(tag: DW_TAG_member, scope: !1591, file: !1574, line: 26, baseType: !1594, size: 128)
!1594 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1591, file: !1574, line: 26, size: 128, elements: !1595)
!1595 = !{!1596, !1598}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1594, file: !1574, line: 27, baseType: !1597, size: 128)
!1597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 128, elements: !1028)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !1594, file: !1574, line: 28, baseType: !1597, size: 128)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1591, file: !1574, line: 31, baseType: !1600, size: 64, offset: 128)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1602)
!1602 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !1574, line: 23, flags: DIFlagFwdDecl)
!1603 = !DIDerivedType(tag: DW_TAG_member, scope: !1591, file: !1574, line: 33, baseType: !1604, size: 64, offset: 192)
!1604 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1591, file: !1574, line: 33, size: 64, elements: !1605)
!1605 = !{!1606, !1612, !1617}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !1604, file: !1574, line: 38, baseType: !1607, size: 64)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1604, file: !1574, line: 34, size: 64, elements: !1608)
!1608 = !{!1609, !1610, !1611}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !1607, file: !1574, line: 35, baseType: !532, size: 32)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1607, file: !1574, line: 36, baseType: !244, size: 8, offset: 32)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !1607, file: !1574, line: 37, baseType: !244, size: 8, offset: 40)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !1604, file: !1574, line: 42, baseType: !1613, size: 16)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1604, file: !1574, line: 39, size: 16, elements: !1614)
!1614 = !{!1615, !1616}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !1613, file: !1574, line: 40, baseType: !244, size: 8)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1613, file: !1574, line: 41, baseType: !244, size: 8, offset: 8)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !1604, file: !1574, line: 46, baseType: !1618, size: 16)
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1604, file: !1574, line: 43, size: 16, elements: !1619)
!1619 = !{!1620, !1621}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !1618, file: !1574, line: 44, baseType: !244, size: 8)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1618, file: !1574, line: 45, baseType: !244, size: 8, offset: 8)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !1563, file: !18, line: 81, baseType: !1623, size: 64, offset: 448)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !18, line: 85, size: 384, elements: !1625)
!1625 = !{!1626, !1627, !1628, !1629, !1630, !1631}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !1624, file: !18, line: 86, baseType: !1586, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1624, file: !18, line: 87, baseType: !58, size: 64, offset: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1624, file: !18, line: 88, baseType: !58, size: 64, offset: 128)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !1624, file: !18, line: 89, baseType: !58, size: 64, offset: 192)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !1624, file: !18, line: 90, baseType: !928, size: 8, offset: 256)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1624, file: !18, line: 92, baseType: !1623, size: 64, offset: 320)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1563, file: !18, line: 82, baseType: !7, size: 32, offset: 512)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !51, file: !46, line: 1463, baseType: !1634, offset: 21184)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !46, line: 739, elements: !440)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !51, file: !46, line: 1470, baseType: !752, size: 128, align: 64, offset: 21184)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !51, file: !46, line: 1471, baseType: !69, size: 32, offset: 21312)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !51, file: !46, line: 1472, baseType: !78, size: 32, offset: 21344)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !51, file: !46, line: 1474, baseType: !50, size: 64, offset: 21376)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !51, file: !46, line: 1475, baseType: !1640, size: 320, offset: 21440)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1641, line: 11, size: 320, elements: !1642)
!1641 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1642 = !{!1643, !1644, !1645, !1650}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1640, file: !1641, line: 16, baseType: !738, size: 128)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1640, file: !1641, line: 17, baseType: !58, size: 64, offset: 128)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1640, file: !1641, line: 18, baseType: !1646, size: 64, offset: 192)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DISubroutineType(types: !1648)
!1648 = !{null, !1649}
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1640, file: !1641, line: 19, baseType: !61, size: 32, offset: 256)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !51, file: !46, line: 1478, baseType: !1652, size: 64, offset: 21760)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !46, line: 1478, flags: DIFlagFwdDecl)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !51, file: !46, line: 1482, baseType: !69, size: 32, offset: 21824)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !51, file: !46, line: 1489, baseType: !43, size: 64, offset: 21888)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !51, file: !46, line: 1504, baseType: !43, size: 64, offset: 21952)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !51, file: !46, line: 1505, baseType: !130, size: 64, offset: 22016)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !51, file: !46, line: 1506, baseType: !129, size: 64, offset: 22080)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !51, file: !46, line: 1507, baseType: !130, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !51, file: !46, line: 1508, baseType: !130, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !51, file: !46, line: 1509, baseType: !130, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !51, file: !46, line: 1510, baseType: !752, size: 128, align: 64, offset: 22208)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !51, file: !46, line: 1511, baseType: !78, size: 32, offset: 22336)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !51, file: !46, line: 1515, baseType: !1665, size: 64, offset: 22400)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !88, line: 56, size: 64, elements: !1666)
!1666 = !{!1667}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1665, file: !88, line: 57, baseType: !91, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !51, file: !46, line: 1518, baseType: !1665, size: 64, offset: 22464)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !51, file: !46, line: 1528, baseType: !752, size: 128, align: 64, offset: 22528)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !51, file: !46, line: 1552, baseType: !1671, size: 35328, offset: 23040)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1672, line: 430, size: 35328, elements: !1673)
!1672 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!1673 = !{!1674, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1703, !1704, !1705, !1706, !1707, !1708, !1711, !1712, !1713, !1714}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1671, file: !1672, line: 432, baseType: !1675, size: 192)
!1675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1676, size: 192, elements: !813)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1677, line: 16, size: 64, elements: !1678)
!1677 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!1678 = !{!1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1676, file: !1677, line: 17, baseType: !98, size: 16)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1676, file: !1677, line: 18, baseType: !98, size: 16, offset: 16)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1676, file: !1677, line: 19, baseType: !98, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1676, file: !1677, line: 19, baseType: !98, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1676, file: !1677, line: 19, baseType: !98, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1676, file: !1677, line: 19, baseType: !98, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1676, file: !1677, line: 19, baseType: !98, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1676, file: !1677, line: 20, baseType: !98, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1676, file: !1677, line: 20, baseType: !98, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1676, file: !1677, line: 20, baseType: !98, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1676, file: !1677, line: 20, baseType: !98, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1676, file: !1677, line: 20, baseType: !98, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1676, file: !1677, line: 20, baseType: !98, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1671, file: !1672, line: 436, baseType: !58, size: 64, offset: 192)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1671, file: !1672, line: 440, baseType: !100, size: 16, offset: 256)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1671, file: !1672, line: 441, baseType: !100, size: 16, offset: 272)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1671, file: !1672, line: 442, baseType: !100, size: 16, offset: 288)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1671, file: !1672, line: 443, baseType: !100, size: 16, offset: 304)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1671, file: !1672, line: 447, baseType: !58, size: 64, offset: 320)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1671, file: !1672, line: 448, baseType: !58, size: 64, offset: 384)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1671, file: !1672, line: 459, baseType: !1700, size: 256, offset: 448)
!1700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1701, size: 256, elements: !534)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1672, line: 428, flags: DIFlagFwdDecl)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1671, file: !1672, line: 461, baseType: !58, size: 64, offset: 704)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1671, file: !1672, line: 463, baseType: !58, size: 64, offset: 768)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1671, file: !1672, line: 465, baseType: !58, size: 64, offset: 832)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1671, file: !1672, line: 466, baseType: !58, size: 64, offset: 896)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1671, file: !1672, line: 467, baseType: !58, size: 64, offset: 960)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1671, file: !1672, line: 473, baseType: !1709, size: 64, offset: 1024)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1672, line: 10, flags: DIFlagFwdDecl)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1671, file: !1672, line: 480, baseType: !58, size: 64, offset: 1088)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !1671, file: !1672, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !1671, file: !1672, line: 491, baseType: !61, size: 32, offset: 1184)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1671, file: !1672, line: 501, baseType: !1715, size: 33792, offset: 1536)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1716, line: 448, size: 33792, elements: !1717)
!1716 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!1717 = !{!1718, !1719, !1720, !1884, !1885, !1891, !1892}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1715, file: !1716, line: 461, baseType: !7, size: 32)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1715, file: !1716, line: 468, baseType: !58, size: 64, offset: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !1715, file: !1716, line: 476, baseType: !1721, size: 64, offset: 128)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !1716, line: 356, size: 33280, align: 512, elements: !1723)
!1723 = !{!1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1722, file: !1716, line: 358, baseType: !7, size: 32)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !1722, file: !1716, line: 361, baseType: !7, size: 32, offset: 32)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1722, file: !1716, line: 364, baseType: !129, size: 64, offset: 64)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !1722, file: !1716, line: 367, baseType: !129, size: 64, offset: 128)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !1722, file: !1716, line: 370, baseType: !129, size: 64, offset: 192)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !1722, file: !1716, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !1722, file: !1716, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !1722, file: !1716, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !1722, file: !1716, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1722, file: !1716, line: 397, baseType: !1734, size: 32768, offset: 512)
!1734 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1716, line: 348, size: 32768, elements: !1735)
!1735 = !{!1736, !1751, !1790, !1867, !1880}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1734, file: !1716, line: 349, baseType: !1737, size: 896)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1716, line: 12, size: 896, elements: !1738)
!1738 = !{!1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1750}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1737, file: !1716, line: 13, baseType: !61, size: 32)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1737, file: !1716, line: 14, baseType: !61, size: 32, offset: 32)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1737, file: !1716, line: 15, baseType: !61, size: 32, offset: 64)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1737, file: !1716, line: 16, baseType: !61, size: 32, offset: 96)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1737, file: !1716, line: 17, baseType: !61, size: 32, offset: 128)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1737, file: !1716, line: 18, baseType: !61, size: 32, offset: 160)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1737, file: !1716, line: 19, baseType: !61, size: 32, offset: 192)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1737, file: !1716, line: 22, baseType: !1747, size: 640, offset: 224)
!1747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 640, elements: !1748)
!1748 = !{!1749}
!1749 = !DISubrange(count: 20)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1737, file: !1716, line: 25, baseType: !61, size: 32, offset: 864)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1734, file: !1716, line: 350, baseType: !1752, size: 4096, align: 128)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1716, line: 34, size: 4096, align: 128, elements: !1753)
!1753 = !{!1754, !1755, !1756, !1757, !1758, !1773, !1774, !1775, !1779, !1781, !1785}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1752, file: !1716, line: 35, baseType: !98, size: 16)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1752, file: !1716, line: 36, baseType: !98, size: 16, offset: 16)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1752, file: !1716, line: 37, baseType: !98, size: 16, offset: 32)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1752, file: !1716, line: 38, baseType: !98, size: 16, offset: 48)
!1758 = !DIDerivedType(tag: DW_TAG_member, scope: !1752, file: !1716, line: 39, baseType: !1759, size: 128, offset: 64)
!1759 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1752, file: !1716, line: 39, size: 128, elements: !1760)
!1760 = !{!1761, !1766}
!1761 = !DIDerivedType(tag: DW_TAG_member, scope: !1759, file: !1716, line: 40, baseType: !1762, size: 128)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1759, file: !1716, line: 40, size: 128, elements: !1763)
!1763 = !{!1764, !1765}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1762, file: !1716, line: 41, baseType: !129, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1762, file: !1716, line: 42, baseType: !129, size: 64, offset: 64)
!1766 = !DIDerivedType(tag: DW_TAG_member, scope: !1759, file: !1716, line: 44, baseType: !1767, size: 128)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1759, file: !1716, line: 44, size: 128, elements: !1768)
!1768 = !{!1769, !1770, !1771, !1772}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1767, file: !1716, line: 45, baseType: !61, size: 32)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1767, file: !1716, line: 46, baseType: !61, size: 32, offset: 32)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1767, file: !1716, line: 47, baseType: !61, size: 32, offset: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1767, file: !1716, line: 48, baseType: !61, size: 32, offset: 96)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1752, file: !1716, line: 51, baseType: !61, size: 32, offset: 192)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1752, file: !1716, line: 52, baseType: !61, size: 32, offset: 224)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1752, file: !1716, line: 55, baseType: !1776, size: 1024, offset: 256)
!1776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 1024, elements: !1777)
!1777 = !{!1778}
!1778 = !DISubrange(count: 32)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1752, file: !1716, line: 58, baseType: !1780, size: 2048, offset: 1280)
!1780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 2048, elements: !1231)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1752, file: !1716, line: 60, baseType: !1782, size: 384, offset: 3328)
!1782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 384, elements: !1783)
!1783 = !{!1784}
!1784 = !DISubrange(count: 12)
!1785 = !DIDerivedType(tag: DW_TAG_member, scope: !1752, file: !1716, line: 62, baseType: !1786, size: 384, offset: 3712)
!1786 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1752, file: !1716, line: 62, size: 384, elements: !1787)
!1787 = !{!1788, !1789}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1786, file: !1716, line: 63, baseType: !1782, size: 384)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1786, file: !1716, line: 64, baseType: !1782, size: 384)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1734, file: !1716, line: 351, baseType: !1791, size: 1088)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1716, line: 79, size: 1088, elements: !1792)
!1792 = !{!1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1866}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1791, file: !1716, line: 80, baseType: !61, size: 32)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1791, file: !1716, line: 81, baseType: !61, size: 32, offset: 32)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1791, file: !1716, line: 82, baseType: !61, size: 32, offset: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1791, file: !1716, line: 83, baseType: !61, size: 32, offset: 96)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1791, file: !1716, line: 84, baseType: !61, size: 32, offset: 128)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1791, file: !1716, line: 85, baseType: !61, size: 32, offset: 160)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1791, file: !1716, line: 86, baseType: !61, size: 32, offset: 192)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1791, file: !1716, line: 88, baseType: !1747, size: 640, offset: 224)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1791, file: !1716, line: 89, baseType: !244, size: 8, offset: 864)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1791, file: !1716, line: 90, baseType: !244, size: 8, offset: 872)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1791, file: !1716, line: 91, baseType: !244, size: 8, offset: 880)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1791, file: !1716, line: 92, baseType: !244, size: 8, offset: 888)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1791, file: !1716, line: 93, baseType: !244, size: 8, offset: 896)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1791, file: !1716, line: 94, baseType: !244, size: 8, offset: 904)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1791, file: !1716, line: 95, baseType: !1808, size: 64, offset: 960)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1810, line: 11, size: 128, elements: !1811)
!1810 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!1811 = !{!1812, !1813}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1809, file: !1810, line: 12, baseType: !577, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1809, file: !1810, line: 13, baseType: !1814, size: 64, offset: 64)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1816, line: 103, size: 1344, elements: !1817)
!1816 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!1817 = !{!1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1846, !1847, !1848}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1815, file: !1816, line: 109, baseType: !58, size: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1815, file: !1816, line: 110, baseType: !58, size: 64, offset: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1815, file: !1816, line: 111, baseType: !58, size: 64, offset: 128)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1815, file: !1816, line: 112, baseType: !58, size: 64, offset: 192)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1815, file: !1816, line: 113, baseType: !58, size: 64, offset: 256)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1815, file: !1816, line: 114, baseType: !58, size: 64, offset: 320)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1815, file: !1816, line: 117, baseType: !58, size: 64, offset: 384)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1815, file: !1816, line: 118, baseType: !58, size: 64, offset: 448)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1815, file: !1816, line: 119, baseType: !58, size: 64, offset: 512)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1815, file: !1816, line: 120, baseType: !58, size: 64, offset: 576)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1815, file: !1816, line: 121, baseType: !58, size: 64, offset: 640)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1815, file: !1816, line: 122, baseType: !58, size: 64, offset: 704)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1815, file: !1816, line: 123, baseType: !58, size: 64, offset: 768)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1815, file: !1816, line: 124, baseType: !58, size: 64, offset: 832)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1815, file: !1816, line: 125, baseType: !58, size: 64, offset: 896)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1815, file: !1816, line: 139, baseType: !58, size: 64, offset: 960)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1815, file: !1816, line: 142, baseType: !58, size: 64, offset: 1024)
!1835 = !DIDerivedType(tag: DW_TAG_member, scope: !1815, file: !1816, line: 144, baseType: !1836, size: 64, offset: 1088)
!1836 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1815, file: !1816, line: 144, size: 64, elements: !1837)
!1837 = !{!1838, !1839, !1840}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1836, file: !1816, line: 146, baseType: !98, size: 16)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !1836, file: !1816, line: 148, baseType: !129, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !1836, file: !1816, line: 150, baseType: !1841, size: 64)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !1816, line: 59, size: 64, elements: !1842)
!1842 = !{!1843, !1844, !1845}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1841, file: !1816, line: 61, baseType: !129, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !1841, file: !1816, line: 63, baseType: !129, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !1841, file: !1816, line: 65, baseType: !129, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1815, file: !1816, line: 153, baseType: !58, size: 64, offset: 1152)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1815, file: !1816, line: 154, baseType: !58, size: 64, offset: 1216)
!1848 = !DIDerivedType(tag: DW_TAG_member, scope: !1815, file: !1816, line: 156, baseType: !1849, size: 64, offset: 1280)
!1849 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1815, file: !1816, line: 156, size: 64, elements: !1850)
!1850 = !{!1851, !1852, !1853}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1849, file: !1816, line: 158, baseType: !98, size: 16)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !1849, file: !1816, line: 160, baseType: !129, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !1849, file: !1816, line: 162, baseType: !1854, size: 64)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !1816, line: 69, size: 64, elements: !1855)
!1855 = !{!1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1854, file: !1816, line: 71, baseType: !129, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !1854, file: !1816, line: 73, baseType: !129, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !1854, file: !1816, line: 75, baseType: !129, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !1854, file: !1816, line: 77, baseType: !129, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !1854, file: !1816, line: 80, baseType: !129, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1854, file: !1816, line: 83, baseType: !129, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !1854, file: !1816, line: 86, baseType: !129, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !1854, file: !1816, line: 88, baseType: !129, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !1854, file: !1816, line: 93, baseType: !129, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !1854, file: !1816, line: 100, baseType: !129, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1791, file: !1716, line: 96, baseType: !61, size: 32, offset: 1024)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1734, file: !1716, line: 352, baseType: !1868, size: 4608, align: 512)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1716, line: 333, size: 4608, align: 512, elements: !1869)
!1869 = !{!1870, !1871, !1878}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1868, file: !1716, line: 334, baseType: !1752, size: 4096, align: 128)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1868, file: !1716, line: 335, baseType: !1872, size: 512, offset: 4096)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1716, line: 312, size: 512, elements: !1873)
!1873 = !{!1874, !1875, !1876}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1872, file: !1716, line: 313, baseType: !129, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1872, file: !1716, line: 314, baseType: !129, size: 64, offset: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1872, file: !1716, line: 315, baseType: !1877, size: 384, offset: 128)
!1877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 384, elements: !915)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1868, file: !1716, line: 336, baseType: !1879, offset: 4608)
!1879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, elements: !631)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1734, file: !1716, line: 353, baseType: !1881, size: 32768)
!1881 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 32768, elements: !1882)
!1882 = !{!1883}
!1883 = !DISubrange(count: 4096)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !1715, file: !1716, line: 484, baseType: !1721, size: 64, offset: 192)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1715, file: !1716, line: 491, baseType: !1886, size: 128, offset: 256)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !1716, line: 404, size: 128, elements: !1887)
!1887 = !{!1888, !1889, !1890}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !1886, file: !1716, line: 424, baseType: !129, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !1886, file: !1716, line: 432, baseType: !7, size: 32, offset: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !1886, file: !1716, line: 440, baseType: !7, size: 32, offset: 96)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !1715, file: !1716, line: 498, baseType: !1886, size: 128, offset: 384)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !1715, file: !1716, line: 508, baseType: !1722, size: 33280, align: 512, offset: 512)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !129)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !1287, line: 57, size: 256, elements: !1897)
!1897 = !{!1898}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "rtmutex", scope: !1896, file: !1287, line: 58, baseType: !1286, size: 256)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1903)
!1903 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1904)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !1906, line: 26, size: 192, elements: !1907)
!1906 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1907 = !{!1908, !1909, !1910}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1905, file: !1906, line: 27, baseType: !43, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1905, file: !1906, line: 28, baseType: !43, size: 64, offset: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1905, file: !1906, line: 29, baseType: !78, size: 32, offset: 128)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !358)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1916)
!1916 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !126)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !50)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1918)
!1922 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !74, line: 42, baseType: !58)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1927)
!1927 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !78)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1900)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1933)
!1933 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !58)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1935 = !{!0, !1936, !1938, !1940, !1942, !1944, !1946, !1948, !1950, !1960, !1964, !1970, !1999, !2001, !2007, !2012, !2041, !2043, !2046, !2070, !2075, !2084}
!1936 = !DIGlobalVariableExpression(var: !1937, expr: !DIExpression())
!1937 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rt_mutex_base_init264", scope: !2, file: !3, line: 41, type: !43, isLocal: true, isDefinition: true)
!1938 = !DIGlobalVariableExpression(var: !1939, expr: !DIExpression())
!1939 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rt_mutex_lock265", scope: !2, file: !3, line: 73, type: !43, isLocal: true, isDefinition: true)
!1940 = !DIGlobalVariableExpression(var: !1941, expr: !DIExpression())
!1941 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rt_mutex_lock_interruptible266", scope: !2, file: !3, line: 89, type: !43, isLocal: true, isDefinition: true)
!1942 = !DIGlobalVariableExpression(var: !1943, expr: !DIExpression())
!1943 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rt_mutex_lock_killable267", scope: !2, file: !3, line: 104, type: !43, isLocal: true, isDefinition: true)
!1944 = !DIGlobalVariableExpression(var: !1945, expr: !DIExpression())
!1945 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rt_mutex_trylock268", scope: !2, file: !3, line: 131, type: !43, isLocal: true, isDefinition: true)
!1946 = !DIGlobalVariableExpression(var: !1947, expr: !DIExpression())
!1947 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rt_mutex_unlock269", scope: !2, file: !3, line: 143, type: !43, isLocal: true, isDefinition: true)
!1948 = !DIGlobalVariableExpression(var: !1949, expr: !DIExpression())
!1949 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___rt_mutex_init270", scope: !2, file: !3, line: 220, type: !43, isLocal: true, isDefinition: true)
!1950 = !DIGlobalVariableExpression(var: !1951, expr: !DIExpression())
!1951 = distinct !DIGlobalVariable(name: "pi_futex_key", scope: !1952, file: !3, line: 239, type: !1958, isLocal: true, isDefinition: true)
!1952 = distinct !DISubprogram(name: "rt_mutex_init_proxy_locked", scope: !3, file: !3, line: 236, type: !1953, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1955)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{null, !1285, !50}
!1955 = !{!1956, !1957}
!1956 = !DILocalVariable(name: "lock", arg: 1, scope: !1952, file: !3, line: 236, type: !1285)
!1957 = !DILocalVariable(name: "proxy_owner", arg: 2, scope: !1952, file: !3, line: 237, type: !50)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1959, line: 206, elements: !440)
!1959 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1960 = !DIGlobalVariableExpression(var: !1961, expr: !DIExpression())
!1961 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__might_resched29", scope: !1962, file: !1963, line: 112, type: !43, isLocal: true, isDefinition: true)
!1962 = distinct !DISubprogram(name: "might_resched", scope: !1963, file: !1963, line: 110, type: !1228, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1963 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!1964 = !DIGlobalVariableExpression(var: !1965, expr: !DIExpression())
!1965 = distinct !DIGlobalVariable(scope: null, file: !1966, line: 95, type: !1967, isLocal: true, isDefinition: true)
!1966 = !DIFile(filename: "./include/trace/events/lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bb4e6643de3c3749267f6f3b5a53bfe0")
!1967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !914, size: 224, elements: !1968)
!1968 = !{!1969}
!1969 = !DISubrange(count: 28)
!1970 = !DIGlobalVariableExpression(var: !1971, expr: !DIExpression())
!1971 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_contention_begin241", scope: !1972, file: !1966, line: 95, type: !43, isLocal: true, isDefinition: true)
!1972 = distinct !DISubprogram(name: "trace_contention_begin", scope: !1966, file: !1966, line: 95, type: !1973, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1975)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{null, !43, !7}
!1975 = !{!1976, !1977, !1978, !1981, !1984, !1986, !1988, !1991, !1994, !1996, !1997}
!1976 = !DILocalVariable(name: "lock", arg: 1, scope: !1972, file: !1966, line: 95, type: !43)
!1977 = !DILocalVariable(name: "flags", arg: 2, scope: !1972, file: !1966, line: 95, type: !7)
!1978 = !DILocalVariable(name: "__idx", scope: !1979, file: !1966, line: 95, type: !78)
!1979 = distinct !DILexicalBlock(scope: !1980, file: !1966, line: 95, column: 1)
!1980 = distinct !DILexicalBlock(scope: !1972, file: !1966, line: 95, column: 1)
!1981 = !DILocalVariable(name: "pscr_ret__", scope: !1982, file: !1966, line: 95, type: !78)
!1982 = distinct !DILexicalBlock(scope: !1983, file: !1966, line: 95, column: 1)
!1983 = distinct !DILexicalBlock(scope: !1979, file: !1966, line: 95, column: 1)
!1984 = !DILocalVariable(name: "__vpp_verify", scope: !1985, file: !1966, line: 95, type: !574)
!1985 = distinct !DILexicalBlock(scope: !1982, file: !1966, line: 95, column: 1)
!1986 = !DILocalVariable(name: "pfo_val__", scope: !1987, file: !1966, line: 95, type: !61)
!1987 = distinct !DILexicalBlock(scope: !1982, file: !1966, line: 95, column: 1)
!1988 = !DILocalVariable(name: "__ret_warn_on", scope: !1989, file: !1966, line: 95, type: !78)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !1966, line: 95, column: 1)
!1990 = distinct !DILexicalBlock(scope: !1979, file: !1966, line: 95, column: 1)
!1991 = !DILocalVariable(name: "__flags", scope: !1992, file: !1966, line: 95, type: !78)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !1966, line: 95, column: 1)
!1993 = distinct !DILexicalBlock(scope: !1989, file: !1966, line: 95, column: 1)
!1994 = !DILocalVariable(name: "it_func_ptr", scope: !1995, file: !1966, line: 95, type: !1904)
!1995 = distinct !DILexicalBlock(scope: !1979, file: !1966, line: 95, column: 1)
!1996 = !DILocalVariable(name: "__data", scope: !1995, file: !1966, line: 95, type: !43)
!1997 = !DILocalVariable(name: "__UNIQUE_ID_rcu239", scope: !1998, file: !1966, line: 95, type: !1904)
!1998 = distinct !DILexicalBlock(scope: !1995, file: !1966, line: 95, column: 1)
!1999 = !DIGlobalVariableExpression(var: !2000, expr: !DIExpression())
!2000 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace242", scope: !1972, file: !1966, line: 95, type: !43, isLocal: true, isDefinition: true)
!2001 = !DIGlobalVariableExpression(var: !2002, expr: !DIExpression())
!2002 = distinct !DIGlobalVariable(scope: null, file: !2003, line: 1642, type: !2004, isLocal: true, isDefinition: true)
!2003 = !DIFile(filename: "kernel/locking/rtmutex.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac91fa382df9b675c798865e370e198e")
!2004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !914, size: 216, elements: !2005)
!2005 = !{!2006}
!2006 = !DISubrange(count: 27)
!2007 = !DIGlobalVariableExpression(var: !2008, expr: !DIExpression())
!2008 = distinct !DIGlobalVariable(scope: null, file: !2003, line: 1642, type: !2009, isLocal: true, isDefinition: true)
!2009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !914, size: 200, elements: !2010)
!2010 = !{!2011}
!2011 = !DISubrange(count: 25)
!2012 = !DIGlobalVariableExpression(var: !2013, expr: !DIExpression())
!2013 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_contention_end249", scope: !2014, file: !1966, line: 122, type: !43, isLocal: true, isDefinition: true)
!2014 = distinct !DISubprogram(name: "trace_contention_end", scope: !1966, file: !1966, line: 122, type: !2015, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2017)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{null, !43, !78}
!2017 = !{!2018, !2019, !2020, !2023, !2026, !2028, !2030, !2033, !2036, !2038, !2039}
!2018 = !DILocalVariable(name: "lock", arg: 1, scope: !2014, file: !1966, line: 122, type: !43)
!2019 = !DILocalVariable(name: "ret", arg: 2, scope: !2014, file: !1966, line: 122, type: !78)
!2020 = !DILocalVariable(name: "__idx", scope: !2021, file: !1966, line: 122, type: !78)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !1966, line: 122, column: 1)
!2022 = distinct !DILexicalBlock(scope: !2014, file: !1966, line: 122, column: 1)
!2023 = !DILocalVariable(name: "pscr_ret__", scope: !2024, file: !1966, line: 122, type: !78)
!2024 = distinct !DILexicalBlock(scope: !2025, file: !1966, line: 122, column: 1)
!2025 = distinct !DILexicalBlock(scope: !2021, file: !1966, line: 122, column: 1)
!2026 = !DILocalVariable(name: "__vpp_verify", scope: !2027, file: !1966, line: 122, type: !574)
!2027 = distinct !DILexicalBlock(scope: !2024, file: !1966, line: 122, column: 1)
!2028 = !DILocalVariable(name: "pfo_val__", scope: !2029, file: !1966, line: 122, type: !61)
!2029 = distinct !DILexicalBlock(scope: !2024, file: !1966, line: 122, column: 1)
!2030 = !DILocalVariable(name: "__ret_warn_on", scope: !2031, file: !1966, line: 122, type: !78)
!2031 = distinct !DILexicalBlock(scope: !2032, file: !1966, line: 122, column: 1)
!2032 = distinct !DILexicalBlock(scope: !2021, file: !1966, line: 122, column: 1)
!2033 = !DILocalVariable(name: "__flags", scope: !2034, file: !1966, line: 122, type: !78)
!2034 = distinct !DILexicalBlock(scope: !2035, file: !1966, line: 122, column: 1)
!2035 = distinct !DILexicalBlock(scope: !2031, file: !1966, line: 122, column: 1)
!2036 = !DILocalVariable(name: "it_func_ptr", scope: !2037, file: !1966, line: 122, type: !1904)
!2037 = distinct !DILexicalBlock(scope: !2021, file: !1966, line: 122, column: 1)
!2038 = !DILocalVariable(name: "__data", scope: !2037, file: !1966, line: 122, type: !43)
!2039 = !DILocalVariable(name: "__UNIQUE_ID_rcu247", scope: !2040, file: !1966, line: 122, type: !1904)
!2040 = distinct !DILexicalBlock(scope: !2037, file: !1966, line: 122, column: 1)
!2041 = !DIGlobalVariableExpression(var: !2042, expr: !DIExpression())
!2042 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace250", scope: !2014, file: !1966, line: 122, type: !43, isLocal: true, isDefinition: true)
!2043 = !DIGlobalVariableExpression(var: !2044, expr: !DIExpression())
!2044 = distinct !DIGlobalVariable(scope: null, file: !30, line: 137, type: !2045, isLocal: true, isDefinition: true)
!2045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !914, size: 256, elements: !1777)
!2046 = !DIGlobalVariableExpression(var: !2047, expr: !DIExpression())
!2047 = distinct !DIGlobalVariable(name: "prev_max", scope: !2048, file: !2003, line: 682, type: !78, isLocal: true, isDefinition: true)
!2048 = distinct !DISubprogram(name: "rt_mutex_adjust_prio_chain", scope: !2003, file: !2003, line: 655, type: !2049, scopeLine: 661, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2051)
!2049 = !DISubroutineType(types: !2050)
!2050 = !{!78, !50, !29, !1285, !1285, !1273, !50}
!2051 = !{!2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069}
!2052 = !DILocalVariable(name: "task", arg: 1, scope: !2048, file: !2003, line: 655, type: !50)
!2053 = !DILocalVariable(name: "chwalk", arg: 2, scope: !2048, file: !2003, line: 656, type: !29)
!2054 = !DILocalVariable(name: "orig_lock", arg: 3, scope: !2048, file: !2003, line: 657, type: !1285)
!2055 = !DILocalVariable(name: "next_lock", arg: 4, scope: !2048, file: !2003, line: 658, type: !1285)
!2056 = !DILocalVariable(name: "orig_waiter", arg: 5, scope: !2048, file: !2003, line: 659, type: !1273)
!2057 = !DILocalVariable(name: "top_task", arg: 6, scope: !2048, file: !2003, line: 660, type: !50)
!2058 = !DILocalVariable(name: "waiter", scope: !2048, file: !2003, line: 662, type: !1273)
!2059 = !DILocalVariable(name: "top_waiter", scope: !2048, file: !2003, line: 662, type: !1273)
!2060 = !DILocalVariable(name: "prerequeue_top_waiter", scope: !2048, file: !2003, line: 663, type: !1273)
!2061 = !DILocalVariable(name: "ret", scope: !2048, file: !2003, line: 664, type: !78)
!2062 = !DILocalVariable(name: "depth", scope: !2048, file: !2003, line: 664, type: !78)
!2063 = !DILocalVariable(name: "lock", scope: !2048, file: !2003, line: 665, type: !1285)
!2064 = !DILocalVariable(name: "detect_deadlock", scope: !2048, file: !2003, line: 666, type: !928)
!2065 = !DILocalVariable(name: "requeue", scope: !2048, file: !2003, line: 667, type: !928)
!2066 = !DILabel(scope: !2048, name: "again", file: !2003, line: 677)
!2067 = !DILabel(scope: !2048, name: "retry", file: !2003, line: 705)
!2068 = !DILabel(scope: !2048, name: "out_unlock_pi", file: !2003, line: 1045)
!2069 = !DILabel(scope: !2048, name: "out_put_task", file: !2003, line: 1047)
!2070 = !DIGlobalVariableExpression(var: !2071, expr: !DIExpression())
!2071 = distinct !DIGlobalVariable(scope: null, file: !2003, line: 690, type: !2072, isLocal: true, isDefinition: true)
!2072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !914, size: 376, elements: !2073)
!2073 = !{!2074}
!2074 = !DISubrange(count: 47)
!2075 = !DIGlobalVariableExpression(var: !2076, expr: !DIExpression())
!2076 = distinct !DIGlobalVariable(name: "put_task_map", scope: !2077, file: !2078, line: 134, type: !2083, isLocal: true, isDefinition: true)
!2077 = distinct !DISubprogram(name: "put_task_struct", scope: !2078, file: !2078, line: 124, type: !2079, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2081)
!2078 = !DIFile(filename: "./include/linux/sched/task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ef3d4d4bfe7d22703d2dead2224ab376")
!2079 = !DISubroutineType(types: !2080)
!2080 = !{null, !50}
!2081 = !{!2082}
!2082 = !DILocalVariable(name: "t", arg: 1, scope: !2077, file: !2078, line: 124, type: !50)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1959, line: 211, elements: !440)
!2084 = !DIGlobalVariableExpression(var: !2085, expr: !DIExpression())
!2085 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule261", scope: !2086, file: !2003, line: 552, type: !43, isLocal: true, isDefinition: true)
!2086 = distinct !DISubprogram(name: "rt_mutex_wake_up_q", scope: !2003, file: !2003, line: 540, type: !2087, scopeLine: 541, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2100)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{null, !2089}
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_wake_q_head", file: !30, line: 67, size: 192, elements: !2091)
!2091 = !{!2092, !2099}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2090, file: !30, line: 68, baseType: !2093, size: 128)
!2093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_head", file: !2094, line: 38, size: 128, elements: !2095)
!2094 = !DIFile(filename: "./include/linux/sched/wake_q.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d0534a004845bdc2d4b9ab1b4e9297e")
!2095 = !{!2096, !2097}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2093, file: !2094, line: 39, baseType: !44, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "lastp", scope: !2093, file: !2094, line: 40, baseType: !2098, size: 64, offset: 64)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "rtlock_task", scope: !2090, file: !30, line: 69, baseType: !50, size: 64, offset: 128)
!2100 = !{!2101}
!2101 = !DILocalVariable(name: "wqh", arg: 1, scope: !2086, file: !2003, line: 540, type: !2089)
!2102 = !{!"rsp"}
!2103 = !{i32 7, !"Dwarf Version", i32 5}
!2104 = !{i32 2, !"Debug Info Version", i32 3}
!2105 = !{i32 1, !"wchar_size", i32 2}
!2106 = !{i32 8, !"cf-protection-branch", i32 1}
!2107 = !{i32 4, !"function_return_thunk_extern", i32 1}
!2108 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!2109 = !{i32 1, !"Code Model", i32 2}
!2110 = !{i32 1, !"override-stack-alignment", i32 8}
!2111 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!2112 = distinct !DISubprogram(name: "rt_mutex_base_init", scope: !3, file: !3, line: 37, type: !2113, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2115)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{null, !1285}
!2115 = !{!2116}
!2116 = !DILocalVariable(name: "rtb", arg: 1, scope: !2112, file: !3, line: 37, type: !1285)
!2117 = !DILocation(line: 37, column: 47, scope: !2112)
!2118 = !DILocation(line: 39, column: 23, scope: !2112)
!2119 = !DILocation(line: 39, column: 2, scope: !2112)
!2120 = !DILocation(line: 40, column: 1, scope: !2112)
!2121 = distinct !DISubprogram(name: "__rt_mutex_base_init", scope: !30, file: !30, line: 179, type: !2113, scopeLine: 180, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2122)
!2122 = !{!2123}
!2123 = !DILocalVariable(name: "lock", arg: 1, scope: !2121, file: !30, line: 179, type: !1285)
!2124 = !DILocation(line: 179, column: 63, scope: !2121)
!2125 = !DILocation(line: 181, column: 2, scope: !2121)
!2126 = !DILocation(line: 181, column: 2, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2121, file: !30, line: 181, column: 2)
!2128 = !DILocation(line: 182, column: 2, scope: !2121)
!2129 = !DILocation(line: 182, column: 8, scope: !2121)
!2130 = !DILocation(line: 182, column: 18, scope: !2121)
!2131 = !DILocation(line: 183, column: 2, scope: !2121)
!2132 = !DILocation(line: 183, column: 8, scope: !2121)
!2133 = !DILocation(line: 183, column: 14, scope: !2121)
!2134 = !DILocation(line: 184, column: 1, scope: !2121)
!2135 = distinct !DISubprogram(name: "rt_mutex_lock", scope: !3, file: !3, line: 69, type: !2136, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2138)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{null, !1895}
!2138 = !{!2139}
!2139 = !DILocalVariable(name: "lock", arg: 1, scope: !2135, file: !3, line: 69, type: !1895)
!2140 = !DILocation(line: 69, column: 45, scope: !2135)
!2141 = !DILocation(line: 71, column: 25, scope: !2135)
!2142 = !DILocation(line: 71, column: 2, scope: !2135)
!2143 = !DILocation(line: 72, column: 1, scope: !2135)
!2144 = distinct !DISubprogram(name: "__rt_mutex_lock_common", scope: !3, file: !3, line: 22, type: !2145, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2148)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{!78, !1895, !7, !2147, !7}
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2148 = !{!2149, !2150, !2151, !2152, !2153}
!2149 = !DILocalVariable(name: "lock", arg: 1, scope: !2144, file: !3, line: 22, type: !1895)
!2150 = !DILocalVariable(name: "state", arg: 2, scope: !2144, file: !3, line: 23, type: !7)
!2151 = !DILocalVariable(name: "nest_lock", arg: 3, scope: !2144, file: !3, line: 24, type: !2147)
!2152 = !DILocalVariable(name: "subclass", arg: 4, scope: !2144, file: !3, line: 25, type: !7)
!2153 = !DILocalVariable(name: "ret", scope: !2144, file: !3, line: 27, type: !78)
!2154 = !DILocation(line: 22, column: 68, scope: !2144)
!2155 = !DILocation(line: 23, column: 22, scope: !2144)
!2156 = !DILocation(line: 24, column: 29, scope: !2144)
!2157 = !DILocation(line: 25, column: 22, scope: !2144)
!2158 = !DILocation(line: 27, column: 2, scope: !2144)
!2159 = !DILocation(line: 27, column: 6, scope: !2144)
!2160 = !DILocation(line: 29, column: 2, scope: !2144)
!2161 = !DILocation(line: 29, column: 2, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2144, file: !3, line: 29, column: 2)
!2163 = !DILocation(line: 30, column: 2, scope: !2144)
!2164 = !DILocation(line: 30, column: 2, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2144, file: !3, line: 30, column: 2)
!2166 = !DILocation(line: 31, column: 25, scope: !2144)
!2167 = !DILocation(line: 31, column: 31, scope: !2144)
!2168 = !DILocation(line: 31, column: 40, scope: !2144)
!2169 = !DILocation(line: 31, column: 8, scope: !2144)
!2170 = !DILocation(line: 31, column: 6, scope: !2144)
!2171 = !DILocation(line: 32, column: 6, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2144, file: !3, line: 32, column: 6)
!2173 = !DILocation(line: 32, column: 6, scope: !2144)
!2174 = !DILocation(line: 33, column: 3, scope: !2172)
!2175 = !DILocation(line: 33, column: 3, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2172, file: !3, line: 33, column: 3)
!2177 = !DILocation(line: 34, column: 9, scope: !2144)
!2178 = !DILocation(line: 35, column: 1, scope: !2144)
!2179 = !DILocation(line: 34, column: 2, scope: !2144)
!2180 = distinct !DISubprogram(name: "rt_mutex_lock_interruptible", scope: !3, file: !3, line: 85, type: !2181, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2183)
!2181 = !DISubroutineType(types: !2182)
!2182 = !{!78, !1895}
!2183 = !{!2184}
!2184 = !DILocalVariable(name: "lock", arg: 1, scope: !2180, file: !3, line: 85, type: !1895)
!2185 = !DILocation(line: 85, column: 58, scope: !2180)
!2186 = !DILocation(line: 87, column: 32, scope: !2180)
!2187 = !DILocation(line: 87, column: 9, scope: !2180)
!2188 = !DILocation(line: 87, column: 2, scope: !2180)
!2189 = distinct !DISubprogram(name: "rt_mutex_lock_killable", scope: !3, file: !3, line: 100, type: !2181, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2190)
!2190 = !{!2191}
!2191 = !DILocalVariable(name: "lock", arg: 1, scope: !2189, file: !3, line: 100, type: !1895)
!2192 = !DILocation(line: 100, column: 53, scope: !2189)
!2193 = !DILocation(line: 102, column: 32, scope: !2189)
!2194 = !DILocation(line: 102, column: 9, scope: !2189)
!2195 = !DILocation(line: 102, column: 2, scope: !2189)
!2196 = distinct !DISubprogram(name: "rt_mutex_trylock", scope: !3, file: !3, line: 118, type: !2181, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2197)
!2197 = !{!2198, !2199}
!2198 = !DILocalVariable(name: "lock", arg: 1, scope: !2196, file: !3, line: 118, type: !1895)
!2199 = !DILocalVariable(name: "ret", scope: !2196, file: !3, line: 120, type: !78)
!2200 = !DILocation(line: 118, column: 47, scope: !2196)
!2201 = !DILocation(line: 120, column: 2, scope: !2196)
!2202 = !DILocation(line: 120, column: 6, scope: !2196)
!2203 = !DILocation(line: 125, column: 28, scope: !2196)
!2204 = !DILocation(line: 125, column: 34, scope: !2196)
!2205 = !DILocation(line: 125, column: 8, scope: !2196)
!2206 = !DILocation(line: 125, column: 6, scope: !2196)
!2207 = !DILocation(line: 126, column: 6, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2196, file: !3, line: 126, column: 6)
!2209 = !DILocation(line: 126, column: 6, scope: !2196)
!2210 = !DILocation(line: 127, column: 3, scope: !2208)
!2211 = !DILocation(line: 127, column: 3, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2208, file: !3, line: 127, column: 3)
!2213 = !DILocation(line: 129, column: 9, scope: !2196)
!2214 = !DILocation(line: 130, column: 1, scope: !2196)
!2215 = !DILocation(line: 129, column: 2, scope: !2196)
!2216 = distinct !DISubprogram(name: "__rt_mutex_trylock", scope: !2003, file: !2003, line: 1376, type: !2217, scopeLine: 1377, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2219)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{!78, !1285}
!2219 = !{!2220}
!2220 = !DILocalVariable(name: "lock", arg: 1, scope: !2216, file: !2003, line: 1376, type: !1285)
!2221 = !DILocation(line: 1376, column: 69, scope: !2216)
!2222 = !DILocation(line: 1378, column: 6, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2216, file: !2003, line: 1378, column: 6)
!2224 = !DILocation(line: 1378, column: 6, scope: !2216)
!2225 = !DILocation(line: 1379, column: 3, scope: !2223)
!2226 = !DILocation(line: 1381, column: 30, scope: !2216)
!2227 = !DILocation(line: 1381, column: 9, scope: !2216)
!2228 = !DILocation(line: 1381, column: 2, scope: !2216)
!2229 = !DILocation(line: 1382, column: 1, scope: !2216)
!2230 = distinct !DISubprogram(name: "rt_mutex_unlock", scope: !3, file: !3, line: 138, type: !2136, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2231)
!2231 = !{!2232}
!2232 = !DILocalVariable(name: "lock", arg: 1, scope: !2230, file: !3, line: 138, type: !1895)
!2233 = !DILocation(line: 138, column: 47, scope: !2230)
!2234 = !DILocation(line: 140, column: 2, scope: !2230)
!2235 = !DILocation(line: 140, column: 2, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2230, file: !3, line: 140, column: 2)
!2237 = !DILocation(line: 141, column: 21, scope: !2230)
!2238 = !DILocation(line: 141, column: 27, scope: !2230)
!2239 = !DILocation(line: 141, column: 2, scope: !2230)
!2240 = !DILocation(line: 142, column: 1, scope: !2230)
!2241 = distinct !DISubprogram(name: "__rt_mutex_unlock", scope: !2003, file: !2003, line: 1448, type: !2113, scopeLine: 1449, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2242)
!2242 = !{!2243}
!2243 = !DILocalVariable(name: "lock", arg: 1, scope: !2241, file: !2003, line: 1448, type: !1285)
!2244 = !DILocation(line: 1448, column: 69, scope: !2241)
!2245 = !DILocation(line: 1450, column: 6, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2241, file: !2003, line: 1450, column: 6)
!2247 = !DILocation(line: 1450, column: 6, scope: !2241)
!2248 = !DILocation(line: 1451, column: 3, scope: !2246)
!2249 = !DILocation(line: 1453, column: 22, scope: !2241)
!2250 = !DILocation(line: 1453, column: 2, scope: !2241)
!2251 = !DILocation(line: 1454, column: 1, scope: !2241)
!2252 = distinct !DISubprogram(name: "rt_mutex_futex_trylock", scope: !3, file: !3, line: 148, type: !2217, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2253)
!2253 = !{!2254}
!2254 = !DILocalVariable(name: "lock", arg: 1, scope: !2252, file: !3, line: 148, type: !1285)
!2255 = !DILocation(line: 148, column: 58, scope: !2252)
!2256 = !DILocation(line: 150, column: 30, scope: !2252)
!2257 = !DILocation(line: 150, column: 9, scope: !2252)
!2258 = !DILocation(line: 150, column: 2, scope: !2252)
!2259 = distinct !DISubprogram(name: "rt_mutex_slowtrylock", scope: !2003, file: !2003, line: 1350, type: !2217, scopeLine: 1351, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2260)
!2260 = !{!2261, !2262, !2263, !2264, !2267, !2268, !2271}
!2261 = !DILocalVariable(name: "lock", arg: 1, scope: !2259, file: !2003, line: 1350, type: !1285)
!2262 = !DILocalVariable(name: "flags", scope: !2259, file: !2003, line: 1352, type: !58)
!2263 = !DILocalVariable(name: "ret", scope: !2259, file: !2003, line: 1353, type: !78)
!2264 = !DILocalVariable(name: "__dummy", scope: !2265, file: !2003, line: 1367, type: !58)
!2265 = distinct !DILexicalBlock(scope: !2266, file: !2003, line: 1367, column: 2)
!2266 = distinct !DILexicalBlock(scope: !2259, file: !2003, line: 1367, column: 2)
!2267 = !DILocalVariable(name: "__dummy2", scope: !2265, file: !2003, line: 1367, type: !58)
!2268 = !DILocalVariable(name: "__dummy", scope: !2269, file: !2003, line: 1371, type: !58)
!2269 = distinct !DILexicalBlock(scope: !2270, file: !2003, line: 1371, column: 2)
!2270 = distinct !DILexicalBlock(scope: !2259, file: !2003, line: 1371, column: 2)
!2271 = !DILocalVariable(name: "__dummy2", scope: !2269, file: !2003, line: 1371, type: !58)
!2272 = !DILocation(line: 1350, column: 63, scope: !2259)
!2273 = !DILocation(line: 1352, column: 2, scope: !2259)
!2274 = !DILocation(line: 1352, column: 16, scope: !2259)
!2275 = !DILocation(line: 1353, column: 2, scope: !2259)
!2276 = !DILocation(line: 1353, column: 6, scope: !2259)
!2277 = !DILocation(line: 1360, column: 21, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2259, file: !2003, line: 1360, column: 6)
!2279 = !DILocation(line: 1360, column: 6, scope: !2278)
!2280 = !DILocation(line: 1360, column: 6, scope: !2259)
!2281 = !DILocation(line: 1361, column: 3, scope: !2278)
!2282 = !DILocation(line: 1367, column: 2, scope: !2259)
!2283 = !DILocation(line: 1367, column: 2, scope: !2265)
!2284 = !DILocation(line: 1367, column: 2, scope: !2266)
!2285 = !DILocation(line: 1369, column: 31, scope: !2259)
!2286 = !DILocation(line: 1369, column: 8, scope: !2259)
!2287 = !DILocation(line: 1369, column: 6, scope: !2259)
!2288 = !DILocation(line: 1371, column: 2, scope: !2259)
!2289 = !DILocation(line: 1371, column: 2, scope: !2269)
!2290 = !DILocation(line: 1371, column: 2, scope: !2270)
!2291 = !DILocation(line: 1373, column: 9, scope: !2259)
!2292 = !DILocation(line: 1373, column: 2, scope: !2259)
!2293 = !DILocation(line: 1374, column: 1, scope: !2259)
!2294 = distinct !DISubprogram(name: "__rt_mutex_futex_trylock", scope: !3, file: !3, line: 153, type: !2217, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2295)
!2295 = !{!2296}
!2296 = !DILocalVariable(name: "lock", arg: 1, scope: !2294, file: !3, line: 153, type: !1285)
!2297 = !DILocation(line: 153, column: 60, scope: !2294)
!2298 = !DILocation(line: 155, column: 32, scope: !2294)
!2299 = !DILocation(line: 155, column: 9, scope: !2294)
!2300 = !DILocation(line: 155, column: 2, scope: !2294)
!2301 = distinct !DISubprogram(name: "__rt_mutex_slowtrylock", scope: !2003, file: !2003, line: 1334, type: !2217, scopeLine: 1335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2302)
!2302 = !{!2303, !2304}
!2303 = !DILocalVariable(name: "lock", arg: 1, scope: !2301, file: !2003, line: 1334, type: !1285)
!2304 = !DILocalVariable(name: "ret", scope: !2301, file: !2003, line: 1336, type: !78)
!2305 = !DILocation(line: 1334, column: 65, scope: !2301)
!2306 = !DILocation(line: 1336, column: 2, scope: !2301)
!2307 = !DILocation(line: 1336, column: 6, scope: !2301)
!2308 = !DILocation(line: 1336, column: 33, scope: !2301)
!2309 = !DILocation(line: 1336, column: 39, scope: !2301)
!2310 = !DILocation(line: 1336, column: 12, scope: !2301)
!2311 = !DILocation(line: 1342, column: 25, scope: !2301)
!2312 = !DILocation(line: 1342, column: 2, scope: !2301)
!2313 = !DILocation(line: 1344, column: 9, scope: !2301)
!2314 = !DILocation(line: 1345, column: 1, scope: !2301)
!2315 = !DILocation(line: 1344, column: 2, scope: !2301)
!2316 = distinct !DISubprogram(name: "__rt_mutex_futex_unlock", scope: !3, file: !3, line: 165, type: !2317, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2319)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{!928, !1285, !2089}
!2319 = !{!2320, !2321}
!2320 = !DILocalVariable(name: "lock", arg: 1, scope: !2316, file: !3, line: 165, type: !1285)
!2321 = !DILocalVariable(name: "wqh", arg: 2, scope: !2316, file: !3, line: 166, type: !2089)
!2322 = !DILocation(line: 165, column: 60, scope: !2316)
!2323 = !DILocation(line: 166, column: 33, scope: !2316)
!2324 = !DILocation(line: 168, column: 2, scope: !2316)
!2325 = !DILocation(line: 168, column: 2, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2316, file: !3, line: 168, column: 2)
!2327 = !DILocation(line: 170, column: 24, scope: !2316)
!2328 = !DILocation(line: 170, column: 2, scope: !2316)
!2329 = !DILocation(line: 172, column: 28, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2316, file: !3, line: 172, column: 6)
!2331 = !DILocation(line: 172, column: 7, scope: !2330)
!2332 = !DILocation(line: 172, column: 6, scope: !2316)
!2333 = !DILocation(line: 173, column: 3, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2330, file: !3, line: 172, column: 35)
!2335 = !DILocation(line: 173, column: 9, scope: !2334)
!2336 = !DILocation(line: 173, column: 15, scope: !2334)
!2337 = !DILocation(line: 174, column: 3, scope: !2334)
!2338 = !DILocation(line: 183, column: 26, scope: !2316)
!2339 = !DILocation(line: 183, column: 31, scope: !2316)
!2340 = !DILocation(line: 183, column: 2, scope: !2316)
!2341 = !DILocation(line: 185, column: 2, scope: !2316)
!2342 = !DILocation(line: 186, column: 1, scope: !2316)
!2343 = distinct !DISubprogram(name: "debug_rt_mutex_unlock", scope: !30, file: !30, line: 187, type: !2113, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2344)
!2344 = !{!2345}
!2345 = !DILocalVariable(name: "lock", arg: 1, scope: !2343, file: !30, line: 187, type: !1285)
!2346 = !DILocation(line: 187, column: 64, scope: !2343)
!2347 = !DILocation(line: 191, column: 1, scope: !2343)
!2348 = distinct !DISubprogram(name: "rt_mutex_has_waiters", scope: !30, file: !30, line: 110, type: !2217, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2349)
!2349 = !{!2350}
!2350 = !DILocalVariable(name: "lock", arg: 1, scope: !2348, file: !30, line: 110, type: !1285)
!2351 = !DILocation(line: 110, column: 62, scope: !2348)
!2352 = !DILocation(line: 112, column: 10, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2348, file: !30, line: 112, column: 10)
!2354 = !DILocation(line: 112, column: 10, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2353, file: !30, line: 112, column: 10)
!2356 = !DILocation(line: 112, column: 10, scope: !2348)
!2357 = !DILocation(line: 112, column: 9, scope: !2348)
!2358 = !DILocation(line: 112, column: 2, scope: !2348)
!2359 = distinct !DISubprogram(name: "mark_wakeup_next_waiter", scope: !2003, file: !2003, line: 1288, type: !2360, scopeLine: 1290, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2362)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{null, !2089, !1285}
!2362 = !{!2363, !2364, !2365}
!2363 = !DILocalVariable(name: "wqh", arg: 1, scope: !2359, file: !2003, line: 1288, type: !2089)
!2364 = !DILocalVariable(name: "lock", arg: 2, scope: !2359, file: !2003, line: 1289, type: !1285)
!2365 = !DILocalVariable(name: "waiter", scope: !2359, file: !2003, line: 1291, type: !1273)
!2366 = !DILocation(line: 1288, column: 68, scope: !2359)
!2367 = !DILocation(line: 1289, column: 32, scope: !2359)
!2368 = !DILocation(line: 1291, column: 2, scope: !2359)
!2369 = !DILocation(line: 1291, column: 26, scope: !2359)
!2370 = !DILocation(line: 1293, column: 2, scope: !2359)
!2371 = !DILocation(line: 1293, column: 2, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2359, file: !2003, line: 1293, column: 2)
!2373 = !DILocation(line: 1295, column: 2, scope: !2359)
!2374 = !DILocation(line: 1297, column: 31, scope: !2359)
!2375 = !DILocation(line: 1297, column: 11, scope: !2359)
!2376 = !DILocation(line: 1297, column: 9, scope: !2359)
!2377 = !DILocation(line: 1306, column: 22, scope: !2359)
!2378 = !DILocation(line: 1306, column: 31, scope: !2359)
!2379 = !DILocation(line: 1306, column: 2, scope: !2359)
!2380 = !DILocation(line: 1307, column: 23, scope: !2359)
!2381 = !DILocation(line: 1307, column: 29, scope: !2359)
!2382 = !DILocation(line: 1307, column: 2, scope: !2359)
!2383 = !DILocation(line: 1317, column: 2, scope: !2359)
!2384 = !DILocation(line: 1317, column: 8, scope: !2359)
!2385 = !DILocation(line: 1317, column: 14, scope: !2359)
!2386 = !DILocation(line: 1329, column: 2, scope: !2359)
!2387 = !DILocation(line: 1329, column: 2, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2359, file: !2003, line: 1329, column: 2)
!2389 = !{i64 2153643102}
!2390 = !DILocation(line: 1330, column: 22, scope: !2359)
!2391 = !DILocation(line: 1330, column: 27, scope: !2359)
!2392 = !DILocation(line: 1330, column: 2, scope: !2359)
!2393 = !DILocation(line: 1331, column: 2, scope: !2359)
!2394 = !DILocation(line: 1332, column: 1, scope: !2359)
!2395 = distinct !DISubprogram(name: "rt_mutex_futex_unlock", scope: !3, file: !3, line: 188, type: !2113, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2396)
!2396 = !{!2397, !2398, !2399, !2400, !2401, !2404, !2405, !2408}
!2397 = !DILocalVariable(name: "lock", arg: 1, scope: !2395, file: !3, line: 188, type: !1285)
!2398 = !DILocalVariable(name: "wqh", scope: !2395, file: !3, line: 190, type: !2090)
!2399 = !DILocalVariable(name: "flags", scope: !2395, file: !3, line: 191, type: !58)
!2400 = !DILocalVariable(name: "postunlock", scope: !2395, file: !3, line: 192, type: !928)
!2401 = !DILocalVariable(name: "__dummy", scope: !2402, file: !3, line: 194, type: !58)
!2402 = distinct !DILexicalBlock(scope: !2403, file: !3, line: 194, column: 2)
!2403 = distinct !DILexicalBlock(scope: !2395, file: !3, line: 194, column: 2)
!2404 = !DILocalVariable(name: "__dummy2", scope: !2402, file: !3, line: 194, type: !58)
!2405 = !DILocalVariable(name: "__dummy", scope: !2406, file: !3, line: 196, type: !58)
!2406 = distinct !DILexicalBlock(scope: !2407, file: !3, line: 196, column: 2)
!2407 = distinct !DILexicalBlock(scope: !2395, file: !3, line: 196, column: 2)
!2408 = !DILocalVariable(name: "__dummy2", scope: !2406, file: !3, line: 196, type: !58)
!2409 = !DILocation(line: 188, column: 58, scope: !2395)
!2410 = !DILocation(line: 190, column: 2, scope: !2395)
!2411 = !DILocation(line: 191, column: 2, scope: !2395)
!2412 = !DILocation(line: 191, column: 16, scope: !2395)
!2413 = !DILocation(line: 192, column: 2, scope: !2395)
!2414 = !DILocation(line: 192, column: 7, scope: !2395)
!2415 = !DILocation(line: 194, column: 2, scope: !2395)
!2416 = !DILocation(line: 194, column: 2, scope: !2402)
!2417 = !DILocation(line: 194, column: 2, scope: !2403)
!2418 = !DILocation(line: 195, column: 39, scope: !2395)
!2419 = !DILocation(line: 195, column: 15, scope: !2395)
!2420 = !DILocation(line: 195, column: 13, scope: !2395)
!2421 = !DILocation(line: 196, column: 2, scope: !2395)
!2422 = !DILocation(line: 196, column: 2, scope: !2406)
!2423 = !DILocation(line: 196, column: 2, scope: !2407)
!2424 = !DILocation(line: 198, column: 6, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2395, file: !3, line: 198, column: 6)
!2426 = !{i8 0, i8 2}
!2427 = !DILocation(line: 198, column: 6, scope: !2395)
!2428 = !DILocation(line: 199, column: 3, scope: !2425)
!2429 = !DILocation(line: 200, column: 1, scope: !2395)
!2430 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !2431, file: !2431, line: 32, type: !2432, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2431 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!58, !2434}
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!2435 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !2431, file: !2431, line: 43, type: !2436, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{null, !2434, !58}
!2438 = distinct !DISubprogram(name: "rt_mutex_postunlock", scope: !3, file: !3, line: 479, type: !2087, scopeLine: 480, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2439)
!2439 = !{!2440}
!2440 = !DILocalVariable(name: "wqh", arg: 1, scope: !2438, file: !3, line: 479, type: !2089)
!2441 = !DILocation(line: 479, column: 57, scope: !2438)
!2442 = !DILocation(line: 481, column: 21, scope: !2438)
!2443 = !DILocation(line: 481, column: 2, scope: !2438)
!2444 = !DILocation(line: 482, column: 1, scope: !2438)
!2445 = distinct !DISubprogram(name: "__rt_mutex_init", scope: !3, file: !3, line: 213, type: !2446, scopeLine: 215, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2449)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{null, !1895, !931, !2448}
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!2449 = !{!2450, !2451, !2452}
!2450 = !DILocalVariable(name: "lock", arg: 1, scope: !2445, file: !3, line: 213, type: !1895)
!2451 = !DILocalVariable(name: "name", arg: 2, scope: !2445, file: !3, line: 213, type: !931)
!2452 = !DILocalVariable(name: "key", arg: 3, scope: !2445, file: !3, line: 214, type: !2448)
!2453 = !DILocation(line: 213, column: 47, scope: !2445)
!2454 = !DILocation(line: 213, column: 65, scope: !2445)
!2455 = !DILocation(line: 214, column: 32, scope: !2445)
!2456 = !DILocation(line: 216, column: 37, scope: !2445)
!2457 = !DILocation(line: 216, column: 2, scope: !2445)
!2458 = !DILocation(line: 217, column: 24, scope: !2445)
!2459 = !DILocation(line: 217, column: 30, scope: !2445)
!2460 = !DILocation(line: 217, column: 2, scope: !2445)
!2461 = !DILocation(line: 218, column: 2, scope: !2445)
!2462 = !DILocation(line: 218, column: 2, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2445, file: !3, line: 218, column: 2)
!2464 = !DILocation(line: 219, column: 1, scope: !2445)
!2465 = distinct !DISubprogram(name: "debug_check_no_locks_freed", scope: !2466, file: !2466, line: 65, type: !2467, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2469)
!2466 = !DIFile(filename: "./include/linux/debug_locks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f2ca58272fdb5544dbc38c2c64cca117")
!2467 = !DISubroutineType(types: !2468)
!2468 = !{null, !574, !58}
!2469 = !{!2470, !2471}
!2470 = !DILocalVariable(name: "from", arg: 1, scope: !2465, file: !2466, line: 65, type: !574)
!2471 = !DILocalVariable(name: "len", arg: 2, scope: !2465, file: !2466, line: 65, type: !58)
!2472 = !DILocation(line: 65, column: 40, scope: !2465)
!2473 = !DILocation(line: 65, column: 60, scope: !2465)
!2474 = !DILocation(line: 67, column: 1, scope: !2465)
!2475 = !DILocation(line: 236, column: 63, scope: !1952)
!2476 = !DILocation(line: 237, column: 26, scope: !1952)
!2477 = !DILocation(line: 241, column: 23, scope: !1952)
!2478 = !DILocation(line: 241, column: 2, scope: !1952)
!2479 = !DILocation(line: 251, column: 2, scope: !1952)
!2480 = !DILocation(line: 251, column: 2, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !1952, file: !3, line: 251, column: 2)
!2482 = !DILocation(line: 252, column: 21, scope: !1952)
!2483 = !DILocation(line: 252, column: 27, scope: !1952)
!2484 = !DILocation(line: 252, column: 2, scope: !1952)
!2485 = !DILocation(line: 253, column: 1, scope: !1952)
!2486 = distinct !DISubprogram(name: "rt_mutex_set_owner", scope: !2003, file: !2003, line: 104, type: !1953, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2487)
!2487 = !{!2488, !2489, !2490, !2492}
!2488 = !DILocalVariable(name: "lock", arg: 1, scope: !2486, file: !2003, line: 104, type: !1285)
!2489 = !DILocalVariable(name: "owner", arg: 2, scope: !2486, file: !2003, line: 104, type: !50)
!2490 = !DILocalVariable(name: "__ai_ptr", scope: !2491, file: !2003, line: 110, type: !49)
!2491 = distinct !DILexicalBlock(scope: !2486, file: !2003, line: 110, column: 2)
!2492 = !DILocalVariable(name: "__ret", scope: !2493, file: !2003, line: 110, type: !50)
!2493 = distinct !DILexicalBlock(scope: !2491, file: !2003, line: 110, column: 2)
!2494 = !DILocation(line: 104, column: 42, scope: !2486)
!2495 = !DILocation(line: 104, column: 68, scope: !2486)
!2496 = !DILocation(line: 110, column: 2, scope: !2491)
!2497 = !DILocation(line: 110, column: 2, scope: !2493)
!2498 = !{i64 2153598067}
!2499 = !DILocation(line: 110, column: 2, scope: !2486)
!2500 = !DILocation(line: 111, column: 1, scope: !2486)
!2501 = distinct !DISubprogram(name: "rt_mutex_proxy_unlock", scope: !3, file: !3, line: 267, type: !2113, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2502)
!2502 = !{!2503}
!2503 = !DILocalVariable(name: "lock", arg: 1, scope: !2501, file: !3, line: 267, type: !1285)
!2504 = !DILocation(line: 267, column: 58, scope: !2501)
!2505 = !DILocation(line: 269, column: 30, scope: !2501)
!2506 = !DILocation(line: 269, column: 2, scope: !2501)
!2507 = !DILocation(line: 270, column: 23, scope: !2501)
!2508 = !DILocation(line: 270, column: 2, scope: !2501)
!2509 = !DILocation(line: 271, column: 1, scope: !2501)
!2510 = distinct !DISubprogram(name: "debug_rt_mutex_proxy_unlock", scope: !30, file: !30, line: 193, type: !2113, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2511)
!2511 = !{!2512}
!2512 = !DILocalVariable(name: "lock", arg: 1, scope: !2510, file: !30, line: 193, type: !1285)
!2513 = !DILocation(line: 193, column: 70, scope: !2510)
!2514 = !DILocation(line: 197, column: 1, scope: !2510)
!2515 = distinct !DISubprogram(name: "rt_mutex_clear_owner", scope: !2003, file: !2003, line: 113, type: !2113, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2516)
!2516 = !{!2517}
!2517 = !DILocalVariable(name: "lock", arg: 1, scope: !2515, file: !2003, line: 113, type: !1285)
!2518 = !DILocation(line: 113, column: 72, scope: !2515)
!2519 = !DILocation(line: 116, column: 2, scope: !2515)
!2520 = !DILocation(line: 116, column: 2, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2515, file: !2003, line: 116, column: 2)
!2522 = !DILocation(line: 116, column: 2, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2521, file: !2003, line: 116, column: 2)
!2524 = !DILocation(line: 116, column: 2, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2521, file: !2003, line: 116, column: 2)
!2526 = !DILocation(line: 117, column: 1, scope: !2515)
!2527 = distinct !DISubprogram(name: "__rt_mutex_start_proxy_lock", scope: !3, file: !3, line: 292, type: !2528, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2530)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{!78, !1285, !1273, !50}
!2530 = !{!2531, !2532, !2533, !2534}
!2531 = !DILocalVariable(name: "lock", arg: 1, scope: !2527, file: !3, line: 292, type: !1285)
!2532 = !DILocalVariable(name: "waiter", arg: 2, scope: !2527, file: !3, line: 293, type: !1273)
!2533 = !DILocalVariable(name: "task", arg: 3, scope: !2527, file: !3, line: 294, type: !50)
!2534 = !DILocalVariable(name: "ret", scope: !2527, file: !3, line: 296, type: !78)
!2535 = !DILocation(line: 292, column: 63, scope: !2527)
!2536 = !DILocation(line: 293, column: 30, scope: !2527)
!2537 = !DILocation(line: 294, column: 26, scope: !2527)
!2538 = !DILocation(line: 296, column: 2, scope: !2527)
!2539 = !DILocation(line: 296, column: 6, scope: !2527)
!2540 = !DILocation(line: 298, column: 2, scope: !2527)
!2541 = !DILocation(line: 298, column: 2, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2527, file: !3, line: 298, column: 2)
!2543 = !DILocation(line: 300, column: 27, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2527, file: !3, line: 300, column: 6)
!2545 = !DILocation(line: 300, column: 33, scope: !2544)
!2546 = !DILocation(line: 300, column: 6, scope: !2544)
!2547 = !DILocation(line: 300, column: 6, scope: !2527)
!2548 = !DILocation(line: 301, column: 3, scope: !2544)
!2549 = !DILocation(line: 304, column: 32, scope: !2527)
!2550 = !DILocation(line: 304, column: 38, scope: !2527)
!2551 = !DILocation(line: 304, column: 46, scope: !2527)
!2552 = !DILocation(line: 304, column: 8, scope: !2527)
!2553 = !DILocation(line: 304, column: 6, scope: !2527)
!2554 = !DILocation(line: 307, column: 6, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2527, file: !3, line: 307, column: 6)
!2556 = !DILocation(line: 307, column: 10, scope: !2555)
!2557 = !DILocation(line: 307, column: 29, scope: !2555)
!2558 = !DILocation(line: 307, column: 14, scope: !2555)
!2559 = !DILocation(line: 307, column: 6, scope: !2527)
!2560 = !DILocation(line: 314, column: 7, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2555, file: !3, line: 307, column: 36)
!2562 = !DILocation(line: 315, column: 2, scope: !2561)
!2563 = !DILocation(line: 317, column: 9, scope: !2527)
!2564 = !DILocation(line: 317, column: 2, scope: !2527)
!2565 = !DILocation(line: 318, column: 1, scope: !2527)
!2566 = distinct !DISubprogram(name: "try_to_take_rt_mutex", scope: !2003, file: !2003, line: 1064, type: !2567, scopeLine: 1066, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2569)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!78, !1285, !50, !1273}
!2569 = !{!2570, !2571, !2572, !2573, !2576}
!2570 = !DILocalVariable(name: "lock", arg: 1, scope: !2566, file: !2003, line: 1064, type: !1285)
!2571 = !DILocalVariable(name: "task", arg: 2, scope: !2566, file: !2003, line: 1064, type: !50)
!2572 = !DILocalVariable(name: "waiter", arg: 3, scope: !2566, file: !2003, line: 1065, type: !1273)
!2573 = !DILocalVariable(name: "top_waiter", scope: !2574, file: !2003, line: 1100, type: !1273)
!2574 = distinct !DILexicalBlock(scope: !2575, file: !2003, line: 1099, column: 14)
!2575 = distinct !DILexicalBlock(scope: !2566, file: !2003, line: 1099, column: 6)
!2576 = !DILabel(scope: !2566, name: "takeit", file: !2003, line: 1163)
!2577 = !DILocation(line: 1064, column: 44, scope: !2566)
!2578 = !DILocation(line: 1064, column: 70, scope: !2566)
!2579 = !DILocation(line: 1065, column: 32, scope: !2566)
!2580 = !DILocation(line: 1067, column: 2, scope: !2566)
!2581 = !DILocation(line: 1067, column: 2, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2566, file: !2003, line: 1067, column: 2)
!2583 = !DILocation(line: 1086, column: 24, scope: !2566)
!2584 = !DILocation(line: 1086, column: 2, scope: !2566)
!2585 = !DILocation(line: 1091, column: 21, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2566, file: !2003, line: 1091, column: 6)
!2587 = !DILocation(line: 1091, column: 6, scope: !2586)
!2588 = !DILocation(line: 1091, column: 6, scope: !2566)
!2589 = !DILocation(line: 1092, column: 3, scope: !2586)
!2590 = !DILocation(line: 1099, column: 6, scope: !2575)
!2591 = !DILocation(line: 1099, column: 6, scope: !2566)
!2592 = !DILocation(line: 1100, column: 3, scope: !2574)
!2593 = !DILocation(line: 1100, column: 27, scope: !2574)
!2594 = !DILocation(line: 1100, column: 60, scope: !2574)
!2595 = !DILocation(line: 1100, column: 40, scope: !2574)
!2596 = !DILocation(line: 1106, column: 7, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2574, file: !2003, line: 1106, column: 7)
!2598 = !DILocation(line: 1106, column: 17, scope: !2597)
!2599 = !DILocation(line: 1106, column: 14, scope: !2597)
!2600 = !DILocation(line: 1106, column: 28, scope: !2597)
!2601 = !DILocation(line: 1106, column: 46, scope: !2597)
!2602 = !DILocation(line: 1106, column: 54, scope: !2597)
!2603 = !DILocation(line: 1106, column: 31, scope: !2597)
!2604 = !DILocation(line: 1106, column: 7, scope: !2574)
!2605 = !DILocation(line: 1111, column: 21, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2597, file: !2003, line: 1106, column: 67)
!2607 = !DILocation(line: 1111, column: 27, scope: !2606)
!2608 = !DILocation(line: 1111, column: 4, scope: !2606)
!2609 = !DILocation(line: 1112, column: 3, scope: !2606)
!2610 = !DILocation(line: 1113, column: 4, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2597, file: !2003, line: 1112, column: 10)
!2612 = !DILocation(line: 1115, column: 2, scope: !2575)
!2613 = !DILocation(line: 1115, column: 2, scope: !2574)
!2614 = !DILocation(line: 1124, column: 28, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2616, file: !2003, line: 1124, column: 7)
!2616 = distinct !DILexicalBlock(scope: !2575, file: !2003, line: 1115, column: 9)
!2617 = !DILocation(line: 1124, column: 7, scope: !2615)
!2618 = !DILocation(line: 1124, column: 7, scope: !2616)
!2619 = !DILocation(line: 1126, column: 24, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2621, file: !2003, line: 1126, column: 8)
!2621 = distinct !DILexicalBlock(scope: !2615, file: !2003, line: 1124, column: 35)
!2622 = !DILocation(line: 1127, column: 30, scope: !2620)
!2623 = !DILocation(line: 1127, column: 10, scope: !2620)
!2624 = !DILocation(line: 1126, column: 9, scope: !2620)
!2625 = !DILocation(line: 1126, column: 8, scope: !2621)
!2626 = !DILocation(line: 1128, column: 5, scope: !2620)
!2627 = !DILocation(line: 1135, column: 3, scope: !2621)
!2628 = !DILocation(line: 1142, column: 4, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2615, file: !2003, line: 1135, column: 10)
!2630 = !DILocation(line: 1152, column: 2, scope: !2566)
!2631 = !DILocation(line: 1153, column: 2, scope: !2566)
!2632 = !DILocation(line: 1153, column: 8, scope: !2566)
!2633 = !DILocation(line: 1153, column: 22, scope: !2566)
!2634 = !DILocation(line: 1159, column: 27, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2566, file: !2003, line: 1159, column: 6)
!2636 = !DILocation(line: 1159, column: 6, scope: !2635)
!2637 = !DILocation(line: 1159, column: 6, scope: !2566)
!2638 = !DILocation(line: 1160, column: 23, scope: !2635)
!2639 = !DILocation(line: 1160, column: 49, scope: !2635)
!2640 = !DILocation(line: 1160, column: 29, scope: !2635)
!2641 = !DILocation(line: 1160, column: 3, scope: !2635)
!2642 = !DILocation(line: 1161, column: 2, scope: !2566)
!2643 = !DILocation(line: 1163, column: 1, scope: !2566)
!2644 = !DILocation(line: 1168, column: 21, scope: !2566)
!2645 = !DILocation(line: 1168, column: 27, scope: !2566)
!2646 = !DILocation(line: 1168, column: 2, scope: !2566)
!2647 = !DILocation(line: 1170, column: 2, scope: !2566)
!2648 = !DILocation(line: 1171, column: 1, scope: !2566)
!2649 = distinct !DISubprogram(name: "task_blocks_on_rt_mutex", scope: !2003, file: !2003, line: 1180, type: !2650, scopeLine: 1185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2652)
!2650 = !DISubroutineType(types: !2651)
!2651 = !{!78, !1285, !1273, !50, !1294, !29}
!2652 = !{!2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662}
!2653 = !DILocalVariable(name: "lock", arg: 1, scope: !2649, file: !2003, line: 1180, type: !1285)
!2654 = !DILocalVariable(name: "waiter", arg: 2, scope: !2649, file: !2003, line: 1181, type: !1273)
!2655 = !DILocalVariable(name: "task", arg: 3, scope: !2649, file: !2003, line: 1182, type: !50)
!2656 = !DILocalVariable(name: "ww_ctx", arg: 4, scope: !2649, file: !2003, line: 1183, type: !1294)
!2657 = !DILocalVariable(name: "chwalk", arg: 5, scope: !2649, file: !2003, line: 1184, type: !29)
!2658 = !DILocalVariable(name: "owner", scope: !2649, file: !2003, line: 1186, type: !50)
!2659 = !DILocalVariable(name: "top_waiter", scope: !2649, file: !2003, line: 1187, type: !1273)
!2660 = !DILocalVariable(name: "next_lock", scope: !2649, file: !2003, line: 1188, type: !1285)
!2661 = !DILocalVariable(name: "chain_walk", scope: !2649, file: !2003, line: 1189, type: !78)
!2662 = !DILocalVariable(name: "res", scope: !2649, file: !2003, line: 1189, type: !78)
!2663 = !DILocation(line: 1180, column: 66, scope: !2649)
!2664 = !DILocation(line: 1181, column: 33, scope: !2649)
!2665 = !DILocation(line: 1182, column: 29, scope: !2649)
!2666 = !DILocation(line: 1183, column: 32, scope: !2649)
!2667 = !DILocation(line: 1184, column: 32, scope: !2649)
!2668 = !DILocation(line: 1186, column: 2, scope: !2649)
!2669 = !DILocation(line: 1186, column: 22, scope: !2649)
!2670 = !DILocation(line: 1186, column: 45, scope: !2649)
!2671 = !DILocation(line: 1186, column: 30, scope: !2649)
!2672 = !DILocation(line: 1187, column: 2, scope: !2649)
!2673 = !DILocation(line: 1187, column: 26, scope: !2649)
!2674 = !DILocation(line: 1187, column: 39, scope: !2649)
!2675 = !DILocation(line: 1188, column: 2, scope: !2649)
!2676 = !DILocation(line: 1188, column: 24, scope: !2649)
!2677 = !DILocation(line: 1189, column: 2, scope: !2649)
!2678 = !DILocation(line: 1189, column: 6, scope: !2649)
!2679 = !DILocation(line: 1189, column: 22, scope: !2649)
!2680 = !DILocation(line: 1191, column: 2, scope: !2649)
!2681 = !DILocation(line: 1191, column: 2, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2649, file: !2003, line: 1191, column: 2)
!2683 = !DILocation(line: 1205, column: 6, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2649, file: !2003, line: 1205, column: 6)
!2685 = !DILocation(line: 1205, column: 15, scope: !2684)
!2686 = !DILocation(line: 1205, column: 12, scope: !2684)
!2687 = !DILocation(line: 1205, column: 6, scope: !2649)
!2688 = !DILocation(line: 1206, column: 3, scope: !2684)
!2689 = !DILocation(line: 1208, column: 2, scope: !2649)
!2690 = !DILocation(line: 1209, column: 17, scope: !2649)
!2691 = !DILocation(line: 1209, column: 2, scope: !2649)
!2692 = !DILocation(line: 1209, column: 10, scope: !2649)
!2693 = !DILocation(line: 1209, column: 15, scope: !2649)
!2694 = !DILocation(line: 1210, column: 17, scope: !2649)
!2695 = !DILocation(line: 1210, column: 2, scope: !2649)
!2696 = !DILocation(line: 1210, column: 10, scope: !2649)
!2697 = !DILocation(line: 1210, column: 15, scope: !2649)
!2698 = !DILocation(line: 1211, column: 21, scope: !2649)
!2699 = !DILocation(line: 1211, column: 29, scope: !2649)
!2700 = !DILocation(line: 1211, column: 2, scope: !2649)
!2701 = !DILocation(line: 1212, column: 20, scope: !2649)
!2702 = !DILocation(line: 1212, column: 28, scope: !2649)
!2703 = !DILocation(line: 1212, column: 2, scope: !2649)
!2704 = !DILocation(line: 1215, column: 27, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2649, file: !2003, line: 1215, column: 6)
!2706 = !DILocation(line: 1215, column: 6, scope: !2705)
!2707 = !DILocation(line: 1215, column: 6, scope: !2649)
!2708 = !DILocation(line: 1216, column: 36, scope: !2705)
!2709 = !DILocation(line: 1216, column: 16, scope: !2705)
!2710 = !DILocation(line: 1216, column: 14, scope: !2705)
!2711 = !DILocation(line: 1216, column: 3, scope: !2705)
!2712 = !DILocation(line: 1217, column: 19, scope: !2649)
!2713 = !DILocation(line: 1217, column: 25, scope: !2649)
!2714 = !DILocation(line: 1217, column: 2, scope: !2649)
!2715 = !DILocation(line: 1219, column: 24, scope: !2649)
!2716 = !DILocation(line: 1219, column: 2, scope: !2649)
!2717 = !DILocation(line: 1219, column: 8, scope: !2649)
!2718 = !DILocation(line: 1219, column: 22, scope: !2649)
!2719 = !DILocation(line: 1221, column: 2, scope: !2649)
!2720 = !DILocation(line: 1238, column: 7, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2649, file: !2003, line: 1238, column: 6)
!2722 = !DILocation(line: 1238, column: 6, scope: !2649)
!2723 = !DILocation(line: 1239, column: 3, scope: !2721)
!2724 = !DILocation(line: 1241, column: 2, scope: !2649)
!2725 = !DILocation(line: 1242, column: 6, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2649, file: !2003, line: 1242, column: 6)
!2727 = !DILocation(line: 1242, column: 36, scope: !2726)
!2728 = !DILocation(line: 1242, column: 16, scope: !2726)
!2729 = !DILocation(line: 1242, column: 13, scope: !2726)
!2730 = !DILocation(line: 1242, column: 6, scope: !2649)
!2731 = !DILocation(line: 1243, column: 23, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !2726, file: !2003, line: 1242, column: 43)
!2733 = !DILocation(line: 1243, column: 30, scope: !2732)
!2734 = !DILocation(line: 1243, column: 3, scope: !2732)
!2735 = !DILocation(line: 1244, column: 23, scope: !2732)
!2736 = !DILocation(line: 1244, column: 30, scope: !2732)
!2737 = !DILocation(line: 1244, column: 3, scope: !2732)
!2738 = !DILocation(line: 1246, column: 24, scope: !2732)
!2739 = !DILocation(line: 1246, column: 30, scope: !2732)
!2740 = !DILocation(line: 1246, column: 3, scope: !2732)
!2741 = !DILocation(line: 1247, column: 7, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2732, file: !2003, line: 1247, column: 7)
!2743 = !DILocation(line: 1247, column: 14, scope: !2742)
!2744 = !DILocation(line: 1247, column: 7, scope: !2732)
!2745 = !DILocation(line: 1248, column: 15, scope: !2742)
!2746 = !DILocation(line: 1248, column: 4, scope: !2742)
!2747 = !DILocation(line: 1249, column: 2, scope: !2732)
!2748 = !DILocation(line: 1249, column: 43, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2726, file: !2003, line: 1249, column: 13)
!2750 = !DILocation(line: 1249, column: 51, scope: !2749)
!2751 = !DILocation(line: 1249, column: 13, scope: !2749)
!2752 = !DILocation(line: 1249, column: 13, scope: !2726)
!2753 = !DILocation(line: 1250, column: 14, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2749, file: !2003, line: 1249, column: 60)
!2755 = !DILocation(line: 1251, column: 2, scope: !2754)
!2756 = !DILocation(line: 1254, column: 35, scope: !2649)
!2757 = !DILocation(line: 1254, column: 14, scope: !2649)
!2758 = !DILocation(line: 1254, column: 12, scope: !2649)
!2759 = !DILocation(line: 1256, column: 2, scope: !2649)
!2760 = !DILocation(line: 1262, column: 7, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2649, file: !2003, line: 1262, column: 6)
!2762 = !DILocation(line: 1262, column: 18, scope: !2761)
!2763 = !DILocation(line: 1262, column: 22, scope: !2761)
!2764 = !DILocation(line: 1262, column: 6, scope: !2649)
!2765 = !DILocation(line: 1263, column: 3, scope: !2761)
!2766 = !DILocation(line: 1270, column: 18, scope: !2649)
!2767 = !DILocation(line: 1270, column: 2, scope: !2649)
!2768 = !DILocation(line: 1272, column: 2, scope: !2649)
!2769 = !DILocation(line: 1274, column: 35, scope: !2649)
!2770 = !DILocation(line: 1274, column: 42, scope: !2649)
!2771 = !DILocation(line: 1274, column: 50, scope: !2649)
!2772 = !DILocation(line: 1275, column: 7, scope: !2649)
!2773 = !DILocation(line: 1275, column: 18, scope: !2649)
!2774 = !DILocation(line: 1275, column: 26, scope: !2649)
!2775 = !DILocation(line: 1274, column: 8, scope: !2649)
!2776 = !DILocation(line: 1274, column: 6, scope: !2649)
!2777 = !DILocation(line: 1277, column: 2, scope: !2649)
!2778 = !DILocation(line: 1279, column: 9, scope: !2649)
!2779 = !DILocation(line: 1279, column: 2, scope: !2649)
!2780 = !DILocation(line: 1280, column: 1, scope: !2649)
!2781 = distinct !DISubprogram(name: "rt_mutex_owner", scope: !30, file: !30, line: 157, type: !2782, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2784)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!50, !1285}
!2784 = !{!2785, !2786}
!2785 = !DILocalVariable(name: "lock", arg: 1, scope: !2781, file: !30, line: 157, type: !1285)
!2786 = !DILocalVariable(name: "owner", scope: !2781, file: !30, line: 159, type: !58)
!2787 = !DILocation(line: 157, column: 72, scope: !2781)
!2788 = !DILocation(line: 159, column: 2, scope: !2781)
!2789 = !DILocation(line: 159, column: 16, scope: !2781)
!2790 = !DILocation(line: 159, column: 40, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2781, file: !30, line: 159, column: 40)
!2792 = !DILocation(line: 159, column: 40, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2791, file: !30, line: 159, column: 40)
!2794 = !DILocation(line: 159, column: 24, scope: !2781)
!2795 = !DILocation(line: 161, column: 33, scope: !2781)
!2796 = !DILocation(line: 161, column: 39, scope: !2781)
!2797 = !DILocation(line: 161, column: 9, scope: !2781)
!2798 = !DILocation(line: 162, column: 1, scope: !2781)
!2799 = !DILocation(line: 161, column: 2, scope: !2781)
!2800 = distinct !DISubprogram(name: "rt_mutex_start_proxy_lock", scope: !3, file: !3, line: 339, type: !2528, scopeLine: 342, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2801)
!2801 = !{!2802, !2803, !2804, !2805}
!2802 = !DILocalVariable(name: "lock", arg: 1, scope: !2800, file: !3, line: 339, type: !1285)
!2803 = !DILocalVariable(name: "waiter", arg: 2, scope: !2800, file: !3, line: 340, type: !1273)
!2804 = !DILocalVariable(name: "task", arg: 3, scope: !2800, file: !3, line: 341, type: !50)
!2805 = !DILocalVariable(name: "ret", scope: !2800, file: !3, line: 343, type: !78)
!2806 = !DILocation(line: 339, column: 61, scope: !2800)
!2807 = !DILocation(line: 340, column: 35, scope: !2800)
!2808 = !DILocation(line: 341, column: 31, scope: !2800)
!2809 = !DILocation(line: 343, column: 2, scope: !2800)
!2810 = !DILocation(line: 343, column: 6, scope: !2800)
!2811 = !DILocation(line: 345, column: 2, scope: !2800)
!2812 = !DILocation(line: 346, column: 36, scope: !2800)
!2813 = !DILocation(line: 346, column: 42, scope: !2800)
!2814 = !DILocation(line: 346, column: 50, scope: !2800)
!2815 = !DILocation(line: 346, column: 8, scope: !2800)
!2816 = !DILocation(line: 346, column: 6, scope: !2800)
!2817 = !DILocation(line: 347, column: 6, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2800, file: !3, line: 347, column: 6)
!2819 = !DILocation(line: 347, column: 6, scope: !2800)
!2820 = !DILocation(line: 348, column: 17, scope: !2818)
!2821 = !DILocation(line: 348, column: 23, scope: !2818)
!2822 = !DILocation(line: 348, column: 3, scope: !2818)
!2823 = !DILocation(line: 349, column: 2, scope: !2800)
!2824 = !DILocation(line: 351, column: 9, scope: !2800)
!2825 = !DILocation(line: 352, column: 1, scope: !2800)
!2826 = !DILocation(line: 351, column: 2, scope: !2800)
!2827 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !2431, file: !2431, line: 29, type: !2828, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2828 = !DISubroutineType(types: !2829)
!2829 = !{null, !2434}
!2830 = distinct !DISubprogram(name: "remove_waiter", scope: !2003, file: !2003, line: 1515, type: !2831, scopeLine: 1517, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2833)
!2831 = !DISubroutineType(types: !2832)
!2832 = !{null, !1285, !1273}
!2833 = !{!2834, !2835, !2836, !2837, !2838}
!2834 = !DILocalVariable(name: "lock", arg: 1, scope: !2830, file: !2003, line: 1515, type: !1285)
!2835 = !DILocalVariable(name: "waiter", arg: 2, scope: !2830, file: !2003, line: 1516, type: !1273)
!2836 = !DILocalVariable(name: "is_top_waiter", scope: !2830, file: !2003, line: 1518, type: !928)
!2837 = !DILocalVariable(name: "owner", scope: !2830, file: !2003, line: 1519, type: !50)
!2838 = !DILocalVariable(name: "next_lock", scope: !2830, file: !2003, line: 1520, type: !1285)
!2839 = !DILocation(line: 1515, column: 57, scope: !2830)
!2840 = !DILocation(line: 1516, column: 31, scope: !2830)
!2841 = !DILocation(line: 1518, column: 2, scope: !2830)
!2842 = !DILocation(line: 1518, column: 7, scope: !2830)
!2843 = !DILocation(line: 1518, column: 24, scope: !2830)
!2844 = !DILocation(line: 1518, column: 54, scope: !2830)
!2845 = !DILocation(line: 1518, column: 34, scope: !2830)
!2846 = !DILocation(line: 1518, column: 31, scope: !2830)
!2847 = !DILocation(line: 1519, column: 2, scope: !2830)
!2848 = !DILocation(line: 1519, column: 22, scope: !2830)
!2849 = !DILocation(line: 1519, column: 45, scope: !2830)
!2850 = !DILocation(line: 1519, column: 30, scope: !2830)
!2851 = !DILocation(line: 1520, column: 2, scope: !2830)
!2852 = !DILocation(line: 1520, column: 24, scope: !2830)
!2853 = !DILocation(line: 1522, column: 2, scope: !2830)
!2854 = !DILocation(line: 1522, column: 2, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2830, file: !2003, line: 1522, column: 2)
!2856 = !DILocation(line: 1524, column: 2, scope: !2830)
!2857 = !DILocation(line: 1525, column: 19, scope: !2830)
!2858 = !DILocation(line: 1525, column: 25, scope: !2830)
!2859 = !DILocation(line: 1525, column: 2, scope: !2830)
!2860 = !DILocation(line: 1526, column: 2, scope: !2830)
!2861 = !DILocation(line: 1526, column: 11, scope: !2830)
!2862 = !DILocation(line: 1526, column: 25, scope: !2830)
!2863 = !DILocation(line: 1527, column: 2, scope: !2830)
!2864 = !DILocation(line: 1533, column: 7, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2830, file: !2003, line: 1533, column: 6)
!2866 = !DILocation(line: 1533, column: 13, scope: !2865)
!2867 = !DILocation(line: 1533, column: 17, scope: !2865)
!2868 = !DILocation(line: 1533, column: 6, scope: !2830)
!2869 = !DILocation(line: 1534, column: 3, scope: !2865)
!2870 = !DILocation(line: 1536, column: 2, scope: !2830)
!2871 = !DILocation(line: 1538, column: 22, scope: !2830)
!2872 = !DILocation(line: 1538, column: 29, scope: !2830)
!2873 = !DILocation(line: 1538, column: 2, scope: !2830)
!2874 = !DILocation(line: 1540, column: 27, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2830, file: !2003, line: 1540, column: 6)
!2876 = !DILocation(line: 1540, column: 6, scope: !2875)
!2877 = !DILocation(line: 1540, column: 6, scope: !2830)
!2878 = !DILocation(line: 1541, column: 23, scope: !2875)
!2879 = !DILocation(line: 1541, column: 50, scope: !2875)
!2880 = !DILocation(line: 1541, column: 30, scope: !2875)
!2881 = !DILocation(line: 1541, column: 3, scope: !2875)
!2882 = !DILocation(line: 1543, column: 23, scope: !2830)
!2883 = !DILocation(line: 1543, column: 29, scope: !2830)
!2884 = !DILocation(line: 1543, column: 2, scope: !2830)
!2885 = !DILocation(line: 1546, column: 35, scope: !2830)
!2886 = !DILocation(line: 1546, column: 14, scope: !2830)
!2887 = !DILocation(line: 1546, column: 12, scope: !2830)
!2888 = !DILocation(line: 1548, column: 2, scope: !2830)
!2889 = !DILocation(line: 1554, column: 7, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2830, file: !2003, line: 1554, column: 6)
!2891 = !DILocation(line: 1554, column: 6, scope: !2830)
!2892 = !DILocation(line: 1555, column: 3, scope: !2890)
!2893 = !DILocation(line: 1558, column: 18, scope: !2830)
!2894 = !DILocation(line: 1558, column: 2, scope: !2830)
!2895 = !DILocation(line: 1560, column: 2, scope: !2830)
!2896 = !DILocation(line: 1562, column: 29, scope: !2830)
!2897 = !DILocation(line: 1562, column: 60, scope: !2830)
!2898 = !DILocation(line: 1563, column: 8, scope: !2830)
!2899 = !DILocation(line: 1563, column: 25, scope: !2830)
!2900 = !DILocation(line: 1562, column: 2, scope: !2830)
!2901 = !DILocation(line: 1565, column: 2, scope: !2830)
!2902 = !DILocation(line: 1566, column: 1, scope: !2830)
!2903 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !2431, file: !2431, line: 41, type: !2828, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2904 = distinct !DISubprogram(name: "rt_mutex_wait_proxy_lock", scope: !3, file: !3, line: 371, type: !2905, scopeLine: 374, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2912)
!2905 = !DISubroutineType(types: !2906)
!2906 = !{!78, !1285, !2907, !1273}
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_sleeper", file: !6, line: 136, size: 576, elements: !2909)
!2909 = !{!2910, !2911}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2908, file: !6, line: 137, baseType: !202, size: 512)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2908, file: !6, line: 138, baseType: !50, size: 64, offset: 512)
!2912 = !{!2913, !2914, !2915, !2916, !2917, !2923}
!2913 = !DILocalVariable(name: "lock", arg: 1, scope: !2904, file: !3, line: 371, type: !1285)
!2914 = !DILocalVariable(name: "to", arg: 2, scope: !2904, file: !3, line: 372, type: !2907)
!2915 = !DILocalVariable(name: "waiter", arg: 3, scope: !2904, file: !3, line: 373, type: !1273)
!2916 = !DILocalVariable(name: "ret", scope: !2904, file: !3, line: 375, type: !78)
!2917 = !DILocalVariable(name: "__ai_ptr", scope: !2918, file: !3, line: 379, type: !2922)
!2918 = distinct !DILexicalBlock(scope: !2919, file: !3, line: 379, column: 2)
!2919 = distinct !DILexicalBlock(scope: !2920, file: !3, line: 379, column: 2)
!2920 = distinct !DILexicalBlock(scope: !2921, file: !3, line: 379, column: 2)
!2921 = distinct !DILexicalBlock(scope: !2904, file: !3, line: 379, column: 2)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2923 = !DILocalVariable(name: "__ret", scope: !2924, file: !3, line: 379, type: !7)
!2924 = distinct !DILexicalBlock(scope: !2918, file: !3, line: 379, column: 2)
!2925 = !DILocation(line: 371, column: 60, scope: !2904)
!2926 = !DILocation(line: 372, column: 34, scope: !2904)
!2927 = !DILocation(line: 373, column: 34, scope: !2904)
!2928 = !DILocation(line: 375, column: 2, scope: !2904)
!2929 = !DILocation(line: 375, column: 6, scope: !2904)
!2930 = !DILocation(line: 377, column: 2, scope: !2904)
!2931 = !DILocation(line: 379, column: 2, scope: !2904)
!2932 = !DILocation(line: 379, column: 2, scope: !2921)
!2933 = !DILocation(line: 379, column: 2, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2921, file: !3, line: 379, column: 2)
!2935 = !DILocation(line: 379, column: 2, scope: !2920)
!2936 = !DILocation(line: 379, column: 2, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2920, file: !3, line: 379, column: 2)
!2938 = !DILocation(line: 379, column: 2, scope: !2918)
!2939 = !DILocation(line: 379, column: 2, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2918, file: !3, line: 379, column: 2)
!2941 = !DILocation(line: 379, column: 2, scope: !2924)
!2942 = !{i64 2153686582}
!2943 = !DILocation(line: 379, column: 2, scope: !2919)
!2944 = !DILocation(line: 380, column: 32, scope: !2904)
!2945 = !DILocation(line: 380, column: 64, scope: !2904)
!2946 = !DILocation(line: 380, column: 68, scope: !2904)
!2947 = !DILocation(line: 380, column: 8, scope: !2904)
!2948 = !DILocation(line: 380, column: 6, scope: !2904)
!2949 = !DILocation(line: 385, column: 25, scope: !2904)
!2950 = !DILocation(line: 385, column: 2, scope: !2904)
!2951 = !DILocation(line: 386, column: 2, scope: !2904)
!2952 = !DILocation(line: 388, column: 9, scope: !2904)
!2953 = !DILocation(line: 389, column: 1, scope: !2904)
!2954 = !DILocation(line: 388, column: 2, scope: !2904)
!2955 = distinct !DISubprogram(name: "get_current", scope: !2956, file: !2956, line: 39, type: !2957, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2959)
!2956 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!2957 = !DISubroutineType(types: !2958)
!2958 = !{!50}
!2959 = !{!2960, !2962, !2964}
!2960 = !DILocalVariable(name: "pscr_ret__", scope: !2961, file: !2956, line: 41, type: !50)
!2961 = distinct !DILexicalBlock(scope: !2955, file: !2956, line: 41, column: 9)
!2962 = !DILocalVariable(name: "__vpp_verify", scope: !2963, file: !2956, line: 41, type: !574)
!2963 = distinct !DILexicalBlock(scope: !2961, file: !2956, line: 41, column: 9)
!2964 = !DILocalVariable(name: "pfo_val__", scope: !2965, file: !2956, line: 41, type: !129)
!2965 = distinct !DILexicalBlock(scope: !2961, file: !2956, line: 41, column: 9)
!2966 = !DILocation(line: 41, column: 9, scope: !2961)
!2967 = !DILocation(line: 41, column: 9, scope: !2963)
!2968 = !DILocation(line: 41, column: 9, scope: !2965)
!2969 = !{i64 2148277617}
!2970 = !DILocation(line: 41, column: 9, scope: !2955)
!2971 = !DILocation(line: 41, column: 2, scope: !2955)
!2972 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !2973, file: !2973, line: 94, type: !2974, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2979)
!2973 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!2974 = !DISubroutineType(types: !2975)
!2975 = !{null, !2976, !1239}
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2978)
!2978 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2979 = !{!2980, !2981}
!2980 = !DILocalVariable(name: "v", arg: 1, scope: !2972, file: !2973, line: 94, type: !2976)
!2981 = !DILocalVariable(name: "size", arg: 2, scope: !2972, file: !2973, line: 94, type: !1239)
!2982 = !DILocation(line: 94, column: 79, scope: !2972)
!2983 = !DILocation(line: 94, column: 89, scope: !2972)
!2984 = !DILocation(line: 96, column: 20, scope: !2972)
!2985 = !DILocation(line: 96, column: 23, scope: !2972)
!2986 = !DILocation(line: 96, column: 2, scope: !2972)
!2987 = !DILocation(line: 97, column: 2, scope: !2972)
!2988 = !DILocation(line: 98, column: 1, scope: !2972)
!2989 = distinct !DISubprogram(name: "rt_mutex_slowlock_block", scope: !2003, file: !2003, line: 1579, type: !2990, scopeLine: 1584, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2992)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{!78, !1285, !1294, !7, !2907, !1273}
!2992 = !{!2993, !2994, !2995, !2996, !2997, !2998, !2999, !3001, !3002, !3003, !3011}
!2993 = !DILocalVariable(name: "lock", arg: 1, scope: !2989, file: !2003, line: 1579, type: !1285)
!2994 = !DILocalVariable(name: "ww_ctx", arg: 2, scope: !2989, file: !2003, line: 1580, type: !1294)
!2995 = !DILocalVariable(name: "state", arg: 3, scope: !2989, file: !2003, line: 1581, type: !7)
!2996 = !DILocalVariable(name: "timeout", arg: 4, scope: !2989, file: !2003, line: 1582, type: !2907)
!2997 = !DILocalVariable(name: "waiter", arg: 5, scope: !2989, file: !2003, line: 1583, type: !1273)
!2998 = !DILocalVariable(name: "rtm", scope: !2989, file: !2003, line: 1585, type: !1895)
!2999 = !DILocalVariable(name: "__mptr", scope: !3000, file: !2003, line: 1585, type: !43)
!3000 = distinct !DILexicalBlock(scope: !2989, file: !2003, line: 1585, column: 25)
!3001 = !DILocalVariable(name: "owner", scope: !2989, file: !2003, line: 1586, type: !50)
!3002 = !DILocalVariable(name: "ret", scope: !2989, file: !2003, line: 1587, type: !78)
!3003 = !DILocalVariable(name: "__ai_ptr", scope: !3004, file: !2003, line: 1619, type: !2922)
!3004 = distinct !DILexicalBlock(scope: !3005, file: !2003, line: 1619, column: 3)
!3005 = distinct !DILexicalBlock(scope: !3006, file: !2003, line: 1619, column: 3)
!3006 = distinct !DILexicalBlock(scope: !3007, file: !2003, line: 1619, column: 3)
!3007 = distinct !DILexicalBlock(scope: !3008, file: !2003, line: 1619, column: 3)
!3008 = distinct !DILexicalBlock(scope: !3009, file: !2003, line: 1589, column: 11)
!3009 = distinct !DILexicalBlock(scope: !3010, file: !2003, line: 1589, column: 2)
!3010 = distinct !DILexicalBlock(scope: !2989, file: !2003, line: 1589, column: 2)
!3011 = !DILocalVariable(name: "__ret", scope: !3012, file: !2003, line: 1619, type: !7)
!3012 = distinct !DILexicalBlock(scope: !3004, file: !2003, line: 1619, column: 3)
!3013 = !DILocation(line: 1579, column: 66, scope: !2989)
!3014 = !DILocation(line: 1580, column: 32, scope: !2989)
!3015 = !DILocation(line: 1581, column: 22, scope: !2989)
!3016 = !DILocation(line: 1582, column: 33, scope: !2989)
!3017 = !DILocation(line: 1583, column: 33, scope: !2989)
!3018 = !DILocation(line: 1585, column: 2, scope: !2989)
!3019 = !DILocation(line: 1585, column: 19, scope: !2989)
!3020 = !DILocation(line: 1585, column: 25, scope: !3000)
!3021 = !DILocation(line: 1585, column: 25, scope: !2989)
!3022 = !DILocation(line: 1586, column: 2, scope: !2989)
!3023 = !DILocation(line: 1586, column: 22, scope: !2989)
!3024 = !DILocation(line: 1587, column: 2, scope: !2989)
!3025 = !DILocation(line: 1587, column: 6, scope: !2989)
!3026 = !DILocation(line: 1589, column: 2, scope: !2989)
!3027 = !DILocation(line: 1591, column: 28, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !3008, file: !2003, line: 1591, column: 7)
!3029 = !DILocation(line: 1591, column: 34, scope: !3028)
!3030 = !DILocation(line: 1591, column: 43, scope: !3028)
!3031 = !DILocation(line: 1591, column: 7, scope: !3028)
!3032 = !DILocation(line: 1591, column: 7, scope: !3008)
!3033 = !DILocation(line: 1592, column: 4, scope: !3028)
!3034 = !DILocation(line: 1594, column: 7, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3008, file: !2003, line: 1594, column: 7)
!3036 = !DILocation(line: 1594, column: 15, scope: !3035)
!3037 = !DILocation(line: 1594, column: 19, scope: !3035)
!3038 = !DILocation(line: 1594, column: 28, scope: !3035)
!3039 = !DILocation(line: 1594, column: 7, scope: !3008)
!3040 = !DILocation(line: 1595, column: 8, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3035, file: !2003, line: 1594, column: 34)
!3042 = !DILocation(line: 1596, column: 4, scope: !3041)
!3043 = !DILocation(line: 1598, column: 28, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3008, file: !2003, line: 1598, column: 7)
!3045 = !DILocation(line: 1598, column: 35, scope: !3044)
!3046 = !DILocation(line: 1598, column: 7, scope: !3044)
!3047 = !DILocation(line: 1598, column: 7, scope: !3008)
!3048 = !DILocation(line: 1599, column: 8, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3044, file: !2003, line: 1598, column: 45)
!3050 = !DILocation(line: 1600, column: 4, scope: !3049)
!3051 = !DILocation(line: 1609, column: 7, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !3008, file: !2003, line: 1609, column: 7)
!3053 = !DILocation(line: 1609, column: 37, scope: !3052)
!3054 = !DILocation(line: 1609, column: 17, scope: !3052)
!3055 = !DILocation(line: 1609, column: 14, scope: !3052)
!3056 = !DILocation(line: 1609, column: 7, scope: !3008)
!3057 = !DILocation(line: 1610, column: 27, scope: !3052)
!3058 = !DILocation(line: 1610, column: 12, scope: !3052)
!3059 = !DILocation(line: 1610, column: 10, scope: !3052)
!3060 = !DILocation(line: 1610, column: 4, scope: !3052)
!3061 = !DILocation(line: 1612, column: 10, scope: !3052)
!3062 = !DILocation(line: 1613, column: 3, scope: !3008)
!3063 = !DILocation(line: 1615, column: 8, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !3008, file: !2003, line: 1615, column: 7)
!3065 = !DILocation(line: 1615, column: 14, scope: !3064)
!3066 = !DILocation(line: 1615, column: 40, scope: !3064)
!3067 = !DILocation(line: 1615, column: 46, scope: !3064)
!3068 = !DILocation(line: 1615, column: 54, scope: !3064)
!3069 = !DILocation(line: 1615, column: 18, scope: !3064)
!3070 = !DILocation(line: 1615, column: 7, scope: !3008)
!3071 = !DILocation(line: 1616, column: 4, scope: !3064)
!3072 = !DILocation(line: 1618, column: 3, scope: !3008)
!3073 = !DILocation(line: 1619, column: 3, scope: !3008)
!3074 = !DILocation(line: 1619, column: 3, scope: !3007)
!3075 = !DILocation(line: 1619, column: 3, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3007, file: !2003, line: 1619, column: 3)
!3077 = !DILocation(line: 1619, column: 3, scope: !3006)
!3078 = !DILocation(line: 1619, column: 3, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !3006, file: !2003, line: 1619, column: 3)
!3080 = !DILocation(line: 1619, column: 3, scope: !3004)
!3081 = !DILocation(line: 1619, column: 3, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !3004, file: !2003, line: 1619, column: 3)
!3083 = !DILocation(line: 1619, column: 3, scope: !3012)
!3084 = !{i64 2153648892}
!3085 = !DILocation(line: 1619, column: 3, scope: !3005)
!3086 = !DILocation(line: 1589, column: 2, scope: !3009)
!3087 = distinct !{!3087, !3088, !3089, !3090}
!3088 = !DILocation(line: 1589, column: 2, scope: !3010)
!3089 = !DILocation(line: 1620, column: 2, scope: !3010)
!3090 = !{!"llvm.loop.unroll.disable"}
!3091 = !DILocation(line: 1622, column: 2, scope: !2989)
!3092 = !DILocation(line: 1622, column: 2, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !2989, file: !2003, line: 1622, column: 2)
!3094 = !DILocation(line: 1622, column: 2, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3093, file: !2003, line: 1622, column: 2)
!3096 = !DILocation(line: 1622, column: 2, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3093, file: !2003, line: 1622, column: 2)
!3098 = !DILocation(line: 1622, column: 2, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3097, file: !2003, line: 1622, column: 2)
!3100 = !DILocation(line: 1622, column: 2, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !3097, file: !2003, line: 1622, column: 2)
!3102 = !DILocation(line: 1623, column: 9, scope: !2989)
!3103 = !DILocation(line: 1624, column: 1, scope: !2989)
!3104 = !DILocation(line: 1623, column: 2, scope: !2989)
!3105 = distinct !DISubprogram(name: "fixup_rt_mutex_waiters", scope: !2003, file: !2003, line: 126, type: !3106, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3108)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{null, !1285, !928}
!3108 = !{!3109, !3110, !3111, !3112, !3113, !3118}
!3109 = !DILocalVariable(name: "lock", arg: 1, scope: !3105, file: !2003, line: 126, type: !1285)
!3110 = !DILocalVariable(name: "acquire_lock", arg: 2, scope: !3105, file: !2003, line: 126, type: !928)
!3111 = !DILocalVariable(name: "owner", scope: !3105, file: !2003, line: 128, type: !58)
!3112 = !DILocalVariable(name: "p", scope: !3105, file: !2003, line: 128, type: !1913)
!3113 = !DILocalVariable(name: "__ai_ptr", scope: !3114, file: !2003, line: 203, type: !1913)
!3114 = distinct !DILexicalBlock(scope: !3115, file: !2003, line: 203, column: 4)
!3115 = distinct !DILexicalBlock(scope: !3116, file: !2003, line: 202, column: 7)
!3116 = distinct !DILexicalBlock(scope: !3117, file: !2003, line: 192, column: 36)
!3117 = distinct !DILexicalBlock(scope: !3105, file: !2003, line: 192, column: 6)
!3118 = !DILocalVariable(name: "__ret", scope: !3119, file: !2003, line: 203, type: !58)
!3119 = distinct !DILexicalBlock(scope: !3114, file: !2003, line: 203, column: 4)
!3120 = !DILocation(line: 126, column: 46, scope: !3105)
!3121 = !DILocation(line: 126, column: 57, scope: !3105)
!3122 = !DILocation(line: 128, column: 2, scope: !3105)
!3123 = !DILocation(line: 128, column: 16, scope: !3105)
!3124 = !DILocation(line: 128, column: 24, scope: !3105)
!3125 = !DILocation(line: 128, column: 47, scope: !3105)
!3126 = !DILocation(line: 128, column: 53, scope: !3105)
!3127 = !DILocation(line: 130, column: 27, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3105, file: !2003, line: 130, column: 6)
!3129 = !DILocation(line: 130, column: 6, scope: !3128)
!3130 = !DILocation(line: 130, column: 6, scope: !3105)
!3131 = !DILocation(line: 131, column: 3, scope: !3128)
!3132 = !DILocation(line: 191, column: 10, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !3105, file: !2003, line: 191, column: 10)
!3134 = !DILocation(line: 191, column: 10, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !3133, file: !2003, line: 191, column: 10)
!3136 = !DILocation(line: 191, column: 8, scope: !3105)
!3137 = !DILocation(line: 192, column: 6, scope: !3117)
!3138 = !DILocation(line: 192, column: 12, scope: !3117)
!3139 = !DILocation(line: 192, column: 6, scope: !3105)
!3140 = !DILocation(line: 202, column: 7, scope: !3115)
!3141 = !DILocation(line: 202, column: 7, scope: !3116)
!3142 = !DILocation(line: 203, column: 4, scope: !3114)
!3143 = !DILocation(line: 203, column: 4, scope: !3119)
!3144 = !{i64 2153604635}
!3145 = !DILocation(line: 203, column: 4, scope: !3115)
!3146 = !DILocation(line: 205, column: 4, scope: !3115)
!3147 = !DILocation(line: 205, column: 4, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3115, file: !2003, line: 205, column: 4)
!3149 = !DILocation(line: 205, column: 4, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3148, file: !2003, line: 205, column: 4)
!3151 = !DILocation(line: 205, column: 4, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3148, file: !2003, line: 205, column: 4)
!3153 = !DILocation(line: 206, column: 2, scope: !3116)
!3154 = !DILocation(line: 207, column: 1, scope: !3105)
!3155 = distinct !DISubprogram(name: "rt_mutex_cleanup_proxy_lock", scope: !3, file: !3, line: 411, type: !3156, scopeLine: 413, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3158)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{!928, !1285, !1273}
!3158 = !{!3159, !3160, !3161}
!3159 = !DILocalVariable(name: "lock", arg: 1, scope: !3155, file: !3, line: 411, type: !1285)
!3160 = !DILocalVariable(name: "waiter", arg: 2, scope: !3155, file: !3, line: 412, type: !1273)
!3161 = !DILocalVariable(name: "cleanup", scope: !3155, file: !3, line: 414, type: !928)
!3162 = !DILocation(line: 411, column: 64, scope: !3155)
!3163 = !DILocation(line: 412, column: 31, scope: !3155)
!3164 = !DILocation(line: 414, column: 2, scope: !3155)
!3165 = !DILocation(line: 414, column: 7, scope: !3155)
!3166 = !DILocation(line: 416, column: 2, scope: !3155)
!3167 = !DILocation(line: 428, column: 23, scope: !3155)
!3168 = !DILocation(line: 428, column: 29, scope: !3155)
!3169 = !DILocation(line: 428, column: 38, scope: !3155)
!3170 = !DILocation(line: 428, column: 2, scope: !3155)
!3171 = !DILocation(line: 433, column: 21, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3155, file: !3, line: 433, column: 6)
!3173 = !DILocation(line: 433, column: 6, scope: !3172)
!3174 = !DILocation(line: 433, column: 30, scope: !3172)
!3175 = !DILocation(line: 433, column: 27, scope: !3172)
!3176 = !DILocation(line: 433, column: 6, scope: !3155)
!3177 = !DILocation(line: 434, column: 17, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3172, file: !3, line: 433, column: 39)
!3179 = !DILocation(line: 434, column: 23, scope: !3178)
!3180 = !DILocation(line: 434, column: 3, scope: !3178)
!3181 = !DILocation(line: 435, column: 11, scope: !3178)
!3182 = !DILocation(line: 436, column: 2, scope: !3178)
!3183 = !DILocation(line: 441, column: 25, scope: !3155)
!3184 = !DILocation(line: 441, column: 2, scope: !3155)
!3185 = !DILocation(line: 443, column: 2, scope: !3155)
!3186 = !DILocation(line: 445, column: 9, scope: !3155)
!3187 = !DILocation(line: 446, column: 1, scope: !3155)
!3188 = !DILocation(line: 445, column: 2, scope: !3155)
!3189 = distinct !DISubprogram(name: "rt_mutex_adjust_pi", scope: !3, file: !3, line: 453, type: !2079, scopeLine: 454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3190)
!3190 = !{!3191, !3192, !3193, !3194, !3195, !3198, !3199, !3204, !3205, !3208}
!3191 = !DILocalVariable(name: "task", arg: 1, scope: !3189, file: !3, line: 453, type: !50)
!3192 = !DILocalVariable(name: "waiter", scope: !3189, file: !3, line: 455, type: !1273)
!3193 = !DILocalVariable(name: "next_lock", scope: !3189, file: !3, line: 456, type: !1285)
!3194 = !DILocalVariable(name: "flags", scope: !3189, file: !3, line: 457, type: !58)
!3195 = !DILocalVariable(name: "__dummy", scope: !3196, file: !3, line: 459, type: !58)
!3196 = distinct !DILexicalBlock(scope: !3197, file: !3, line: 459, column: 2)
!3197 = distinct !DILexicalBlock(scope: !3189, file: !3, line: 459, column: 2)
!3198 = !DILocalVariable(name: "__dummy2", scope: !3196, file: !3, line: 459, type: !58)
!3199 = !DILocalVariable(name: "__dummy", scope: !3200, file: !3, line: 463, type: !58)
!3200 = distinct !DILexicalBlock(scope: !3201, file: !3, line: 463, column: 3)
!3201 = distinct !DILexicalBlock(scope: !3202, file: !3, line: 463, column: 3)
!3202 = distinct !DILexicalBlock(scope: !3203, file: !3, line: 462, column: 81)
!3203 = distinct !DILexicalBlock(scope: !3189, file: !3, line: 462, column: 6)
!3204 = !DILocalVariable(name: "__dummy2", scope: !3200, file: !3, line: 463, type: !58)
!3205 = !DILocalVariable(name: "__dummy", scope: !3206, file: !3, line: 467, type: !58)
!3206 = distinct !DILexicalBlock(scope: !3207, file: !3, line: 467, column: 2)
!3207 = distinct !DILexicalBlock(scope: !3189, file: !3, line: 467, column: 2)
!3208 = !DILocalVariable(name: "__dummy2", scope: !3206, file: !3, line: 467, type: !58)
!3209 = !DILocation(line: 453, column: 53, scope: !3189)
!3210 = !DILocation(line: 455, column: 2, scope: !3189)
!3211 = !DILocation(line: 455, column: 26, scope: !3189)
!3212 = !DILocation(line: 456, column: 2, scope: !3189)
!3213 = !DILocation(line: 456, column: 24, scope: !3189)
!3214 = !DILocation(line: 457, column: 2, scope: !3189)
!3215 = !DILocation(line: 457, column: 16, scope: !3189)
!3216 = !DILocation(line: 459, column: 2, scope: !3189)
!3217 = !DILocation(line: 459, column: 2, scope: !3196)
!3218 = !DILocation(line: 459, column: 2, scope: !3197)
!3219 = !DILocation(line: 461, column: 11, scope: !3189)
!3220 = !DILocation(line: 461, column: 17, scope: !3189)
!3221 = !DILocation(line: 461, column: 9, scope: !3189)
!3222 = !DILocation(line: 462, column: 7, scope: !3203)
!3223 = !DILocation(line: 462, column: 14, scope: !3203)
!3224 = !DILocation(line: 462, column: 39, scope: !3203)
!3225 = !DILocation(line: 462, column: 47, scope: !3203)
!3226 = !DILocation(line: 462, column: 53, scope: !3203)
!3227 = !DILocation(line: 462, column: 17, scope: !3203)
!3228 = !DILocation(line: 462, column: 6, scope: !3189)
!3229 = !DILocation(line: 463, column: 3, scope: !3202)
!3230 = !DILocation(line: 463, column: 3, scope: !3200)
!3231 = !DILocation(line: 463, column: 3, scope: !3201)
!3232 = !DILocation(line: 464, column: 3, scope: !3202)
!3233 = !DILocation(line: 466, column: 14, scope: !3189)
!3234 = !DILocation(line: 466, column: 22, scope: !3189)
!3235 = !DILocation(line: 466, column: 12, scope: !3189)
!3236 = !DILocation(line: 467, column: 2, scope: !3189)
!3237 = !DILocation(line: 467, column: 2, scope: !3206)
!3238 = !DILocation(line: 467, column: 2, scope: !3207)
!3239 = !DILocation(line: 470, column: 18, scope: !3189)
!3240 = !DILocation(line: 470, column: 2, scope: !3189)
!3241 = !DILocation(line: 472, column: 29, scope: !3189)
!3242 = !DILocation(line: 473, column: 8, scope: !3189)
!3243 = !DILocation(line: 473, column: 25, scope: !3189)
!3244 = !DILocation(line: 472, column: 2, scope: !3189)
!3245 = !DILocation(line: 474, column: 1, scope: !3189)
!3246 = distinct !DISubprogram(name: "rt_waiter_node_equal", scope: !2003, file: !2003, line: 389, type: !3247, scopeLine: 391, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3249)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!78, !1919, !1919}
!3249 = !{!3250, !3251}
!3250 = !DILocalVariable(name: "left", arg: 1, scope: !3246, file: !2003, line: 389, type: !1919)
!3251 = !DILocalVariable(name: "right", arg: 2, scope: !3246, file: !2003, line: 390, type: !1919)
!3252 = !DILocation(line: 389, column: 72, scope: !3246)
!3253 = !DILocation(line: 390, column: 31, scope: !3246)
!3254 = !DILocation(line: 392, column: 6, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3246, file: !2003, line: 392, column: 6)
!3256 = !DILocation(line: 392, column: 12, scope: !3255)
!3257 = !DILocation(line: 392, column: 20, scope: !3255)
!3258 = !DILocation(line: 392, column: 27, scope: !3255)
!3259 = !DILocation(line: 392, column: 17, scope: !3255)
!3260 = !DILocation(line: 392, column: 6, scope: !3246)
!3261 = !DILocation(line: 393, column: 3, scope: !3255)
!3262 = !DILocation(line: 401, column: 14, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !3246, file: !2003, line: 401, column: 6)
!3264 = !DILocation(line: 401, column: 20, scope: !3263)
!3265 = !DILocation(line: 401, column: 6, scope: !3263)
!3266 = !DILocation(line: 401, column: 6, scope: !3246)
!3267 = !DILocation(line: 402, column: 10, scope: !3263)
!3268 = !DILocation(line: 402, column: 16, scope: !3263)
!3269 = !DILocation(line: 402, column: 28, scope: !3263)
!3270 = !DILocation(line: 402, column: 35, scope: !3263)
!3271 = !DILocation(line: 402, column: 25, scope: !3263)
!3272 = !DILocation(line: 402, column: 3, scope: !3263)
!3273 = !DILocation(line: 404, column: 2, scope: !3246)
!3274 = !DILocation(line: 405, column: 1, scope: !3246)
!3275 = distinct !DISubprogram(name: "__waiter_prio", scope: !2003, file: !2003, line: 326, type: !3276, scopeLine: 327, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3278)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{!78, !50}
!3278 = !{!3279, !3280}
!3279 = !DILocalVariable(name: "task", arg: 1, scope: !3275, file: !2003, line: 326, type: !50)
!3280 = !DILocalVariable(name: "prio", scope: !3275, file: !2003, line: 328, type: !78)
!3281 = !DILocation(line: 326, column: 62, scope: !3275)
!3282 = !DILocation(line: 328, column: 2, scope: !3275)
!3283 = !DILocation(line: 328, column: 6, scope: !3275)
!3284 = !DILocation(line: 328, column: 13, scope: !3275)
!3285 = !DILocation(line: 328, column: 19, scope: !3275)
!3286 = !DILocation(line: 330, column: 15, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3275, file: !2003, line: 330, column: 6)
!3288 = !DILocation(line: 330, column: 7, scope: !3287)
!3289 = !DILocation(line: 330, column: 6, scope: !3275)
!3290 = !DILocation(line: 331, column: 3, scope: !3287)
!3291 = !DILocation(line: 333, column: 9, scope: !3275)
!3292 = !DILocation(line: 333, column: 2, scope: !3275)
!3293 = !DILocation(line: 334, column: 1, scope: !3275)
!3294 = distinct !DISubprogram(name: "get_task_struct", scope: !2078, file: !2078, line: 115, type: !3295, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3297)
!3295 = !DISubroutineType(types: !3296)
!3296 = !{!50, !50}
!3297 = !{!3298}
!3298 = !DILocalVariable(name: "t", arg: 1, scope: !3294, file: !2078, line: 115, type: !50)
!3299 = !DILocation(line: 115, column: 71, scope: !3294)
!3300 = !DILocation(line: 117, column: 16, scope: !3294)
!3301 = !DILocation(line: 117, column: 19, scope: !3294)
!3302 = !DILocation(line: 117, column: 2, scope: !3294)
!3303 = !DILocation(line: 118, column: 9, scope: !3294)
!3304 = !DILocation(line: 118, column: 2, scope: !3294)
!3305 = !DILocation(line: 655, column: 67, scope: !2048)
!3306 = !DILocation(line: 656, column: 35, scope: !2048)
!3307 = !DILocation(line: 657, column: 34, scope: !2048)
!3308 = !DILocation(line: 658, column: 34, scope: !2048)
!3309 = !DILocation(line: 659, column: 36, scope: !2048)
!3310 = !DILocation(line: 660, column: 32, scope: !2048)
!3311 = !DILocation(line: 662, column: 2, scope: !2048)
!3312 = !DILocation(line: 662, column: 26, scope: !2048)
!3313 = !DILocation(line: 662, column: 35, scope: !2048)
!3314 = !DILocation(line: 662, column: 48, scope: !2048)
!3315 = !DILocation(line: 663, column: 2, scope: !2048)
!3316 = !DILocation(line: 663, column: 26, scope: !2048)
!3317 = !DILocation(line: 664, column: 2, scope: !2048)
!3318 = !DILocation(line: 664, column: 6, scope: !2048)
!3319 = !DILocation(line: 664, column: 15, scope: !2048)
!3320 = !DILocation(line: 665, column: 2, scope: !2048)
!3321 = !DILocation(line: 665, column: 24, scope: !2048)
!3322 = !DILocation(line: 666, column: 2, scope: !2048)
!3323 = !DILocation(line: 666, column: 7, scope: !2048)
!3324 = !DILocation(line: 667, column: 2, scope: !2048)
!3325 = !DILocation(line: 667, column: 7, scope: !2048)
!3326 = !DILocation(line: 669, column: 50, scope: !2048)
!3327 = !DILocation(line: 669, column: 63, scope: !2048)
!3328 = !DILocation(line: 669, column: 20, scope: !2048)
!3329 = !DILocation(line: 669, column: 18, scope: !2048)
!3330 = !DILocation(line: 669, column: 2, scope: !2048)
!3331 = !DILocation(line: 677, column: 2, scope: !2048)
!3332 = !DILocation(line: 681, column: 6, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !2048, file: !2003, line: 681, column: 6)
!3334 = !DILocation(line: 681, column: 16, scope: !3333)
!3335 = !DILocation(line: 681, column: 14, scope: !3333)
!3336 = !DILocation(line: 681, column: 6, scope: !2048)
!3337 = !DILocation(line: 688, column: 7, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3339, file: !2003, line: 688, column: 7)
!3339 = distinct !DILexicalBlock(scope: !3333, file: !2003, line: 681, column: 32)
!3340 = !DILocation(line: 688, column: 19, scope: !3338)
!3341 = !DILocation(line: 688, column: 16, scope: !3338)
!3342 = !DILocation(line: 688, column: 7, scope: !3339)
!3343 = !DILocation(line: 689, column: 15, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3338, file: !2003, line: 688, column: 35)
!3345 = !DILocation(line: 689, column: 13, scope: !3344)
!3346 = !DILocation(line: 690, column: 4, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3344, file: !2003, line: 690, column: 4)
!3348 = !DILocation(line: 690, column: 4, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3347, file: !2003, line: 690, column: 4)
!3350 = !DILocation(line: 693, column: 3, scope: !3344)
!3351 = !DILocation(line: 694, column: 19, scope: !3339)
!3352 = !DILocation(line: 694, column: 3, scope: !3339)
!3353 = !DILocation(line: 696, column: 3, scope: !3339)
!3354 = !DILocation(line: 705, column: 2, scope: !2048)
!3355 = !DILocation(line: 709, column: 2, scope: !2048)
!3356 = !DILocation(line: 714, column: 11, scope: !2048)
!3357 = !DILocation(line: 714, column: 17, scope: !2048)
!3358 = !DILocation(line: 714, column: 9, scope: !2048)
!3359 = !DILocation(line: 725, column: 7, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !2048, file: !2003, line: 725, column: 6)
!3361 = !DILocation(line: 725, column: 6, scope: !2048)
!3362 = !DILocation(line: 726, column: 3, scope: !3360)
!3363 = !DILocation(line: 732, column: 6, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !2048, file: !2003, line: 732, column: 6)
!3365 = !DILocation(line: 732, column: 18, scope: !3364)
!3366 = !DILocation(line: 732, column: 37, scope: !3364)
!3367 = !DILocation(line: 732, column: 22, scope: !3364)
!3368 = !DILocation(line: 732, column: 6, scope: !2048)
!3369 = !DILocation(line: 733, column: 3, scope: !3364)
!3370 = !DILocation(line: 744, column: 6, scope: !3371)
!3371 = distinct !DILexicalBlock(scope: !2048, file: !2003, line: 744, column: 6)
!3372 = !DILocation(line: 744, column: 19, scope: !3371)
!3373 = !DILocation(line: 744, column: 27, scope: !3371)
!3374 = !DILocation(line: 744, column: 16, scope: !3371)
!3375 = !DILocation(line: 744, column: 6, scope: !2048)
!3376 = !DILocation(line: 745, column: 3, scope: !3371)
!3377 = !DILocation(line: 777, column: 6, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !2048, file: !2003, line: 777, column: 6)
!3379 = !DILocation(line: 777, column: 6, scope: !2048)
!3380 = !DILocation(line: 778, column: 28, scope: !3381)
!3381 = distinct !DILexicalBlock(scope: !3382, file: !2003, line: 778, column: 7)
!3382 = distinct !DILexicalBlock(scope: !3378, file: !2003, line: 777, column: 18)
!3383 = !DILocation(line: 778, column: 8, scope: !3381)
!3384 = !DILocation(line: 778, column: 7, scope: !3382)
!3385 = !DILocation(line: 779, column: 4, scope: !3381)
!3386 = !DILocation(line: 786, column: 7, scope: !3387)
!3387 = distinct !DILexicalBlock(scope: !3382, file: !2003, line: 786, column: 7)
!3388 = !DILocation(line: 786, column: 40, scope: !3387)
!3389 = !DILocation(line: 786, column: 21, scope: !3387)
!3390 = !DILocation(line: 786, column: 18, scope: !3387)
!3391 = !DILocation(line: 786, column: 7, scope: !3382)
!3392 = !DILocation(line: 787, column: 9, scope: !3393)
!3393 = distinct !DILexicalBlock(scope: !3394, file: !2003, line: 787, column: 8)
!3394 = distinct !DILexicalBlock(scope: !3387, file: !2003, line: 786, column: 47)
!3395 = !DILocation(line: 787, column: 8, scope: !3394)
!3396 = !DILocation(line: 788, column: 5, scope: !3393)
!3397 = !DILocation(line: 790, column: 13, scope: !3393)
!3398 = !DILocation(line: 791, column: 3, scope: !3394)
!3399 = !DILocation(line: 792, column: 2, scope: !3382)
!3400 = !DILocation(line: 801, column: 28, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !2048, file: !2003, line: 801, column: 6)
!3402 = !DILocation(line: 801, column: 36, scope: !3401)
!3403 = !DILocation(line: 801, column: 42, scope: !3401)
!3404 = !DILocation(line: 801, column: 6, scope: !3401)
!3405 = !DILocation(line: 801, column: 6, scope: !2048)
!3406 = !DILocation(line: 802, column: 8, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3408, file: !2003, line: 802, column: 7)
!3408 = distinct !DILexicalBlock(scope: !3401, file: !2003, line: 801, column: 70)
!3409 = !DILocation(line: 802, column: 7, scope: !3408)
!3410 = !DILocation(line: 803, column: 4, scope: !3407)
!3411 = !DILocation(line: 805, column: 12, scope: !3407)
!3412 = !DILocation(line: 806, column: 2, scope: !3408)
!3413 = !DILocation(line: 812, column: 9, scope: !2048)
!3414 = !DILocation(line: 812, column: 17, scope: !2048)
!3415 = !DILocation(line: 812, column: 7, scope: !2048)
!3416 = !DILocation(line: 822, column: 7, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !2048, file: !2003, line: 822, column: 6)
!3418 = !DILocation(line: 822, column: 6, scope: !2048)
!3419 = !DILocation(line: 823, column: 3, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !3417, file: !2003, line: 822, column: 43)
!3421 = !DILocation(line: 824, column: 3, scope: !3420)
!3422 = !DILocation(line: 825, column: 3, scope: !3420)
!3423 = !DILocation(line: 837, column: 6, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !2048, file: !2003, line: 837, column: 6)
!3425 = !DILocation(line: 837, column: 14, scope: !3424)
!3426 = !DILocation(line: 837, column: 11, scope: !3424)
!3427 = !DILocation(line: 837, column: 24, scope: !3424)
!3428 = !DILocation(line: 837, column: 42, scope: !3424)
!3429 = !DILocation(line: 837, column: 27, scope: !3424)
!3430 = !DILocation(line: 837, column: 51, scope: !3424)
!3431 = !DILocation(line: 837, column: 48, scope: !3424)
!3432 = !DILocation(line: 837, column: 6, scope: !2048)
!3433 = !DILocation(line: 838, column: 7, scope: !3434)
!3434 = distinct !DILexicalBlock(scope: !3424, file: !2003, line: 837, column: 61)
!3435 = !DILocation(line: 852, column: 3, scope: !3434)
!3436 = !DILocation(line: 853, column: 3, scope: !3434)
!3437 = !DILocation(line: 862, column: 7, scope: !3438)
!3438 = distinct !DILexicalBlock(scope: !2048, file: !2003, line: 862, column: 6)
!3439 = !DILocation(line: 862, column: 6, scope: !2048)
!3440 = !DILocation(line: 866, column: 3, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3438, file: !2003, line: 862, column: 16)
!3442 = !DILocation(line: 867, column: 19, scope: !3441)
!3443 = !DILocation(line: 867, column: 3, scope: !3441)
!3444 = !DILocation(line: 873, column: 23, scope: !3445)
!3445 = distinct !DILexicalBlock(scope: !3441, file: !2003, line: 873, column: 7)
!3446 = !DILocation(line: 873, column: 8, scope: !3445)
!3447 = !DILocation(line: 873, column: 7, scope: !3441)
!3448 = !DILocation(line: 874, column: 4, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3445, file: !2003, line: 873, column: 30)
!3450 = !DILocation(line: 875, column: 4, scope: !3449)
!3451 = !DILocation(line: 879, column: 41, scope: !3441)
!3452 = !DILocation(line: 879, column: 26, scope: !3441)
!3453 = !DILocation(line: 879, column: 10, scope: !3441)
!3454 = !DILocation(line: 879, column: 8, scope: !3441)
!3455 = !DILocation(line: 880, column: 3, scope: !3441)
!3456 = !DILocation(line: 888, column: 36, scope: !3441)
!3457 = !DILocation(line: 888, column: 15, scope: !3441)
!3458 = !DILocation(line: 888, column: 13, scope: !3441)
!3459 = !DILocation(line: 892, column: 36, scope: !3441)
!3460 = !DILocation(line: 892, column: 16, scope: !3441)
!3461 = !DILocation(line: 892, column: 14, scope: !3441)
!3462 = !DILocation(line: 895, column: 3, scope: !3441)
!3463 = !DILocation(line: 896, column: 3, scope: !3441)
!3464 = !DILocation(line: 899, column: 8, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3441, file: !2003, line: 899, column: 7)
!3466 = !DILocation(line: 899, column: 7, scope: !3441)
!3467 = !DILocation(line: 900, column: 4, scope: !3465)
!3468 = !DILocation(line: 901, column: 3, scope: !3441)
!3469 = !DILocation(line: 909, column: 46, scope: !2048)
!3470 = !DILocation(line: 909, column: 26, scope: !2048)
!3471 = !DILocation(line: 909, column: 24, scope: !2048)
!3472 = !DILocation(line: 912, column: 19, scope: !2048)
!3473 = !DILocation(line: 912, column: 25, scope: !2048)
!3474 = !DILocation(line: 912, column: 2, scope: !2048)
!3475 = !DILocation(line: 925, column: 21, scope: !2048)
!3476 = !DILocation(line: 925, column: 29, scope: !2048)
!3477 = !DILocation(line: 925, column: 2, scope: !2048)
!3478 = !DILocation(line: 927, column: 19, scope: !2048)
!3479 = !DILocation(line: 927, column: 25, scope: !2048)
!3480 = !DILocation(line: 927, column: 2, scope: !2048)
!3481 = !DILocation(line: 936, column: 2, scope: !2048)
!3482 = !DILocation(line: 937, column: 18, scope: !2048)
!3483 = !DILocation(line: 937, column: 2, scope: !2048)
!3484 = !DILocation(line: 946, column: 22, scope: !3485)
!3485 = distinct !DILexicalBlock(scope: !2048, file: !2003, line: 946, column: 6)
!3486 = !DILocation(line: 946, column: 7, scope: !3485)
!3487 = !DILocation(line: 946, column: 6, scope: !2048)
!3488 = !DILocation(line: 952, column: 36, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !3485, file: !2003, line: 946, column: 29)
!3490 = !DILocation(line: 952, column: 16, scope: !3489)
!3491 = !DILocation(line: 952, column: 14, scope: !3489)
!3492 = !DILocation(line: 953, column: 7, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !3489, file: !2003, line: 953, column: 7)
!3494 = !DILocation(line: 953, column: 32, scope: !3493)
!3495 = !DILocation(line: 953, column: 29, scope: !3493)
!3496 = !DILocation(line: 953, column: 7, scope: !3489)
!3497 = !DILocation(line: 954, column: 18, scope: !3493)
!3498 = !DILocation(line: 954, column: 30, scope: !3493)
!3499 = !DILocation(line: 954, column: 36, scope: !3493)
!3500 = !DILocation(line: 954, column: 48, scope: !3493)
!3501 = !DILocation(line: 954, column: 4, scope: !3493)
!3502 = !DILocation(line: 955, column: 3, scope: !3489)
!3503 = !DILocation(line: 956, column: 3, scope: !3489)
!3504 = !DILocation(line: 965, column: 40, scope: !2048)
!3505 = !DILocation(line: 965, column: 25, scope: !2048)
!3506 = !DILocation(line: 965, column: 9, scope: !2048)
!3507 = !DILocation(line: 965, column: 7, scope: !2048)
!3508 = !DILocation(line: 966, column: 2, scope: !2048)
!3509 = !DILocation(line: 969, column: 6, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !2048, file: !2003, line: 969, column: 6)
!3511 = !DILocation(line: 969, column: 36, scope: !3510)
!3512 = !DILocation(line: 969, column: 16, scope: !3510)
!3513 = !DILocation(line: 969, column: 13, scope: !3510)
!3514 = !DILocation(line: 969, column: 6, scope: !2048)
!3515 = !DILocation(line: 976, column: 23, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3510, file: !2003, line: 969, column: 43)
!3517 = !DILocation(line: 976, column: 29, scope: !3516)
!3518 = !DILocation(line: 976, column: 3, scope: !3516)
!3519 = !DILocation(line: 977, column: 21, scope: !3516)
!3520 = !DILocation(line: 977, column: 29, scope: !3516)
!3521 = !DILocation(line: 977, column: 3, scope: !3516)
!3522 = !DILocation(line: 978, column: 23, scope: !3516)
!3523 = !DILocation(line: 978, column: 29, scope: !3516)
!3524 = !DILocation(line: 978, column: 3, scope: !3516)
!3525 = !DILocation(line: 979, column: 24, scope: !3516)
!3526 = !DILocation(line: 979, column: 30, scope: !3516)
!3527 = !DILocation(line: 979, column: 3, scope: !3516)
!3528 = !DILocation(line: 981, column: 2, scope: !3516)
!3529 = !DILocation(line: 981, column: 13, scope: !3530)
!3530 = distinct !DILexicalBlock(scope: !3510, file: !2003, line: 981, column: 13)
!3531 = !DILocation(line: 981, column: 38, scope: !3530)
!3532 = !DILocation(line: 981, column: 35, scope: !3530)
!3533 = !DILocation(line: 981, column: 13, scope: !3510)
!3534 = !DILocation(line: 992, column: 23, scope: !3535)
!3535 = distinct !DILexicalBlock(scope: !3530, file: !2003, line: 981, column: 46)
!3536 = !DILocation(line: 992, column: 29, scope: !3535)
!3537 = !DILocation(line: 992, column: 3, scope: !3535)
!3538 = !DILocation(line: 993, column: 32, scope: !3535)
!3539 = !DILocation(line: 993, column: 12, scope: !3535)
!3540 = !DILocation(line: 993, column: 10, scope: !3535)
!3541 = !DILocation(line: 994, column: 21, scope: !3535)
!3542 = !DILocation(line: 994, column: 29, scope: !3535)
!3543 = !DILocation(line: 994, column: 3, scope: !3535)
!3544 = !DILocation(line: 995, column: 23, scope: !3535)
!3545 = !DILocation(line: 995, column: 29, scope: !3535)
!3546 = !DILocation(line: 995, column: 3, scope: !3535)
!3547 = !DILocation(line: 996, column: 24, scope: !3535)
!3548 = !DILocation(line: 996, column: 30, scope: !3535)
!3549 = !DILocation(line: 996, column: 3, scope: !3535)
!3550 = !DILocation(line: 997, column: 2, scope: !3535)
!3551 = !DILocation(line: 1014, column: 35, scope: !2048)
!3552 = !DILocation(line: 1014, column: 14, scope: !2048)
!3553 = !DILocation(line: 1014, column: 12, scope: !2048)
!3554 = !DILocation(line: 1019, column: 35, scope: !2048)
!3555 = !DILocation(line: 1019, column: 15, scope: !2048)
!3556 = !DILocation(line: 1019, column: 13, scope: !2048)
!3557 = !DILocation(line: 1022, column: 2, scope: !2048)
!3558 = !DILocation(line: 1023, column: 2, scope: !2048)
!3559 = !DILocation(line: 1032, column: 7, scope: !3560)
!3560 = distinct !DILexicalBlock(scope: !2048, file: !2003, line: 1032, column: 6)
!3561 = !DILocation(line: 1032, column: 6, scope: !2048)
!3562 = !DILocation(line: 1033, column: 3, scope: !3560)
!3563 = !DILocation(line: 1040, column: 7, scope: !3564)
!3564 = distinct !DILexicalBlock(scope: !2048, file: !2003, line: 1040, column: 6)
!3565 = !DILocation(line: 1040, column: 23, scope: !3564)
!3566 = !DILocation(line: 1040, column: 26, scope: !3564)
!3567 = !DILocation(line: 1040, column: 36, scope: !3564)
!3568 = !DILocation(line: 1040, column: 33, scope: !3564)
!3569 = !DILocation(line: 1040, column: 6, scope: !2048)
!3570 = !DILocation(line: 1041, column: 3, scope: !3564)
!3571 = !DILocation(line: 1043, column: 2, scope: !2048)
!3572 = !DILocation(line: 1045, column: 2, scope: !2048)
!3573 = !DILocation(line: 1046, column: 2, scope: !2048)
!3574 = !DILocation(line: 1047, column: 2, scope: !2048)
!3575 = !DILocation(line: 1048, column: 18, scope: !2048)
!3576 = !DILocation(line: 1048, column: 2, scope: !2048)
!3577 = !DILocation(line: 1050, column: 9, scope: !2048)
!3578 = !DILocation(line: 1050, column: 2, scope: !2048)
!3579 = !DILocation(line: 1051, column: 1, scope: !2048)
!3580 = !DILocation(line: 540, column: 71, scope: !2086)
!3581 = !DILocation(line: 548, column: 21, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !2086, file: !2003, line: 548, column: 6)
!3583 = !DILocation(line: 548, column: 26, scope: !3582)
!3584 = !DILocation(line: 548, column: 7, scope: !3582)
!3585 = !DILocation(line: 548, column: 6, scope: !2086)
!3586 = !DILocation(line: 549, column: 14, scope: !3582)
!3587 = !DILocation(line: 549, column: 19, scope: !3582)
!3588 = !DILocation(line: 549, column: 3, scope: !3582)
!3589 = !DILocation(line: 552, column: 2, scope: !2086)
!3590 = !DILocation(line: 552, column: 2, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !2086, file: !2003, line: 552, column: 2)
!3592 = !{i64 2153634804}
!3593 = !DILocation(line: 552, column: 2, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !3591, file: !2003, line: 552, column: 2)
!3595 = !DILocation(line: 552, column: 2, scope: !3596)
!3596 = distinct !DILexicalBlock(scope: !3594, file: !2003, line: 552, column: 2)
!3597 = !{i64 2153634986}
!3598 = !DILocation(line: 553, column: 1, scope: !2086)
!3599 = !DILocation(line: 112, column: 2, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !1962, file: !1963, line: 112, column: 2)
!3601 = !DILocation(line: 112, column: 2, scope: !1962)
!3602 = !DILocation(line: 113, column: 1, scope: !1962)
!3603 = distinct !DISubprogram(name: "__rt_mutex_lock", scope: !2003, file: !2003, line: 1756, type: !3604, scopeLine: 1758, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3606)
!3604 = !DISubroutineType(types: !3605)
!3605 = !{!78, !1285, !7}
!3606 = !{!3607, !3608}
!3607 = !DILocalVariable(name: "lock", arg: 1, scope: !3603, file: !2003, line: 1756, type: !1285)
!3608 = !DILocalVariable(name: "state", arg: 2, scope: !3603, file: !2003, line: 1757, type: !7)
!3609 = !DILocation(line: 1756, column: 66, scope: !3603)
!3610 = !DILocation(line: 1757, column: 22, scope: !3603)
!3611 = !DILocation(line: 1759, column: 6, scope: !3612)
!3612 = distinct !DILexicalBlock(scope: !3603, file: !2003, line: 1759, column: 6)
!3613 = !DILocation(line: 1759, column: 6, scope: !3603)
!3614 = !DILocation(line: 1760, column: 3, scope: !3612)
!3615 = !DILocation(line: 1762, column: 27, scope: !3603)
!3616 = !DILocation(line: 1762, column: 39, scope: !3603)
!3617 = !DILocation(line: 1762, column: 9, scope: !3603)
!3618 = !DILocation(line: 1762, column: 2, scope: !3603)
!3619 = !DILocation(line: 1763, column: 1, scope: !3603)
!3620 = distinct !DISubprogram(name: "rt_mutex_cmpxchg_acquire", scope: !2003, file: !2003, line: 214, type: !3621, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3623)
!3621 = !DISubroutineType(types: !3622)
!3622 = !{!928, !1285, !50, !50}
!3623 = !{!3624, !3625, !3626, !3627, !3629, !3630, !3632, !3633, !3634, !3635}
!3624 = !DILocalVariable(name: "lock", arg: 1, scope: !3620, file: !2003, line: 214, type: !1285)
!3625 = !DILocalVariable(name: "old", arg: 2, scope: !3620, file: !2003, line: 215, type: !50)
!3626 = !DILocalVariable(name: "new", arg: 3, scope: !3620, file: !2003, line: 216, type: !50)
!3627 = !DILocalVariable(name: "__ai_ptr", scope: !3628, file: !2003, line: 218, type: !49)
!3628 = distinct !DILexicalBlock(scope: !3620, file: !2003, line: 218, column: 9)
!3629 = !DILocalVariable(name: "__ai_oldp", scope: !3628, file: !2003, line: 218, type: !49)
!3630 = !DILocalVariable(name: "success", scope: !3631, file: !2003, line: 218, type: !928)
!3631 = distinct !DILexicalBlock(scope: !3628, file: !2003, line: 218, column: 9)
!3632 = !DILocalVariable(name: "_old", scope: !3631, file: !2003, line: 218, type: !49)
!3633 = !DILocalVariable(name: "__old", scope: !3631, file: !2003, line: 218, type: !50)
!3634 = !DILocalVariable(name: "__new", scope: !3631, file: !2003, line: 218, type: !50)
!3635 = !DILocalVariable(name: "__ptr", scope: !3631, file: !2003, line: 218, type: !1893)
!3636 = !DILocation(line: 214, column: 76, scope: !3620)
!3637 = !DILocation(line: 215, column: 32, scope: !3620)
!3638 = !DILocation(line: 216, column: 32, scope: !3620)
!3639 = !DILocation(line: 218, column: 9, scope: !3628)
!3640 = !DILocation(line: 218, column: 9, scope: !3631)
!3641 = !{i64 2153609803, i64 2153609842, i64 2153609863, i64 2153609900, i64 2153609923, i64 2153609932, i64 2153610133}
!3642 = !DILocation(line: 218, column: 9, scope: !3643)
!3643 = distinct !DILexicalBlock(scope: !3631, file: !2003, line: 218, column: 9)
!3644 = !DILocation(line: 218, column: 9, scope: !3620)
!3645 = !DILocation(line: 218, column: 2, scope: !3620)
!3646 = distinct !DISubprogram(name: "rt_mutex_slowlock", scope: !2003, file: !2003, line: 1734, type: !3647, scopeLine: 1737, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3649)
!3647 = !DISubroutineType(types: !3648)
!3648 = !{!78, !1285, !1294, !7}
!3649 = !{!3650, !3651, !3652, !3653, !3654, !3655, !3658, !3659, !3662}
!3650 = !DILocalVariable(name: "lock", arg: 1, scope: !3646, file: !2003, line: 1734, type: !1285)
!3651 = !DILocalVariable(name: "ww_ctx", arg: 2, scope: !3646, file: !2003, line: 1735, type: !1294)
!3652 = !DILocalVariable(name: "state", arg: 3, scope: !3646, file: !2003, line: 1736, type: !7)
!3653 = !DILocalVariable(name: "flags", scope: !3646, file: !2003, line: 1738, type: !58)
!3654 = !DILocalVariable(name: "ret", scope: !3646, file: !2003, line: 1739, type: !78)
!3655 = !DILocalVariable(name: "__dummy", scope: !3656, file: !2003, line: 1749, type: !58)
!3656 = distinct !DILexicalBlock(scope: !3657, file: !2003, line: 1749, column: 2)
!3657 = distinct !DILexicalBlock(scope: !3646, file: !2003, line: 1749, column: 2)
!3658 = !DILocalVariable(name: "__dummy2", scope: !3656, file: !2003, line: 1749, type: !58)
!3659 = !DILocalVariable(name: "__dummy", scope: !3660, file: !2003, line: 1751, type: !58)
!3660 = distinct !DILexicalBlock(scope: !3661, file: !2003, line: 1751, column: 2)
!3661 = distinct !DILexicalBlock(scope: !3646, file: !2003, line: 1751, column: 2)
!3662 = !DILocalVariable(name: "__dummy2", scope: !3660, file: !2003, line: 1751, type: !58)
!3663 = !DILocation(line: 1734, column: 60, scope: !3646)
!3664 = !DILocation(line: 1735, column: 33, scope: !3646)
!3665 = !DILocation(line: 1736, column: 23, scope: !3646)
!3666 = !DILocation(line: 1738, column: 2, scope: !3646)
!3667 = !DILocation(line: 1738, column: 16, scope: !3646)
!3668 = !DILocation(line: 1739, column: 2, scope: !3646)
!3669 = !DILocation(line: 1739, column: 6, scope: !3646)
!3670 = !DILocation(line: 1749, column: 2, scope: !3646)
!3671 = !DILocation(line: 1749, column: 2, scope: !3656)
!3672 = !DILocation(line: 1749, column: 2, scope: !3657)
!3673 = !DILocation(line: 1750, column: 35, scope: !3646)
!3674 = !DILocation(line: 1750, column: 41, scope: !3646)
!3675 = !DILocation(line: 1750, column: 49, scope: !3646)
!3676 = !DILocation(line: 1750, column: 8, scope: !3646)
!3677 = !DILocation(line: 1750, column: 6, scope: !3646)
!3678 = !DILocation(line: 1751, column: 2, scope: !3646)
!3679 = !DILocation(line: 1751, column: 2, scope: !3660)
!3680 = !DILocation(line: 1751, column: 2, scope: !3661)
!3681 = !DILocation(line: 1753, column: 9, scope: !3646)
!3682 = !DILocation(line: 1754, column: 1, scope: !3646)
!3683 = !DILocation(line: 1753, column: 2, scope: !3646)
!3684 = distinct !DISubprogram(name: "instrument_read_write", scope: !2973, file: !2973, line: 52, type: !2974, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3685)
!3685 = !{!3686, !3687}
!3686 = !DILocalVariable(name: "v", arg: 1, scope: !3684, file: !2973, line: 52, type: !2976)
!3687 = !DILocalVariable(name: "size", arg: 2, scope: !3684, file: !2973, line: 52, type: !1239)
!3688 = !DILocation(line: 52, column: 72, scope: !3684)
!3689 = !DILocation(line: 52, column: 82, scope: !3684)
!3690 = !DILocation(line: 54, column: 20, scope: !3684)
!3691 = !DILocation(line: 54, column: 23, scope: !3684)
!3692 = !DILocation(line: 54, column: 2, scope: !3684)
!3693 = !DILocation(line: 55, column: 2, scope: !3684)
!3694 = !DILocation(line: 56, column: 1, scope: !3684)
!3695 = distinct !DISubprogram(name: "kasan_check_write", scope: !3696, file: !3696, line: 44, type: !3697, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3699)
!3696 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!3697 = !DISubroutineType(types: !3698)
!3698 = !{!928, !2976, !7}
!3699 = !{!3700, !3701}
!3700 = !DILocalVariable(name: "p", arg: 1, scope: !3695, file: !3696, line: 44, type: !2976)
!3701 = !DILocalVariable(name: "size", arg: 2, scope: !3695, file: !3696, line: 44, type: !7)
!3702 = !DILocation(line: 44, column: 59, scope: !3695)
!3703 = !DILocation(line: 44, column: 75, scope: !3695)
!3704 = !DILocation(line: 46, column: 2, scope: !3695)
!3705 = distinct !DISubprogram(name: "kcsan_check_access", scope: !3706, file: !3706, line: 229, type: !3707, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3709)
!3706 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!3707 = !DISubroutineType(types: !3708)
!3708 = !{null, !2976, !1239, !78}
!3709 = !{!3710, !3711, !3712}
!3710 = !DILocalVariable(name: "ptr", arg: 1, scope: !3705, file: !3706, line: 229, type: !2976)
!3711 = !DILocalVariable(name: "size", arg: 2, scope: !3705, file: !3706, line: 229, type: !1239)
!3712 = !DILocalVariable(name: "type", arg: 3, scope: !3705, file: !3706, line: 230, type: !78)
!3713 = !DILocation(line: 229, column: 60, scope: !3705)
!3714 = !DILocation(line: 229, column: 72, scope: !3705)
!3715 = !DILocation(line: 230, column: 15, scope: !3705)
!3716 = !DILocation(line: 230, column: 23, scope: !3705)
!3717 = distinct !DISubprogram(name: "__rt_mutex_slowlock_locked", scope: !2003, file: !2003, line: 1711, type: !3647, scopeLine: 1714, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3718)
!3718 = !{!3719, !3720, !3721, !3722, !3723}
!3719 = !DILocalVariable(name: "lock", arg: 1, scope: !3717, file: !2003, line: 1711, type: !1285)
!3720 = !DILocalVariable(name: "ww_ctx", arg: 2, scope: !3717, file: !2003, line: 1712, type: !1294)
!3721 = !DILocalVariable(name: "state", arg: 3, scope: !3717, file: !2003, line: 1713, type: !7)
!3722 = !DILocalVariable(name: "waiter", scope: !3717, file: !2003, line: 1715, type: !1274)
!3723 = !DILocalVariable(name: "ret", scope: !3717, file: !2003, line: 1716, type: !78)
!3724 = !DILocation(line: 1711, column: 68, scope: !3717)
!3725 = !DILocation(line: 1712, column: 34, scope: !3717)
!3726 = !DILocation(line: 1713, column: 24, scope: !3717)
!3727 = !DILocation(line: 1715, column: 2, scope: !3717)
!3728 = !DILocation(line: 1715, column: 25, scope: !3717)
!3729 = !DILocation(line: 1716, column: 2, scope: !3717)
!3730 = !DILocation(line: 1716, column: 6, scope: !3717)
!3731 = !DILocation(line: 1718, column: 2, scope: !3717)
!3732 = !DILocation(line: 1719, column: 18, scope: !3717)
!3733 = !DILocation(line: 1719, column: 9, scope: !3717)
!3734 = !DILocation(line: 1719, column: 16, scope: !3717)
!3735 = !DILocation(line: 1721, column: 28, scope: !3717)
!3736 = !DILocation(line: 1721, column: 34, scope: !3717)
!3737 = !DILocation(line: 1721, column: 42, scope: !3717)
!3738 = !DILocation(line: 1721, column: 8, scope: !3717)
!3739 = !DILocation(line: 1721, column: 6, scope: !3717)
!3740 = !DILocation(line: 1724, column: 2, scope: !3717)
!3741 = !DILocation(line: 1725, column: 9, scope: !3717)
!3742 = !DILocation(line: 1726, column: 1, scope: !3717)
!3743 = !DILocation(line: 1725, column: 2, scope: !3717)
!3744 = distinct !DISubprogram(name: "rt_mutex_init_waiter", scope: !30, file: !30, line: 211, type: !3745, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3747)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{null, !1273}
!3747 = !{!3748}
!3748 = !DILocalVariable(name: "waiter", arg: 1, scope: !3744, file: !30, line: 211, type: !1273)
!3749 = !DILocation(line: 211, column: 65, scope: !3744)
!3750 = !DILocation(line: 213, column: 29, scope: !3744)
!3751 = !DILocation(line: 213, column: 2, scope: !3744)
!3752 = !DILocation(line: 214, column: 2, scope: !3744)
!3753 = !DILocation(line: 215, column: 2, scope: !3744)
!3754 = !DILocation(line: 216, column: 2, scope: !3744)
!3755 = !DILocation(line: 216, column: 10, scope: !3744)
!3756 = !DILocation(line: 216, column: 21, scope: !3744)
!3757 = !DILocation(line: 217, column: 2, scope: !3744)
!3758 = !DILocation(line: 217, column: 10, scope: !3744)
!3759 = !DILocation(line: 217, column: 15, scope: !3744)
!3760 = !DILocation(line: 218, column: 1, scope: !3744)
!3761 = distinct !DISubprogram(name: "__rt_mutex_slowlock", scope: !2003, file: !2003, line: 1658, type: !3762, scopeLine: 1663, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3764)
!3762 = !DISubroutineType(types: !3763)
!3763 = !{!78, !1285, !1294, !7, !29, !1273}
!3764 = !{!3765, !3766, !3767, !3768, !3769, !3770, !3771, !3773, !3779, !3780, !3785}
!3765 = !DILocalVariable(name: "lock", arg: 1, scope: !3761, file: !2003, line: 1658, type: !1285)
!3766 = !DILocalVariable(name: "ww_ctx", arg: 2, scope: !3761, file: !2003, line: 1659, type: !1294)
!3767 = !DILocalVariable(name: "state", arg: 3, scope: !3761, file: !2003, line: 1660, type: !7)
!3768 = !DILocalVariable(name: "chwalk", arg: 4, scope: !3761, file: !2003, line: 1661, type: !29)
!3769 = !DILocalVariable(name: "waiter", arg: 5, scope: !3761, file: !2003, line: 1662, type: !1273)
!3770 = !DILocalVariable(name: "rtm", scope: !3761, file: !2003, line: 1664, type: !1895)
!3771 = !DILocalVariable(name: "__mptr", scope: !3772, file: !2003, line: 1664, type: !43)
!3772 = distinct !DILexicalBlock(scope: !3761, file: !2003, line: 1664, column: 25)
!3773 = !DILocalVariable(name: "ww", scope: !3761, file: !2003, line: 1665, type: !3774)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_mutex", file: !1296, line: 47, size: 320, elements: !3776)
!3776 = !{!3777, !3778}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3775, file: !1296, line: 48, baseType: !553, size: 256)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3775, file: !1296, line: 49, baseType: !1294, size: 64, offset: 256)
!3779 = !DILocalVariable(name: "ret", scope: !3761, file: !2003, line: 1666, type: !78)
!3780 = !DILocalVariable(name: "__ai_ptr", scope: !3781, file: !2003, line: 1679, type: !2922)
!3781 = distinct !DILexicalBlock(scope: !3782, file: !2003, line: 1679, column: 2)
!3782 = distinct !DILexicalBlock(scope: !3783, file: !2003, line: 1679, column: 2)
!3783 = distinct !DILexicalBlock(scope: !3784, file: !2003, line: 1679, column: 2)
!3784 = distinct !DILexicalBlock(scope: !3761, file: !2003, line: 1679, column: 2)
!3785 = !DILocalVariable(name: "__ret", scope: !3786, file: !2003, line: 1679, type: !7)
!3786 = distinct !DILexicalBlock(scope: !3781, file: !2003, line: 1679, column: 2)
!3787 = !DILocation(line: 1658, column: 62, scope: !3761)
!3788 = !DILocation(line: 1659, column: 35, scope: !3761)
!3789 = !DILocation(line: 1660, column: 25, scope: !3761)
!3790 = !DILocation(line: 1661, column: 35, scope: !3761)
!3791 = !DILocation(line: 1662, column: 36, scope: !3761)
!3792 = !DILocation(line: 1664, column: 2, scope: !3761)
!3793 = !DILocation(line: 1664, column: 19, scope: !3761)
!3794 = !DILocation(line: 1664, column: 25, scope: !3772)
!3795 = !DILocation(line: 1664, column: 25, scope: !3761)
!3796 = !DILocation(line: 1665, column: 2, scope: !3761)
!3797 = !DILocation(line: 1665, column: 19, scope: !3761)
!3798 = !DILocation(line: 1666, column: 2, scope: !3761)
!3799 = !DILocation(line: 1666, column: 6, scope: !3761)
!3800 = !DILocation(line: 1668, column: 2, scope: !3761)
!3801 = !DILocation(line: 1668, column: 2, scope: !3802)
!3802 = distinct !DILexicalBlock(scope: !3761, file: !2003, line: 1668, column: 2)
!3803 = !DILocation(line: 1671, column: 27, scope: !3804)
!3804 = distinct !DILexicalBlock(scope: !3761, file: !2003, line: 1671, column: 6)
!3805 = !DILocation(line: 1671, column: 33, scope: !3804)
!3806 = !DILocation(line: 1671, column: 6, scope: !3804)
!3807 = !DILocation(line: 1671, column: 6, scope: !3761)
!3808 = !DILocation(line: 1676, column: 3, scope: !3809)
!3809 = distinct !DILexicalBlock(scope: !3804, file: !2003, line: 1671, column: 49)
!3810 = !DILocation(line: 1679, column: 2, scope: !3761)
!3811 = !DILocation(line: 1679, column: 2, scope: !3784)
!3812 = !DILocation(line: 1679, column: 2, scope: !3813)
!3813 = distinct !DILexicalBlock(scope: !3784, file: !2003, line: 1679, column: 2)
!3814 = !DILocation(line: 1679, column: 2, scope: !3783)
!3815 = !DILocation(line: 1679, column: 2, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3783, file: !2003, line: 1679, column: 2)
!3817 = !DILocation(line: 1679, column: 2, scope: !3781)
!3818 = !DILocation(line: 1679, column: 2, scope: !3819)
!3819 = distinct !DILexicalBlock(scope: !3781, file: !2003, line: 1679, column: 2)
!3820 = !DILocation(line: 1679, column: 2, scope: !3786)
!3821 = !{i64 2153657983}
!3822 = !DILocation(line: 1679, column: 2, scope: !3782)
!3823 = !DILocation(line: 1681, column: 25, scope: !3761)
!3824 = !DILocation(line: 1681, column: 2, scope: !3761)
!3825 = !DILocation(line: 1683, column: 32, scope: !3761)
!3826 = !DILocation(line: 1683, column: 38, scope: !3761)
!3827 = !DILocation(line: 1683, column: 46, scope: !3761)
!3828 = !DILocation(line: 1683, column: 55, scope: !3761)
!3829 = !DILocation(line: 1683, column: 63, scope: !3761)
!3830 = !DILocation(line: 1683, column: 8, scope: !3761)
!3831 = !DILocation(line: 1683, column: 6, scope: !3761)
!3832 = !DILocation(line: 1684, column: 6, scope: !3833)
!3833 = distinct !DILexicalBlock(scope: !3761, file: !2003, line: 1684, column: 6)
!3834 = !DILocation(line: 1684, column: 6, scope: !3761)
!3835 = !DILocation(line: 1685, column: 33, scope: !3833)
!3836 = !DILocation(line: 1685, column: 39, scope: !3833)
!3837 = !DILocation(line: 1685, column: 47, scope: !3833)
!3838 = !DILocation(line: 1685, column: 60, scope: !3833)
!3839 = !DILocation(line: 1685, column: 9, scope: !3833)
!3840 = !DILocation(line: 1685, column: 7, scope: !3833)
!3841 = !DILocation(line: 1685, column: 3, scope: !3833)
!3842 = !DILocation(line: 1687, column: 6, scope: !3843)
!3843 = distinct !DILexicalBlock(scope: !3761, file: !2003, line: 1687, column: 6)
!3844 = !DILocation(line: 1687, column: 6, scope: !3761)
!3845 = !DILocation(line: 1694, column: 2, scope: !3846)
!3846 = distinct !DILexicalBlock(scope: !3843, file: !2003, line: 1687, column: 20)
!3847 = !DILocation(line: 1695, column: 3, scope: !3848)
!3848 = distinct !DILexicalBlock(scope: !3843, file: !2003, line: 1694, column: 9)
!3849 = !DILocation(line: 1695, column: 3, scope: !3850)
!3850 = distinct !DILexicalBlock(scope: !3848, file: !2003, line: 1695, column: 3)
!3851 = !DILocation(line: 1695, column: 3, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3850, file: !2003, line: 1695, column: 3)
!3853 = !DILocation(line: 1695, column: 3, scope: !3854)
!3854 = distinct !DILexicalBlock(scope: !3850, file: !2003, line: 1695, column: 3)
!3855 = !DILocation(line: 1695, column: 3, scope: !3856)
!3856 = distinct !DILexicalBlock(scope: !3854, file: !2003, line: 1695, column: 3)
!3857 = !DILocation(line: 1695, column: 3, scope: !3858)
!3858 = distinct !DILexicalBlock(scope: !3854, file: !2003, line: 1695, column: 3)
!3859 = !DILocation(line: 1696, column: 17, scope: !3848)
!3860 = !DILocation(line: 1696, column: 23, scope: !3848)
!3861 = !DILocation(line: 1696, column: 3, scope: !3848)
!3862 = !DILocation(line: 1697, column: 28, scope: !3848)
!3863 = !DILocation(line: 1697, column: 33, scope: !3848)
!3864 = !DILocation(line: 1697, column: 41, scope: !3848)
!3865 = !DILocation(line: 1697, column: 47, scope: !3848)
!3866 = !DILocation(line: 1697, column: 3, scope: !3848)
!3867 = !DILocation(line: 1704, column: 25, scope: !3761)
!3868 = !DILocation(line: 1704, column: 2, scope: !3761)
!3869 = !DILocation(line: 1706, column: 23, scope: !3761)
!3870 = !DILocation(line: 1706, column: 29, scope: !3761)
!3871 = !DILocation(line: 1706, column: 2, scope: !3761)
!3872 = !DILocation(line: 1708, column: 9, scope: !3761)
!3873 = !DILocation(line: 1708, column: 2, scope: !3761)
!3874 = !DILocation(line: 1709, column: 1, scope: !3761)
!3875 = distinct !DISubprogram(name: "debug_rt_mutex_free_waiter", scope: !30, file: !30, line: 205, type: !3745, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3876)
!3876 = !{!3877}
!3877 = !DILocalVariable(name: "waiter", arg: 1, scope: !3875, file: !30, line: 205, type: !1273)
!3878 = !DILocation(line: 205, column: 71, scope: !3875)
!3879 = !DILocation(line: 209, column: 1, scope: !3875)
!3880 = distinct !DISubprogram(name: "debug_rt_mutex_init_waiter", scope: !30, file: !30, line: 199, type: !3745, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3881)
!3881 = !{!3882}
!3882 = !DILocalVariable(name: "waiter", arg: 1, scope: !3880, file: !30, line: 199, type: !1273)
!3883 = !DILocation(line: 199, column: 71, scope: !3880)
!3884 = !DILocation(line: 203, column: 1, scope: !3880)
!3885 = !DILocation(line: 95, column: 1, scope: !1972)
!3886 = !DILocation(line: 95, column: 1, scope: !1980)
!3887 = !DILocation(line: 95, column: 1, scope: !1979)
!3888 = !DILocation(line: 95, column: 1, scope: !1982)
!3889 = !DILocation(line: 95, column: 1, scope: !1985)
!3890 = !DILocation(line: 95, column: 1, scope: !1987)
!3891 = !{i64 2153478270}
!3892 = !DILocation(line: 95, column: 1, scope: !1983)
!3893 = !DILocation(line: 95, column: 1, scope: !1989)
!3894 = !DILocation(line: 95, column: 1, scope: !1993)
!3895 = !DILocation(line: 95, column: 1, scope: !1992)
!3896 = !DILocation(line: 95, column: 1, scope: !3897)
!3897 = distinct !DILexicalBlock(scope: !1992, file: !1966, line: 95, column: 1)
!3898 = !DILocation(line: 95, column: 1, scope: !3899)
!3899 = distinct !DILexicalBlock(scope: !1992, file: !1966, line: 95, column: 1)
!3900 = !{i64 2153479472, i64 2153479501, i64 2153479547, i64 2153479605, i64 2153479659, i64 2153479713, i64 2153479768, i64 2153479799, i64 2153480107, i64 2153480113, i64 2153480160, i64 2153480183, i64 2153480209}
!3901 = !DILocation(line: 95, column: 1, scope: !3902)
!3902 = distinct !DILexicalBlock(scope: !1992, file: !1966, line: 95, column: 1)
!3903 = !DILocation(line: 95, column: 1, scope: !1990)
!3904 = !DILocation(line: 95, column: 1, scope: !3905)
!3905 = distinct !DILexicalBlock(scope: !1979, file: !1966, line: 95, column: 1)
!3906 = !{i64 2153480561}
!3907 = !DILocation(line: 95, column: 1, scope: !1995)
!3908 = !DILocation(line: 95, column: 1, scope: !1998)
!3909 = !DILocation(line: 95, column: 1, scope: !3910)
!3910 = distinct !DILexicalBlock(scope: !1998, file: !1966, line: 95, column: 1)
!3911 = !DILocation(line: 95, column: 1, scope: !3912)
!3912 = distinct !DILexicalBlock(scope: !3910, file: !1966, line: 95, column: 1)
!3913 = !DILocation(line: 95, column: 1, scope: !3914)
!3914 = distinct !DILexicalBlock(scope: !1995, file: !1966, line: 95, column: 1)
!3915 = !DILocation(line: 95, column: 1, scope: !3916)
!3916 = distinct !DILexicalBlock(scope: !3914, file: !1966, line: 95, column: 1)
!3917 = !DILocation(line: 95, column: 1, scope: !3918)
!3918 = distinct !DILexicalBlock(scope: !3916, file: !1966, line: 95, column: 1)
!3919 = !DILocation(line: 95, column: 1, scope: !3920)
!3920 = distinct !DILexicalBlock(scope: !1979, file: !1966, line: 95, column: 1)
!3921 = !{i64 2153487046}
!3922 = !DILocation(line: 95, column: 1, scope: !3923)
!3923 = distinct !DILexicalBlock(scope: !3920, file: !1966, line: 95, column: 1)
!3924 = !DILocation(line: 95, column: 1, scope: !3925)
!3925 = distinct !DILexicalBlock(scope: !3923, file: !1966, line: 95, column: 1)
!3926 = !{i64 2153487205}
!3927 = distinct !DISubprogram(name: "rt_mutex_handle_deadlock", scope: !2003, file: !2003, line: 1626, type: !3928, scopeLine: 1629, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3930)
!3928 = !DISubroutineType(types: !3929)
!3929 = !{null, !78, !78, !1285, !1273}
!3930 = !{!3931, !3932, !3933, !3934, !3935, !3937, !3941, !3947}
!3931 = !DILocalVariable(name: "res", arg: 1, scope: !3927, file: !2003, line: 1626, type: !78)
!3932 = !DILocalVariable(name: "detect_deadlock", arg: 2, scope: !3927, file: !2003, line: 1626, type: !78)
!3933 = !DILocalVariable(name: "lock", arg: 3, scope: !3927, file: !2003, line: 1627, type: !1285)
!3934 = !DILocalVariable(name: "w", arg: 4, scope: !3927, file: !2003, line: 1628, type: !1273)
!3935 = !DILocalVariable(name: "__ret_warn_on", scope: !3936, file: !2003, line: 1642, type: !78)
!3936 = distinct !DILexicalBlock(scope: !3927, file: !2003, line: 1642, column: 2)
!3937 = !DILocalVariable(name: "__flags", scope: !3938, file: !2003, line: 1642, type: !78)
!3938 = distinct !DILexicalBlock(scope: !3939, file: !2003, line: 1642, column: 2)
!3939 = distinct !DILexicalBlock(scope: !3940, file: !2003, line: 1642, column: 2)
!3940 = distinct !DILexicalBlock(scope: !3936, file: !2003, line: 1642, column: 2)
!3941 = !DILocalVariable(name: "__ai_ptr", scope: !3942, file: !2003, line: 1645, type: !2922)
!3942 = distinct !DILexicalBlock(scope: !3943, file: !2003, line: 1645, column: 3)
!3943 = distinct !DILexicalBlock(scope: !3944, file: !2003, line: 1645, column: 3)
!3944 = distinct !DILexicalBlock(scope: !3945, file: !2003, line: 1645, column: 3)
!3945 = distinct !DILexicalBlock(scope: !3946, file: !2003, line: 1645, column: 3)
!3946 = distinct !DILexicalBlock(scope: !3927, file: !2003, line: 1644, column: 12)
!3947 = !DILocalVariable(name: "__ret", scope: !3948, file: !2003, line: 1645, type: !7)
!3948 = distinct !DILexicalBlock(scope: !3942, file: !2003, line: 1645, column: 3)
!3949 = !DILocation(line: 1626, column: 50, scope: !3927)
!3950 = !DILocation(line: 1626, column: 59, scope: !3927)
!3951 = !DILocation(line: 1627, column: 33, scope: !3927)
!3952 = !DILocation(line: 1628, column: 35, scope: !3927)
!3953 = !DILocation(line: 1634, column: 6, scope: !3954)
!3954 = distinct !DILexicalBlock(scope: !3927, file: !2003, line: 1634, column: 6)
!3955 = !DILocation(line: 1634, column: 10, scope: !3954)
!3956 = !DILocation(line: 1634, column: 24, scope: !3954)
!3957 = !DILocation(line: 1634, column: 27, scope: !3954)
!3958 = !DILocation(line: 1634, column: 6, scope: !3927)
!3959 = !DILocation(line: 1635, column: 3, scope: !3954)
!3960 = !DILocation(line: 1640, column: 2, scope: !3927)
!3961 = !DILocation(line: 1642, column: 2, scope: !3936)
!3962 = !DILocation(line: 1642, column: 2, scope: !3940)
!3963 = !DILocation(line: 1642, column: 2, scope: !3939)
!3964 = !DILocation(line: 1642, column: 2, scope: !3965)
!3965 = distinct !DILexicalBlock(scope: !3939, file: !2003, line: 1642, column: 2)
!3966 = !DILocation(line: 1642, column: 2, scope: !3938)
!3967 = !DILocation(line: 1642, column: 2, scope: !3968)
!3968 = distinct !DILexicalBlock(scope: !3938, file: !2003, line: 1642, column: 2)
!3969 = !DILocation(line: 1642, column: 2, scope: !3970)
!3970 = distinct !DILexicalBlock(scope: !3938, file: !2003, line: 1642, column: 2)
!3971 = !{i64 2153652448, i64 2153652477, i64 2153652523, i64 2153652581, i64 2153652635, i64 2153652689, i64 2153652744, i64 2153652775, i64 2153653083, i64 2153653089, i64 2153653136, i64 2153653159, i64 2153653185}
!3972 = !DILocation(line: 1642, column: 2, scope: !3973)
!3973 = distinct !DILexicalBlock(scope: !3938, file: !2003, line: 1642, column: 2)
!3974 = !DILocation(line: 1642, column: 2, scope: !3975)
!3975 = distinct !DILexicalBlock(scope: !3939, file: !2003, line: 1642, column: 2)
!3976 = !DILocation(line: 1642, column: 2, scope: !3927)
!3977 = !DILocation(line: 1644, column: 2, scope: !3927)
!3978 = !DILocation(line: 1645, column: 3, scope: !3946)
!3979 = !DILocation(line: 1645, column: 3, scope: !3945)
!3980 = !DILocation(line: 1645, column: 3, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3945, file: !2003, line: 1645, column: 3)
!3982 = !DILocation(line: 1645, column: 3, scope: !3944)
!3983 = !DILocation(line: 1645, column: 3, scope: !3984)
!3984 = distinct !DILexicalBlock(scope: !3944, file: !2003, line: 1645, column: 3)
!3985 = !DILocation(line: 1645, column: 3, scope: !3942)
!3986 = !DILocation(line: 1645, column: 3, scope: !3987)
!3987 = distinct !DILexicalBlock(scope: !3942, file: !2003, line: 1645, column: 3)
!3988 = !DILocation(line: 1645, column: 3, scope: !3948)
!3989 = !{i64 2153655056}
!3990 = !DILocation(line: 1645, column: 3, scope: !3943)
!3991 = !DILocation(line: 1646, column: 3, scope: !3946)
!3992 = distinct !{!3992, !3977, !3993, !3090}
!3993 = !DILocation(line: 1647, column: 2, scope: !3927)
!3994 = !DILocation(line: 122, column: 1, scope: !2014)
!3995 = !DILocation(line: 122, column: 1, scope: !2022)
!3996 = !DILocation(line: 122, column: 1, scope: !2021)
!3997 = !DILocation(line: 122, column: 1, scope: !2024)
!3998 = !DILocation(line: 122, column: 1, scope: !2027)
!3999 = !DILocation(line: 122, column: 1, scope: !2029)
!4000 = !{i64 2153527837}
!4001 = !DILocation(line: 122, column: 1, scope: !2025)
!4002 = !DILocation(line: 122, column: 1, scope: !2031)
!4003 = !DILocation(line: 122, column: 1, scope: !2035)
!4004 = !DILocation(line: 122, column: 1, scope: !2034)
!4005 = !DILocation(line: 122, column: 1, scope: !4006)
!4006 = distinct !DILexicalBlock(scope: !2034, file: !1966, line: 122, column: 1)
!4007 = !DILocation(line: 122, column: 1, scope: !4008)
!4008 = distinct !DILexicalBlock(scope: !2034, file: !1966, line: 122, column: 1)
!4009 = !{i64 2153529033, i64 2153529062, i64 2153529108, i64 2153529166, i64 2153529220, i64 2153529274, i64 2153529329, i64 2153529360, i64 2153529668, i64 2153529674, i64 2153529721, i64 2153529744, i64 2153529770}
!4010 = !DILocation(line: 122, column: 1, scope: !4011)
!4011 = distinct !DILexicalBlock(scope: !2034, file: !1966, line: 122, column: 1)
!4012 = !DILocation(line: 122, column: 1, scope: !2032)
!4013 = !DILocation(line: 122, column: 1, scope: !4014)
!4014 = distinct !DILexicalBlock(scope: !2021, file: !1966, line: 122, column: 1)
!4015 = !{i64 2153530122}
!4016 = !DILocation(line: 122, column: 1, scope: !2037)
!4017 = !DILocation(line: 122, column: 1, scope: !2040)
!4018 = !DILocation(line: 122, column: 1, scope: !4019)
!4019 = distinct !DILexicalBlock(scope: !2040, file: !1966, line: 122, column: 1)
!4020 = !DILocation(line: 122, column: 1, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !4019, file: !1966, line: 122, column: 1)
!4022 = !DILocation(line: 122, column: 1, scope: !4023)
!4023 = distinct !DILexicalBlock(scope: !2037, file: !1966, line: 122, column: 1)
!4024 = !DILocation(line: 122, column: 1, scope: !4025)
!4025 = distinct !DILexicalBlock(scope: !4023, file: !1966, line: 122, column: 1)
!4026 = !DILocation(line: 122, column: 1, scope: !4027)
!4027 = distinct !DILexicalBlock(scope: !4025, file: !1966, line: 122, column: 1)
!4028 = !DILocation(line: 122, column: 1, scope: !4029)
!4029 = distinct !DILexicalBlock(scope: !2021, file: !1966, line: 122, column: 1)
!4030 = !{i64 2153536481}
!4031 = !DILocation(line: 122, column: 1, scope: !4032)
!4032 = distinct !DILexicalBlock(scope: !4029, file: !1966, line: 122, column: 1)
!4033 = !DILocation(line: 122, column: 1, scope: !4034)
!4034 = distinct !DILexicalBlock(scope: !4032, file: !1966, line: 122, column: 1)
!4035 = !{i64 2153536640}
!4036 = distinct !DISubprogram(name: "static_key_false", scope: !4037, file: !4037, line: 205, type: !4038, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4058)
!4037 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!4038 = !DISubroutineType(types: !4039)
!4039 = !{!928, !4040}
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !4037, line: 85, size: 128, elements: !4042)
!4042 = !{!4043, !4044}
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4041, file: !4037, line: 86, baseType: !73, size: 32)
!4044 = !DIDerivedType(tag: DW_TAG_member, scope: !4041, file: !4037, line: 101, baseType: !4045, size: 64, offset: 64)
!4045 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4041, file: !4037, line: 101, size: 64, elements: !4046)
!4046 = !{!4047, !4048, !4055}
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4045, file: !4037, line: 102, baseType: !58, size: 64)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !4045, file: !4037, line: 103, baseType: !4049, size: 64)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !4037, line: 117, size: 128, elements: !4051)
!4051 = !{!4052, !4053, !4054}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4050, file: !4037, line: 118, baseType: !532, size: 32)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4050, file: !4037, line: 119, baseType: !532, size: 32, offset: 32)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4050, file: !4037, line: 120, baseType: !577, size: 64, offset: 64)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4045, file: !4037, line: 104, baseType: !4056, size: 64)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !4037, line: 104, flags: DIFlagFwdDecl)
!4058 = !{!4059}
!4059 = !DILocalVariable(name: "key", arg: 1, scope: !4036, file: !4037, line: 205, type: !4040)
!4060 = !DILocation(line: 205, column: 65, scope: !4036)
!4061 = !DILocation(line: 207, column: 28, scope: !4036)
!4062 = !DILocation(line: 207, column: 9, scope: !4036)
!4063 = !DILocation(line: 207, column: 2, scope: !4036)
!4064 = distinct !DISubprogram(name: "cpu_online", scope: !357, file: !357, line: 1080, type: !4065, scopeLine: 1081, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4067)
!4065 = !DISubroutineType(types: !4066)
!4066 = !{!928, !7}
!4067 = !{!4068}
!4068 = !DILocalVariable(name: "cpu", arg: 1, scope: !4064, file: !357, line: 1080, type: !7)
!4069 = !DILocation(line: 1080, column: 44, scope: !4064)
!4070 = !DILocation(line: 1082, column: 26, scope: !4064)
!4071 = !DILocation(line: 1082, column: 9, scope: !4064)
!4072 = !DILocation(line: 1082, column: 2, scope: !4064)
!4073 = distinct !DISubprogram(name: "__preempt_count_add", scope: !4074, file: !4074, line: 78, type: !1221, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4075)
!4074 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!4075 = !{!4076, !4077, !4080}
!4076 = !DILocalVariable(name: "val", arg: 1, scope: !4073, file: !4074, line: 78, type: !78)
!4077 = !DILocalVariable(name: "pao_ID__", scope: !4078, file: !4074, line: 80, type: !4079)
!4078 = distinct !DILexicalBlock(scope: !4073, file: !4074, line: 80, column: 2)
!4079 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!4080 = !DILocalVariable(name: "pto_val__", scope: !4081, file: !4074, line: 80, type: !61)
!4081 = distinct !DILexicalBlock(scope: !4082, file: !4074, line: 80, column: 2)
!4082 = distinct !DILexicalBlock(scope: !4083, file: !4074, line: 80, column: 2)
!4083 = distinct !DILexicalBlock(scope: !4078, file: !4074, line: 80, column: 2)
!4084 = !DILocation(line: 78, column: 53, scope: !4073)
!4085 = !DILocation(line: 80, column: 2, scope: !4073)
!4086 = !DILocation(line: 80, column: 2, scope: !4078)
!4087 = !DILocation(line: 80, column: 2, scope: !4083)
!4088 = !DILocation(line: 80, column: 2, scope: !4089)
!4089 = distinct !DILexicalBlock(scope: !4083, file: !4074, line: 80, column: 2)
!4090 = !{i64 2149465129}
!4091 = !DILocation(line: 80, column: 2, scope: !4082)
!4092 = !DILocation(line: 80, column: 2, scope: !4093)
!4093 = distinct !DILexicalBlock(scope: !4082, file: !4074, line: 80, column: 2)
!4094 = !{i64 2149465424}
!4095 = !DILocation(line: 80, column: 2, scope: !4081)
!4096 = !{i64 2149466129}
!4097 = !DILocation(line: 81, column: 1, scope: !4073)
!4098 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !4074, file: !4074, line: 93, type: !4099, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4101)
!4099 = !DISubroutineType(types: !4100)
!4100 = !{!928}
!4101 = !{!4102}
!4102 = !DILocalVariable(name: "c", scope: !4103, file: !4074, line: 95, type: !928)
!4103 = distinct !DILexicalBlock(scope: !4098, file: !4074, line: 95, column: 9)
!4104 = !DILocation(line: 95, column: 9, scope: !4103)
!4105 = !{i64 2149469485, i64 2149469578}
!4106 = !DILocation(line: 95, column: 9, scope: !4098)
!4107 = !DILocation(line: 95, column: 2, scope: !4098)
!4108 = distinct !DISubprogram(name: "arch_static_branch", scope: !4109, file: !4109, line: 25, type: !4110, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4112)
!4109 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!4110 = !DISubroutineType(types: !4111)
!4111 = !{!928, !4040, !928}
!4112 = !{!4113, !4114, !4115}
!4113 = !DILocalVariable(name: "key", arg: 1, scope: !4108, file: !4109, line: 25, type: !4040)
!4114 = !DILocalVariable(name: "branch", arg: 2, scope: !4108, file: !4109, line: 25, type: !928)
!4115 = !DILabel(scope: !4108, name: "l_yes", file: !4109, line: 33)
!4116 = !DILocation(line: 25, column: 67, scope: !4108)
!4117 = !DILocation(line: 25, column: 77, scope: !4108)
!4118 = !DILocation(line: 30, column: 13, scope: !4108)
!4119 = !DILocation(line: 30, column: 28, scope: !4108)
!4120 = !DILocation(line: 30, column: 26, scope: !4108)
!4121 = !DILocation(line: 27, column: 2, scope: !4108)
!4122 = !{i64 1057195, i64 1057239, i64 2148541922, i64 2148541943, i64 2148541969, i64 2148542002, i64 2148542036, i64 2148542060}
!4123 = !DILocation(line: 32, column: 2, scope: !4108)
!4124 = !DILocation(line: 33, column: 1, scope: !4108)
!4125 = !DILocation(line: 34, column: 2, scope: !4108)
!4126 = !DILocation(line: 35, column: 1, scope: !4108)
!4127 = distinct !DISubprogram(name: "cpumask_test_cpu", scope: !357, file: !357, line: 502, type: !4128, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4130)
!4128 = !DISubroutineType(types: !4129)
!4129 = !{!928, !78, !1911}
!4130 = !{!4131, !4132}
!4131 = !DILocalVariable(name: "cpu", arg: 1, scope: !4127, file: !357, line: 502, type: !78)
!4132 = !DILocalVariable(name: "cpumask", arg: 2, scope: !4127, file: !357, line: 502, type: !1911)
!4133 = !DILocation(line: 502, column: 50, scope: !4127)
!4134 = !DILocation(line: 502, column: 77, scope: !4127)
!4135 = !DILocation(line: 504, column: 9, scope: !4127)
!4136 = !DILocation(line: 504, column: 2, scope: !4127)
!4137 = distinct !DISubprogram(name: "_test_bit", scope: !4138, file: !4138, line: 139, type: !4139, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4141)
!4138 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!4139 = !DISubroutineType(types: !4140)
!4140 = !{!928, !58, !1931}
!4141 = !{!4142, !4143}
!4142 = !DILocalVariable(name: "nr", arg: 1, scope: !4137, file: !4138, line: 139, type: !58)
!4143 = !DILocalVariable(name: "addr", arg: 2, scope: !4137, file: !4138, line: 139, type: !1931)
!4144 = !DILocation(line: 139, column: 25, scope: !4137)
!4145 = !DILocation(line: 139, column: 59, scope: !4137)
!4146 = !DILocation(line: 141, column: 25, scope: !4137)
!4147 = !DILocation(line: 141, column: 32, scope: !4137)
!4148 = !DILocation(line: 141, column: 30, scope: !4137)
!4149 = !DILocation(line: 141, column: 2, scope: !4137)
!4150 = !DILocation(line: 142, column: 23, scope: !4137)
!4151 = !DILocation(line: 142, column: 27, scope: !4137)
!4152 = !DILocation(line: 142, column: 9, scope: !4137)
!4153 = !DILocation(line: 142, column: 2, scope: !4137)
!4154 = distinct !DISubprogram(name: "cpumask_check", scope: !357, file: !357, line: 148, type: !4155, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4157)
!4155 = !DISubroutineType(types: !4156)
!4156 = !{!7, !7}
!4157 = !{!4158}
!4158 = !DILocalVariable(name: "cpu", arg: 1, scope: !4154, file: !357, line: 148, type: !7)
!4159 = !DILocation(line: 148, column: 64, scope: !4154)
!4160 = !DILocation(line: 150, column: 20, scope: !4154)
!4161 = !DILocation(line: 150, column: 2, scope: !4154)
!4162 = !DILocation(line: 151, column: 9, scope: !4154)
!4163 = !DILocation(line: 151, column: 2, scope: !4154)
!4164 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !2973, file: !2973, line: 66, type: !2974, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4165)
!4165 = !{!4166, !4167}
!4166 = !DILocalVariable(name: "v", arg: 1, scope: !4164, file: !2973, line: 66, type: !2976)
!4167 = !DILocalVariable(name: "size", arg: 2, scope: !4164, file: !2973, line: 66, type: !1239)
!4168 = !DILocation(line: 66, column: 73, scope: !4164)
!4169 = !DILocation(line: 66, column: 83, scope: !4164)
!4170 = !DILocation(line: 68, column: 19, scope: !4164)
!4171 = !DILocation(line: 68, column: 22, scope: !4164)
!4172 = !DILocation(line: 68, column: 2, scope: !4164)
!4173 = !DILocation(line: 69, column: 2, scope: !4164)
!4174 = !DILocation(line: 70, column: 1, scope: !4164)
!4175 = distinct !DISubprogram(name: "arch_test_bit", scope: !4176, file: !4176, line: 237, type: !4139, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4177)
!4176 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!4177 = !{!4178, !4179}
!4178 = !DILocalVariable(name: "nr", arg: 1, scope: !4175, file: !4176, line: 237, type: !58)
!4179 = !DILocalVariable(name: "addr", arg: 2, scope: !4175, file: !4176, line: 237, type: !1931)
!4180 = !DILocation(line: 237, column: 29, scope: !4175)
!4181 = !DILocation(line: 237, column: 63, scope: !4175)
!4182 = !DILocation(line: 239, column: 30, scope: !4175)
!4183 = !DILocation(line: 239, column: 9, scope: !4175)
!4184 = !DILocation(line: 239, column: 54, scope: !4175)
!4185 = !DILocation(line: 239, column: 58, scope: !4175)
!4186 = !DILocation(line: 239, column: 36, scope: !4175)
!4187 = !DILocation(line: 240, column: 26, scope: !4175)
!4188 = !DILocation(line: 240, column: 30, scope: !4175)
!4189 = !DILocation(line: 240, column: 8, scope: !4175)
!4190 = !DILocation(line: 239, column: 2, scope: !4175)
!4191 = distinct !DISubprogram(name: "kasan_check_read", scope: !3696, file: !3696, line: 40, type: !3697, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4192)
!4192 = !{!4193, !4194}
!4193 = !DILocalVariable(name: "p", arg: 1, scope: !4191, file: !3696, line: 40, type: !2976)
!4194 = !DILocalVariable(name: "size", arg: 2, scope: !4191, file: !3696, line: 40, type: !7)
!4195 = !DILocation(line: 40, column: 58, scope: !4191)
!4196 = !DILocation(line: 40, column: 74, scope: !4191)
!4197 = !DILocation(line: 42, column: 2, scope: !4191)
!4198 = distinct !DISubprogram(name: "constant_test_bit", scope: !4176, file: !4176, line: 204, type: !4199, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4201)
!4199 = !DISubroutineType(types: !4200)
!4200 = !{!928, !577, !1931}
!4201 = !{!4202, !4203}
!4202 = !DILocalVariable(name: "nr", arg: 1, scope: !4198, file: !4176, line: 204, type: !577)
!4203 = !DILocalVariable(name: "addr", arg: 2, scope: !4198, file: !4176, line: 204, type: !1931)
!4204 = !DILocation(line: 204, column: 52, scope: !4198)
!4205 = !DILocation(line: 204, column: 86, scope: !4198)
!4206 = !DILocation(line: 206, column: 19, scope: !4198)
!4207 = !DILocation(line: 206, column: 22, scope: !4198)
!4208 = !DILocation(line: 206, column: 15, scope: !4198)
!4209 = !DILocation(line: 207, column: 4, scope: !4198)
!4210 = !DILocation(line: 207, column: 9, scope: !4198)
!4211 = !DILocation(line: 207, column: 12, scope: !4198)
!4212 = !DILocation(line: 206, column: 44, scope: !4198)
!4213 = !DILocation(line: 207, column: 37, scope: !4198)
!4214 = !DILocation(line: 206, column: 2, scope: !4198)
!4215 = distinct !DISubprogram(name: "variable_test_bit", scope: !4176, file: !4176, line: 224, type: !4199, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4216)
!4216 = !{!4217, !4218, !4219}
!4217 = !DILocalVariable(name: "nr", arg: 1, scope: !4215, file: !4176, line: 224, type: !577)
!4218 = !DILocalVariable(name: "addr", arg: 2, scope: !4215, file: !4176, line: 224, type: !1931)
!4219 = !DILocalVariable(name: "oldbit", scope: !4215, file: !4176, line: 226, type: !928)
!4220 = !DILocation(line: 224, column: 52, scope: !4215)
!4221 = !DILocation(line: 224, column: 86, scope: !4215)
!4222 = !DILocation(line: 226, column: 2, scope: !4215)
!4223 = !DILocation(line: 226, column: 7, scope: !4215)
!4224 = !DILocation(line: 231, column: 33, scope: !4215)
!4225 = !DILocation(line: 231, column: 46, scope: !4215)
!4226 = !DILocation(line: 228, column: 2, scope: !4215)
!4227 = !{i64 2147980733, i64 2147980807}
!4228 = !DILocation(line: 233, column: 9, scope: !4215)
!4229 = !DILocation(line: 234, column: 1, scope: !4215)
!4230 = !DILocation(line: 233, column: 2, scope: !4215)
!4231 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !357, file: !357, line: 140, type: !4232, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4234)
!4232 = !DISubroutineType(types: !4233)
!4233 = !{null, !7, !7}
!4234 = !{!4235, !4236}
!4235 = !DILocalVariable(name: "cpu", arg: 1, scope: !4231, file: !357, line: 140, type: !7)
!4236 = !DILocalVariable(name: "bits", arg: 2, scope: !4231, file: !357, line: 140, type: !7)
!4237 = !DILocation(line: 140, column: 60, scope: !4231)
!4238 = !DILocation(line: 140, column: 78, scope: !4231)
!4239 = !DILocation(line: 145, column: 1, scope: !4231)
!4240 = !DISubprogram(name: "__warn_printk", scope: !4241, file: !4241, line: 93, type: !4242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4241 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!4242 = !DISubroutineType(types: !4243)
!4243 = !{null, !931, null}
!4244 = !DISubprogram(name: "schedule", scope: !46, file: !46, line: 303, type: !1228, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4245 = distinct !DISubprogram(name: "rt_mutex_cmpxchg_release", scope: !2003, file: !2003, line: 221, type: !3621, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4246)
!4246 = !{!4247, !4248, !4249, !4250, !4252, !4253, !4255, !4256, !4257, !4258}
!4247 = !DILocalVariable(name: "lock", arg: 1, scope: !4245, file: !2003, line: 221, type: !1285)
!4248 = !DILocalVariable(name: "old", arg: 2, scope: !4245, file: !2003, line: 222, type: !50)
!4249 = !DILocalVariable(name: "new", arg: 3, scope: !4245, file: !2003, line: 223, type: !50)
!4250 = !DILocalVariable(name: "__ai_ptr", scope: !4251, file: !2003, line: 225, type: !49)
!4251 = distinct !DILexicalBlock(scope: !4245, file: !2003, line: 225, column: 9)
!4252 = !DILocalVariable(name: "__ai_oldp", scope: !4251, file: !2003, line: 225, type: !49)
!4253 = !DILocalVariable(name: "success", scope: !4254, file: !2003, line: 225, type: !928)
!4254 = distinct !DILexicalBlock(scope: !4251, file: !2003, line: 225, column: 9)
!4255 = !DILocalVariable(name: "_old", scope: !4254, file: !2003, line: 225, type: !49)
!4256 = !DILocalVariable(name: "__old", scope: !4254, file: !2003, line: 225, type: !50)
!4257 = !DILocalVariable(name: "__new", scope: !4254, file: !2003, line: 225, type: !50)
!4258 = !DILocalVariable(name: "__ptr", scope: !4254, file: !2003, line: 225, type: !1893)
!4259 = !DILocation(line: 221, column: 76, scope: !4245)
!4260 = !DILocation(line: 222, column: 32, scope: !4245)
!4261 = !DILocation(line: 223, column: 32, scope: !4245)
!4262 = !DILocation(line: 225, column: 9, scope: !4251)
!4263 = !DILocation(line: 225, column: 9, scope: !4264)
!4264 = distinct !DILexicalBlock(scope: !4251, file: !2003, line: 225, column: 9)
!4265 = !DILocation(line: 225, column: 9, scope: !4254)
!4266 = !{i64 2153613546, i64 2153613585, i64 2153613606, i64 2153613643, i64 2153613666, i64 2153613675, i64 2153613876}
!4267 = !DILocation(line: 225, column: 9, scope: !4268)
!4268 = distinct !DILexicalBlock(scope: !4254, file: !2003, line: 225, column: 9)
!4269 = !DILocation(line: 225, column: 9, scope: !4245)
!4270 = !DILocation(line: 225, column: 2, scope: !4245)
!4271 = distinct !DISubprogram(name: "rt_mutex_slowunlock", scope: !2003, file: !2003, line: 1387, type: !2113, scopeLine: 1388, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4272)
!4272 = !{!4273, !4274, !4275, !4276, !4279, !4280, !4284, !4285, !4288}
!4273 = !DILocalVariable(name: "lock", arg: 1, scope: !4271, file: !2003, line: 1387, type: !1285)
!4274 = !DILocalVariable(name: "wqh", scope: !4271, file: !2003, line: 1389, type: !2090)
!4275 = !DILocalVariable(name: "flags", scope: !4271, file: !2003, line: 1390, type: !58)
!4276 = !DILocalVariable(name: "__dummy", scope: !4277, file: !2003, line: 1393, type: !58)
!4277 = distinct !DILexicalBlock(scope: !4278, file: !2003, line: 1393, column: 2)
!4278 = distinct !DILexicalBlock(scope: !4271, file: !2003, line: 1393, column: 2)
!4279 = !DILocalVariable(name: "__dummy2", scope: !4277, file: !2003, line: 1393, type: !58)
!4280 = !DILocalVariable(name: "__dummy", scope: !4281, file: !2003, line: 1433, type: !58)
!4281 = distinct !DILexicalBlock(scope: !4282, file: !2003, line: 1433, column: 3)
!4282 = distinct !DILexicalBlock(scope: !4283, file: !2003, line: 1433, column: 3)
!4283 = distinct !DILexicalBlock(scope: !4271, file: !2003, line: 1428, column: 38)
!4284 = !DILocalVariable(name: "__dummy2", scope: !4281, file: !2003, line: 1433, type: !58)
!4285 = !DILocalVariable(name: "__dummy", scope: !4286, file: !2003, line: 1443, type: !58)
!4286 = distinct !DILexicalBlock(scope: !4287, file: !2003, line: 1443, column: 2)
!4287 = distinct !DILexicalBlock(scope: !4271, file: !2003, line: 1443, column: 2)
!4288 = !DILocalVariable(name: "__dummy2", scope: !4286, file: !2003, line: 1443, type: !58)
!4289 = !DILocation(line: 1387, column: 63, scope: !4271)
!4290 = !DILocation(line: 1389, column: 2, scope: !4271)
!4291 = !DILocation(line: 1390, column: 2, scope: !4271)
!4292 = !DILocation(line: 1390, column: 16, scope: !4271)
!4293 = !DILocation(line: 1393, column: 2, scope: !4271)
!4294 = !DILocation(line: 1393, column: 2, scope: !4277)
!4295 = !DILocation(line: 1393, column: 2, scope: !4278)
!4296 = !DILocation(line: 1395, column: 24, scope: !4271)
!4297 = !DILocation(line: 1395, column: 2, scope: !4271)
!4298 = !DILocation(line: 1428, column: 2, scope: !4271)
!4299 = !DILocation(line: 1428, column: 31, scope: !4271)
!4300 = !DILocation(line: 1428, column: 10, scope: !4271)
!4301 = !DILocation(line: 1428, column: 9, scope: !4271)
!4302 = !DILocation(line: 1430, column: 28, scope: !4303)
!4303 = distinct !DILexicalBlock(scope: !4283, file: !2003, line: 1430, column: 7)
!4304 = !DILocation(line: 1430, column: 34, scope: !4303)
!4305 = !DILocation(line: 1430, column: 7, scope: !4303)
!4306 = !DILocation(line: 1430, column: 41, scope: !4303)
!4307 = !DILocation(line: 1430, column: 7, scope: !4283)
!4308 = !DILocation(line: 1431, column: 4, scope: !4303)
!4309 = !DILocation(line: 1433, column: 3, scope: !4283)
!4310 = !DILocation(line: 1433, column: 3, scope: !4281)
!4311 = !DILocation(line: 1433, column: 3, scope: !4282)
!4312 = distinct !{!4312, !4298, !4313, !4314, !3090}
!4313 = !DILocation(line: 1434, column: 2, scope: !4271)
!4314 = !{!"llvm.loop.mustprogress"}
!4315 = !DILocation(line: 1442, column: 32, scope: !4271)
!4316 = !DILocation(line: 1442, column: 2, scope: !4271)
!4317 = !DILocation(line: 1443, column: 2, scope: !4271)
!4318 = !DILocation(line: 1443, column: 2, scope: !4286)
!4319 = !DILocation(line: 1443, column: 2, scope: !4287)
!4320 = !DILocation(line: 1445, column: 2, scope: !4271)
!4321 = !DILocation(line: 1446, column: 1, scope: !4271)
!4322 = distinct !DISubprogram(name: "unlock_rt_mutex_safe", scope: !2003, file: !2003, line: 256, type: !4323, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4325)
!4323 = !DISubroutineType(types: !4324)
!4324 = !{!928, !1285, !58}
!4325 = !{!4326, !4327, !4328, !4329, !4332}
!4326 = !DILocalVariable(name: "lock", arg: 1, scope: !4322, file: !2003, line: 256, type: !1285)
!4327 = !DILocalVariable(name: "flags", arg: 2, scope: !4322, file: !2003, line: 257, type: !58)
!4328 = !DILocalVariable(name: "owner", scope: !4322, file: !2003, line: 260, type: !50)
!4329 = !DILocalVariable(name: "__dummy", scope: !4330, file: !2003, line: 263, type: !58)
!4330 = distinct !DILexicalBlock(scope: !4331, file: !2003, line: 263, column: 2)
!4331 = distinct !DILexicalBlock(scope: !4322, file: !2003, line: 263, column: 2)
!4332 = !DILocalVariable(name: "__dummy2", scope: !4330, file: !2003, line: 263, type: !58)
!4333 = !DILocation(line: 256, column: 72, scope: !4322)
!4334 = !DILocation(line: 257, column: 22, scope: !4322)
!4335 = !DILocation(line: 260, column: 2, scope: !4322)
!4336 = !DILocation(line: 260, column: 22, scope: !4322)
!4337 = !DILocation(line: 260, column: 45, scope: !4322)
!4338 = !DILocation(line: 260, column: 30, scope: !4322)
!4339 = !DILocation(line: 262, column: 25, scope: !4322)
!4340 = !DILocation(line: 262, column: 2, scope: !4322)
!4341 = !DILocation(line: 263, column: 2, scope: !4322)
!4342 = !DILocation(line: 263, column: 2, scope: !4330)
!4343 = !DILocation(line: 263, column: 2, scope: !4331)
!4344 = !DILocation(line: 288, column: 34, scope: !4322)
!4345 = !DILocation(line: 288, column: 40, scope: !4322)
!4346 = !DILocation(line: 288, column: 9, scope: !4322)
!4347 = !DILocation(line: 289, column: 1, scope: !4322)
!4348 = !DILocation(line: 288, column: 2, scope: !4322)
!4349 = distinct !DISubprogram(name: "clear_rt_mutex_waiters", scope: !2003, file: !2003, line: 119, type: !2113, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4350)
!4350 = !{!4351}
!4351 = !DILocalVariable(name: "lock", arg: 1, scope: !4349, file: !2003, line: 119, type: !1285)
!4352 = !DILocation(line: 119, column: 74, scope: !4349)
!4353 = !DILocation(line: 122, column: 20, scope: !4349)
!4354 = !DILocation(line: 122, column: 26, scope: !4349)
!4355 = !DILocation(line: 122, column: 5, scope: !4349)
!4356 = !DILocation(line: 122, column: 32, scope: !4349)
!4357 = !DILocation(line: 121, column: 16, scope: !4349)
!4358 = !DILocation(line: 121, column: 2, scope: !4349)
!4359 = !DILocation(line: 121, column: 8, scope: !4349)
!4360 = !DILocation(line: 121, column: 14, scope: !4349)
!4361 = !DILocation(line: 123, column: 1, scope: !4349)
!4362 = !DISubprogram(name: "_raw_spin_lock", scope: !2431, file: !2431, line: 22, type: !2828, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4363 = distinct !DISubprogram(name: "rt_mutex_top_waiter", scope: !30, file: !30, line: 128, type: !4364, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4366)
!4364 = !DISubroutineType(types: !4365)
!4365 = !{!1273, !1285}
!4366 = !{!4367, !4368, !4369, !4370}
!4367 = !DILocalVariable(name: "lock", arg: 1, scope: !4363, file: !30, line: 128, type: !1285)
!4368 = !DILocalVariable(name: "leftmost", scope: !4363, file: !30, line: 130, type: !126)
!4369 = !DILocalVariable(name: "w", scope: !4363, file: !30, line: 131, type: !1273)
!4370 = !DILocalVariable(name: "__mptr", scope: !4371, file: !30, line: 136, type: !43)
!4371 = distinct !DILexicalBlock(scope: !4372, file: !30, line: 136, column: 7)
!4372 = distinct !DILexicalBlock(scope: !4373, file: !30, line: 135, column: 16)
!4373 = distinct !DILexicalBlock(scope: !4363, file: !30, line: 135, column: 6)
!4374 = !DILocation(line: 128, column: 81, scope: !4363)
!4375 = !DILocation(line: 130, column: 2, scope: !4363)
!4376 = !DILocation(line: 130, column: 18, scope: !4363)
!4377 = !DILocation(line: 130, column: 29, scope: !4363)
!4378 = !DILocation(line: 131, column: 2, scope: !4363)
!4379 = !DILocation(line: 131, column: 26, scope: !4363)
!4380 = !DILocation(line: 133, column: 2, scope: !4363)
!4381 = !DILocation(line: 133, column: 2, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4363, file: !30, line: 133, column: 2)
!4383 = !DILocation(line: 135, column: 6, scope: !4373)
!4384 = !DILocation(line: 135, column: 6, scope: !4363)
!4385 = !DILocation(line: 136, column: 7, scope: !4371)
!4386 = !DILocation(line: 136, column: 7, scope: !4372)
!4387 = !DILocation(line: 136, column: 5, scope: !4372)
!4388 = !DILocation(line: 137, column: 3, scope: !4372)
!4389 = !DILocation(line: 137, column: 3, scope: !4390)
!4390 = distinct !DILexicalBlock(scope: !4391, file: !30, line: 137, column: 3)
!4391 = distinct !DILexicalBlock(scope: !4372, file: !30, line: 137, column: 3)
!4392 = !DILocation(line: 137, column: 3, scope: !4391)
!4393 = !DILocation(line: 137, column: 3, scope: !4394)
!4394 = distinct !DILexicalBlock(scope: !4390, file: !30, line: 137, column: 3)
!4395 = !DILocation(line: 137, column: 3, scope: !4396)
!4396 = distinct !DILexicalBlock(scope: !4394, file: !30, line: 137, column: 3)
!4397 = !DILocation(line: 137, column: 3, scope: !4398)
!4398 = distinct !DILexicalBlock(scope: !4394, file: !30, line: 137, column: 3)
!4399 = !{i64 2153576790, i64 2153576819, i64 2153576865, i64 2153576923, i64 2153576977, i64 2153577031, i64 2153577086, i64 2153577117}
!4400 = !DILocation(line: 138, column: 2, scope: !4372)
!4401 = !DILocation(line: 139, column: 9, scope: !4363)
!4402 = !DILocation(line: 140, column: 1, scope: !4363)
!4403 = !DILocation(line: 139, column: 2, scope: !4363)
!4404 = distinct !DISubprogram(name: "rt_mutex_dequeue_pi", scope: !2003, file: !2003, line: 493, type: !4405, scopeLine: 494, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4407)
!4405 = !DISubroutineType(types: !4406)
!4406 = !{null, !50, !1273}
!4407 = !{!4408, !4409}
!4408 = !DILocalVariable(name: "task", arg: 1, scope: !4404, file: !2003, line: 493, type: !50)
!4409 = !DILocalVariable(name: "waiter", arg: 2, scope: !4404, file: !2003, line: 493, type: !1273)
!4410 = !DILocation(line: 493, column: 41, scope: !4404)
!4411 = !DILocation(line: 493, column: 71, scope: !4404)
!4412 = !DILocation(line: 495, column: 2, scope: !4404)
!4413 = !DILocation(line: 495, column: 2, scope: !4414)
!4414 = distinct !DILexicalBlock(scope: !4404, file: !2003, line: 495, column: 2)
!4415 = !DILocation(line: 497, column: 6, scope: !4416)
!4416 = distinct !DILexicalBlock(scope: !4404, file: !2003, line: 497, column: 6)
!4417 = !DILocation(line: 497, column: 6, scope: !4404)
!4418 = !DILocation(line: 498, column: 3, scope: !4416)
!4419 = !DILocation(line: 500, column: 19, scope: !4404)
!4420 = !DILocation(line: 500, column: 27, scope: !4404)
!4421 = !DILocation(line: 500, column: 35, scope: !4404)
!4422 = !DILocation(line: 500, column: 43, scope: !4404)
!4423 = !DILocation(line: 500, column: 49, scope: !4404)
!4424 = !DILocation(line: 500, column: 2, scope: !4404)
!4425 = !DILocation(line: 501, column: 2, scope: !4404)
!4426 = !DILocation(line: 502, column: 1, scope: !4404)
!4427 = distinct !DISubprogram(name: "rt_mutex_adjust_prio", scope: !2003, file: !2003, line: 504, type: !1953, scopeLine: 506, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4428)
!4428 = !{!4429, !4430, !4431}
!4429 = !DILocalVariable(name: "lock", arg: 1, scope: !4427, file: !2003, line: 504, type: !1285)
!4430 = !DILocalVariable(name: "p", arg: 2, scope: !4427, file: !2003, line: 505, type: !50)
!4431 = !DILocalVariable(name: "pi_task", scope: !4427, file: !2003, line: 507, type: !50)
!4432 = !DILocation(line: 504, column: 72, scope: !4427)
!4433 = !DILocation(line: 505, column: 28, scope: !4427)
!4434 = !DILocation(line: 507, column: 2, scope: !4427)
!4435 = !DILocation(line: 507, column: 22, scope: !4427)
!4436 = !DILocation(line: 509, column: 2, scope: !4427)
!4437 = !DILocation(line: 509, column: 2, scope: !4438)
!4438 = distinct !DILexicalBlock(scope: !4427, file: !2003, line: 509, column: 2)
!4439 = !DILocation(line: 510, column: 2, scope: !4427)
!4440 = !DILocation(line: 510, column: 2, scope: !4441)
!4441 = distinct !DILexicalBlock(scope: !4427, file: !2003, line: 510, column: 2)
!4442 = !DILocation(line: 511, column: 2, scope: !4427)
!4443 = !DILocation(line: 511, column: 2, scope: !4444)
!4444 = distinct !DILexicalBlock(scope: !4427, file: !2003, line: 511, column: 2)
!4445 = !DILocation(line: 513, column: 26, scope: !4446)
!4446 = distinct !DILexicalBlock(scope: !4427, file: !2003, line: 513, column: 6)
!4447 = !DILocation(line: 513, column: 6, scope: !4446)
!4448 = !DILocation(line: 513, column: 6, scope: !4427)
!4449 = !DILocation(line: 514, column: 32, scope: !4446)
!4450 = !DILocation(line: 514, column: 13, scope: !4446)
!4451 = !DILocation(line: 514, column: 36, scope: !4446)
!4452 = !DILocation(line: 514, column: 11, scope: !4446)
!4453 = !DILocation(line: 514, column: 3, scope: !4446)
!4454 = !DILocation(line: 516, column: 19, scope: !4427)
!4455 = !DILocation(line: 516, column: 22, scope: !4427)
!4456 = !DILocation(line: 516, column: 2, scope: !4427)
!4457 = !DILocation(line: 517, column: 1, scope: !4427)
!4458 = distinct !DISubprogram(name: "rt_mutex_wake_q_add", scope: !2003, file: !2003, line: 534, type: !4459, scopeLine: 536, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4461)
!4459 = !DISubroutineType(types: !4460)
!4460 = !{null, !2089, !1273}
!4461 = !{!4462, !4463}
!4462 = !DILocalVariable(name: "wqh", arg: 1, scope: !4458, file: !2003, line: 534, type: !2089)
!4463 = !DILocalVariable(name: "w", arg: 2, scope: !4458, file: !2003, line: 535, type: !1273)
!4464 = !DILocation(line: 534, column: 72, scope: !4458)
!4465 = !DILocation(line: 535, column: 31, scope: !4458)
!4466 = !DILocation(line: 537, column: 27, scope: !4458)
!4467 = !DILocation(line: 537, column: 32, scope: !4458)
!4468 = !DILocation(line: 537, column: 35, scope: !4458)
!4469 = !DILocation(line: 537, column: 41, scope: !4458)
!4470 = !DILocation(line: 537, column: 44, scope: !4458)
!4471 = !DILocation(line: 537, column: 2, scope: !4458)
!4472 = !DILocation(line: 538, column: 1, scope: !4458)
!4473 = !DISubprogram(name: "_raw_spin_unlock", scope: !2431, file: !2431, line: 39, type: !2828, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4474 = distinct !DISubprogram(name: "rb_erase_cached", scope: !4475, file: !4475, line: 119, type: !4476, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4479)
!4475 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6e0facf00d8c55244f0fbd487ce02705")
!4476 = !DISubroutineType(types: !4477)
!4477 = !{!126, !126, !4478}
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!4479 = !{!4480, !4481, !4482}
!4480 = !DILocalVariable(name: "node", arg: 1, scope: !4474, file: !4475, line: 119, type: !126)
!4481 = !DILocalVariable(name: "root", arg: 2, scope: !4474, file: !4475, line: 119, type: !4478)
!4482 = !DILocalVariable(name: "leftmost", scope: !4474, file: !4475, line: 121, type: !126)
!4483 = !DILocation(line: 119, column: 33, scope: !4474)
!4484 = !DILocation(line: 119, column: 62, scope: !4474)
!4485 = !DILocation(line: 121, column: 2, scope: !4474)
!4486 = !DILocation(line: 121, column: 18, scope: !4474)
!4487 = !DILocation(line: 123, column: 6, scope: !4488)
!4488 = distinct !DILexicalBlock(scope: !4474, file: !4475, line: 123, column: 6)
!4489 = !DILocation(line: 123, column: 12, scope: !4488)
!4490 = !DILocation(line: 123, column: 27, scope: !4488)
!4491 = !DILocation(line: 123, column: 24, scope: !4488)
!4492 = !DILocation(line: 123, column: 6, scope: !4474)
!4493 = !DILocation(line: 124, column: 42, scope: !4488)
!4494 = !DILocation(line: 124, column: 34, scope: !4488)
!4495 = !DILocation(line: 124, column: 14, scope: !4488)
!4496 = !DILocation(line: 124, column: 20, scope: !4488)
!4497 = !DILocation(line: 124, column: 32, scope: !4488)
!4498 = !DILocation(line: 124, column: 12, scope: !4488)
!4499 = !DILocation(line: 124, column: 3, scope: !4488)
!4500 = !DILocation(line: 126, column: 11, scope: !4474)
!4501 = !DILocation(line: 126, column: 18, scope: !4474)
!4502 = !DILocation(line: 126, column: 24, scope: !4474)
!4503 = !DILocation(line: 126, column: 2, scope: !4474)
!4504 = !DILocation(line: 128, column: 9, scope: !4474)
!4505 = !DILocation(line: 129, column: 1, scope: !4474)
!4506 = !DILocation(line: 128, column: 2, scope: !4474)
!4507 = !DISubprogram(name: "rb_next", scope: !4475, file: !4475, line: 44, type: !4508, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4508 = !DISubroutineType(types: !4509)
!4509 = !{!126, !4510}
!4510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4511, size: 64)
!4511 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!4512 = !DISubprogram(name: "rb_erase", scope: !4475, file: !4475, line: 40, type: !4513, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4513 = !DISubroutineType(types: !4514)
!4514 = !{null, !126, !4515}
!4515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!4516 = distinct !DISubprogram(name: "task_has_pi_waiters", scope: !30, file: !30, line: 142, type: !3276, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4517)
!4517 = !{!4518}
!4518 = !DILocalVariable(name: "p", arg: 1, scope: !4516, file: !30, line: 142, type: !50)
!4519 = !DILocation(line: 142, column: 59, scope: !4516)
!4520 = !DILocation(line: 144, column: 10, scope: !4521)
!4521 = distinct !DILexicalBlock(scope: !4516, file: !30, line: 144, column: 10)
!4522 = !DILocation(line: 144, column: 10, scope: !4523)
!4523 = distinct !DILexicalBlock(scope: !4521, file: !30, line: 144, column: 10)
!4524 = !DILocation(line: 144, column: 10, scope: !4516)
!4525 = !DILocation(line: 144, column: 9, scope: !4516)
!4526 = !DILocation(line: 144, column: 2, scope: !4516)
!4527 = distinct !DISubprogram(name: "task_top_pi_waiter", scope: !30, file: !30, line: 147, type: !4528, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4530)
!4528 = !DISubroutineType(types: !4529)
!4529 = !{!1273, !50}
!4530 = !{!4531, !4532}
!4531 = !DILocalVariable(name: "p", arg: 1, scope: !4527, file: !30, line: 147, type: !50)
!4532 = !DILocalVariable(name: "__mptr", scope: !4533, file: !30, line: 151, type: !43)
!4533 = distinct !DILexicalBlock(scope: !4527, file: !30, line: 151, column: 9)
!4534 = !DILocation(line: 147, column: 78, scope: !4527)
!4535 = !DILocation(line: 149, column: 2, scope: !4527)
!4536 = !DILocation(line: 149, column: 2, scope: !4537)
!4537 = distinct !DILexicalBlock(scope: !4527, file: !30, line: 149, column: 2)
!4538 = !DILocation(line: 151, column: 9, scope: !4533)
!4539 = !DILocation(line: 151, column: 9, scope: !4527)
!4540 = !DILocation(line: 151, column: 2, scope: !4527)
!4541 = !DISubprogram(name: "rt_mutex_setprio", scope: !4542, file: !4542, line: 40, type: !4543, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4542 = !DIFile(filename: "./include/linux/sched/rt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51b163e1cec9a3c9755ca6e171de807a")
!4543 = !DISubroutineType(types: !4544)
!4544 = !{null, !50, !50}
!4545 = distinct !DISubprogram(name: "rt_mutex_wake_q_add_task", scope: !2003, file: !2003, line: 520, type: !4546, scopeLine: 523, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4548)
!4546 = !DISubroutineType(types: !4547)
!4547 = !{null, !2089, !50, !7}
!4548 = !{!4549, !4550, !4551}
!4549 = !DILocalVariable(name: "wqh", arg: 1, scope: !4545, file: !2003, line: 520, type: !2089)
!4550 = !DILocalVariable(name: "task", arg: 2, scope: !4545, file: !2003, line: 521, type: !50)
!4551 = !DILocalVariable(name: "wake_state", arg: 3, scope: !4545, file: !2003, line: 522, type: !7)
!4552 = !DILocation(line: 520, column: 77, scope: !4545)
!4553 = !DILocation(line: 521, column: 32, scope: !4545)
!4554 = !DILocation(line: 522, column: 25, scope: !4545)
!4555 = !DILocation(line: 530, column: 15, scope: !4556)
!4556 = distinct !DILexicalBlock(scope: !4557, file: !2003, line: 529, column: 9)
!4557 = distinct !DILexicalBlock(scope: !4545, file: !2003, line: 524, column: 6)
!4558 = !DILocation(line: 530, column: 20, scope: !4556)
!4559 = !DILocation(line: 530, column: 26, scope: !4556)
!4560 = !DILocation(line: 530, column: 3, scope: !4556)
!4561 = !DILocation(line: 532, column: 1, scope: !4545)
!4562 = !DISubprogram(name: "wake_q_add", scope: !2094, file: !2094, line: 62, type: !4563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4563 = !DISubroutineType(types: !4564)
!4564 = !{null, !4565, !50}
!4565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!4566 = distinct !DISubprogram(name: "rt_mutex_owner_encode", scope: !2003, file: !2003, line: 93, type: !4567, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4569)
!4567 = !DISubroutineType(types: !4568)
!4568 = !{!50, !1285, !50}
!4569 = !{!4570, !4571, !4572}
!4570 = !DILocalVariable(name: "lock", arg: 1, scope: !4566, file: !2003, line: 93, type: !1285)
!4571 = !DILocalVariable(name: "owner", arg: 2, scope: !4566, file: !2003, line: 93, type: !50)
!4572 = !DILocalVariable(name: "val", scope: !4566, file: !2003, line: 95, type: !58)
!4573 = !DILocation(line: 93, column: 45, scope: !4566)
!4574 = !DILocation(line: 93, column: 71, scope: !4566)
!4575 = !DILocation(line: 95, column: 2, scope: !4566)
!4576 = !DILocation(line: 95, column: 16, scope: !4566)
!4577 = !DILocation(line: 95, column: 37, scope: !4566)
!4578 = !DILocation(line: 95, column: 22, scope: !4566)
!4579 = !DILocation(line: 97, column: 27, scope: !4580)
!4580 = distinct !DILexicalBlock(scope: !4566, file: !2003, line: 97, column: 6)
!4581 = !DILocation(line: 97, column: 6, scope: !4580)
!4582 = !DILocation(line: 97, column: 6, scope: !4566)
!4583 = !DILocation(line: 98, column: 7, scope: !4580)
!4584 = !DILocation(line: 98, column: 3, scope: !4580)
!4585 = !DILocation(line: 100, column: 31, scope: !4566)
!4586 = !DILocation(line: 100, column: 9, scope: !4566)
!4587 = !DILocation(line: 101, column: 1, scope: !4566)
!4588 = !DILocation(line: 100, column: 2, scope: !4566)
!4589 = distinct !DISubprogram(name: "mark_rt_mutex_waiters", scope: !2003, file: !2003, line: 233, type: !2113, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4590)
!4590 = !{!4591, !4592, !4593, !4594, !4596, !4598, !4599, !4600}
!4591 = !DILocalVariable(name: "lock", arg: 1, scope: !4589, file: !2003, line: 233, type: !1285)
!4592 = !DILocalVariable(name: "owner", scope: !4589, file: !2003, line: 235, type: !58)
!4593 = !DILocalVariable(name: "p", scope: !4589, file: !2003, line: 235, type: !1913)
!4594 = !DILocalVariable(name: "__ai_ptr", scope: !4595, file: !2003, line: 239, type: !1913)
!4595 = distinct !DILexicalBlock(scope: !4589, file: !2003, line: 239, column: 11)
!4596 = !DILocalVariable(name: "__ret", scope: !4597, file: !2003, line: 239, type: !58)
!4597 = distinct !DILexicalBlock(scope: !4595, file: !2003, line: 239, column: 11)
!4598 = !DILocalVariable(name: "__old", scope: !4597, file: !2003, line: 239, type: !58)
!4599 = !DILocalVariable(name: "__new", scope: !4597, file: !2003, line: 239, type: !58)
!4600 = !DILocalVariable(name: "__ptr", scope: !4597, file: !2003, line: 239, type: !1893)
!4601 = !DILocation(line: 233, column: 73, scope: !4589)
!4602 = !DILocation(line: 235, column: 2, scope: !4589)
!4603 = !DILocation(line: 235, column: 16, scope: !4589)
!4604 = !DILocation(line: 235, column: 24, scope: !4589)
!4605 = !DILocation(line: 235, column: 47, scope: !4589)
!4606 = !DILocation(line: 235, column: 53, scope: !4589)
!4607 = !DILocation(line: 237, column: 2, scope: !4589)
!4608 = !DILocation(line: 238, column: 12, scope: !4609)
!4609 = distinct !DILexicalBlock(scope: !4589, file: !2003, line: 237, column: 5)
!4610 = !DILocation(line: 238, column: 11, scope: !4609)
!4611 = !DILocation(line: 238, column: 9, scope: !4609)
!4612 = !DILocation(line: 239, column: 2, scope: !4609)
!4613 = !DILocation(line: 239, column: 11, scope: !4595)
!4614 = !DILocation(line: 239, column: 11, scope: !4597)
!4615 = !{i64 2153616599, i64 2153616638, i64 2153616659, i64 2153616696, i64 2153616719, i64 2153616728}
!4616 = !DILocation(line: 239, column: 11, scope: !4589)
!4617 = !DILocation(line: 240, column: 39, scope: !4589)
!4618 = !DILocation(line: 240, column: 36, scope: !4589)
!4619 = distinct !{!4619, !4607, !4620, !4314, !3090}
!4620 = !DILocation(line: 240, column: 44, scope: !4589)
!4621 = !DILocation(line: 247, column: 2, scope: !4589)
!4622 = !DILocation(line: 247, column: 2, scope: !4623)
!4623 = distinct !DILexicalBlock(scope: !4589, file: !2003, line: 247, column: 2)
!4624 = !DILocation(line: 247, column: 2, scope: !4625)
!4625 = distinct !DILexicalBlock(scope: !4623, file: !2003, line: 247, column: 2)
!4626 = !DILocation(line: 247, column: 2, scope: !4627)
!4627 = distinct !DILexicalBlock(scope: !4623, file: !2003, line: 247, column: 2)
!4628 = !DILocation(line: 248, column: 1, scope: !4589)
!4629 = distinct !DISubprogram(name: "rt_mutex_steal", scope: !2003, file: !2003, line: 407, type: !4630, scopeLine: 409, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4632)
!4630 = !DISubroutineType(types: !4631)
!4631 = !{!928, !1273, !1273}
!4632 = !{!4633, !4634}
!4633 = !DILocalVariable(name: "waiter", arg: 1, scope: !4629, file: !2003, line: 407, type: !1273)
!4634 = !DILocalVariable(name: "top_waiter", arg: 2, scope: !4629, file: !2003, line: 408, type: !1273)
!4635 = !DILocation(line: 407, column: 59, scope: !4629)
!4636 = !DILocation(line: 408, column: 31, scope: !4629)
!4637 = !DILocation(line: 410, column: 27, scope: !4638)
!4638 = distinct !DILexicalBlock(scope: !4629, file: !2003, line: 410, column: 6)
!4639 = !DILocation(line: 410, column: 35, scope: !4638)
!4640 = !DILocation(line: 410, column: 42, scope: !4638)
!4641 = !DILocation(line: 410, column: 54, scope: !4638)
!4642 = !DILocation(line: 410, column: 6, scope: !4638)
!4643 = !DILocation(line: 410, column: 6, scope: !4629)
!4644 = !DILocation(line: 411, column: 3, scope: !4638)
!4645 = !DILocation(line: 423, column: 2, scope: !4629)
!4646 = !DILocation(line: 425, column: 1, scope: !4629)
!4647 = distinct !DISubprogram(name: "rt_mutex_dequeue", scope: !2003, file: !2003, line: 465, type: !2831, scopeLine: 466, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4648)
!4648 = !{!4649, !4650}
!4649 = !DILocalVariable(name: "lock", arg: 1, scope: !4647, file: !2003, line: 465, type: !1285)
!4650 = !DILocalVariable(name: "waiter", arg: 2, scope: !4647, file: !2003, line: 465, type: !1273)
!4651 = !DILocation(line: 465, column: 40, scope: !4647)
!4652 = !DILocation(line: 465, column: 70, scope: !4647)
!4653 = !DILocation(line: 467, column: 2, scope: !4647)
!4654 = !DILocation(line: 467, column: 2, scope: !4655)
!4655 = distinct !DILexicalBlock(scope: !4647, file: !2003, line: 467, column: 2)
!4656 = !DILocation(line: 469, column: 6, scope: !4657)
!4657 = distinct !DILexicalBlock(scope: !4647, file: !2003, line: 469, column: 6)
!4658 = !DILocation(line: 469, column: 6, scope: !4647)
!4659 = !DILocation(line: 470, column: 3, scope: !4657)
!4660 = !DILocation(line: 472, column: 19, scope: !4647)
!4661 = !DILocation(line: 472, column: 27, scope: !4647)
!4662 = !DILocation(line: 472, column: 32, scope: !4647)
!4663 = !DILocation(line: 472, column: 40, scope: !4647)
!4664 = !DILocation(line: 472, column: 46, scope: !4647)
!4665 = !DILocation(line: 472, column: 2, scope: !4647)
!4666 = !DILocation(line: 473, column: 2, scope: !4647)
!4667 = !DILocation(line: 474, column: 1, scope: !4647)
!4668 = distinct !DISubprogram(name: "rt_mutex_enqueue_pi", scope: !2003, file: !2003, line: 485, type: !4405, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4669)
!4669 = !{!4670, !4671}
!4670 = !DILocalVariable(name: "task", arg: 1, scope: !4668, file: !2003, line: 485, type: !50)
!4671 = !DILocalVariable(name: "waiter", arg: 2, scope: !4668, file: !2003, line: 485, type: !1273)
!4672 = !DILocation(line: 485, column: 41, scope: !4668)
!4673 = !DILocation(line: 485, column: 71, scope: !4668)
!4674 = !DILocation(line: 487, column: 2, scope: !4668)
!4675 = !DILocation(line: 487, column: 2, scope: !4676)
!4676 = distinct !DILexicalBlock(scope: !4668, file: !2003, line: 487, column: 2)
!4677 = !DILocation(line: 489, column: 17, scope: !4668)
!4678 = !DILocation(line: 489, column: 25, scope: !4668)
!4679 = !DILocation(line: 489, column: 33, scope: !4668)
!4680 = !DILocation(line: 489, column: 41, scope: !4668)
!4681 = !DILocation(line: 489, column: 47, scope: !4668)
!4682 = !DILocation(line: 489, column: 2, scope: !4668)
!4683 = !DILocation(line: 490, column: 1, scope: !4668)
!4684 = distinct !DISubprogram(name: "rt_waiter_node_less", scope: !2003, file: !2003, line: 371, type: !3247, scopeLine: 373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4685)
!4685 = !{!4686, !4687}
!4686 = !DILocalVariable(name: "left", arg: 1, scope: !4684, file: !2003, line: 371, type: !1919)
!4687 = !DILocalVariable(name: "right", arg: 2, scope: !4684, file: !2003, line: 372, type: !1919)
!4688 = !DILocation(line: 371, column: 71, scope: !4684)
!4689 = !DILocation(line: 372, column: 36, scope: !4684)
!4690 = !DILocation(line: 374, column: 6, scope: !4691)
!4691 = distinct !DILexicalBlock(scope: !4684, file: !2003, line: 374, column: 6)
!4692 = !DILocation(line: 374, column: 12, scope: !4691)
!4693 = !DILocation(line: 374, column: 19, scope: !4691)
!4694 = !DILocation(line: 374, column: 26, scope: !4691)
!4695 = !DILocation(line: 374, column: 17, scope: !4691)
!4696 = !DILocation(line: 374, column: 6, scope: !4684)
!4697 = !DILocation(line: 375, column: 3, scope: !4691)
!4698 = !DILocation(line: 383, column: 14, scope: !4699)
!4699 = distinct !DILexicalBlock(scope: !4684, file: !2003, line: 383, column: 6)
!4700 = !DILocation(line: 383, column: 20, scope: !4699)
!4701 = !DILocation(line: 383, column: 6, scope: !4699)
!4702 = !DILocation(line: 383, column: 6, scope: !4684)
!4703 = !DILocation(line: 384, column: 25, scope: !4699)
!4704 = !DILocation(line: 384, column: 31, scope: !4699)
!4705 = !DILocation(line: 384, column: 41, scope: !4699)
!4706 = !DILocation(line: 384, column: 48, scope: !4699)
!4707 = !DILocation(line: 384, column: 10, scope: !4699)
!4708 = !DILocation(line: 384, column: 3, scope: !4699)
!4709 = !DILocation(line: 386, column: 2, scope: !4684)
!4710 = !DILocation(line: 387, column: 1, scope: !4684)
!4711 = distinct !DISubprogram(name: "dl_prio", scope: !4712, file: !4712, line: 13, type: !4713, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4715)
!4712 = !DIFile(filename: "./include/linux/sched/deadline.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9e21f1e570f3a4130b91265b170497ef")
!4713 = !DISubroutineType(types: !4714)
!4714 = !{!78, !78}
!4715 = !{!4716}
!4716 = !DILocalVariable(name: "prio", arg: 1, scope: !4711, file: !4712, line: 13, type: !78)
!4717 = !DILocation(line: 13, column: 31, scope: !4711)
!4718 = !DILocation(line: 15, column: 6, scope: !4719)
!4719 = distinct !DILexicalBlock(scope: !4711, file: !4712, line: 15, column: 6)
!4720 = !DILocation(line: 15, column: 6, scope: !4711)
!4721 = !DILocation(line: 16, column: 3, scope: !4719)
!4722 = !DILocation(line: 17, column: 2, scope: !4711)
!4723 = !DILocation(line: 18, column: 1, scope: !4711)
!4724 = distinct !DISubprogram(name: "dl_time_before", scope: !4712, file: !4712, line: 25, type: !4725, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4727)
!4725 = !DISubroutineType(types: !4726)
!4726 = !{!928, !129, !129}
!4727 = !{!4728, !4729}
!4728 = !DILocalVariable(name: "a", arg: 1, scope: !4724, file: !4712, line: 25, type: !129)
!4729 = !DILocalVariable(name: "b", arg: 2, scope: !4724, file: !4712, line: 25, type: !129)
!4730 = !DILocation(line: 25, column: 39, scope: !4724)
!4731 = !DILocation(line: 25, column: 46, scope: !4724)
!4732 = !DILocation(line: 27, column: 15, scope: !4724)
!4733 = !DILocation(line: 27, column: 19, scope: !4724)
!4734 = !DILocation(line: 27, column: 17, scope: !4724)
!4735 = !DILocation(line: 27, column: 22, scope: !4724)
!4736 = !DILocation(line: 27, column: 2, scope: !4724)
!4737 = distinct !DISubprogram(name: "rb_add_cached", scope: !4475, file: !4475, line: 165, type: !4738, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4743)
!4738 = !DISubroutineType(types: !4739)
!4739 = !{!126, !126, !4478, !4740}
!4740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4741, size: 64)
!4741 = !DISubroutineType(types: !4742)
!4742 = !{!928, !126, !4510}
!4743 = !{!4744, !4745, !4746, !4747, !4749, !4750}
!4744 = !DILocalVariable(name: "node", arg: 1, scope: !4737, file: !4475, line: 165, type: !126)
!4745 = !DILocalVariable(name: "tree", arg: 2, scope: !4737, file: !4475, line: 165, type: !4478)
!4746 = !DILocalVariable(name: "less", arg: 3, scope: !4737, file: !4475, line: 166, type: !4740)
!4747 = !DILocalVariable(name: "link", scope: !4737, file: !4475, line: 168, type: !4748)
!4748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!4749 = !DILocalVariable(name: "parent", scope: !4737, file: !4475, line: 169, type: !126)
!4750 = !DILocalVariable(name: "leftmost", scope: !4737, file: !4475, line: 170, type: !928)
!4751 = !DILocation(line: 165, column: 31, scope: !4737)
!4752 = !DILocation(line: 165, column: 60, scope: !4737)
!4753 = !DILocation(line: 166, column: 15, scope: !4737)
!4754 = !DILocation(line: 168, column: 2, scope: !4737)
!4755 = !DILocation(line: 168, column: 19, scope: !4737)
!4756 = !DILocation(line: 168, column: 27, scope: !4737)
!4757 = !DILocation(line: 168, column: 33, scope: !4737)
!4758 = !DILocation(line: 168, column: 41, scope: !4737)
!4759 = !DILocation(line: 169, column: 2, scope: !4737)
!4760 = !DILocation(line: 169, column: 18, scope: !4737)
!4761 = !DILocation(line: 170, column: 2, scope: !4737)
!4762 = !DILocation(line: 170, column: 7, scope: !4737)
!4763 = !DILocation(line: 172, column: 2, scope: !4737)
!4764 = !DILocation(line: 172, column: 10, scope: !4737)
!4765 = !DILocation(line: 172, column: 9, scope: !4737)
!4766 = !DILocation(line: 173, column: 13, scope: !4767)
!4767 = distinct !DILexicalBlock(scope: !4737, file: !4475, line: 172, column: 16)
!4768 = !DILocation(line: 173, column: 12, scope: !4767)
!4769 = !DILocation(line: 173, column: 10, scope: !4767)
!4770 = !DILocation(line: 174, column: 7, scope: !4771)
!4771 = distinct !DILexicalBlock(scope: !4767, file: !4475, line: 174, column: 7)
!4772 = !DILocation(line: 174, column: 12, scope: !4771)
!4773 = !DILocation(line: 174, column: 18, scope: !4771)
!4774 = !DILocation(line: 174, column: 7, scope: !4767)
!4775 = !DILocation(line: 175, column: 12, scope: !4776)
!4776 = distinct !DILexicalBlock(scope: !4771, file: !4475, line: 174, column: 27)
!4777 = !DILocation(line: 175, column: 20, scope: !4776)
!4778 = !DILocation(line: 175, column: 9, scope: !4776)
!4779 = !DILocation(line: 176, column: 3, scope: !4776)
!4780 = !DILocation(line: 177, column: 12, scope: !4781)
!4781 = distinct !DILexicalBlock(scope: !4771, file: !4475, line: 176, column: 10)
!4782 = !DILocation(line: 177, column: 20, scope: !4781)
!4783 = !DILocation(line: 177, column: 9, scope: !4781)
!4784 = !DILocation(line: 178, column: 13, scope: !4781)
!4785 = distinct !{!4785, !4763, !4786, !4314, !3090}
!4786 = !DILocation(line: 180, column: 2, scope: !4737)
!4787 = !DILocation(line: 182, column: 15, scope: !4737)
!4788 = !DILocation(line: 182, column: 21, scope: !4737)
!4789 = !DILocation(line: 182, column: 29, scope: !4737)
!4790 = !DILocation(line: 182, column: 2, scope: !4737)
!4791 = !DILocation(line: 183, column: 25, scope: !4737)
!4792 = !DILocation(line: 183, column: 31, scope: !4737)
!4793 = !DILocation(line: 183, column: 37, scope: !4737)
!4794 = !DILocation(line: 183, column: 2, scope: !4737)
!4795 = !DILocation(line: 185, column: 9, scope: !4737)
!4796 = !DILocation(line: 185, column: 20, scope: !4737)
!4797 = !DILocation(line: 186, column: 1, scope: !4737)
!4798 = !DILocation(line: 185, column: 2, scope: !4737)
!4799 = distinct !DISubprogram(name: "__pi_waiter_less", scope: !2003, file: !2003, line: 479, type: !4741, scopeLine: 480, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4800)
!4800 = !{!4801, !4802, !4803, !4805}
!4801 = !DILocalVariable(name: "a", arg: 1, scope: !4799, file: !2003, line: 479, type: !126)
!4802 = !DILocalVariable(name: "b", arg: 2, scope: !4799, file: !2003, line: 479, type: !4510)
!4803 = !DILocalVariable(name: "__mptr", scope: !4804, file: !2003, line: 481, type: !43)
!4804 = distinct !DILexicalBlock(scope: !4799, file: !2003, line: 481, column: 29)
!4805 = !DILocalVariable(name: "__mptr", scope: !4806, file: !2003, line: 481, type: !43)
!4806 = distinct !DILexicalBlock(scope: !4799, file: !2003, line: 481, column: 50)
!4807 = !DILocation(line: 479, column: 62, scope: !4799)
!4808 = !DILocation(line: 479, column: 87, scope: !4799)
!4809 = !DILocation(line: 481, column: 29, scope: !4804)
!4810 = !DILocation(line: 481, column: 29, scope: !4799)
!4811 = !DILocation(line: 481, column: 50, scope: !4806)
!4812 = !DILocation(line: 481, column: 50, scope: !4799)
!4813 = !DILocation(line: 481, column: 9, scope: !4799)
!4814 = !DILocation(line: 481, column: 2, scope: !4799)
!4815 = distinct !DISubprogram(name: "rb_link_node", scope: !4475, file: !4475, line: 59, type: !4816, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4818)
!4816 = !DISubroutineType(types: !4817)
!4817 = !{null, !126, !126, !4748}
!4818 = !{!4819, !4820, !4821}
!4819 = !DILocalVariable(name: "node", arg: 1, scope: !4815, file: !4475, line: 59, type: !126)
!4820 = !DILocalVariable(name: "parent", arg: 2, scope: !4815, file: !4475, line: 59, type: !126)
!4821 = !DILocalVariable(name: "rb_link", arg: 3, scope: !4815, file: !4475, line: 60, type: !4748)
!4822 = !DILocation(line: 59, column: 49, scope: !4815)
!4823 = !DILocation(line: 59, column: 71, scope: !4815)
!4824 = !DILocation(line: 60, column: 22, scope: !4815)
!4825 = !DILocation(line: 62, column: 43, scope: !4815)
!4826 = !DILocation(line: 62, column: 28, scope: !4815)
!4827 = !DILocation(line: 62, column: 2, scope: !4815)
!4828 = !DILocation(line: 62, column: 8, scope: !4815)
!4829 = !DILocation(line: 62, column: 26, scope: !4815)
!4830 = !DILocation(line: 63, column: 18, scope: !4815)
!4831 = !DILocation(line: 63, column: 24, scope: !4815)
!4832 = !DILocation(line: 63, column: 33, scope: !4815)
!4833 = !DILocation(line: 63, column: 2, scope: !4815)
!4834 = !DILocation(line: 63, column: 8, scope: !4815)
!4835 = !DILocation(line: 63, column: 16, scope: !4815)
!4836 = !DILocation(line: 65, column: 13, scope: !4815)
!4837 = !DILocation(line: 65, column: 3, scope: !4815)
!4838 = !DILocation(line: 65, column: 11, scope: !4815)
!4839 = !DILocation(line: 66, column: 1, scope: !4815)
!4840 = distinct !DISubprogram(name: "rb_insert_color_cached", scope: !4475, file: !4475, line: 108, type: !4841, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4843)
!4841 = !DISubroutineType(types: !4842)
!4842 = !{null, !126, !4478, !928}
!4843 = !{!4844, !4845, !4846}
!4844 = !DILocalVariable(name: "node", arg: 1, scope: !4840, file: !4475, line: 108, type: !126)
!4845 = !DILocalVariable(name: "root", arg: 2, scope: !4840, file: !4475, line: 109, type: !4478)
!4846 = !DILocalVariable(name: "leftmost", arg: 3, scope: !4840, file: !4475, line: 110, type: !928)
!4847 = !DILocation(line: 108, column: 59, scope: !4840)
!4848 = !DILocation(line: 109, column: 31, scope: !4840)
!4849 = !DILocation(line: 110, column: 13, scope: !4840)
!4850 = !DILocation(line: 112, column: 6, scope: !4851)
!4851 = distinct !DILexicalBlock(scope: !4840, file: !4475, line: 112, column: 6)
!4852 = !DILocation(line: 112, column: 6, scope: !4840)
!4853 = !DILocation(line: 113, column: 23, scope: !4851)
!4854 = !DILocation(line: 113, column: 3, scope: !4851)
!4855 = !DILocation(line: 113, column: 9, scope: !4851)
!4856 = !DILocation(line: 113, column: 21, scope: !4851)
!4857 = !DILocation(line: 114, column: 18, scope: !4840)
!4858 = !DILocation(line: 114, column: 25, scope: !4840)
!4859 = !DILocation(line: 114, column: 31, scope: !4840)
!4860 = !DILocation(line: 114, column: 2, scope: !4840)
!4861 = !DILocation(line: 115, column: 1, scope: !4840)
!4862 = !DISubprogram(name: "rb_insert_color", scope: !4475, file: !4475, line: 39, type: !4513, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4863 = distinct !DISubprogram(name: "waiter_update_prio", scope: !2003, file: !2003, line: 340, type: !4864, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4866)
!4864 = !DISubroutineType(types: !4865)
!4865 = !{null, !1273, !50}
!4866 = !{!4867, !4868}
!4867 = !DILocalVariable(name: "waiter", arg: 1, scope: !4863, file: !2003, line: 340, type: !1273)
!4868 = !DILocalVariable(name: "task", arg: 2, scope: !4863, file: !2003, line: 340, type: !50)
!4869 = !DILocation(line: 340, column: 44, scope: !4863)
!4870 = !DILocation(line: 340, column: 72, scope: !4863)
!4871 = !DILocation(line: 342, column: 2, scope: !4863)
!4872 = !DILocation(line: 342, column: 2, scope: !4873)
!4873 = distinct !DILexicalBlock(scope: !4863, file: !2003, line: 342, column: 2)
!4874 = !DILocation(line: 343, column: 2, scope: !4863)
!4875 = !DILocation(line: 343, column: 2, scope: !4876)
!4876 = distinct !DILexicalBlock(scope: !4863, file: !2003, line: 343, column: 2)
!4877 = !DILocation(line: 345, column: 36, scope: !4863)
!4878 = !DILocation(line: 345, column: 22, scope: !4863)
!4879 = !DILocation(line: 345, column: 2, scope: !4863)
!4880 = !DILocation(line: 345, column: 10, scope: !4863)
!4881 = !DILocation(line: 345, column: 15, scope: !4863)
!4882 = !DILocation(line: 345, column: 20, scope: !4863)
!4883 = !DILocation(line: 346, column: 26, scope: !4863)
!4884 = !DILocation(line: 346, column: 32, scope: !4863)
!4885 = !DILocation(line: 346, column: 35, scope: !4863)
!4886 = !DILocation(line: 346, column: 2, scope: !4863)
!4887 = !DILocation(line: 346, column: 10, scope: !4863)
!4888 = !DILocation(line: 346, column: 15, scope: !4863)
!4889 = !DILocation(line: 346, column: 24, scope: !4863)
!4890 = !DILocation(line: 347, column: 1, scope: !4863)
!4891 = distinct !DISubprogram(name: "waiter_clone_prio", scope: !2003, file: !2003, line: 353, type: !4864, scopeLine: 354, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4892)
!4892 = !{!4893, !4894}
!4893 = !DILocalVariable(name: "waiter", arg: 1, scope: !4891, file: !2003, line: 353, type: !1273)
!4894 = !DILocalVariable(name: "task", arg: 2, scope: !4891, file: !2003, line: 353, type: !50)
!4895 = !DILocation(line: 353, column: 43, scope: !4891)
!4896 = !DILocation(line: 353, column: 71, scope: !4891)
!4897 = !DILocation(line: 355, column: 2, scope: !4891)
!4898 = !DILocation(line: 355, column: 2, scope: !4899)
!4899 = distinct !DILexicalBlock(scope: !4891, file: !2003, line: 355, column: 2)
!4900 = !DILocation(line: 356, column: 2, scope: !4891)
!4901 = !DILocation(line: 356, column: 2, scope: !4902)
!4902 = distinct !DILexicalBlock(scope: !4891, file: !2003, line: 356, column: 2)
!4903 = !DILocation(line: 357, column: 2, scope: !4891)
!4904 = !DILocation(line: 357, column: 2, scope: !4905)
!4905 = distinct !DILexicalBlock(scope: !4891, file: !2003, line: 357, column: 2)
!4906 = !DILocation(line: 359, column: 25, scope: !4891)
!4907 = !DILocation(line: 359, column: 33, scope: !4891)
!4908 = !DILocation(line: 359, column: 38, scope: !4891)
!4909 = !DILocation(line: 359, column: 2, scope: !4891)
!4910 = !DILocation(line: 359, column: 10, scope: !4891)
!4911 = !DILocation(line: 359, column: 18, scope: !4891)
!4912 = !DILocation(line: 359, column: 23, scope: !4891)
!4913 = !DILocation(line: 360, column: 29, scope: !4891)
!4914 = !DILocation(line: 360, column: 37, scope: !4891)
!4915 = !DILocation(line: 360, column: 42, scope: !4891)
!4916 = !DILocation(line: 360, column: 2, scope: !4891)
!4917 = !DILocation(line: 360, column: 10, scope: !4891)
!4918 = !DILocation(line: 360, column: 18, scope: !4891)
!4919 = !DILocation(line: 360, column: 27, scope: !4891)
!4920 = !DILocation(line: 361, column: 1, scope: !4891)
!4921 = distinct !DISubprogram(name: "rt_mutex_enqueue", scope: !2003, file: !2003, line: 457, type: !2831, scopeLine: 458, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4922)
!4922 = !{!4923, !4924}
!4923 = !DILocalVariable(name: "lock", arg: 1, scope: !4921, file: !2003, line: 457, type: !1285)
!4924 = !DILocalVariable(name: "waiter", arg: 2, scope: !4921, file: !2003, line: 457, type: !1273)
!4925 = !DILocation(line: 457, column: 40, scope: !4921)
!4926 = !DILocation(line: 457, column: 70, scope: !4921)
!4927 = !DILocation(line: 459, column: 2, scope: !4921)
!4928 = !DILocation(line: 459, column: 2, scope: !4929)
!4929 = distinct !DILexicalBlock(scope: !4921, file: !2003, line: 459, column: 2)
!4930 = !DILocation(line: 461, column: 17, scope: !4921)
!4931 = !DILocation(line: 461, column: 25, scope: !4921)
!4932 = !DILocation(line: 461, column: 30, scope: !4921)
!4933 = !DILocation(line: 461, column: 38, scope: !4921)
!4934 = !DILocation(line: 461, column: 44, scope: !4921)
!4935 = !DILocation(line: 461, column: 2, scope: !4921)
!4936 = !DILocation(line: 462, column: 1, scope: !4921)
!4937 = distinct !DISubprogram(name: "rt_mutex_cond_detect_deadlock", scope: !2003, file: !2003, line: 569, type: !4938, scopeLine: 571, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4940)
!4938 = !DISubroutineType(types: !4939)
!4939 = !{!928, !1273, !29}
!4940 = !{!4941, !4942}
!4941 = !DILocalVariable(name: "waiter", arg: 1, scope: !4937, file: !2003, line: 569, type: !1273)
!4942 = !DILocalVariable(name: "chwalk", arg: 2, scope: !4937, file: !2003, line: 570, type: !29)
!4943 = !DILocation(line: 569, column: 55, scope: !4937)
!4944 = !DILocation(line: 570, column: 33, scope: !4937)
!4945 = !DILocation(line: 574, column: 9, scope: !4937)
!4946 = !DILocation(line: 574, column: 16, scope: !4937)
!4947 = !DILocation(line: 574, column: 2, scope: !4937)
!4948 = distinct !DISubprogram(name: "task_blocked_on_lock", scope: !2003, file: !2003, line: 577, type: !4949, scopeLine: 578, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4951)
!4949 = !DISubroutineType(types: !4950)
!4950 = !{!1285, !50}
!4951 = !{!4952}
!4952 = !DILocalVariable(name: "p", arg: 1, scope: !4948, file: !2003, line: 577, type: !50)
!4953 = !DILocation(line: 577, column: 87, scope: !4948)
!4954 = !DILocation(line: 579, column: 9, scope: !4948)
!4955 = !DILocation(line: 579, column: 12, scope: !4948)
!4956 = !DILocation(line: 579, column: 28, scope: !4948)
!4957 = !DILocation(line: 579, column: 31, scope: !4948)
!4958 = !DILocation(line: 579, column: 46, scope: !4948)
!4959 = !DILocation(line: 579, column: 2, scope: !4948)
!4960 = distinct !DISubprogram(name: "__waiter_less", scope: !2003, file: !2003, line: 430, type: !4741, scopeLine: 431, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4961)
!4961 = !{!4962, !4963, !4964, !4965, !4967, !4968}
!4962 = !DILocalVariable(name: "a", arg: 1, scope: !4960, file: !2003, line: 430, type: !126)
!4963 = !DILocalVariable(name: "b", arg: 2, scope: !4960, file: !2003, line: 430, type: !4510)
!4964 = !DILocalVariable(name: "aw", scope: !4960, file: !2003, line: 432, type: !1273)
!4965 = !DILocalVariable(name: "__mptr", scope: !4966, file: !2003, line: 432, type: !43)
!4966 = distinct !DILexicalBlock(scope: !4960, file: !2003, line: 432, column: 31)
!4967 = !DILocalVariable(name: "bw", scope: !4960, file: !2003, line: 433, type: !1273)
!4968 = !DILocalVariable(name: "__mptr", scope: !4969, file: !2003, line: 433, type: !43)
!4969 = distinct !DILexicalBlock(scope: !4960, file: !2003, line: 433, column: 31)
!4970 = !DILocation(line: 430, column: 59, scope: !4960)
!4971 = !DILocation(line: 430, column: 84, scope: !4960)
!4972 = !DILocation(line: 432, column: 2, scope: !4960)
!4973 = !DILocation(line: 432, column: 26, scope: !4960)
!4974 = !DILocation(line: 432, column: 31, scope: !4966)
!4975 = !DILocation(line: 432, column: 31, scope: !4960)
!4976 = !DILocation(line: 433, column: 2, scope: !4960)
!4977 = !DILocation(line: 433, column: 26, scope: !4960)
!4978 = !DILocation(line: 433, column: 31, scope: !4969)
!4979 = !DILocation(line: 433, column: 31, scope: !4960)
!4980 = !DILocation(line: 435, column: 27, scope: !4981)
!4981 = distinct !DILexicalBlock(scope: !4960, file: !2003, line: 435, column: 6)
!4982 = !DILocation(line: 435, column: 31, scope: !4981)
!4983 = !DILocation(line: 435, column: 38, scope: !4981)
!4984 = !DILocation(line: 435, column: 42, scope: !4981)
!4985 = !DILocation(line: 435, column: 6, scope: !4981)
!4986 = !DILocation(line: 435, column: 6, scope: !4960)
!4987 = !DILocation(line: 436, column: 3, scope: !4981)
!4988 = !DILocation(line: 439, column: 3, scope: !4989)
!4989 = distinct !DILexicalBlock(scope: !4960, file: !2003, line: 438, column: 6)
!4990 = !DILocation(line: 454, column: 1, scope: !4960)
!4991 = distinct !DISubprogram(name: "signal_pending_state", scope: !1060, file: !1060, line: 414, type: !4992, scopeLine: 415, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4994)
!4992 = !DISubroutineType(types: !4993)
!4993 = !{!78, !7, !50}
!4994 = !{!4995, !4996}
!4995 = !DILocalVariable(name: "state", arg: 1, scope: !4991, file: !1060, line: 414, type: !7)
!4996 = !DILocalVariable(name: "p", arg: 2, scope: !4991, file: !1060, line: 414, type: !50)
!4997 = !DILocation(line: 414, column: 53, scope: !4991)
!4998 = !DILocation(line: 414, column: 80, scope: !4991)
!4999 = !DILocation(line: 416, column: 8, scope: !5000)
!5000 = distinct !DILexicalBlock(scope: !4991, file: !1060, line: 416, column: 6)
!5001 = !DILocation(line: 416, column: 14, scope: !5000)
!5002 = !DILocation(line: 416, column: 6, scope: !4991)
!5003 = !DILocation(line: 417, column: 3, scope: !5000)
!5004 = !DILocation(line: 418, column: 22, scope: !5005)
!5005 = distinct !DILexicalBlock(scope: !4991, file: !1060, line: 418, column: 6)
!5006 = !DILocation(line: 418, column: 7, scope: !5005)
!5007 = !DILocation(line: 418, column: 6, scope: !4991)
!5008 = !DILocation(line: 419, column: 3, scope: !5005)
!5009 = !DILocation(line: 421, column: 10, scope: !4991)
!5010 = !DILocation(line: 421, column: 16, scope: !4991)
!5011 = !DILocation(line: 421, column: 38, scope: !4991)
!5012 = !DILocation(line: 421, column: 64, scope: !4991)
!5013 = !DILocation(line: 421, column: 41, scope: !4991)
!5014 = !DILocation(line: 421, column: 2, scope: !4991)
!5015 = !DILocation(line: 422, column: 1, scope: !4991)
!5016 = distinct !DISubprogram(name: "rtmutex_spin_on_owner", scope: !2003, file: !2003, line: 1457, type: !5017, scopeLine: 1460, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5019)
!5017 = !DISubroutineType(types: !5018)
!5018 = !{!928, !1285, !1273, !50}
!5019 = !{!5020, !5021, !5022, !5023}
!5020 = !DILocalVariable(name: "lock", arg: 1, scope: !5016, file: !2003, line: 1457, type: !1285)
!5021 = !DILocalVariable(name: "waiter", arg: 2, scope: !5016, file: !2003, line: 1458, type: !1273)
!5022 = !DILocalVariable(name: "owner", arg: 3, scope: !5016, file: !2003, line: 1459, type: !50)
!5023 = !DILocalVariable(name: "res", scope: !5016, file: !2003, line: 1461, type: !928)
!5024 = !DILocation(line: 1457, column: 57, scope: !5016)
!5025 = !DILocation(line: 1458, column: 31, scope: !5016)
!5026 = !DILocation(line: 1459, column: 27, scope: !5016)
!5027 = !DILocation(line: 1461, column: 2, scope: !5016)
!5028 = !DILocation(line: 1461, column: 7, scope: !5016)
!5029 = !DILocation(line: 1463, column: 2, scope: !5016)
!5030 = !DILocation(line: 1464, column: 2, scope: !5016)
!5031 = !DILocation(line: 1466, column: 7, scope: !5032)
!5032 = distinct !DILexicalBlock(scope: !5033, file: !2003, line: 1466, column: 7)
!5033 = distinct !DILexicalBlock(scope: !5034, file: !2003, line: 1464, column: 11)
!5034 = distinct !DILexicalBlock(scope: !5035, file: !2003, line: 1464, column: 2)
!5035 = distinct !DILexicalBlock(scope: !5016, file: !2003, line: 1464, column: 2)
!5036 = !DILocation(line: 1466, column: 31, scope: !5032)
!5037 = !DILocation(line: 1466, column: 16, scope: !5032)
!5038 = !DILocation(line: 1466, column: 13, scope: !5032)
!5039 = !DILocation(line: 1466, column: 7, scope: !5033)
!5040 = !DILocation(line: 1467, column: 4, scope: !5032)
!5041 = !DILocation(line: 1474, column: 3, scope: !5033)
!5042 = !{i64 2153645521}
!5043 = !DILocation(line: 1483, column: 21, scope: !5044)
!5044 = distinct !DILexicalBlock(scope: !5033, file: !2003, line: 1483, column: 7)
!5045 = !DILocation(line: 1483, column: 8, scope: !5044)
!5046 = !DILocation(line: 1483, column: 28, scope: !5044)
!5047 = !DILocation(line: 1483, column: 31, scope: !5044)
!5048 = !DILocation(line: 1483, column: 46, scope: !5044)
!5049 = !DILocation(line: 1484, column: 38, scope: !5044)
!5050 = !DILocation(line: 1484, column: 44, scope: !5044)
!5051 = !DILocation(line: 1484, column: 8, scope: !5044)
!5052 = !DILocation(line: 1483, column: 7, scope: !5033)
!5053 = !DILocation(line: 1485, column: 8, scope: !5054)
!5054 = distinct !DILexicalBlock(scope: !5044, file: !2003, line: 1484, column: 53)
!5055 = !DILocation(line: 1486, column: 4, scope: !5054)
!5056 = !DILocation(line: 1488, column: 3, scope: !5033)
!5057 = !DILocation(line: 1464, column: 2, scope: !5034)
!5058 = distinct !{!5058, !5059, !5060, !3090}
!5059 = !DILocation(line: 1464, column: 2, scope: !5035)
!5060 = !DILocation(line: 1489, column: 2, scope: !5035)
!5061 = !DILocation(line: 1490, column: 2, scope: !5016)
!5062 = !DILocation(line: 1491, column: 9, scope: !5016)
!5063 = !DILocation(line: 1492, column: 1, scope: !5016)
!5064 = !DILocation(line: 1491, column: 2, scope: !5016)
!5065 = distinct !DISubprogram(name: "signal_pending", scope: !1060, file: !1060, line: 392, type: !3276, scopeLine: 393, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5066)
!5066 = !{!5067}
!5067 = !DILocalVariable(name: "p", arg: 1, scope: !5065, file: !1060, line: 392, type: !50)
!5068 = !DILocation(line: 392, column: 54, scope: !5065)
!5069 = !DILocation(line: 399, column: 6, scope: !5070)
!5070 = distinct !DILexicalBlock(scope: !5065, file: !1060, line: 399, column: 6)
!5071 = !DILocation(line: 399, column: 6, scope: !5065)
!5072 = !DILocation(line: 400, column: 3, scope: !5070)
!5073 = !DILocation(line: 401, column: 25, scope: !5065)
!5074 = !DILocation(line: 401, column: 9, scope: !5065)
!5075 = !DILocation(line: 401, column: 2, scope: !5065)
!5076 = !DILocation(line: 402, column: 1, scope: !5065)
!5077 = distinct !DISubprogram(name: "__fatal_signal_pending", scope: !1060, file: !1060, line: 404, type: !3276, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5078)
!5078 = !{!5079}
!5079 = !DILocalVariable(name: "p", arg: 1, scope: !5077, file: !1060, line: 404, type: !50)
!5080 = !DILocation(line: 404, column: 62, scope: !5077)
!5081 = !DILocation(line: 406, column: 9, scope: !5077)
!5082 = !DILocation(line: 406, column: 2, scope: !5077)
!5083 = distinct !DISubprogram(name: "test_tsk_thread_flag", scope: !46, file: !46, line: 2066, type: !5084, scopeLine: 2067, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5086)
!5084 = !DISubroutineType(types: !5085)
!5085 = !{!78, !50, !78}
!5086 = !{!5087, !5088}
!5087 = !DILocalVariable(name: "tsk", arg: 1, scope: !5083, file: !46, line: 2066, type: !50)
!5088 = !DILocalVariable(name: "flag", arg: 2, scope: !5083, file: !46, line: 2066, type: !78)
!5089 = !DILocation(line: 2066, column: 60, scope: !5083)
!5090 = !DILocation(line: 2066, column: 69, scope: !5083)
!5091 = !DILocation(line: 2068, column: 29, scope: !5083)
!5092 = !DILocation(line: 2068, column: 52, scope: !5083)
!5093 = !DILocation(line: 2068, column: 9, scope: !5083)
!5094 = !DILocation(line: 2068, column: 2, scope: !5083)
!5095 = distinct !DISubprogram(name: "task_sigpending", scope: !1060, file: !1060, line: 387, type: !3276, scopeLine: 388, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5096)
!5096 = !{!5097}
!5097 = !DILocalVariable(name: "p", arg: 1, scope: !5095, file: !1060, line: 387, type: !50)
!5098 = !DILocation(line: 387, column: 55, scope: !5095)
!5099 = !DILocation(line: 389, column: 9, scope: !5095)
!5100 = !DILocation(line: 389, column: 2, scope: !5095)
!5101 = distinct !DISubprogram(name: "test_ti_thread_flag", scope: !5102, file: !5102, line: 116, type: !5103, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5105)
!5102 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!5103 = !DISubroutineType(types: !5104)
!5104 = !{!78, !1930, !78}
!5105 = !{!5106, !5107}
!5106 = !DILocalVariable(name: "ti", arg: 1, scope: !5101, file: !5102, line: 116, type: !1930)
!5107 = !DILocalVariable(name: "flag", arg: 2, scope: !5101, file: !5102, line: 116, type: !78)
!5108 = !DILocation(line: 116, column: 59, scope: !5101)
!5109 = !DILocation(line: 116, column: 67, scope: !5101)
!5110 = !DILocation(line: 118, column: 9, scope: !5101)
!5111 = !DILocation(line: 118, column: 2, scope: !5101)
!5112 = distinct !DISubprogram(name: "const_test_bit", scope: !5113, file: !5113, line: 166, type: !4139, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5114)
!5113 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!5114 = !{!5115, !5116, !5117, !5118, !5119}
!5115 = !DILocalVariable(name: "nr", arg: 1, scope: !5112, file: !5113, line: 166, type: !58)
!5116 = !DILocalVariable(name: "addr", arg: 2, scope: !5112, file: !5113, line: 166, type: !1931)
!5117 = !DILocalVariable(name: "p", scope: !5112, file: !5113, line: 168, type: !1923)
!5118 = !DILocalVariable(name: "mask", scope: !5112, file: !5113, line: 169, type: !58)
!5119 = !DILocalVariable(name: "val", scope: !5112, file: !5113, line: 170, type: !58)
!5120 = !DILocation(line: 166, column: 30, scope: !5112)
!5121 = !DILocation(line: 166, column: 64, scope: !5112)
!5122 = !DILocation(line: 168, column: 2, scope: !5112)
!5123 = !DILocation(line: 168, column: 23, scope: !5112)
!5124 = !DILocation(line: 168, column: 50, scope: !5112)
!5125 = !DILocation(line: 168, column: 57, scope: !5112)
!5126 = !DILocation(line: 168, column: 55, scope: !5112)
!5127 = !DILocation(line: 169, column: 2, scope: !5112)
!5128 = !DILocation(line: 169, column: 16, scope: !5112)
!5129 = !DILocation(line: 169, column: 23, scope: !5112)
!5130 = !DILocation(line: 170, column: 2, scope: !5112)
!5131 = !DILocation(line: 170, column: 16, scope: !5112)
!5132 = !DILocation(line: 170, column: 23, scope: !5112)
!5133 = !DILocation(line: 170, column: 22, scope: !5112)
!5134 = !DILocation(line: 172, column: 12, scope: !5112)
!5135 = !DILocation(line: 172, column: 18, scope: !5112)
!5136 = !DILocation(line: 172, column: 16, scope: !5112)
!5137 = !DILocation(line: 172, column: 10, scope: !5112)
!5138 = !DILocation(line: 172, column: 9, scope: !5112)
!5139 = !DILocation(line: 173, column: 1, scope: !5112)
!5140 = !DILocation(line: 172, column: 2, scope: !5112)
!5141 = distinct !DISubprogram(name: "sigismember", scope: !5142, file: !5142, line: 82, type: !5143, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5146)
!5142 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!5143 = !DISubroutineType(types: !5144)
!5144 = !{!78, !5145, !78}
!5145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!5146 = !{!5147, !5148, !5149}
!5147 = !DILocalVariable(name: "set", arg: 1, scope: !5141, file: !5142, line: 82, type: !5145)
!5148 = !DILocalVariable(name: "_sig", arg: 2, scope: !5141, file: !5142, line: 82, type: !78)
!5149 = !DILocalVariable(name: "sig", scope: !5141, file: !5142, line: 84, type: !58)
!5150 = !DILocation(line: 82, column: 41, scope: !5141)
!5151 = !DILocation(line: 82, column: 50, scope: !5141)
!5152 = !DILocation(line: 84, column: 2, scope: !5141)
!5153 = !DILocation(line: 84, column: 16, scope: !5141)
!5154 = !DILocation(line: 84, column: 22, scope: !5141)
!5155 = !DILocation(line: 84, column: 27, scope: !5141)
!5156 = !DILocation(line: 86, column: 15, scope: !5157)
!5157 = distinct !DILexicalBlock(scope: !5141, file: !5142, line: 85, column: 6)
!5158 = !DILocation(line: 86, column: 20, scope: !5157)
!5159 = !DILocation(line: 86, column: 30, scope: !5157)
!5160 = !DILocation(line: 86, column: 27, scope: !5157)
!5161 = !DILocation(line: 86, column: 12, scope: !5157)
!5162 = !DILocation(line: 86, column: 10, scope: !5157)
!5163 = !DILocation(line: 89, column: 1, scope: !5141)
!5164 = !DILocation(line: 86, column: 3, scope: !5157)
!5165 = distinct !DISubprogram(name: "rcu_read_lock", scope: !5166, file: !5166, line: 782, type: !1228, scopeLine: 783, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5166 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!5167 = !DILocation(line: 784, column: 2, scope: !5165)
!5168 = !DILocation(line: 786, column: 2, scope: !5165)
!5169 = !DILocation(line: 786, column: 2, scope: !5170)
!5170 = distinct !DILexicalBlock(scope: !5165, file: !5166, line: 786, column: 2)
!5171 = !DILocation(line: 787, column: 2, scope: !5165)
!5172 = !DILocation(line: 787, column: 2, scope: !5173)
!5173 = distinct !DILexicalBlock(scope: !5165, file: !5166, line: 787, column: 2)
!5174 = !DILocation(line: 789, column: 1, scope: !5165)
!5175 = distinct !DISubprogram(name: "owner_on_cpu", scope: !46, file: !46, line: 2317, type: !5176, scopeLine: 2318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5178)
!5176 = !DISubroutineType(types: !5177)
!5177 = !{!928, !50}
!5178 = !{!5179}
!5179 = !DILocalVariable(name: "owner", arg: 1, scope: !5175, file: !46, line: 2317, type: !50)
!5180 = !DILocation(line: 2317, column: 53, scope: !5175)
!5181 = !DILocation(line: 2323, column: 9, scope: !5182)
!5182 = distinct !DILexicalBlock(scope: !5175, file: !46, line: 2323, column: 9)
!5183 = !DILocation(line: 2323, column: 9, scope: !5184)
!5184 = distinct !DILexicalBlock(scope: !5182, file: !46, line: 2323, column: 9)
!5185 = !DILocation(line: 2323, column: 9, scope: !5175)
!5186 = !DILocation(line: 2323, column: 34, scope: !5175)
!5187 = !DILocation(line: 2323, column: 65, scope: !5175)
!5188 = !DILocation(line: 2323, column: 56, scope: !5175)
!5189 = !DILocation(line: 2323, column: 38, scope: !5175)
!5190 = !DILocation(line: 2323, column: 37, scope: !5175)
!5191 = !DILocation(line: 0, scope: !5175)
!5192 = !DILocation(line: 2323, column: 2, scope: !5175)
!5193 = distinct !DISubprogram(name: "need_resched", scope: !46, file: !46, line: 2260, type: !4099, scopeLine: 2261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5194 = !DILocation(line: 2262, column: 9, scope: !5193)
!5195 = !DILocation(line: 2262, column: 2, scope: !5193)
!5196 = distinct !DISubprogram(name: "rt_mutex_waiter_is_top_waiter", scope: !30, file: !30, line: 120, type: !3156, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5197)
!5197 = !{!5198, !5199, !5200, !5201}
!5198 = !DILocalVariable(name: "lock", arg: 1, scope: !5196, file: !30, line: 120, type: !1285)
!5199 = !DILocalVariable(name: "waiter", arg: 2, scope: !5196, file: !30, line: 121, type: !1273)
!5200 = !DILocalVariable(name: "leftmost", scope: !5196, file: !30, line: 123, type: !126)
!5201 = !DILocalVariable(name: "__mptr", scope: !5202, file: !30, line: 125, type: !43)
!5202 = distinct !DILexicalBlock(scope: !5196, file: !30, line: 125, column: 9)
!5203 = !DILocation(line: 120, column: 72, scope: !5196)
!5204 = !DILocation(line: 121, column: 32, scope: !5196)
!5205 = !DILocation(line: 123, column: 2, scope: !5196)
!5206 = !DILocation(line: 123, column: 18, scope: !5196)
!5207 = !DILocation(line: 123, column: 29, scope: !5196)
!5208 = !DILocation(line: 125, column: 9, scope: !5202)
!5209 = !DILocation(line: 125, column: 9, scope: !5196)
!5210 = !DILocation(line: 125, column: 67, scope: !5196)
!5211 = !DILocation(line: 125, column: 64, scope: !5196)
!5212 = !DILocation(line: 126, column: 1, scope: !5196)
!5213 = !DILocation(line: 125, column: 2, scope: !5196)
!5214 = distinct !DISubprogram(name: "cpu_relax", scope: !5215, file: !5215, line: 16, type: !1228, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5215 = !DIFile(filename: "./arch/x86/include/asm/vdso/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3605265f38a0580735b11842c92ee9df")
!5216 = !DILocation(line: 18, column: 2, scope: !5214)
!5217 = !DILocation(line: 19, column: 1, scope: !5214)
!5218 = distinct !DISubprogram(name: "rcu_read_unlock", scope: !5166, file: !5166, line: 813, type: !1228, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5219 = !DILocation(line: 815, column: 2, scope: !5218)
!5220 = !DILocation(line: 815, column: 2, scope: !5221)
!5221 = distinct !DILexicalBlock(scope: !5218, file: !5166, line: 815, column: 2)
!5222 = !DILocation(line: 818, column: 2, scope: !5218)
!5223 = !DILocation(line: 819, column: 2, scope: !5218)
!5224 = !DILocation(line: 819, column: 2, scope: !5225)
!5225 = distinct !DILexicalBlock(scope: !5218, file: !5166, line: 819, column: 2)
!5226 = !DILocation(line: 820, column: 1, scope: !5218)
!5227 = !DISubprogram(name: "__rcu_read_lock", scope: !5166, file: !5166, line: 74, type: !1228, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5228 = distinct !DISubprogram(name: "vcpu_is_preempted", scope: !46, file: !46, line: 2303, type: !5229, scopeLine: 2304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5231)
!5229 = !DISubroutineType(types: !5230)
!5230 = !{!928, !78}
!5231 = !{!5232}
!5232 = !DILocalVariable(name: "cpu", arg: 1, scope: !5228, file: !46, line: 2303, type: !78)
!5233 = !DILocation(line: 2303, column: 42, scope: !5228)
!5234 = !DILocation(line: 2305, column: 2, scope: !5228)
!5235 = distinct !DISubprogram(name: "task_cpu", scope: !46, file: !46, line: 2270, type: !5236, scopeLine: 2271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5240)
!5236 = !DISubroutineType(types: !5237)
!5237 = !{!7, !5238}
!5238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5239, size: 64)
!5239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!5240 = !{!5241}
!5241 = !DILocalVariable(name: "p", arg: 1, scope: !5235, file: !46, line: 2270, type: !5238)
!5242 = !DILocation(line: 2270, column: 63, scope: !5235)
!5243 = !DILocation(line: 2272, column: 9, scope: !5244)
!5244 = distinct !DILexicalBlock(scope: !5235, file: !46, line: 2272, column: 9)
!5245 = !DILocation(line: 2272, column: 9, scope: !5246)
!5246 = distinct !DILexicalBlock(scope: !5244, file: !46, line: 2272, column: 9)
!5247 = !DILocation(line: 2272, column: 2, scope: !5235)
!5248 = distinct !DISubprogram(name: "tif_need_resched", scope: !5102, file: !5102, line: 182, type: !4099, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5249 = !DILocation(line: 185, column: 28, scope: !5248)
!5250 = !DILocation(line: 185, column: 51, scope: !5248)
!5251 = !DILocation(line: 184, column: 9, scope: !5248)
!5252 = !DILocation(line: 184, column: 2, scope: !5248)
!5253 = distinct !DISubprogram(name: "rep_nop", scope: !5215, file: !5215, line: 11, type: !1228, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5254 = !DILocation(line: 13, column: 2, scope: !5253)
!5255 = !{i64 1933915}
!5256 = !DILocation(line: 14, column: 1, scope: !5253)
!5257 = !DISubprogram(name: "__rcu_read_unlock", scope: !5166, file: !5166, line: 75, type: !1228, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5258 = distinct !DISubprogram(name: "rt_prio", scope: !4542, file: !4542, line: 9, type: !4713, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5259)
!5259 = !{!5260}
!5260 = !DILocalVariable(name: "prio", arg: 1, scope: !5258, file: !4542, line: 9, type: !78)
!5261 = !DILocation(line: 9, column: 31, scope: !5258)
!5262 = !DILocation(line: 11, column: 6, scope: !5263)
!5263 = distinct !DILexicalBlock(scope: !5258, file: !4542, line: 11, column: 6)
!5264 = !DILocation(line: 11, column: 6, scope: !5258)
!5265 = !DILocation(line: 12, column: 3, scope: !5263)
!5266 = !DILocation(line: 13, column: 2, scope: !5258)
!5267 = !DILocation(line: 14, column: 1, scope: !5258)
!5268 = distinct !DISubprogram(name: "refcount_inc", scope: !35, file: !35, line: 265, type: !5269, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5272)
!5269 = !DISubroutineType(types: !5270)
!5270 = !{null, !5271}
!5271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!5272 = !{!5273}
!5273 = !DILocalVariable(name: "r", arg: 1, scope: !5268, file: !35, line: 265, type: !5271)
!5274 = !DILocation(line: 265, column: 45, scope: !5268)
!5275 = !DILocation(line: 267, column: 17, scope: !5268)
!5276 = !DILocation(line: 267, column: 2, scope: !5268)
!5277 = !DILocation(line: 268, column: 1, scope: !5268)
!5278 = distinct !DISubprogram(name: "__refcount_inc", scope: !35, file: !35, line: 248, type: !5279, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5281)
!5279 = !DISubroutineType(types: !5280)
!5280 = !{null, !5271, !785}
!5281 = !{!5282, !5283}
!5282 = !DILocalVariable(name: "r", arg: 1, scope: !5278, file: !35, line: 248, type: !5271)
!5283 = !DILocalVariable(name: "oldp", arg: 2, scope: !5278, file: !35, line: 248, type: !785)
!5284 = !DILocation(line: 248, column: 47, scope: !5278)
!5285 = !DILocation(line: 248, column: 55, scope: !5278)
!5286 = !DILocation(line: 250, column: 20, scope: !5278)
!5287 = !DILocation(line: 250, column: 23, scope: !5278)
!5288 = !DILocation(line: 250, column: 2, scope: !5278)
!5289 = !DILocation(line: 251, column: 1, scope: !5278)
!5290 = distinct !DISubprogram(name: "__refcount_add", scope: !35, file: !35, line: 191, type: !5291, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5293)
!5291 = !DISubroutineType(types: !5292)
!5292 = !{null, !78, !5271, !785}
!5293 = !{!5294, !5295, !5296, !5297}
!5294 = !DILocalVariable(name: "i", arg: 1, scope: !5290, file: !35, line: 191, type: !78)
!5295 = !DILocalVariable(name: "r", arg: 2, scope: !5290, file: !35, line: 191, type: !5271)
!5296 = !DILocalVariable(name: "oldp", arg: 3, scope: !5290, file: !35, line: 191, type: !785)
!5297 = !DILocalVariable(name: "old", scope: !5290, file: !35, line: 193, type: !78)
!5298 = !DILocation(line: 191, column: 39, scope: !5290)
!5299 = !DILocation(line: 191, column: 54, scope: !5290)
!5300 = !DILocation(line: 191, column: 62, scope: !5290)
!5301 = !DILocation(line: 193, column: 2, scope: !5290)
!5302 = !DILocation(line: 193, column: 6, scope: !5290)
!5303 = !DILocation(line: 193, column: 37, scope: !5290)
!5304 = !DILocation(line: 193, column: 41, scope: !5290)
!5305 = !DILocation(line: 193, column: 44, scope: !5290)
!5306 = !DILocation(line: 193, column: 12, scope: !5290)
!5307 = !DILocation(line: 195, column: 6, scope: !5308)
!5308 = distinct !DILexicalBlock(scope: !5290, file: !35, line: 195, column: 6)
!5309 = !DILocation(line: 195, column: 6, scope: !5290)
!5310 = !DILocation(line: 196, column: 11, scope: !5308)
!5311 = !DILocation(line: 196, column: 4, scope: !5308)
!5312 = !DILocation(line: 196, column: 9, scope: !5308)
!5313 = !DILocation(line: 196, column: 3, scope: !5308)
!5314 = !DILocation(line: 198, column: 6, scope: !5315)
!5315 = distinct !DILexicalBlock(scope: !5290, file: !35, line: 198, column: 6)
!5316 = !DILocation(line: 198, column: 6, scope: !5290)
!5317 = !DILocation(line: 199, column: 26, scope: !5315)
!5318 = !DILocation(line: 199, column: 3, scope: !5315)
!5319 = !DILocation(line: 200, column: 11, scope: !5320)
!5320 = distinct !DILexicalBlock(scope: !5315, file: !35, line: 200, column: 11)
!5321 = !DILocation(line: 200, column: 11, scope: !5315)
!5322 = !DILocation(line: 201, column: 26, scope: !5320)
!5323 = !DILocation(line: 201, column: 3, scope: !5320)
!5324 = !DILocation(line: 202, column: 1, scope: !5290)
!5325 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !5326, file: !5326, line: 250, type: !5327, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5330)
!5326 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!5327 = !DISubroutineType(types: !5328)
!5328 = !{!78, !78, !5329}
!5329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!5330 = !{!5331, !5332}
!5331 = !DILocalVariable(name: "i", arg: 1, scope: !5325, file: !5326, line: 250, type: !78)
!5332 = !DILocalVariable(name: "v", arg: 2, scope: !5325, file: !5326, line: 250, type: !5329)
!5333 = !DILocation(line: 250, column: 30, scope: !5325)
!5334 = !DILocation(line: 250, column: 43, scope: !5325)
!5335 = !DILocation(line: 252, column: 31, scope: !5325)
!5336 = !DILocation(line: 252, column: 2, scope: !5325)
!5337 = !DILocation(line: 253, column: 38, scope: !5325)
!5338 = !DILocation(line: 253, column: 41, scope: !5325)
!5339 = !DILocation(line: 253, column: 9, scope: !5325)
!5340 = !DILocation(line: 253, column: 2, scope: !5325)
!5341 = !DISubprogram(name: "refcount_warn_saturate", scope: !35, file: !35, line: 127, type: !5342, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5342 = !DISubroutineType(types: !5343)
!5343 = !{null, !5271, !34}
!5344 = distinct !DISubprogram(name: "raw_atomic_fetch_add_relaxed", scope: !5345, file: !5345, line: 731, type: !5327, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5346)
!5345 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!5346 = !{!5347, !5348}
!5347 = !DILocalVariable(name: "i", arg: 1, scope: !5344, file: !5345, line: 731, type: !78)
!5348 = !DILocalVariable(name: "v", arg: 2, scope: !5344, file: !5345, line: 731, type: !5329)
!5349 = !DILocation(line: 731, column: 34, scope: !5344)
!5350 = !DILocation(line: 731, column: 47, scope: !5344)
!5351 = !DILocation(line: 736, column: 31, scope: !5344)
!5352 = !DILocation(line: 736, column: 34, scope: !5344)
!5353 = !DILocation(line: 736, column: 9, scope: !5344)
!5354 = !DILocation(line: 736, column: 2, scope: !5344)
!5355 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !5356, file: !5356, line: 95, type: !5327, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5357)
!5356 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!5357 = !{!5358, !5359, !5360}
!5358 = !DILocalVariable(name: "i", arg: 1, scope: !5355, file: !5356, line: 95, type: !78)
!5359 = !DILocalVariable(name: "v", arg: 2, scope: !5355, file: !5356, line: 95, type: !5329)
!5360 = !DILocalVariable(name: "__ret", scope: !5361, file: !5356, line: 97, type: !78)
!5361 = distinct !DILexicalBlock(scope: !5355, file: !5356, line: 97, column: 9)
!5362 = !DILocation(line: 95, column: 54, scope: !5355)
!5363 = !DILocation(line: 95, column: 67, scope: !5355)
!5364 = !DILocation(line: 97, column: 9, scope: !5361)
!5365 = !{i64 2148826559, i64 2148826598, i64 2148826619, i64 2148826656, i64 2148826679, i64 2148826688}
!5366 = !DILocation(line: 97, column: 9, scope: !5355)
!5367 = !DILocation(line: 97, column: 2, scope: !5355)
!5368 = !DISubprogram(name: "_printk", scope: !5369, file: !5369, line: 153, type: !5370, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5369 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!5370 = !DISubroutineType(types: !5371)
!5371 = !{!78, !931, null}
!5372 = distinct !DISubprogram(name: "task_pid_nr", scope: !46, file: !46, line: 1580, type: !5373, scopeLine: 1581, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5375)
!5373 = !DISubroutineType(types: !5374)
!5374 = !{!713, !50}
!5375 = !{!5376}
!5376 = !DILocalVariable(name: "tsk", arg: 1, scope: !5372, file: !46, line: 1580, type: !50)
!5377 = !DILocation(line: 1580, column: 53, scope: !5372)
!5378 = !DILocation(line: 1582, column: 9, scope: !5372)
!5379 = !DILocation(line: 1582, column: 14, scope: !5372)
!5380 = !DILocation(line: 1582, column: 2, scope: !5372)
!5381 = !DILocation(line: 124, column: 56, scope: !2077)
!5382 = !DILocation(line: 126, column: 30, scope: !5383)
!5383 = distinct !DILexicalBlock(scope: !2077, file: !2078, line: 126, column: 6)
!5384 = !DILocation(line: 126, column: 33, scope: !5383)
!5385 = !DILocation(line: 126, column: 7, scope: !5383)
!5386 = !DILocation(line: 126, column: 6, scope: !2077)
!5387 = !DILocation(line: 127, column: 3, scope: !5383)
!5388 = !DILocation(line: 136, column: 3, scope: !5389)
!5389 = distinct !DILexicalBlock(scope: !5390, file: !2078, line: 133, column: 55)
!5390 = distinct !DILexicalBlock(scope: !2077, file: !2078, line: 133, column: 6)
!5391 = !DILocation(line: 136, column: 3, scope: !5392)
!5392 = distinct !DILexicalBlock(scope: !5389, file: !2078, line: 136, column: 3)
!5393 = !DILocation(line: 137, column: 21, scope: !5389)
!5394 = !DILocation(line: 137, column: 3, scope: !5389)
!5395 = !DILocation(line: 138, column: 3, scope: !5389)
!5396 = !DILocation(line: 138, column: 3, scope: !5397)
!5397 = distinct !DILexicalBlock(scope: !5389, file: !2078, line: 138, column: 3)
!5398 = !DILocation(line: 139, column: 3, scope: !5389)
!5399 = !DILocation(line: 163, column: 1, scope: !2077)
!5400 = !DISubprogram(name: "_raw_spin_trylock", scope: !2431, file: !2431, line: 37, type: !5401, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5401 = !DISubroutineType(types: !5402)
!5402 = !{!78, !2434}
!5403 = !DISubprogram(name: "wake_up_state", scope: !46, file: !46, line: 1997, type: !5404, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5404 = !DISubroutineType(types: !5405)
!5405 = !{!78, !50, !7}
!5406 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !35, file: !35, line: 331, type: !5407, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5409)
!5407 = !DISubroutineType(types: !5408)
!5408 = !{!928, !5271}
!5409 = !{!5410}
!5410 = !DILocalVariable(name: "r", arg: 1, scope: !5406, file: !35, line: 331, type: !5271)
!5411 = !DILocation(line: 331, column: 67, scope: !5406)
!5412 = !DILocation(line: 333, column: 33, scope: !5406)
!5413 = !DILocation(line: 333, column: 9, scope: !5406)
!5414 = !DILocation(line: 333, column: 2, scope: !5406)
!5415 = !DISubprogram(name: "__put_task_struct", scope: !2078, file: !2078, line: 121, type: !2079, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5416 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !35, file: !35, line: 313, type: !5417, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5419)
!5417 = !DISubroutineType(types: !5418)
!5418 = !{!928, !5271, !785}
!5419 = !{!5420, !5421}
!5420 = !DILocalVariable(name: "r", arg: 1, scope: !5416, file: !35, line: 313, type: !5271)
!5421 = !DILocalVariable(name: "oldp", arg: 2, scope: !5416, file: !35, line: 313, type: !785)
!5422 = !DILocation(line: 313, column: 69, scope: !5416)
!5423 = !DILocation(line: 313, column: 77, scope: !5416)
!5424 = !DILocation(line: 315, column: 36, scope: !5416)
!5425 = !DILocation(line: 315, column: 39, scope: !5416)
!5426 = !DILocation(line: 315, column: 9, scope: !5416)
!5427 = !DILocation(line: 315, column: 2, scope: !5416)
!5428 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !35, file: !35, line: 270, type: !5429, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5431)
!5429 = !DISubroutineType(types: !5430)
!5430 = !{!928, !78, !5271, !785}
!5431 = !{!5432, !5433, !5434, !5435}
!5432 = !DILocalVariable(name: "i", arg: 1, scope: !5428, file: !35, line: 270, type: !78)
!5433 = !DILocalVariable(name: "r", arg: 2, scope: !5428, file: !35, line: 270, type: !5271)
!5434 = !DILocalVariable(name: "oldp", arg: 3, scope: !5428, file: !35, line: 270, type: !785)
!5435 = !DILocalVariable(name: "old", scope: !5428, file: !35, line: 272, type: !78)
!5436 = !DILocation(line: 270, column: 61, scope: !5428)
!5437 = !DILocation(line: 270, column: 76, scope: !5428)
!5438 = !DILocation(line: 270, column: 84, scope: !5428)
!5439 = !DILocation(line: 272, column: 2, scope: !5428)
!5440 = !DILocation(line: 272, column: 6, scope: !5428)
!5441 = !DILocation(line: 272, column: 37, scope: !5428)
!5442 = !DILocation(line: 272, column: 41, scope: !5428)
!5443 = !DILocation(line: 272, column: 44, scope: !5428)
!5444 = !DILocation(line: 272, column: 12, scope: !5428)
!5445 = !DILocation(line: 274, column: 6, scope: !5446)
!5446 = distinct !DILexicalBlock(scope: !5428, file: !35, line: 274, column: 6)
!5447 = !DILocation(line: 274, column: 6, scope: !5428)
!5448 = !DILocation(line: 275, column: 11, scope: !5446)
!5449 = !DILocation(line: 275, column: 4, scope: !5446)
!5450 = !DILocation(line: 275, column: 9, scope: !5446)
!5451 = !DILocation(line: 275, column: 3, scope: !5446)
!5452 = !DILocation(line: 277, column: 6, scope: !5453)
!5453 = distinct !DILexicalBlock(scope: !5428, file: !35, line: 277, column: 6)
!5454 = !DILocation(line: 277, column: 13, scope: !5453)
!5455 = !DILocation(line: 277, column: 10, scope: !5453)
!5456 = !DILocation(line: 277, column: 6, scope: !5428)
!5457 = !DILocation(line: 278, column: 3, scope: !5458)
!5458 = distinct !DILexicalBlock(scope: !5453, file: !35, line: 277, column: 16)
!5459 = !DILocation(line: 278, column: 3, scope: !5460)
!5460 = distinct !DILexicalBlock(scope: !5458, file: !35, line: 278, column: 3)
!5461 = !DILocation(line: 278, column: 3, scope: !5462)
!5462 = distinct !DILexicalBlock(scope: !5460, file: !35, line: 278, column: 3)
!5463 = !DILocation(line: 278, column: 3, scope: !5464)
!5464 = distinct !DILexicalBlock(scope: !5460, file: !35, line: 278, column: 3)
!5465 = !DILocation(line: 278, column: 3, scope: !5466)
!5466 = distinct !DILexicalBlock(scope: !5464, file: !35, line: 278, column: 3)
!5467 = !{i64 2150181492}
!5468 = !DILocation(line: 279, column: 3, scope: !5458)
!5469 = !DILocation(line: 282, column: 6, scope: !5470)
!5470 = distinct !DILexicalBlock(scope: !5428, file: !35, line: 282, column: 6)
!5471 = !DILocation(line: 282, column: 6, scope: !5428)
!5472 = !DILocation(line: 283, column: 26, scope: !5470)
!5473 = !DILocation(line: 283, column: 3, scope: !5470)
!5474 = !DILocation(line: 285, column: 2, scope: !5428)
!5475 = !DILocation(line: 286, column: 1, scope: !5428)
!5476 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !5326, file: !5326, line: 397, type: !5327, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5477)
!5477 = !{!5478, !5479}
!5478 = !DILocalVariable(name: "i", arg: 1, scope: !5476, file: !5326, line: 397, type: !78)
!5479 = !DILocalVariable(name: "v", arg: 2, scope: !5476, file: !5326, line: 397, type: !5329)
!5480 = !DILocation(line: 397, column: 30, scope: !5476)
!5481 = !DILocation(line: 397, column: 43, scope: !5476)
!5482 = !DILocation(line: 399, column: 2, scope: !5476)
!5483 = !DILocation(line: 399, column: 2, scope: !5484)
!5484 = distinct !DILexicalBlock(scope: !5476, file: !5326, line: 399, column: 2)
!5485 = !DILocation(line: 400, column: 31, scope: !5476)
!5486 = !DILocation(line: 400, column: 2, scope: !5476)
!5487 = !DILocation(line: 401, column: 38, scope: !5476)
!5488 = !DILocation(line: 401, column: 41, scope: !5476)
!5489 = !DILocation(line: 401, column: 9, scope: !5476)
!5490 = !DILocation(line: 401, column: 2, scope: !5476)
!5491 = distinct !DISubprogram(name: "raw_atomic_fetch_sub_release", scope: !5345, file: !5345, line: 928, type: !5327, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5492)
!5492 = !{!5493, !5494}
!5493 = !DILocalVariable(name: "i", arg: 1, scope: !5491, file: !5345, line: 928, type: !78)
!5494 = !DILocalVariable(name: "v", arg: 2, scope: !5491, file: !5345, line: 928, type: !5329)
!5495 = !DILocation(line: 928, column: 34, scope: !5491)
!5496 = !DILocation(line: 928, column: 47, scope: !5491)
!5497 = !DILocation(line: 936, column: 31, scope: !5491)
!5498 = !DILocation(line: 936, column: 34, scope: !5491)
!5499 = !DILocation(line: 936, column: 9, scope: !5491)
!5500 = !DILocation(line: 936, column: 2, scope: !5491)
!5501 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !5356, file: !5356, line: 101, type: !5327, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5502)
!5502 = !{!5503, !5504, !5505}
!5503 = !DILocalVariable(name: "i", arg: 1, scope: !5501, file: !5356, line: 101, type: !78)
!5504 = !DILocalVariable(name: "v", arg: 2, scope: !5501, file: !5356, line: 101, type: !5329)
!5505 = !DILocalVariable(name: "__ret", scope: !5506, file: !5356, line: 103, type: !78)
!5506 = distinct !DILexicalBlock(scope: !5501, file: !5356, line: 103, column: 9)
!5507 = !DILocation(line: 101, column: 54, scope: !5501)
!5508 = !DILocation(line: 101, column: 67, scope: !5501)
!5509 = !DILocation(line: 103, column: 9, scope: !5506)
!5510 = !{i64 2148828744, i64 2148828783, i64 2148828804, i64 2148828841, i64 2148828864, i64 2148828873}
!5511 = !DILocation(line: 103, column: 9, scope: !5501)
!5512 = !DILocation(line: 103, column: 2, scope: !5501)
!5513 = distinct !DISubprogram(name: "wake_q_empty", scope: !2094, file: !2094, line: 57, type: !5514, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5516)
!5514 = !DISubroutineType(types: !5515)
!5515 = !{!928, !4565}
!5516 = !{!5517}
!5517 = !DILocalVariable(name: "head", arg: 1, scope: !5513, file: !2094, line: 57, type: !4565)
!5518 = !DILocation(line: 57, column: 53, scope: !5513)
!5519 = !DILocation(line: 59, column: 9, scope: !5513)
!5520 = !DILocation(line: 59, column: 15, scope: !5513)
!5521 = !DILocation(line: 59, column: 21, scope: !5513)
!5522 = !DILocation(line: 59, column: 2, scope: !5513)
!5523 = !DISubprogram(name: "wake_up_q", scope: !2094, file: !2094, line: 64, type: !5524, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5524 = !DISubroutineType(types: !5525)
!5525 = !{null, !4565}
