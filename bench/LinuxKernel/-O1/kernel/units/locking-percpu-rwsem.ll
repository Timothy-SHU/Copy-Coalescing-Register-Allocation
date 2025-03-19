; ModuleID = 'kernel/locking/percpu-rwsem.c'
source_filename = "kernel/locking/percpu-rwsem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___percpu_init_rwsem: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad __percpu_init_rwsem ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_percpu_free_rwsem: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad percpu_free_rwsem ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___percpu_down_read: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad __percpu_down_read ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_percpu_is_read_locked: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad percpu_is_read_locked ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_percpu_down_write: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad percpu_down_write ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_percpu_up_write: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad percpu_up_write ; .previous"

%struct.lock_class_key = type {}
%struct.static_call_key = type { ptr, %union.anon.13 }
%union.anon.13 = type { i64 }
%struct.cpumask = type { [1 x i64] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.14 }
%struct.atomic_t = type { i32 }
%union.anon.14 = type { i64 }
%struct.pcpu_hot = type { %union.anon.15 }
%union.anon.15 = type { %struct.anon.16, [16 x i8] }
%struct.anon.16 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.lockdep_map = type {}
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.rcuwait = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
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

@__percpu_init_rwsem.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !0
@.str = private unnamed_addr constant [14 x i8] c"&sem->waiters\00", align 1, !dbg !1918
@__UNIQUE_ID___addressable___percpu_init_rwsem263 = internal global ptr @__percpu_init_rwsem, section ".discard.addressable", align 8, !dbg !1923
@__UNIQUE_ID___addressable_percpu_free_rwsem264 = internal global ptr @percpu_free_rwsem, section ".discard.addressable", align 8, !dbg !1925
@__percpu_down_read.__UNIQUE_ID___addressable___SCK__preempt_schedule271 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !1927
@__SCK__preempt_schedule = external dso_local global %struct.static_call_key, align 8
@__UNIQUE_ID___addressable___percpu_down_read272 = internal global ptr @__percpu_down_read, section ".discard.addressable", align 8, !dbg !1935
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@__UNIQUE_ID___addressable_percpu_is_read_locked274 = internal global ptr @percpu_is_read_locked, section ".discard.addressable", align 8, !dbg !1937
@__UNIQUE_ID___addressable_percpu_down_write276 = internal global ptr @percpu_down_write, section ".discard.addressable", align 8, !dbg !1939
@__UNIQUE_ID___addressable_percpu_up_write277 = internal global ptr @percpu_up_write, section ".discard.addressable", align 8, !dbg !1941
@__tracepoint_contention_begin = external dso_local global %struct.tracepoint, align 8
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str.1 = private unnamed_addr constant [28 x i8] c"include/trace/events/lock.h\00", align 1, !dbg !1943
@trace_contention_begin.__UNIQUE_ID___addressable___SCK__tp_func_contention_begin249 = internal global ptr @__SCK__tp_func_contention_begin, section ".discard.addressable", align 8, !dbg !1949
@__SCK__tp_func_contention_begin = external dso_local global %struct.static_call_key, align 8
@trace_contention_begin.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace250 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !1978
@__SCK__preempt_schedule_notrace = external dso_local global %struct.static_call_key, align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@put_task_struct.put_task_map = internal global %struct.lockdep_map undef, align 1, !dbg !1980
@__percpu_rwsem_trylock.__UNIQUE_ID___addressable___SCK__preempt_schedule265 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !1989
@__tracepoint_contention_end = external dso_local global %struct.tracepoint, align 8
@trace_contention_end.__UNIQUE_ID___addressable___SCK__tp_func_contention_end257 = internal global ptr @__SCK__tp_func_contention_end, section ".discard.addressable", align 8, !dbg !1998
@__SCK__tp_func_contention_end = external dso_local global %struct.static_call_key, align 8
@trace_contention_end.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace258 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !2027
@might_resched.__UNIQUE_ID___addressable___SCK__might_resched37 = internal global ptr @__SCK__might_resched, section ".discard.addressable", align 8, !dbg !2029
@__SCK__might_resched = external dso_local global %struct.static_call_key, align 8
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID___addressable___percpu_init_rwsem263, ptr @__UNIQUE_ID___addressable_percpu_free_rwsem264, ptr @__percpu_down_read.__UNIQUE_ID___addressable___SCK__preempt_schedule271, ptr @__UNIQUE_ID___addressable___percpu_down_read272, ptr @__UNIQUE_ID___addressable_percpu_is_read_locked274, ptr @__UNIQUE_ID___addressable_percpu_down_write276, ptr @__UNIQUE_ID___addressable_percpu_up_write277, ptr @trace_contention_begin.__UNIQUE_ID___addressable___SCK__tp_func_contention_begin249, ptr @trace_contention_begin.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace250, ptr @__percpu_rwsem_trylock.__UNIQUE_ID___addressable___SCK__preempt_schedule265, ptr @trace_contention_end.__UNIQUE_ID___addressable___SCK__tp_func_contention_end257, ptr @trace_contention_end.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace258, ptr @might_resched.__UNIQUE_ID___addressable___SCK__might_resched37], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__percpu_init_rwsem(ptr noundef %sem, ptr noundef %name, ptr noundef %key) #0 align 16 !dbg !2 {
entry:
  %retval = alloca i32, align 4
  %sem.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !2034, metadata !DIExpression()), !dbg !2047
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !2035, metadata !DIExpression()), !dbg !2048
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !2036, metadata !DIExpression()), !dbg !2049
  %call = call noalias ptr @__alloc_percpu(i64 noundef 4, i64 noundef 4) #12, !dbg !2050
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !2051
  %read_count = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %0, i32 0, i32 1, !dbg !2052
  store ptr %call, ptr %read_count, align 8, !dbg !2053
  %1 = load ptr, ptr %sem.addr, align 8, !dbg !2054
  %read_count1 = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %1, i32 0, i32 1, !dbg !2054
  %2 = load ptr, ptr %read_count1, align 8, !dbg !2054
  %tobool = icmp ne ptr %2, null, !dbg !2054
  %lnot = xor i1 %tobool, true, !dbg !2054
  %lnot2 = xor i1 %lnot, true, !dbg !2054
  %lnot3 = xor i1 %lnot2, true, !dbg !2054
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !2054
  %conv = sext i32 %lnot.ext to i64, !dbg !2054
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2054
  %tobool4 = icmp ne i64 %expval, 0, !dbg !2054
  br i1 %tobool4, label %if.then, label %if.end, !dbg !2056

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !2057
  br label %return, !dbg !2057

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %sem.addr, align 8, !dbg !2058
  %rss = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %3, i32 0, i32 0, !dbg !2059
  call void @rcu_sync_init(ptr noundef %rss) #13, !dbg !2060
  %4 = load ptr, ptr %sem.addr, align 8, !dbg !2061
  %writer = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %4, i32 0, i32 2, !dbg !2062
  call void @rcuwait_init(ptr noundef %writer) #13, !dbg !2063
  br label %do.body, !dbg !2064

do.body:                                          ; preds = %if.end
  %5 = load ptr, ptr %sem.addr, align 8, !dbg !2065
  %waiters = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %5, i32 0, i32 3, !dbg !2065
  call void @__init_waitqueue_head(ptr noundef %waiters, ptr noundef @.str, ptr noundef @__percpu_init_rwsem.__key) #13, !dbg !2065
  br label %do.end, !dbg !2065

do.end:                                           ; preds = %do.body
  %6 = load ptr, ptr %sem.addr, align 8, !dbg !2067
  %block = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %6, i32 0, i32 4, !dbg !2068
  call void @atomic_set(ptr noundef %block, i32 noundef 0) #13, !dbg !2069
  store i32 0, ptr %retval, align 4, !dbg !2070
  br label %return, !dbg !2070

return:                                           ; preds = %do.end, %if.then
  %7 = load i32, ptr %retval, align 4, !dbg !2071
  ret i32 %7, !dbg !2071
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2072 dso_local noalias ptr @__alloc_percpu(i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2076 dso_local void @rcu_sync_init(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcuwait_init(ptr noundef %w) #5 align 16 !dbg !2080 {
entry:
  %w.addr = alloca ptr, align 8
  store ptr %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !2085, metadata !DIExpression()), !dbg !2086
  %0 = load ptr, ptr %w.addr, align 8, !dbg !2087
  %task = getelementptr inbounds %struct.rcuwait, ptr %0, i32 0, i32 0, !dbg !2088
  store ptr null, ptr %task, align 8, !dbg !2089
  ret void, !dbg !2090
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2091 dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #6 align 16 !dbg !2095 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2101, metadata !DIExpression()), !dbg !2103
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2102, metadata !DIExpression()), !dbg !2104
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2105
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #13, !dbg !2106
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2107
  %2 = load i32, ptr %i.addr, align 4, !dbg !2108
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #13, !dbg !2109
  ret void, !dbg !2110
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @percpu_free_rwsem(ptr noundef %sem) #0 align 16 !dbg !2111 {
entry:
  %sem.addr = alloca ptr, align 8
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !2115, metadata !DIExpression()), !dbg !2116
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !2117
  %read_count = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %0, i32 0, i32 1, !dbg !2119
  %1 = load ptr, ptr %read_count, align 8, !dbg !2119
  %tobool = icmp ne ptr %1, null, !dbg !2117
  br i1 %tobool, label %if.end, label %if.then, !dbg !2120

if.then:                                          ; preds = %entry
  br label %return, !dbg !2121

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %sem.addr, align 8, !dbg !2122
  %rss = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %2, i32 0, i32 0, !dbg !2123
  call void @rcu_sync_dtor(ptr noundef %rss) #13, !dbg !2124
  %3 = load ptr, ptr %sem.addr, align 8, !dbg !2125
  %read_count1 = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %3, i32 0, i32 1, !dbg !2126
  %4 = load ptr, ptr %read_count1, align 8, !dbg !2126
  call void @free_percpu(ptr noundef %4) #13, !dbg !2127
  %5 = load ptr, ptr %sem.addr, align 8, !dbg !2128
  %read_count2 = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %5, i32 0, i32 1, !dbg !2129
  store ptr null, ptr %read_count2, align 8, !dbg !2130
  br label %return, !dbg !2131

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !2131
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2132 dso_local void @rcu_sync_dtor(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2133 dso_local void @free_percpu(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @__percpu_down_read(ptr noundef %sem, i1 noundef zeroext %try) #0 section ".sched.text" align 16 !dbg !1929 {
entry:
  %retval = alloca i1, align 1
  %sem.addr = alloca ptr, align 8
  %try.addr = alloca i8, align 1
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !1933, metadata !DIExpression()), !dbg !2136
  %frombool = zext i1 %try to i8
  store i8 %frombool, ptr %try.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %try.addr, metadata !1934, metadata !DIExpression()), !dbg !2137
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !2138
  %call = call zeroext i1 @__percpu_down_read_trylock(ptr noundef %0) #13, !dbg !2140
  br i1 %call, label %if.then, label %if.end, !dbg !2141

if.then:                                          ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !2142
  br label %return, !dbg !2142

if.end:                                           ; preds = %entry
  %1 = load i8, ptr %try.addr, align 1, !dbg !2143, !range !2145, !noundef !438
  %tobool = trunc i8 %1 to i1, !dbg !2143
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !2146

if.then1:                                         ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !2147
  br label %return, !dbg !2147

if.end2:                                          ; preds = %if.end
  %2 = load ptr, ptr %sem.addr, align 8, !dbg !2148
  call void @trace_contention_begin(ptr noundef %2, i32 noundef 18) #13, !dbg !2149
  br label %do.body, !dbg !2150

do.body:                                          ; preds = %if.end2
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !2151, !srcloc !2153
  %call3 = call zeroext i1 @__preempt_count_dec_and_test() #13, !dbg !2154
  %lnot = xor i1 %call3, true, !dbg !2154
  %lnot4 = xor i1 %lnot, true, !dbg !2154
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !2154
  %conv = sext i32 %lnot.ext to i64, !dbg !2154
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2154
  %tobool5 = icmp ne i64 %expval, 0, !dbg !2154
  br i1 %tobool5, label %if.then6, label %if.end8, !dbg !2151

if.then6:                                         ; preds = %do.body
  br label %do.body7, !dbg !2154

do.body7:                                         ; preds = %if.then6
  %3 = call i64 @llvm.read_register.i64(metadata !2037), !dbg !2156
  %4 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %3) #14, !dbg !2156, !srcloc !2158
  call void @llvm.write_register.i64(metadata !2037, i64 %4), !dbg !2156
  br label %do.end, !dbg !2156

do.end:                                           ; preds = %do.body7
  br label %if.end8, !dbg !2156

if.end8:                                          ; preds = %do.end, %do.body
  br label %do.end9, !dbg !2151

do.end9:                                          ; preds = %if.end8
  %5 = load ptr, ptr %sem.addr, align 8, !dbg !2159
  call void @percpu_rwsem_wait(ptr noundef %5, i1 noundef zeroext true) #13, !dbg !2160
  br label %do.body10, !dbg !2161

do.body10:                                        ; preds = %do.end9
  call void @__preempt_count_add(i32 noundef 1) #13, !dbg !2162
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !2162, !srcloc !2164
  br label %do.end11, !dbg !2162

do.end11:                                         ; preds = %do.body10
  %6 = load ptr, ptr %sem.addr, align 8, !dbg !2165
  call void @trace_contention_end(ptr noundef %6, i32 noundef 0) #13, !dbg !2166
  store i1 true, ptr %retval, align 1, !dbg !2167
  br label %return, !dbg !2167

return:                                           ; preds = %do.end11, %if.then1, %if.then
  %7 = load i1, ptr %retval, align 1, !dbg !2168
  ret i1 %7, !dbg !2168
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__percpu_down_read_trylock(ptr noundef %sem) #0 align 16 !dbg !2169 {
entry:
  %retval = alloca i1, align 1
  %sem.addr = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pao_ID__ = alloca i32, align 4
  %__vpp_verify14 = alloca ptr, align 8
  %pao_ID__17 = alloca i32, align 4
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !2173, metadata !DIExpression()), !dbg !2185
  br label %do.body, !dbg !2186

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !2187

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !2188
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2174, metadata !DIExpression()), !dbg !2188
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2188
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !2188
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !2187
  br label %do.end, !dbg !2188

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !2187

do.body2:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #14, !dbg !2189
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !2177, metadata !DIExpression()), !dbg !2189
  store i32 1, ptr %pao_ID__, align 4, !dbg !2189
  %1 = load ptr, ptr %sem.addr, align 8, !dbg !2190
  %read_count = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %1, i32 0, i32 1, !dbg !2190
  %2 = load ptr, ptr %read_count, align 8, !dbg !2190
  call void asm sideeffect "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %2, ptr elementtype(i32) %2) #14, !dbg !2190, !srcloc !2193
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #14, !dbg !2187
  br label %do.end3, !dbg !2189

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !2187

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !2194

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !2195

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !2197

do.end7:                                          ; preds = %do.body6
  call void asm sideeffect "lock; addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !2195, !srcloc !2199
  br label %do.end8, !dbg !2195

do.end8:                                          ; preds = %do.end7
  %3 = load ptr, ptr %sem.addr, align 8, !dbg !2200
  %block = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %3, i32 0, i32 4, !dbg !2200
  %call = call i32 @atomic_read_acquire(ptr noundef %block) #13, !dbg !2200
  %tobool = icmp ne i32 %call, 0, !dbg !2200
  %lnot = xor i1 %tobool, true, !dbg !2200
  %lnot9 = xor i1 %lnot, true, !dbg !2200
  %lnot10 = xor i1 %lnot9, true, !dbg !2200
  %lnot.ext = zext i1 %lnot10 to i32, !dbg !2200
  %conv = sext i32 %lnot.ext to i64, !dbg !2200
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2200
  %tobool11 = icmp ne i64 %expval, 0, !dbg !2200
  br i1 %tobool11, label %if.then, label %if.end, !dbg !2202

if.then:                                          ; preds = %do.end8
  store i1 true, ptr %retval, align 1, !dbg !2203
  br label %return, !dbg !2203

if.end:                                           ; preds = %do.end8
  br label %do.body12, !dbg !2204

do.body12:                                        ; preds = %if.end
  br label %do.body13, !dbg !2205

do.body13:                                        ; preds = %do.body12
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify14) #14, !dbg !2206
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify14, metadata !2180, metadata !DIExpression()), !dbg !2206
  store ptr null, ptr %__vpp_verify14, align 8, !dbg !2206
  %4 = load ptr, ptr %__vpp_verify14, align 8, !dbg !2206
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify14) #14, !dbg !2205
  br label %do.end15, !dbg !2206

do.end15:                                         ; preds = %do.body13
  br label %do.body16, !dbg !2205

do.body16:                                        ; preds = %do.end15
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__17) #14, !dbg !2207
  call void @llvm.dbg.declare(metadata ptr %pao_ID__17, metadata !2183, metadata !DIExpression()), !dbg !2207
  store i32 -1, ptr %pao_ID__17, align 4, !dbg !2207
  %5 = load ptr, ptr %sem.addr, align 8, !dbg !2208
  %read_count18 = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %5, i32 0, i32 1, !dbg !2208
  %6 = load ptr, ptr %read_count18, align 8, !dbg !2208
  call void asm sideeffect "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %6, ptr elementtype(i32) %6) #14, !dbg !2208, !srcloc !2212
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__17) #14, !dbg !2205
  br label %do.end19, !dbg !2207

do.end19:                                         ; preds = %do.body16
  br label %do.end20, !dbg !2205

do.end20:                                         ; preds = %do.end19
  %7 = load ptr, ptr %sem.addr, align 8, !dbg !2213
  %writer = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %7, i32 0, i32 2, !dbg !2214
  %call21 = call i32 @rcuwait_wake_up(ptr noundef %writer) #13, !dbg !2215
  store i1 false, ptr %retval, align 1, !dbg !2216
  br label %return, !dbg !2216

return:                                           ; preds = %do.end20, %if.then
  %8 = load i1, ptr %retval, align 1, !dbg !2217
  ret i1 %8, !dbg !2217
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_contention_begin(ptr noundef %lock, i32 noundef %flags) #5 align 16 !dbg !1951 {
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
  %__UNIQUE_ID_rcu247 = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %tmp45 = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1955, metadata !DIExpression()), !dbg !2218
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1956, metadata !DIExpression()), !dbg !2218
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_contention_begin, i32 0, i32 1)) #13, !dbg !2219
  br i1 %call, label %if.then, label %if.end68, !dbg !2218

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2219

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__idx) #14, !dbg !2220
  call void @llvm.dbg.declare(metadata ptr %__idx, metadata !1957, metadata !DIExpression()), !dbg !2220
  store i32 0, ptr %__idx, align 4, !dbg !2220
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #14, !dbg !2221
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !1960, metadata !DIExpression()), !dbg !2221
  br label %do.body1, !dbg !2221

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !2222
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1963, metadata !DIExpression()), !dbg !2222
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2222
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !2222
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !2221
  br label %do.cond, !dbg !2222

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !2222

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #14, !dbg !2223
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !1965, metadata !DIExpression()), !dbg !2223
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.16, ptr @pcpu_hot, i32 0, i32 2)) #14, !dbg !2223, !srcloc !2224
  store i32 %1, ptr %pfo_val__, align 4, !dbg !2223
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !2223
  %conv = zext i32 %2 to i64, !dbg !2223
  %conv2 = trunc i64 %conv to i32, !dbg !2223
  store i32 %conv2, ptr %tmp, align 4, !dbg !2223
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #14, !dbg !2221
  %3 = load i32, ptr %tmp, align 4, !dbg !2223
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !2221
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !2221
  store i32 %4, ptr %tmp3, align 4, !dbg !2221
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #14, !dbg !2225
  %5 = load i32, ptr %tmp3, align 4, !dbg !2221
  %call4 = call zeroext i1 @cpu_online(i32 noundef %5) #13, !dbg !2225
  br i1 %call4, label %if.end, label %if.then5, !dbg !2220

if.then5:                                         ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2225

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !2226
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1967, metadata !DIExpression()), !dbg !2226
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !2226
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !2227
  %tobool = icmp ne i32 %6, 0, !dbg !2227
  %lnot = xor i1 %tobool, true, !dbg !2227
  %lnot6 = xor i1 %lnot, true, !dbg !2227
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !2227
  %conv7 = sext i32 %lnot.ext to i64, !dbg !2227
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !2227
  %tobool8 = icmp ne i64 %expval, 0, !dbg !2227
  br i1 %tobool8, label %if.then9, label %if.end22, !dbg !2226

if.then9:                                         ; preds = %if.end
  br label %do.body10, !dbg !2227

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !2228
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1970, metadata !DIExpression()), !dbg !2228
  store i32 2307, ptr %__flags, align 4, !dbg !2228
  br label %do.body11, !dbg !2228

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !2229

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !2229

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !2228

do.body14:                                        ; preds = %do.end13
  %7 = load i32, ptr %__flags, align 4, !dbg !2231
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 120, i32 %7, i64 12) #14, !dbg !2231, !srcloc !2233
  br label %do.cond15, !dbg !2231

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !2231

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !2228

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !2234

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !2234

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !2227
  br label %do.cond20, !dbg !2228

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !2228

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !2228

if.end22:                                         ; preds = %do.end21, %if.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !2226
  %tobool24 = icmp ne i32 %8, 0, !dbg !2226
  %lnot25 = xor i1 %tobool24, true, !dbg !2226
  %lnot27 = xor i1 %lnot25, true, !dbg !2226
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !2226
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !2226
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !2226
  store i64 %expval30, ptr %tmp23, align 8, !dbg !2227
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !2236
  %9 = load i64, ptr %tmp23, align 8, !dbg !2226
  %tobool31 = icmp ne i64 %9, 0, !dbg !2236
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !2220

if.then32:                                        ; preds = %if.end22
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2236

if.end33:                                         ; preds = %if.end22
  br label %do.body34, !dbg !2220

do.body34:                                        ; preds = %if.end33
  call void @__preempt_count_add(i32 noundef 1) #13, !dbg !2237
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !2237, !srcloc !2239
  br label %do.cond35, !dbg !2237

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !2237

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !2220

do.body37:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #14, !dbg !2240
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !1973, metadata !DIExpression()), !dbg !2240
  call void @llvm.lifetime.start.p0(i64 8, ptr %__data) #14, !dbg !2240
  call void @llvm.dbg.declare(metadata ptr %__data, metadata !1975, metadata !DIExpression()), !dbg !2240
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu247) #14, !dbg !2241
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu247, metadata !1976, metadata !DIExpression()), !dbg !2241
  br label %do.body38, !dbg !2242

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !2244

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !2244

do.end40:                                         ; preds = %do.cond39
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_contention_begin, i32 0, i32 8), align 8, !dbg !2242
  store ptr %10, ptr %tmp41, align 8, !dbg !2244
  %11 = load ptr, ptr %tmp41, align 8, !dbg !2242
  store ptr %11, ptr %__UNIQUE_ID_rcu247, align 8, !dbg !2241
  %12 = load ptr, ptr %__UNIQUE_ID_rcu247, align 8, !dbg !2241
  store ptr %12, ptr %tmp42, align 8, !dbg !2241
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu247) #14, !dbg !2240
  %13 = load ptr, ptr %tmp42, align 8, !dbg !2241
  store ptr %13, ptr %it_func_ptr, align 8, !dbg !2240
  %14 = load ptr, ptr %it_func_ptr, align 8, !dbg !2246
  %tobool43 = icmp ne ptr %14, null, !dbg !2246
  br i1 %tobool43, label %if.then44, label %if.end47, !dbg !2240

if.then44:                                        ; preds = %do.end40
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !2248
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %15, i32 0, i32 1, !dbg !2248
  %16 = load ptr, ptr %data, align 8, !dbg !2248
  store ptr %16, ptr %__data, align 8, !dbg !2248
  store ptr @__SCT__tp_func_contention_begin, ptr %tmp45, align 8, !dbg !2250
  %17 = load ptr, ptr %tmp45, align 8, !dbg !2250
  %18 = load ptr, ptr %__data, align 8, !dbg !2248
  %19 = load ptr, ptr %lock.addr, align 8, !dbg !2248
  %20 = load i32, ptr %flags.addr, align 4, !dbg !2248
  %call46 = call i32 %17(ptr noundef %18, ptr noundef %19, i32 noundef %20) #13, !dbg !2248
  br label %if.end47, !dbg !2248

if.end47:                                         ; preds = %if.then44, %do.end40
  call void @llvm.lifetime.end.p0(i64 8, ptr %__data) #14, !dbg !2220
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #14, !dbg !2220
  br label %do.cond48, !dbg !2240

do.cond48:                                        ; preds = %if.end47
  br label %do.end49, !dbg !2240

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !2220

do.body50:                                        ; preds = %do.end49
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !2252, !srcloc !2254
  %call51 = call zeroext i1 @__preempt_count_dec_and_test() #13, !dbg !2255
  %lnot52 = xor i1 %call51, true, !dbg !2255
  %lnot54 = xor i1 %lnot52, true, !dbg !2255
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !2255
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !2255
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !2255
  %tobool58 = icmp ne i64 %expval57, 0, !dbg !2255
  br i1 %tobool58, label %if.then59, label %if.end63, !dbg !2252

if.then59:                                        ; preds = %do.body50
  br label %do.body60, !dbg !2255

do.body60:                                        ; preds = %if.then59
  %21 = call i64 @llvm.read_register.i64(metadata !2037), !dbg !2257
  %22 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %21) #14, !dbg !2257, !srcloc !2259
  call void @llvm.write_register.i64(metadata !2037, i64 %22), !dbg !2257
  br label %do.cond61, !dbg !2257

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !2257

do.end62:                                         ; preds = %do.cond61
  br label %if.end63, !dbg !2257

if.end63:                                         ; preds = %do.end62, %do.body50
  br label %do.cond64, !dbg !2252

do.cond64:                                        ; preds = %if.end63
  br label %do.end65, !dbg !2252

do.end65:                                         ; preds = %do.cond64
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2219
  br label %cleanup, !dbg !2219

cleanup:                                          ; preds = %do.end65, %if.then32, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__idx) #14, !dbg !2219
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end68
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end67, !dbg !2220

do.end67:                                         ; preds = %cleanup.cont
  br label %if.end68, !dbg !2220

if.end68:                                         ; preds = %cleanup, %do.end67, %entry
  ret void, !dbg !2218

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #6 align 16 !dbg !2260 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #14, !dbg !2267
  call void @llvm.dbg.declare(metadata ptr %c, metadata !2265, metadata !DIExpression()), !dbg !2267
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.16, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.16, ptr @pcpu_hot, i32 0, i32 1)) #14, !dbg !2267, !srcloc !2268
  %1 = icmp ult i8 %0, 2, !dbg !2267
  call void @llvm.assume(i1 %1), !dbg !2267
  store i8 %0, ptr %c, align 1, !dbg !2267
  %2 = load i8, ptr %c, align 1, !dbg !2267, !range !2145, !noundef !438
  %tobool = trunc i8 %2 to i1, !dbg !2267
  %frombool = zext i1 %tobool to i8, !dbg !2267
  store i8 %frombool, ptr %tmp, align 1, !dbg !2267
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #14, !dbg !2269
  %3 = load i8, ptr %tmp, align 1, !dbg !2267, !range !2145, !noundef !438
  %tobool1 = trunc i8 %3 to i1, !dbg !2267
  ret i1 %tobool1, !dbg !2270
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #7

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @percpu_rwsem_wait(ptr noundef %sem, i1 noundef zeroext %reader) #0 align 16 !dbg !2271 {
entry:
  %sem.addr = alloca ptr, align 8
  %reader.addr = alloca i8, align 1
  %wq_entry = alloca %struct.wait_queue_entry, align 8
  %wait = alloca i8, align 1
  %__ai_ptr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %__ret = alloca i32, align 4
  %tmp24 = alloca i32, align 4
  %___p1 = alloca ptr, align 8
  %tmp34 = alloca ptr, align 8
  %tmp39 = alloca ptr, align 8
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !2275, metadata !DIExpression()), !dbg !2301
  %frombool = zext i1 %reader to i8
  store i8 %frombool, ptr %reader.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %reader.addr, metadata !2276, metadata !DIExpression()), !dbg !2302
  call void @llvm.lifetime.start.p0(i64 40, ptr %wq_entry) #14, !dbg !2303
  call void @llvm.dbg.declare(metadata ptr %wq_entry, metadata !2277, metadata !DIExpression()), !dbg !2303
  %flags = getelementptr inbounds %struct.wait_queue_entry, ptr %wq_entry, i32 0, i32 0, !dbg !2303
  store i32 0, ptr %flags, align 8, !dbg !2303
  %private = getelementptr inbounds %struct.wait_queue_entry, ptr %wq_entry, i32 0, i32 1, !dbg !2303
  %call = call ptr @get_current() #13, !dbg !2303
  store ptr %call, ptr %private, align 8, !dbg !2303
  %func = getelementptr inbounds %struct.wait_queue_entry, ptr %wq_entry, i32 0, i32 2, !dbg !2303
  store ptr @percpu_rwsem_wake_function, ptr %func, align 8, !dbg !2303
  %entry1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wq_entry, i32 0, i32 3, !dbg !2303
  %next = getelementptr inbounds %struct.list_head, ptr %entry1, i32 0, i32 0, !dbg !2303
  %entry2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wq_entry, i32 0, i32 3, !dbg !2303
  store ptr %entry2, ptr %next, align 8, !dbg !2303
  %prev = getelementptr inbounds %struct.list_head, ptr %entry1, i32 0, i32 1, !dbg !2303
  %entry3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wq_entry, i32 0, i32 3, !dbg !2303
  store ptr %entry3, ptr %prev, align 8, !dbg !2303
  call void @llvm.lifetime.start.p0(i64 1, ptr %wait) #14, !dbg !2304
  call void @llvm.dbg.declare(metadata ptr %wait, metadata !2289, metadata !DIExpression()), !dbg !2305
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !2306
  %waiters = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %0, i32 0, i32 3, !dbg !2307
  %lock = getelementptr inbounds %struct.wait_queue_head, ptr %waiters, i32 0, i32 0, !dbg !2308
  call void @spin_lock_irq(ptr noundef %lock) #13, !dbg !2309
  %1 = load ptr, ptr %sem.addr, align 8, !dbg !2310
  %2 = load i8, ptr %reader.addr, align 1, !dbg !2311, !range !2145, !noundef !438
  %tobool = trunc i8 %2 to i1, !dbg !2311
  %call4 = call zeroext i1 @__percpu_rwsem_trylock(ptr noundef %1, i1 noundef zeroext %tobool) #13, !dbg !2312
  %lnot = xor i1 %call4, true, !dbg !2313
  %frombool5 = zext i1 %lnot to i8, !dbg !2314
  store i8 %frombool5, ptr %wait, align 1, !dbg !2314
  %3 = load i8, ptr %wait, align 1, !dbg !2315, !range !2145, !noundef !438
  %tobool6 = trunc i8 %3 to i1, !dbg !2315
  br i1 %tobool6, label %if.then, label %if.end, !dbg !2317

if.then:                                          ; preds = %entry
  %4 = load i8, ptr %reader.addr, align 1, !dbg !2318, !range !2145, !noundef !438
  %tobool7 = trunc i8 %4 to i1, !dbg !2318
  %conv = zext i1 %tobool7 to i32, !dbg !2318
  %mul = mul i32 %conv, 8, !dbg !2320
  %or = or i32 1, %mul, !dbg !2321
  %flags8 = getelementptr inbounds %struct.wait_queue_entry, ptr %wq_entry, i32 0, i32 0, !dbg !2322
  %5 = load i32, ptr %flags8, align 8, !dbg !2323
  %or9 = or i32 %5, %or, !dbg !2323
  store i32 %or9, ptr %flags8, align 8, !dbg !2323
  %6 = load ptr, ptr %sem.addr, align 8, !dbg !2324
  %waiters10 = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %6, i32 0, i32 3, !dbg !2325
  call void @__add_wait_queue_entry_tail(ptr noundef %waiters10, ptr noundef %wq_entry) #13, !dbg !2326
  br label %if.end, !dbg !2327

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %sem.addr, align 8, !dbg !2328
  %waiters11 = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %7, i32 0, i32 3, !dbg !2329
  %lock12 = getelementptr inbounds %struct.wait_queue_head, ptr %waiters11, i32 0, i32 0, !dbg !2330
  call void @spin_unlock_irq(ptr noundef %lock12) #13, !dbg !2331
  br label %while.cond, !dbg !2332

while.cond:                                       ; preds = %if.end42, %if.end
  %8 = load i8, ptr %wait, align 1, !dbg !2333, !range !2145, !noundef !438
  %tobool13 = trunc i8 %8 to i1, !dbg !2333
  br i1 %tobool13, label %while.body, label %while.end, !dbg !2332

while.body:                                       ; preds = %while.cond
  br label %do.body, !dbg !2334

do.body:                                          ; preds = %while.body
  br label %do.body14, !dbg !2335

do.body14:                                        ; preds = %do.body
  br label %do.cond, !dbg !2336

do.cond:                                          ; preds = %do.body14
  br label %do.end, !dbg !2336

do.end:                                           ; preds = %do.cond
  br label %do.body15, !dbg !2335

do.body15:                                        ; preds = %do.end
  br label %do.body16, !dbg !2338

do.body16:                                        ; preds = %do.body15
  br label %do.cond17, !dbg !2339

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !2339

do.end18:                                         ; preds = %do.cond17
  br label %do.body19, !dbg !2338

do.body19:                                        ; preds = %do.end18
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #14, !dbg !2341
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !2290, metadata !DIExpression()), !dbg !2341
  %call20 = call ptr @get_current() #13, !dbg !2341
  %__state = getelementptr inbounds %struct.task_struct, ptr %call20, i32 0, i32 1, !dbg !2341
  store ptr %__state, ptr %__ai_ptr, align 8, !dbg !2341
  br label %do.body21, !dbg !2341

do.body21:                                        ; preds = %do.body19
  br label %do.cond22, !dbg !2342

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !2342

do.end23:                                         ; preds = %do.cond22
  %9 = load ptr, ptr %__ai_ptr, align 8, !dbg !2341
  call void @instrument_atomic_read_write(ptr noundef %9, i64 noundef 4) #13, !dbg !2341
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #14, !dbg !2344
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !2296, metadata !DIExpression()), !dbg !2344
  store i32 2, ptr %__ret, align 4, !dbg !2344
  %10 = load i32, ptr %__ret, align 4, !dbg !2344
  %11 = load ptr, ptr %__ai_ptr, align 8, !dbg !2344
  %12 = call i32 asm sideeffect "xchgl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %11, i32 %10, ptr elementtype(i32) %11) #14, !dbg !2344, !srcloc !2345
  store i32 %12, ptr %__ret, align 4, !dbg !2344
  %13 = load i32, ptr %__ret, align 4, !dbg !2344
  store i32 %13, ptr %tmp24, align 4, !dbg !2344
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #14, !dbg !2341
  %14 = load i32, ptr %tmp24, align 4, !dbg !2344
  store i32 %14, ptr %tmp, align 4, !dbg !2341
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #14, !dbg !2346
  %15 = load i32, ptr %tmp, align 4, !dbg !2341
  br label %do.cond25, !dbg !2346

do.cond25:                                        ; preds = %do.end23
  br label %do.end26, !dbg !2346

do.end26:                                         ; preds = %do.cond25
  br label %do.cond27, !dbg !2338

do.cond27:                                        ; preds = %do.end26
  br label %do.end28, !dbg !2338

do.end28:                                         ; preds = %do.cond27
  br label %do.cond29, !dbg !2335

do.cond29:                                        ; preds = %do.end28
  br label %do.end30, !dbg !2335

do.end30:                                         ; preds = %do.cond29
  call void @llvm.lifetime.start.p0(i64 8, ptr %___p1) #14, !dbg !2347
  call void @llvm.dbg.declare(metadata ptr %___p1, metadata !2298, metadata !DIExpression()), !dbg !2347
  br label %do.body31, !dbg !2348

do.body31:                                        ; preds = %do.end30
  br label %do.cond32, !dbg !2350

do.cond32:                                        ; preds = %do.body31
  br label %do.end33, !dbg !2350

do.end33:                                         ; preds = %do.cond32
  %private35 = getelementptr inbounds %struct.wait_queue_entry, ptr %wq_entry, i32 0, i32 1, !dbg !2348
  %16 = load volatile ptr, ptr %private35, align 8, !dbg !2348
  store ptr %16, ptr %tmp34, align 8, !dbg !2350
  %17 = load ptr, ptr %tmp34, align 8, !dbg !2348
  store ptr %17, ptr %___p1, align 8, !dbg !2347
  br label %do.body36, !dbg !2347

do.body36:                                        ; preds = %do.end33
  br label %do.cond37, !dbg !2352

do.cond37:                                        ; preds = %do.body36
  br label %do.end38, !dbg !2352

do.end38:                                         ; preds = %do.cond37
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !2347, !srcloc !2354
  %18 = load ptr, ptr %___p1, align 8, !dbg !2347
  store ptr %18, ptr %tmp39, align 8, !dbg !2347
  call void @llvm.lifetime.end.p0(i64 8, ptr %___p1) #14, !dbg !2355
  %19 = load ptr, ptr %tmp39, align 8, !dbg !2347
  %tobool40 = icmp ne ptr %19, null, !dbg !2355
  br i1 %tobool40, label %if.end42, label %if.then41, !dbg !2356

if.then41:                                        ; preds = %do.end38
  br label %while.end, !dbg !2357

if.end42:                                         ; preds = %do.end38
  call void @schedule() #13, !dbg !2358
  br label %while.cond, !dbg !2332, !llvm.loop !2359

while.end:                                        ; preds = %if.then41, %while.cond
  br label %do.body43, !dbg !2363

do.body43:                                        ; preds = %while.end
  br label %do.body44, !dbg !2364

do.body44:                                        ; preds = %do.body43
  br label %do.cond45, !dbg !2366

do.cond45:                                        ; preds = %do.body44
  br label %do.end46, !dbg !2366

do.end46:                                         ; preds = %do.cond45
  br label %do.body47, !dbg !2364

do.body47:                                        ; preds = %do.end46
  br label %do.body48, !dbg !2368

do.body48:                                        ; preds = %do.body47
  br label %do.cond49, !dbg !2370

do.cond49:                                        ; preds = %do.body48
  br label %do.end50, !dbg !2370

do.end50:                                         ; preds = %do.cond49
  br label %do.body51, !dbg !2368

do.body51:                                        ; preds = %do.end50
  %call52 = call ptr @get_current() #13, !dbg !2372
  %__state53 = getelementptr inbounds %struct.task_struct, ptr %call52, i32 0, i32 1, !dbg !2372
  store volatile i32 0, ptr %__state53, align 8, !dbg !2372
  br label %do.cond54, !dbg !2372

do.cond54:                                        ; preds = %do.body51
  br label %do.end55, !dbg !2372

do.end55:                                         ; preds = %do.cond54
  br label %do.cond56, !dbg !2368

do.cond56:                                        ; preds = %do.end55
  br label %do.end57, !dbg !2368

do.end57:                                         ; preds = %do.cond56
  br label %do.cond58, !dbg !2364

do.cond58:                                        ; preds = %do.end57
  br label %do.end59, !dbg !2364

do.end59:                                         ; preds = %do.cond58
  call void @llvm.lifetime.end.p0(i64 1, ptr %wait) #14, !dbg !2374
  call void @llvm.lifetime.end.p0(i64 40, ptr %wq_entry) #14, !dbg !2374
  ret void, !dbg !2374
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #6 align 16 !dbg !2375 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !2377, metadata !DIExpression()), !dbg !2384
  br label %do.body, !dbg !2385

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #14, !dbg !2386
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !2378, metadata !DIExpression()), !dbg !2386
  %0 = load i32, ptr %val.addr, align 4, !dbg !2386
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !2386
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !2386

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !2386
  %cmp = icmp eq i32 %2, 1, !dbg !2386
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !2386

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !2386
  %cmp1 = icmp eq i32 %3, -1, !dbg !2386
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !2386

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !2386
  br label %cond.end, !dbg !2386

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !2386

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !2386
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !2386
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !2387
  %cmp2 = icmp eq i32 %5, 1, !dbg !2387
  br i1 %cmp2, label %if.then, label %if.else, !dbg !2386

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.16, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.16, ptr @pcpu_hot, i32 0, i32 1)) #14, !dbg !2388, !srcloc !2390
  br label %if.end8, !dbg !2387

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !2391
  %cmp3 = icmp eq i32 %6, -1, !dbg !2391
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !2387

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.16, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.16, ptr @pcpu_hot, i32 0, i32 1)) #14, !dbg !2392, !srcloc !2394
  br label %if.end, !dbg !2391

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !2391

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #14, !dbg !2395
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !2380, metadata !DIExpression()), !dbg !2395
  %7 = load i32, ptr %val.addr, align 4, !dbg !2395
  %conv = sext i32 %7 to i64, !dbg !2395
  %and = and i64 %conv, 4294967295, !dbg !2395
  %conv7 = trunc i64 %and to i32, !dbg !2395
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !2395
  %8 = load i32, ptr %pto_val__, align 4, !dbg !2395
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.16, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.16, ptr @pcpu_hot, i32 0, i32 1)) #14, !dbg !2395, !srcloc !2396
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #14, !dbg !2391
  br label %do.cond, !dbg !2395

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !2395

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #14, !dbg !2385
  br label %do.end10, !dbg !2386

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !2397
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_contention_end(ptr noundef %lock, i32 noundef %ret) #5 align 16 !dbg !2000 {
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
  %__UNIQUE_ID_rcu255 = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %tmp45 = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2004, metadata !DIExpression()), !dbg !2398
  store i32 %ret, ptr %ret.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ret.addr, metadata !2005, metadata !DIExpression()), !dbg !2398
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_contention_end, i32 0, i32 1)) #13, !dbg !2399
  br i1 %call, label %if.then, label %if.end68, !dbg !2398

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2399

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__idx) #14, !dbg !2400
  call void @llvm.dbg.declare(metadata ptr %__idx, metadata !2006, metadata !DIExpression()), !dbg !2400
  store i32 0, ptr %__idx, align 4, !dbg !2400
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #14, !dbg !2401
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !2009, metadata !DIExpression()), !dbg !2401
  br label %do.body1, !dbg !2401

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !2402
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2012, metadata !DIExpression()), !dbg !2402
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2402
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !2402
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !2401
  br label %do.cond, !dbg !2402

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !2402

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #14, !dbg !2403
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !2014, metadata !DIExpression()), !dbg !2403
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.16, ptr @pcpu_hot, i32 0, i32 2)) #14, !dbg !2403, !srcloc !2404
  store i32 %1, ptr %pfo_val__, align 4, !dbg !2403
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !2403
  %conv = zext i32 %2 to i64, !dbg !2403
  %conv2 = trunc i64 %conv to i32, !dbg !2403
  store i32 %conv2, ptr %tmp, align 4, !dbg !2403
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #14, !dbg !2401
  %3 = load i32, ptr %tmp, align 4, !dbg !2403
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !2401
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !2401
  store i32 %4, ptr %tmp3, align 4, !dbg !2401
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #14, !dbg !2405
  %5 = load i32, ptr %tmp3, align 4, !dbg !2401
  %call4 = call zeroext i1 @cpu_online(i32 noundef %5) #13, !dbg !2405
  br i1 %call4, label %if.end, label %if.then5, !dbg !2400

if.then5:                                         ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2405

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !2406
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2016, metadata !DIExpression()), !dbg !2406
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !2406
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !2407
  %tobool = icmp ne i32 %6, 0, !dbg !2407
  %lnot = xor i1 %tobool, true, !dbg !2407
  %lnot6 = xor i1 %lnot, true, !dbg !2407
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !2407
  %conv7 = sext i32 %lnot.ext to i64, !dbg !2407
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !2407
  %tobool8 = icmp ne i64 %expval, 0, !dbg !2407
  br i1 %tobool8, label %if.then9, label %if.end22, !dbg !2406

if.then9:                                         ; preds = %if.end
  br label %do.body10, !dbg !2407

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !2408
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !2019, metadata !DIExpression()), !dbg !2408
  store i32 2307, ptr %__flags, align 4, !dbg !2408
  br label %do.body11, !dbg !2408

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !2409

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !2409

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !2408

do.body14:                                        ; preds = %do.end13
  %7 = load i32, ptr %__flags, align 4, !dbg !2411
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 139, i32 %7, i64 12) #14, !dbg !2411, !srcloc !2413
  br label %do.cond15, !dbg !2411

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !2411

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !2408

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !2414

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !2414

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !2407
  br label %do.cond20, !dbg !2408

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !2408

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !2408

if.end22:                                         ; preds = %do.end21, %if.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !2406
  %tobool24 = icmp ne i32 %8, 0, !dbg !2406
  %lnot25 = xor i1 %tobool24, true, !dbg !2406
  %lnot27 = xor i1 %lnot25, true, !dbg !2406
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !2406
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !2406
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !2406
  store i64 %expval30, ptr %tmp23, align 8, !dbg !2407
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !2416
  %9 = load i64, ptr %tmp23, align 8, !dbg !2406
  %tobool31 = icmp ne i64 %9, 0, !dbg !2416
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !2400

if.then32:                                        ; preds = %if.end22
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2416

if.end33:                                         ; preds = %if.end22
  br label %do.body34, !dbg !2400

do.body34:                                        ; preds = %if.end33
  call void @__preempt_count_add(i32 noundef 1) #13, !dbg !2417
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !2417, !srcloc !2419
  br label %do.cond35, !dbg !2417

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !2417

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !2400

do.body37:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #14, !dbg !2420
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !2022, metadata !DIExpression()), !dbg !2420
  call void @llvm.lifetime.start.p0(i64 8, ptr %__data) #14, !dbg !2420
  call void @llvm.dbg.declare(metadata ptr %__data, metadata !2024, metadata !DIExpression()), !dbg !2420
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu255) #14, !dbg !2421
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu255, metadata !2025, metadata !DIExpression()), !dbg !2421
  br label %do.body38, !dbg !2422

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !2424

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !2424

do.end40:                                         ; preds = %do.cond39
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_contention_end, i32 0, i32 8), align 8, !dbg !2422
  store ptr %10, ptr %tmp41, align 8, !dbg !2424
  %11 = load ptr, ptr %tmp41, align 8, !dbg !2422
  store ptr %11, ptr %__UNIQUE_ID_rcu255, align 8, !dbg !2421
  %12 = load ptr, ptr %__UNIQUE_ID_rcu255, align 8, !dbg !2421
  store ptr %12, ptr %tmp42, align 8, !dbg !2421
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu255) #14, !dbg !2420
  %13 = load ptr, ptr %tmp42, align 8, !dbg !2421
  store ptr %13, ptr %it_func_ptr, align 8, !dbg !2420
  %14 = load ptr, ptr %it_func_ptr, align 8, !dbg !2426
  %tobool43 = icmp ne ptr %14, null, !dbg !2426
  br i1 %tobool43, label %if.then44, label %if.end47, !dbg !2420

if.then44:                                        ; preds = %do.end40
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !2428
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %15, i32 0, i32 1, !dbg !2428
  %16 = load ptr, ptr %data, align 8, !dbg !2428
  store ptr %16, ptr %__data, align 8, !dbg !2428
  store ptr @__SCT__tp_func_contention_end, ptr %tmp45, align 8, !dbg !2430
  %17 = load ptr, ptr %tmp45, align 8, !dbg !2430
  %18 = load ptr, ptr %__data, align 8, !dbg !2428
  %19 = load ptr, ptr %lock.addr, align 8, !dbg !2428
  %20 = load i32, ptr %ret.addr, align 4, !dbg !2428
  %call46 = call i32 %17(ptr noundef %18, ptr noundef %19, i32 noundef %20) #13, !dbg !2428
  br label %if.end47, !dbg !2428

if.end47:                                         ; preds = %if.then44, %do.end40
  call void @llvm.lifetime.end.p0(i64 8, ptr %__data) #14, !dbg !2400
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #14, !dbg !2400
  br label %do.cond48, !dbg !2420

do.cond48:                                        ; preds = %if.end47
  br label %do.end49, !dbg !2420

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !2400

do.body50:                                        ; preds = %do.end49
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !2432, !srcloc !2434
  %call51 = call zeroext i1 @__preempt_count_dec_and_test() #13, !dbg !2435
  %lnot52 = xor i1 %call51, true, !dbg !2435
  %lnot54 = xor i1 %lnot52, true, !dbg !2435
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !2435
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !2435
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !2435
  %tobool58 = icmp ne i64 %expval57, 0, !dbg !2435
  br i1 %tobool58, label %if.then59, label %if.end63, !dbg !2432

if.then59:                                        ; preds = %do.body50
  br label %do.body60, !dbg !2435

do.body60:                                        ; preds = %if.then59
  %21 = call i64 @llvm.read_register.i64(metadata !2037), !dbg !2437
  %22 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %21) #14, !dbg !2437, !srcloc !2439
  call void @llvm.write_register.i64(metadata !2037, i64 %22), !dbg !2437
  br label %do.cond61, !dbg !2437

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !2437

do.end62:                                         ; preds = %do.cond61
  br label %if.end63, !dbg !2437

if.end63:                                         ; preds = %do.end62, %do.body50
  br label %do.cond64, !dbg !2432

do.cond64:                                        ; preds = %if.end63
  br label %do.end65, !dbg !2432

do.end65:                                         ; preds = %do.cond64
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2399
  br label %cleanup, !dbg !2399

cleanup:                                          ; preds = %do.end65, %if.then32, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__idx) #14, !dbg !2399
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end68
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end67, !dbg !2400

do.end67:                                         ; preds = %cleanup.cont
  br label %if.end68, !dbg !2400

if.end68:                                         ; preds = %cleanup, %do.end67, %entry
  ret void, !dbg !2398

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @percpu_is_read_locked(ptr noundef %sem) #0 align 16 !dbg !2440 {
entry:
  %sem.addr = alloca ptr, align 8
  %__sum = alloca i32, align 4
  %cpu = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp6 = alloca ptr, align 8
  %tmp8 = alloca i32, align 4
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !2442, metadata !DIExpression()), !dbg !2453
  call void @llvm.lifetime.start.p0(i64 4, ptr %__sum) #14, !dbg !2454
  call void @llvm.dbg.declare(metadata ptr %__sum, metadata !2443, metadata !DIExpression()), !dbg !2454
  store i32 0, ptr %__sum, align 4, !dbg !2454
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #14, !dbg !2454
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !2445, metadata !DIExpression()), !dbg !2454
  br label %do.body, !dbg !2454

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !2455

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2455

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cpu, align 4, !dbg !2457
  br label %for.cond, !dbg !2457

for.cond:                                         ; preds = %for.inc, %do.end
  %0 = load i32, ptr %cpu, align 4, !dbg !2458
  %conv = sext i32 %0 to i64, !dbg !2458
  %call = call i64 @find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef 64, i64 noundef %conv) #13, !dbg !2458
  %conv1 = trunc i64 %call to i32, !dbg !2458
  store i32 %conv1, ptr %cpu, align 4, !dbg !2458
  %1 = load i32, ptr %cpu, align 4, !dbg !2458
  %cmp = icmp ult i32 %1, 64, !dbg !2458
  br i1 %cmp, label %for.body, label %for.end, !dbg !2457

for.body:                                         ; preds = %for.cond
  br label %do.body3, !dbg !2459

do.body3:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !2460
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2446, metadata !DIExpression()), !dbg !2460
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2460
  %2 = load ptr, ptr %__vpp_verify, align 8, !dbg !2460
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !2459
  br label %do.cond4, !dbg !2460

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !2460

do.end5:                                          ; preds = %do.cond4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #14, !dbg !2461
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !2451, metadata !DIExpression()), !dbg !2461
  %3 = load ptr, ptr %sem.addr, align 8, !dbg !2461
  %read_count = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %3, i32 0, i32 1, !dbg !2461
  %4 = load ptr, ptr %read_count, align 8, !dbg !2461
  %5 = ptrtoint ptr %4 to i64, !dbg !2461
  store i64 %5, ptr %__ptr, align 8, !dbg !2461
  %6 = load i64, ptr %__ptr, align 8, !dbg !2461
  %7 = load i32, ptr %cpu, align 4, !dbg !2461
  %idxprom = sext i32 %7 to i64, !dbg !2461
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !2461
  %8 = load i64, ptr %arrayidx, align 8, !dbg !2461
  %add = add i64 %6, %8, !dbg !2461
  %9 = inttoptr i64 %add to ptr, !dbg !2461
  store ptr %9, ptr %tmp6, align 8, !dbg !2461
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #14, !dbg !2459
  %10 = load ptr, ptr %tmp6, align 8, !dbg !2461
  store ptr %10, ptr %tmp, align 8, !dbg !2460
  %11 = load ptr, ptr %tmp, align 8, !dbg !2459
  %12 = load i32, ptr %11, align 4, !dbg !2458
  %13 = load i32, ptr %__sum, align 4, !dbg !2458
  %add7 = add i32 %13, %12, !dbg !2458
  store i32 %add7, ptr %__sum, align 4, !dbg !2458
  br label %for.inc, !dbg !2458

for.inc:                                          ; preds = %do.end5
  %14 = load i32, ptr %cpu, align 4, !dbg !2458
  %inc = add i32 %14, 1, !dbg !2458
  store i32 %inc, ptr %cpu, align 4, !dbg !2458
  br label %for.cond, !dbg !2458, !llvm.loop !2462

for.end:                                          ; preds = %for.cond
  %15 = load i32, ptr %__sum, align 4, !dbg !2454
  store i32 %15, ptr %tmp8, align 4, !dbg !2457
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #14, !dbg !2463
  call void @llvm.lifetime.end.p0(i64 4, ptr %__sum) #14, !dbg !2463
  %16 = load i32, ptr %tmp8, align 4, !dbg !2454
  %cmp9 = icmp ne i32 %16, 0, !dbg !2464
  br i1 %cmp9, label %land.rhs, label %land.end, !dbg !2465

land.rhs:                                         ; preds = %for.end
  %17 = load ptr, ptr %sem.addr, align 8, !dbg !2466
  %block = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %17, i32 0, i32 4, !dbg !2467
  %call11 = call i32 @atomic_read(ptr noundef %block) #13, !dbg !2468
  %tobool = icmp ne i32 %call11, 0, !dbg !2469
  %lnot = xor i1 %tobool, true, !dbg !2469
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.end
  %18 = phi i1 [ false, %for.end ], [ %lnot, %land.rhs ], !dbg !2470
  ret i1 %18, !dbg !2471
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #5 align 16 !dbg !2472 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2477, metadata !DIExpression()), !dbg !2483
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2478, metadata !DIExpression()), !dbg !2484
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !2479, metadata !DIExpression()), !dbg !2485
  %0 = load i64, ptr %size.addr, align 8, !dbg !2486
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2486
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !2486

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !2486
  %cmp = icmp ule i64 %2, 64, !dbg !2486
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !2486

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !2486
  %cmp2 = icmp ugt i64 %3, 0, !dbg !2486
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !2487

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #14, !dbg !2488
  call void @llvm.dbg.declare(metadata ptr %val, metadata !2480, metadata !DIExpression()), !dbg !2489
  %4 = load i64, ptr %offset.addr, align 8, !dbg !2490
  %5 = load i64, ptr %size.addr, align 8, !dbg !2490
  %cmp3 = icmp uge i64 %4, %5, !dbg !2490
  %lnot = xor i1 %cmp3, true, !dbg !2490
  %lnot4 = xor i1 %lnot, true, !dbg !2490
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !2490
  %conv = sext i32 %lnot.ext to i64, !dbg !2490
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2490
  %tobool = icmp ne i64 %expval, 0, !dbg !2490
  br i1 %tobool, label %if.then5, label %if.end, !dbg !2492

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !2493
  store i64 %6, ptr %retval, align 8, !dbg !2494
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2494

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !2495
  %8 = load i64, ptr %7, align 8, !dbg !2496
  %9 = load i64, ptr %offset.addr, align 8, !dbg !2497
  %shl = shl i64 1, %9, !dbg !2497
  %sub = sub i64 -1, %shl, !dbg !2497
  %add = add i64 %sub, 1, !dbg !2497
  %10 = load i64, ptr %size.addr, align 8, !dbg !2497
  %sub6 = sub i64 %10, 1, !dbg !2497
  %sub7 = sub i64 63, %sub6, !dbg !2497
  %shr = lshr i64 -1, %sub7, !dbg !2497
  %and = and i64 %add, %shr, !dbg !2497
  %add8 = add i64 0, %and, !dbg !2497
  %and9 = and i64 %8, %add8, !dbg !2498
  store i64 %and9, ptr %val, align 8, !dbg !2499
  %11 = load i64, ptr %val, align 8, !dbg !2500
  %tobool10 = icmp ne i64 %11, 0, !dbg !2500
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !2500

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !2501
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !2501
  br i1 %13, label %cond.true11, label %cond.false, !dbg !2501

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !2501
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !2501
  %cast = trunc i64 %15 to i32, !dbg !2501
  %conv12 = sext i32 %cast to i64, !dbg !2501
  br label %cond.end, !dbg !2501

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !2501
  %call = call i64 @variable__ffs(i64 noundef %16) #13, !dbg !2501
  br label %cond.end, !dbg !2501

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !2501
  br label %cond.end14, !dbg !2500

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !2502
  br label %cond.end14, !dbg !2500

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !2500
  store i64 %cond15, ptr %retval, align 8, !dbg !2503
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2503

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #14, !dbg !2504
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !2505
  %19 = load i64, ptr %size.addr, align 8, !dbg !2506
  %20 = load i64, ptr %offset.addr, align 8, !dbg !2507
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #13, !dbg !2508
  store i64 %call17, ptr %retval, align 8, !dbg !2509
  br label %return, !dbg !2509

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !2510
  ret i64 %21, !dbg !2510
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #6 align 16 !dbg !2511 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2517, metadata !DIExpression()), !dbg !2518
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2519
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #13, !dbg !2520
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2521
  %call = call i32 @raw_atomic_read(ptr noundef %1) #13, !dbg !2522
  ret i32 %call, !dbg !2523
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @percpu_down_write(ptr noundef %sem) #0 section ".sched.text" align 16 !dbg !2524 {
entry:
  %sem.addr = alloca ptr, align 8
  %__ret = alloca i64, align 8
  %__ai_ptr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %__ret15 = alloca i32, align 4
  %tmp16 = alloca i32, align 4
  %tmp31 = alloca i64, align 8
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !2526, metadata !DIExpression()), !dbg !2539
  br label %do.body, !dbg !2540

do.body:                                          ; preds = %entry
  call void @might_resched() #13, !dbg !2541
  br label %do.end, !dbg !2541

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !2543

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !2544

do.end2:                                          ; preds = %do.body1
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !2546
  call void @trace_contention_begin(ptr noundef %0, i32 noundef 20) #13, !dbg !2547
  %1 = load ptr, ptr %sem.addr, align 8, !dbg !2548
  %rss = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %1, i32 0, i32 0, !dbg !2549
  call void @rcu_sync_enter(ptr noundef %rss) #13, !dbg !2550
  %2 = load ptr, ptr %sem.addr, align 8, !dbg !2551
  %call = call zeroext i1 @__percpu_down_write_trylock(ptr noundef %2) #13, !dbg !2553
  br i1 %call, label %if.end, label %if.then, !dbg !2554

if.then:                                          ; preds = %do.end2
  %3 = load ptr, ptr %sem.addr, align 8, !dbg !2555
  call void @percpu_rwsem_wait(ptr noundef %3, i1 noundef zeroext false) #13, !dbg !2556
  br label %if.end, !dbg !2556

if.end:                                           ; preds = %if.then, %do.end2
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #14, !dbg !2557
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !2527, metadata !DIExpression()), !dbg !2557
  store i64 0, ptr %__ret, align 8, !dbg !2557
  %4 = load ptr, ptr %sem.addr, align 8, !dbg !2557
  %writer = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %4, i32 0, i32 2, !dbg !2557
  call void @prepare_to_rcuwait(ptr noundef %writer) #13, !dbg !2557
  br label %for.cond, !dbg !2557

for.cond:                                         ; preds = %if.end29, %if.end
  br label %do.body3, !dbg !2558

do.body3:                                         ; preds = %for.cond
  br label %do.body4, !dbg !2559

do.body4:                                         ; preds = %do.body3
  br label %do.cond, !dbg !2560

do.cond:                                          ; preds = %do.body4
  br label %do.end5, !dbg !2560

do.end5:                                          ; preds = %do.cond
  br label %do.body6, !dbg !2559

do.body6:                                         ; preds = %do.end5
  br label %do.body7, !dbg !2562

do.body7:                                         ; preds = %do.body6
  br label %do.cond8, !dbg !2563

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !2563

do.end9:                                          ; preds = %do.cond8
  br label %do.body10, !dbg !2562

do.body10:                                        ; preds = %do.end9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #14, !dbg !2565
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !2529, metadata !DIExpression()), !dbg !2565
  %call11 = call ptr @get_current() #13, !dbg !2565
  %__state = getelementptr inbounds %struct.task_struct, ptr %call11, i32 0, i32 1, !dbg !2565
  store ptr %__state, ptr %__ai_ptr, align 8, !dbg !2565
  br label %do.body12, !dbg !2565

do.body12:                                        ; preds = %do.body10
  br label %do.cond13, !dbg !2566

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !2566

do.end14:                                         ; preds = %do.cond13
  %5 = load ptr, ptr %__ai_ptr, align 8, !dbg !2565
  call void @instrument_atomic_read_write(ptr noundef %5, i64 noundef 4) #13, !dbg !2565
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret15) #14, !dbg !2568
  call void @llvm.dbg.declare(metadata ptr %__ret15, metadata !2537, metadata !DIExpression()), !dbg !2568
  store i32 2, ptr %__ret15, align 4, !dbg !2568
  %6 = load i32, ptr %__ret15, align 4, !dbg !2568
  %7 = load ptr, ptr %__ai_ptr, align 8, !dbg !2568
  %8 = call i32 asm sideeffect "xchgl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %7, i32 %6, ptr elementtype(i32) %7) #14, !dbg !2568, !srcloc !2569
  store i32 %8, ptr %__ret15, align 4, !dbg !2568
  %9 = load i32, ptr %__ret15, align 4, !dbg !2568
  store i32 %9, ptr %tmp16, align 4, !dbg !2568
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret15) #14, !dbg !2565
  %10 = load i32, ptr %tmp16, align 4, !dbg !2568
  store i32 %10, ptr %tmp, align 4, !dbg !2565
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #14, !dbg !2570
  %11 = load i32, ptr %tmp, align 4, !dbg !2565
  br label %do.cond17, !dbg !2570

do.cond17:                                        ; preds = %do.end14
  br label %do.end18, !dbg !2570

do.end18:                                         ; preds = %do.cond17
  br label %do.cond19, !dbg !2562

do.cond19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !2562

do.end20:                                         ; preds = %do.cond19
  br label %do.cond21, !dbg !2559

do.cond21:                                        ; preds = %do.end20
  br label %do.end22, !dbg !2559

do.end22:                                         ; preds = %do.cond21
  %12 = load ptr, ptr %sem.addr, align 8, !dbg !2571
  %call23 = call zeroext i1 @readers_active_check(ptr noundef %12) #13, !dbg !2571
  br i1 %call23, label %if.then24, label %if.end25, !dbg !2558

if.then24:                                        ; preds = %do.end22
  br label %for.end, !dbg !2571

if.end25:                                         ; preds = %do.end22
  %call26 = call ptr @get_current() #13, !dbg !2573
  %call27 = call i32 @signal_pending_state(i32 noundef 2, ptr noundef %call26) #13, !dbg !2573
  %tobool = icmp ne i32 %call27, 0, !dbg !2573
  br i1 %tobool, label %if.then28, label %if.end29, !dbg !2558

if.then28:                                        ; preds = %if.end25
  store i64 -4, ptr %__ret, align 8, !dbg !2575
  br label %for.end, !dbg !2575

if.end29:                                         ; preds = %if.end25
  call void @schedule() #13, !dbg !2558
  br label %for.cond, !dbg !2577, !llvm.loop !2578

for.end:                                          ; preds = %if.then28, %if.then24
  %13 = load ptr, ptr %sem.addr, align 8, !dbg !2557
  %writer30 = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %13, i32 0, i32 2, !dbg !2557
  call void @finish_rcuwait(ptr noundef %writer30) #13, !dbg !2557
  %14 = load i64, ptr %__ret, align 8, !dbg !2557
  store i64 %14, ptr %tmp31, align 8, !dbg !2557
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #14, !dbg !2580
  %15 = load i64, ptr %tmp31, align 8, !dbg !2557
  %16 = load ptr, ptr %sem.addr, align 8, !dbg !2581
  call void @trace_contention_end(ptr noundef %16, i32 noundef 0) #13, !dbg !2582
  ret void, !dbg !2583
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_resched() #6 align 16 !dbg !2031 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__might_resched, ptr %tmp, align 8, !dbg !2584
  %0 = load ptr, ptr %tmp, align 8, !dbg !2584
  %call = call i32 %0() #13, !dbg !2586
  ret void, !dbg !2587
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2588 dso_local void @rcu_sync_enter(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__percpu_down_write_trylock(ptr noundef %sem) #5 align 16 !dbg !2589 {
entry:
  %retval = alloca i1, align 1
  %sem.addr = alloca ptr, align 8
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !2591, metadata !DIExpression()), !dbg !2592
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !2593
  %block = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %0, i32 0, i32 4, !dbg !2595
  %call = call i32 @atomic_read(ptr noundef %block) #13, !dbg !2596
  %tobool = icmp ne i32 %call, 0, !dbg !2596
  br i1 %tobool, label %if.then, label %if.end, !dbg !2597

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !2598
  br label %return, !dbg !2598

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %sem.addr, align 8, !dbg !2599
  %block1 = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %1, i32 0, i32 4, !dbg !2600
  %call2 = call i32 @atomic_xchg(ptr noundef %block1, i32 noundef 1) #13, !dbg !2601
  %cmp = icmp eq i32 %call2, 0, !dbg !2602
  store i1 %cmp, ptr %retval, align 1, !dbg !2603
  br label %return, !dbg !2603

return:                                           ; preds = %if.end, %if.then
  %2 = load i1, ptr %retval, align 1, !dbg !2604
  ret i1 %2, !dbg !2604
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @prepare_to_rcuwait(ptr noundef %w) #5 align 16 !dbg !2605 {
entry:
  %w.addr = alloca ptr, align 8
  %_r_a_p__v = alloca i64, align 8
  store ptr %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !2607, metadata !DIExpression()), !dbg !2610
  br label %do.body, !dbg !2611

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r_a_p__v) #14, !dbg !2612
  call void @llvm.dbg.declare(metadata ptr %_r_a_p__v, metadata !2608, metadata !DIExpression()), !dbg !2612
  %call = call ptr @get_current() #13, !dbg !2612
  %0 = ptrtoint ptr %call to i64, !dbg !2612
  store i64 %0, ptr %_r_a_p__v, align 8, !dbg !2612
  br label %do.body1, !dbg !2613

do.body1:                                         ; preds = %do.body
  br label %do.body2, !dbg !2615

do.body2:                                         ; preds = %do.body1
  br label %do.cond, !dbg !2617

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !2617

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !2615

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !2619

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !2621

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !2621

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !2619, !srcloc !2623
  br label %do.body7, !dbg !2619

do.body7:                                         ; preds = %do.end6
  br label %do.body8, !dbg !2624

do.body8:                                         ; preds = %do.body7
  br label %do.cond9, !dbg !2626

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !2626

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !2624

do.body11:                                        ; preds = %do.end10
  %1 = load i64, ptr %_r_a_p__v, align 8, !dbg !2628
  %2 = inttoptr i64 %1 to ptr, !dbg !2628
  %3 = load ptr, ptr %w.addr, align 8, !dbg !2628
  %task = getelementptr inbounds %struct.rcuwait, ptr %3, i32 0, i32 0, !dbg !2628
  store volatile ptr %2, ptr %task, align 8, !dbg !2628
  br label %do.cond12, !dbg !2628

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !2628

do.end13:                                         ; preds = %do.cond12
  br label %do.cond14, !dbg !2624

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !2624

do.end15:                                         ; preds = %do.cond14
  br label %do.cond16, !dbg !2619

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !2619

do.end17:                                         ; preds = %do.cond16
  br label %do.cond18, !dbg !2615

do.cond18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !2615

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r_a_p__v) #14, !dbg !2611
  br label %do.end21, !dbg !2612

do.end21:                                         ; preds = %do.end19
  ret void, !dbg !2630
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #6 align 16 !dbg !2631 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #14, !dbg !2642
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !2636, metadata !DIExpression()), !dbg !2642
  br label %do.body, !dbg !2642

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !2643
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2638, metadata !DIExpression()), !dbg !2643
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2643
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !2643
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !2642
  br label %do.cond, !dbg !2643

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2643

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #14, !dbg !2644
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !2640, metadata !DIExpression()), !dbg !2644
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #15, !dbg !2644, !srcloc !2645
  store i64 %1, ptr %pfo_val__, align 8, !dbg !2644
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !2644
  %3 = inttoptr i64 %2 to ptr, !dbg !2644
  store ptr %3, ptr %tmp, align 8, !dbg !2644
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #14, !dbg !2642
  %4 = load ptr, ptr %tmp, align 8, !dbg !2644
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !2642
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !2642
  store ptr %5, ptr %tmp1, align 8, !dbg !2642
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #14, !dbg !2646
  %6 = load ptr, ptr %tmp1, align 8, !dbg !2642
  ret ptr %6, !dbg !2647
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !2648 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2656, metadata !DIExpression()), !dbg !2658
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2657, metadata !DIExpression()), !dbg !2659
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2660
  %1 = load i64, ptr %size.addr, align 8, !dbg !2661
  %conv = trunc i64 %1 to i32, !dbg !2661
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #13, !dbg !2662
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2663
  %3 = load i64, ptr %size.addr, align 8, !dbg !2663
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #13, !dbg !2663
  ret void, !dbg !2664
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @readers_active_check(ptr noundef %sem) #0 align 16 !dbg !2665 {
entry:
  %retval = alloca i1, align 1
  %sem.addr = alloca ptr, align 8
  %__sum = alloca i32, align 4
  %cpu = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp6 = alloca ptr, align 8
  %tmp8 = alloca i32, align 4
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !2667, metadata !DIExpression()), !dbg !2679
  call void @llvm.lifetime.start.p0(i64 4, ptr %__sum) #14, !dbg !2680
  call void @llvm.dbg.declare(metadata ptr %__sum, metadata !2668, metadata !DIExpression()), !dbg !2680
  store i32 0, ptr %__sum, align 4, !dbg !2680
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #14, !dbg !2680
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !2671, metadata !DIExpression()), !dbg !2680
  br label %do.body, !dbg !2680

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !2681

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2681

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cpu, align 4, !dbg !2683
  br label %for.cond, !dbg !2683

for.cond:                                         ; preds = %for.inc, %do.end
  %0 = load i32, ptr %cpu, align 4, !dbg !2684
  %conv = sext i32 %0 to i64, !dbg !2684
  %call = call i64 @find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef 64, i64 noundef %conv) #13, !dbg !2684
  %conv1 = trunc i64 %call to i32, !dbg !2684
  store i32 %conv1, ptr %cpu, align 4, !dbg !2684
  %1 = load i32, ptr %cpu, align 4, !dbg !2684
  %cmp = icmp ult i32 %1, 64, !dbg !2684
  br i1 %cmp, label %for.body, label %for.end, !dbg !2683

for.body:                                         ; preds = %for.cond
  br label %do.body3, !dbg !2685

do.body3:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !2686
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2672, metadata !DIExpression()), !dbg !2686
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2686
  %2 = load ptr, ptr %__vpp_verify, align 8, !dbg !2686
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !2685
  br label %do.cond4, !dbg !2686

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !2686

do.end5:                                          ; preds = %do.cond4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #14, !dbg !2687
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !2677, metadata !DIExpression()), !dbg !2687
  %3 = load ptr, ptr %sem.addr, align 8, !dbg !2687
  %read_count = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %3, i32 0, i32 1, !dbg !2687
  %4 = load ptr, ptr %read_count, align 8, !dbg !2687
  %5 = ptrtoint ptr %4 to i64, !dbg !2687
  store i64 %5, ptr %__ptr, align 8, !dbg !2687
  %6 = load i64, ptr %__ptr, align 8, !dbg !2687
  %7 = load i32, ptr %cpu, align 4, !dbg !2687
  %idxprom = sext i32 %7 to i64, !dbg !2687
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !2687
  %8 = load i64, ptr %arrayidx, align 8, !dbg !2687
  %add = add i64 %6, %8, !dbg !2687
  %9 = inttoptr i64 %add to ptr, !dbg !2687
  store ptr %9, ptr %tmp6, align 8, !dbg !2687
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #14, !dbg !2685
  %10 = load ptr, ptr %tmp6, align 8, !dbg !2687
  store ptr %10, ptr %tmp, align 8, !dbg !2686
  %11 = load ptr, ptr %tmp, align 8, !dbg !2685
  %12 = load i32, ptr %11, align 4, !dbg !2684
  %13 = load i32, ptr %__sum, align 4, !dbg !2684
  %add7 = add i32 %13, %12, !dbg !2684
  store i32 %add7, ptr %__sum, align 4, !dbg !2684
  br label %for.inc, !dbg !2684

for.inc:                                          ; preds = %do.end5
  %14 = load i32, ptr %cpu, align 4, !dbg !2684
  %inc = add i32 %14, 1, !dbg !2684
  store i32 %inc, ptr %cpu, align 4, !dbg !2684
  br label %for.cond, !dbg !2684, !llvm.loop !2688

for.end:                                          ; preds = %for.cond
  %15 = load i32, ptr %__sum, align 4, !dbg !2680
  store i32 %15, ptr %tmp8, align 4, !dbg !2683
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #14, !dbg !2689
  call void @llvm.lifetime.end.p0(i64 4, ptr %__sum) #14, !dbg !2689
  %16 = load i32, ptr %tmp8, align 4, !dbg !2680
  %cmp9 = icmp ne i32 %16, 0, !dbg !2690
  br i1 %cmp9, label %if.then, label %if.end, !dbg !2691

if.then:                                          ; preds = %for.end
  store i1 false, ptr %retval, align 1, !dbg !2692
  br label %return, !dbg !2692

if.end:                                           ; preds = %for.end
  br label %do.body11, !dbg !2693

do.body11:                                        ; preds = %if.end
  br label %do.body12, !dbg !2694

do.body12:                                        ; preds = %do.body11
  br label %do.end14, !dbg !2696

do.end14:                                         ; preds = %do.body12
  call void asm sideeffect "lock; addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !2694, !srcloc !2698
  br label %do.end16, !dbg !2694

do.end16:                                         ; preds = %do.end14
  store i1 true, ptr %retval, align 1, !dbg !2699
  br label %return, !dbg !2699

return:                                           ; preds = %do.end16, %if.then
  %17 = load i1, ptr %retval, align 1, !dbg !2700
  ret i1 %17, !dbg !2700
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @signal_pending_state(i32 noundef %state, ptr noundef %p) #5 align 16 !dbg !2701 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !2705, metadata !DIExpression()), !dbg !2707
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2706, metadata !DIExpression()), !dbg !2708
  %0 = load i32, ptr %state.addr, align 4, !dbg !2709
  %and = and i32 %0, 257, !dbg !2711
  %tobool = icmp ne i32 %and, 0, !dbg !2711
  br i1 %tobool, label %if.end, label %if.then, !dbg !2712

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2713
  br label %return, !dbg !2713

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8, !dbg !2714
  %call = call i32 @signal_pending(ptr noundef %1) #13, !dbg !2716
  %tobool1 = icmp ne i32 %call, 0, !dbg !2716
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !2717

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !2718
  br label %return, !dbg !2718

if.end3:                                          ; preds = %if.end
  %2 = load i32, ptr %state.addr, align 4, !dbg !2719
  %and4 = and i32 %2, 1, !dbg !2720
  %tobool5 = icmp ne i32 %and4, 0, !dbg !2720
  br i1 %tobool5, label %lor.end, label %lor.rhs, !dbg !2721

lor.rhs:                                          ; preds = %if.end3
  %3 = load ptr, ptr %p.addr, align 8, !dbg !2722
  %call6 = call i32 @__fatal_signal_pending(ptr noundef %3) #13, !dbg !2723
  %tobool7 = icmp ne i32 %call6, 0, !dbg !2721
  br label %lor.end, !dbg !2721

lor.end:                                          ; preds = %lor.rhs, %if.end3
  %4 = phi i1 [ true, %if.end3 ], [ %tobool7, %lor.rhs ]
  %lor.ext = zext i1 %4 to i32, !dbg !2721
  store i32 %lor.ext, ptr %retval, align 4, !dbg !2724
  br label %return, !dbg !2724

return:                                           ; preds = %lor.end, %if.then2, %if.then
  %5 = load i32, ptr %retval, align 4, !dbg !2725
  ret i32 %5, !dbg !2725
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2726 dso_local void @schedule() #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2727 dso_local void @finish_rcuwait(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @percpu_up_write(ptr noundef %sem) #0 align 16 !dbg !2728 {
entry:
  %sem.addr = alloca ptr, align 8
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !2730, metadata !DIExpression()), !dbg !2731
  br label %do.body, !dbg !2732

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2733

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !2735
  %block = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %0, i32 0, i32 4, !dbg !2736
  call void @atomic_set_release(ptr noundef %block, i32 noundef 0) #13, !dbg !2737
  %1 = load ptr, ptr %sem.addr, align 8, !dbg !2738
  %waiters = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %1, i32 0, i32 3, !dbg !2739
  %2 = load ptr, ptr %sem.addr, align 8, !dbg !2740
  %call = call i32 @__wake_up(ptr noundef %waiters, i32 noundef 3, i32 noundef 1, ptr noundef %2) #13, !dbg !2741
  %3 = load ptr, ptr %sem.addr, align 8, !dbg !2742
  %rss = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %3, i32 0, i32 0, !dbg !2743
  call void @rcu_sync_exit(ptr noundef %rss) #13, !dbg !2744
  ret void, !dbg !2745
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set_release(ptr noundef %v, i32 noundef %i) #6 align 16 !dbg !2746 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2748, metadata !DIExpression()), !dbg !2750
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2749, metadata !DIExpression()), !dbg !2751
  br label %do.body, !dbg !2752

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2753

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2755
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #13, !dbg !2756
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2757
  %2 = load i32, ptr %i.addr, align 4, !dbg !2758
  call void @raw_atomic_set_release(ptr noundef %1, i32 noundef %2) #13, !dbg !2759
  ret void, !dbg !2760
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2761 dso_local i32 @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2764 dso_local void @rcu_sync_exit(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !2765 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2767, metadata !DIExpression()), !dbg !2769
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2768, metadata !DIExpression()), !dbg !2770
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2771
  %1 = load i64, ptr %size.addr, align 8, !dbg !2772
  %conv = trunc i64 %1 to i32, !dbg !2772
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #13, !dbg !2773
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2774
  %3 = load i64, ptr %size.addr, align 8, !dbg !2774
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #13, !dbg !2774
  ret void, !dbg !2775
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #6 align 16 !dbg !2776 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2779, metadata !DIExpression()), !dbg !2781
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2780, metadata !DIExpression()), !dbg !2782
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2783
  %1 = load i32, ptr %i.addr, align 4, !dbg !2784
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #13, !dbg !2785
  ret void, !dbg !2786
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !2787 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2792, metadata !DIExpression()), !dbg !2794
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2793, metadata !DIExpression()), !dbg !2795
  ret i1 true, !dbg !2796
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !2797 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2802, metadata !DIExpression()), !dbg !2805
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2803, metadata !DIExpression()), !dbg !2806
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2804, metadata !DIExpression()), !dbg !2807
  ret void, !dbg !2808
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #6 align 16 !dbg !2809 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2812, metadata !DIExpression()), !dbg !2814
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2813, metadata !DIExpression()), !dbg !2815
  br label %do.body, !dbg !2816

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !2817
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2817
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !2817
  store volatile i32 %0, ptr %counter, align 4, !dbg !2817
  br label %do.end, !dbg !2817

do.end:                                           ; preds = %do.body
  ret void, !dbg !2819
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read_acquire(ptr noundef %v) #6 align 16 !dbg !2820 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2822, metadata !DIExpression()), !dbg !2823
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2824
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #13, !dbg !2825
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2826
  %call = call i32 @raw_atomic_read_acquire(ptr noundef %1) #13, !dbg !2827
  ret i32 %call, !dbg !2828
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2829 dso_local i32 @rcuwait_wake_up(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !2832 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2834, metadata !DIExpression()), !dbg !2836
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2835, metadata !DIExpression()), !dbg !2837
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2838
  %1 = load i64, ptr %size.addr, align 8, !dbg !2839
  %conv = trunc i64 %1 to i32, !dbg !2839
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #13, !dbg !2840
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2841
  %3 = load i64, ptr %size.addr, align 8, !dbg !2841
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #13, !dbg !2841
  ret void, !dbg !2842
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read_acquire(ptr noundef %v) #6 align 16 !dbg !2843 {
entry:
  %v.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %___p1 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2845, metadata !DIExpression()), !dbg !2851
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !2852
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2846, metadata !DIExpression()), !dbg !2853
  call void @llvm.lifetime.start.p0(i64 4, ptr %___p1) #14, !dbg !2854
  call void @llvm.dbg.declare(metadata ptr %___p1, metadata !2847, metadata !DIExpression()), !dbg !2854
  br label %do.body, !dbg !2855

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !2857

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2857

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2855
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !2855
  %1 = load volatile i32, ptr %counter, align 4, !dbg !2855
  store i32 %1, ptr %tmp, align 4, !dbg !2857
  %2 = load i32, ptr %tmp, align 4, !dbg !2855
  store i32 %2, ptr %___p1, align 4, !dbg !2854
  br label %do.body1, !dbg !2854

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !2859

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !2859

do.end3:                                          ; preds = %do.cond2
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !2854, !srcloc !2861
  %3 = load i32, ptr %___p1, align 4, !dbg !2854
  store i32 %3, ptr %tmp4, align 4, !dbg !2854
  call void @llvm.lifetime.end.p0(i64 4, ptr %___p1) #14, !dbg !2862
  %4 = load i32, ptr %tmp4, align 4, !dbg !2854
  store i32 %4, ptr %ret, align 4, !dbg !2863
  %5 = load i32, ptr %ret, align 4, !dbg !2864
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !2865
  ret i32 %5, !dbg !2866
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !2867 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2869, metadata !DIExpression()), !dbg !2871
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2870, metadata !DIExpression()), !dbg !2872
  ret i1 true, !dbg !2873
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #6 align 16 !dbg !2874 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !2897, metadata !DIExpression()), !dbg !2898
  %0 = load ptr, ptr %key.addr, align 8, !dbg !2899
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #13, !dbg !2900
  ret i1 %call, !dbg !2901
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpu_online(i32 noundef %cpu) #5 align 16 !dbg !2902 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2906, metadata !DIExpression()), !dbg !2907
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !2908
  %call = call zeroext i1 @cpumask_test_cpu(i32 noundef %0, ptr noundef @__cpu_online_mask) #13, !dbg !2909
  ret i1 %call, !dbg !2910
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_contention_begin(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #6 align 16 !dbg !2911 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !2916, metadata !DIExpression()), !dbg !2919
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !2917, metadata !DIExpression()), !dbg !2920
  %0 = load ptr, ptr %key.addr, align 8, !dbg !2921
  %1 = load i8, ptr %branch.addr, align 1, !dbg !2922, !range !2145, !noundef !438
  %tobool = trunc i8 %1 to i1, !dbg !2922
  %conv = zext i1 %tobool to i32, !dbg !2922
  %or = or i32 2, %conv, !dbg !2923
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #14
          to label %asm.fallthrough [label %l_yes], !dbg !2924, !srcloc !2925

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !2926
  br label %return, !dbg !2926

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !2918), !dbg !2927
  store i1 true, ptr %retval, align 1, !dbg !2928
  br label %return, !dbg !2928

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !2929
  ret i1 %2, !dbg !2929
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_test_cpu(i32 noundef %cpu, ptr noundef %cpumask) #6 align 16 !dbg !2930 {
entry:
  %cpu.addr = alloca i32, align 4
  %cpumask.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2934, metadata !DIExpression()), !dbg !2936
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !2935, metadata !DIExpression()), !dbg !2937
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !2938
  %call = call i32 @cpumask_check(i32 noundef %0) #13, !dbg !2938
  %conv = zext i32 %call to i64, !dbg !2938
  %1 = load ptr, ptr %cpumask.addr, align 8, !dbg !2938
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !2938
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !2938
  %call1 = call zeroext i1 @_test_bit(i64 noundef %conv, ptr noundef %arraydecay) #13, !dbg !2938
  ret i1 %call1, !dbg !2939
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !2940 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2948, metadata !DIExpression()), !dbg !2950
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2949, metadata !DIExpression()), !dbg !2951
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2952
  %1 = load i64, ptr %nr.addr, align 8, !dbg !2953
  %div = udiv i64 %1, 64, !dbg !2953
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !2954
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #13, !dbg !2955
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2956
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !2957
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !2958
  ret i1 %call, !dbg !2959
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_check(i32 noundef %cpu) #6 align 16 !dbg !2960 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2964, metadata !DIExpression()), !dbg !2965
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !2966
  call void @cpu_max_bits_warn(i32 noundef %0, i32 noundef 64) #13, !dbg !2967
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !2968
  ret i32 %1, !dbg !2969
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !2970 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2973, metadata !DIExpression()), !dbg !2975
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2974, metadata !DIExpression()), !dbg !2976
  %0 = load i64, ptr %nr.addr, align 8, !dbg !2977
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2978
  br i1 %1, label %cond.true, label %cond.false, !dbg !2978

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2979
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !2980
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !2981
  %conv = zext i1 %call to i32, !dbg !2981
  br label %cond.end, !dbg !2978

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !2982
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !2983
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #13, !dbg !2984
  %conv2 = zext i1 %call1 to i32, !dbg !2984
  br label %cond.end, !dbg !2978

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !2978
  %tobool = icmp ne i32 %cond, 0, !dbg !2978
  ret i1 %tobool, !dbg !2985
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !2986 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2990, metadata !DIExpression()), !dbg !2992
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2991, metadata !DIExpression()), !dbg !2993
  %0 = load i64, ptr %nr.addr, align 8, !dbg !2994
  %and = and i64 %0, 63, !dbg !2995
  %shl = shl i64 1, %and, !dbg !2996
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !2997
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2998
  %shr = ashr i64 %2, 6, !dbg !2999
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !2997
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !2997
  %and1 = and i64 %shl, %3, !dbg !3000
  %cmp = icmp ne i64 %and1, 0, !dbg !3001
  ret i1 %cmp, !dbg !3002
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !3003 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3005, metadata !DIExpression()), !dbg !3008
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3006, metadata !DIExpression()), !dbg !3009
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #14, !dbg !3010
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !3007, metadata !DIExpression()), !dbg !3011
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3012
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3013
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #14, !dbg !3014, !srcloc !3015
  %3 = icmp ult i8 %2, 2, !dbg !3014
  call void @llvm.assume(i1 %3), !dbg !3014
  store i8 %2, ptr %oldbit, align 1, !dbg !3014
  %4 = load i8, ptr %oldbit, align 1, !dbg !3016, !range !2145, !noundef !438
  %tobool = trunc i8 %4 to i1, !dbg !3016
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #14, !dbg !3017
  ret i1 %tobool, !dbg !3018
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_max_bits_warn(i32 noundef %cpu, i32 noundef %bits) #6 align 16 !dbg !3019 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !3023, metadata !DIExpression()), !dbg !3025
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !3024, metadata !DIExpression()), !dbg !3026
  ret void, !dbg !3027
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @percpu_rwsem_wake_function(ptr noundef %wq_entry, i32 noundef %mode, i32 noundef %wake_flags, ptr noundef %key) #0 align 16 !dbg !3028 {
entry:
  %retval = alloca i32, align 4
  %wq_entry.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  %wake_flags.addr = alloca i32, align 4
  %key.addr = alloca ptr, align 8
  %reader = alloca i8, align 1
  %sem = alloca ptr, align 8
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %wq_entry, ptr %wq_entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq_entry.addr, metadata !3030, metadata !DIExpression()), !dbg !3037
  store i32 %mode, ptr %mode.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !3031, metadata !DIExpression()), !dbg !3038
  store i32 %wake_flags, ptr %wake_flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %wake_flags.addr, metadata !3032, metadata !DIExpression()), !dbg !3039
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !3033, metadata !DIExpression()), !dbg !3040
  call void @llvm.lifetime.start.p0(i64 1, ptr %reader) #14, !dbg !3041
  call void @llvm.dbg.declare(metadata ptr %reader, metadata !3034, metadata !DIExpression()), !dbg !3042
  %0 = load ptr, ptr %wq_entry.addr, align 8, !dbg !3043
  %flags = getelementptr inbounds %struct.wait_queue_entry, ptr %0, i32 0, i32 0, !dbg !3044
  %1 = load i32, ptr %flags, align 8, !dbg !3044
  %and = and i32 %1, 8, !dbg !3045
  %tobool = icmp ne i32 %and, 0, !dbg !3043
  %frombool = zext i1 %tobool to i8, !dbg !3042
  store i8 %frombool, ptr %reader, align 1, !dbg !3042
  call void @llvm.lifetime.start.p0(i64 8, ptr %sem) #14, !dbg !3046
  call void @llvm.dbg.declare(metadata ptr %sem, metadata !3035, metadata !DIExpression()), !dbg !3047
  %2 = load ptr, ptr %key.addr, align 8, !dbg !3048
  store ptr %2, ptr %sem, align 8, !dbg !3047
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #14, !dbg !3049
  call void @llvm.dbg.declare(metadata ptr %p, metadata !3036, metadata !DIExpression()), !dbg !3050
  %3 = load ptr, ptr %sem, align 8, !dbg !3051
  %4 = load i8, ptr %reader, align 1, !dbg !3053, !range !2145, !noundef !438
  %tobool1 = trunc i8 %4 to i1, !dbg !3053
  %call = call zeroext i1 @__percpu_rwsem_trylock(ptr noundef %3, i1 noundef zeroext %tobool1) #13, !dbg !3054
  br i1 %call, label %if.end, label %if.then, !dbg !3055

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !3056
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3056

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %wq_entry.addr, align 8, !dbg !3057
  %private = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 1, !dbg !3058
  %6 = load ptr, ptr %private, align 8, !dbg !3058
  %call2 = call ptr @get_task_struct(ptr noundef %6) #13, !dbg !3059
  store ptr %call2, ptr %p, align 8, !dbg !3060
  %7 = load ptr, ptr %wq_entry.addr, align 8, !dbg !3061
  %entry3 = getelementptr inbounds %struct.wait_queue_entry, ptr %7, i32 0, i32 3, !dbg !3062
  call void @list_del_init(ptr noundef %entry3) #13, !dbg !3063
  br label %do.body, !dbg !3064

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !3065

do.body4:                                         ; preds = %do.body
  br label %do.cond, !dbg !3067

do.cond:                                          ; preds = %do.body4
  br label %do.end, !dbg !3067

do.end:                                           ; preds = %do.cond
  br label %do.body5, !dbg !3065

do.body5:                                         ; preds = %do.end
  br label %do.body6, !dbg !3069

do.body6:                                         ; preds = %do.body5
  br label %do.cond7, !dbg !3071

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !3071

do.end8:                                          ; preds = %do.cond7
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !3069, !srcloc !3073
  br label %do.body9, !dbg !3069

do.body9:                                         ; preds = %do.end8
  br label %do.body10, !dbg !3074

do.body10:                                        ; preds = %do.body9
  br label %do.cond11, !dbg !3076

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !3076

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !3074

do.body13:                                        ; preds = %do.end12
  %8 = load ptr, ptr %wq_entry.addr, align 8, !dbg !3078
  %private14 = getelementptr inbounds %struct.wait_queue_entry, ptr %8, i32 0, i32 1, !dbg !3078
  store volatile ptr null, ptr %private14, align 8, !dbg !3078
  br label %do.cond15, !dbg !3078

do.cond15:                                        ; preds = %do.body13
  br label %do.end16, !dbg !3078

do.end16:                                         ; preds = %do.cond15
  br label %do.cond17, !dbg !3074

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !3074

do.end18:                                         ; preds = %do.cond17
  br label %do.cond19, !dbg !3069

do.cond19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !3069

do.end20:                                         ; preds = %do.cond19
  br label %do.cond21, !dbg !3065

do.cond21:                                        ; preds = %do.end20
  br label %do.end22, !dbg !3065

do.end22:                                         ; preds = %do.cond21
  %9 = load ptr, ptr %p, align 8, !dbg !3080
  %call23 = call i32 @wake_up_process(ptr noundef %9) #13, !dbg !3081
  %10 = load ptr, ptr %p, align 8, !dbg !3082
  call void @put_task_struct(ptr noundef %10) #13, !dbg !3083
  %11 = load i8, ptr %reader, align 1, !dbg !3084, !range !2145, !noundef !438
  %tobool24 = trunc i8 %11 to i1, !dbg !3084
  %lnot = xor i1 %tobool24, true, !dbg !3085
  %lnot.ext = zext i1 %lnot to i32, !dbg !3085
  store i32 %lnot.ext, ptr %retval, align 4, !dbg !3086
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3086

cleanup:                                          ; preds = %do.end22, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #14, !dbg !3087
  call void @llvm.lifetime.end.p0(i64 8, ptr %sem) #14, !dbg !3087
  call void @llvm.lifetime.end.p0(i64 1, ptr %reader) #14, !dbg !3087
  %12 = load i32, ptr %retval, align 4, !dbg !3087
  ret i32 %12, !dbg !3087
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock_irq(ptr noundef %lock) #6 align 16 !dbg !3088 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !3094, metadata !DIExpression()), !dbg !3095
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !3096
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !3096
  call void @_raw_spin_lock_irq(ptr noundef %1) #13, !dbg !3096
  ret void, !dbg !3097
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__percpu_rwsem_trylock(ptr noundef %sem, i1 noundef zeroext %reader) #0 align 16 !dbg !1991 {
entry:
  %retval = alloca i1, align 1
  %sem.addr = alloca ptr, align 8
  %reader.addr = alloca i8, align 1
  %ret = alloca i8, align 1
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !1993, metadata !DIExpression()), !dbg !3098
  %frombool = zext i1 %reader to i8
  store i8 %frombool, ptr %reader.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %reader.addr, metadata !1994, metadata !DIExpression()), !dbg !3099
  %0 = load i8, ptr %reader.addr, align 1, !dbg !3100, !range !2145, !noundef !438
  %tobool = trunc i8 %0 to i1, !dbg !3100
  br i1 %tobool, label %if.then, label %if.end13, !dbg !3101

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr %ret) #14, !dbg !3102
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1995, metadata !DIExpression()), !dbg !3103
  br label %do.body, !dbg !3104

do.body:                                          ; preds = %if.then
  call void @__preempt_count_add(i32 noundef 1) #13, !dbg !3105
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !3105, !srcloc !3107
  br label %do.cond, !dbg !3105

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3105

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %sem.addr, align 8, !dbg !3108
  %call = call zeroext i1 @__percpu_down_read_trylock(ptr noundef %1) #13, !dbg !3109
  %frombool1 = zext i1 %call to i8, !dbg !3110
  store i8 %frombool1, ptr %ret, align 1, !dbg !3110
  br label %do.body2, !dbg !3111

do.body2:                                         ; preds = %do.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !3112, !srcloc !3114
  %call3 = call zeroext i1 @__preempt_count_dec_and_test() #13, !dbg !3115
  %lnot = xor i1 %call3, true, !dbg !3115
  %lnot4 = xor i1 %lnot, true, !dbg !3115
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !3115
  %conv = sext i32 %lnot.ext to i64, !dbg !3115
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3115
  %tobool5 = icmp ne i64 %expval, 0, !dbg !3115
  br i1 %tobool5, label %if.then6, label %if.end, !dbg !3112

if.then6:                                         ; preds = %do.body2
  br label %do.body7, !dbg !3115

do.body7:                                         ; preds = %if.then6
  %2 = call i64 @llvm.read_register.i64(metadata !2037), !dbg !3117
  %3 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %2) #14, !dbg !3117, !srcloc !3119
  call void @llvm.write_register.i64(metadata !2037, i64 %3), !dbg !3117
  br label %do.cond8, !dbg !3117

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !3117

do.end9:                                          ; preds = %do.cond8
  br label %if.end, !dbg !3117

if.end:                                           ; preds = %do.end9, %do.body2
  br label %do.cond10, !dbg !3112

do.cond10:                                        ; preds = %if.end
  br label %do.end11, !dbg !3112

do.end11:                                         ; preds = %do.cond10
  %4 = load i8, ptr %ret, align 1, !dbg !3120, !range !2145, !noundef !438
  %tobool12 = trunc i8 %4 to i1, !dbg !3120
  store i1 %tobool12, ptr %retval, align 1, !dbg !3121
  call void @llvm.lifetime.end.p0(i64 1, ptr %ret) #14, !dbg !3122
  br label %return

if.end13:                                         ; preds = %entry
  %5 = load ptr, ptr %sem.addr, align 8, !dbg !3123
  %call14 = call zeroext i1 @__percpu_down_write_trylock(ptr noundef %5) #13, !dbg !3124
  store i1 %call14, ptr %retval, align 1, !dbg !3125
  br label %return, !dbg !3125

return:                                           ; preds = %if.end13, %do.end11
  %6 = load i1, ptr %retval, align 1, !dbg !3126
  ret i1 %6, !dbg !3126
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__add_wait_queue_entry_tail(ptr noundef %wq_head, ptr noundef %wq_entry) #5 align 16 !dbg !3127 {
entry:
  %wq_head.addr = alloca ptr, align 8
  %wq_entry.addr = alloca ptr, align 8
  store ptr %wq_head, ptr %wq_head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq_head.addr, metadata !3131, metadata !DIExpression()), !dbg !3133
  store ptr %wq_entry, ptr %wq_entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq_entry.addr, metadata !3132, metadata !DIExpression()), !dbg !3134
  %0 = load ptr, ptr %wq_entry.addr, align 8, !dbg !3135
  %entry1 = getelementptr inbounds %struct.wait_queue_entry, ptr %0, i32 0, i32 3, !dbg !3136
  %1 = load ptr, ptr %wq_head.addr, align 8, !dbg !3137
  %head = getelementptr inbounds %struct.wait_queue_head, ptr %1, i32 0, i32 1, !dbg !3138
  call void @list_add_tail(ptr noundef %entry1, ptr noundef %head) #13, !dbg !3139
  ret void, !dbg !3140
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irq(ptr noundef %lock) #6 align 16 !dbg !3141 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !3143, metadata !DIExpression()), !dbg !3144
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !3145
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !3145
  call void @_raw_spin_unlock_irq(ptr noundef %1) #13, !dbg !3145
  ret void, !dbg !3146
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_task_struct(ptr noundef %t) #5 align 16 !dbg !3147 {
entry:
  %t.addr = alloca ptr, align 8
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !3151, metadata !DIExpression()), !dbg !3152
  %0 = load ptr, ptr %t.addr, align 8, !dbg !3153
  %usage = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 3, !dbg !3154
  call void @refcount_inc(ptr noundef %usage) #13, !dbg !3155
  %1 = load ptr, ptr %t.addr, align 8, !dbg !3156
  ret ptr %1, !dbg !3157
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del_init(ptr noundef %entry1) #5 align 16 !dbg !3158 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !3163, metadata !DIExpression()), !dbg !3164
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !3165
  call void @__list_del_entry(ptr noundef %0) #13, !dbg !3166
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !3167
  call void @INIT_LIST_HEAD(ptr noundef %1) #13, !dbg !3168
  ret void, !dbg !3169
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3170 dso_local i32 @wake_up_process(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @put_task_struct(ptr noundef %t) #5 align 16 !dbg !1982 {
entry:
  %t.addr = alloca ptr, align 8
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !1987, metadata !DIExpression()), !dbg !3173
  %0 = load ptr, ptr %t.addr, align 8, !dbg !3174
  %usage = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 3, !dbg !3176
  %call = call zeroext i1 @refcount_dec_and_test(ptr noundef %usage) #13, !dbg !3177
  br i1 %call, label %if.end, label %if.then, !dbg !3178

if.then:                                          ; preds = %entry
  br label %return, !dbg !3179

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !3180

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !3183

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr %t.addr, align 8, !dbg !3185
  call void @__put_task_struct(ptr noundef %1) #13, !dbg !3186
  br label %do.body1, !dbg !3187

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !3188

do.end2:                                          ; preds = %do.body1
  br label %return, !dbg !3190

return:                                           ; preds = %do.end2, %if.then
  ret void, !dbg !3191
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_inc(ptr noundef %r) #5 align 16 !dbg !3192 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !3197, metadata !DIExpression()), !dbg !3198
  %0 = load ptr, ptr %r.addr, align 8, !dbg !3199
  call void @__refcount_inc(ptr noundef %0, ptr noundef null) #13, !dbg !3200
  ret void, !dbg !3201
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_inc(ptr noundef %r, ptr noundef %oldp) #5 align 16 !dbg !3202 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !3206, metadata !DIExpression()), !dbg !3208
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !3207, metadata !DIExpression()), !dbg !3209
  %0 = load ptr, ptr %r.addr, align 8, !dbg !3210
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !3211
  call void @__refcount_add(i32 noundef 1, ptr noundef %0, ptr noundef %1) #13, !dbg !3212
  ret void, !dbg !3213
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_add(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #5 align 16 !dbg !3214 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3218, metadata !DIExpression()), !dbg !3222
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !3219, metadata !DIExpression()), !dbg !3223
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !3220, metadata !DIExpression()), !dbg !3224
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #14, !dbg !3225
  call void @llvm.dbg.declare(metadata ptr %old, metadata !3221, metadata !DIExpression()), !dbg !3226
  %0 = load i32, ptr %i.addr, align 4, !dbg !3227
  %1 = load ptr, ptr %r.addr, align 8, !dbg !3228
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !3229
  %call = call i32 @atomic_fetch_add_relaxed(i32 noundef %0, ptr noundef %refs) #13, !dbg !3230
  store i32 %call, ptr %old, align 4, !dbg !3226
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !3231
  %tobool = icmp ne ptr %2, null, !dbg !3231
  br i1 %tobool, label %if.then, label %if.end, !dbg !3233

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !3234
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !3235
  store i32 %3, ptr %4, align 4, !dbg !3236
  br label %if.end, !dbg !3237

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !3238
  %tobool1 = icmp ne i32 %5, 0, !dbg !3238
  %lnot = xor i1 %tobool1, true, !dbg !3238
  %lnot2 = xor i1 %lnot, true, !dbg !3238
  %lnot3 = xor i1 %lnot2, true, !dbg !3238
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !3238
  %conv = sext i32 %lnot.ext to i64, !dbg !3238
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3238
  %tobool4 = icmp ne i64 %expval, 0, !dbg !3238
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !3240

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %r.addr, align 8, !dbg !3241
  call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 2) #13, !dbg !3242
  br label %if.end18, !dbg !3242

if.else:                                          ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !3243
  %cmp = icmp slt i32 %7, 0, !dbg !3243
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !3243

lor.rhs:                                          ; preds = %if.else
  %8 = load i32, ptr %old, align 4, !dbg !3243
  %9 = load i32, ptr %i.addr, align 4, !dbg !3243
  %add = add i32 %8, %9, !dbg !3243
  %cmp7 = icmp slt i32 %add, 0, !dbg !3243
  br label %lor.end, !dbg !3243

lor.end:                                          ; preds = %lor.rhs, %if.else
  %10 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %10, true, !dbg !3243
  %lnot11 = xor i1 %lnot9, true, !dbg !3243
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !3243
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !3243
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !3243
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !3243
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !3245

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !3246
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 1) #13, !dbg !3247
  br label %if.end17, !dbg !3247

if.end17:                                         ; preds = %if.then16, %lor.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #14, !dbg !3248
  ret void, !dbg !3248
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !3249 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3253, metadata !DIExpression()), !dbg !3255
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3254, metadata !DIExpression()), !dbg !3256
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3257
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #13, !dbg !3258
  %1 = load i32, ptr %i.addr, align 4, !dbg !3259
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3260
  %call = call i32 @raw_atomic_fetch_add_relaxed(i32 noundef %1, ptr noundef %2) #13, !dbg !3261
  ret i32 %call, !dbg !3262
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3263 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !3266 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3268, metadata !DIExpression()), !dbg !3270
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3269, metadata !DIExpression()), !dbg !3271
  %0 = load i32, ptr %i.addr, align 4, !dbg !3272
  %1 = load ptr, ptr %v.addr, align 8, !dbg !3273
  %call = call i32 @arch_atomic_fetch_add(i32 noundef %0, ptr noundef %1) #13, !dbg !3274
  ret i32 %call, !dbg !3275
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_add(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !3276 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3278, metadata !DIExpression()), !dbg !3282
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3279, metadata !DIExpression()), !dbg !3283
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #14, !dbg !3284
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !3280, metadata !DIExpression()), !dbg !3284
  %0 = load i32, ptr %i.addr, align 4, !dbg !3284
  store i32 %0, ptr %__ret, align 4, !dbg !3284
  %1 = load i32, ptr %__ret, align 4, !dbg !3284
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3284
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !3284
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #14, !dbg !3284, !srcloc !3285
  store i32 %3, ptr %__ret, align 4, !dbg !3284
  %4 = load i32, ptr %__ret, align 4, !dbg !3284
  store i32 %4, ptr %tmp, align 4, !dbg !3284
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #14, !dbg !3286
  %5 = load i32, ptr %tmp, align 4, !dbg !3284
  ret i32 %5, !dbg !3287
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #5 align 16 !dbg !3288 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !3290, metadata !DIExpression()), !dbg !3291
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !3292
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #13, !dbg !3294
  br i1 %call, label %if.end, label %if.then, !dbg !3295

if.then:                                          ; preds = %entry
  br label %return, !dbg !3296

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !3297
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !3298
  %2 = load ptr, ptr %prev, align 8, !dbg !3298
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !3299
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !3300
  %4 = load ptr, ptr %next, align 8, !dbg !3300
  call void @__list_del(ptr noundef %2, ptr noundef %4) #13, !dbg !3301
  br label %return, !dbg !3302

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !3302
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #5 align 16 !dbg !3303 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !3305, metadata !DIExpression()), !dbg !3306
  br label %do.body, !dbg !3307

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !3308

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !3310

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !3308

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !3312
  %1 = load ptr, ptr %list.addr, align 8, !dbg !3312
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !3312
  store volatile ptr %0, ptr %next, align 8, !dbg !3312
  br label %do.end3, !dbg !3312

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !3308

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !3314

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !3315

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !3317

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !3315

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !3319
  %3 = load ptr, ptr %list.addr, align 8, !dbg !3319
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !3319
  store volatile ptr %2, ptr %prev, align 8, !dbg !3319
  br label %do.end9, !dbg !3319

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !3315

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !3321
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #5 align 16 !dbg !3322 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !3326, metadata !DIExpression()), !dbg !3327
  ret i1 true, !dbg !3328
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !3329 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !3333, metadata !DIExpression()), !dbg !3335
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !3334, metadata !DIExpression()), !dbg !3336
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !3337
  %1 = load ptr, ptr %next.addr, align 8, !dbg !3338
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !3339
  store ptr %0, ptr %prev1, align 8, !dbg !3340
  br label %do.body, !dbg !3341

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !3342

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !3344

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !3342

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !3346
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !3346
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !3346
  store volatile ptr %2, ptr %next4, align 8, !dbg !3346
  br label %do.end5, !dbg !3346

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !3342

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !3348
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_dec_and_test(ptr noundef %r) #5 align 16 !dbg !3349 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !3353, metadata !DIExpression()), !dbg !3354
  %0 = load ptr, ptr %r.addr, align 8, !dbg !3355
  %call = call zeroext i1 @__refcount_dec_and_test(ptr noundef %0, ptr noundef null) #13, !dbg !3356
  ret i1 %call, !dbg !3357
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3358 dso_local void @__put_task_struct(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_dec_and_test(ptr noundef %r, ptr noundef %oldp) #5 align 16 !dbg !3359 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !3363, metadata !DIExpression()), !dbg !3365
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !3364, metadata !DIExpression()), !dbg !3366
  %0 = load ptr, ptr %r.addr, align 8, !dbg !3367
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !3368
  %call = call zeroext i1 @__refcount_sub_and_test(i32 noundef 1, ptr noundef %0, ptr noundef %1) #13, !dbg !3369
  ret i1 %call, !dbg !3370
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #5 align 16 !dbg !3371 {
entry:
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3375, metadata !DIExpression()), !dbg !3379
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !3376, metadata !DIExpression()), !dbg !3380
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !3377, metadata !DIExpression()), !dbg !3381
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #14, !dbg !3382
  call void @llvm.dbg.declare(metadata ptr %old, metadata !3378, metadata !DIExpression()), !dbg !3383
  %0 = load i32, ptr %i.addr, align 4, !dbg !3384
  %1 = load ptr, ptr %r.addr, align 8, !dbg !3385
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !3386
  %call = call i32 @atomic_fetch_sub_release(i32 noundef %0, ptr noundef %refs) #13, !dbg !3387
  store i32 %call, ptr %old, align 4, !dbg !3383
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !3388
  %tobool = icmp ne ptr %2, null, !dbg !3388
  br i1 %tobool, label %if.then, label %if.end, !dbg !3390

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !3391
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !3392
  store i32 %3, ptr %4, align 4, !dbg !3393
  br label %if.end, !dbg !3394

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !3395
  %6 = load i32, ptr %i.addr, align 4, !dbg !3397
  %cmp = icmp eq i32 %5, %6, !dbg !3398
  br i1 %cmp, label %if.then1, label %if.end11, !dbg !3399

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !3400

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !3402

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !3404

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !3404

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !3402

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !3406

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !3408

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !3408

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !3406, !srcloc !3410
  br label %do.cond7, !dbg !3406

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !3406

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !3402

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !3402

do.end10:                                         ; preds = %do.cond9
  store i1 true, ptr %retval, align 1, !dbg !3411
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3411

if.end11:                                         ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !3412
  %cmp12 = icmp slt i32 %7, 0, !dbg !3412
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !3412

lor.rhs:                                          ; preds = %if.end11
  %8 = load i32, ptr %old, align 4, !dbg !3412
  %9 = load i32, ptr %i.addr, align 4, !dbg !3412
  %sub = sub i32 %8, %9, !dbg !3412
  %cmp13 = icmp slt i32 %sub, 0, !dbg !3412
  br label %lor.end, !dbg !3412

lor.end:                                          ; preds = %lor.rhs, %if.end11
  %10 = phi i1 [ true, %if.end11 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !3412
  %lnot14 = xor i1 %lnot, true, !dbg !3412
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !3412
  %conv = sext i32 %lnot.ext to i64, !dbg !3412
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3412
  %tobool15 = icmp ne i64 %expval, 0, !dbg !3412
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !3414

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !3415
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #13, !dbg !3416
  br label %if.end17, !dbg !3416

if.end17:                                         ; preds = %if.then16, %lor.end
  store i1 false, ptr %retval, align 1, !dbg !3417
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3417

cleanup:                                          ; preds = %if.end17, %do.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #14, !dbg !3418
  %12 = load i1, ptr %retval, align 1, !dbg !3418
  ret i1 %12, !dbg !3418
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !3419 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3421, metadata !DIExpression()), !dbg !3423
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3422, metadata !DIExpression()), !dbg !3424
  br label %do.body, !dbg !3425

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3426

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3428
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #13, !dbg !3429
  %1 = load i32, ptr %i.addr, align 4, !dbg !3430
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3431
  %call = call i32 @raw_atomic_fetch_sub_release(i32 noundef %1, ptr noundef %2) #13, !dbg !3432
  ret i32 %call, !dbg !3433
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !3434 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3436, metadata !DIExpression()), !dbg !3438
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3437, metadata !DIExpression()), !dbg !3439
  %0 = load i32, ptr %i.addr, align 4, !dbg !3440
  %1 = load ptr, ptr %v.addr, align 8, !dbg !3441
  %call = call i32 @arch_atomic_fetch_sub(i32 noundef %0, ptr noundef %1) #13, !dbg !3442
  ret i32 %call, !dbg !3443
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_sub(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !3444 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3446, metadata !DIExpression()), !dbg !3450
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3447, metadata !DIExpression()), !dbg !3451
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #14, !dbg !3452
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !3448, metadata !DIExpression()), !dbg !3452
  %0 = load i32, ptr %i.addr, align 4, !dbg !3452
  %sub = sub i32 0, %0, !dbg !3452
  store i32 %sub, ptr %__ret, align 4, !dbg !3452
  %1 = load i32, ptr %__ret, align 4, !dbg !3452
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3452
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !3452
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #14, !dbg !3452, !srcloc !3453
  store i32 %3, ptr %__ret, align 4, !dbg !3452
  %4 = load i32, ptr %__ret, align 4, !dbg !3452
  store i32 %4, ptr %tmp, align 4, !dbg !3452
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #14, !dbg !3454
  %5 = load i32, ptr %tmp, align 4, !dbg !3452
  ret i32 %5, !dbg !3455
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3456 dso_local void @_raw_spin_lock_irq(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #5 align 16 !dbg !3461 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3463, metadata !DIExpression()), !dbg !3465
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !3464, metadata !DIExpression()), !dbg !3466
  %0 = load ptr, ptr %new.addr, align 8, !dbg !3467
  %1 = load ptr, ptr %head.addr, align 8, !dbg !3468
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !3469
  %2 = load ptr, ptr %prev, align 8, !dbg !3469
  %3 = load ptr, ptr %head.addr, align 8, !dbg !3470
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #13, !dbg !3471
  ret void, !dbg !3472
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !3473 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3477, metadata !DIExpression()), !dbg !3480
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !3478, metadata !DIExpression()), !dbg !3481
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !3479, metadata !DIExpression()), !dbg !3482
  %0 = load ptr, ptr %new.addr, align 8, !dbg !3483
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !3485
  %2 = load ptr, ptr %next.addr, align 8, !dbg !3486
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13, !dbg !3487
  br i1 %call, label %if.end, label %if.then, !dbg !3488

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !3489

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !3490
  %4 = load ptr, ptr %next.addr, align 8, !dbg !3491
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !3492
  store ptr %3, ptr %prev1, align 8, !dbg !3493
  %5 = load ptr, ptr %next.addr, align 8, !dbg !3494
  %6 = load ptr, ptr %new.addr, align 8, !dbg !3495
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !3496
  store ptr %5, ptr %next2, align 8, !dbg !3497
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !3498
  %8 = load ptr, ptr %new.addr, align 8, !dbg !3499
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !3500
  store ptr %7, ptr %prev3, align 8, !dbg !3501
  br label %do.body, !dbg !3502

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !3503

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !3505

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !3503

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !3507
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !3507
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !3507
  store volatile ptr %9, ptr %next6, align 8, !dbg !3507
  br label %do.end7, !dbg !3507

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !3503

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !3509
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !3510 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3514, metadata !DIExpression()), !dbg !3517
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !3515, metadata !DIExpression()), !dbg !3518
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !3516, metadata !DIExpression()), !dbg !3519
  ret i1 true, !dbg !3520
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3521 dso_local void @_raw_spin_unlock_irq(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #10

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_contention_end(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #6 align 16 !dbg !3522 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !3526, metadata !DIExpression()), !dbg !3527
  %0 = load i64, ptr %word.addr, align 8, !dbg !3528
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #16, !dbg !3529, !srcloc !3530
  store i64 %1, ptr %word.addr, align 8, !dbg !3529
  %2 = load i64, ptr %word.addr, align 8, !dbg !3531
  ret i64 %2, !dbg !3532
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3533 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #6 align 16 !dbg !3534 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3536, metadata !DIExpression()), !dbg !3537
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3538
  %call = call i32 @arch_atomic_read(ptr noundef %0) #13, !dbg !3539
  ret i32 %call, !dbg !3540
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #6 align 16 !dbg !3541 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3543, metadata !DIExpression()), !dbg !3544
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3545
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !3545
  %1 = load volatile i32, ptr %counter, align 4, !dbg !3545
  ret i32 %1, !dbg !3546
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_xchg(ptr noundef %v, i32 noundef %new) #6 align 16 !dbg !3547 {
entry:
  %v.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3551, metadata !DIExpression()), !dbg !3553
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3552, metadata !DIExpression()), !dbg !3554
  br label %do.body, !dbg !3555

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3556

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3558
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #13, !dbg !3559
  %1 = load ptr, ptr %v.addr, align 8, !dbg !3560
  %2 = load i32, ptr %new.addr, align 4, !dbg !3561
  %call = call i32 @raw_atomic_xchg(ptr noundef %1, i32 noundef %2) #13, !dbg !3562
  ret i32 %call, !dbg !3563
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_xchg(ptr noundef %v, i32 noundef %new) #6 align 16 !dbg !3564 {
entry:
  %v.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3566, metadata !DIExpression()), !dbg !3568
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3567, metadata !DIExpression()), !dbg !3569
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3570
  %1 = load i32, ptr %new.addr, align 4, !dbg !3571
  %call = call i32 @arch_atomic_xchg(ptr noundef %0, i32 noundef %1) #13, !dbg !3572
  ret i32 %call, !dbg !3573
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_xchg(ptr noundef %v, i32 noundef %new) #6 align 16 !dbg !3574 {
entry:
  %v.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3576, metadata !DIExpression()), !dbg !3580
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3577, metadata !DIExpression()), !dbg !3581
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #14, !dbg !3582
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !3578, metadata !DIExpression()), !dbg !3582
  %0 = load i32, ptr %new.addr, align 4, !dbg !3582
  store i32 %0, ptr %__ret, align 4, !dbg !3582
  %1 = load i32, ptr %__ret, align 4, !dbg !3582
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3582
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !3582
  %3 = call i32 asm sideeffect "xchgl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #14, !dbg !3582, !srcloc !3583
  store i32 %3, ptr %__ret, align 4, !dbg !3582
  %4 = load i32, ptr %__ret, align 4, !dbg !3582
  store i32 %4, ptr %tmp, align 4, !dbg !3582
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #14, !dbg !3584
  %5 = load i32, ptr %tmp, align 4, !dbg !3582
  ret i32 %5, !dbg !3585
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @signal_pending(ptr noundef %p) #5 align 16 !dbg !3586 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3588, metadata !DIExpression()), !dbg !3589
  %0 = load ptr, ptr %p.addr, align 8, !dbg !3590
  %call = call i32 @test_tsk_thread_flag(ptr noundef %0, i32 noundef 17) #13, !dbg !3590
  %tobool = icmp ne i32 %call, 0, !dbg !3590
  %lnot = xor i1 %tobool, true, !dbg !3590
  %lnot1 = xor i1 %lnot, true, !dbg !3590
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3590
  %conv = sext i32 %lnot.ext to i64, !dbg !3590
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3590
  %tobool2 = icmp ne i64 %expval, 0, !dbg !3590
  br i1 %tobool2, label %if.then, label %if.end, !dbg !3592

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !3593
  br label %return, !dbg !3593

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8, !dbg !3594
  %call3 = call i32 @task_sigpending(ptr noundef %1) #13, !dbg !3595
  store i32 %call3, ptr %retval, align 4, !dbg !3596
  br label %return, !dbg !3596

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !3597
  ret i32 %2, !dbg !3597
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__fatal_signal_pending(ptr noundef %p) #5 align 16 !dbg !3598 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3600, metadata !DIExpression()), !dbg !3601
  %0 = load ptr, ptr %p.addr, align 8, !dbg !3602
  %pending = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 109, !dbg !3602
  %signal = getelementptr inbounds %struct.sigpending, ptr %pending, i32 0, i32 1, !dbg !3602
  %call = call i32 @sigismember(ptr noundef %signal, i32 noundef 9) #13, !dbg !3602
  %tobool = icmp ne i32 %call, 0, !dbg !3602
  %lnot = xor i1 %tobool, true, !dbg !3602
  %lnot1 = xor i1 %lnot, true, !dbg !3602
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3602
  %conv = sext i32 %lnot.ext to i64, !dbg !3602
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3602
  %conv2 = trunc i64 %expval to i32, !dbg !3602
  ret i32 %conv2, !dbg !3603
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @test_tsk_thread_flag(ptr noundef %tsk, i32 noundef %flag) #5 align 16 !dbg !3604 {
entry:
  %tsk.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !3608, metadata !DIExpression()), !dbg !3610
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !3609, metadata !DIExpression()), !dbg !3611
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !3612
  %thread_info = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 0, !dbg !3612
  %1 = load i32, ptr %flag.addr, align 4, !dbg !3613
  %call = call i32 @test_ti_thread_flag(ptr noundef %thread_info, i32 noundef %1) #13, !dbg !3614
  ret i32 %call, !dbg !3615
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @task_sigpending(ptr noundef %p) #5 align 16 !dbg !3616 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3618, metadata !DIExpression()), !dbg !3619
  %0 = load ptr, ptr %p.addr, align 8, !dbg !3620
  %call = call i32 @test_tsk_thread_flag(ptr noundef %0, i32 noundef 2) #13, !dbg !3620
  %tobool = icmp ne i32 %call, 0, !dbg !3620
  %lnot = xor i1 %tobool, true, !dbg !3620
  %lnot1 = xor i1 %lnot, true, !dbg !3620
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3620
  %conv = sext i32 %lnot.ext to i64, !dbg !3620
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3620
  %conv2 = trunc i64 %expval to i32, !dbg !3620
  ret i32 %conv2, !dbg !3621
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @test_ti_thread_flag(ptr noundef %ti, i32 noundef %flag) #5 align 16 !dbg !3622 {
entry:
  %ti.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %ti, ptr %ti.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ti.addr, metadata !3628, metadata !DIExpression()), !dbg !3630
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !3629, metadata !DIExpression()), !dbg !3631
  %0 = load i32, ptr %flag.addr, align 4, !dbg !3632
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !3632
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !3632

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ti.addr, align 8, !dbg !3632
  %flags = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 0, !dbg !3632
  %3 = ptrtoint ptr %flags to i64, !dbg !3632
  %cmp = icmp ne i64 %3, 0, !dbg !3632
  %conv = zext i1 %cmp to i32, !dbg !3632
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !3632
  br i1 %4, label %land.lhs.true1, label %cond.false, !dbg !3632

land.lhs.true1:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %ti.addr, align 8, !dbg !3632
  %flags2 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 0, !dbg !3632
  %6 = ptrtoint ptr %flags2 to i64, !dbg !3632
  %cmp3 = icmp ne i64 %6, 0, !dbg !3632
  br i1 %cmp3, label %land.lhs.true5, label %cond.false, !dbg !3632

land.lhs.true5:                                   ; preds = %land.lhs.true1
  %7 = load ptr, ptr %ti.addr, align 8, !dbg !3632
  %flags6 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 0, !dbg !3632
  %8 = load i64, ptr %flags6, align 8, !dbg !3632
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !3632
  br i1 %9, label %cond.true, label %cond.false, !dbg !3632

cond.true:                                        ; preds = %land.lhs.true5
  %10 = load i32, ptr %flag.addr, align 4, !dbg !3632
  %conv7 = sext i32 %10 to i64, !dbg !3632
  %11 = load ptr, ptr %ti.addr, align 8, !dbg !3632
  %flags8 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 0, !dbg !3632
  %call = call zeroext i1 @const_test_bit(i64 noundef %conv7, ptr noundef %flags8) #13, !dbg !3632
  %conv9 = zext i1 %call to i32, !dbg !3632
  br label %cond.end, !dbg !3632

cond.false:                                       ; preds = %land.lhs.true5, %land.lhs.true1, %land.lhs.true, %entry
  %12 = load i32, ptr %flag.addr, align 4, !dbg !3632
  %conv10 = sext i32 %12 to i64, !dbg !3632
  %13 = load ptr, ptr %ti.addr, align 8, !dbg !3632
  %flags11 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 0, !dbg !3632
  %call12 = call zeroext i1 @_test_bit(i64 noundef %conv10, ptr noundef %flags11) #13, !dbg !3632
  %conv13 = zext i1 %call12 to i32, !dbg !3632
  br label %cond.end, !dbg !3632

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv9, %cond.true ], [ %conv13, %cond.false ], !dbg !3632
  ret i32 %cond, !dbg !3633
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !3634 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3637, metadata !DIExpression()), !dbg !3642
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3638, metadata !DIExpression()), !dbg !3643
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #14, !dbg !3644
  call void @llvm.dbg.declare(metadata ptr %p, metadata !3639, metadata !DIExpression()), !dbg !3645
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3646
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3647
  %div = udiv i64 %1, 64, !dbg !3647
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !3648
  store ptr %add.ptr, ptr %p, align 8, !dbg !3645
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #14, !dbg !3649
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !3640, metadata !DIExpression()), !dbg !3650
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3651
  %rem = urem i64 %2, 64, !dbg !3651
  %shl = shl i64 1, %rem, !dbg !3651
  store i64 %shl, ptr %mask, align 8, !dbg !3650
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #14, !dbg !3652
  call void @llvm.dbg.declare(metadata ptr %val, metadata !3641, metadata !DIExpression()), !dbg !3653
  %3 = load ptr, ptr %p, align 8, !dbg !3654
  %4 = load i64, ptr %3, align 8, !dbg !3655
  store i64 %4, ptr %val, align 8, !dbg !3653
  %5 = load i64, ptr %val, align 8, !dbg !3656
  %6 = load i64, ptr %mask, align 8, !dbg !3657
  %and = and i64 %5, %6, !dbg !3658
  %tobool = icmp ne i64 %and, 0, !dbg !3659
  %lnot = xor i1 %tobool, true, !dbg !3659
  %lnot1 = xor i1 %lnot, true, !dbg !3660
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #14, !dbg !3661
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #14, !dbg !3661
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #14, !dbg !3661
  ret i1 %lnot1, !dbg !3662
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sigismember(ptr noundef %set, i32 noundef %_sig) #5 align 16 !dbg !3663 {
entry:
  %set.addr = alloca ptr, align 8
  %_sig.addr = alloca i32, align 4
  %sig = alloca i64, align 8
  store ptr %set, ptr %set.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !3669, metadata !DIExpression()), !dbg !3672
  store i32 %_sig, ptr %_sig.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %_sig.addr, metadata !3670, metadata !DIExpression()), !dbg !3673
  call void @llvm.lifetime.start.p0(i64 8, ptr %sig) #14, !dbg !3674
  call void @llvm.dbg.declare(metadata ptr %sig, metadata !3671, metadata !DIExpression()), !dbg !3675
  %0 = load i32, ptr %_sig.addr, align 4, !dbg !3676
  %sub = sub i32 %0, 1, !dbg !3677
  %conv = sext i32 %sub to i64, !dbg !3676
  store i64 %conv, ptr %sig, align 8, !dbg !3675
  %1 = load ptr, ptr %set.addr, align 8, !dbg !3678
  %sig1 = getelementptr inbounds %struct.sigset_t, ptr %1, i32 0, i32 0, !dbg !3680
  %arrayidx = getelementptr [1 x i64], ptr %sig1, i64 0, i64 0, !dbg !3678
  %2 = load i64, ptr %arrayidx, align 8, !dbg !3678
  %3 = load i64, ptr %sig, align 8, !dbg !3681
  %shr = lshr i64 %2, %3, !dbg !3682
  %and = and i64 1, %shr, !dbg !3683
  %conv2 = trunc i64 %and to i32, !dbg !3684
  call void @llvm.lifetime.end.p0(i64 8, ptr %sig) #14, !dbg !3685
  ret i32 %conv2, !dbg !3686
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set_release(ptr noundef %v, i32 noundef %i) #6 align 16 !dbg !3687 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3689, metadata !DIExpression()), !dbg !3691
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3690, metadata !DIExpression()), !dbg !3692
  br label %do.body, !dbg !3693

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !3696

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !3698

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !3696

do.body2:                                         ; preds = %do.end
  br label %do.body3, !dbg !3700

do.body3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !3702

do.end4:                                          ; preds = %do.body3
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !3700, !srcloc !3704
  br label %do.body5, !dbg !3700

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !3705

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !3707

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !3705

do.body8:                                         ; preds = %do.end7
  %0 = load i32, ptr %i.addr, align 4, !dbg !3709
  %1 = load ptr, ptr %v.addr, align 8, !dbg !3709
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !3709
  store volatile i32 %0, ptr %counter, align 4, !dbg !3709
  br label %do.end9, !dbg !3709

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !3705

do.end10:                                         ; preds = %do.end9
  br label %do.end11, !dbg !3700

do.end11:                                         ; preds = %do.end10
  br label %do.end12, !dbg !3696

do.end12:                                         ; preds = %do.end11
  ret void, !dbg !3711
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #8 = { nocallback nounwind }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { noredzone allocsize(0) }
attributes #13 = { noredzone }
attributes #14 = { nounwind }
attributes #15 = { nounwind memory(none) }
attributes #16 = { nounwind memory(read) }

!llvm.dbg.cu = !{!1871}
!llvm.named.register.rsp = !{!2037}
!llvm.module.flags = !{!2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045}
!llvm.ident = !{!2046}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__key", scope: !2, file: !3, line: 23, type: !1869, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "__percpu_init_rwsem", scope: !3, file: !3, line: 14, type: !4, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !2033)
!3 = !DIFile(filename: "kernel/locking/percpu-rwsem.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c736e3b3a96914bf77b5046beb505035")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !7, !922, !1868}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !9, line: 12, size: 768, elements: !10)
!9 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!10 = !{!11, !81, !84, !1866, !1867}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !8, file: !9, line: 13, baseType: !12, size: 384)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !13, line: 17, size: 384, elements: !14)
!13 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!14 = !{!15, !16, !17, !72}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !12, file: !13, line: 18, baseType: !6, size: 32)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !12, file: !13, line: 19, baseType: !6, size: 32, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !12, file: !13, line: 20, baseType: !18, size: 192, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !19, line: 41, baseType: !20)
!19 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !19, line: 37, size: 192, elements: !21)
!21 = !{!22, !66}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !20, file: !19, line: 38, baseType: !23, size: 32)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !24, line: 29, baseType: !25)
!24 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !24, line: 17, size: 32, elements: !26)
!26 = !{!27}
!27 = !DIDerivedType(tag: DW_TAG_member, scope: !25, file: !24, line: 18, baseType: !28, size: 32)
!28 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !25, file: !24, line: 18, size: 32, elements: !29)
!29 = !{!30}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !28, file: !24, line: 19, baseType: !31, size: 32)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !32, line: 14, size: 32, elements: !33)
!32 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!33 = !{!34}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !31, file: !32, line: 15, baseType: !35, size: 32)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !36, line: 44, baseType: !37)
!36 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !36, line: 14, size: 32, elements: !38)
!38 = !{!39}
!39 = !DIDerivedType(tag: DW_TAG_member, scope: !37, file: !36, line: 15, baseType: !40, size: 32)
!40 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !37, file: !36, line: 15, size: 32, elements: !41)
!41 = !{!42, !48, !58}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !40, file: !36, line: 16, baseType: !43, size: 32)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !44, line: 174, baseType: !45)
!44 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !44, line: 172, size: 32, elements: !46)
!46 = !{!47}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !45, file: !44, line: 173, baseType: !6, size: 32)
!48 = !DIDerivedType(tag: DW_TAG_member, scope: !40, file: !36, line: 24, baseType: !49, size: 16)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !40, file: !36, line: 24, size: 16, elements: !50)
!50 = !{!51, !57}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !49, file: !36, line: 25, baseType: !52, size: 8)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !53, line: 17, baseType: !54)
!53 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !55, line: 21, baseType: !56)
!55 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!56 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !49, file: !36, line: 26, baseType: !52, size: 8, offset: 8)
!58 = !DIDerivedType(tag: DW_TAG_member, scope: !40, file: !36, line: 28, baseType: !59, size: 32)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !40, file: !36, line: 28, size: 32, elements: !60)
!60 = !{!61, !65}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !59, file: !36, line: 29, baseType: !62, size: 16)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !53, line: 19, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !55, line: 24, baseType: !64)
!64 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !59, file: !36, line: 30, baseType: !62, size: 16, offset: 16)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !20, file: !19, line: 39, baseType: !67, size: 128, offset: 64)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !44, line: 190, size: 128, elements: !68)
!68 = !{!69, !71}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !67, file: !44, line: 191, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !67, file: !44, line: 191, baseType: !70, size: 64, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !12, file: !13, line: 22, baseType: !73, size: 128, align: 64, offset: 256)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !44, line: 232, size: 128, align: 64, elements: !74)
!74 = !{!75, !77}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !73, file: !44, line: 233, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !73, file: !44, line: 234, baseType: !78, size: 64, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DISubroutineType(types: !80)
!80 = !{null, !76}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !8, file: !9, line: 14, baseType: !82, size: 64, offset: 384)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !8, file: !9, line: 15, baseType: !85, size: 64, offset: 448)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !86, line: 16, size: 64, elements: !87)
!86 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!87 = !{!88}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !85, file: !86, line: 17, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !91, line: 746, size: 58368, elements: !92)
!91 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!92 = !{!93, !104, !105, !107, !113, !114, !115, !116, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !200, !211, !318, !322, !325, !356, !357, !358, !359, !370, !372, !373, !374, !375, !376, !377, !388, !389, !392, !393, !394, !395, !396, !397, !398, !399, !406, !407, !414, !415, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !717, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !759, !761, !762, !763, !775, !777, !778, !779, !780, !781, !782, !788, !789, !790, !791, !792, !793, !794, !808, !814, !1014, !1015, !1016, !1017, !1021, !1024, !1031, !1036, !1039, !1042, !1045, !1048, !1193, !1224, !1225, !1226, !1227, !1228, !1229, !1232, !1233, !1234, !1237, !1238, !1239, !1248, !1256, !1257, !1258, !1259, !1260, !1265, !1266, !1267, !1270, !1271, !1274, !1277, !1280, !1283, !1286, !1287, !1374, !1375, !1376, !1377, !1378, !1384, !1385, !1386, !1387, !1390, !1391, !1394, !1397, !1398, !1401, !1402, !1403, !1406, !1407, !1408, !1411, !1412, !1413, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1445, !1448, !1516, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1528, !1606, !1608, !1609, !1610, !1611, !1612, !1624, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1641, !1642, !1643}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !90, file: !91, line: 752, baseType: !94, size: 192)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !95, line: 56, size: 192, elements: !96)
!95 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!96 = !{!97, !99, !100, !103}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !94, file: !95, line: 57, baseType: !98, size: 64)
!98 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !94, file: !95, line: 58, baseType: !98, size: 64, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !94, file: !95, line: 59, baseType: !101, size: 32, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !53, line: 21, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !55, line: 27, baseType: !83)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !94, file: !95, line: 61, baseType: !101, size: 32, offset: 160)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !90, file: !91, line: 754, baseType: !83, size: 32, offset: 192)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !90, file: !91, line: 767, baseType: !106, size: 64, offset: 256)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !90, file: !91, line: 768, baseType: !108, size: 32, offset: 320)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !109, line: 113, baseType: !110)
!109 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !109, line: 111, size: 32, elements: !111)
!111 = !{!112}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !110, file: !109, line: 112, baseType: !43, size: 32)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !90, file: !91, line: 770, baseType: !83, size: 32, offset: 352)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !90, file: !91, line: 771, baseType: !83, size: 32, offset: 384)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !90, file: !91, line: 774, baseType: !6, size: 32, offset: 416)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !90, file: !91, line: 775, baseType: !117, size: 128, offset: 448)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !118, line: 58, size: 128, elements: !119)
!118 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!119 = !{!120, !126, !131, !132}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !117, file: !118, line: 59, baseType: !121, size: 64)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !122, line: 60, size: 64, elements: !123)
!122 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!123 = !{!124}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !121, file: !122, line: 61, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, scope: !117, file: !118, line: 60, baseType: !127, size: 32, offset: 64)
!127 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !117, file: !118, line: 60, size: 32, elements: !128)
!128 = !{!129, !130}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !127, file: !118, line: 61, baseType: !83, size: 32)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !127, file: !118, line: 62, baseType: !43, size: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !117, file: !118, line: 65, baseType: !62, size: 16, offset: 96)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !117, file: !118, line: 65, baseType: !62, size: 16, offset: 112)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !90, file: !91, line: 776, baseType: !83, size: 32, offset: 576)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !90, file: !91, line: 777, baseType: !98, size: 64, offset: 640)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !90, file: !91, line: 778, baseType: !89, size: 64, offset: 704)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !90, file: !91, line: 787, baseType: !6, size: 32, offset: 768)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !90, file: !91, line: 788, baseType: !6, size: 32, offset: 800)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !90, file: !91, line: 790, baseType: !6, size: 32, offset: 832)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !90, file: !91, line: 792, baseType: !6, size: 32, offset: 864)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !90, file: !91, line: 793, baseType: !6, size: 32, offset: 896)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !90, file: !91, line: 794, baseType: !6, size: 32, offset: 928)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !90, file: !91, line: 795, baseType: !83, size: 32, offset: 960)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !90, file: !91, line: 797, baseType: !144, size: 2048, offset: 1024)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !91, line: 551, size: 2048, elements: !145)
!145 = !{!146, !151, !159, !163, !164, !165, !166, !167, !168, !169, !170, !174, !175, !176, !177, !179, !182, !183, !184}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !144, file: !91, line: 553, baseType: !147, size: 128)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !91, line: 411, size: 128, elements: !148)
!148 = !{!149, !150}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !147, file: !91, line: 412, baseType: !98, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !147, file: !91, line: 413, baseType: !101, size: 32, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !144, file: !91, line: 554, baseType: !152, size: 192, align: 64, offset: 128)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !153, line: 5, size: 192, align: 64, elements: !154)
!153 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!154 = !{!155, !156, !158}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !152, file: !153, line: 6, baseType: !98, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !152, file: !153, line: 7, baseType: !157, size: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !152, file: !153, line: 8, baseType: !157, size: 64, offset: 128)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !144, file: !91, line: 555, baseType: !160, size: 64, offset: 320)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !53, line: 23, baseType: !161)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !55, line: 31, baseType: !162)
!162 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !144, file: !91, line: 556, baseType: !160, size: 64, offset: 384)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !144, file: !91, line: 558, baseType: !67, size: 128, offset: 448)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !144, file: !91, line: 559, baseType: !83, size: 32, offset: 576)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !144, file: !91, line: 561, baseType: !160, size: 64, offset: 640)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !144, file: !91, line: 562, baseType: !160, size: 64, offset: 704)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !144, file: !91, line: 563, baseType: !160, size: 64, offset: 768)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !144, file: !91, line: 564, baseType: !160, size: 64, offset: 832)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !144, file: !91, line: 565, baseType: !171, size: 64, offset: 896)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !53, line: 22, baseType: !172)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !55, line: 30, baseType: !173)
!173 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !144, file: !91, line: 566, baseType: !160, size: 64, offset: 960)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !144, file: !91, line: 568, baseType: !160, size: 64, offset: 1024)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !144, file: !91, line: 571, baseType: !6, size: 32, offset: 1088)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !144, file: !91, line: 572, baseType: !178, size: 64, offset: 1152)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !144, file: !91, line: 574, baseType: !180, size: 64, offset: 1216)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !91, line: 49, flags: DIFlagFwdDecl)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !144, file: !91, line: 576, baseType: !180, size: 64, offset: 1280)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !144, file: !91, line: 578, baseType: !98, size: 64, offset: 1344)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !144, file: !91, line: 588, baseType: !185, size: 512, align: 512, offset: 1536)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !91, line: 497, size: 512, align: 512, elements: !186)
!186 = !{!187, !188, !189, !190, !191, !192, !193, !194, !195}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !185, file: !91, line: 498, baseType: !160, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !185, file: !91, line: 499, baseType: !160, size: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !185, file: !91, line: 500, baseType: !160, size: 64, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !185, file: !91, line: 501, baseType: !101, size: 32, offset: 192)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !185, file: !91, line: 502, baseType: !101, size: 32, offset: 224)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !185, file: !91, line: 503, baseType: !98, size: 64, offset: 256)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !185, file: !91, line: 504, baseType: !98, size: 64, offset: 320)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !185, file: !91, line: 505, baseType: !98, size: 64, offset: 384)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !185, file: !91, line: 506, baseType: !196, size: 64, align: 64, offset: 448)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !91, line: 445, size: 64, align: 64, elements: !197)
!197 = !{!198, !199}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !196, file: !91, line: 446, baseType: !83, size: 32)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !196, file: !91, line: 447, baseType: !83, size: 32, offset: 32)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !90, file: !91, line: 798, baseType: !201, size: 384, offset: 3072)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !91, line: 592, size: 384, elements: !202)
!202 = !{!203, !204, !205, !206, !207, !208, !209}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !201, file: !91, line: 593, baseType: !67, size: 128)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !201, file: !91, line: 594, baseType: !98, size: 64, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !201, file: !91, line: 595, baseType: !98, size: 64, offset: 192)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !201, file: !91, line: 596, baseType: !83, size: 32, offset: 256)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !201, file: !91, line: 597, baseType: !64, size: 16, offset: 288)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !201, file: !91, line: 598, baseType: !64, size: 16, offset: 304)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !201, file: !91, line: 600, baseType: !210, size: 64, offset: 320)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !90, file: !91, line: 799, baseType: !212, size: 1792, offset: 3456)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !91, line: 610, size: 1792, elements: !213)
!213 = !{!214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !315, !316}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !212, file: !91, line: 611, baseType: !152, size: 192, align: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !212, file: !91, line: 618, baseType: !160, size: 64, offset: 192)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !212, file: !91, line: 619, baseType: !160, size: 64, offset: 256)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !212, file: !91, line: 620, baseType: !160, size: 64, offset: 320)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !212, file: !91, line: 621, baseType: !160, size: 64, offset: 384)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !212, file: !91, line: 622, baseType: !160, size: 64, offset: 448)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !212, file: !91, line: 629, baseType: !171, size: 64, offset: 512)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !212, file: !91, line: 630, baseType: !160, size: 64, offset: 576)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !212, file: !91, line: 631, baseType: !83, size: 32, offset: 640)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !212, file: !91, line: 653, baseType: !83, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !212, file: !91, line: 654, baseType: !83, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !212, file: !91, line: 655, baseType: !83, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !212, file: !91, line: 656, baseType: !83, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !212, file: !91, line: 662, baseType: !228, size: 512, offset: 704)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !229, line: 118, size: 512, elements: !230)
!229 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!230 = !{!231, !239, !240, !249, !311, !312, !313, !314}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !228, file: !229, line: 119, baseType: !232, size: 256)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !233, line: 9, size: 256, elements: !234)
!233 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!234 = !{!235, !236}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !232, file: !233, line: 10, baseType: !152, size: 192, align: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !232, file: !233, line: 11, baseType: !237, size: 64, offset: 192)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !238, line: 29, baseType: !171)
!238 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !228, file: !229, line: 120, baseType: !237, size: 64, offset: 256)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !228, file: !229, line: 121, baseType: !241, size: 64, offset: 320)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{!244, !248}
!244 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !229, line: 65, baseType: !83, size: 32, elements: !245)
!245 = !{!246, !247}
!246 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!247 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !228, file: !229, line: 122, baseType: !250, size: 64, offset: 384)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !229, line: 159, size: 512, align: 512, elements: !252)
!252 = !{!253, !279, !280, !284, !294, !295, !306, !310}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !251, file: !229, line: 160, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !229, line: 215, size: 4608, align: 512, elements: !256)
!256 = !{!257, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !255, file: !229, line: 216, baseType: !258, size: 32)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !32, line: 23, baseType: !31)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !255, file: !229, line: 217, baseType: !83, size: 32, offset: 32)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !255, file: !229, line: 218, baseType: !83, size: 32, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !255, file: !229, line: 219, baseType: !83, size: 32, offset: 96)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !255, file: !229, line: 220, baseType: !83, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !255, file: !229, line: 221, baseType: !83, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !255, file: !229, line: 222, baseType: !83, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !255, file: !229, line: 223, baseType: !83, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !255, file: !229, line: 224, baseType: !83, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !255, file: !229, line: 226, baseType: !83, size: 32, offset: 160)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !255, file: !229, line: 227, baseType: !64, size: 16, offset: 192)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !255, file: !229, line: 228, baseType: !64, size: 16, offset: 208)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !255, file: !229, line: 229, baseType: !83, size: 32, offset: 224)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !255, file: !229, line: 235, baseType: !237, size: 64, offset: 256)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !255, file: !229, line: 236, baseType: !248, size: 64, offset: 320)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !255, file: !229, line: 237, baseType: !237, size: 64, offset: 384)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !255, file: !229, line: 238, baseType: !248, size: 64, offset: 448)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !255, file: !229, line: 239, baseType: !276, size: 4096, align: 512, offset: 512)
!276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 4096, align: 512, elements: !277)
!277 = !{!278}
!278 = !DISubrange(count: 8)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !251, file: !229, line: 161, baseType: !83, size: 32, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !251, file: !229, line: 162, baseType: !281, size: 32, offset: 96)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !44, line: 32, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !283, line: 96, baseType: !6)
!283 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!284 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !251, file: !229, line: 163, baseType: !285, size: 32, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !286, line: 274, baseType: !287)
!286 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !286, line: 274, size: 32, elements: !288)
!288 = !{!289}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !287, file: !286, line: 274, baseType: !290, size: 32)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !286, line: 69, baseType: !291)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !286, line: 64, size: 32, elements: !292)
!292 = !{!293}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !291, file: !286, line: 65, baseType: !83, size: 32)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !251, file: !229, line: 164, baseType: !248, size: 64, offset: 192)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !251, file: !229, line: 165, baseType: !296, size: 128, offset: 256)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !233, line: 14, size: 128, elements: !297)
!297 = !{!298}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !296, file: !233, line: 15, baseType: !299, size: 128)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !153, line: 26, size: 128, elements: !300)
!300 = !{!301, !305}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !299, file: !153, line: 27, baseType: !302, size: 64)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !153, line: 12, size: 64, elements: !303)
!303 = !{!304}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !302, file: !153, line: 13, baseType: !157, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !299, file: !153, line: 28, baseType: !157, size: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !251, file: !229, line: 166, baseType: !307, size: 64, offset: 384)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{!237}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !251, file: !229, line: 167, baseType: !237, size: 64, offset: 448)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !228, file: !229, line: 123, baseType: !52, size: 8, offset: 448)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !228, file: !229, line: 124, baseType: !52, size: 8, offset: 456)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !228, file: !229, line: 125, baseType: !52, size: 8, offset: 464)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !228, file: !229, line: 126, baseType: !52, size: 8, offset: 472)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !212, file: !91, line: 671, baseType: !228, size: 512, offset: 1216)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !212, file: !91, line: 679, baseType: !317, size: 64, offset: 1728)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !90, file: !91, line: 800, baseType: !319, size: 64, offset: 5248)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !321)
!321 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !91, line: 800, flags: DIFlagFwdDecl)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !90, file: !91, line: 809, baseType: !323, size: 64, offset: 5312)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !91, line: 70, flags: DIFlagFwdDecl)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !90, file: !91, line: 825, baseType: !326, size: 2048, align: 512, offset: 5632)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !91, line: 509, size: 2048, align: 512, elements: !327)
!327 = !{!328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !326, file: !91, line: 511, baseType: !160, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !326, file: !91, line: 512, baseType: !160, size: 64, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !326, file: !91, line: 513, baseType: !160, size: 64, offset: 128)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !326, file: !91, line: 514, baseType: !160, size: 64, offset: 192)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !326, file: !91, line: 515, baseType: !160, size: 64, offset: 256)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !326, file: !91, line: 516, baseType: !160, size: 64, offset: 320)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !326, file: !91, line: 518, baseType: !160, size: 64, offset: 384)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !326, file: !91, line: 519, baseType: !160, size: 64, offset: 448)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !326, file: !91, line: 520, baseType: !171, size: 64, offset: 512)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !326, file: !91, line: 522, baseType: !160, size: 64, offset: 576)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !326, file: !91, line: 523, baseType: !160, size: 64, offset: 640)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !326, file: !91, line: 524, baseType: !171, size: 64, offset: 704)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !326, file: !91, line: 526, baseType: !171, size: 64, offset: 768)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !326, file: !91, line: 527, baseType: !160, size: 64, offset: 832)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !326, file: !91, line: 529, baseType: !160, size: 64, offset: 896)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !326, file: !91, line: 530, baseType: !160, size: 64, offset: 960)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !326, file: !91, line: 531, baseType: !160, size: 64, offset: 1024)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !326, file: !91, line: 532, baseType: !160, size: 64, offset: 1088)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !326, file: !91, line: 533, baseType: !160, size: 64, offset: 1152)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !326, file: !91, line: 535, baseType: !160, size: 64, offset: 1216)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !326, file: !91, line: 536, baseType: !160, size: 64, offset: 1280)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !326, file: !91, line: 537, baseType: !160, size: 64, offset: 1344)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !326, file: !91, line: 538, baseType: !160, size: 64, offset: 1408)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !326, file: !91, line: 539, baseType: !160, size: 64, offset: 1472)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !326, file: !91, line: 540, baseType: !160, size: 64, offset: 1536)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !326, file: !91, line: 541, baseType: !160, size: 64, offset: 1600)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !326, file: !91, line: 542, baseType: !160, size: 64, offset: 1664)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !326, file: !91, line: 543, baseType: !160, size: 64, offset: 1728)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !90, file: !91, line: 833, baseType: !83, size: 32, offset: 7680)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !90, file: !91, line: 836, baseType: !83, size: 32, offset: 7712)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !90, file: !91, line: 837, baseType: !6, size: 32, offset: 7744)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !90, file: !91, line: 838, baseType: !360, size: 64, offset: 7808)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !362)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !363, line: 19, baseType: !364)
!363 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !363, line: 19, size: 64, elements: !365)
!365 = !{!366}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !364, file: !363, line: 19, baseType: !367, size: 64)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 64, elements: !368)
!368 = !{!369}
!369 = !DISubrange(count: 1)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !90, file: !91, line: 839, baseType: !371, size: 64, offset: 7872)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !90, file: !91, line: 840, baseType: !362, size: 64, offset: 7936)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !90, file: !91, line: 841, baseType: !106, size: 64, offset: 8000)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !90, file: !91, line: 843, baseType: !64, size: 16, offset: 8064)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !90, file: !91, line: 845, baseType: !64, size: 16, offset: 8080)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !90, file: !91, line: 848, baseType: !6, size: 32, offset: 8096)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !90, file: !91, line: 849, baseType: !378, size: 32, offset: 8128)
!378 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !91, line: 718, size: 32, elements: !379)
!379 = !{!380, !387}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !378, file: !91, line: 724, baseType: !381, size: 32)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !378, file: !91, line: 719, size: 32, elements: !382)
!382 = !{!383, !384, !385, !386}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !381, file: !91, line: 720, baseType: !52, size: 8)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !381, file: !91, line: 721, baseType: !52, size: 8, offset: 8)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !381, file: !91, line: 722, baseType: !52, size: 8, offset: 16)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !381, file: !91, line: 723, baseType: !52, size: 8, offset: 24)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !378, file: !91, line: 725, baseType: !101, size: 32)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !90, file: !91, line: 850, baseType: !67, size: 128, offset: 8192)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !90, file: !91, line: 851, baseType: !390, size: 64, offset: 8320)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !91, line: 60, flags: DIFlagFwdDecl)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !90, file: !91, line: 855, baseType: !98, size: 64, offset: 8384)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !90, file: !91, line: 856, baseType: !52, size: 8, offset: 8448)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !90, file: !91, line: 857, baseType: !52, size: 8, offset: 8456)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !90, file: !91, line: 858, baseType: !6, size: 32, offset: 8480)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !90, file: !91, line: 859, baseType: !67, size: 128, offset: 8512)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !90, file: !91, line: 860, baseType: !6, size: 32, offset: 8640)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !90, file: !91, line: 861, baseType: !67, size: 128, offset: 8704)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !90, file: !91, line: 873, baseType: !400, size: 256, offset: 8832)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !91, line: 376, size: 256, elements: !401)
!401 = !{!402, !403, !404, !405}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !400, file: !91, line: 381, baseType: !98, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !400, file: !91, line: 384, baseType: !162, size: 64, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !400, file: !91, line: 389, baseType: !162, size: 64, offset: 128)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !400, file: !91, line: 392, baseType: !162, size: 64, offset: 192)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !90, file: !91, line: 875, baseType: !67, size: 128, offset: 9088)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !90, file: !91, line: 877, baseType: !408, size: 320, offset: 9216)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !409, line: 86, size: 320, elements: !410)
!409 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!410 = !{!411, !412, !413}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !408, file: !409, line: 87, baseType: !6, size: 32)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !408, file: !409, line: 88, baseType: !67, size: 128, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !408, file: !409, line: 89, baseType: !67, size: 128, offset: 192)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !90, file: !91, line: 878, baseType: !152, size: 192, align: 64, offset: 9536)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !90, file: !91, line: 881, baseType: !416, size: 64, offset: 9728)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !418, line: 733, size: 10240, elements: !419)
!418 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!419 = !{!420, !628}
!420 = !DIDerivedType(tag: DW_TAG_member, scope: !417, file: !418, line: 734, baseType: !421, size: 10240)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !417, file: !418, line: 734, size: 10240, elements: !422)
!422 = !{!423, !427, !441, !448, !449, !450, !451, !452, !453, !461, !462, !463, !469, !470, !477, !478, !479, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !520, !534, !537, !593, !594, !595, !598, !602, !603, !606, !607, !608, !615, !616}
!423 = !DIDerivedType(tag: DW_TAG_member, scope: !421, file: !418, line: 739, baseType: !424, size: 512, align: 512)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !421, file: !418, line: 739, size: 512, align: 512, elements: !425)
!425 = !{!426}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !424, file: !418, line: 747, baseType: !43, size: 32)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !421, file: !418, line: 750, baseType: !428, size: 128, offset: 512)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !429, line: 218, size: 128, elements: !430)
!429 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!430 = !{!431, !439, !440}
!431 = !DIDerivedType(tag: DW_TAG_member, scope: !428, file: !429, line: 219, baseType: !432, size: 32)
!432 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !428, file: !429, line: 219, size: 32, elements: !433)
!433 = !{!434, !435}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !432, file: !429, line: 220, baseType: !23, size: 32)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !432, file: !429, line: 221, baseType: !436)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !429, line: 197, baseType: !437)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !429, line: 197, elements: !438)
!438 = !{}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !428, file: !429, line: 223, baseType: !83, size: 32, offset: 32)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !428, file: !429, line: 224, baseType: !106, size: 64, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !421, file: !418, line: 752, baseType: !442, size: 64, offset: 640)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{!98, !445, !98, !98, !98, !98}
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !447, line: 537, flags: DIFlagFwdDecl)
!447 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!448 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !421, file: !418, line: 756, baseType: !98, size: 64, offset: 704)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !421, file: !418, line: 757, baseType: !98, size: 64, offset: 768)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !421, file: !418, line: 760, baseType: !98, size: 64, offset: 832)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !421, file: !418, line: 761, baseType: !98, size: 64, offset: 896)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !421, file: !418, line: 763, baseType: !98, size: 64, offset: 960)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !421, file: !418, line: 764, baseType: !454, size: 64, offset: 1024)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !447, line: 299, baseType: !456)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !447, line: 299, size: 64, elements: !457)
!457 = !{!458}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !456, file: !447, line: 299, baseType: !459, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !460, line: 18, baseType: !98)
!460 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!461 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !421, file: !418, line: 773, baseType: !43, size: 32, offset: 1088)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !421, file: !418, line: 785, baseType: !43, size: 32, offset: 1120)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !421, file: !418, line: 795, baseType: !464, size: 64, offset: 1152)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !418, line: 726, size: 128, elements: !466)
!466 = !{!467, !468}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !465, file: !418, line: 727, baseType: !160, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !465, file: !418, line: 728, baseType: !6, size: 32, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !421, file: !418, line: 801, baseType: !98, size: 64, offset: 1216)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !421, file: !418, line: 804, baseType: !471, size: 64, offset: 1280)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !472, line: 13, baseType: !473)
!472 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !44, line: 181, baseType: !474)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !44, line: 179, size: 64, elements: !475)
!475 = !{!476}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !474, file: !44, line: 180, baseType: !171, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !421, file: !418, line: 806, baseType: !6, size: 32, offset: 1344)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !421, file: !418, line: 808, baseType: !23, size: 32, offset: 1376)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !421, file: !418, line: 823, baseType: !480, size: 320, offset: 1408)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !481, line: 48, size: 320, elements: !482)
!481 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!482 = !{!483, !484, !485, !490, !491}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !480, file: !481, line: 49, baseType: !471, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !480, file: !481, line: 55, baseType: !471, size: 64, offset: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !480, file: !481, line: 57, baseType: !486, size: 32, offset: 128)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !487, line: 15, size: 32, elements: !488)
!487 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!488 = !{!489}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !486, file: !487, line: 20, baseType: !43, size: 32)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !480, file: !481, line: 59, baseType: !258, size: 32, offset: 160)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !480, file: !481, line: 60, baseType: !67, size: 128, offset: 192)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !421, file: !418, line: 825, baseType: !67, size: 128, offset: 1728)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !421, file: !418, line: 845, baseType: !6, size: 32, offset: 1856)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !421, file: !418, line: 849, baseType: !98, size: 64, offset: 1920)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !421, file: !418, line: 850, baseType: !98, size: 64, offset: 1984)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !421, file: !418, line: 852, baseType: !98, size: 64, offset: 2048)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !421, file: !418, line: 853, baseType: !98, size: 64, offset: 2112)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !421, file: !418, line: 854, baseType: !473, size: 64, offset: 2176)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !421, file: !418, line: 855, baseType: !98, size: 64, offset: 2240)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !421, file: !418, line: 856, baseType: !98, size: 64, offset: 2304)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !421, file: !418, line: 857, baseType: !98, size: 64, offset: 2368)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !421, file: !418, line: 858, baseType: !98, size: 64, offset: 2432)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !421, file: !418, line: 865, baseType: !290, size: 32, offset: 2496)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !421, file: !418, line: 867, baseType: !23, size: 32, offset: 2528)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !421, file: !418, line: 869, baseType: !98, size: 64, offset: 2560)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !421, file: !418, line: 869, baseType: !98, size: 64, offset: 2624)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !421, file: !418, line: 869, baseType: !98, size: 64, offset: 2688)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !421, file: !418, line: 869, baseType: !98, size: 64, offset: 2752)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !421, file: !418, line: 870, baseType: !98, size: 64, offset: 2816)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !421, file: !418, line: 870, baseType: !98, size: 64, offset: 2880)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !421, file: !418, line: 870, baseType: !98, size: 64, offset: 2944)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !421, file: !418, line: 871, baseType: !98, size: 64, offset: 3008)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !421, file: !418, line: 871, baseType: !98, size: 64, offset: 3072)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !421, file: !418, line: 871, baseType: !98, size: 64, offset: 3136)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !421, file: !418, line: 871, baseType: !98, size: 64, offset: 3200)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !421, file: !418, line: 873, baseType: !517, size: 3328, offset: 3264)
!517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 3328, elements: !518)
!518 = !{!519}
!519 = !DISubrange(count: 52)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !421, file: !418, line: 875, baseType: !521, size: 1280, offset: 6592)
!521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !522, size: 1280, elements: !532)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !523, line: 22, size: 320, elements: !524)
!523 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!524 = !{!525, !526, !527, !528}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !522, file: !523, line: 23, baseType: !258, size: 32)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !522, file: !523, line: 24, baseType: !171, size: 64, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !522, file: !523, line: 26, baseType: !67, size: 128, offset: 128)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !522, file: !523, line: 28, baseType: !529, size: 64, offset: 256)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !53, line: 20, baseType: !531)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !55, line: 26, baseType: !6)
!532 = !{!533}
!533 = !DISubrange(count: 4)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !421, file: !418, line: 877, baseType: !535, size: 64, offset: 7872)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !418, line: 877, flags: DIFlagFwdDecl)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !421, file: !418, line: 880, baseType: !538, size: 1088, offset: 7936)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !539, line: 72, baseType: !540)
!539 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !539, line: 23, size: 1088, elements: !541)
!541 = !{!542, !543, !544, !545, !546, !549, !550, !558, !559, !587, !588, !589}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !540, file: !539, line: 28, baseType: !160, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !540, file: !539, line: 38, baseType: !473, size: 64, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !540, file: !539, line: 40, baseType: !98, size: 64, offset: 128)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !540, file: !539, line: 43, baseType: !480, size: 320, offset: 192)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !540, file: !539, line: 44, baseType: !547, size: 64, offset: 512)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !539, line: 44, flags: DIFlagFwdDecl)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !540, file: !539, line: 48, baseType: !98, size: 64, offset: 576)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !540, file: !539, line: 59, baseType: !551, size: 256, offset: 640)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !552, line: 66, size: 256, elements: !553)
!552 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!553 = !{!554, !555, !556, !557}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !551, file: !552, line: 67, baseType: !471, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !551, file: !552, line: 68, baseType: !258, size: 32, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !551, file: !552, line: 70, baseType: !486, size: 32, offset: 96)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !551, file: !552, line: 72, baseType: !67, size: 128, offset: 128)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !540, file: !539, line: 60, baseType: !106, size: 64, offset: 896)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !540, file: !539, line: 61, baseType: !560, size: 64, offset: 960)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !562)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !563, line: 13, size: 1216, elements: !564)
!563 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!564 = !{!565, !566, !567, !568, !569, !570, !571, !574, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !562, file: !563, line: 14, baseType: !106, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !562, file: !563, line: 15, baseType: !98, size: 64, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !562, file: !563, line: 17, baseType: !98, size: 64, offset: 128)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !562, file: !563, line: 17, baseType: !98, size: 64, offset: 192)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !562, file: !563, line: 18, baseType: !98, size: 64, offset: 256)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !562, file: !563, line: 18, baseType: !98, size: 64, offset: 320)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !562, file: !563, line: 19, baseType: !572, size: 64, offset: 384)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !562, file: !563, line: 21, baseType: !575, size: 64, offset: 448)
!575 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !562, file: !563, line: 23, baseType: !575, size: 64, offset: 512)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !562, file: !563, line: 24, baseType: !575, size: 64, offset: 576)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !562, file: !563, line: 25, baseType: !575, size: 64, offset: 640)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !562, file: !563, line: 26, baseType: !575, size: 64, offset: 704)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !562, file: !563, line: 27, baseType: !575, size: 64, offset: 768)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !562, file: !563, line: 28, baseType: !575, size: 64, offset: 832)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !562, file: !563, line: 29, baseType: !575, size: 64, offset: 896)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !562, file: !563, line: 30, baseType: !575, size: 64, offset: 960)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !562, file: !563, line: 31, baseType: !575, size: 64, offset: 1024)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !562, file: !563, line: 32, baseType: !575, size: 64, offset: 1088)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !562, file: !563, line: 33, baseType: !575, size: 64, offset: 1152)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !540, file: !539, line: 63, baseType: !43, size: 32, offset: 1024)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !540, file: !539, line: 69, baseType: !62, size: 16, offset: 1056)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !540, file: !539, line: 70, baseType: !590, size: 16, offset: 1072)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !53, line: 18, baseType: !591)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !55, line: 23, baseType: !592)
!592 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !421, file: !418, line: 882, baseType: !98, size: 64, offset: 9024)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !421, file: !418, line: 885, baseType: !23, size: 32, offset: 9088)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !421, file: !418, line: 886, baseType: !596, size: 64, offset: 9152)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !418, line: 732, flags: DIFlagFwdDecl)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !421, file: !418, line: 901, baseType: !599, size: 64, offset: 9216)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !601, line: 18, flags: DIFlagFwdDecl)
!601 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!602 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !421, file: !418, line: 904, baseType: !445, size: 64, offset: 9280)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !421, file: !418, line: 906, baseType: !604, size: 64, offset: 9344)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !418, line: 906, flags: DIFlagFwdDecl)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !421, file: !418, line: 930, baseType: !43, size: 32, offset: 9408)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !421, file: !418, line: 933, baseType: !43, size: 32, offset: 9440)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !421, file: !418, line: 935, baseType: !609, size: 64, offset: 9472)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !610, line: 103, size: 64, elements: !611)
!610 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!611 = !{!612}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !609, file: !610, line: 104, baseType: !613, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !610, line: 101, flags: DIFlagFwdDecl)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !421, file: !418, line: 940, baseType: !471, size: 64, offset: 9536)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !421, file: !418, line: 942, baseType: !617, size: 256, offset: 9600)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !618, line: 98, size: 256, elements: !619)
!618 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!619 = !{!620, !621, !622}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !617, file: !618, line: 99, baseType: !471, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !617, file: !618, line: 100, baseType: !67, size: 128, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !617, file: !618, line: 101, baseType: !623, size: 64, offset: 192)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !618, line: 21, baseType: !624)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{null, !627}
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !417, file: !418, line: 986, baseType: !629, offset: 10240)
!629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, elements: !630)
!630 = !{!631}
!631 = !DISubrange(count: -1)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !90, file: !91, line: 882, baseType: !416, size: 64, offset: 9792)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !90, file: !91, line: 884, baseType: !6, size: 32, offset: 9856)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !90, file: !91, line: 885, baseType: !6, size: 32, offset: 9888)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !90, file: !91, line: 886, baseType: !6, size: 32, offset: 9920)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !90, file: !91, line: 888, baseType: !6, size: 32, offset: 9952)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !90, file: !91, line: 890, baseType: !98, size: 64, offset: 9984)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !90, file: !91, line: 893, baseType: !83, size: 32, offset: 10048)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !90, file: !91, line: 896, baseType: !83, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !90, file: !91, line: 897, baseType: !83, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !90, file: !91, line: 898, baseType: !83, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !90, file: !91, line: 899, baseType: !83, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !90, file: !91, line: 919, baseType: !83, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !90, file: !91, line: 922, baseType: !83, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !90, file: !91, line: 923, baseType: !83, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !90, file: !91, line: 925, baseType: !83, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !90, file: !91, line: 939, baseType: !83, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !90, file: !91, line: 941, baseType: !83, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !90, file: !91, line: 944, baseType: !83, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !90, file: !91, line: 956, baseType: !83, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !90, file: !91, line: 962, baseType: !83, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !90, file: !91, line: 966, baseType: !83, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !90, file: !91, line: 969, baseType: !98, size: 64, offset: 10176)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !90, file: !91, line: 971, baseType: !655, size: 448, offset: 10240)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !656, line: 25, size: 448, elements: !657)
!656 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!657 = !{!658, !659, !664}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !655, file: !656, line: 26, baseType: !98, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !655, file: !656, line: 27, baseType: !660, size: 64, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DISubroutineType(types: !662)
!662 = !{!575, !663}
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, scope: !655, file: !656, line: 28, baseType: !665, size: 320, offset: 128)
!665 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !655, file: !656, line: 28, size: 320, elements: !666)
!666 = !{!667, !677, !707}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !665, file: !656, line: 37, baseType: !668, size: 320)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !665, file: !656, line: 30, size: 320, elements: !669)
!669 = !{!670, !672, !673, !674, !675, !676}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !668, file: !656, line: 31, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !668, file: !656, line: 32, baseType: !101, size: 32, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !668, file: !656, line: 33, baseType: !101, size: 32, offset: 96)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !668, file: !656, line: 34, baseType: !101, size: 32, offset: 128)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !668, file: !656, line: 35, baseType: !160, size: 64, offset: 192)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !668, file: !656, line: 36, baseType: !671, size: 64, offset: 256)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !665, file: !656, line: 47, baseType: !678, size: 192)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !665, file: !656, line: 39, size: 192, elements: !679)
!679 = !{!680, !681, !687, !706}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !678, file: !656, line: 40, baseType: !281, size: 32)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !678, file: !656, line: 41, baseType: !682, size: 32, offset: 32)
!682 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !656, line: 16, baseType: !83, size: 32, elements: !683)
!683 = !{!684, !685, !686}
!684 = !DIEnumerator(name: "TT_NONE", value: 0)
!685 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!686 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!687 = !DIDerivedType(tag: DW_TAG_member, scope: !678, file: !656, line: 42, baseType: !688, size: 64, offset: 64)
!688 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !678, file: !656, line: 42, size: 64, elements: !689)
!689 = !{!690, !698}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !688, file: !656, line: 43, baseType: !691, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !693, line: 7, size: 128, elements: !694)
!693 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!694 = !{!695, !697}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !692, file: !693, line: 8, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !283, line: 93, baseType: !173)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !692, file: !693, line: 9, baseType: !173, size: 64, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !688, file: !656, line: 44, baseType: !699, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !701, line: 7, size: 64, elements: !702)
!701 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!702 = !{!703, !705}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !700, file: !701, line: 8, baseType: !704, size: 32)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !701, line: 5, baseType: !530)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !700, file: !701, line: 9, baseType: !530, size: 32, offset: 32)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !678, file: !656, line: 46, baseType: !160, size: 64, offset: 128)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !665, file: !656, line: 55, baseType: !708, size: 256)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !665, file: !656, line: 49, size: 256, elements: !709)
!709 = !{!710, !713, !714, !715, !716}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !708, file: !656, line: 50, baseType: !711, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !656, line: 14, flags: DIFlagFwdDecl)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !708, file: !656, line: 51, baseType: !6, size: 32, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !708, file: !656, line: 52, baseType: !6, size: 32, offset: 96)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !708, file: !656, line: 53, baseType: !98, size: 64, offset: 128)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !708, file: !656, line: 54, baseType: !98, size: 64, offset: 192)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !90, file: !91, line: 973, baseType: !718, size: 32, offset: 10688)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !44, line: 27, baseType: !719)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !283, line: 28, baseType: !6)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !90, file: !91, line: 974, baseType: !718, size: 32, offset: 10720)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !90, file: !91, line: 978, baseType: !98, size: 64, offset: 10752)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !90, file: !91, line: 987, baseType: !89, size: 64, offset: 10816)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !90, file: !91, line: 990, baseType: !89, size: 64, offset: 10880)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !90, file: !91, line: 995, baseType: !67, size: 128, offset: 10944)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !90, file: !91, line: 996, baseType: !67, size: 128, offset: 11072)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !90, file: !91, line: 997, baseType: !89, size: 64, offset: 11200)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !90, file: !91, line: 1005, baseType: !67, size: 128, offset: 11264)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !90, file: !91, line: 1006, baseType: !67, size: 128, offset: 11392)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !90, file: !91, line: 1009, baseType: !730, size: 64, offset: 11520)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !732, line: 59, size: 768, elements: !733)
!732 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!733 = !{!734, !735, !736, !737, !748, !749, !750, !751}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !731, file: !732, line: 61, baseType: !108, size: 32)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !731, file: !732, line: 62, baseType: !83, size: 32, offset: 32)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !731, file: !732, line: 63, baseType: !23, size: 32, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !731, file: !732, line: 65, baseType: !738, size: 256, offset: 128)
!738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !739, size: 256, elements: !532)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !44, line: 194, size: 64, elements: !740)
!740 = !{!741}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !739, file: !44, line: 195, baseType: !742, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !44, line: 198, size: 128, elements: !744)
!744 = !{!745, !746}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !743, file: !44, line: 199, baseType: !742, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !743, file: !44, line: 199, baseType: !747, size: 64, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !731, file: !732, line: 66, baseType: !739, size: 64, offset: 384)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !731, file: !732, line: 68, baseType: !18, size: 192, offset: 448)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !731, file: !732, line: 69, baseType: !73, size: 128, align: 64, offset: 640)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !731, file: !732, line: 70, baseType: !752, offset: 768)
!752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !753, elements: !630)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !732, line: 54, size: 128, elements: !754)
!754 = !{!755, !756}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !753, file: !732, line: 55, baseType: !6, size: 32)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !753, file: !732, line: 56, baseType: !757, size: 64, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !732, line: 56, flags: DIFlagFwdDecl)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !90, file: !91, line: 1010, baseType: !760, size: 512, offset: 11584)
!760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !743, size: 512, elements: !532)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !90, file: !91, line: 1011, baseType: !67, size: 128, offset: 12096)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !90, file: !91, line: 1012, baseType: !67, size: 128, offset: 12224)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !90, file: !91, line: 1014, baseType: !764, size: 64, offset: 12352)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !766, line: 26, size: 256, elements: !767)
!766 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!767 = !{!768, !769}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !765, file: !766, line: 27, baseType: !83, size: 32)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !765, file: !766, line: 28, baseType: !770, size: 192, offset: 64)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !771, line: 43, size: 192, elements: !772)
!771 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!772 = !{!773, !774}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !770, file: !771, line: 44, baseType: !258, size: 32)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !770, file: !771, line: 45, baseType: !67, size: 128, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !90, file: !91, line: 1017, baseType: !776, size: 64, offset: 12416)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !90, file: !91, line: 1020, baseType: !776, size: 64, offset: 12480)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !90, file: !91, line: 1023, baseType: !106, size: 64, offset: 12544)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !90, file: !91, line: 1025, baseType: !160, size: 64, offset: 12608)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !90, file: !91, line: 1026, baseType: !160, size: 64, offset: 12672)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !90, file: !91, line: 1031, baseType: !160, size: 64, offset: 12736)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !90, file: !91, line: 1032, baseType: !783, size: 192, offset: 12800)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !91, line: 324, size: 192, elements: !784)
!784 = !{!785, !786, !787}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !783, file: !91, line: 326, baseType: !160, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !783, file: !91, line: 327, baseType: !160, size: 64, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !783, file: !91, line: 328, baseType: !258, size: 32, offset: 128)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !90, file: !91, line: 1041, baseType: !98, size: 64, offset: 12992)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !90, file: !91, line: 1042, baseType: !98, size: 64, offset: 13056)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !90, file: !91, line: 1045, baseType: !160, size: 64, offset: 13120)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !90, file: !91, line: 1048, baseType: !160, size: 64, offset: 13184)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !90, file: !91, line: 1051, baseType: !98, size: 64, offset: 13248)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !90, file: !91, line: 1052, baseType: !98, size: 64, offset: 13312)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !90, file: !91, line: 1055, baseType: !795, size: 640, offset: 13376)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !796, line: 132, size: 640, elements: !797)
!796 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!797 = !{!798, !806, !807}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !795, file: !796, line: 133, baseType: !799, size: 576)
!799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !800, size: 576, elements: !804)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !796, line: 117, size: 192, elements: !801)
!801 = !{!802, !803}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !800, file: !796, line: 118, baseType: !160, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !800, file: !796, line: 119, baseType: !296, size: 128, offset: 64)
!804 = !{!805}
!805 = !DISubrange(count: 3)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !795, file: !796, line: 134, baseType: !83, size: 32, offset: 576)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !795, file: !796, line: 135, baseType: !83, size: 32, offset: 608)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !90, file: !91, line: 1058, baseType: !809, size: 448, offset: 14016)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !796, line: 144, size: 448, elements: !810)
!810 = !{!811, !812, !813}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !809, file: !796, line: 145, baseType: !73, size: 128, align: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !809, file: !796, line: 146, baseType: !551, size: 256, offset: 128)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !809, file: !796, line: 147, baseType: !83, size: 32, offset: 384)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !90, file: !91, line: 1064, baseType: !815, size: 64, offset: 14464)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !817)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !818, line: 110, size: 1472, elements: !819)
!818 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!819 = !{!820, !821, !828, !835, !836, !837, !838, !839, !840, !841, !842, !848, !849, !850, !851, !852, !853, !969, !970, !971, !972, !973, !996, !997, !1001, !1009}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !817, file: !818, line: 111, baseType: !471, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !817, file: !818, line: 112, baseType: !822, size: 32, offset: 64)
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !601, line: 23, baseType: !823)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !601, line: 21, size: 32, elements: !824)
!824 = !{!825}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !823, file: !601, line: 22, baseType: !826, size: 32)
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !44, line: 37, baseType: !827)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !283, line: 49, baseType: !83)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !817, file: !818, line: 113, baseType: !829, size: 32, offset: 96)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !601, line: 28, baseType: !830)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !601, line: 26, size: 32, elements: !831)
!831 = !{!832}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !830, file: !601, line: 27, baseType: !833, size: 32)
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !44, line: 38, baseType: !834)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !283, line: 50, baseType: !83)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !817, file: !818, line: 114, baseType: !822, size: 32, offset: 128)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !817, file: !818, line: 115, baseType: !829, size: 32, offset: 160)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !817, file: !818, line: 116, baseType: !822, size: 32, offset: 192)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !817, file: !818, line: 117, baseType: !829, size: 32, offset: 224)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !817, file: !818, line: 118, baseType: !822, size: 32, offset: 256)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !817, file: !818, line: 119, baseType: !829, size: 32, offset: 288)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !817, file: !818, line: 120, baseType: !83, size: 32, offset: 320)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !817, file: !818, line: 121, baseType: !843, size: 64, offset: 384)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !844, line: 24, baseType: !845)
!844 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !844, line: 24, size: 64, elements: !846)
!846 = !{!847}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !845, file: !844, line: 24, baseType: !160, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !817, file: !818, line: 122, baseType: !843, size: 64, offset: 448)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !817, file: !818, line: 123, baseType: !843, size: 64, offset: 512)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !817, file: !818, line: 124, baseType: !843, size: 64, offset: 576)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !817, file: !818, line: 125, baseType: !843, size: 64, offset: 640)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !817, file: !818, line: 127, baseType: !56, size: 8, offset: 704)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !817, file: !818, line: 129, baseType: !854, size: 64, offset: 768)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !856, line: 195, size: 1728, elements: !857)
!856 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!857 = !{!858, !859, !862, !867, !868, !871, !872, !879, !880, !881, !882, !885, !886, !887, !888, !889, !933, !954}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !855, file: !856, line: 196, baseType: !108, size: 32)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !855, file: !856, line: 197, baseType: !860, size: 32, offset: 32)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !856, line: 28, baseType: !861)
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !44, line: 104, baseType: !530)
!862 = !DIDerivedType(tag: DW_TAG_member, scope: !855, file: !856, line: 198, baseType: !863, size: 192, offset: 64)
!863 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !855, file: !856, line: 198, size: 192, elements: !864)
!864 = !{!865, !866}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !863, file: !856, line: 199, baseType: !67, size: 128)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !863, file: !856, line: 200, baseType: !152, size: 192, align: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !855, file: !856, line: 205, baseType: !480, size: 320, offset: 256)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !855, file: !856, line: 206, baseType: !869, size: 64, offset: 576)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !856, line: 206, flags: DIFlagFwdDecl)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !855, file: !856, line: 207, baseType: !106, size: 64, offset: 640)
!872 = !DIDerivedType(tag: DW_TAG_member, scope: !855, file: !856, line: 208, baseType: !873, size: 64, offset: 704)
!873 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !855, file: !856, line: 208, size: 64, elements: !874)
!874 = !{!875, !878}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !873, file: !856, line: 209, baseType: !876, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !877, line: 8, baseType: !172)
!877 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!878 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !873, file: !856, line: 210, baseType: !876, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !855, file: !856, line: 212, baseType: !876, size: 64, offset: 768)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !855, file: !856, line: 213, baseType: !822, size: 32, offset: 832)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !855, file: !856, line: 214, baseType: !829, size: 32, offset: 864)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !855, file: !856, line: 215, baseType: !883, size: 32, offset: 896)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !856, line: 31, baseType: !884)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !44, line: 110, baseType: !101)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !855, file: !856, line: 216, baseType: !64, size: 16, offset: 928)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !855, file: !856, line: 217, baseType: !64, size: 16, offset: 944)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !855, file: !856, line: 221, baseType: !592, size: 16, offset: 960)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !855, file: !856, line: 228, baseType: !98, size: 64, offset: 1024)
!889 = !DIDerivedType(tag: DW_TAG_member, scope: !855, file: !856, line: 245, baseType: !890, size: 320, offset: 1088)
!890 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !855, file: !856, line: 245, size: 320, elements: !891)
!891 = !{!892, !924}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !890, file: !856, line: 246, baseType: !893, size: 320)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !856, line: 114, size: 320, elements: !894)
!894 = !{!895, !896, !909, !912, !921}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !893, file: !856, line: 116, baseType: !98, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, scope: !893, file: !856, line: 117, baseType: !897, size: 64, offset: 64)
!897 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !893, file: !856, line: 117, size: 64, elements: !898)
!898 = !{!899, !908}
!899 = !DIDerivedType(tag: DW_TAG_member, scope: !897, file: !856, line: 118, baseType: !900, size: 64)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !897, file: !856, line: 118, size: 64, elements: !901)
!901 = !{!902, !903}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !900, file: !856, line: 120, baseType: !62, size: 16)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !900, file: !856, line: 121, baseType: !904, size: 48, offset: 16)
!904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !905, size: 48, elements: !906)
!905 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!906 = !{!907}
!907 = !DISubrange(count: 6)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !897, file: !856, line: 127, baseType: !98, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !893, file: !856, line: 129, baseType: !910, size: 64, offset: 128)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !856, line: 102, flags: DIFlagFwdDecl)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !893, file: !856, line: 130, baseType: !913, size: 64, offset: 192)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !856, line: 108, size: 192, elements: !915)
!915 = !{!916, !917, !918}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !914, file: !856, line: 109, baseType: !73, size: 128, align: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !914, file: !856, line: 110, baseType: !108, size: 32, offset: 128)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !914, file: !856, line: 111, baseType: !919, size: 8, offset: 160)
!919 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !44, line: 35, baseType: !920)
!920 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !893, file: !856, line: 131, baseType: !922, size: 64, offset: 256)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !905)
!924 = !DIDerivedType(tag: DW_TAG_member, scope: !890, file: !856, line: 247, baseType: !925, size: 320)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !890, file: !856, line: 247, size: 320, elements: !926)
!926 = !{!927, !928, !929, !930, !931}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !925, file: !856, line: 248, baseType: !98, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !925, file: !856, line: 249, baseType: !98, size: 64, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !925, file: !856, line: 250, baseType: !910, size: 64, offset: 128)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !925, file: !856, line: 251, baseType: !913, size: 64, offset: 192)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !925, file: !856, line: 252, baseType: !932, size: 64, offset: 256)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, scope: !855, file: !856, line: 260, baseType: !934, size: 256, offset: 1408)
!934 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !855, file: !856, line: 260, size: 256, elements: !935)
!935 = !{!936, !942}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !934, file: !856, line: 261, baseType: !937, size: 256)
!937 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !856, line: 134, size: 256, elements: !938)
!938 = !{!939, !940}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !937, file: !856, line: 135, baseType: !106, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !937, file: !856, line: 136, baseType: !941, size: 256)
!941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 256, elements: !532)
!942 = !DIDerivedType(tag: DW_TAG_member, scope: !934, file: !856, line: 262, baseType: !943, size: 256)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !934, file: !856, line: 262, size: 256, elements: !944)
!944 = !{!945, !946}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !943, file: !856, line: 264, baseType: !67, size: 128)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !943, file: !856, line: 265, baseType: !947, size: 128, offset: 128)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !948, line: 22, size: 128, elements: !949)
!948 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!949 = !{!950, !953}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !947, file: !948, line: 23, baseType: !951, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !948, line: 23, flags: DIFlagFwdDecl)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !947, file: !948, line: 24, baseType: !98, size: 64, offset: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !855, file: !856, line: 280, baseType: !955, size: 64, offset: 1664)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !856, line: 176, size: 192, elements: !957)
!957 = !{!958, !967, !968}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !956, file: !856, line: 177, baseType: !959, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !856, line: 171, baseType: !960)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DISubroutineType(types: !962)
!962 = !{!6, !854, !963, !965, !854}
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !911)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !937)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !956, file: !856, line: 178, baseType: !854, size: 64, offset: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !956, file: !856, line: 179, baseType: !910, size: 64, offset: 128)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !817, file: !818, line: 130, baseType: !854, size: 64, offset: 832)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !817, file: !818, line: 131, baseType: !854, size: 64, offset: 896)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !817, file: !818, line: 132, baseType: !854, size: 64, offset: 960)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !817, file: !818, line: 135, baseType: !106, size: 64, offset: 1024)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !817, file: !818, line: 137, baseType: !974, size: 64, offset: 1088)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !976, line: 14, size: 1088, elements: !977)
!976 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!977 = !{!978, !979, !980, !981, !982, !983, !984, !985}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !975, file: !976, line: 15, baseType: !108, size: 32)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !975, file: !976, line: 17, baseType: !522, size: 320, offset: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !975, file: !976, line: 19, baseType: !98, size: 64, offset: 384)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !975, file: !976, line: 20, baseType: !471, size: 64, offset: 448)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !975, file: !976, line: 23, baseType: !743, size: 128, offset: 512)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !975, file: !976, line: 24, baseType: !822, size: 32, offset: 640)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !975, file: !976, line: 29, baseType: !471, size: 64, offset: 704)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !975, file: !976, line: 36, baseType: !986, size: 320, offset: 768)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !987, line: 15, size: 320, elements: !988)
!987 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!988 = !{!989, !990, !991, !992, !993, !994, !995}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !986, file: !987, line: 16, baseType: !258, size: 32)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !986, file: !987, line: 18, baseType: !6, size: 32, offset: 32)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !986, file: !987, line: 19, baseType: !6, size: 32, offset: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !986, file: !987, line: 20, baseType: !6, size: 32, offset: 96)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !986, file: !987, line: 21, baseType: !6, size: 32, offset: 128)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !986, file: !987, line: 22, baseType: !98, size: 64, offset: 192)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !986, file: !987, line: 23, baseType: !98, size: 64, offset: 256)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !817, file: !818, line: 138, baseType: !599, size: 64, offset: 1152)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !817, file: !818, line: 139, baseType: !998, size: 64, offset: 1216)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1000, line: 16, flags: DIFlagFwdDecl)
!1000 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !817, file: !818, line: 140, baseType: !1002, size: 64, offset: 1280)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !818, line: 25, size: 64, elements: !1004)
!1004 = !{!1005, !1006, !1007}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1003, file: !818, line: 26, baseType: !43, size: 32)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1003, file: !818, line: 27, baseType: !6, size: 32, offset: 32)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1003, file: !818, line: 28, baseType: !1008, offset: 64)
!1008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !829, elements: !630)
!1009 = !DIDerivedType(tag: DW_TAG_member, scope: !817, file: !818, line: 142, baseType: !1010, size: 128, offset: 1344)
!1010 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !817, file: !818, line: 142, size: 128, elements: !1011)
!1011 = !{!1012, !1013}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1010, file: !818, line: 143, baseType: !6, size: 32)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1010, file: !818, line: 144, baseType: !73, size: 128, align: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !90, file: !91, line: 1067, baseType: !815, size: 64, offset: 14528)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !90, file: !91, line: 1070, baseType: !815, size: 64, offset: 14592)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !90, file: !91, line: 1074, baseType: !854, size: 64, offset: 14656)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !90, file: !91, line: 1084, baseType: !1018, size: 128, offset: 14720)
!1018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !905, size: 128, elements: !1019)
!1019 = !{!1020}
!1020 = !DISubrange(count: 16)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !90, file: !91, line: 1086, baseType: !1022, size: 64, offset: 14848)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !91, line: 55, flags: DIFlagFwdDecl)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !90, file: !91, line: 1089, baseType: !1025, size: 64, offset: 14912)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1026, line: 12, size: 64, elements: !1027)
!1026 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1027 = !{!1028}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1025, file: !1026, line: 13, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1026, line: 8, flags: DIFlagFwdDecl)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !90, file: !91, line: 1090, baseType: !1032, size: 128, offset: 14976)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1033, line: 13, size: 128, elements: !1034)
!1033 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1034 = !{!1035}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1032, file: !1033, line: 14, baseType: !67, size: 128)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !90, file: !91, line: 1097, baseType: !1037, size: 64, offset: 15104)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !91, line: 50, flags: DIFlagFwdDecl)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !90, file: !91, line: 1100, baseType: !1040, size: 64, offset: 15168)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !91, line: 1100, flags: DIFlagFwdDecl)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !90, file: !91, line: 1103, baseType: !1043, size: 64, offset: 15232)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !91, line: 53, flags: DIFlagFwdDecl)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !90, file: !91, line: 1107, baseType: !1046, size: 64, offset: 15296)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !91, line: 56, flags: DIFlagFwdDecl)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !90, file: !91, line: 1110, baseType: !1049, size: 64, offset: 15360)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1051, line: 93, size: 8768, elements: !1052)
!1051 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!1052 = !{!1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1102, !1111, !1112, !1114, !1115, !1116, !1119, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1161, !1162, !1170, !1180, !1183, !1184, !1187, !1188, !1189, !1190, !1191, !1192}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1050, file: !1051, line: 94, baseType: !108, size: 32)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1050, file: !1051, line: 95, baseType: !43, size: 32, offset: 32)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1050, file: !1051, line: 96, baseType: !6, size: 32, offset: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !1050, file: !1051, line: 97, baseType: !6, size: 32, offset: 96)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1050, file: !1051, line: 98, baseType: !67, size: 128, offset: 128)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1050, file: !1051, line: 100, baseType: !18, size: 192, offset: 256)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1050, file: !1051, line: 103, baseType: !89, size: 64, offset: 448)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1050, file: !1051, line: 106, baseType: !1061, size: 192, offset: 512)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1000, line: 32, size: 192, elements: !1062)
!1062 = !{!1063, !1064}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1061, file: !1000, line: 33, baseType: !67, size: 128)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1061, file: !1000, line: 34, baseType: !1065, size: 64, offset: 128)
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1066, line: 25, baseType: !1067)
!1066 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1066, line: 23, size: 64, elements: !1068)
!1068 = !{!1069}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1067, file: !1066, line: 24, baseType: !367, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1050, file: !1051, line: 109, baseType: !739, size: 64, offset: 704)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1050, file: !1051, line: 112, baseType: !6, size: 32, offset: 768)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1050, file: !1051, line: 114, baseType: !6, size: 32, offset: 800)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !1050, file: !1051, line: 115, baseType: !89, size: 64, offset: 832)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1050, file: !1051, line: 118, baseType: !6, size: 32, offset: 896)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1050, file: !1051, line: 119, baseType: !83, size: 32, offset: 928)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1050, file: !1051, line: 121, baseType: !1077, size: 64, offset: 960)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1051, line: 80, size: 448, elements: !1079)
!1079 = !{!1080, !1081, !1087}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1078, file: !1051, line: 81, baseType: !43, size: 32)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1078, file: !1051, line: 82, baseType: !1082, size: 128, offset: 64)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1051, line: 75, size: 128, elements: !1083)
!1083 = !{!1084, !1085}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1082, file: !1051, line: 76, baseType: !89, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1082, file: !1051, line: 77, baseType: !1086, size: 64, offset: 64)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1078, file: !1051, line: 83, baseType: !765, size: 256, offset: 192)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1050, file: !1051, line: 132, baseType: !83, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1050, file: !1051, line: 133, baseType: !83, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !1050, file: !1051, line: 138, baseType: !83, size: 32, offset: 1056)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1050, file: !1051, line: 139, baseType: !67, size: 128, offset: 1088)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1050, file: !1051, line: 142, baseType: !228, size: 512, offset: 1216)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1050, file: !1051, line: 143, baseType: !237, size: 64, offset: 1728)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1050, file: !1051, line: 150, baseType: !1095, size: 256, offset: 1792)
!1095 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1096, size: 256, elements: !1100)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1051, line: 38, size: 128, elements: !1097)
!1097 = !{!1098, !1099}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1096, file: !1051, line: 39, baseType: !160, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1096, file: !1051, line: 40, baseType: !160, size: 64, offset: 64)
!1100 = !{!1101}
!1101 = !DISubrange(count: 2)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1050, file: !1051, line: 156, baseType: !1103, size: 192, offset: 2048)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1051, line: 66, size: 192, elements: !1104)
!1104 = !{!1105}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1103, file: !1051, line: 67, baseType: !1106, size: 192)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1051, line: 47, size: 192, elements: !1107)
!1107 = !{!1108, !1109, !1110}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1106, file: !1051, line: 48, baseType: !473, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1106, file: !1051, line: 49, baseType: !473, size: 64, offset: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1106, file: !1051, line: 50, baseType: !473, size: 64, offset: 128)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1050, file: !1051, line: 160, baseType: !795, size: 640, offset: 2240)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1050, file: !1051, line: 163, baseType: !1113, size: 256, offset: 2880)
!1113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !730, size: 256, elements: !532)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1050, file: !1051, line: 169, baseType: !730, size: 64, offset: 3136)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1050, file: !1051, line: 172, baseType: !6, size: 32, offset: 3200)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1050, file: !1051, line: 174, baseType: !1117, size: 64, offset: 3264)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1051, line: 174, flags: DIFlagFwdDecl)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1050, file: !1051, line: 185, baseType: !1120, size: 64, offset: 3328)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !286, line: 860, baseType: !1121)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !286, line: 853, size: 64, elements: !1122)
!1122 = !{!1123, !1128}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1121, file: !286, line: 858, baseType: !1124, size: 32)
!1124 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !286, line: 275, baseType: !1125)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !286, line: 275, size: 32, elements: !1126)
!1126 = !{!1127}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1125, file: !286, line: 275, baseType: !290, size: 32)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1121, file: !286, line: 859, baseType: !23, size: 32, offset: 32)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1050, file: !1051, line: 186, baseType: !160, size: 64, offset: 3392)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1050, file: !1051, line: 186, baseType: !160, size: 64, offset: 3456)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1050, file: !1051, line: 186, baseType: !160, size: 64, offset: 3520)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1050, file: !1051, line: 186, baseType: !160, size: 64, offset: 3584)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1050, file: !1051, line: 187, baseType: !160, size: 64, offset: 3648)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1050, file: !1051, line: 188, baseType: !160, size: 64, offset: 3712)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1050, file: !1051, line: 189, baseType: !783, size: 192, offset: 3776)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1050, file: !1051, line: 190, baseType: !98, size: 64, offset: 3968)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1050, file: !1051, line: 190, baseType: !98, size: 64, offset: 4032)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1050, file: !1051, line: 190, baseType: !98, size: 64, offset: 4096)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1050, file: !1051, line: 190, baseType: !98, size: 64, offset: 4160)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1050, file: !1051, line: 191, baseType: !98, size: 64, offset: 4224)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1050, file: !1051, line: 191, baseType: !98, size: 64, offset: 4288)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1050, file: !1051, line: 191, baseType: !98, size: 64, offset: 4352)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1050, file: !1051, line: 191, baseType: !98, size: 64, offset: 4416)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1050, file: !1051, line: 192, baseType: !98, size: 64, offset: 4480)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1050, file: !1051, line: 192, baseType: !98, size: 64, offset: 4544)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1050, file: !1051, line: 192, baseType: !98, size: 64, offset: 4608)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1050, file: !1051, line: 192, baseType: !98, size: 64, offset: 4672)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1050, file: !1051, line: 193, baseType: !98, size: 64, offset: 4736)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1050, file: !1051, line: 193, baseType: !98, size: 64, offset: 4800)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1050, file: !1051, line: 194, baseType: !1151, size: 448, offset: 4864)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1152, line: 12, size: 448, elements: !1153)
!1152 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1153 = !{!1154, !1155, !1156, !1157, !1158, !1159, !1160}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1151, file: !1152, line: 15, baseType: !160, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1151, file: !1152, line: 17, baseType: !160, size: 64, offset: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1151, file: !1152, line: 19, baseType: !160, size: 64, offset: 128)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1151, file: !1152, line: 21, baseType: !160, size: 64, offset: 192)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1151, file: !1152, line: 29, baseType: !160, size: 64, offset: 256)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1151, file: !1152, line: 35, baseType: !160, size: 64, offset: 320)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1151, file: !1152, line: 44, baseType: !160, size: 64, offset: 384)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1050, file: !1051, line: 202, baseType: !162, size: 64, offset: 5312)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1050, file: !1051, line: 213, baseType: !1163, size: 2048, offset: 5376)
!1163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1164, size: 2048, elements: !1019)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1165, line: 43, size: 128, elements: !1166)
!1165 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!1166 = !{!1167, !1169}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1164, file: !1165, line: 44, baseType: !1168, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !283, line: 16, baseType: !98)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1164, file: !1165, line: 45, baseType: !1168, size: 64, offset: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !1050, file: !1051, line: 216, baseType: !1171, size: 448, offset: 7424)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !1051, line: 30, size: 448, elements: !1172)
!1172 = !{!1173, !1174, !1175, !1176, !1177, !1178, !1179}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !1171, file: !1051, line: 31, baseType: !6, size: 32)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !1171, file: !1051, line: 32, baseType: !575, size: 64, offset: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !1171, file: !1051, line: 33, baseType: !98, size: 64, offset: 128)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !1171, file: !1051, line: 34, baseType: !160, size: 64, offset: 192)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !1171, file: !1051, line: 34, baseType: !160, size: 64, offset: 256)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !1171, file: !1051, line: 35, baseType: !98, size: 64, offset: 320)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !1171, file: !1051, line: 35, baseType: !98, size: 64, offset: 384)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1050, file: !1051, line: 219, baseType: !1181, size: 64, offset: 7872)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !1051, line: 219, flags: DIFlagFwdDecl)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !1050, file: !1051, line: 222, baseType: !83, size: 32, offset: 7936)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !1050, file: !1051, line: 223, baseType: !1185, size: 64, offset: 8000)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !1051, line: 223, flags: DIFlagFwdDecl)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1050, file: !1051, line: 230, baseType: !919, size: 8, offset: 8064)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1050, file: !1051, line: 231, baseType: !592, size: 16, offset: 8080)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1050, file: !1051, line: 232, baseType: !592, size: 16, offset: 8096)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1050, file: !1051, line: 234, baseType: !416, size: 64, offset: 8128)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1050, file: !1051, line: 237, baseType: !551, size: 256, offset: 8192)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !1050, file: !1051, line: 243, baseType: !480, size: 320, offset: 8448)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !90, file: !91, line: 1111, baseType: !1194, size: 64, offset: 15424)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1051, line: 20, size: 16640, elements: !1196)
!1196 = !{!1197, !1198, !1199, !1200}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1195, file: !1051, line: 21, baseType: !23, size: 32)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1195, file: !1051, line: 22, baseType: !108, size: 32, offset: 32)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1195, file: !1051, line: 23, baseType: !18, size: 192, offset: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1195, file: !1051, line: 24, baseType: !1201, size: 16384, offset: 256)
!1201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1202, size: 16384, elements: !1222)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1000, line: 51, size: 256, elements: !1203)
!1203 = !{!1204}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1202, file: !1000, line: 52, baseType: !1205, size: 256)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1000, line: 37, size: 256, elements: !1206)
!1206 = !{!1207, !1214, !1215, !1221}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1205, file: !1000, line: 39, baseType: !1208, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1209, line: 83, baseType: !1210)
!1209 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1209, line: 82, baseType: !1212)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{null, !6}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1205, file: !1000, line: 40, baseType: !98, size: 64, offset: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1205, file: !1000, line: 46, baseType: !1216, size: 64, offset: 128)
!1216 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1209, line: 86, baseType: !1217)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1209, line: 85, baseType: !1219)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{null}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1205, file: !1000, line: 48, baseType: !1065, size: 64, offset: 192)
!1222 = !{!1223}
!1223 = !DISubrange(count: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !90, file: !91, line: 1112, baseType: !1065, size: 64, offset: 15488)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !90, file: !91, line: 1113, baseType: !1065, size: 64, offset: 15552)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !90, file: !91, line: 1115, baseType: !1065, size: 64, offset: 15616)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !90, file: !91, line: 1116, baseType: !1061, size: 192, offset: 15680)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !90, file: !91, line: 1117, baseType: !98, size: 64, offset: 15872)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !90, file: !91, line: 1118, baseType: !1230, size: 64, offset: 15936)
!1230 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !44, line: 61, baseType: !1231)
!1231 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !283, line: 72, baseType: !1168)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !90, file: !91, line: 1119, baseType: !83, size: 32, offset: 16000)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !90, file: !91, line: 1121, baseType: !76, size: 64, offset: 16064)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !90, file: !91, line: 1125, baseType: !1235, size: 64, offset: 16128)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !91, line: 43, flags: DIFlagFwdDecl)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !90, file: !91, line: 1127, baseType: !822, size: 32, offset: 16192)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !90, file: !91, line: 1128, baseType: !83, size: 32, offset: 16224)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !90, file: !91, line: 1130, baseType: !1240, size: 128, offset: 16256)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1241, line: 37, size: 128, elements: !1242)
!1241 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!1242 = !{!1243, !1244, !1245}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1240, file: !1241, line: 38, baseType: !6, size: 32)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1240, file: !1241, line: 39, baseType: !43, size: 32, offset: 32)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1240, file: !1241, line: 40, baseType: !1246, size: 64, offset: 64)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1241, line: 24, flags: DIFlagFwdDecl)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !90, file: !91, line: 1131, baseType: !1249, size: 256, offset: 16384)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !1250, line: 12, size: 256, elements: !1251)
!1250 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!1251 = !{!1252, !1253, !1254, !1255}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !1249, file: !1250, line: 13, baseType: !932, size: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1249, file: !1250, line: 14, baseType: !98, size: 64, offset: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1249, file: !1250, line: 15, baseType: !98, size: 64, offset: 128)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !1249, file: !1250, line: 16, baseType: !919, size: 8, offset: 192)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !90, file: !91, line: 1134, baseType: !160, size: 64, offset: 16640)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !90, file: !91, line: 1135, baseType: !160, size: 64, offset: 16704)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !90, file: !91, line: 1138, baseType: !23, size: 32, offset: 16768)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !90, file: !91, line: 1141, baseType: !258, size: 32, offset: 16800)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !90, file: !91, line: 1143, baseType: !1261, size: 64, offset: 16832)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !91, line: 735, size: 64, elements: !1262)
!1262 = !{!1263}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1261, file: !91, line: 736, baseType: !1264, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !90, file: !91, line: 1147, baseType: !299, size: 128, offset: 16896)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !90, file: !91, line: 1149, baseType: !89, size: 64, offset: 17024)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !90, file: !91, line: 1151, baseType: !1268, size: 64, offset: 17088)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !91, line: 1151, flags: DIFlagFwdDecl)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !90, file: !91, line: 1188, baseType: !106, size: 64, offset: 17152)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !90, file: !91, line: 1191, baseType: !1272, size: 64, offset: 17216)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !91, line: 44, flags: DIFlagFwdDecl)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !90, file: !91, line: 1194, baseType: !1275, size: 64, offset: 17280)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !91, line: 45, flags: DIFlagFwdDecl)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !90, file: !91, line: 1197, baseType: !1278, size: 64, offset: 17344)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !91, line: 61, flags: DIFlagFwdDecl)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !90, file: !91, line: 1199, baseType: !1281, size: 64, offset: 17408)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !91, line: 52, flags: DIFlagFwdDecl)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !90, file: !91, line: 1202, baseType: !1284, size: 64, offset: 17472)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !91, line: 48, flags: DIFlagFwdDecl)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !90, file: !91, line: 1205, baseType: !98, size: 64, offset: 17536)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !90, file: !91, line: 1206, baseType: !1288, size: 64, offset: 17600)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1000, line: 14, baseType: !1290)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1000, line: 12, size: 384, elements: !1291)
!1291 = !{!1292}
!1292 = !DIDerivedType(tag: DW_TAG_member, scope: !1290, file: !1000, line: 13, baseType: !1293, size: 384)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1290, file: !1000, line: 13, size: 384, elements: !1294)
!1294 = !{!1295, !1296, !1297, !1298}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1293, file: !1000, line: 13, baseType: !6, size: 32)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1293, file: !1000, line: 13, baseType: !6, size: 32, offset: 32)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1293, file: !1000, line: 13, baseType: !6, size: 32, offset: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1293, file: !1000, line: 13, baseType: !1299, size: 256, offset: 128)
!1299 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1300, line: 37, size: 256, elements: !1301)
!1300 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!1301 = !{!1302, !1307, !1320, !1326, !1336, !1363, !1368}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1299, file: !1300, line: 42, baseType: !1303, size: 64)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1299, file: !1300, line: 39, size: 64, elements: !1304)
!1304 = !{!1305, !1306}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1303, file: !1300, line: 40, baseType: !719, size: 32)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1303, file: !1300, line: 41, baseType: !827, size: 32, offset: 32)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1299, file: !1300, line: 50, baseType: !1308, size: 192)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1299, file: !1300, line: 45, size: 192, elements: !1309)
!1309 = !{!1310, !1312, !1313, !1319}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1308, file: !1300, line: 46, baseType: !1311, size: 32)
!1311 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !283, line: 95, baseType: !6)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1308, file: !1300, line: 47, baseType: !6, size: 32, offset: 32)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1308, file: !1300, line: 48, baseType: !1314, size: 64, offset: 64)
!1314 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1300, line: 11, baseType: !1315)
!1315 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1300, line: 8, size: 64, elements: !1316)
!1316 = !{!1317, !1318}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1315, file: !1300, line: 9, baseType: !6, size: 32)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1315, file: !1300, line: 10, baseType: !106, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1308, file: !1300, line: 49, baseType: !6, size: 32, offset: 128)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1299, file: !1300, line: 57, baseType: !1321, size: 128)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1299, file: !1300, line: 53, size: 128, elements: !1322)
!1322 = !{!1323, !1324, !1325}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1321, file: !1300, line: 54, baseType: !719, size: 32)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1321, file: !1300, line: 55, baseType: !827, size: 32, offset: 32)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1321, file: !1300, line: 56, baseType: !1314, size: 64, offset: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1299, file: !1300, line: 66, baseType: !1327, size: 256)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1299, file: !1300, line: 60, size: 256, elements: !1328)
!1328 = !{!1329, !1330, !1331, !1332, !1335}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1327, file: !1300, line: 61, baseType: !719, size: 32)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1327, file: !1300, line: 62, baseType: !827, size: 32, offset: 32)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1327, file: !1300, line: 63, baseType: !6, size: 32, offset: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1327, file: !1300, line: 64, baseType: !1333, size: 64, offset: 128)
!1333 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !283, line: 94, baseType: !1334)
!1334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !283, line: 15, baseType: !575)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1327, file: !1300, line: 65, baseType: !1333, size: 64, offset: 192)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1299, file: !1300, line: 105, baseType: !1337, size: 256)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1299, file: !1300, line: 69, size: 256, elements: !1338)
!1338 = !{!1339, !1340}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1337, file: !1300, line: 70, baseType: !106, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, scope: !1337, file: !1300, line: 79, baseType: !1341, size: 192, offset: 64)
!1341 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1337, file: !1300, line: 79, size: 192, elements: !1342)
!1342 = !{!1343, !1344, !1345, !1352, !1357}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !1341, file: !1300, line: 81, baseType: !6, size: 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1341, file: !1300, line: 86, baseType: !592, size: 16)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1341, file: !1300, line: 92, baseType: !1346, size: 192)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1341, file: !1300, line: 88, size: 192, elements: !1347)
!1347 = !{!1348, !1350, !1351}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1346, file: !1300, line: 89, baseType: !1349, size: 64)
!1349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !905, size: 64, elements: !277)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1346, file: !1300, line: 90, baseType: !106, size: 64, offset: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1346, file: !1300, line: 91, baseType: !106, size: 64, offset: 128)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1341, file: !1300, line: 97, baseType: !1353, size: 96)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1341, file: !1300, line: 94, size: 96, elements: !1354)
!1354 = !{!1355, !1356}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1353, file: !1300, line: 95, baseType: !1349, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1353, file: !1300, line: 96, baseType: !102, size: 32, offset: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !1341, file: !1300, line: 103, baseType: !1358, size: 128)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1341, file: !1300, line: 99, size: 128, elements: !1359)
!1359 = !{!1360, !1361, !1362}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !1358, file: !1300, line: 100, baseType: !98, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !1358, file: !1300, line: 101, baseType: !102, size: 32, offset: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1358, file: !1300, line: 102, baseType: !102, size: 32, offset: 96)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1299, file: !1300, line: 111, baseType: !1364, size: 128)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1299, file: !1300, line: 108, size: 128, elements: !1365)
!1365 = !{!1366, !1367}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1364, file: !1300, line: 109, baseType: !575, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1364, file: !1300, line: 110, baseType: !6, size: 32, offset: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1299, file: !1300, line: 118, baseType: !1369, size: 128)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1299, file: !1300, line: 114, size: 128, elements: !1370)
!1370 = !{!1371, !1372, !1373}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1369, file: !1300, line: 115, baseType: !106, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1369, file: !1300, line: 116, baseType: !6, size: 32, offset: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1369, file: !1300, line: 117, baseType: !83, size: 32, offset: 96)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !90, file: !91, line: 1208, baseType: !1151, size: 448, offset: 17664)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !90, file: !91, line: 1215, baseType: !160, size: 64, offset: 18112)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !90, file: !91, line: 1217, baseType: !160, size: 64, offset: 18176)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !90, file: !91, line: 1219, baseType: !160, size: 64, offset: 18240)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !90, file: !91, line: 1223, baseType: !1379, size: 64, offset: 18304)
!1379 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !1380, line: 99, baseType: !1381)
!1380 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1380, line: 99, size: 64, elements: !1382)
!1382 = !{!1383}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1381, file: !1380, line: 99, baseType: !367, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !90, file: !91, line: 1225, baseType: !1124, size: 32, offset: 18368)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !90, file: !91, line: 1226, baseType: !6, size: 32, offset: 18400)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !90, file: !91, line: 1227, baseType: !6, size: 32, offset: 18432)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !90, file: !91, line: 1231, baseType: !1388, size: 64, offset: 18496)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !91, line: 1231, flags: DIFlagFwdDecl)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !90, file: !91, line: 1233, baseType: !67, size: 128, offset: 18560)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !90, file: !91, line: 1240, baseType: !1392, size: 64, offset: 18688)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !91, line: 62, flags: DIFlagFwdDecl)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !90, file: !91, line: 1242, baseType: !1395, size: 64, offset: 18752)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !91, line: 1242, flags: DIFlagFwdDecl)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !90, file: !91, line: 1244, baseType: !67, size: 128, offset: 18816)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !90, file: !91, line: 1245, baseType: !1399, size: 64, offset: 18944)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !91, line: 51, flags: DIFlagFwdDecl)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !90, file: !91, line: 1246, baseType: !551, size: 256, offset: 19008)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !90, file: !91, line: 1247, baseType: !83, size: 32, offset: 19264)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !90, file: !91, line: 1250, baseType: !1404, size: 64, offset: 19328)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !91, line: 57, flags: DIFlagFwdDecl)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !90, file: !91, line: 1251, baseType: !551, size: 256, offset: 19392)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !90, file: !91, line: 1252, baseType: !67, size: 128, offset: 19648)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !90, file: !91, line: 1259, baseType: !1409, size: 64, offset: 19776)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !91, line: 54, flags: DIFlagFwdDecl)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !90, file: !91, line: 1260, baseType: !592, size: 16, offset: 19840)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !90, file: !91, line: 1261, baseType: !592, size: 16, offset: 19856)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !90, file: !91, line: 1314, baseType: !1414, size: 64, offset: 19904)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1416, line: 62, size: 256, align: 256, elements: !1417)
!1416 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!1417 = !{!1418, !1419, !1420, !1421, !1422, !1423, !1424}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1415, file: !1416, line: 75, baseType: !102, size: 32)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1415, file: !1416, line: 90, baseType: !102, size: 32, offset: 32)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1415, file: !1416, line: 112, baseType: !161, size: 64, offset: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1415, file: !1416, line: 132, baseType: !102, size: 32, offset: 128)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !1415, file: !1416, line: 140, baseType: !102, size: 32, offset: 160)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1415, file: !1416, line: 149, baseType: !102, size: 32, offset: 192)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1415, file: !1416, line: 154, baseType: !1425, offset: 224)
!1425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !905, elements: !630)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !90, file: !91, line: 1315, baseType: !101, size: 32, offset: 19968)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !90, file: !91, line: 1316, baseType: !101, size: 32, offset: 20000)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !90, file: !91, line: 1321, baseType: !98, size: 64, offset: 20032)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !90, file: !91, line: 1325, baseType: !6, size: 32, offset: 20096)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !90, file: !91, line: 1326, baseType: !6, size: 32, offset: 20128)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !90, file: !91, line: 1327, baseType: !6, size: 32, offset: 20160)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !90, file: !91, line: 1328, baseType: !6, size: 32, offset: 20192)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !90, file: !91, line: 1329, baseType: !73, size: 128, align: 64, offset: 20224)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !90, file: !91, line: 1332, baseType: !1435, size: 128, offset: 20352)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1436, line: 51, size: 128, elements: !1437)
!1436 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!1437 = !{!1438, !1443, !1444}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1435, file: !1436, line: 60, baseType: !1439, size: 64)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1440, line: 7, size: 64, elements: !1441)
!1440 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!1441 = !{!1442}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1439, file: !1440, line: 12, baseType: !364, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1435, file: !1436, line: 63, baseType: !919, size: 8, offset: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1435, file: !1436, line: 70, baseType: !919, size: 8, offset: 72)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !90, file: !91, line: 1335, baseType: !1446, size: 64, offset: 20480)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !91, line: 59, flags: DIFlagFwdDecl)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !90, file: !91, line: 1337, baseType: !1449, size: 128, offset: 20544)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1436, line: 39, size: 128, elements: !1450)
!1450 = !{!1451, !1514, !1515}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1449, file: !1436, line: 40, baseType: !1452, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !418, line: 74, size: 512, align: 128, elements: !1454)
!1454 = !{!1455, !1456, !1508, !1513}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1453, file: !418, line: 75, baseType: !98, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, scope: !1453, file: !418, line: 83, baseType: !1457, size: 320, offset: 64)
!1457 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1453, file: !418, line: 83, size: 320, elements: !1458)
!1458 = !{!1459, !1482, !1496, !1500, !1507}
!1459 = !DIDerivedType(tag: DW_TAG_member, scope: !1457, file: !418, line: 84, baseType: !1460, size: 320)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1457, file: !418, line: 84, size: 320, elements: !1461)
!1461 = !{!1462, !1473, !1476, !1481}
!1462 = !DIDerivedType(tag: DW_TAG_member, scope: !1460, file: !418, line: 90, baseType: !1463, size: 128)
!1463 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1460, file: !418, line: 90, size: 128, elements: !1464)
!1464 = !{!1465, !1466, !1471, !1472}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1463, file: !418, line: 91, baseType: !67, size: 128)
!1466 = !DIDerivedType(tag: DW_TAG_member, scope: !1463, file: !418, line: 94, baseType: !1467, size: 128)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1463, file: !418, line: 94, size: 128, elements: !1468)
!1468 = !{!1469, !1470}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1467, file: !418, line: 96, baseType: !106, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1467, file: !418, line: 98, baseType: !83, size: 32, offset: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1463, file: !418, line: 102, baseType: !67, size: 128)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1463, file: !418, line: 103, baseType: !67, size: 128)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1460, file: !418, line: 106, baseType: !1474, size: 64, offset: 128)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !418, line: 32, flags: DIFlagFwdDecl)
!1476 = !DIDerivedType(tag: DW_TAG_member, scope: !1460, file: !418, line: 107, baseType: !1477, size: 64, offset: 192)
!1477 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1460, file: !418, line: 107, size: 64, elements: !1478)
!1478 = !{!1479, !1480}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1477, file: !418, line: 108, baseType: !98, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1477, file: !418, line: 109, baseType: !98, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1460, file: !418, line: 117, baseType: !98, size: 64, offset: 256)
!1482 = !DIDerivedType(tag: DW_TAG_member, scope: !1457, file: !418, line: 119, baseType: !1483, size: 320)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1457, file: !418, line: 119, size: 320, elements: !1484)
!1484 = !{!1485, !1486, !1489, !1490, !1491}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1483, file: !418, line: 124, baseType: !98, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1483, file: !418, line: 125, baseType: !1487, size: 64, offset: 64)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !418, line: 125, flags: DIFlagFwdDecl)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1483, file: !418, line: 126, baseType: !98, size: 64, offset: 128)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1483, file: !418, line: 127, baseType: !98, size: 64, offset: 192)
!1491 = !DIDerivedType(tag: DW_TAG_member, scope: !1483, file: !418, line: 128, baseType: !1492, size: 64, offset: 256)
!1492 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1483, file: !418, line: 128, size: 64, elements: !1493)
!1493 = !{!1494, !1495}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1492, file: !418, line: 133, baseType: !98, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1492, file: !418, line: 138, baseType: !471, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, scope: !1457, file: !418, line: 141, baseType: !1497, size: 64)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1457, file: !418, line: 141, size: 64, elements: !1498)
!1498 = !{!1499}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1497, file: !418, line: 142, baseType: !98, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, scope: !1457, file: !418, line: 144, baseType: !1501, size: 128)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1457, file: !418, line: 144, size: 128, elements: !1502)
!1502 = !{!1503, !1506}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1501, file: !418, line: 146, baseType: !1504, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !418, line: 146, flags: DIFlagFwdDecl)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1501, file: !418, line: 147, baseType: !106, size: 64, offset: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1457, file: !418, line: 161, baseType: !73, size: 128, align: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, scope: !1453, file: !418, line: 164, baseType: !1509, size: 32, offset: 384)
!1509 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1453, file: !418, line: 164, size: 32, elements: !1510)
!1510 = !{!1511, !1512}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1509, file: !418, line: 169, baseType: !43, size: 32)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1509, file: !418, line: 177, baseType: !83, size: 32)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1453, file: !418, line: 181, baseType: !43, size: 32, offset: 416)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1449, file: !1436, line: 42, baseType: !102, size: 32, offset: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1449, file: !1436, line: 43, baseType: !102, size: 32, offset: 96)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !90, file: !91, line: 1340, baseType: !1517, size: 64, offset: 20672)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !91, line: 69, flags: DIFlagFwdDecl)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !90, file: !91, line: 1351, baseType: !6, size: 32, offset: 20736)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !90, file: !91, line: 1352, baseType: !6, size: 32, offset: 20768)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !90, file: !91, line: 1354, baseType: !98, size: 64, offset: 20800)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !90, file: !91, line: 1364, baseType: !160, size: 64, offset: 20864)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !90, file: !91, line: 1365, baseType: !160, size: 64, offset: 20928)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !90, file: !91, line: 1412, baseType: !98, size: 64, offset: 20992)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !90, file: !91, line: 1453, baseType: !1526, size: 64, offset: 21056)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !91, line: 1453, flags: DIFlagFwdDecl)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !90, file: !91, line: 1457, baseType: !1529, size: 64, offset: 21120)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !610, line: 61, size: 576, elements: !1531)
!1531 = !{!1532, !1539, !1558, !1561, !1562, !1595, !1605}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1530, file: !610, line: 62, baseType: !1533, size: 32)
!1533 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !610, line: 51, baseType: !83, size: 32, elements: !1534)
!1534 = !{!1535, !1536, !1537, !1538}
!1535 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!1536 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!1537 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!1538 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!1539 = !DIDerivedType(tag: DW_TAG_member, scope: !1530, file: !610, line: 64, baseType: !1540, size: 192, offset: 64)
!1540 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1530, file: !610, line: 64, size: 192, elements: !1541)
!1541 = !{!1542, !1553}
!1542 = !DIDerivedType(tag: DW_TAG_member, scope: !1540, file: !610, line: 65, baseType: !1543, size: 192)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1540, file: !610, line: 65, size: 192, elements: !1544)
!1544 = !{!1545, !1552}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !1543, file: !610, line: 66, baseType: !1546, size: 128)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !1547, line: 50, size: 128, elements: !1548)
!1547 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!1548 = !{!1549, !1550, !1551}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !1546, file: !1547, line: 52, baseType: !98, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !1546, file: !1547, line: 54, baseType: !83, size: 32, offset: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !1546, file: !1547, line: 55, baseType: !83, size: 32, offset: 96)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !1543, file: !610, line: 67, baseType: !98, size: 64, offset: 128)
!1553 = !DIDerivedType(tag: DW_TAG_member, scope: !1540, file: !610, line: 70, baseType: !1554, size: 192)
!1554 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1540, file: !610, line: 70, size: 192, elements: !1555)
!1555 = !{!1556, !1557}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !1554, file: !610, line: 71, baseType: !73, size: 128, align: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !1554, file: !610, line: 72, baseType: !98, size: 64, offset: 128)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !1530, file: !610, line: 76, baseType: !1559, size: 64, offset: 256)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !610, line: 76, flags: DIFlagFwdDecl)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !1530, file: !610, line: 77, baseType: !98, size: 64, offset: 320)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !1530, file: !610, line: 79, baseType: !1563, size: 64, offset: 384)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !1547, line: 25, size: 256, elements: !1565)
!1565 = !{!1566, !1572, !1576}
!1566 = !DIDerivedType(tag: DW_TAG_member, scope: !1564, file: !1547, line: 26, baseType: !1567, size: 128)
!1567 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1564, file: !1547, line: 26, size: 128, elements: !1568)
!1568 = !{!1569, !1571}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1567, file: !1547, line: 27, baseType: !1570, size: 128)
!1570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 128, elements: !1019)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !1567, file: !1547, line: 28, baseType: !1570, size: 128)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1564, file: !1547, line: 31, baseType: !1573, size: 64, offset: 128)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1575)
!1575 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !1547, line: 23, flags: DIFlagFwdDecl)
!1576 = !DIDerivedType(tag: DW_TAG_member, scope: !1564, file: !1547, line: 33, baseType: !1577, size: 64, offset: 192)
!1577 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1564, file: !1547, line: 33, size: 64, elements: !1578)
!1578 = !{!1579, !1585, !1590}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !1577, file: !1547, line: 38, baseType: !1580, size: 64)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1577, file: !1547, line: 34, size: 64, elements: !1581)
!1581 = !{!1582, !1583, !1584}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !1580, file: !1547, line: 35, baseType: !530, size: 32)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1580, file: !1547, line: 36, baseType: !52, size: 8, offset: 32)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !1580, file: !1547, line: 37, baseType: !52, size: 8, offset: 40)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !1577, file: !1547, line: 42, baseType: !1586, size: 16)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1577, file: !1547, line: 39, size: 16, elements: !1587)
!1587 = !{!1588, !1589}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !1586, file: !1547, line: 40, baseType: !52, size: 8)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1586, file: !1547, line: 41, baseType: !52, size: 8, offset: 8)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !1577, file: !1547, line: 46, baseType: !1591, size: 16)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1577, file: !1547, line: 43, size: 16, elements: !1592)
!1592 = !{!1593, !1594}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !1591, file: !1547, line: 44, baseType: !52, size: 8)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1591, file: !1547, line: 45, baseType: !52, size: 8, offset: 8)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !1530, file: !610, line: 81, baseType: !1596, size: 64, offset: 448)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !610, line: 85, size: 384, elements: !1598)
!1598 = !{!1599, !1600, !1601, !1602, !1603, !1604}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !1597, file: !610, line: 86, baseType: !1559, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1597, file: !610, line: 87, baseType: !98, size: 64, offset: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1597, file: !610, line: 88, baseType: !98, size: 64, offset: 128)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !1597, file: !610, line: 89, baseType: !98, size: 64, offset: 192)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !1597, file: !610, line: 90, baseType: !919, size: 8, offset: 256)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1597, file: !610, line: 92, baseType: !1596, size: 64, offset: 320)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1530, file: !610, line: 82, baseType: !83, size: 32, offset: 512)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !90, file: !91, line: 1463, baseType: !1607, offset: 21184)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !91, line: 739, elements: !438)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !90, file: !91, line: 1470, baseType: !73, size: 128, align: 64, offset: 21184)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !90, file: !91, line: 1471, baseType: !108, size: 32, offset: 21312)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !90, file: !91, line: 1472, baseType: !6, size: 32, offset: 21344)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !90, file: !91, line: 1474, baseType: !89, size: 64, offset: 21376)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !90, file: !91, line: 1475, baseType: !1613, size: 320, offset: 21440)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1614, line: 11, size: 320, elements: !1615)
!1614 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1615 = !{!1616, !1617, !1618, !1623}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1613, file: !1614, line: 16, baseType: !743, size: 128)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1613, file: !1614, line: 17, baseType: !98, size: 64, offset: 128)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1613, file: !1614, line: 18, baseType: !1619, size: 64, offset: 192)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{null, !1622}
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1613, file: !1614, line: 19, baseType: !101, size: 32, offset: 256)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !90, file: !91, line: 1478, baseType: !1625, size: 64, offset: 21760)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !91, line: 1478, flags: DIFlagFwdDecl)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !90, file: !91, line: 1482, baseType: !108, size: 32, offset: 21824)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !90, file: !91, line: 1489, baseType: !106, size: 64, offset: 21888)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !90, file: !91, line: 1504, baseType: !106, size: 64, offset: 21952)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !90, file: !91, line: 1505, baseType: !161, size: 64, offset: 22016)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !90, file: !91, line: 1506, baseType: !160, size: 64, offset: 22080)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !90, file: !91, line: 1507, baseType: !161, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !90, file: !91, line: 1508, baseType: !161, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !90, file: !91, line: 1509, baseType: !161, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !90, file: !91, line: 1510, baseType: !73, size: 128, align: 64, offset: 22208)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !90, file: !91, line: 1511, baseType: !6, size: 32, offset: 22336)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !90, file: !91, line: 1515, baseType: !1638, size: 64, offset: 22400)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !122, line: 56, size: 64, elements: !1639)
!1639 = !{!1640}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1638, file: !122, line: 57, baseType: !125, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !90, file: !91, line: 1518, baseType: !1638, size: 64, offset: 22464)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !90, file: !91, line: 1528, baseType: !73, size: 128, align: 64, offset: 22528)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !90, file: !91, line: 1552, baseType: !1644, size: 35328, offset: 23040)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1645, line: 430, size: 35328, elements: !1646)
!1645 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!1646 = !{!1647, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1676, !1677, !1678, !1679, !1680, !1681, !1684, !1685, !1686, !1687}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1644, file: !1645, line: 432, baseType: !1648, size: 192)
!1648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1649, size: 192, elements: !804)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1650, line: 16, size: 64, elements: !1651)
!1650 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!1651 = !{!1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1649, file: !1650, line: 17, baseType: !62, size: 16)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1649, file: !1650, line: 18, baseType: !62, size: 16, offset: 16)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1649, file: !1650, line: 19, baseType: !62, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1649, file: !1650, line: 19, baseType: !62, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1649, file: !1650, line: 19, baseType: !62, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1649, file: !1650, line: 19, baseType: !62, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1649, file: !1650, line: 19, baseType: !62, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1649, file: !1650, line: 20, baseType: !62, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1649, file: !1650, line: 20, baseType: !62, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1649, file: !1650, line: 20, baseType: !62, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1649, file: !1650, line: 20, baseType: !62, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1649, file: !1650, line: 20, baseType: !62, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1649, file: !1650, line: 20, baseType: !62, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1644, file: !1645, line: 436, baseType: !98, size: 64, offset: 192)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1644, file: !1645, line: 440, baseType: !64, size: 16, offset: 256)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1644, file: !1645, line: 441, baseType: !64, size: 16, offset: 272)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1644, file: !1645, line: 442, baseType: !64, size: 16, offset: 288)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1644, file: !1645, line: 443, baseType: !64, size: 16, offset: 304)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1644, file: !1645, line: 447, baseType: !98, size: 64, offset: 320)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1644, file: !1645, line: 448, baseType: !98, size: 64, offset: 384)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1644, file: !1645, line: 459, baseType: !1673, size: 256, offset: 448)
!1673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1674, size: 256, elements: !532)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1645, line: 428, flags: DIFlagFwdDecl)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1644, file: !1645, line: 461, baseType: !98, size: 64, offset: 704)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1644, file: !1645, line: 463, baseType: !98, size: 64, offset: 768)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1644, file: !1645, line: 465, baseType: !98, size: 64, offset: 832)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1644, file: !1645, line: 466, baseType: !98, size: 64, offset: 896)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1644, file: !1645, line: 467, baseType: !98, size: 64, offset: 960)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1644, file: !1645, line: 473, baseType: !1682, size: 64, offset: 1024)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1645, line: 10, flags: DIFlagFwdDecl)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1644, file: !1645, line: 480, baseType: !98, size: 64, offset: 1088)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !1644, file: !1645, line: 482, baseType: !83, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !1644, file: !1645, line: 491, baseType: !101, size: 32, offset: 1184)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1644, file: !1645, line: 501, baseType: !1688, size: 33792, offset: 1536)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1689, line: 448, size: 33792, elements: !1690)
!1689 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!1690 = !{!1691, !1692, !1693, !1857, !1858, !1864, !1865}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1688, file: !1689, line: 461, baseType: !83, size: 32)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1688, file: !1689, line: 468, baseType: !98, size: 64, offset: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !1688, file: !1689, line: 476, baseType: !1694, size: 64, offset: 128)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !1689, line: 356, size: 33280, align: 512, elements: !1696)
!1696 = !{!1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1695, file: !1689, line: 358, baseType: !83, size: 32)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !1695, file: !1689, line: 361, baseType: !83, size: 32, offset: 32)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1695, file: !1689, line: 364, baseType: !160, size: 64, offset: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !1695, file: !1689, line: 367, baseType: !160, size: 64, offset: 128)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !1695, file: !1689, line: 370, baseType: !160, size: 64, offset: 192)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !1695, file: !1689, line: 373, baseType: !83, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !1695, file: !1689, line: 376, baseType: !83, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !1695, file: !1689, line: 391, baseType: !83, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !1695, file: !1689, line: 394, baseType: !83, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1695, file: !1689, line: 397, baseType: !1707, size: 32768, offset: 512)
!1707 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1689, line: 348, size: 32768, elements: !1708)
!1708 = !{!1709, !1724, !1763, !1840, !1853}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1707, file: !1689, line: 349, baseType: !1710, size: 896)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1689, line: 12, size: 896, elements: !1711)
!1711 = !{!1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1723}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1710, file: !1689, line: 13, baseType: !101, size: 32)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1710, file: !1689, line: 14, baseType: !101, size: 32, offset: 32)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1710, file: !1689, line: 15, baseType: !101, size: 32, offset: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1710, file: !1689, line: 16, baseType: !101, size: 32, offset: 96)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1710, file: !1689, line: 17, baseType: !101, size: 32, offset: 128)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1710, file: !1689, line: 18, baseType: !101, size: 32, offset: 160)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1710, file: !1689, line: 19, baseType: !101, size: 32, offset: 192)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1710, file: !1689, line: 22, baseType: !1720, size: 640, offset: 224)
!1720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 640, elements: !1721)
!1721 = !{!1722}
!1722 = !DISubrange(count: 20)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1710, file: !1689, line: 25, baseType: !101, size: 32, offset: 864)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1707, file: !1689, line: 350, baseType: !1725, size: 4096, align: 128)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1689, line: 34, size: 4096, align: 128, elements: !1726)
!1726 = !{!1727, !1728, !1729, !1730, !1731, !1746, !1747, !1748, !1752, !1754, !1758}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1725, file: !1689, line: 35, baseType: !62, size: 16)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1725, file: !1689, line: 36, baseType: !62, size: 16, offset: 16)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1725, file: !1689, line: 37, baseType: !62, size: 16, offset: 32)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1725, file: !1689, line: 38, baseType: !62, size: 16, offset: 48)
!1731 = !DIDerivedType(tag: DW_TAG_member, scope: !1725, file: !1689, line: 39, baseType: !1732, size: 128, offset: 64)
!1732 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1725, file: !1689, line: 39, size: 128, elements: !1733)
!1733 = !{!1734, !1739}
!1734 = !DIDerivedType(tag: DW_TAG_member, scope: !1732, file: !1689, line: 40, baseType: !1735, size: 128)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1732, file: !1689, line: 40, size: 128, elements: !1736)
!1736 = !{!1737, !1738}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1735, file: !1689, line: 41, baseType: !160, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1735, file: !1689, line: 42, baseType: !160, size: 64, offset: 64)
!1739 = !DIDerivedType(tag: DW_TAG_member, scope: !1732, file: !1689, line: 44, baseType: !1740, size: 128)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1732, file: !1689, line: 44, size: 128, elements: !1741)
!1741 = !{!1742, !1743, !1744, !1745}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1740, file: !1689, line: 45, baseType: !101, size: 32)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1740, file: !1689, line: 46, baseType: !101, size: 32, offset: 32)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1740, file: !1689, line: 47, baseType: !101, size: 32, offset: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1740, file: !1689, line: 48, baseType: !101, size: 32, offset: 96)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1725, file: !1689, line: 51, baseType: !101, size: 32, offset: 192)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1725, file: !1689, line: 52, baseType: !101, size: 32, offset: 224)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1725, file: !1689, line: 55, baseType: !1749, size: 1024, offset: 256)
!1749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 1024, elements: !1750)
!1750 = !{!1751}
!1751 = !DISubrange(count: 32)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1725, file: !1689, line: 58, baseType: !1753, size: 2048, offset: 1280)
!1753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 2048, elements: !1222)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1725, file: !1689, line: 60, baseType: !1755, size: 384, offset: 3328)
!1755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 384, elements: !1756)
!1756 = !{!1757}
!1757 = !DISubrange(count: 12)
!1758 = !DIDerivedType(tag: DW_TAG_member, scope: !1725, file: !1689, line: 62, baseType: !1759, size: 384, offset: 3712)
!1759 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1725, file: !1689, line: 62, size: 384, elements: !1760)
!1760 = !{!1761, !1762}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1759, file: !1689, line: 63, baseType: !1755, size: 384)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1759, file: !1689, line: 64, baseType: !1755, size: 384)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1707, file: !1689, line: 351, baseType: !1764, size: 1088)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1689, line: 79, size: 1088, elements: !1765)
!1765 = !{!1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1839}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1764, file: !1689, line: 80, baseType: !101, size: 32)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1764, file: !1689, line: 81, baseType: !101, size: 32, offset: 32)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1764, file: !1689, line: 82, baseType: !101, size: 32, offset: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1764, file: !1689, line: 83, baseType: !101, size: 32, offset: 96)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1764, file: !1689, line: 84, baseType: !101, size: 32, offset: 128)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1764, file: !1689, line: 85, baseType: !101, size: 32, offset: 160)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1764, file: !1689, line: 86, baseType: !101, size: 32, offset: 192)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1764, file: !1689, line: 88, baseType: !1720, size: 640, offset: 224)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1764, file: !1689, line: 89, baseType: !52, size: 8, offset: 864)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1764, file: !1689, line: 90, baseType: !52, size: 8, offset: 872)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1764, file: !1689, line: 91, baseType: !52, size: 8, offset: 880)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1764, file: !1689, line: 92, baseType: !52, size: 8, offset: 888)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1764, file: !1689, line: 93, baseType: !52, size: 8, offset: 896)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1764, file: !1689, line: 94, baseType: !52, size: 8, offset: 904)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1764, file: !1689, line: 95, baseType: !1781, size: 64, offset: 960)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1783, line: 11, size: 128, elements: !1784)
!1783 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!1784 = !{!1785, !1786}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1782, file: !1783, line: 12, baseType: !575, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1782, file: !1783, line: 13, baseType: !1787, size: 64, offset: 64)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1789, line: 103, size: 1344, elements: !1790)
!1789 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!1790 = !{!1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1819, !1820, !1821}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1788, file: !1789, line: 109, baseType: !98, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1788, file: !1789, line: 110, baseType: !98, size: 64, offset: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1788, file: !1789, line: 111, baseType: !98, size: 64, offset: 128)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1788, file: !1789, line: 112, baseType: !98, size: 64, offset: 192)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1788, file: !1789, line: 113, baseType: !98, size: 64, offset: 256)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1788, file: !1789, line: 114, baseType: !98, size: 64, offset: 320)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1788, file: !1789, line: 117, baseType: !98, size: 64, offset: 384)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1788, file: !1789, line: 118, baseType: !98, size: 64, offset: 448)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1788, file: !1789, line: 119, baseType: !98, size: 64, offset: 512)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1788, file: !1789, line: 120, baseType: !98, size: 64, offset: 576)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1788, file: !1789, line: 121, baseType: !98, size: 64, offset: 640)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1788, file: !1789, line: 122, baseType: !98, size: 64, offset: 704)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1788, file: !1789, line: 123, baseType: !98, size: 64, offset: 768)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1788, file: !1789, line: 124, baseType: !98, size: 64, offset: 832)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1788, file: !1789, line: 125, baseType: !98, size: 64, offset: 896)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1788, file: !1789, line: 139, baseType: !98, size: 64, offset: 960)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1788, file: !1789, line: 142, baseType: !98, size: 64, offset: 1024)
!1808 = !DIDerivedType(tag: DW_TAG_member, scope: !1788, file: !1789, line: 144, baseType: !1809, size: 64, offset: 1088)
!1809 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1788, file: !1789, line: 144, size: 64, elements: !1810)
!1810 = !{!1811, !1812, !1813}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1809, file: !1789, line: 146, baseType: !62, size: 16)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !1809, file: !1789, line: 148, baseType: !160, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !1809, file: !1789, line: 150, baseType: !1814, size: 64)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !1789, line: 59, size: 64, elements: !1815)
!1815 = !{!1816, !1817, !1818}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1814, file: !1789, line: 61, baseType: !160, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !1814, file: !1789, line: 63, baseType: !160, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !1814, file: !1789, line: 65, baseType: !160, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1788, file: !1789, line: 153, baseType: !98, size: 64, offset: 1152)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1788, file: !1789, line: 154, baseType: !98, size: 64, offset: 1216)
!1821 = !DIDerivedType(tag: DW_TAG_member, scope: !1788, file: !1789, line: 156, baseType: !1822, size: 64, offset: 1280)
!1822 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1788, file: !1789, line: 156, size: 64, elements: !1823)
!1823 = !{!1824, !1825, !1826}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1822, file: !1789, line: 158, baseType: !62, size: 16)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !1822, file: !1789, line: 160, baseType: !160, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !1822, file: !1789, line: 162, baseType: !1827, size: 64)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !1789, line: 69, size: 64, elements: !1828)
!1828 = !{!1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1827, file: !1789, line: 71, baseType: !160, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !1827, file: !1789, line: 73, baseType: !160, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !1827, file: !1789, line: 75, baseType: !160, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !1827, file: !1789, line: 77, baseType: !160, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !1827, file: !1789, line: 80, baseType: !160, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1827, file: !1789, line: 83, baseType: !160, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !1827, file: !1789, line: 86, baseType: !160, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !1827, file: !1789, line: 88, baseType: !160, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !1827, file: !1789, line: 93, baseType: !160, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !1827, file: !1789, line: 100, baseType: !160, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1764, file: !1689, line: 96, baseType: !101, size: 32, offset: 1024)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1707, file: !1689, line: 352, baseType: !1841, size: 4608, align: 512)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1689, line: 333, size: 4608, align: 512, elements: !1842)
!1842 = !{!1843, !1844, !1851}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1841, file: !1689, line: 334, baseType: !1725, size: 4096, align: 128)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1841, file: !1689, line: 335, baseType: !1845, size: 512, offset: 4096)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1689, line: 312, size: 512, elements: !1846)
!1846 = !{!1847, !1848, !1849}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1845, file: !1689, line: 313, baseType: !160, size: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1845, file: !1689, line: 314, baseType: !160, size: 64, offset: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1845, file: !1689, line: 315, baseType: !1850, size: 384, offset: 128)
!1850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 384, elements: !906)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1841, file: !1689, line: 336, baseType: !1852, offset: 4608)
!1852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, elements: !630)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1707, file: !1689, line: 353, baseType: !1854, size: 32768)
!1854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 32768, elements: !1855)
!1855 = !{!1856}
!1856 = !DISubrange(count: 4096)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !1688, file: !1689, line: 484, baseType: !1694, size: 64, offset: 192)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1688, file: !1689, line: 491, baseType: !1859, size: 128, offset: 256)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !1689, line: 404, size: 128, elements: !1860)
!1860 = !{!1861, !1862, !1863}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !1859, file: !1689, line: 424, baseType: !160, size: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !1859, file: !1689, line: 432, baseType: !83, size: 32, offset: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !1859, file: !1689, line: 440, baseType: !83, size: 32, offset: 96)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !1688, file: !1689, line: 498, baseType: !1859, size: 128, offset: 384)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !1688, file: !1689, line: 508, baseType: !1695, size: 33280, align: 512, offset: 512)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !8, file: !9, line: 16, baseType: !18, size: 192, offset: 512)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !8, file: !9, line: 17, baseType: !43, size: 32, offset: 704)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1870, line: 206, elements: !438)
!1870 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1871 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/locking/.percpu-rwsem.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/locking/percpu-rwsem\22 -D KBUILD_BASENAME=\22percpu_rwsem\22 -D KBUILD_MODNAME=\22percpu_rwsem\22 -D __KBUILD_MODNAME=kmod_percpu_rwsem -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/locking/percpu-rwsem.ll kernel/locking/percpu-rwsem.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !1872, retainedTypes: !1885, globals: !1917, splitDebugInlining: false, nameTableKind: None)
!1872 = !{!244, !682, !1533, !1873, !1878}
!1873 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1874, line: 10, baseType: !83, size: 32, elements: !1875)
!1874 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!1875 = !{!1876, !1877}
!1876 = !DIEnumerator(name: "false", value: 0)
!1877 = !DIEnumerator(name: "true", value: 1)
!1878 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !109, line: 119, baseType: !83, size: 32, elements: !1879)
!1879 = !{!1880, !1881, !1882, !1883, !1884}
!1880 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!1881 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!1882 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!1883 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!1884 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!1885 = !{!776, !106, !1886, !83, !82, !98, !1888, !6, !1890, !1892, !1895, !1902, !1903, !1906, !1908, !1909, !101, !1911, !89, !1912, !1914, !1915}
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !364)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !6)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1889)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1894)
!1894 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1895)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !1897, line: 26, size: 192, elements: !1898)
!1897 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1898 = !{!1899, !1900, !1901}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1896, file: !1897, line: 27, baseType: !106, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1896, file: !1897, line: 28, baseType: !106, size: 64, offset: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1896, file: !1897, line: 29, baseType: !6, size: 32, offset: 128)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1905)
!1905 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !106)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !83)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !70)
!1911 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !44, line: 42, baseType: !98)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !89)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!1917 = !{!0, !1918, !1923, !1925, !1927, !1935, !1937, !1939, !1941, !1943, !1949, !1978, !1980, !1989, !1998, !2027, !2029}
!1918 = !DIGlobalVariableExpression(var: !1919, expr: !DIExpression())
!1919 = distinct !DIGlobalVariable(scope: null, file: !3, line: 23, type: !1920, isLocal: true, isDefinition: true)
!1920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !905, size: 112, elements: !1921)
!1921 = !{!1922}
!1922 = !DISubrange(count: 14)
!1923 = !DIGlobalVariableExpression(var: !1924, expr: !DIExpression())
!1924 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___percpu_init_rwsem263", scope: !1871, file: !3, line: 31, type: !106, isLocal: true, isDefinition: true)
!1925 = !DIGlobalVariableExpression(var: !1926, expr: !DIExpression())
!1926 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_percpu_free_rwsem264", scope: !1871, file: !3, line: 46, type: !106, isLocal: true, isDefinition: true)
!1927 = !DIGlobalVariableExpression(var: !1928, expr: !DIExpression())
!1928 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule271", scope: !1929, file: !3, line: 176, type: !106, isLocal: true, isDefinition: true)
!1929 = distinct !DISubprogram(name: "__percpu_down_read", scope: !3, file: !3, line: 167, type: !1930, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !1932)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!919, !7, !919}
!1932 = !{!1933, !1934}
!1933 = !DILocalVariable(name: "sem", arg: 1, scope: !1929, file: !3, line: 167, type: !7)
!1934 = !DILocalVariable(name: "try", arg: 2, scope: !1929, file: !3, line: 167, type: !919)
!1935 = !DIGlobalVariableExpression(var: !1936, expr: !DIExpression())
!1936 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___percpu_down_read272", scope: !1871, file: !3, line: 183, type: !106, isLocal: true, isDefinition: true)
!1937 = !DIGlobalVariableExpression(var: !1938, expr: !DIExpression())
!1938 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_percpu_is_read_locked274", scope: !1871, file: !3, line: 199, type: !106, isLocal: true, isDefinition: true)
!1939 = !DIGlobalVariableExpression(var: !1940, expr: !DIExpression())
!1940 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_percpu_down_write276", scope: !1871, file: !3, line: 252, type: !106, isLocal: true, isDefinition: true)
!1941 = !DIGlobalVariableExpression(var: !1942, expr: !DIExpression())
!1942 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_percpu_up_write277", scope: !1871, file: !3, line: 282, type: !106, isLocal: true, isDefinition: true)
!1943 = !DIGlobalVariableExpression(var: !1944, expr: !DIExpression())
!1944 = distinct !DIGlobalVariable(scope: null, file: !1945, line: 95, type: !1946, isLocal: true, isDefinition: true)
!1945 = !DIFile(filename: "./include/trace/events/lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bb4e6643de3c3749267f6f3b5a53bfe0")
!1946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !905, size: 224, elements: !1947)
!1947 = !{!1948}
!1948 = !DISubrange(count: 28)
!1949 = !DIGlobalVariableExpression(var: !1950, expr: !DIExpression())
!1950 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_contention_begin249", scope: !1951, file: !1945, line: 95, type: !106, isLocal: true, isDefinition: true)
!1951 = distinct !DISubprogram(name: "trace_contention_begin", scope: !1945, file: !1945, line: 95, type: !1952, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !1954)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{null, !106, !83}
!1954 = !{!1955, !1956, !1957, !1960, !1963, !1965, !1967, !1970, !1973, !1975, !1976}
!1955 = !DILocalVariable(name: "lock", arg: 1, scope: !1951, file: !1945, line: 95, type: !106)
!1956 = !DILocalVariable(name: "flags", arg: 2, scope: !1951, file: !1945, line: 95, type: !83)
!1957 = !DILocalVariable(name: "__idx", scope: !1958, file: !1945, line: 95, type: !6)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !1945, line: 95, column: 1)
!1959 = distinct !DILexicalBlock(scope: !1951, file: !1945, line: 95, column: 1)
!1960 = !DILocalVariable(name: "pscr_ret__", scope: !1961, file: !1945, line: 95, type: !6)
!1961 = distinct !DILexicalBlock(scope: !1962, file: !1945, line: 95, column: 1)
!1962 = distinct !DILexicalBlock(scope: !1958, file: !1945, line: 95, column: 1)
!1963 = !DILocalVariable(name: "__vpp_verify", scope: !1964, file: !1945, line: 95, type: !572)
!1964 = distinct !DILexicalBlock(scope: !1961, file: !1945, line: 95, column: 1)
!1965 = !DILocalVariable(name: "pfo_val__", scope: !1966, file: !1945, line: 95, type: !101)
!1966 = distinct !DILexicalBlock(scope: !1961, file: !1945, line: 95, column: 1)
!1967 = !DILocalVariable(name: "__ret_warn_on", scope: !1968, file: !1945, line: 95, type: !6)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !1945, line: 95, column: 1)
!1969 = distinct !DILexicalBlock(scope: !1958, file: !1945, line: 95, column: 1)
!1970 = !DILocalVariable(name: "__flags", scope: !1971, file: !1945, line: 95, type: !6)
!1971 = distinct !DILexicalBlock(scope: !1972, file: !1945, line: 95, column: 1)
!1972 = distinct !DILexicalBlock(scope: !1968, file: !1945, line: 95, column: 1)
!1973 = !DILocalVariable(name: "it_func_ptr", scope: !1974, file: !1945, line: 95, type: !1895)
!1974 = distinct !DILexicalBlock(scope: !1958, file: !1945, line: 95, column: 1)
!1975 = !DILocalVariable(name: "__data", scope: !1974, file: !1945, line: 95, type: !106)
!1976 = !DILocalVariable(name: "__UNIQUE_ID_rcu247", scope: !1977, file: !1945, line: 95, type: !1895)
!1977 = distinct !DILexicalBlock(scope: !1974, file: !1945, line: 95, column: 1)
!1978 = !DIGlobalVariableExpression(var: !1979, expr: !DIExpression())
!1979 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace250", scope: !1951, file: !1945, line: 95, type: !106, isLocal: true, isDefinition: true)
!1980 = !DIGlobalVariableExpression(var: !1981, expr: !DIExpression())
!1981 = distinct !DIGlobalVariable(name: "put_task_map", scope: !1982, file: !1983, line: 134, type: !1988, isLocal: true, isDefinition: true)
!1982 = distinct !DISubprogram(name: "put_task_struct", scope: !1983, file: !1983, line: 124, type: !1984, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !1986)
!1983 = !DIFile(filename: "./include/linux/sched/task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ef3d4d4bfe7d22703d2dead2224ab376")
!1984 = !DISubroutineType(types: !1985)
!1985 = !{null, !89}
!1986 = !{!1987}
!1987 = !DILocalVariable(name: "t", arg: 1, scope: !1982, file: !1983, line: 124, type: !89)
!1988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1870, line: 211, elements: !438)
!1989 = !DIGlobalVariableExpression(var: !1990, expr: !DIExpression())
!1990 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule265", scope: !1991, file: !3, line: 99, type: !106, isLocal: true, isDefinition: true)
!1991 = distinct !DISubprogram(name: "__percpu_rwsem_trylock", scope: !3, file: !3, line: 92, type: !1930, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !1992)
!1992 = !{!1993, !1994, !1995}
!1993 = !DILocalVariable(name: "sem", arg: 1, scope: !1991, file: !3, line: 92, type: !7)
!1994 = !DILocalVariable(name: "reader", arg: 2, scope: !1991, file: !3, line: 92, type: !919)
!1995 = !DILocalVariable(name: "ret", scope: !1996, file: !3, line: 95, type: !919)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !3, line: 94, column: 14)
!1997 = distinct !DILexicalBlock(scope: !1991, file: !3, line: 94, column: 6)
!1998 = !DIGlobalVariableExpression(var: !1999, expr: !DIExpression())
!1999 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_contention_end257", scope: !2000, file: !1945, line: 122, type: !106, isLocal: true, isDefinition: true)
!2000 = distinct !DISubprogram(name: "trace_contention_end", scope: !1945, file: !1945, line: 122, type: !2001, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !2003)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{null, !106, !6}
!2003 = !{!2004, !2005, !2006, !2009, !2012, !2014, !2016, !2019, !2022, !2024, !2025}
!2004 = !DILocalVariable(name: "lock", arg: 1, scope: !2000, file: !1945, line: 122, type: !106)
!2005 = !DILocalVariable(name: "ret", arg: 2, scope: !2000, file: !1945, line: 122, type: !6)
!2006 = !DILocalVariable(name: "__idx", scope: !2007, file: !1945, line: 122, type: !6)
!2007 = distinct !DILexicalBlock(scope: !2008, file: !1945, line: 122, column: 1)
!2008 = distinct !DILexicalBlock(scope: !2000, file: !1945, line: 122, column: 1)
!2009 = !DILocalVariable(name: "pscr_ret__", scope: !2010, file: !1945, line: 122, type: !6)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !1945, line: 122, column: 1)
!2011 = distinct !DILexicalBlock(scope: !2007, file: !1945, line: 122, column: 1)
!2012 = !DILocalVariable(name: "__vpp_verify", scope: !2013, file: !1945, line: 122, type: !572)
!2013 = distinct !DILexicalBlock(scope: !2010, file: !1945, line: 122, column: 1)
!2014 = !DILocalVariable(name: "pfo_val__", scope: !2015, file: !1945, line: 122, type: !101)
!2015 = distinct !DILexicalBlock(scope: !2010, file: !1945, line: 122, column: 1)
!2016 = !DILocalVariable(name: "__ret_warn_on", scope: !2017, file: !1945, line: 122, type: !6)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !1945, line: 122, column: 1)
!2018 = distinct !DILexicalBlock(scope: !2007, file: !1945, line: 122, column: 1)
!2019 = !DILocalVariable(name: "__flags", scope: !2020, file: !1945, line: 122, type: !6)
!2020 = distinct !DILexicalBlock(scope: !2021, file: !1945, line: 122, column: 1)
!2021 = distinct !DILexicalBlock(scope: !2017, file: !1945, line: 122, column: 1)
!2022 = !DILocalVariable(name: "it_func_ptr", scope: !2023, file: !1945, line: 122, type: !1895)
!2023 = distinct !DILexicalBlock(scope: !2007, file: !1945, line: 122, column: 1)
!2024 = !DILocalVariable(name: "__data", scope: !2023, file: !1945, line: 122, type: !106)
!2025 = !DILocalVariable(name: "__UNIQUE_ID_rcu255", scope: !2026, file: !1945, line: 122, type: !1895)
!2026 = distinct !DILexicalBlock(scope: !2023, file: !1945, line: 122, column: 1)
!2027 = !DIGlobalVariableExpression(var: !2028, expr: !DIExpression())
!2028 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace258", scope: !2000, file: !1945, line: 122, type: !106, isLocal: true, isDefinition: true)
!2029 = !DIGlobalVariableExpression(var: !2030, expr: !DIExpression())
!2030 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__might_resched37", scope: !2031, file: !2032, line: 112, type: !106, isLocal: true, isDefinition: true)
!2031 = distinct !DISubprogram(name: "might_resched", scope: !2032, file: !2032, line: 110, type: !1219, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871)
!2032 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!2033 = !{!2034, !2035, !2036}
!2034 = !DILocalVariable(name: "sem", arg: 1, scope: !2, file: !3, line: 14, type: !7)
!2035 = !DILocalVariable(name: "name", arg: 2, scope: !2, file: !3, line: 15, type: !922)
!2036 = !DILocalVariable(name: "key", arg: 3, scope: !2, file: !3, line: 15, type: !1868)
!2037 = !{!"rsp"}
!2038 = !{i32 7, !"Dwarf Version", i32 5}
!2039 = !{i32 2, !"Debug Info Version", i32 3}
!2040 = !{i32 1, !"wchar_size", i32 2}
!2041 = !{i32 8, !"cf-protection-branch", i32 1}
!2042 = !{i32 4, !"function_return_thunk_extern", i32 1}
!2043 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!2044 = !{i32 1, !"Code Model", i32 2}
!2045 = !{i32 1, !"override-stack-alignment", i32 8}
!2046 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!2047 = !DILocation(line: 14, column: 53, scope: !2)
!2048 = !DILocation(line: 15, column: 16, scope: !2)
!2049 = !DILocation(line: 15, column: 45, scope: !2)
!2050 = !DILocation(line: 17, column: 20, scope: !2)
!2051 = !DILocation(line: 17, column: 2, scope: !2)
!2052 = !DILocation(line: 17, column: 7, scope: !2)
!2053 = !DILocation(line: 17, column: 18, scope: !2)
!2054 = !DILocation(line: 18, column: 6, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2, file: !3, line: 18, column: 6)
!2056 = !DILocation(line: 18, column: 6, scope: !2)
!2057 = !DILocation(line: 19, column: 3, scope: !2055)
!2058 = !DILocation(line: 21, column: 17, scope: !2)
!2059 = !DILocation(line: 21, column: 22, scope: !2)
!2060 = !DILocation(line: 21, column: 2, scope: !2)
!2061 = !DILocation(line: 22, column: 16, scope: !2)
!2062 = !DILocation(line: 22, column: 21, scope: !2)
!2063 = !DILocation(line: 22, column: 2, scope: !2)
!2064 = !DILocation(line: 23, column: 2, scope: !2)
!2065 = !DILocation(line: 23, column: 2, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2, file: !3, line: 23, column: 2)
!2067 = !DILocation(line: 24, column: 14, scope: !2)
!2068 = !DILocation(line: 24, column: 19, scope: !2)
!2069 = !DILocation(line: 24, column: 2, scope: !2)
!2070 = !DILocation(line: 29, column: 2, scope: !2)
!2071 = !DILocation(line: 30, column: 1, scope: !2)
!2072 = !DISubprogram(name: "__alloc_percpu", scope: !2073, file: !2073, line: 133, type: !2074, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2073 = !DIFile(filename: "./include/linux/percpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5b443d1a4673980cdbec5f10c6cbbaa")
!2074 = !DISubroutineType(types: !2075)
!2075 = !{!106, !1230, !1230}
!2076 = !DISubprogram(name: "rcu_sync_init", scope: !13, file: !13, line: 39, type: !2077, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2077 = !DISubroutineType(types: !2078)
!2078 = !{null, !2079}
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!2080 = distinct !DISubprogram(name: "rcuwait_init", scope: !86, file: !86, line: 23, type: !2081, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !2084)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{null, !2083}
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!2084 = !{!2085}
!2085 = !DILocalVariable(name: "w", arg: 1, scope: !2080, file: !86, line: 23, type: !2083)
!2086 = !DILocation(line: 23, column: 49, scope: !2080)
!2087 = !DILocation(line: 25, column: 2, scope: !2080)
!2088 = !DILocation(line: 25, column: 5, scope: !2080)
!2089 = !DILocation(line: 25, column: 10, scope: !2080)
!2090 = !DILocation(line: 26, column: 1, scope: !2080)
!2091 = !DISubprogram(name: "__init_waitqueue_head", scope: !19, file: !19, line: 64, type: !2092, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2092 = !DISubroutineType(types: !2093)
!2093 = !{null, !2094, !922, !1868}
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!2095 = distinct !DISubprogram(name: "atomic_set", scope: !2096, file: !2096, line: 65, type: !2097, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !2100)
!2096 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!2097 = !DISubroutineType(types: !2098)
!2098 = !{null, !2099, !6}
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!2100 = !{!2101, !2102}
!2101 = !DILocalVariable(name: "v", arg: 1, scope: !2095, file: !2096, line: 65, type: !2099)
!2102 = !DILocalVariable(name: "i", arg: 2, scope: !2095, file: !2096, line: 65, type: !6)
!2103 = !DILocation(line: 65, column: 22, scope: !2095)
!2104 = !DILocation(line: 65, column: 29, scope: !2095)
!2105 = !DILocation(line: 67, column: 26, scope: !2095)
!2106 = !DILocation(line: 67, column: 2, scope: !2095)
!2107 = !DILocation(line: 68, column: 17, scope: !2095)
!2108 = !DILocation(line: 68, column: 20, scope: !2095)
!2109 = !DILocation(line: 68, column: 2, scope: !2095)
!2110 = !DILocation(line: 69, column: 1, scope: !2095)
!2111 = distinct !DISubprogram(name: "percpu_free_rwsem", scope: !3, file: !3, line: 33, type: !2112, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !2114)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{null, !7}
!2114 = !{!2115}
!2115 = !DILocalVariable(name: "sem", arg: 1, scope: !2111, file: !3, line: 33, type: !7)
!2116 = !DILocation(line: 33, column: 52, scope: !2111)
!2117 = !DILocation(line: 39, column: 7, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2111, file: !3, line: 39, column: 6)
!2119 = !DILocation(line: 39, column: 12, scope: !2118)
!2120 = !DILocation(line: 39, column: 6, scope: !2111)
!2121 = !DILocation(line: 40, column: 3, scope: !2118)
!2122 = !DILocation(line: 42, column: 17, scope: !2111)
!2123 = !DILocation(line: 42, column: 22, scope: !2111)
!2124 = !DILocation(line: 42, column: 2, scope: !2111)
!2125 = !DILocation(line: 43, column: 14, scope: !2111)
!2126 = !DILocation(line: 43, column: 19, scope: !2111)
!2127 = !DILocation(line: 43, column: 2, scope: !2111)
!2128 = !DILocation(line: 44, column: 2, scope: !2111)
!2129 = !DILocation(line: 44, column: 7, scope: !2111)
!2130 = !DILocation(line: 44, column: 18, scope: !2111)
!2131 = !DILocation(line: 45, column: 1, scope: !2111)
!2132 = !DISubprogram(name: "rcu_sync_dtor", scope: !13, file: !13, line: 43, type: !2077, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2133 = !DISubprogram(name: "free_percpu", scope: !2073, file: !2073, line: 134, type: !2134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{null, !106}
!2136 = !DILocation(line: 167, column: 61, scope: !1929)
!2137 = !DILocation(line: 167, column: 71, scope: !1929)
!2138 = !DILocation(line: 169, column: 33, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !1929, file: !3, line: 169, column: 6)
!2140 = !DILocation(line: 169, column: 6, scope: !2139)
!2141 = !DILocation(line: 169, column: 6, scope: !1929)
!2142 = !DILocation(line: 170, column: 3, scope: !2139)
!2143 = !DILocation(line: 172, column: 6, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !1929, file: !3, line: 172, column: 6)
!2145 = !{i8 0, i8 2}
!2146 = !DILocation(line: 172, column: 6, scope: !1929)
!2147 = !DILocation(line: 173, column: 3, scope: !2144)
!2148 = !DILocation(line: 175, column: 25, scope: !1929)
!2149 = !DILocation(line: 175, column: 2, scope: !1929)
!2150 = !DILocation(line: 176, column: 2, scope: !1929)
!2151 = !DILocation(line: 176, column: 2, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !1929, file: !3, line: 176, column: 2)
!2153 = !{i64 2153591571}
!2154 = !DILocation(line: 176, column: 2, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2152, file: !3, line: 176, column: 2)
!2156 = !DILocation(line: 176, column: 2, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2155, file: !3, line: 176, column: 2)
!2158 = !{i64 2153591753}
!2159 = !DILocation(line: 177, column: 20, scope: !1929)
!2160 = !DILocation(line: 177, column: 2, scope: !1929)
!2161 = !DILocation(line: 178, column: 2, scope: !1929)
!2162 = !DILocation(line: 178, column: 2, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !1929, file: !3, line: 178, column: 2)
!2164 = !{i64 2153593481}
!2165 = !DILocation(line: 179, column: 23, scope: !1929)
!2166 = !DILocation(line: 179, column: 2, scope: !1929)
!2167 = !DILocation(line: 181, column: 2, scope: !1929)
!2168 = !DILocation(line: 182, column: 1, scope: !1929)
!2169 = distinct !DISubprogram(name: "__percpu_down_read_trylock", scope: !3, file: !3, line: 48, type: !2170, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !2172)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!919, !7}
!2172 = !{!2173, !2174, !2177, !2180, !2183}
!2173 = !DILocalVariable(name: "sem", arg: 1, scope: !2169, file: !3, line: 48, type: !7)
!2174 = !DILocalVariable(name: "__vpp_verify", scope: !2175, file: !3, line: 50, type: !572)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !3, line: 50, column: 2)
!2176 = distinct !DILexicalBlock(scope: !2169, file: !3, line: 50, column: 2)
!2177 = !DILocalVariable(name: "pao_ID__", scope: !2178, file: !3, line: 50, type: !2179)
!2178 = distinct !DILexicalBlock(scope: !2176, file: !3, line: 50, column: 2)
!2179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!2180 = !DILocalVariable(name: "__vpp_verify", scope: !2181, file: !3, line: 76, type: !572)
!2181 = distinct !DILexicalBlock(scope: !2182, file: !3, line: 76, column: 2)
!2182 = distinct !DILexicalBlock(scope: !2169, file: !3, line: 76, column: 2)
!2183 = !DILocalVariable(name: "pao_ID__", scope: !2184, file: !3, line: 76, type: !2179)
!2184 = distinct !DILexicalBlock(scope: !2182, file: !3, line: 76, column: 2)
!2185 = !DILocation(line: 48, column: 68, scope: !2169)
!2186 = !DILocation(line: 50, column: 2, scope: !2169)
!2187 = !DILocation(line: 50, column: 2, scope: !2176)
!2188 = !DILocation(line: 50, column: 2, scope: !2175)
!2189 = !DILocation(line: 50, column: 2, scope: !2178)
!2190 = !DILocation(line: 50, column: 2, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2192, file: !3, line: 50, column: 2)
!2192 = distinct !DILexicalBlock(scope: !2178, file: !3, line: 50, column: 2)
!2193 = !{i64 2153561154}
!2194 = !DILocation(line: 67, column: 2, scope: !2169)
!2195 = !DILocation(line: 67, column: 2, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2169, file: !3, line: 67, column: 2)
!2197 = !DILocation(line: 67, column: 2, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2196, file: !3, line: 67, column: 2)
!2199 = !{i64 2153564378}
!2200 = !DILocation(line: 73, column: 6, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2169, file: !3, line: 73, column: 6)
!2202 = !DILocation(line: 73, column: 6, scope: !2169)
!2203 = !DILocation(line: 74, column: 3, scope: !2201)
!2204 = !DILocation(line: 76, column: 2, scope: !2169)
!2205 = !DILocation(line: 76, column: 2, scope: !2182)
!2206 = !DILocation(line: 76, column: 2, scope: !2181)
!2207 = !DILocation(line: 76, column: 2, scope: !2184)
!2208 = !DILocation(line: 76, column: 2, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2210, file: !3, line: 76, column: 2)
!2210 = distinct !DILexicalBlock(scope: !2211, file: !3, line: 76, column: 2)
!2211 = distinct !DILexicalBlock(scope: !2184, file: !3, line: 76, column: 2)
!2212 = !{i64 2153571760}
!2213 = !DILocation(line: 79, column: 19, scope: !2169)
!2214 = !DILocation(line: 79, column: 24, scope: !2169)
!2215 = !DILocation(line: 79, column: 2, scope: !2169)
!2216 = !DILocation(line: 81, column: 2, scope: !2169)
!2217 = !DILocation(line: 82, column: 1, scope: !2169)
!2218 = !DILocation(line: 95, column: 1, scope: !1951)
!2219 = !DILocation(line: 95, column: 1, scope: !1959)
!2220 = !DILocation(line: 95, column: 1, scope: !1958)
!2221 = !DILocation(line: 95, column: 1, scope: !1961)
!2222 = !DILocation(line: 95, column: 1, scope: !1964)
!2223 = !DILocation(line: 95, column: 1, scope: !1966)
!2224 = !{i64 2153462791}
!2225 = !DILocation(line: 95, column: 1, scope: !1962)
!2226 = !DILocation(line: 95, column: 1, scope: !1968)
!2227 = !DILocation(line: 95, column: 1, scope: !1972)
!2228 = !DILocation(line: 95, column: 1, scope: !1971)
!2229 = !DILocation(line: 95, column: 1, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !1971, file: !1945, line: 95, column: 1)
!2231 = !DILocation(line: 95, column: 1, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !1971, file: !1945, line: 95, column: 1)
!2233 = !{i64 2153463993, i64 2153464022, i64 2153464068, i64 2153464126, i64 2153464180, i64 2153464234, i64 2153464289, i64 2153464320, i64 2153464628, i64 2153464634, i64 2153464681, i64 2153464704, i64 2153464730}
!2234 = !DILocation(line: 95, column: 1, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !1971, file: !1945, line: 95, column: 1)
!2236 = !DILocation(line: 95, column: 1, scope: !1969)
!2237 = !DILocation(line: 95, column: 1, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !1958, file: !1945, line: 95, column: 1)
!2239 = !{i64 2153465082}
!2240 = !DILocation(line: 95, column: 1, scope: !1974)
!2241 = !DILocation(line: 95, column: 1, scope: !1977)
!2242 = !DILocation(line: 95, column: 1, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !1977, file: !1945, line: 95, column: 1)
!2244 = !DILocation(line: 95, column: 1, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2243, file: !1945, line: 95, column: 1)
!2246 = !DILocation(line: 95, column: 1, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !1974, file: !1945, line: 95, column: 1)
!2248 = !DILocation(line: 95, column: 1, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2247, file: !1945, line: 95, column: 1)
!2250 = !DILocation(line: 95, column: 1, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2249, file: !1945, line: 95, column: 1)
!2252 = !DILocation(line: 95, column: 1, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !1958, file: !1945, line: 95, column: 1)
!2254 = !{i64 2153471567}
!2255 = !DILocation(line: 95, column: 1, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2253, file: !1945, line: 95, column: 1)
!2257 = !DILocation(line: 95, column: 1, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2256, file: !1945, line: 95, column: 1)
!2259 = !{i64 2153471726}
!2260 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !2261, file: !2261, line: 93, type: !2262, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !2264)
!2261 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!2262 = !DISubroutineType(types: !2263)
!2263 = !{!919}
!2264 = !{!2265}
!2265 = !DILocalVariable(name: "c", scope: !2266, file: !2261, line: 95, type: !919)
!2266 = distinct !DILexicalBlock(scope: !2260, file: !2261, line: 95, column: 9)
!2267 = !DILocation(line: 95, column: 9, scope: !2266)
!2268 = !{i64 2149455483, i64 2149455576}
!2269 = !DILocation(line: 95, column: 9, scope: !2260)
!2270 = !DILocation(line: 95, column: 2, scope: !2260)
!2271 = distinct !DISubprogram(name: "percpu_rwsem_wait", scope: !3, file: !3, line: 141, type: !2272, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !2274)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{null, !7, !919}
!2274 = !{!2275, !2276, !2277, !2289, !2290, !2296, !2298}
!2275 = !DILocalVariable(name: "sem", arg: 1, scope: !2271, file: !3, line: 141, type: !7)
!2276 = !DILocalVariable(name: "reader", arg: 2, scope: !2271, file: !3, line: 141, type: !919)
!2277 = !DILocalVariable(name: "wq_entry", scope: !2271, file: !3, line: 143, type: !2278)
!2278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !19, line: 30, size: 320, elements: !2279)
!2279 = !{!2280, !2281, !2282, !2288}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2278, file: !19, line: 31, baseType: !83, size: 32)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2278, file: !19, line: 32, baseType: !106, size: 64, offset: 64)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2278, file: !19, line: 33, baseType: !2283, size: 64, offset: 128)
!2283 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !19, line: 16, baseType: !2284)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!6, !2287, !83, !6, !106}
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2278, file: !19, line: 34, baseType: !67, size: 128, offset: 192)
!2289 = !DILocalVariable(name: "wait", scope: !2271, file: !3, line: 144, type: !919)
!2290 = !DILocalVariable(name: "__ai_ptr", scope: !2291, file: !3, line: 159, type: !82)
!2291 = distinct !DILexicalBlock(scope: !2292, file: !3, line: 159, column: 3)
!2292 = distinct !DILexicalBlock(scope: !2293, file: !3, line: 159, column: 3)
!2293 = distinct !DILexicalBlock(scope: !2294, file: !3, line: 159, column: 3)
!2294 = distinct !DILexicalBlock(scope: !2295, file: !3, line: 159, column: 3)
!2295 = distinct !DILexicalBlock(scope: !2271, file: !3, line: 158, column: 15)
!2296 = !DILocalVariable(name: "__ret", scope: !2297, file: !3, line: 159, type: !83)
!2297 = distinct !DILexicalBlock(scope: !2291, file: !3, line: 159, column: 3)
!2298 = !DILocalVariable(name: "___p1", scope: !2299, file: !3, line: 160, type: !106)
!2299 = distinct !DILexicalBlock(scope: !2300, file: !3, line: 160, column: 8)
!2300 = distinct !DILexicalBlock(scope: !2295, file: !3, line: 160, column: 7)
!2301 = !DILocation(line: 141, column: 59, scope: !2271)
!2302 = !DILocation(line: 141, column: 69, scope: !2271)
!2303 = !DILocation(line: 143, column: 2, scope: !2271)
!2304 = !DILocation(line: 144, column: 2, scope: !2271)
!2305 = !DILocation(line: 144, column: 7, scope: !2271)
!2306 = !DILocation(line: 146, column: 17, scope: !2271)
!2307 = !DILocation(line: 146, column: 22, scope: !2271)
!2308 = !DILocation(line: 146, column: 30, scope: !2271)
!2309 = !DILocation(line: 146, column: 2, scope: !2271)
!2310 = !DILocation(line: 151, column: 33, scope: !2271)
!2311 = !DILocation(line: 151, column: 38, scope: !2271)
!2312 = !DILocation(line: 151, column: 10, scope: !2271)
!2313 = !DILocation(line: 151, column: 9, scope: !2271)
!2314 = !DILocation(line: 151, column: 7, scope: !2271)
!2315 = !DILocation(line: 152, column: 6, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2271, file: !3, line: 152, column: 6)
!2317 = !DILocation(line: 152, column: 6, scope: !2271)
!2318 = !DILocation(line: 153, column: 41, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2316, file: !3, line: 152, column: 12)
!2320 = !DILocation(line: 153, column: 48, scope: !2319)
!2321 = !DILocation(line: 153, column: 39, scope: !2319)
!2322 = !DILocation(line: 153, column: 12, scope: !2319)
!2323 = !DILocation(line: 153, column: 18, scope: !2319)
!2324 = !DILocation(line: 154, column: 32, scope: !2319)
!2325 = !DILocation(line: 154, column: 37, scope: !2319)
!2326 = !DILocation(line: 154, column: 3, scope: !2319)
!2327 = !DILocation(line: 155, column: 2, scope: !2319)
!2328 = !DILocation(line: 156, column: 19, scope: !2271)
!2329 = !DILocation(line: 156, column: 24, scope: !2271)
!2330 = !DILocation(line: 156, column: 32, scope: !2271)
!2331 = !DILocation(line: 156, column: 2, scope: !2271)
!2332 = !DILocation(line: 158, column: 2, scope: !2271)
!2333 = !DILocation(line: 158, column: 9, scope: !2271)
!2334 = !DILocation(line: 159, column: 3, scope: !2295)
!2335 = !DILocation(line: 159, column: 3, scope: !2294)
!2336 = !DILocation(line: 159, column: 3, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2294, file: !3, line: 159, column: 3)
!2338 = !DILocation(line: 159, column: 3, scope: !2293)
!2339 = !DILocation(line: 159, column: 3, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2293, file: !3, line: 159, column: 3)
!2341 = !DILocation(line: 159, column: 3, scope: !2291)
!2342 = !DILocation(line: 159, column: 3, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2291, file: !3, line: 159, column: 3)
!2344 = !DILocation(line: 159, column: 3, scope: !2297)
!2345 = !{i64 2153583607}
!2346 = !DILocation(line: 159, column: 3, scope: !2292)
!2347 = !DILocation(line: 160, column: 8, scope: !2299)
!2348 = !DILocation(line: 160, column: 8, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2299, file: !3, line: 160, column: 8)
!2350 = !DILocation(line: 160, column: 8, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2349, file: !3, line: 160, column: 8)
!2352 = !DILocation(line: 160, column: 8, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2299, file: !3, line: 160, column: 8)
!2354 = !{i64 2153588751}
!2355 = !DILocation(line: 160, column: 8, scope: !2300)
!2356 = !DILocation(line: 160, column: 7, scope: !2295)
!2357 = !DILocation(line: 161, column: 4, scope: !2300)
!2358 = !DILocation(line: 162, column: 3, scope: !2295)
!2359 = distinct !{!2359, !2332, !2360, !2361, !2362}
!2360 = !DILocation(line: 163, column: 2, scope: !2271)
!2361 = !{!"llvm.loop.mustprogress"}
!2362 = !{!"llvm.loop.unroll.disable"}
!2363 = !DILocation(line: 164, column: 2, scope: !2271)
!2364 = !DILocation(line: 164, column: 2, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2271, file: !3, line: 164, column: 2)
!2366 = !DILocation(line: 164, column: 2, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2365, file: !3, line: 164, column: 2)
!2368 = !DILocation(line: 164, column: 2, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2365, file: !3, line: 164, column: 2)
!2370 = !DILocation(line: 164, column: 2, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2369, file: !3, line: 164, column: 2)
!2372 = !DILocation(line: 164, column: 2, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2369, file: !3, line: 164, column: 2)
!2374 = !DILocation(line: 165, column: 1, scope: !2271)
!2375 = distinct !DISubprogram(name: "__preempt_count_add", scope: !2261, file: !2261, line: 78, type: !1212, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !2376)
!2376 = !{!2377, !2378, !2380}
!2377 = !DILocalVariable(name: "val", arg: 1, scope: !2375, file: !2261, line: 78, type: !6)
!2378 = !DILocalVariable(name: "pao_ID__", scope: !2379, file: !2261, line: 80, type: !2179)
!2379 = distinct !DILexicalBlock(scope: !2375, file: !2261, line: 80, column: 2)
!2380 = !DILocalVariable(name: "pto_val__", scope: !2381, file: !2261, line: 80, type: !101)
!2381 = distinct !DILexicalBlock(scope: !2382, file: !2261, line: 80, column: 2)
!2382 = distinct !DILexicalBlock(scope: !2383, file: !2261, line: 80, column: 2)
!2383 = distinct !DILexicalBlock(scope: !2379, file: !2261, line: 80, column: 2)
!2384 = !DILocation(line: 78, column: 53, scope: !2375)
!2385 = !DILocation(line: 80, column: 2, scope: !2375)
!2386 = !DILocation(line: 80, column: 2, scope: !2379)
!2387 = !DILocation(line: 80, column: 2, scope: !2383)
!2388 = !DILocation(line: 80, column: 2, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2383, file: !2261, line: 80, column: 2)
!2390 = !{i64 2149451127}
!2391 = !DILocation(line: 80, column: 2, scope: !2382)
!2392 = !DILocation(line: 80, column: 2, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2382, file: !2261, line: 80, column: 2)
!2394 = !{i64 2149451422}
!2395 = !DILocation(line: 80, column: 2, scope: !2381)
!2396 = !{i64 2149452127}
!2397 = !DILocation(line: 81, column: 1, scope: !2375)
!2398 = !DILocation(line: 122, column: 1, scope: !2000)
!2399 = !DILocation(line: 122, column: 1, scope: !2008)
!2400 = !DILocation(line: 122, column: 1, scope: !2007)
!2401 = !DILocation(line: 122, column: 1, scope: !2010)
!2402 = !DILocation(line: 122, column: 1, scope: !2013)
!2403 = !DILocation(line: 122, column: 1, scope: !2015)
!2404 = !{i64 2153512358}
!2405 = !DILocation(line: 122, column: 1, scope: !2011)
!2406 = !DILocation(line: 122, column: 1, scope: !2017)
!2407 = !DILocation(line: 122, column: 1, scope: !2021)
!2408 = !DILocation(line: 122, column: 1, scope: !2020)
!2409 = !DILocation(line: 122, column: 1, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2020, file: !1945, line: 122, column: 1)
!2411 = !DILocation(line: 122, column: 1, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2020, file: !1945, line: 122, column: 1)
!2413 = !{i64 2153513554, i64 2153513583, i64 2153513629, i64 2153513687, i64 2153513741, i64 2153513795, i64 2153513850, i64 2153513881, i64 2153514189, i64 2153514195, i64 2153514242, i64 2153514265, i64 2153514291}
!2414 = !DILocation(line: 122, column: 1, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2020, file: !1945, line: 122, column: 1)
!2416 = !DILocation(line: 122, column: 1, scope: !2018)
!2417 = !DILocation(line: 122, column: 1, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2007, file: !1945, line: 122, column: 1)
!2419 = !{i64 2153514643}
!2420 = !DILocation(line: 122, column: 1, scope: !2023)
!2421 = !DILocation(line: 122, column: 1, scope: !2026)
!2422 = !DILocation(line: 122, column: 1, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2026, file: !1945, line: 122, column: 1)
!2424 = !DILocation(line: 122, column: 1, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2423, file: !1945, line: 122, column: 1)
!2426 = !DILocation(line: 122, column: 1, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2023, file: !1945, line: 122, column: 1)
!2428 = !DILocation(line: 122, column: 1, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2427, file: !1945, line: 122, column: 1)
!2430 = !DILocation(line: 122, column: 1, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2429, file: !1945, line: 122, column: 1)
!2432 = !DILocation(line: 122, column: 1, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2007, file: !1945, line: 122, column: 1)
!2434 = !{i64 2153521002}
!2435 = !DILocation(line: 122, column: 1, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2433, file: !1945, line: 122, column: 1)
!2437 = !DILocation(line: 122, column: 1, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2436, file: !1945, line: 122, column: 1)
!2439 = !{i64 2153521161}
!2440 = distinct !DISubprogram(name: "percpu_is_read_locked", scope: !3, file: !3, line: 195, type: !2170, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !2441)
!2441 = !{!2442, !2443, !2445, !2446, !2451}
!2442 = !DILocalVariable(name: "sem", arg: 1, scope: !2440, file: !3, line: 195, type: !7)
!2443 = !DILocalVariable(name: "__sum", scope: !2444, file: !3, line: 197, type: !83)
!2444 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 197, column: 9)
!2445 = !DILocalVariable(name: "cpu", scope: !2444, file: !3, line: 197, type: !6)
!2446 = !DILocalVariable(name: "__vpp_verify", scope: !2447, file: !3, line: 197, type: !572)
!2447 = distinct !DILexicalBlock(scope: !2448, file: !3, line: 197, column: 9)
!2448 = distinct !DILexicalBlock(scope: !2449, file: !3, line: 197, column: 9)
!2449 = distinct !DILexicalBlock(scope: !2450, file: !3, line: 197, column: 9)
!2450 = distinct !DILexicalBlock(scope: !2444, file: !3, line: 197, column: 9)
!2451 = !DILocalVariable(name: "__ptr", scope: !2452, file: !3, line: 197, type: !98)
!2452 = distinct !DILexicalBlock(scope: !2448, file: !3, line: 197, column: 9)
!2453 = !DILocation(line: 195, column: 56, scope: !2440)
!2454 = !DILocation(line: 197, column: 9, scope: !2444)
!2455 = !DILocation(line: 197, column: 9, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2444, file: !3, line: 197, column: 9)
!2457 = !DILocation(line: 197, column: 9, scope: !2450)
!2458 = !DILocation(line: 197, column: 9, scope: !2449)
!2459 = !DILocation(line: 197, column: 9, scope: !2448)
!2460 = !DILocation(line: 197, column: 9, scope: !2447)
!2461 = !DILocation(line: 197, column: 9, scope: !2452)
!2462 = distinct !{!2462, !2457, !2457, !2361, !2362}
!2463 = !DILocation(line: 197, column: 9, scope: !2440)
!2464 = !DILocation(line: 197, column: 39, scope: !2440)
!2465 = !DILocation(line: 197, column: 44, scope: !2440)
!2466 = !DILocation(line: 197, column: 61, scope: !2440)
!2467 = !DILocation(line: 197, column: 66, scope: !2440)
!2468 = !DILocation(line: 197, column: 48, scope: !2440)
!2469 = !DILocation(line: 197, column: 47, scope: !2440)
!2470 = !DILocation(line: 0, scope: !2440)
!2471 = !DILocation(line: 197, column: 2, scope: !2440)
!2472 = distinct !DISubprogram(name: "find_next_bit", scope: !2473, file: !2473, line: 54, type: !2474, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !2476)
!2473 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!2474 = !DISubroutineType(types: !2475)
!2475 = !{!98, !1915, !98, !98}
!2476 = !{!2477, !2478, !2479, !2480}
!2477 = !DILocalVariable(name: "addr", arg: 1, scope: !2472, file: !2473, line: 54, type: !1915)
!2478 = !DILocalVariable(name: "size", arg: 2, scope: !2472, file: !2473, line: 54, type: !98)
!2479 = !DILocalVariable(name: "offset", arg: 3, scope: !2472, file: !2473, line: 55, type: !98)
!2480 = !DILocalVariable(name: "val", scope: !2481, file: !2473, line: 58, type: !98)
!2481 = distinct !DILexicalBlock(scope: !2482, file: !2473, line: 57, column: 31)
!2482 = distinct !DILexicalBlock(scope: !2472, file: !2473, line: 57, column: 6)
!2483 = !DILocation(line: 54, column: 50, scope: !2472)
!2484 = !DILocation(line: 54, column: 70, scope: !2472)
!2485 = !DILocation(line: 55, column: 22, scope: !2472)
!2486 = !DILocation(line: 57, column: 6, scope: !2482)
!2487 = !DILocation(line: 57, column: 6, scope: !2472)
!2488 = !DILocation(line: 58, column: 3, scope: !2481)
!2489 = !DILocation(line: 58, column: 17, scope: !2481)
!2490 = !DILocation(line: 60, column: 7, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2481, file: !2473, line: 60, column: 7)
!2492 = !DILocation(line: 60, column: 7, scope: !2481)
!2493 = !DILocation(line: 61, column: 11, scope: !2491)
!2494 = !DILocation(line: 61, column: 4, scope: !2491)
!2495 = !DILocation(line: 63, column: 10, scope: !2481)
!2496 = !DILocation(line: 63, column: 9, scope: !2481)
!2497 = !DILocation(line: 63, column: 17, scope: !2481)
!2498 = !DILocation(line: 63, column: 15, scope: !2481)
!2499 = !DILocation(line: 63, column: 7, scope: !2481)
!2500 = !DILocation(line: 64, column: 10, scope: !2481)
!2501 = !DILocation(line: 64, column: 16, scope: !2481)
!2502 = !DILocation(line: 64, column: 29, scope: !2481)
!2503 = !DILocation(line: 64, column: 3, scope: !2481)
!2504 = !DILocation(line: 65, column: 2, scope: !2482)
!2505 = !DILocation(line: 67, column: 24, scope: !2472)
!2506 = !DILocation(line: 67, column: 30, scope: !2472)
!2507 = !DILocation(line: 67, column: 36, scope: !2472)
!2508 = !DILocation(line: 67, column: 9, scope: !2472)
!2509 = !DILocation(line: 67, column: 2, scope: !2472)
!2510 = !DILocation(line: 68, column: 1, scope: !2472)
!2511 = distinct !DISubprogram(name: "atomic_read", scope: !2096, file: !2096, line: 30, type: !2512, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !2516)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{!6, !2514}
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!2516 = !{!2517}
!2517 = !DILocalVariable(name: "v", arg: 1, scope: !2511, file: !2096, line: 30, type: !2514)
!2518 = !DILocation(line: 30, column: 29, scope: !2511)
!2519 = !DILocation(line: 32, column: 25, scope: !2511)
!2520 = !DILocation(line: 32, column: 2, scope: !2511)
!2521 = !DILocation(line: 33, column: 25, scope: !2511)
!2522 = !DILocation(line: 33, column: 9, scope: !2511)
!2523 = !DILocation(line: 33, column: 2, scope: !2511)
!2524 = distinct !DISubprogram(name: "percpu_down_write", scope: !3, file: !3, line: 224, type: !2112, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !2525)
!2525 = !{!2526, !2527, !2529, !2537}
!2526 = !DILocalVariable(name: "sem", arg: 1, scope: !2524, file: !3, line: 224, type: !7)
!2527 = !DILocalVariable(name: "__ret", scope: !2528, file: !3, line: 249, type: !575)
!2528 = distinct !DILexicalBlock(scope: !2524, file: !3, line: 249, column: 2)
!2529 = !DILocalVariable(name: "__ai_ptr", scope: !2530, file: !3, line: 249, type: !82)
!2530 = distinct !DILexicalBlock(scope: !2531, file: !3, line: 249, column: 2)
!2531 = distinct !DILexicalBlock(scope: !2532, file: !3, line: 249, column: 2)
!2532 = distinct !DILexicalBlock(scope: !2533, file: !3, line: 249, column: 2)
!2533 = distinct !DILexicalBlock(scope: !2534, file: !3, line: 249, column: 2)
!2534 = distinct !DILexicalBlock(scope: !2535, file: !3, line: 249, column: 2)
!2535 = distinct !DILexicalBlock(scope: !2536, file: !3, line: 249, column: 2)
!2536 = distinct !DILexicalBlock(scope: !2528, file: !3, line: 249, column: 2)
!2537 = !DILocalVariable(name: "__ret", scope: !2538, file: !3, line: 249, type: !83)
!2538 = distinct !DILexicalBlock(scope: !2530, file: !3, line: 249, column: 2)
!2539 = !DILocation(line: 224, column: 60, scope: !2524)
!2540 = !DILocation(line: 226, column: 2, scope: !2524)
!2541 = !DILocation(line: 226, column: 2, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2524, file: !3, line: 226, column: 2)
!2543 = !DILocation(line: 227, column: 2, scope: !2524)
!2544 = !DILocation(line: 227, column: 2, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2524, file: !3, line: 227, column: 2)
!2546 = !DILocation(line: 228, column: 25, scope: !2524)
!2547 = !DILocation(line: 228, column: 2, scope: !2524)
!2548 = !DILocation(line: 231, column: 18, scope: !2524)
!2549 = !DILocation(line: 231, column: 23, scope: !2524)
!2550 = !DILocation(line: 231, column: 2, scope: !2524)
!2551 = !DILocation(line: 237, column: 35, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2524, file: !3, line: 237, column: 6)
!2553 = !DILocation(line: 237, column: 7, scope: !2552)
!2554 = !DILocation(line: 237, column: 6, scope: !2524)
!2555 = !DILocation(line: 238, column: 21, scope: !2552)
!2556 = !DILocation(line: 238, column: 3, scope: !2552)
!2557 = !DILocation(line: 249, column: 2, scope: !2528)
!2558 = !DILocation(line: 249, column: 2, scope: !2534)
!2559 = !DILocation(line: 249, column: 2, scope: !2533)
!2560 = !DILocation(line: 249, column: 2, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2533, file: !3, line: 249, column: 2)
!2562 = !DILocation(line: 249, column: 2, scope: !2532)
!2563 = !DILocation(line: 249, column: 2, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2532, file: !3, line: 249, column: 2)
!2565 = !DILocation(line: 249, column: 2, scope: !2530)
!2566 = !DILocation(line: 249, column: 2, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2530, file: !3, line: 249, column: 2)
!2568 = !DILocation(line: 249, column: 2, scope: !2538)
!2569 = !{i64 2153606599}
!2570 = !DILocation(line: 249, column: 2, scope: !2531)
!2571 = !DILocation(line: 249, column: 2, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2534, file: !3, line: 249, column: 2)
!2573 = !DILocation(line: 249, column: 2, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2534, file: !3, line: 249, column: 2)
!2575 = !DILocation(line: 249, column: 2, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2574, file: !3, line: 249, column: 2)
!2577 = !DILocation(line: 249, column: 2, scope: !2535)
!2578 = distinct !{!2578, !2579, !2579, !2362}
!2579 = !DILocation(line: 249, column: 2, scope: !2536)
!2580 = !DILocation(line: 249, column: 2, scope: !2524)
!2581 = !DILocation(line: 250, column: 23, scope: !2524)
!2582 = !DILocation(line: 250, column: 2, scope: !2524)
!2583 = !DILocation(line: 251, column: 1, scope: !2524)
!2584 = !DILocation(line: 112, column: 2, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2031, file: !2032, line: 112, column: 2)
!2586 = !DILocation(line: 112, column: 2, scope: !2031)
!2587 = !DILocation(line: 113, column: 1, scope: !2031)
!2588 = !DISubprogram(name: "rcu_sync_enter", scope: !13, file: !13, line: 41, type: !2077, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2589 = distinct !DISubprogram(name: "__percpu_down_write_trylock", scope: !3, file: !3, line: 84, type: !2170, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !2590)
!2590 = !{!2591}
!2591 = !DILocalVariable(name: "sem", arg: 1, scope: !2589, file: !3, line: 84, type: !7)
!2592 = !DILocation(line: 84, column: 76, scope: !2589)
!2593 = !DILocation(line: 86, column: 19, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2589, file: !3, line: 86, column: 6)
!2595 = !DILocation(line: 86, column: 24, scope: !2594)
!2596 = !DILocation(line: 86, column: 6, scope: !2594)
!2597 = !DILocation(line: 86, column: 6, scope: !2589)
!2598 = !DILocation(line: 87, column: 3, scope: !2594)
!2599 = !DILocation(line: 89, column: 22, scope: !2589)
!2600 = !DILocation(line: 89, column: 27, scope: !2589)
!2601 = !DILocation(line: 89, column: 9, scope: !2589)
!2602 = !DILocation(line: 89, column: 37, scope: !2589)
!2603 = !DILocation(line: 89, column: 2, scope: !2589)
!2604 = !DILocation(line: 90, column: 1, scope: !2589)
!2605 = distinct !DISubprogram(name: "prepare_to_rcuwait", scope: !86, file: !86, line: 45, type: !2081, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !2606)
!2606 = !{!2607, !2608}
!2607 = !DILocalVariable(name: "w", arg: 1, scope: !2605, file: !86, line: 45, type: !2083)
!2608 = !DILocalVariable(name: "_r_a_p__v", scope: !2609, file: !86, line: 47, type: !1911)
!2609 = distinct !DILexicalBlock(scope: !2605, file: !86, line: 47, column: 2)
!2610 = !DILocation(line: 45, column: 55, scope: !2605)
!2611 = !DILocation(line: 47, column: 2, scope: !2605)
!2612 = !DILocation(line: 47, column: 2, scope: !2609)
!2613 = !DILocation(line: 47, column: 2, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2609, file: !86, line: 47, column: 2)
!2615 = !DILocation(line: 47, column: 2, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2614, file: !86, line: 47, column: 2)
!2617 = !DILocation(line: 47, column: 2, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2616, file: !86, line: 47, column: 2)
!2619 = !DILocation(line: 47, column: 2, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2616, file: !86, line: 47, column: 2)
!2621 = !DILocation(line: 47, column: 2, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2620, file: !86, line: 47, column: 2)
!2623 = !{i64 2151894053}
!2624 = !DILocation(line: 47, column: 2, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2620, file: !86, line: 47, column: 2)
!2626 = !DILocation(line: 47, column: 2, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2625, file: !86, line: 47, column: 2)
!2628 = !DILocation(line: 47, column: 2, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2625, file: !86, line: 47, column: 2)
!2630 = !DILocation(line: 48, column: 1, scope: !2605)
!2631 = distinct !DISubprogram(name: "get_current", scope: !2632, file: !2632, line: 39, type: !2633, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !2635)
!2632 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!2633 = !DISubroutineType(types: !2634)
!2634 = !{!89}
!2635 = !{!2636, !2638, !2640}
!2636 = !DILocalVariable(name: "pscr_ret__", scope: !2637, file: !2632, line: 41, type: !89)
!2637 = distinct !DILexicalBlock(scope: !2631, file: !2632, line: 41, column: 9)
!2638 = !DILocalVariable(name: "__vpp_verify", scope: !2639, file: !2632, line: 41, type: !572)
!2639 = distinct !DILexicalBlock(scope: !2637, file: !2632, line: 41, column: 9)
!2640 = !DILocalVariable(name: "pfo_val__", scope: !2641, file: !2632, line: 41, type: !160)
!2641 = distinct !DILexicalBlock(scope: !2637, file: !2632, line: 41, column: 9)
!2642 = !DILocation(line: 41, column: 9, scope: !2637)
!2643 = !DILocation(line: 41, column: 9, scope: !2639)
!2644 = !DILocation(line: 41, column: 9, scope: !2641)
!2645 = !{i64 2148800310}
!2646 = !DILocation(line: 41, column: 9, scope: !2631)
!2647 = !DILocation(line: 41, column: 2, scope: !2631)
!2648 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !2649, file: !2649, line: 94, type: !2650, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !2655)
!2649 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!2650 = !DISubroutineType(types: !2651)
!2651 = !{null, !2652, !1230}
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2654)
!2654 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2655 = !{!2656, !2657}
!2656 = !DILocalVariable(name: "v", arg: 1, scope: !2648, file: !2649, line: 94, type: !2652)
!2657 = !DILocalVariable(name: "size", arg: 2, scope: !2648, file: !2649, line: 94, type: !1230)
!2658 = !DILocation(line: 94, column: 79, scope: !2648)
!2659 = !DILocation(line: 94, column: 89, scope: !2648)
!2660 = !DILocation(line: 96, column: 20, scope: !2648)
!2661 = !DILocation(line: 96, column: 23, scope: !2648)
!2662 = !DILocation(line: 96, column: 2, scope: !2648)
!2663 = !DILocation(line: 97, column: 2, scope: !2648)
!2664 = !DILocation(line: 98, column: 1, scope: !2648)
!2665 = distinct !DISubprogram(name: "readers_active_check", scope: !3, file: !3, line: 209, type: !2170, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !2666)
!2666 = !{!2667, !2668, !2671, !2672, !2677}
!2667 = !DILocalVariable(name: "sem", arg: 1, scope: !2665, file: !3, line: 209, type: !7)
!2668 = !DILocalVariable(name: "__sum", scope: !2669, file: !3, line: 211, type: !83)
!2669 = distinct !DILexicalBlock(scope: !2670, file: !3, line: 211, column: 6)
!2670 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 211, column: 6)
!2671 = !DILocalVariable(name: "cpu", scope: !2669, file: !3, line: 211, type: !6)
!2672 = !DILocalVariable(name: "__vpp_verify", scope: !2673, file: !3, line: 211, type: !572)
!2673 = distinct !DILexicalBlock(scope: !2674, file: !3, line: 211, column: 6)
!2674 = distinct !DILexicalBlock(scope: !2675, file: !3, line: 211, column: 6)
!2675 = distinct !DILexicalBlock(scope: !2676, file: !3, line: 211, column: 6)
!2676 = distinct !DILexicalBlock(scope: !2669, file: !3, line: 211, column: 6)
!2677 = !DILocalVariable(name: "__ptr", scope: !2678, file: !3, line: 211, type: !98)
!2678 = distinct !DILexicalBlock(scope: !2674, file: !3, line: 211, column: 6)
!2679 = !DILocation(line: 209, column: 62, scope: !2665)
!2680 = !DILocation(line: 211, column: 6, scope: !2669)
!2681 = !DILocation(line: 211, column: 6, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2669, file: !3, line: 211, column: 6)
!2683 = !DILocation(line: 211, column: 6, scope: !2676)
!2684 = !DILocation(line: 211, column: 6, scope: !2675)
!2685 = !DILocation(line: 211, column: 6, scope: !2674)
!2686 = !DILocation(line: 211, column: 6, scope: !2673)
!2687 = !DILocation(line: 211, column: 6, scope: !2678)
!2688 = distinct !{!2688, !2683, !2683, !2361, !2362}
!2689 = !DILocation(line: 211, column: 6, scope: !2670)
!2690 = !DILocation(line: 211, column: 36, scope: !2670)
!2691 = !DILocation(line: 211, column: 6, scope: !2665)
!2692 = !DILocation(line: 212, column: 3, scope: !2670)
!2693 = !DILocation(line: 219, column: 2, scope: !2665)
!2694 = !DILocation(line: 219, column: 2, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 219, column: 2)
!2696 = !DILocation(line: 219, column: 2, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2695, file: !3, line: 219, column: 2)
!2698 = !{i64 2153603716}
!2699 = !DILocation(line: 221, column: 2, scope: !2665)
!2700 = !DILocation(line: 222, column: 1, scope: !2665)
!2701 = distinct !DISubprogram(name: "signal_pending_state", scope: !1051, file: !1051, line: 414, type: !2702, scopeLine: 415, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !2704)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{!6, !83, !89}
!2704 = !{!2705, !2706}
!2705 = !DILocalVariable(name: "state", arg: 1, scope: !2701, file: !1051, line: 414, type: !83)
!2706 = !DILocalVariable(name: "p", arg: 2, scope: !2701, file: !1051, line: 414, type: !89)
!2707 = !DILocation(line: 414, column: 53, scope: !2701)
!2708 = !DILocation(line: 414, column: 80, scope: !2701)
!2709 = !DILocation(line: 416, column: 8, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2701, file: !1051, line: 416, column: 6)
!2711 = !DILocation(line: 416, column: 14, scope: !2710)
!2712 = !DILocation(line: 416, column: 6, scope: !2701)
!2713 = !DILocation(line: 417, column: 3, scope: !2710)
!2714 = !DILocation(line: 418, column: 22, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2701, file: !1051, line: 418, column: 6)
!2716 = !DILocation(line: 418, column: 7, scope: !2715)
!2717 = !DILocation(line: 418, column: 6, scope: !2701)
!2718 = !DILocation(line: 419, column: 3, scope: !2715)
!2719 = !DILocation(line: 421, column: 10, scope: !2701)
!2720 = !DILocation(line: 421, column: 16, scope: !2701)
!2721 = !DILocation(line: 421, column: 38, scope: !2701)
!2722 = !DILocation(line: 421, column: 64, scope: !2701)
!2723 = !DILocation(line: 421, column: 41, scope: !2701)
!2724 = !DILocation(line: 421, column: 2, scope: !2701)
!2725 = !DILocation(line: 422, column: 1, scope: !2701)
!2726 = !DISubprogram(name: "schedule", scope: !91, file: !91, line: 303, type: !1219, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2727 = !DISubprogram(name: "finish_rcuwait", scope: !86, file: !86, line: 50, type: !2081, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2728 = distinct !DISubprogram(name: "percpu_up_write", scope: !3, file: !3, line: 254, type: !2112, scopeLine: 255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !2729)
!2729 = !{!2730}
!2730 = !DILocalVariable(name: "sem", arg: 1, scope: !2728, file: !3, line: 254, type: !7)
!2731 = !DILocation(line: 254, column: 50, scope: !2728)
!2732 = !DILocation(line: 256, column: 2, scope: !2728)
!2733 = !DILocation(line: 256, column: 2, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2728, file: !3, line: 256, column: 2)
!2735 = !DILocation(line: 268, column: 22, scope: !2728)
!2736 = !DILocation(line: 268, column: 27, scope: !2728)
!2737 = !DILocation(line: 268, column: 2, scope: !2728)
!2738 = !DILocation(line: 273, column: 13, scope: !2728)
!2739 = !DILocation(line: 273, column: 18, scope: !2728)
!2740 = !DILocation(line: 273, column: 43, scope: !2728)
!2741 = !DILocation(line: 273, column: 2, scope: !2728)
!2742 = !DILocation(line: 280, column: 17, scope: !2728)
!2743 = !DILocation(line: 280, column: 22, scope: !2728)
!2744 = !DILocation(line: 280, column: 2, scope: !2728)
!2745 = !DILocation(line: 281, column: 1, scope: !2728)
!2746 = distinct !DISubprogram(name: "atomic_set_release", scope: !2096, file: !2096, line: 83, type: !2097, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !2747)
!2747 = !{!2748, !2749}
!2748 = !DILocalVariable(name: "v", arg: 1, scope: !2746, file: !2096, line: 83, type: !2099)
!2749 = !DILocalVariable(name: "i", arg: 2, scope: !2746, file: !2096, line: 83, type: !6)
!2750 = !DILocation(line: 83, column: 30, scope: !2746)
!2751 = !DILocation(line: 83, column: 37, scope: !2746)
!2752 = !DILocation(line: 85, column: 2, scope: !2746)
!2753 = !DILocation(line: 85, column: 2, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2746, file: !2096, line: 85, column: 2)
!2755 = !DILocation(line: 86, column: 26, scope: !2746)
!2756 = !DILocation(line: 86, column: 2, scope: !2746)
!2757 = !DILocation(line: 87, column: 25, scope: !2746)
!2758 = !DILocation(line: 87, column: 28, scope: !2746)
!2759 = !DILocation(line: 87, column: 2, scope: !2746)
!2760 = !DILocation(line: 88, column: 1, scope: !2746)
!2761 = !DISubprogram(name: "__wake_up", scope: !19, file: !19, line: 212, type: !2762, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2762 = !DISubroutineType(types: !2763)
!2763 = !{!6, !2094, !83, !6, !106}
!2764 = !DISubprogram(name: "rcu_sync_exit", scope: !13, file: !13, line: 42, type: !2077, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2765 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !2649, file: !2649, line: 80, type: !2650, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !2766)
!2766 = !{!2767, !2768}
!2767 = !DILocalVariable(name: "v", arg: 1, scope: !2765, file: !2649, line: 80, type: !2652)
!2768 = !DILocalVariable(name: "size", arg: 2, scope: !2765, file: !2649, line: 80, type: !1230)
!2769 = !DILocation(line: 80, column: 74, scope: !2765)
!2770 = !DILocation(line: 80, column: 84, scope: !2765)
!2771 = !DILocation(line: 82, column: 20, scope: !2765)
!2772 = !DILocation(line: 82, column: 23, scope: !2765)
!2773 = !DILocation(line: 82, column: 2, scope: !2765)
!2774 = !DILocation(line: 83, column: 2, scope: !2765)
!2775 = !DILocation(line: 84, column: 1, scope: !2765)
!2776 = distinct !DISubprogram(name: "raw_atomic_set", scope: !2777, file: !2777, line: 488, type: !2097, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !2778)
!2777 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!2778 = !{!2779, !2780}
!2779 = !DILocalVariable(name: "v", arg: 1, scope: !2776, file: !2777, line: 488, type: !2099)
!2780 = !DILocalVariable(name: "i", arg: 2, scope: !2776, file: !2777, line: 488, type: !6)
!2781 = !DILocation(line: 488, column: 26, scope: !2776)
!2782 = !DILocation(line: 488, column: 33, scope: !2776)
!2783 = !DILocation(line: 490, column: 18, scope: !2776)
!2784 = !DILocation(line: 490, column: 21, scope: !2776)
!2785 = !DILocation(line: 490, column: 2, scope: !2776)
!2786 = !DILocation(line: 491, column: 1, scope: !2776)
!2787 = distinct !DISubprogram(name: "kasan_check_write", scope: !2788, file: !2788, line: 44, type: !2789, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !2791)
!2788 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!2789 = !DISubroutineType(types: !2790)
!2790 = !{!919, !2652, !83}
!2791 = !{!2792, !2793}
!2792 = !DILocalVariable(name: "p", arg: 1, scope: !2787, file: !2788, line: 44, type: !2652)
!2793 = !DILocalVariable(name: "size", arg: 2, scope: !2787, file: !2788, line: 44, type: !83)
!2794 = !DILocation(line: 44, column: 59, scope: !2787)
!2795 = !DILocation(line: 44, column: 75, scope: !2787)
!2796 = !DILocation(line: 46, column: 2, scope: !2787)
!2797 = distinct !DISubprogram(name: "kcsan_check_access", scope: !2798, file: !2798, line: 229, type: !2799, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !2801)
!2798 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!2799 = !DISubroutineType(types: !2800)
!2800 = !{null, !2652, !1230, !6}
!2801 = !{!2802, !2803, !2804}
!2802 = !DILocalVariable(name: "ptr", arg: 1, scope: !2797, file: !2798, line: 229, type: !2652)
!2803 = !DILocalVariable(name: "size", arg: 2, scope: !2797, file: !2798, line: 229, type: !1230)
!2804 = !DILocalVariable(name: "type", arg: 3, scope: !2797, file: !2798, line: 230, type: !6)
!2805 = !DILocation(line: 229, column: 60, scope: !2797)
!2806 = !DILocation(line: 229, column: 72, scope: !2797)
!2807 = !DILocation(line: 230, column: 15, scope: !2797)
!2808 = !DILocation(line: 230, column: 23, scope: !2797)
!2809 = distinct !DISubprogram(name: "arch_atomic_set", scope: !2810, file: !2810, line: 26, type: !2097, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !2811)
!2810 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!2811 = !{!2812, !2813}
!2812 = !DILocalVariable(name: "v", arg: 1, scope: !2809, file: !2810, line: 26, type: !2099)
!2813 = !DILocalVariable(name: "i", arg: 2, scope: !2809, file: !2810, line: 26, type: !6)
!2814 = !DILocation(line: 26, column: 55, scope: !2809)
!2815 = !DILocation(line: 26, column: 62, scope: !2809)
!2816 = !DILocation(line: 28, column: 2, scope: !2809)
!2817 = !DILocation(line: 28, column: 2, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2809, file: !2810, line: 28, column: 2)
!2819 = !DILocation(line: 29, column: 1, scope: !2809)
!2820 = distinct !DISubprogram(name: "atomic_read_acquire", scope: !2096, file: !2096, line: 47, type: !2512, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !2821)
!2821 = !{!2822}
!2822 = !DILocalVariable(name: "v", arg: 1, scope: !2820, file: !2096, line: 47, type: !2514)
!2823 = !DILocation(line: 47, column: 37, scope: !2820)
!2824 = !DILocation(line: 49, column: 25, scope: !2820)
!2825 = !DILocation(line: 49, column: 2, scope: !2820)
!2826 = !DILocation(line: 50, column: 33, scope: !2820)
!2827 = !DILocation(line: 50, column: 9, scope: !2820)
!2828 = !DILocation(line: 50, column: 2, scope: !2820)
!2829 = !DISubprogram(name: "rcuwait_wake_up", scope: !86, file: !86, line: 37, type: !2830, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2830 = !DISubroutineType(types: !2831)
!2831 = !{!6, !2083}
!2832 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !2649, file: !2649, line: 66, type: !2650, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !2833)
!2833 = !{!2834, !2835}
!2834 = !DILocalVariable(name: "v", arg: 1, scope: !2832, file: !2649, line: 66, type: !2652)
!2835 = !DILocalVariable(name: "size", arg: 2, scope: !2832, file: !2649, line: 66, type: !1230)
!2836 = !DILocation(line: 66, column: 73, scope: !2832)
!2837 = !DILocation(line: 66, column: 83, scope: !2832)
!2838 = !DILocation(line: 68, column: 19, scope: !2832)
!2839 = !DILocation(line: 68, column: 22, scope: !2832)
!2840 = !DILocation(line: 68, column: 2, scope: !2832)
!2841 = !DILocation(line: 69, column: 2, scope: !2832)
!2842 = !DILocation(line: 70, column: 1, scope: !2832)
!2843 = distinct !DISubprogram(name: "raw_atomic_read_acquire", scope: !2777, file: !2777, line: 458, type: !2512, scopeLine: 459, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !2844)
!2844 = !{!2845, !2846, !2847}
!2845 = !DILocalVariable(name: "v", arg: 1, scope: !2843, file: !2777, line: 458, type: !2514)
!2846 = !DILocalVariable(name: "ret", scope: !2843, file: !2777, line: 463, type: !6)
!2847 = !DILocalVariable(name: "___p1", scope: !2848, file: !2777, line: 466, type: !2179)
!2848 = distinct !DILexicalBlock(scope: !2849, file: !2777, line: 466, column: 9)
!2849 = distinct !DILexicalBlock(scope: !2850, file: !2777, line: 465, column: 31)
!2850 = distinct !DILexicalBlock(scope: !2843, file: !2777, line: 465, column: 6)
!2851 = !DILocation(line: 458, column: 41, scope: !2843)
!2852 = !DILocation(line: 463, column: 2, scope: !2843)
!2853 = !DILocation(line: 463, column: 6, scope: !2843)
!2854 = !DILocation(line: 466, column: 9, scope: !2848)
!2855 = !DILocation(line: 466, column: 9, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2848, file: !2777, line: 466, column: 9)
!2857 = !DILocation(line: 466, column: 9, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2856, file: !2777, line: 466, column: 9)
!2859 = !DILocation(line: 466, column: 9, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2848, file: !2777, line: 466, column: 9)
!2861 = !{i64 2147953682}
!2862 = !DILocation(line: 466, column: 9, scope: !2849)
!2863 = !DILocation(line: 466, column: 7, scope: !2849)
!2864 = !DILocation(line: 472, column: 9, scope: !2843)
!2865 = !DILocation(line: 474, column: 1, scope: !2843)
!2866 = !DILocation(line: 472, column: 2, scope: !2843)
!2867 = distinct !DISubprogram(name: "kasan_check_read", scope: !2788, file: !2788, line: 40, type: !2789, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !2868)
!2868 = !{!2869, !2870}
!2869 = !DILocalVariable(name: "p", arg: 1, scope: !2867, file: !2788, line: 40, type: !2652)
!2870 = !DILocalVariable(name: "size", arg: 2, scope: !2867, file: !2788, line: 40, type: !83)
!2871 = !DILocation(line: 40, column: 58, scope: !2867)
!2872 = !DILocation(line: 40, column: 74, scope: !2867)
!2873 = !DILocation(line: 42, column: 2, scope: !2867)
!2874 = distinct !DISubprogram(name: "static_key_false", scope: !2875, file: !2875, line: 205, type: !2876, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !2896)
!2875 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2876 = !DISubroutineType(types: !2877)
!2877 = !{!919, !2878}
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !2875, line: 85, size: 128, elements: !2880)
!2880 = !{!2881, !2882}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2879, file: !2875, line: 86, baseType: !43, size: 32)
!2882 = !DIDerivedType(tag: DW_TAG_member, scope: !2879, file: !2875, line: 101, baseType: !2883, size: 64, offset: 64)
!2883 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2879, file: !2875, line: 101, size: 64, elements: !2884)
!2884 = !{!2885, !2886, !2893}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2883, file: !2875, line: 102, baseType: !98, size: 64)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !2883, file: !2875, line: 103, baseType: !2887, size: 64)
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2888, size: 64)
!2888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2875, line: 117, size: 128, elements: !2889)
!2889 = !{!2890, !2891, !2892}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2888, file: !2875, line: 118, baseType: !530, size: 32)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2888, file: !2875, line: 119, baseType: !530, size: 32, offset: 32)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2888, file: !2875, line: 120, baseType: !575, size: 64, offset: 64)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2883, file: !2875, line: 104, baseType: !2894, size: 64)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !2875, line: 104, flags: DIFlagFwdDecl)
!2896 = !{!2897}
!2897 = !DILocalVariable(name: "key", arg: 1, scope: !2874, file: !2875, line: 205, type: !2878)
!2898 = !DILocation(line: 205, column: 65, scope: !2874)
!2899 = !DILocation(line: 207, column: 28, scope: !2874)
!2900 = !DILocation(line: 207, column: 9, scope: !2874)
!2901 = !DILocation(line: 207, column: 2, scope: !2874)
!2902 = distinct !DISubprogram(name: "cpu_online", scope: !363, file: !363, line: 1080, type: !2903, scopeLine: 1081, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !2905)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{!919, !83}
!2905 = !{!2906}
!2906 = !DILocalVariable(name: "cpu", arg: 1, scope: !2902, file: !363, line: 1080, type: !83)
!2907 = !DILocation(line: 1080, column: 44, scope: !2902)
!2908 = !DILocation(line: 1082, column: 26, scope: !2902)
!2909 = !DILocation(line: 1082, column: 9, scope: !2902)
!2910 = !DILocation(line: 1082, column: 2, scope: !2902)
!2911 = distinct !DISubprogram(name: "arch_static_branch", scope: !2912, file: !2912, line: 25, type: !2913, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !2915)
!2912 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!2913 = !DISubroutineType(types: !2914)
!2914 = !{!919, !2878, !919}
!2915 = !{!2916, !2917, !2918}
!2916 = !DILocalVariable(name: "key", arg: 1, scope: !2911, file: !2912, line: 25, type: !2878)
!2917 = !DILocalVariable(name: "branch", arg: 2, scope: !2911, file: !2912, line: 25, type: !919)
!2918 = !DILabel(scope: !2911, name: "l_yes", file: !2912, line: 33)
!2919 = !DILocation(line: 25, column: 67, scope: !2911)
!2920 = !DILocation(line: 25, column: 77, scope: !2911)
!2921 = !DILocation(line: 30, column: 13, scope: !2911)
!2922 = !DILocation(line: 30, column: 28, scope: !2911)
!2923 = !DILocation(line: 30, column: 26, scope: !2911)
!2924 = !DILocation(line: 27, column: 2, scope: !2911)
!2925 = !{i64 1559282, i64 1559326, i64 2149044009, i64 2149044030, i64 2149044056, i64 2149044089, i64 2149044123, i64 2149044147}
!2926 = !DILocation(line: 32, column: 2, scope: !2911)
!2927 = !DILocation(line: 33, column: 1, scope: !2911)
!2928 = !DILocation(line: 34, column: 2, scope: !2911)
!2929 = !DILocation(line: 35, column: 1, scope: !2911)
!2930 = distinct !DISubprogram(name: "cpumask_test_cpu", scope: !363, file: !363, line: 502, type: !2931, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !2933)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{!919, !6, !1886}
!2933 = !{!2934, !2935}
!2934 = !DILocalVariable(name: "cpu", arg: 1, scope: !2930, file: !363, line: 502, type: !6)
!2935 = !DILocalVariable(name: "cpumask", arg: 2, scope: !2930, file: !363, line: 502, type: !1886)
!2936 = !DILocation(line: 502, column: 50, scope: !2930)
!2937 = !DILocation(line: 502, column: 77, scope: !2930)
!2938 = !DILocation(line: 504, column: 9, scope: !2930)
!2939 = !DILocation(line: 504, column: 2, scope: !2930)
!2940 = distinct !DISubprogram(name: "_test_bit", scope: !2941, file: !2941, line: 139, type: !2942, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !2947)
!2941 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!2942 = !DISubroutineType(types: !2943)
!2943 = !{!919, !98, !2944}
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2946)
!2946 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !98)
!2947 = !{!2948, !2949}
!2948 = !DILocalVariable(name: "nr", arg: 1, scope: !2940, file: !2941, line: 139, type: !98)
!2949 = !DILocalVariable(name: "addr", arg: 2, scope: !2940, file: !2941, line: 139, type: !2944)
!2950 = !DILocation(line: 139, column: 25, scope: !2940)
!2951 = !DILocation(line: 139, column: 59, scope: !2940)
!2952 = !DILocation(line: 141, column: 25, scope: !2940)
!2953 = !DILocation(line: 141, column: 32, scope: !2940)
!2954 = !DILocation(line: 141, column: 30, scope: !2940)
!2955 = !DILocation(line: 141, column: 2, scope: !2940)
!2956 = !DILocation(line: 142, column: 23, scope: !2940)
!2957 = !DILocation(line: 142, column: 27, scope: !2940)
!2958 = !DILocation(line: 142, column: 9, scope: !2940)
!2959 = !DILocation(line: 142, column: 2, scope: !2940)
!2960 = distinct !DISubprogram(name: "cpumask_check", scope: !363, file: !363, line: 148, type: !2961, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !2963)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{!83, !83}
!2963 = !{!2964}
!2964 = !DILocalVariable(name: "cpu", arg: 1, scope: !2960, file: !363, line: 148, type: !83)
!2965 = !DILocation(line: 148, column: 64, scope: !2960)
!2966 = !DILocation(line: 150, column: 20, scope: !2960)
!2967 = !DILocation(line: 150, column: 2, scope: !2960)
!2968 = !DILocation(line: 151, column: 9, scope: !2960)
!2969 = !DILocation(line: 151, column: 2, scope: !2960)
!2970 = distinct !DISubprogram(name: "arch_test_bit", scope: !2971, file: !2971, line: 237, type: !2942, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !2972)
!2971 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!2972 = !{!2973, !2974}
!2973 = !DILocalVariable(name: "nr", arg: 1, scope: !2970, file: !2971, line: 237, type: !98)
!2974 = !DILocalVariable(name: "addr", arg: 2, scope: !2970, file: !2971, line: 237, type: !2944)
!2975 = !DILocation(line: 237, column: 29, scope: !2970)
!2976 = !DILocation(line: 237, column: 63, scope: !2970)
!2977 = !DILocation(line: 239, column: 30, scope: !2970)
!2978 = !DILocation(line: 239, column: 9, scope: !2970)
!2979 = !DILocation(line: 239, column: 54, scope: !2970)
!2980 = !DILocation(line: 239, column: 58, scope: !2970)
!2981 = !DILocation(line: 239, column: 36, scope: !2970)
!2982 = !DILocation(line: 240, column: 26, scope: !2970)
!2983 = !DILocation(line: 240, column: 30, scope: !2970)
!2984 = !DILocation(line: 240, column: 8, scope: !2970)
!2985 = !DILocation(line: 239, column: 2, scope: !2970)
!2986 = distinct !DISubprogram(name: "constant_test_bit", scope: !2971, file: !2971, line: 204, type: !2987, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !2989)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!919, !575, !2944}
!2989 = !{!2990, !2991}
!2990 = !DILocalVariable(name: "nr", arg: 1, scope: !2986, file: !2971, line: 204, type: !575)
!2991 = !DILocalVariable(name: "addr", arg: 2, scope: !2986, file: !2971, line: 204, type: !2944)
!2992 = !DILocation(line: 204, column: 52, scope: !2986)
!2993 = !DILocation(line: 204, column: 86, scope: !2986)
!2994 = !DILocation(line: 206, column: 19, scope: !2986)
!2995 = !DILocation(line: 206, column: 22, scope: !2986)
!2996 = !DILocation(line: 206, column: 15, scope: !2986)
!2997 = !DILocation(line: 207, column: 4, scope: !2986)
!2998 = !DILocation(line: 207, column: 9, scope: !2986)
!2999 = !DILocation(line: 207, column: 12, scope: !2986)
!3000 = !DILocation(line: 206, column: 44, scope: !2986)
!3001 = !DILocation(line: 207, column: 37, scope: !2986)
!3002 = !DILocation(line: 206, column: 2, scope: !2986)
!3003 = distinct !DISubprogram(name: "variable_test_bit", scope: !2971, file: !2971, line: 224, type: !2987, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !3004)
!3004 = !{!3005, !3006, !3007}
!3005 = !DILocalVariable(name: "nr", arg: 1, scope: !3003, file: !2971, line: 224, type: !575)
!3006 = !DILocalVariable(name: "addr", arg: 2, scope: !3003, file: !2971, line: 224, type: !2944)
!3007 = !DILocalVariable(name: "oldbit", scope: !3003, file: !2971, line: 226, type: !919)
!3008 = !DILocation(line: 224, column: 52, scope: !3003)
!3009 = !DILocation(line: 224, column: 86, scope: !3003)
!3010 = !DILocation(line: 226, column: 2, scope: !3003)
!3011 = !DILocation(line: 226, column: 7, scope: !3003)
!3012 = !DILocation(line: 231, column: 33, scope: !3003)
!3013 = !DILocation(line: 231, column: 46, scope: !3003)
!3014 = !DILocation(line: 228, column: 2, scope: !3003)
!3015 = !{i64 2148642025, i64 2148642099}
!3016 = !DILocation(line: 233, column: 9, scope: !3003)
!3017 = !DILocation(line: 234, column: 1, scope: !3003)
!3018 = !DILocation(line: 233, column: 2, scope: !3003)
!3019 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !363, file: !363, line: 140, type: !3020, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !3022)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{null, !83, !83}
!3022 = !{!3023, !3024}
!3023 = !DILocalVariable(name: "cpu", arg: 1, scope: !3019, file: !363, line: 140, type: !83)
!3024 = !DILocalVariable(name: "bits", arg: 2, scope: !3019, file: !363, line: 140, type: !83)
!3025 = !DILocation(line: 140, column: 60, scope: !3019)
!3026 = !DILocation(line: 140, column: 78, scope: !3019)
!3027 = !DILocation(line: 145, column: 1, scope: !3019)
!3028 = distinct !DISubprogram(name: "percpu_rwsem_wake_function", scope: !3, file: !3, line: 119, type: !2285, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !3029)
!3029 = !{!3030, !3031, !3032, !3033, !3034, !3035, !3036}
!3030 = !DILocalVariable(name: "wq_entry", arg: 1, scope: !3028, file: !3, line: 119, type: !2287)
!3031 = !DILocalVariable(name: "mode", arg: 2, scope: !3028, file: !3, line: 120, type: !83)
!3032 = !DILocalVariable(name: "wake_flags", arg: 3, scope: !3028, file: !3, line: 120, type: !6)
!3033 = !DILocalVariable(name: "key", arg: 4, scope: !3028, file: !3, line: 121, type: !106)
!3034 = !DILocalVariable(name: "reader", scope: !3028, file: !3, line: 123, type: !919)
!3035 = !DILocalVariable(name: "sem", scope: !3028, file: !3, line: 124, type: !7)
!3036 = !DILocalVariable(name: "p", scope: !3028, file: !3, line: 125, type: !89)
!3037 = !DILocation(line: 119, column: 64, scope: !3028)
!3038 = !DILocation(line: 120, column: 24, scope: !3028)
!3039 = !DILocation(line: 120, column: 34, scope: !3028)
!3040 = !DILocation(line: 121, column: 17, scope: !3028)
!3041 = !DILocation(line: 123, column: 2, scope: !3028)
!3042 = !DILocation(line: 123, column: 7, scope: !3028)
!3043 = !DILocation(line: 123, column: 16, scope: !3028)
!3044 = !DILocation(line: 123, column: 26, scope: !3028)
!3045 = !DILocation(line: 123, column: 32, scope: !3028)
!3046 = !DILocation(line: 124, column: 2, scope: !3028)
!3047 = !DILocation(line: 124, column: 30, scope: !3028)
!3048 = !DILocation(line: 124, column: 36, scope: !3028)
!3049 = !DILocation(line: 125, column: 2, scope: !3028)
!3050 = !DILocation(line: 125, column: 22, scope: !3028)
!3051 = !DILocation(line: 128, column: 30, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !3028, file: !3, line: 128, column: 6)
!3053 = !DILocation(line: 128, column: 35, scope: !3052)
!3054 = !DILocation(line: 128, column: 7, scope: !3052)
!3055 = !DILocation(line: 128, column: 6, scope: !3028)
!3056 = !DILocation(line: 129, column: 3, scope: !3052)
!3057 = !DILocation(line: 131, column: 22, scope: !3028)
!3058 = !DILocation(line: 131, column: 32, scope: !3028)
!3059 = !DILocation(line: 131, column: 6, scope: !3028)
!3060 = !DILocation(line: 131, column: 4, scope: !3028)
!3061 = !DILocation(line: 132, column: 17, scope: !3028)
!3062 = !DILocation(line: 132, column: 27, scope: !3028)
!3063 = !DILocation(line: 132, column: 2, scope: !3028)
!3064 = !DILocation(line: 133, column: 2, scope: !3028)
!3065 = !DILocation(line: 133, column: 2, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3028, file: !3, line: 133, column: 2)
!3067 = !DILocation(line: 133, column: 2, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3066, file: !3, line: 133, column: 2)
!3069 = !DILocation(line: 133, column: 2, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3066, file: !3, line: 133, column: 2)
!3071 = !DILocation(line: 133, column: 2, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3070, file: !3, line: 133, column: 2)
!3073 = !{i64 2153579401}
!3074 = !DILocation(line: 133, column: 2, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3070, file: !3, line: 133, column: 2)
!3076 = !DILocation(line: 133, column: 2, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3075, file: !3, line: 133, column: 2)
!3078 = !DILocation(line: 133, column: 2, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !3075, file: !3, line: 133, column: 2)
!3080 = !DILocation(line: 135, column: 18, scope: !3028)
!3081 = !DILocation(line: 135, column: 2, scope: !3028)
!3082 = !DILocation(line: 136, column: 18, scope: !3028)
!3083 = !DILocation(line: 136, column: 2, scope: !3028)
!3084 = !DILocation(line: 138, column: 10, scope: !3028)
!3085 = !DILocation(line: 138, column: 9, scope: !3028)
!3086 = !DILocation(line: 138, column: 2, scope: !3028)
!3087 = !DILocation(line: 139, column: 1, scope: !3028)
!3088 = distinct !DISubprogram(name: "spin_lock_irq", scope: !3089, file: !3089, line: 374, type: !3090, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !3093)
!3089 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!3090 = !DISubroutineType(types: !3091)
!3091 = !{null, !3092}
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!3093 = !{!3094}
!3094 = !DILocalVariable(name: "lock", arg: 1, scope: !3088, file: !3089, line: 374, type: !3092)
!3095 = !DILocation(line: 374, column: 55, scope: !3088)
!3096 = !DILocation(line: 376, column: 2, scope: !3088)
!3097 = !DILocation(line: 377, column: 1, scope: !3088)
!3098 = !DILocation(line: 92, column: 64, scope: !1991)
!3099 = !DILocation(line: 92, column: 74, scope: !1991)
!3100 = !DILocation(line: 94, column: 6, scope: !1997)
!3101 = !DILocation(line: 94, column: 6, scope: !1991)
!3102 = !DILocation(line: 95, column: 3, scope: !1996)
!3103 = !DILocation(line: 95, column: 8, scope: !1996)
!3104 = !DILocation(line: 97, column: 3, scope: !1996)
!3105 = !DILocation(line: 97, column: 3, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !1996, file: !3, line: 97, column: 3)
!3107 = !{i64 2153575337}
!3108 = !DILocation(line: 98, column: 36, scope: !1996)
!3109 = !DILocation(line: 98, column: 9, scope: !1996)
!3110 = !DILocation(line: 98, column: 7, scope: !1996)
!3111 = !DILocation(line: 99, column: 3, scope: !1996)
!3112 = !DILocation(line: 99, column: 3, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !1996, file: !3, line: 99, column: 3)
!3114 = !{i64 2153575483}
!3115 = !DILocation(line: 99, column: 3, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !3113, file: !3, line: 99, column: 3)
!3117 = !DILocation(line: 99, column: 3, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3116, file: !3, line: 99, column: 3)
!3119 = !{i64 2153575665}
!3120 = !DILocation(line: 101, column: 10, scope: !1996)
!3121 = !DILocation(line: 101, column: 3, scope: !1996)
!3122 = !DILocation(line: 102, column: 2, scope: !1997)
!3123 = !DILocation(line: 103, column: 37, scope: !1991)
!3124 = !DILocation(line: 103, column: 9, scope: !1991)
!3125 = !DILocation(line: 103, column: 2, scope: !1991)
!3126 = !DILocation(line: 104, column: 1, scope: !1991)
!3127 = distinct !DISubprogram(name: "__add_wait_queue_entry_tail", scope: !19, file: !19, line: 194, type: !3128, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !3130)
!3128 = !DISubroutineType(types: !3129)
!3129 = !{null, !2094, !2287}
!3130 = !{!3131, !3132}
!3131 = !DILocalVariable(name: "wq_head", arg: 1, scope: !3127, file: !19, line: 194, type: !2094)
!3132 = !DILocalVariable(name: "wq_entry", arg: 2, scope: !3127, file: !19, line: 194, type: !2287)
!3133 = !DILocation(line: 194, column: 72, scope: !3127)
!3134 = !DILocation(line: 194, column: 106, scope: !3127)
!3135 = !DILocation(line: 196, column: 17, scope: !3127)
!3136 = !DILocation(line: 196, column: 27, scope: !3127)
!3137 = !DILocation(line: 196, column: 35, scope: !3127)
!3138 = !DILocation(line: 196, column: 44, scope: !3127)
!3139 = !DILocation(line: 196, column: 2, scope: !3127)
!3140 = !DILocation(line: 197, column: 1, scope: !3127)
!3141 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !3089, file: !3089, line: 399, type: !3090, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !3142)
!3142 = !{!3143}
!3143 = !DILocalVariable(name: "lock", arg: 1, scope: !3141, file: !3089, line: 399, type: !3092)
!3144 = !DILocation(line: 399, column: 57, scope: !3141)
!3145 = !DILocation(line: 401, column: 2, scope: !3141)
!3146 = !DILocation(line: 402, column: 1, scope: !3141)
!3147 = distinct !DISubprogram(name: "get_task_struct", scope: !1983, file: !1983, line: 115, type: !3148, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !3150)
!3148 = !DISubroutineType(types: !3149)
!3149 = !{!89, !89}
!3150 = !{!3151}
!3151 = !DILocalVariable(name: "t", arg: 1, scope: !3147, file: !1983, line: 115, type: !89)
!3152 = !DILocation(line: 115, column: 71, scope: !3147)
!3153 = !DILocation(line: 117, column: 16, scope: !3147)
!3154 = !DILocation(line: 117, column: 19, scope: !3147)
!3155 = !DILocation(line: 117, column: 2, scope: !3147)
!3156 = !DILocation(line: 118, column: 9, scope: !3147)
!3157 = !DILocation(line: 118, column: 2, scope: !3147)
!3158 = distinct !DISubprogram(name: "list_del_init", scope: !3159, file: !3159, line: 285, type: !3160, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !3162)
!3159 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!3160 = !DISubroutineType(types: !3161)
!3161 = !{null, !70}
!3162 = !{!3163}
!3163 = !DILocalVariable(name: "entry", arg: 1, scope: !3158, file: !3159, line: 285, type: !70)
!3164 = !DILocation(line: 285, column: 52, scope: !3158)
!3165 = !DILocation(line: 287, column: 19, scope: !3158)
!3166 = !DILocation(line: 287, column: 2, scope: !3158)
!3167 = !DILocation(line: 288, column: 17, scope: !3158)
!3168 = !DILocation(line: 288, column: 2, scope: !3158)
!3169 = !DILocation(line: 289, column: 1, scope: !3158)
!3170 = !DISubprogram(name: "wake_up_process", scope: !91, file: !91, line: 1998, type: !3171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3171 = !DISubroutineType(types: !3172)
!3172 = !{!6, !89}
!3173 = !DILocation(line: 124, column: 56, scope: !1982)
!3174 = !DILocation(line: 126, column: 30, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !1982, file: !1983, line: 126, column: 6)
!3176 = !DILocation(line: 126, column: 33, scope: !3175)
!3177 = !DILocation(line: 126, column: 7, scope: !3175)
!3178 = !DILocation(line: 126, column: 6, scope: !1982)
!3179 = !DILocation(line: 127, column: 3, scope: !3175)
!3180 = !DILocation(line: 136, column: 3, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3182, file: !1983, line: 133, column: 55)
!3182 = distinct !DILexicalBlock(scope: !1982, file: !1983, line: 133, column: 6)
!3183 = !DILocation(line: 136, column: 3, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3181, file: !1983, line: 136, column: 3)
!3185 = !DILocation(line: 137, column: 21, scope: !3181)
!3186 = !DILocation(line: 137, column: 3, scope: !3181)
!3187 = !DILocation(line: 138, column: 3, scope: !3181)
!3188 = !DILocation(line: 138, column: 3, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !3181, file: !1983, line: 138, column: 3)
!3190 = !DILocation(line: 139, column: 3, scope: !3181)
!3191 = !DILocation(line: 163, column: 1, scope: !1982)
!3192 = distinct !DISubprogram(name: "refcount_inc", scope: !109, file: !109, line: 265, type: !3193, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !3196)
!3193 = !DISubroutineType(types: !3194)
!3194 = !{null, !3195}
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!3196 = !{!3197}
!3197 = !DILocalVariable(name: "r", arg: 1, scope: !3192, file: !109, line: 265, type: !3195)
!3198 = !DILocation(line: 265, column: 45, scope: !3192)
!3199 = !DILocation(line: 267, column: 17, scope: !3192)
!3200 = !DILocation(line: 267, column: 2, scope: !3192)
!3201 = !DILocation(line: 268, column: 1, scope: !3192)
!3202 = distinct !DISubprogram(name: "__refcount_inc", scope: !109, file: !109, line: 248, type: !3203, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !3205)
!3203 = !DISubroutineType(types: !3204)
!3204 = !{null, !3195, !776}
!3205 = !{!3206, !3207}
!3206 = !DILocalVariable(name: "r", arg: 1, scope: !3202, file: !109, line: 248, type: !3195)
!3207 = !DILocalVariable(name: "oldp", arg: 2, scope: !3202, file: !109, line: 248, type: !776)
!3208 = !DILocation(line: 248, column: 47, scope: !3202)
!3209 = !DILocation(line: 248, column: 55, scope: !3202)
!3210 = !DILocation(line: 250, column: 20, scope: !3202)
!3211 = !DILocation(line: 250, column: 23, scope: !3202)
!3212 = !DILocation(line: 250, column: 2, scope: !3202)
!3213 = !DILocation(line: 251, column: 1, scope: !3202)
!3214 = distinct !DISubprogram(name: "__refcount_add", scope: !109, file: !109, line: 191, type: !3215, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !3217)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{null, !6, !3195, !776}
!3217 = !{!3218, !3219, !3220, !3221}
!3218 = !DILocalVariable(name: "i", arg: 1, scope: !3214, file: !109, line: 191, type: !6)
!3219 = !DILocalVariable(name: "r", arg: 2, scope: !3214, file: !109, line: 191, type: !3195)
!3220 = !DILocalVariable(name: "oldp", arg: 3, scope: !3214, file: !109, line: 191, type: !776)
!3221 = !DILocalVariable(name: "old", scope: !3214, file: !109, line: 193, type: !6)
!3222 = !DILocation(line: 191, column: 39, scope: !3214)
!3223 = !DILocation(line: 191, column: 54, scope: !3214)
!3224 = !DILocation(line: 191, column: 62, scope: !3214)
!3225 = !DILocation(line: 193, column: 2, scope: !3214)
!3226 = !DILocation(line: 193, column: 6, scope: !3214)
!3227 = !DILocation(line: 193, column: 37, scope: !3214)
!3228 = !DILocation(line: 193, column: 41, scope: !3214)
!3229 = !DILocation(line: 193, column: 44, scope: !3214)
!3230 = !DILocation(line: 193, column: 12, scope: !3214)
!3231 = !DILocation(line: 195, column: 6, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3214, file: !109, line: 195, column: 6)
!3233 = !DILocation(line: 195, column: 6, scope: !3214)
!3234 = !DILocation(line: 196, column: 11, scope: !3232)
!3235 = !DILocation(line: 196, column: 4, scope: !3232)
!3236 = !DILocation(line: 196, column: 9, scope: !3232)
!3237 = !DILocation(line: 196, column: 3, scope: !3232)
!3238 = !DILocation(line: 198, column: 6, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3214, file: !109, line: 198, column: 6)
!3240 = !DILocation(line: 198, column: 6, scope: !3214)
!3241 = !DILocation(line: 199, column: 26, scope: !3239)
!3242 = !DILocation(line: 199, column: 3, scope: !3239)
!3243 = !DILocation(line: 200, column: 11, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3239, file: !109, line: 200, column: 11)
!3245 = !DILocation(line: 200, column: 11, scope: !3239)
!3246 = !DILocation(line: 201, column: 26, scope: !3244)
!3247 = !DILocation(line: 201, column: 3, scope: !3244)
!3248 = !DILocation(line: 202, column: 1, scope: !3214)
!3249 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !2096, file: !2096, line: 250, type: !3250, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !3252)
!3250 = !DISubroutineType(types: !3251)
!3251 = !{!6, !6, !2099}
!3252 = !{!3253, !3254}
!3253 = !DILocalVariable(name: "i", arg: 1, scope: !3249, file: !2096, line: 250, type: !6)
!3254 = !DILocalVariable(name: "v", arg: 2, scope: !3249, file: !2096, line: 250, type: !2099)
!3255 = !DILocation(line: 250, column: 30, scope: !3249)
!3256 = !DILocation(line: 250, column: 43, scope: !3249)
!3257 = !DILocation(line: 252, column: 31, scope: !3249)
!3258 = !DILocation(line: 252, column: 2, scope: !3249)
!3259 = !DILocation(line: 253, column: 38, scope: !3249)
!3260 = !DILocation(line: 253, column: 41, scope: !3249)
!3261 = !DILocation(line: 253, column: 9, scope: !3249)
!3262 = !DILocation(line: 253, column: 2, scope: !3249)
!3263 = !DISubprogram(name: "refcount_warn_saturate", scope: !109, file: !109, line: 127, type: !3264, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3264 = !DISubroutineType(types: !3265)
!3265 = !{null, !3195, !1878}
!3266 = distinct !DISubprogram(name: "raw_atomic_fetch_add_relaxed", scope: !2777, file: !2777, line: 731, type: !3250, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !3267)
!3267 = !{!3268, !3269}
!3268 = !DILocalVariable(name: "i", arg: 1, scope: !3266, file: !2777, line: 731, type: !6)
!3269 = !DILocalVariable(name: "v", arg: 2, scope: !3266, file: !2777, line: 731, type: !2099)
!3270 = !DILocation(line: 731, column: 34, scope: !3266)
!3271 = !DILocation(line: 731, column: 47, scope: !3266)
!3272 = !DILocation(line: 736, column: 31, scope: !3266)
!3273 = !DILocation(line: 736, column: 34, scope: !3266)
!3274 = !DILocation(line: 736, column: 9, scope: !3266)
!3275 = !DILocation(line: 736, column: 2, scope: !3266)
!3276 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !2810, file: !2810, line: 95, type: !3250, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !3277)
!3277 = !{!3278, !3279, !3280}
!3278 = !DILocalVariable(name: "i", arg: 1, scope: !3276, file: !2810, line: 95, type: !6)
!3279 = !DILocalVariable(name: "v", arg: 2, scope: !3276, file: !2810, line: 95, type: !2099)
!3280 = !DILocalVariable(name: "__ret", scope: !3281, file: !2810, line: 97, type: !6)
!3281 = distinct !DILexicalBlock(scope: !3276, file: !2810, line: 97, column: 9)
!3282 = !DILocation(line: 95, column: 54, scope: !3276)
!3283 = !DILocation(line: 95, column: 67, scope: !3276)
!3284 = !DILocation(line: 97, column: 9, scope: !3281)
!3285 = !{i64 2147778478, i64 2147778517, i64 2147778538, i64 2147778575, i64 2147778598, i64 2147778607}
!3286 = !DILocation(line: 97, column: 9, scope: !3276)
!3287 = !DILocation(line: 97, column: 2, scope: !3276)
!3288 = distinct !DISubprogram(name: "__list_del_entry", scope: !3159, file: !3159, line: 213, type: !3160, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !3289)
!3289 = !{!3290}
!3290 = !DILocalVariable(name: "entry", arg: 1, scope: !3288, file: !3159, line: 213, type: !70)
!3291 = !DILocation(line: 213, column: 55, scope: !3288)
!3292 = !DILocation(line: 215, column: 30, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3288, file: !3159, line: 215, column: 6)
!3294 = !DILocation(line: 215, column: 7, scope: !3293)
!3295 = !DILocation(line: 215, column: 6, scope: !3288)
!3296 = !DILocation(line: 216, column: 3, scope: !3293)
!3297 = !DILocation(line: 218, column: 13, scope: !3288)
!3298 = !DILocation(line: 218, column: 20, scope: !3288)
!3299 = !DILocation(line: 218, column: 26, scope: !3288)
!3300 = !DILocation(line: 218, column: 33, scope: !3288)
!3301 = !DILocation(line: 218, column: 2, scope: !3288)
!3302 = !DILocation(line: 219, column: 1, scope: !3288)
!3303 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !3159, file: !3159, line: 35, type: !3160, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !3304)
!3304 = !{!3305}
!3305 = !DILocalVariable(name: "list", arg: 1, scope: !3303, file: !3159, line: 35, type: !70)
!3306 = !DILocation(line: 35, column: 53, scope: !3303)
!3307 = !DILocation(line: 37, column: 2, scope: !3303)
!3308 = !DILocation(line: 37, column: 2, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3303, file: !3159, line: 37, column: 2)
!3310 = !DILocation(line: 37, column: 2, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3309, file: !3159, line: 37, column: 2)
!3312 = !DILocation(line: 37, column: 2, scope: !3313)
!3313 = distinct !DILexicalBlock(scope: !3309, file: !3159, line: 37, column: 2)
!3314 = !DILocation(line: 38, column: 2, scope: !3303)
!3315 = !DILocation(line: 38, column: 2, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3303, file: !3159, line: 38, column: 2)
!3317 = !DILocation(line: 38, column: 2, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3316, file: !3159, line: 38, column: 2)
!3319 = !DILocation(line: 38, column: 2, scope: !3320)
!3320 = distinct !DILexicalBlock(scope: !3316, file: !3159, line: 38, column: 2)
!3321 = !DILocation(line: 39, column: 1, scope: !3303)
!3322 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !3159, file: !3159, line: 134, type: !3323, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !3325)
!3323 = !DISubroutineType(types: !3324)
!3324 = !{!919, !70}
!3325 = !{!3326}
!3326 = !DILocalVariable(name: "entry", arg: 1, scope: !3322, file: !3159, line: 134, type: !70)
!3327 = !DILocation(line: 134, column: 61, scope: !3322)
!3328 = !DILocation(line: 136, column: 2, scope: !3322)
!3329 = distinct !DISubprogram(name: "__list_del", scope: !3159, file: !3159, line: 193, type: !3330, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !3332)
!3330 = !DISubroutineType(types: !3331)
!3331 = !{null, !70, !70}
!3332 = !{!3333, !3334}
!3333 = !DILocalVariable(name: "prev", arg: 1, scope: !3329, file: !3159, line: 193, type: !70)
!3334 = !DILocalVariable(name: "next", arg: 2, scope: !3329, file: !3159, line: 193, type: !70)
!3335 = !DILocation(line: 193, column: 50, scope: !3329)
!3336 = !DILocation(line: 193, column: 75, scope: !3329)
!3337 = !DILocation(line: 195, column: 15, scope: !3329)
!3338 = !DILocation(line: 195, column: 2, scope: !3329)
!3339 = !DILocation(line: 195, column: 8, scope: !3329)
!3340 = !DILocation(line: 195, column: 13, scope: !3329)
!3341 = !DILocation(line: 196, column: 2, scope: !3329)
!3342 = !DILocation(line: 196, column: 2, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !3329, file: !3159, line: 196, column: 2)
!3344 = !DILocation(line: 196, column: 2, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3343, file: !3159, line: 196, column: 2)
!3346 = !DILocation(line: 196, column: 2, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3343, file: !3159, line: 196, column: 2)
!3348 = !DILocation(line: 197, column: 1, scope: !3329)
!3349 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !109, file: !109, line: 331, type: !3350, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !3352)
!3350 = !DISubroutineType(types: !3351)
!3351 = !{!919, !3195}
!3352 = !{!3353}
!3353 = !DILocalVariable(name: "r", arg: 1, scope: !3349, file: !109, line: 331, type: !3195)
!3354 = !DILocation(line: 331, column: 67, scope: !3349)
!3355 = !DILocation(line: 333, column: 33, scope: !3349)
!3356 = !DILocation(line: 333, column: 9, scope: !3349)
!3357 = !DILocation(line: 333, column: 2, scope: !3349)
!3358 = !DISubprogram(name: "__put_task_struct", scope: !1983, file: !1983, line: 121, type: !1984, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3359 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !109, file: !109, line: 313, type: !3360, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !3362)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!919, !3195, !776}
!3362 = !{!3363, !3364}
!3363 = !DILocalVariable(name: "r", arg: 1, scope: !3359, file: !109, line: 313, type: !3195)
!3364 = !DILocalVariable(name: "oldp", arg: 2, scope: !3359, file: !109, line: 313, type: !776)
!3365 = !DILocation(line: 313, column: 69, scope: !3359)
!3366 = !DILocation(line: 313, column: 77, scope: !3359)
!3367 = !DILocation(line: 315, column: 36, scope: !3359)
!3368 = !DILocation(line: 315, column: 39, scope: !3359)
!3369 = !DILocation(line: 315, column: 9, scope: !3359)
!3370 = !DILocation(line: 315, column: 2, scope: !3359)
!3371 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !109, file: !109, line: 270, type: !3372, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !3374)
!3372 = !DISubroutineType(types: !3373)
!3373 = !{!919, !6, !3195, !776}
!3374 = !{!3375, !3376, !3377, !3378}
!3375 = !DILocalVariable(name: "i", arg: 1, scope: !3371, file: !109, line: 270, type: !6)
!3376 = !DILocalVariable(name: "r", arg: 2, scope: !3371, file: !109, line: 270, type: !3195)
!3377 = !DILocalVariable(name: "oldp", arg: 3, scope: !3371, file: !109, line: 270, type: !776)
!3378 = !DILocalVariable(name: "old", scope: !3371, file: !109, line: 272, type: !6)
!3379 = !DILocation(line: 270, column: 61, scope: !3371)
!3380 = !DILocation(line: 270, column: 76, scope: !3371)
!3381 = !DILocation(line: 270, column: 84, scope: !3371)
!3382 = !DILocation(line: 272, column: 2, scope: !3371)
!3383 = !DILocation(line: 272, column: 6, scope: !3371)
!3384 = !DILocation(line: 272, column: 37, scope: !3371)
!3385 = !DILocation(line: 272, column: 41, scope: !3371)
!3386 = !DILocation(line: 272, column: 44, scope: !3371)
!3387 = !DILocation(line: 272, column: 12, scope: !3371)
!3388 = !DILocation(line: 274, column: 6, scope: !3389)
!3389 = distinct !DILexicalBlock(scope: !3371, file: !109, line: 274, column: 6)
!3390 = !DILocation(line: 274, column: 6, scope: !3371)
!3391 = !DILocation(line: 275, column: 11, scope: !3389)
!3392 = !DILocation(line: 275, column: 4, scope: !3389)
!3393 = !DILocation(line: 275, column: 9, scope: !3389)
!3394 = !DILocation(line: 275, column: 3, scope: !3389)
!3395 = !DILocation(line: 277, column: 6, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3371, file: !109, line: 277, column: 6)
!3397 = !DILocation(line: 277, column: 13, scope: !3396)
!3398 = !DILocation(line: 277, column: 10, scope: !3396)
!3399 = !DILocation(line: 277, column: 6, scope: !3371)
!3400 = !DILocation(line: 278, column: 3, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3396, file: !109, line: 277, column: 16)
!3402 = !DILocation(line: 278, column: 3, scope: !3403)
!3403 = distinct !DILexicalBlock(scope: !3401, file: !109, line: 278, column: 3)
!3404 = !DILocation(line: 278, column: 3, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3403, file: !109, line: 278, column: 3)
!3406 = !DILocation(line: 278, column: 3, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3403, file: !109, line: 278, column: 3)
!3408 = !DILocation(line: 278, column: 3, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !3407, file: !109, line: 278, column: 3)
!3410 = !{i64 2150275507}
!3411 = !DILocation(line: 279, column: 3, scope: !3401)
!3412 = !DILocation(line: 282, column: 6, scope: !3413)
!3413 = distinct !DILexicalBlock(scope: !3371, file: !109, line: 282, column: 6)
!3414 = !DILocation(line: 282, column: 6, scope: !3371)
!3415 = !DILocation(line: 283, column: 26, scope: !3413)
!3416 = !DILocation(line: 283, column: 3, scope: !3413)
!3417 = !DILocation(line: 285, column: 2, scope: !3371)
!3418 = !DILocation(line: 286, column: 1, scope: !3371)
!3419 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !2096, file: !2096, line: 397, type: !3250, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !3420)
!3420 = !{!3421, !3422}
!3421 = !DILocalVariable(name: "i", arg: 1, scope: !3419, file: !2096, line: 397, type: !6)
!3422 = !DILocalVariable(name: "v", arg: 2, scope: !3419, file: !2096, line: 397, type: !2099)
!3423 = !DILocation(line: 397, column: 30, scope: !3419)
!3424 = !DILocation(line: 397, column: 43, scope: !3419)
!3425 = !DILocation(line: 399, column: 2, scope: !3419)
!3426 = !DILocation(line: 399, column: 2, scope: !3427)
!3427 = distinct !DILexicalBlock(scope: !3419, file: !2096, line: 399, column: 2)
!3428 = !DILocation(line: 400, column: 31, scope: !3419)
!3429 = !DILocation(line: 400, column: 2, scope: !3419)
!3430 = !DILocation(line: 401, column: 38, scope: !3419)
!3431 = !DILocation(line: 401, column: 41, scope: !3419)
!3432 = !DILocation(line: 401, column: 9, scope: !3419)
!3433 = !DILocation(line: 401, column: 2, scope: !3419)
!3434 = distinct !DISubprogram(name: "raw_atomic_fetch_sub_release", scope: !2777, file: !2777, line: 928, type: !3250, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !3435)
!3435 = !{!3436, !3437}
!3436 = !DILocalVariable(name: "i", arg: 1, scope: !3434, file: !2777, line: 928, type: !6)
!3437 = !DILocalVariable(name: "v", arg: 2, scope: !3434, file: !2777, line: 928, type: !2099)
!3438 = !DILocation(line: 928, column: 34, scope: !3434)
!3439 = !DILocation(line: 928, column: 47, scope: !3434)
!3440 = !DILocation(line: 936, column: 31, scope: !3434)
!3441 = !DILocation(line: 936, column: 34, scope: !3434)
!3442 = !DILocation(line: 936, column: 9, scope: !3434)
!3443 = !DILocation(line: 936, column: 2, scope: !3434)
!3444 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !2810, file: !2810, line: 101, type: !3250, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !3445)
!3445 = !{!3446, !3447, !3448}
!3446 = !DILocalVariable(name: "i", arg: 1, scope: !3444, file: !2810, line: 101, type: !6)
!3447 = !DILocalVariable(name: "v", arg: 2, scope: !3444, file: !2810, line: 101, type: !2099)
!3448 = !DILocalVariable(name: "__ret", scope: !3449, file: !2810, line: 103, type: !6)
!3449 = distinct !DILexicalBlock(scope: !3444, file: !2810, line: 103, column: 9)
!3450 = !DILocation(line: 101, column: 54, scope: !3444)
!3451 = !DILocation(line: 101, column: 67, scope: !3444)
!3452 = !DILocation(line: 103, column: 9, scope: !3449)
!3453 = !{i64 2147780667, i64 2147780706, i64 2147780727, i64 2147780764, i64 2147780787, i64 2147780796}
!3454 = !DILocation(line: 103, column: 9, scope: !3444)
!3455 = !DILocation(line: 103, column: 2, scope: !3444)
!3456 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !3457, file: !3457, line: 29, type: !3458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3457 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!3458 = !DISubroutineType(types: !3459)
!3459 = !{null, !3460}
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!3461 = distinct !DISubprogram(name: "list_add_tail", scope: !3159, file: !3159, line: 181, type: !3330, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !3462)
!3462 = !{!3463, !3464}
!3463 = !DILocalVariable(name: "new", arg: 1, scope: !3461, file: !3159, line: 181, type: !70)
!3464 = !DILocalVariable(name: "head", arg: 2, scope: !3461, file: !3159, line: 181, type: !70)
!3465 = !DILocation(line: 181, column: 52, scope: !3461)
!3466 = !DILocation(line: 181, column: 75, scope: !3461)
!3467 = !DILocation(line: 183, column: 13, scope: !3461)
!3468 = !DILocation(line: 183, column: 18, scope: !3461)
!3469 = !DILocation(line: 183, column: 24, scope: !3461)
!3470 = !DILocation(line: 183, column: 30, scope: !3461)
!3471 = !DILocation(line: 183, column: 2, scope: !3461)
!3472 = !DILocation(line: 184, column: 1, scope: !3461)
!3473 = distinct !DISubprogram(name: "__list_add", scope: !3159, file: !3159, line: 146, type: !3474, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !3476)
!3474 = !DISubroutineType(types: !3475)
!3475 = !{null, !70, !70, !70}
!3476 = !{!3477, !3478, !3479}
!3477 = !DILocalVariable(name: "new", arg: 1, scope: !3473, file: !3159, line: 146, type: !70)
!3478 = !DILocalVariable(name: "prev", arg: 2, scope: !3473, file: !3159, line: 147, type: !70)
!3479 = !DILocalVariable(name: "next", arg: 3, scope: !3473, file: !3159, line: 148, type: !70)
!3480 = !DILocation(line: 146, column: 49, scope: !3473)
!3481 = !DILocation(line: 147, column: 28, scope: !3473)
!3482 = !DILocation(line: 148, column: 28, scope: !3473)
!3483 = !DILocation(line: 150, column: 24, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !3473, file: !3159, line: 150, column: 6)
!3485 = !DILocation(line: 150, column: 29, scope: !3484)
!3486 = !DILocation(line: 150, column: 35, scope: !3484)
!3487 = !DILocation(line: 150, column: 7, scope: !3484)
!3488 = !DILocation(line: 150, column: 6, scope: !3473)
!3489 = !DILocation(line: 151, column: 3, scope: !3484)
!3490 = !DILocation(line: 153, column: 15, scope: !3473)
!3491 = !DILocation(line: 153, column: 2, scope: !3473)
!3492 = !DILocation(line: 153, column: 8, scope: !3473)
!3493 = !DILocation(line: 153, column: 13, scope: !3473)
!3494 = !DILocation(line: 154, column: 14, scope: !3473)
!3495 = !DILocation(line: 154, column: 2, scope: !3473)
!3496 = !DILocation(line: 154, column: 7, scope: !3473)
!3497 = !DILocation(line: 154, column: 12, scope: !3473)
!3498 = !DILocation(line: 155, column: 14, scope: !3473)
!3499 = !DILocation(line: 155, column: 2, scope: !3473)
!3500 = !DILocation(line: 155, column: 7, scope: !3473)
!3501 = !DILocation(line: 155, column: 12, scope: !3473)
!3502 = !DILocation(line: 156, column: 2, scope: !3473)
!3503 = !DILocation(line: 156, column: 2, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3473, file: !3159, line: 156, column: 2)
!3505 = !DILocation(line: 156, column: 2, scope: !3506)
!3506 = distinct !DILexicalBlock(scope: !3504, file: !3159, line: 156, column: 2)
!3507 = !DILocation(line: 156, column: 2, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !3504, file: !3159, line: 156, column: 2)
!3509 = !DILocation(line: 157, column: 1, scope: !3473)
!3510 = distinct !DISubprogram(name: "__list_add_valid", scope: !3159, file: !3159, line: 128, type: !3511, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !3513)
!3511 = !DISubroutineType(types: !3512)
!3512 = !{!919, !70, !70, !70}
!3513 = !{!3514, !3515, !3516}
!3514 = !DILocalVariable(name: "new", arg: 1, scope: !3510, file: !3159, line: 128, type: !70)
!3515 = !DILocalVariable(name: "prev", arg: 2, scope: !3510, file: !3159, line: 129, type: !70)
!3516 = !DILocalVariable(name: "next", arg: 3, scope: !3510, file: !3159, line: 130, type: !70)
!3517 = !DILocation(line: 128, column: 55, scope: !3510)
!3518 = !DILocation(line: 129, column: 23, scope: !3510)
!3519 = !DILocation(line: 130, column: 23, scope: !3510)
!3520 = !DILocation(line: 132, column: 2, scope: !3510)
!3521 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !3457, file: !3457, line: 41, type: !3458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3522 = distinct !DISubprogram(name: "variable__ffs", scope: !2971, file: !2971, line: 250, type: !3523, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !3525)
!3523 = !DISubroutineType(types: !3524)
!3524 = !{!98, !98}
!3525 = !{!3526}
!3526 = !DILocalVariable(name: "word", arg: 1, scope: !3522, file: !2971, line: 250, type: !98)
!3527 = !DILocation(line: 250, column: 66, scope: !3522)
!3528 = !DILocation(line: 254, column: 11, scope: !3522)
!3529 = !DILocation(line: 252, column: 2, scope: !3522)
!3530 = !{i64 1139947}
!3531 = !DILocation(line: 255, column: 9, scope: !3522)
!3532 = !DILocation(line: 255, column: 2, scope: !3522)
!3533 = !DISubprogram(name: "_find_next_bit", scope: !2473, file: !2473, line: 11, type: !2474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3534 = distinct !DISubprogram(name: "raw_atomic_read", scope: !2777, file: !2777, line: 442, type: !2512, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !3535)
!3535 = !{!3536}
!3536 = !DILocalVariable(name: "v", arg: 1, scope: !3534, file: !2777, line: 442, type: !2514)
!3537 = !DILocation(line: 442, column: 33, scope: !3534)
!3538 = !DILocation(line: 444, column: 26, scope: !3534)
!3539 = !DILocation(line: 444, column: 9, scope: !3534)
!3540 = !DILocation(line: 444, column: 2, scope: !3534)
!3541 = distinct !DISubprogram(name: "arch_atomic_read", scope: !2810, file: !2810, line: 17, type: !2512, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !3542)
!3542 = !{!3543}
!3543 = !DILocalVariable(name: "v", arg: 1, scope: !3541, file: !2810, line: 17, type: !2514)
!3544 = !DILocation(line: 17, column: 61, scope: !3541)
!3545 = !DILocation(line: 23, column: 9, scope: !3541)
!3546 = !DILocation(line: 23, column: 2, scope: !3541)
!3547 = distinct !DISubprogram(name: "atomic_xchg", scope: !2096, file: !2096, line: 1116, type: !3548, scopeLine: 1117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !3550)
!3548 = !DISubroutineType(types: !3549)
!3549 = !{!6, !2099, !6}
!3550 = !{!3551, !3552}
!3551 = !DILocalVariable(name: "v", arg: 1, scope: !3547, file: !2096, line: 1116, type: !2099)
!3552 = !DILocalVariable(name: "new", arg: 2, scope: !3547, file: !2096, line: 1116, type: !6)
!3553 = !DILocation(line: 1116, column: 23, scope: !3547)
!3554 = !DILocation(line: 1116, column: 30, scope: !3547)
!3555 = !DILocation(line: 1118, column: 2, scope: !3547)
!3556 = !DILocation(line: 1118, column: 2, scope: !3557)
!3557 = distinct !DILexicalBlock(scope: !3547, file: !2096, line: 1118, column: 2)
!3558 = !DILocation(line: 1119, column: 31, scope: !3547)
!3559 = !DILocation(line: 1119, column: 2, scope: !3547)
!3560 = !DILocation(line: 1120, column: 25, scope: !3547)
!3561 = !DILocation(line: 1120, column: 28, scope: !3547)
!3562 = !DILocation(line: 1120, column: 9, scope: !3547)
!3563 = !DILocation(line: 1120, column: 2, scope: !3547)
!3564 = distinct !DISubprogram(name: "raw_atomic_xchg", scope: !2777, file: !2777, line: 1897, type: !3548, scopeLine: 1898, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !3565)
!3565 = !{!3566, !3567}
!3566 = !DILocalVariable(name: "v", arg: 1, scope: !3564, file: !2777, line: 1897, type: !2099)
!3567 = !DILocalVariable(name: "new", arg: 2, scope: !3564, file: !2777, line: 1897, type: !6)
!3568 = !DILocation(line: 1897, column: 27, scope: !3564)
!3569 = !DILocation(line: 1897, column: 34, scope: !3564)
!3570 = !DILocation(line: 1900, column: 26, scope: !3564)
!3571 = !DILocation(line: 1900, column: 29, scope: !3564)
!3572 = !DILocation(line: 1900, column: 9, scope: !3564)
!3573 = !DILocation(line: 1900, column: 2, scope: !3564)
!3574 = distinct !DISubprogram(name: "arch_atomic_xchg", scope: !2810, file: !2810, line: 119, type: !3548, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !3575)
!3575 = !{!3576, !3577, !3578}
!3576 = !DILocalVariable(name: "v", arg: 1, scope: !3574, file: !2810, line: 119, type: !2099)
!3577 = !DILocalVariable(name: "new", arg: 2, scope: !3574, file: !2810, line: 119, type: !6)
!3578 = !DILocalVariable(name: "__ret", scope: !3579, file: !2810, line: 121, type: !6)
!3579 = distinct !DILexicalBlock(scope: !3574, file: !2810, line: 121, column: 9)
!3580 = !DILocation(line: 119, column: 55, scope: !3574)
!3581 = !DILocation(line: 119, column: 62, scope: !3574)
!3582 = !DILocation(line: 121, column: 9, scope: !3579)
!3583 = !{i64 2147788179}
!3584 = !DILocation(line: 121, column: 9, scope: !3574)
!3585 = !DILocation(line: 121, column: 2, scope: !3574)
!3586 = distinct !DISubprogram(name: "signal_pending", scope: !1051, file: !1051, line: 392, type: !3171, scopeLine: 393, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !3587)
!3587 = !{!3588}
!3588 = !DILocalVariable(name: "p", arg: 1, scope: !3586, file: !1051, line: 392, type: !89)
!3589 = !DILocation(line: 392, column: 54, scope: !3586)
!3590 = !DILocation(line: 399, column: 6, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3586, file: !1051, line: 399, column: 6)
!3592 = !DILocation(line: 399, column: 6, scope: !3586)
!3593 = !DILocation(line: 400, column: 3, scope: !3591)
!3594 = !DILocation(line: 401, column: 25, scope: !3586)
!3595 = !DILocation(line: 401, column: 9, scope: !3586)
!3596 = !DILocation(line: 401, column: 2, scope: !3586)
!3597 = !DILocation(line: 402, column: 1, scope: !3586)
!3598 = distinct !DISubprogram(name: "__fatal_signal_pending", scope: !1051, file: !1051, line: 404, type: !3171, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !3599)
!3599 = !{!3600}
!3600 = !DILocalVariable(name: "p", arg: 1, scope: !3598, file: !1051, line: 404, type: !89)
!3601 = !DILocation(line: 404, column: 62, scope: !3598)
!3602 = !DILocation(line: 406, column: 9, scope: !3598)
!3603 = !DILocation(line: 406, column: 2, scope: !3598)
!3604 = distinct !DISubprogram(name: "test_tsk_thread_flag", scope: !91, file: !91, line: 2066, type: !3605, scopeLine: 2067, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !3607)
!3605 = !DISubroutineType(types: !3606)
!3606 = !{!6, !89, !6}
!3607 = !{!3608, !3609}
!3608 = !DILocalVariable(name: "tsk", arg: 1, scope: !3604, file: !91, line: 2066, type: !89)
!3609 = !DILocalVariable(name: "flag", arg: 2, scope: !3604, file: !91, line: 2066, type: !6)
!3610 = !DILocation(line: 2066, column: 60, scope: !3604)
!3611 = !DILocation(line: 2066, column: 69, scope: !3604)
!3612 = !DILocation(line: 2068, column: 29, scope: !3604)
!3613 = !DILocation(line: 2068, column: 52, scope: !3604)
!3614 = !DILocation(line: 2068, column: 9, scope: !3604)
!3615 = !DILocation(line: 2068, column: 2, scope: !3604)
!3616 = distinct !DISubprogram(name: "task_sigpending", scope: !1051, file: !1051, line: 387, type: !3171, scopeLine: 388, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !3617)
!3617 = !{!3618}
!3618 = !DILocalVariable(name: "p", arg: 1, scope: !3616, file: !1051, line: 387, type: !89)
!3619 = !DILocation(line: 387, column: 55, scope: !3616)
!3620 = !DILocation(line: 389, column: 9, scope: !3616)
!3621 = !DILocation(line: 389, column: 2, scope: !3616)
!3622 = distinct !DISubprogram(name: "test_ti_thread_flag", scope: !3623, file: !3623, line: 116, type: !3624, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !3627)
!3623 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!3624 = !DISubroutineType(types: !3625)
!3625 = !{!6, !3626, !6}
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!3627 = !{!3628, !3629}
!3628 = !DILocalVariable(name: "ti", arg: 1, scope: !3622, file: !3623, line: 116, type: !3626)
!3629 = !DILocalVariable(name: "flag", arg: 2, scope: !3622, file: !3623, line: 116, type: !6)
!3630 = !DILocation(line: 116, column: 59, scope: !3622)
!3631 = !DILocation(line: 116, column: 67, scope: !3622)
!3632 = !DILocation(line: 118, column: 9, scope: !3622)
!3633 = !DILocation(line: 118, column: 2, scope: !3622)
!3634 = distinct !DISubprogram(name: "const_test_bit", scope: !3635, file: !3635, line: 166, type: !2942, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !3636)
!3635 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!3636 = !{!3637, !3638, !3639, !3640, !3641}
!3637 = !DILocalVariable(name: "nr", arg: 1, scope: !3634, file: !3635, line: 166, type: !98)
!3638 = !DILocalVariable(name: "addr", arg: 2, scope: !3634, file: !3635, line: 166, type: !2944)
!3639 = !DILocalVariable(name: "p", scope: !3634, file: !3635, line: 168, type: !1915)
!3640 = !DILocalVariable(name: "mask", scope: !3634, file: !3635, line: 169, type: !98)
!3641 = !DILocalVariable(name: "val", scope: !3634, file: !3635, line: 170, type: !98)
!3642 = !DILocation(line: 166, column: 30, scope: !3634)
!3643 = !DILocation(line: 166, column: 64, scope: !3634)
!3644 = !DILocation(line: 168, column: 2, scope: !3634)
!3645 = !DILocation(line: 168, column: 23, scope: !3634)
!3646 = !DILocation(line: 168, column: 50, scope: !3634)
!3647 = !DILocation(line: 168, column: 57, scope: !3634)
!3648 = !DILocation(line: 168, column: 55, scope: !3634)
!3649 = !DILocation(line: 169, column: 2, scope: !3634)
!3650 = !DILocation(line: 169, column: 16, scope: !3634)
!3651 = !DILocation(line: 169, column: 23, scope: !3634)
!3652 = !DILocation(line: 170, column: 2, scope: !3634)
!3653 = !DILocation(line: 170, column: 16, scope: !3634)
!3654 = !DILocation(line: 170, column: 23, scope: !3634)
!3655 = !DILocation(line: 170, column: 22, scope: !3634)
!3656 = !DILocation(line: 172, column: 12, scope: !3634)
!3657 = !DILocation(line: 172, column: 18, scope: !3634)
!3658 = !DILocation(line: 172, column: 16, scope: !3634)
!3659 = !DILocation(line: 172, column: 10, scope: !3634)
!3660 = !DILocation(line: 172, column: 9, scope: !3634)
!3661 = !DILocation(line: 173, column: 1, scope: !3634)
!3662 = !DILocation(line: 172, column: 2, scope: !3634)
!3663 = distinct !DISubprogram(name: "sigismember", scope: !3664, file: !3664, line: 82, type: !3665, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !3668)
!3664 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!3665 = !DISubroutineType(types: !3666)
!3666 = !{!6, !3667, !6}
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!3668 = !{!3669, !3670, !3671}
!3669 = !DILocalVariable(name: "set", arg: 1, scope: !3663, file: !3664, line: 82, type: !3667)
!3670 = !DILocalVariable(name: "_sig", arg: 2, scope: !3663, file: !3664, line: 82, type: !6)
!3671 = !DILocalVariable(name: "sig", scope: !3663, file: !3664, line: 84, type: !98)
!3672 = !DILocation(line: 82, column: 41, scope: !3663)
!3673 = !DILocation(line: 82, column: 50, scope: !3663)
!3674 = !DILocation(line: 84, column: 2, scope: !3663)
!3675 = !DILocation(line: 84, column: 16, scope: !3663)
!3676 = !DILocation(line: 84, column: 22, scope: !3663)
!3677 = !DILocation(line: 84, column: 27, scope: !3663)
!3678 = !DILocation(line: 86, column: 15, scope: !3679)
!3679 = distinct !DILexicalBlock(scope: !3663, file: !3664, line: 85, column: 6)
!3680 = !DILocation(line: 86, column: 20, scope: !3679)
!3681 = !DILocation(line: 86, column: 30, scope: !3679)
!3682 = !DILocation(line: 86, column: 27, scope: !3679)
!3683 = !DILocation(line: 86, column: 12, scope: !3679)
!3684 = !DILocation(line: 86, column: 10, scope: !3679)
!3685 = !DILocation(line: 89, column: 1, scope: !3663)
!3686 = !DILocation(line: 86, column: 3, scope: !3679)
!3687 = distinct !DISubprogram(name: "raw_atomic_set_release", scope: !2777, file: !2777, line: 505, type: !2097, scopeLine: 506, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1871, retainedNodes: !3688)
!3688 = !{!3689, !3690}
!3689 = !DILocalVariable(name: "v", arg: 1, scope: !3687, file: !2777, line: 505, type: !2099)
!3690 = !DILocalVariable(name: "i", arg: 2, scope: !3687, file: !2777, line: 505, type: !6)
!3691 = !DILocation(line: 505, column: 34, scope: !3687)
!3692 = !DILocation(line: 505, column: 41, scope: !3687)
!3693 = !DILocation(line: 511, column: 3, scope: !3694)
!3694 = distinct !DILexicalBlock(scope: !3695, file: !2777, line: 510, column: 31)
!3695 = distinct !DILexicalBlock(scope: !3687, file: !2777, line: 510, column: 6)
!3696 = !DILocation(line: 511, column: 3, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !3694, file: !2777, line: 511, column: 3)
!3698 = !DILocation(line: 511, column: 3, scope: !3699)
!3699 = distinct !DILexicalBlock(scope: !3697, file: !2777, line: 511, column: 3)
!3700 = !DILocation(line: 511, column: 3, scope: !3701)
!3701 = distinct !DILexicalBlock(scope: !3697, file: !2777, line: 511, column: 3)
!3702 = !DILocation(line: 511, column: 3, scope: !3703)
!3703 = distinct !DILexicalBlock(scope: !3701, file: !2777, line: 511, column: 3)
!3704 = !{i64 2147956373}
!3705 = !DILocation(line: 511, column: 3, scope: !3706)
!3706 = distinct !DILexicalBlock(scope: !3701, file: !2777, line: 511, column: 3)
!3707 = !DILocation(line: 511, column: 3, scope: !3708)
!3708 = distinct !DILexicalBlock(scope: !3706, file: !2777, line: 511, column: 3)
!3709 = !DILocation(line: 511, column: 3, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !3706, file: !2777, line: 511, column: 3)
!3711 = !DILocation(line: 517, column: 1, scope: !3687)
