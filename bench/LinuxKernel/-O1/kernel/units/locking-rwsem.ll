; ModuleID = 'kernel/locking/rwsem.c'
source_filename = "kernel/locking/rwsem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___init_rwsem: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __init_rwsem ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_down_read: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad down_read ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_down_read_interruptible: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad down_read_interruptible ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_down_read_killable: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad down_read_killable ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_down_read_trylock: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad down_read_trylock ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_down_write: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad down_write ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_down_write_killable: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad down_write_killable ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_down_write_trylock: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad down_write_trylock ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_up_read: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad up_read ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_up_write: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad up_write ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_downgrade_write: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad downgrade_write ; .previous"

%struct.static_call_key = type { ptr, %union.anon.1 }
%union.anon.1 = type { i64 }
%struct.pcpu_hot = type { %union.anon.2 }
%union.anon.2 = type { %struct.anon.3, [16 x i8] }
%struct.anon.3 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.16 }
%struct.atomic_t = type { i32 }
%union.anon.16 = type { i64 }
%struct.cpumask = type { [1 x i64] }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rwsem_waiter = type { %struct.list_head, ptr, i32, i64, i8 }
%struct.wake_q_head = type { ptr, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i64, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, ptr, [32 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, %union.rcu_special, %struct.list_head, ptr, i64, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i16, i64, %struct.restart_block, i32, i32, i64, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, ptr, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, %struct.task_io_accounting, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.mutex, i32, ptr, %struct.mutex, %struct.list_head, ptr, i16, i16, ptr, i32, i32, i64, i32, i32, i32, i32, %struct.callback_head, %struct.tlbflush_unmap_batch, ptr, %struct.page_frag, ptr, i32, i32, i64, i64, i64, i64, ptr, ptr, %struct.kmap_ctrl, %struct.callback_head, %struct.refcount_struct, i32, ptr, %struct.timer_list, ptr, %struct.refcount_struct, ptr, ptr, i64, i64, i64, %struct.callback_head, i32, %struct.llist_head, %struct.llist_head, %struct.callback_head, [48 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i64, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.4, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.4 = type { i32 }
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
%struct.restart_block = type { i64, ptr, %union.anon.6 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.11 }
%union.anon.11 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i64] }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.12, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.15 }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { i64, i64 }
%union.anon.15 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.tracepoint_func = type { ptr, ptr, i32 }

@__UNIQUE_ID___addressable___init_rwsem254 = internal global ptr @__init_rwsem, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_down_read270 = internal global ptr @down_read, section ".discard.addressable", align 8, !dbg !1925
@__UNIQUE_ID___addressable_down_read_interruptible271 = internal global ptr @down_read_interruptible, section ".discard.addressable", align 8, !dbg !1927
@__UNIQUE_ID___addressable_down_read_killable272 = internal global ptr @down_read_killable, section ".discard.addressable", align 8, !dbg !1929
@__UNIQUE_ID___addressable_down_read_trylock273 = internal global ptr @down_read_trylock, section ".discard.addressable", align 8, !dbg !1931
@__UNIQUE_ID___addressable_down_write274 = internal global ptr @down_write, section ".discard.addressable", align 8, !dbg !1933
@__UNIQUE_ID___addressable_down_write_killable275 = internal global ptr @down_write_killable, section ".discard.addressable", align 8, !dbg !1935
@__UNIQUE_ID___addressable_down_write_trylock276 = internal global ptr @down_write_trylock, section ".discard.addressable", align 8, !dbg !1937
@__UNIQUE_ID___addressable_up_read277 = internal global ptr @up_read, section ".discard.addressable", align 8, !dbg !1939
@__UNIQUE_ID___addressable_up_write278 = internal global ptr @up_write, section ".discard.addressable", align 8, !dbg !1941
@__UNIQUE_ID___addressable_downgrade_write279 = internal global ptr @downgrade_write, section ".discard.addressable", align 8, !dbg !1943
@might_resched.__UNIQUE_ID___addressable___SCK__might_resched2 = internal global ptr @__SCK__might_resched, section ".discard.addressable", align 8, !dbg !1945
@__SCK__might_resched = external dso_local global %struct.static_call_key, align 8
@__down_read_common.__UNIQUE_ID___addressable___SCK__preempt_schedule263 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !1949
@__SCK__preempt_schedule = external dso_local global %struct.static_call_key, align 8
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str = private unnamed_addr constant [23 x i8] c"kernel/locking/rwsem.c\00", align 1, !dbg !1961
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@__tracepoint_contention_begin = external dso_local global %struct.tracepoint, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"include/trace/events/lock.h\00", align 1, !dbg !1966
@trace_contention_begin.__UNIQUE_ID___addressable___SCK__tp_func_contention_begin240 = internal global ptr @__SCK__tp_func_contention_begin, section ".discard.addressable", align 8, !dbg !1972
@__SCK__tp_func_contention_begin = external dso_local global %struct.static_call_key, align 8
@trace_contention_begin.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace241 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !2001
@__SCK__preempt_schedule_notrace = external dso_local global %struct.static_call_key, align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@__tracepoint_contention_end = external dso_local global %struct.tracepoint, align 8
@trace_contention_end.__UNIQUE_ID___addressable___SCK__tp_func_contention_end248 = internal global ptr @__SCK__tp_func_contention_end, section ".discard.addressable", align 8, !dbg !2003
@__SCK__tp_func_contention_end = external dso_local global %struct.static_call_key, align 8
@trace_contention_end.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace249 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !2032
@__down_read_trylock.__UNIQUE_ID___addressable___SCK__preempt_schedule264 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !2034
@__down_write_common.__UNIQUE_ID___addressable___SCK__preempt_schedule265 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !2043
@__down_write_trylock.__UNIQUE_ID___addressable___SCK__preempt_schedule266 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !2050
@__up_read.__UNIQUE_ID___addressable___SCK__preempt_schedule267 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !2056
@__up_write.__UNIQUE_ID___addressable___SCK__preempt_schedule268 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !2064
@__downgrade_write.__UNIQUE_ID___addressable___SCK__preempt_schedule269 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !2070
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID___addressable___init_rwsem254, ptr @__UNIQUE_ID___addressable_down_read270, ptr @__UNIQUE_ID___addressable_down_read_interruptible271, ptr @__UNIQUE_ID___addressable_down_read_killable272, ptr @__UNIQUE_ID___addressable_down_read_trylock273, ptr @__UNIQUE_ID___addressable_down_write274, ptr @__UNIQUE_ID___addressable_down_write_killable275, ptr @__UNIQUE_ID___addressable_down_write_trylock276, ptr @__UNIQUE_ID___addressable_up_read277, ptr @__UNIQUE_ID___addressable_up_write278, ptr @__UNIQUE_ID___addressable_downgrade_write279, ptr @might_resched.__UNIQUE_ID___addressable___SCK__might_resched2, ptr @__down_read_common.__UNIQUE_ID___addressable___SCK__preempt_schedule263, ptr @trace_contention_begin.__UNIQUE_ID___addressable___SCK__tp_func_contention_begin240, ptr @trace_contention_begin.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace241, ptr @trace_contention_end.__UNIQUE_ID___addressable___SCK__tp_func_contention_end248, ptr @trace_contention_end.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace249, ptr @__down_read_trylock.__UNIQUE_ID___addressable___SCK__preempt_schedule264, ptr @__down_write_common.__UNIQUE_ID___addressable___SCK__preempt_schedule265, ptr @__down_write_trylock.__UNIQUE_ID___addressable___SCK__preempt_schedule266, ptr @__up_read.__UNIQUE_ID___addressable___SCK__preempt_schedule267, ptr @__up_write.__UNIQUE_ID___addressable___SCK__preempt_schedule268, ptr @__downgrade_write.__UNIQUE_ID___addressable___SCK__preempt_schedule269], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__init_rwsem(ptr noundef %sem, ptr noundef %name, ptr noundef %key) #0 align 16 !dbg !2086 {
entry:
  %sem.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %.compoundliteral = alloca %struct.raw_spinlock, align 4
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !2093, metadata !DIExpression()), !dbg !2096
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !2094, metadata !DIExpression()), !dbg !2097
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !2095, metadata !DIExpression()), !dbg !2098
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !2099
  %count = getelementptr inbounds %struct.rw_semaphore, ptr %0, i32 0, i32 0, !dbg !2100
  call void @atomic_long_set(ptr noundef %count, i64 noundef 0) #13, !dbg !2101
  br label %do.body, !dbg !2102

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %sem.addr, align 8, !dbg !2103
  %wait_lock = getelementptr inbounds %struct.rw_semaphore, ptr %1, i32 0, i32 3, !dbg !2103
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !2103
  %2 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !2103
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !2103
  store i32 0, ptr %counter, align 4, !dbg !2103
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %wait_lock, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !2103
  br label %do.end, !dbg !2103

do.end:                                           ; preds = %do.body
  %3 = load ptr, ptr %sem.addr, align 8, !dbg !2105
  %wait_list = getelementptr inbounds %struct.rw_semaphore, ptr %3, i32 0, i32 4, !dbg !2106
  call void @INIT_LIST_HEAD(ptr noundef %wait_list) #13, !dbg !2107
  %4 = load ptr, ptr %sem.addr, align 8, !dbg !2108
  %owner = getelementptr inbounds %struct.rw_semaphore, ptr %4, i32 0, i32 1, !dbg !2109
  call void @atomic_long_set(ptr noundef %owner, i64 noundef 0) #13, !dbg !2110
  %5 = load ptr, ptr %sem.addr, align 8, !dbg !2111
  %osq = getelementptr inbounds %struct.rw_semaphore, ptr %5, i32 0, i32 2, !dbg !2112
  call void @osq_lock_init(ptr noundef %osq) #13, !dbg !2113
  ret void, !dbg !2114
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_long_set(ptr noundef %v, i64 noundef %i) #2 align 16 !dbg !2115 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2121, metadata !DIExpression()), !dbg !2123
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2122, metadata !DIExpression()), !dbg !2124
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2125
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 8) #13, !dbg !2126
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2127
  %2 = load i64, ptr %i.addr, align 8, !dbg !2128
  call void @raw_atomic_long_set(ptr noundef %1, i64 noundef %2) #13, !dbg !2129
  ret void, !dbg !2130
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #4 align 16 !dbg !2131 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !2136, metadata !DIExpression()), !dbg !2137
  br label %do.body, !dbg !2138

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !2139

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !2141

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !2139

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !2143
  %1 = load ptr, ptr %list.addr, align 8, !dbg !2143
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !2143
  store volatile ptr %0, ptr %next, align 8, !dbg !2143
  br label %do.end3, !dbg !2143

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !2139

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !2145

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !2146

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !2148

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !2146

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !2150
  %3 = load ptr, ptr %list.addr, align 8, !dbg !2150
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !2150
  store volatile ptr %2, ptr %prev, align 8, !dbg !2150
  br label %do.end9, !dbg !2150

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !2146

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !2152
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @osq_lock_init(ptr noundef %lock) #4 align 16 !dbg !2153 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2158, metadata !DIExpression()), !dbg !2159
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2160
  %tail = getelementptr inbounds %struct.optimistic_spin_queue, ptr %0, i32 0, i32 0, !dbg !2161
  call void @atomic_set(ptr noundef %tail, i32 noundef 0) #13, !dbg !2162
  ret void, !dbg !2163
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @down_read(ptr noundef %sem) #0 section ".sched.text" align 16 !dbg !2164 {
entry:
  %sem.addr = alloca ptr, align 8
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !2166, metadata !DIExpression()), !dbg !2167
  br label %do.body, !dbg !2168

do.body:                                          ; preds = %entry
  call void @might_resched() #13, !dbg !2169
  br label %do.end, !dbg !2169

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !2171

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !2172

do.end2:                                          ; preds = %do.body1
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !2174
  call void @__down_read(ptr noundef %0) #13, !dbg !2174
  ret void, !dbg !2175
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_resched() #2 align 16 !dbg !1947 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__might_resched, ptr %tmp, align 8, !dbg !2176
  %0 = load ptr, ptr %tmp, align 8, !dbg !2176
  %call = call i32 %0() #13, !dbg !2178
  ret void, !dbg !2179
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__down_read(ptr noundef %sem) #2 align 16 !dbg !2180 {
entry:
  %sem.addr = alloca ptr, align 8
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !2182, metadata !DIExpression()), !dbg !2183
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !2184
  %call = call i32 @__down_read_common(ptr noundef %0, i32 noundef 2) #13, !dbg !2185
  ret void, !dbg !2186
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @down_read_interruptible(ptr noundef %sem) #0 section ".sched.text" align 16 !dbg !2187 {
entry:
  %retval = alloca i32, align 4
  %sem.addr = alloca ptr, align 8
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !2189, metadata !DIExpression()), !dbg !2190
  br label %do.body, !dbg !2191

do.body:                                          ; preds = %entry
  call void @might_resched() #13, !dbg !2192
  br label %do.end, !dbg !2192

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !2194

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !2195

do.end2:                                          ; preds = %do.body1
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !2197
  %call = call i32 @__down_read_interruptible(ptr noundef %0) #13, !dbg !2197
  %tobool = icmp ne i32 %call, 0, !dbg !2197
  br i1 %tobool, label %if.then, label %if.end, !dbg !2199

if.then:                                          ; preds = %do.end2
  br label %do.body3, !dbg !2200

do.body3:                                         ; preds = %if.then
  br label %do.end4, !dbg !2202

do.end4:                                          ; preds = %do.body3
  store i32 -4, ptr %retval, align 4, !dbg !2204
  br label %return, !dbg !2204

if.end:                                           ; preds = %do.end2
  store i32 0, ptr %retval, align 4, !dbg !2205
  br label %return, !dbg !2205

return:                                           ; preds = %if.end, %do.end4
  %1 = load i32, ptr %retval, align 4, !dbg !2206
  ret i32 %1, !dbg !2206
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__down_read_interruptible(ptr noundef %sem) #2 align 16 !dbg !2207 {
entry:
  %sem.addr = alloca ptr, align 8
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !2209, metadata !DIExpression()), !dbg !2210
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !2211
  %call = call i32 @__down_read_common(ptr noundef %0, i32 noundef 1) #13, !dbg !2212
  ret i32 %call, !dbg !2213
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @down_read_killable(ptr noundef %sem) #0 section ".sched.text" align 16 !dbg !2214 {
entry:
  %retval = alloca i32, align 4
  %sem.addr = alloca ptr, align 8
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !2216, metadata !DIExpression()), !dbg !2217
  br label %do.body, !dbg !2218

do.body:                                          ; preds = %entry
  call void @might_resched() #13, !dbg !2219
  br label %do.end, !dbg !2219

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !2221

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !2222

do.end2:                                          ; preds = %do.body1
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !2224
  %call = call i32 @__down_read_killable(ptr noundef %0) #13, !dbg !2224
  %tobool = icmp ne i32 %call, 0, !dbg !2224
  br i1 %tobool, label %if.then, label %if.end, !dbg !2226

if.then:                                          ; preds = %do.end2
  br label %do.body3, !dbg !2227

do.body3:                                         ; preds = %if.then
  br label %do.end4, !dbg !2229

do.end4:                                          ; preds = %do.body3
  store i32 -4, ptr %retval, align 4, !dbg !2231
  br label %return, !dbg !2231

if.end:                                           ; preds = %do.end2
  store i32 0, ptr %retval, align 4, !dbg !2232
  br label %return, !dbg !2232

return:                                           ; preds = %if.end, %do.end4
  %1 = load i32, ptr %retval, align 4, !dbg !2233
  ret i32 %1, !dbg !2233
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__down_read_killable(ptr noundef %sem) #2 align 16 !dbg !2234 {
entry:
  %sem.addr = alloca ptr, align 8
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !2236, metadata !DIExpression()), !dbg !2237
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !2238
  %call = call i32 @__down_read_common(ptr noundef %0, i32 noundef 258) #13, !dbg !2239
  ret i32 %call, !dbg !2240
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @down_read_trylock(ptr noundef %sem) #0 align 16 !dbg !2241 {
entry:
  %sem.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !2243, metadata !DIExpression()), !dbg !2245
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !2246
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2244, metadata !DIExpression()), !dbg !2247
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !2248
  %call = call i32 @__down_read_trylock(ptr noundef %0) #13, !dbg !2249
  store i32 %call, ptr %ret, align 4, !dbg !2247
  %1 = load i32, ptr %ret, align 4, !dbg !2250
  %cmp = icmp eq i32 %1, 1, !dbg !2252
  br i1 %cmp, label %if.then, label %if.end, !dbg !2253

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2254

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !2255

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2255

do.end:                                           ; preds = %do.cond
  br label %if.end, !dbg !2255

if.end:                                           ; preds = %do.end, %entry
  %2 = load i32, ptr %ret, align 4, !dbg !2257
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !2258
  ret i32 %2, !dbg !2259
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__down_read_trylock(ptr noundef %sem) #4 align 16 !dbg !2036 {
entry:
  %sem.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !2040, metadata !DIExpression()), !dbg !2260
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !2261
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2041, metadata !DIExpression()), !dbg !2262
  store i32 0, ptr %ret, align 4, !dbg !2262
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #14, !dbg !2263
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !2042, metadata !DIExpression()), !dbg !2264
  br label %do.body, !dbg !2265

do.body:                                          ; preds = %entry
  call void @__preempt_count_add(i32 noundef 1) #13, !dbg !2266
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !2266, !srcloc !2268
  br label %do.cond, !dbg !2266

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2266

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !2269
  %count = getelementptr inbounds %struct.rw_semaphore, ptr %0, i32 0, i32 0, !dbg !2270
  %call = call i64 @atomic_long_read(ptr noundef %count) #13, !dbg !2271
  store i64 %call, ptr %tmp, align 8, !dbg !2272
  br label %while.cond, !dbg !2273

while.cond:                                       ; preds = %if.end, %do.end
  %1 = load i64, ptr %tmp, align 8, !dbg !2274
  %and = and i64 %1, -9223372036854775801, !dbg !2275
  %tobool = icmp ne i64 %and, 0, !dbg !2276
  %lnot = xor i1 %tobool, true, !dbg !2276
  br i1 %lnot, label %while.body, label %while.end, !dbg !2273

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %sem.addr, align 8, !dbg !2277
  %count1 = getelementptr inbounds %struct.rw_semaphore, ptr %2, i32 0, i32 0, !dbg !2280
  %3 = load i64, ptr %tmp, align 8, !dbg !2281
  %add = add i64 %3, 256, !dbg !2282
  %call2 = call zeroext i1 @atomic_long_try_cmpxchg_acquire(ptr noundef %count1, ptr noundef %tmp, i64 noundef %add) #13, !dbg !2283
  br i1 %call2, label %if.then, label %if.end, !dbg !2284

if.then:                                          ; preds = %while.body
  %4 = load ptr, ptr %sem.addr, align 8, !dbg !2285
  call void @rwsem_set_reader_owned(ptr noundef %4) #13, !dbg !2287
  store i32 1, ptr %ret, align 4, !dbg !2288
  br label %while.end, !dbg !2289

if.end:                                           ; preds = %while.body
  br label %while.cond, !dbg !2273, !llvm.loop !2290

while.end:                                        ; preds = %if.then, %while.cond
  br label %do.body3, !dbg !2294

do.body3:                                         ; preds = %while.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !2295, !srcloc !2297
  %call4 = call zeroext i1 @__preempt_count_dec_and_test() #13, !dbg !2298
  %lnot5 = xor i1 %call4, true, !dbg !2298
  %lnot6 = xor i1 %lnot5, true, !dbg !2298
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !2298
  %conv = sext i32 %lnot.ext to i64, !dbg !2298
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2298
  %tobool7 = icmp ne i64 %expval, 0, !dbg !2298
  br i1 %tobool7, label %if.then8, label %if.end12, !dbg !2295

if.then8:                                         ; preds = %do.body3
  br label %do.body9, !dbg !2298

do.body9:                                         ; preds = %if.then8
  %5 = call i64 @llvm.read_register.i64(metadata !2076), !dbg !2300
  %6 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %5) #14, !dbg !2300, !srcloc !2302
  call void @llvm.write_register.i64(metadata !2076, i64 %6), !dbg !2300
  br label %do.cond10, !dbg !2300

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !2300

do.end11:                                         ; preds = %do.cond10
  br label %if.end12, !dbg !2300

if.end12:                                         ; preds = %do.end11, %do.body3
  br label %do.cond13, !dbg !2295

do.cond13:                                        ; preds = %if.end12
  br label %do.end14, !dbg !2295

do.end14:                                         ; preds = %do.cond13
  %7 = load i32, ptr %ret, align 4, !dbg !2303
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #14, !dbg !2304
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !2304
  ret i32 %7, !dbg !2305
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @down_write(ptr noundef %sem) #0 section ".sched.text" align 16 !dbg !2306 {
entry:
  %sem.addr = alloca ptr, align 8
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !2308, metadata !DIExpression()), !dbg !2309
  br label %do.body, !dbg !2310

do.body:                                          ; preds = %entry
  call void @might_resched() #13, !dbg !2311
  br label %do.end, !dbg !2311

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !2313

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !2314

do.end2:                                          ; preds = %do.body1
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !2316
  call void @__down_write(ptr noundef %0) #13, !dbg !2316
  ret void, !dbg !2317
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__down_write(ptr noundef %sem) #2 align 16 !dbg !2318 {
entry:
  %sem.addr = alloca ptr, align 8
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !2320, metadata !DIExpression()), !dbg !2321
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !2322
  %call = call i32 @__down_write_common(ptr noundef %0, i32 noundef 2) #13, !dbg !2323
  ret void, !dbg !2324
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @down_write_killable(ptr noundef %sem) #0 section ".sched.text" align 16 !dbg !2325 {
entry:
  %retval = alloca i32, align 4
  %sem.addr = alloca ptr, align 8
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !2327, metadata !DIExpression()), !dbg !2328
  br label %do.body, !dbg !2329

do.body:                                          ; preds = %entry
  call void @might_resched() #13, !dbg !2330
  br label %do.end, !dbg !2330

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !2332

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !2333

do.end2:                                          ; preds = %do.body1
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !2335
  %call = call i32 @__down_write_killable(ptr noundef %0) #13, !dbg !2335
  %tobool = icmp ne i32 %call, 0, !dbg !2335
  br i1 %tobool, label %if.then, label %if.end, !dbg !2337

if.then:                                          ; preds = %do.end2
  br label %do.body3, !dbg !2338

do.body3:                                         ; preds = %if.then
  br label %do.end4, !dbg !2340

do.end4:                                          ; preds = %do.body3
  store i32 -4, ptr %retval, align 4, !dbg !2342
  br label %return, !dbg !2342

if.end:                                           ; preds = %do.end2
  store i32 0, ptr %retval, align 4, !dbg !2343
  br label %return, !dbg !2343

return:                                           ; preds = %if.end, %do.end4
  %1 = load i32, ptr %retval, align 4, !dbg !2344
  ret i32 %1, !dbg !2344
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__down_write_killable(ptr noundef %sem) #2 align 16 !dbg !2345 {
entry:
  %sem.addr = alloca ptr, align 8
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !2347, metadata !DIExpression()), !dbg !2348
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !2349
  %call = call i32 @__down_write_common(ptr noundef %0, i32 noundef 258) #13, !dbg !2350
  ret i32 %call, !dbg !2351
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @down_write_trylock(ptr noundef %sem) #0 align 16 !dbg !2352 {
entry:
  %sem.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !2354, metadata !DIExpression()), !dbg !2356
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !2357
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2355, metadata !DIExpression()), !dbg !2358
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !2359
  %call = call i32 @__down_write_trylock(ptr noundef %0) #13, !dbg !2360
  store i32 %call, ptr %ret, align 4, !dbg !2358
  %1 = load i32, ptr %ret, align 4, !dbg !2361
  %cmp = icmp eq i32 %1, 1, !dbg !2363
  br i1 %cmp, label %if.then, label %if.end, !dbg !2364

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2365

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !2366

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2366

do.end:                                           ; preds = %do.cond
  br label %if.end, !dbg !2366

if.end:                                           ; preds = %do.end, %entry
  %2 = load i32, ptr %ret, align 4, !dbg !2368
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !2369
  ret i32 %2, !dbg !2370
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__down_write_trylock(ptr noundef %sem) #4 align 16 !dbg !2052 {
entry:
  %sem.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !2054, metadata !DIExpression()), !dbg !2371
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !2372
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2055, metadata !DIExpression()), !dbg !2373
  br label %do.body, !dbg !2374

do.body:                                          ; preds = %entry
  call void @__preempt_count_add(i32 noundef 1) #13, !dbg !2375
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !2375, !srcloc !2377
  br label %do.cond, !dbg !2375

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2375

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !2378
  %call = call zeroext i1 @rwsem_write_trylock(ptr noundef %0) #13, !dbg !2379
  %conv = zext i1 %call to i32, !dbg !2379
  store i32 %conv, ptr %ret, align 4, !dbg !2380
  br label %do.body1, !dbg !2381

do.body1:                                         ; preds = %do.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !2382, !srcloc !2384
  %call2 = call zeroext i1 @__preempt_count_dec_and_test() #13, !dbg !2385
  %lnot = xor i1 %call2, true, !dbg !2385
  %lnot3 = xor i1 %lnot, true, !dbg !2385
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !2385
  %conv4 = sext i32 %lnot.ext to i64, !dbg !2385
  %expval = call i64 @llvm.expect.i64(i64 %conv4, i64 0), !dbg !2385
  %tobool = icmp ne i64 %expval, 0, !dbg !2385
  br i1 %tobool, label %if.then, label %if.end, !dbg !2382

if.then:                                          ; preds = %do.body1
  br label %do.body5, !dbg !2385

do.body5:                                         ; preds = %if.then
  %1 = call i64 @llvm.read_register.i64(metadata !2076), !dbg !2387
  %2 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %1) #14, !dbg !2387, !srcloc !2389
  call void @llvm.write_register.i64(metadata !2076, i64 %2), !dbg !2387
  br label %do.cond6, !dbg !2387

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !2387

do.end7:                                          ; preds = %do.cond6
  br label %if.end, !dbg !2387

if.end:                                           ; preds = %do.end7, %do.body1
  br label %do.cond8, !dbg !2382

do.cond8:                                         ; preds = %if.end
  br label %do.end9, !dbg !2382

do.end9:                                          ; preds = %do.cond8
  %3 = load i32, ptr %ret, align 4, !dbg !2390
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !2391
  ret i32 %3, !dbg !2392
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @up_read(ptr noundef %sem) #0 align 16 !dbg !2393 {
entry:
  %sem.addr = alloca ptr, align 8
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !2395, metadata !DIExpression()), !dbg !2396
  br label %do.body, !dbg !2397

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2398

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !2400
  call void @__up_read(ptr noundef %0) #13, !dbg !2401
  ret void, !dbg !2402
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__up_read(ptr noundef %sem) #4 align 16 !dbg !2058 {
entry:
  %sem.addr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !2062, metadata !DIExpression()), !dbg !2403
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #14, !dbg !2404
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !2063, metadata !DIExpression()), !dbg !2405
  br label %do.body, !dbg !2406

do.body:                                          ; preds = %entry
  call void @__preempt_count_add(i32 noundef 1) #13, !dbg !2407
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !2407, !srcloc !2409
  br label %do.cond, !dbg !2407

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2407

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !2410
  call void @rwsem_clear_reader_owned(ptr noundef %0) #13, !dbg !2411
  %1 = load ptr, ptr %sem.addr, align 8, !dbg !2412
  %count = getelementptr inbounds %struct.rw_semaphore, ptr %1, i32 0, i32 0, !dbg !2413
  %call = call i64 @atomic_long_add_return_release(i64 noundef -256, ptr noundef %count) #13, !dbg !2414
  store i64 %call, ptr %tmp, align 8, !dbg !2415
  %2 = load i64, ptr %tmp, align 8, !dbg !2416
  %and = and i64 %2, -253, !dbg !2416
  %cmp = icmp eq i64 %and, 2, !dbg !2416
  %lnot = xor i1 %cmp, true, !dbg !2416
  %lnot1 = xor i1 %lnot, true, !dbg !2416
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2416
  %conv = sext i32 %lnot.ext to i64, !dbg !2416
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2416
  %tobool = icmp ne i64 %expval, 0, !dbg !2416
  br i1 %tobool, label %if.then, label %if.end, !dbg !2418

if.then:                                          ; preds = %do.end
  %3 = load ptr, ptr %sem.addr, align 8, !dbg !2419
  call void @clear_nonspinnable(ptr noundef %3) #13, !dbg !2421
  %4 = load ptr, ptr %sem.addr, align 8, !dbg !2422
  %call2 = call ptr @rwsem_wake(ptr noundef %4) #13, !dbg !2423
  br label %if.end, !dbg !2424

if.end:                                           ; preds = %if.then, %do.end
  br label %do.body3, !dbg !2425

do.body3:                                         ; preds = %if.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !2426, !srcloc !2428
  %call4 = call zeroext i1 @__preempt_count_dec_and_test() #13, !dbg !2429
  %lnot5 = xor i1 %call4, true, !dbg !2429
  %lnot7 = xor i1 %lnot5, true, !dbg !2429
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !2429
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !2429
  %expval10 = call i64 @llvm.expect.i64(i64 %conv9, i64 0), !dbg !2429
  %tobool11 = icmp ne i64 %expval10, 0, !dbg !2429
  br i1 %tobool11, label %if.then12, label %if.end16, !dbg !2426

if.then12:                                        ; preds = %do.body3
  br label %do.body13, !dbg !2429

do.body13:                                        ; preds = %if.then12
  %5 = call i64 @llvm.read_register.i64(metadata !2076), !dbg !2431
  %6 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %5) #14, !dbg !2431, !srcloc !2433
  call void @llvm.write_register.i64(metadata !2076, i64 %6), !dbg !2431
  br label %do.cond14, !dbg !2431

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !2431

do.end15:                                         ; preds = %do.cond14
  br label %if.end16, !dbg !2431

if.end16:                                         ; preds = %do.end15, %do.body3
  br label %do.cond17, !dbg !2426

do.cond17:                                        ; preds = %if.end16
  br label %do.end18, !dbg !2426

do.end18:                                         ; preds = %do.cond17
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #14, !dbg !2434
  ret void, !dbg !2434
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @up_write(ptr noundef %sem) #0 align 16 !dbg !2435 {
entry:
  %sem.addr = alloca ptr, align 8
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !2437, metadata !DIExpression()), !dbg !2438
  br label %do.body, !dbg !2439

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2440

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !2442
  call void @__up_write(ptr noundef %0) #13, !dbg !2443
  ret void, !dbg !2444
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__up_write(ptr noundef %sem) #4 align 16 !dbg !2066 {
entry:
  %sem.addr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !2068, metadata !DIExpression()), !dbg !2445
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #14, !dbg !2446
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !2069, metadata !DIExpression()), !dbg !2447
  br label %do.body, !dbg !2448

do.body:                                          ; preds = %entry
  call void @__preempt_count_add(i32 noundef 1) #13, !dbg !2449
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !2449, !srcloc !2451
  br label %do.cond, !dbg !2449

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2449

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !2452
  call void @rwsem_clear_owner(ptr noundef %0) #13, !dbg !2453
  %1 = load ptr, ptr %sem.addr, align 8, !dbg !2454
  %count = getelementptr inbounds %struct.rw_semaphore, ptr %1, i32 0, i32 0, !dbg !2455
  %call = call i64 @atomic_long_fetch_add_release(i64 noundef -1, ptr noundef %count) #13, !dbg !2456
  store i64 %call, ptr %tmp, align 8, !dbg !2457
  %2 = load i64, ptr %tmp, align 8, !dbg !2458
  %and = and i64 %2, 2, !dbg !2458
  %tobool = icmp ne i64 %and, 0, !dbg !2458
  %lnot = xor i1 %tobool, true, !dbg !2458
  %lnot1 = xor i1 %lnot, true, !dbg !2458
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2458
  %conv = sext i32 %lnot.ext to i64, !dbg !2458
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2458
  %tobool2 = icmp ne i64 %expval, 0, !dbg !2458
  br i1 %tobool2, label %if.then, label %if.end, !dbg !2460

if.then:                                          ; preds = %do.end
  %3 = load ptr, ptr %sem.addr, align 8, !dbg !2461
  %call3 = call ptr @rwsem_wake(ptr noundef %3) #13, !dbg !2462
  br label %if.end, !dbg !2462

if.end:                                           ; preds = %if.then, %do.end
  br label %do.body4, !dbg !2463

do.body4:                                         ; preds = %if.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !2464, !srcloc !2466
  %call5 = call zeroext i1 @__preempt_count_dec_and_test() #13, !dbg !2467
  %lnot6 = xor i1 %call5, true, !dbg !2467
  %lnot8 = xor i1 %lnot6, true, !dbg !2467
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !2467
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !2467
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 0), !dbg !2467
  %tobool12 = icmp ne i64 %expval11, 0, !dbg !2467
  br i1 %tobool12, label %if.then13, label %if.end17, !dbg !2464

if.then13:                                        ; preds = %do.body4
  br label %do.body14, !dbg !2467

do.body14:                                        ; preds = %if.then13
  %4 = call i64 @llvm.read_register.i64(metadata !2076), !dbg !2469
  %5 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %4) #14, !dbg !2469, !srcloc !2471
  call void @llvm.write_register.i64(metadata !2076, i64 %5), !dbg !2469
  br label %do.cond15, !dbg !2469

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !2469

do.end16:                                         ; preds = %do.cond15
  br label %if.end17, !dbg !2469

if.end17:                                         ; preds = %do.end16, %do.body4
  br label %do.cond18, !dbg !2464

do.cond18:                                        ; preds = %if.end17
  br label %do.end19, !dbg !2464

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #14, !dbg !2472
  ret void, !dbg !2472
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @downgrade_write(ptr noundef %sem) #0 align 16 !dbg !2473 {
entry:
  %sem.addr = alloca ptr, align 8
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !2475, metadata !DIExpression()), !dbg !2476
  br label %do.body, !dbg !2477

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2478

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !2480
  call void @__downgrade_write(ptr noundef %0) #13, !dbg !2481
  ret void, !dbg !2482
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__downgrade_write(ptr noundef %sem) #4 align 16 !dbg !2072 {
entry:
  %sem.addr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !2074, metadata !DIExpression()), !dbg !2483
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #14, !dbg !2484
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !2075, metadata !DIExpression()), !dbg !2485
  br label %do.body, !dbg !2486

do.body:                                          ; preds = %entry
  call void @__preempt_count_add(i32 noundef 1) #13, !dbg !2487
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !2487, !srcloc !2489
  br label %do.cond, !dbg !2487

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2487

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !2490
  %count = getelementptr inbounds %struct.rw_semaphore, ptr %0, i32 0, i32 0, !dbg !2491
  %call = call i64 @atomic_long_fetch_add_release(i64 noundef 255, ptr noundef %count) #13, !dbg !2492
  store i64 %call, ptr %tmp, align 8, !dbg !2493
  %1 = load ptr, ptr %sem.addr, align 8, !dbg !2494
  call void @rwsem_set_reader_owned(ptr noundef %1) #13, !dbg !2495
  %2 = load i64, ptr %tmp, align 8, !dbg !2496
  %and = and i64 %2, 2, !dbg !2498
  %tobool = icmp ne i64 %and, 0, !dbg !2498
  br i1 %tobool, label %if.then, label %if.end, !dbg !2499

if.then:                                          ; preds = %do.end
  %3 = load ptr, ptr %sem.addr, align 8, !dbg !2500
  %call1 = call ptr @rwsem_downgrade_wake(ptr noundef %3) #13, !dbg !2501
  br label %if.end, !dbg !2501

if.end:                                           ; preds = %if.then, %do.end
  br label %do.body2, !dbg !2502

do.body2:                                         ; preds = %if.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !2503, !srcloc !2505
  %call3 = call zeroext i1 @__preempt_count_dec_and_test() #13, !dbg !2506
  %lnot = xor i1 %call3, true, !dbg !2506
  %lnot4 = xor i1 %lnot, true, !dbg !2506
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !2506
  %conv = sext i32 %lnot.ext to i64, !dbg !2506
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2506
  %tobool5 = icmp ne i64 %expval, 0, !dbg !2506
  br i1 %tobool5, label %if.then6, label %if.end10, !dbg !2503

if.then6:                                         ; preds = %do.body2
  br label %do.body7, !dbg !2506

do.body7:                                         ; preds = %if.then6
  %4 = call i64 @llvm.read_register.i64(metadata !2076), !dbg !2508
  %5 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %4) #14, !dbg !2508, !srcloc !2510
  call void @llvm.write_register.i64(metadata !2076, i64 %5), !dbg !2508
  br label %do.cond8, !dbg !2508

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !2508

do.end9:                                          ; preds = %do.cond8
  br label %if.end10, !dbg !2508

if.end10:                                         ; preds = %do.end9, %do.body2
  br label %do.cond11, !dbg !2503

do.cond11:                                        ; preds = %if.end10
  br label %do.end12, !dbg !2503

do.end12:                                         ; preds = %do.cond11
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #14, !dbg !2511
  ret void, !dbg !2511
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #2 align 16 !dbg !2512 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2520, metadata !DIExpression()), !dbg !2522
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2521, metadata !DIExpression()), !dbg !2523
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2524
  %1 = load i64, ptr %size.addr, align 8, !dbg !2525
  %conv = trunc i64 %1 to i32, !dbg !2525
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #13, !dbg !2526
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2527
  %3 = load i64, ptr %size.addr, align 8, !dbg !2527
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #13, !dbg !2527
  ret void, !dbg !2528
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_long_set(ptr noundef %v, i64 noundef %i) #2 align 16 !dbg !2529 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2531, metadata !DIExpression()), !dbg !2533
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2532, metadata !DIExpression()), !dbg !2534
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2535
  %1 = load i64, ptr %i.addr, align 8, !dbg !2536
  call void @raw_atomic64_set(ptr noundef %0, i64 noundef %1) #13, !dbg !2537
  ret void, !dbg !2538
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !2539 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2544, metadata !DIExpression()), !dbg !2546
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2545, metadata !DIExpression()), !dbg !2547
  ret i1 true, !dbg !2548
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !2549 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2554, metadata !DIExpression()), !dbg !2557
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2555, metadata !DIExpression()), !dbg !2558
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2556, metadata !DIExpression()), !dbg !2559
  ret void, !dbg !2560
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic64_set(ptr noundef %v, i64 noundef %i) #2 align 16 !dbg !2561 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2567, metadata !DIExpression()), !dbg !2569
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2568, metadata !DIExpression()), !dbg !2570
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2571
  %1 = load i64, ptr %i.addr, align 8, !dbg !2572
  call void @arch_atomic64_set(ptr noundef %0, i64 noundef %1) #13, !dbg !2573
  ret void, !dbg !2574
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic64_set(ptr noundef %v, i64 noundef %i) #2 align 16 !dbg !2575 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2578, metadata !DIExpression()), !dbg !2580
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2579, metadata !DIExpression()), !dbg !2581
  br label %do.body, !dbg !2582

do.body:                                          ; preds = %entry
  %0 = load i64, ptr %i.addr, align 8, !dbg !2583
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2583
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %1, i32 0, i32 0, !dbg !2583
  store volatile i64 %0, ptr %counter, align 8, !dbg !2583
  br label %do.end, !dbg !2583

do.end:                                           ; preds = %do.body
  ret void, !dbg !2585
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #2 align 16 !dbg !2586 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2591, metadata !DIExpression()), !dbg !2593
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2592, metadata !DIExpression()), !dbg !2594
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2595
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #13, !dbg !2596
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2597
  %2 = load i32, ptr %i.addr, align 4, !dbg !2598
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #13, !dbg !2599
  ret void, !dbg !2600
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #2 align 16 !dbg !2601 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2603, metadata !DIExpression()), !dbg !2605
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2604, metadata !DIExpression()), !dbg !2606
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2607
  %1 = load i32, ptr %i.addr, align 4, !dbg !2608
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #13, !dbg !2609
  ret void, !dbg !2610
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #2 align 16 !dbg !2611 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2614, metadata !DIExpression()), !dbg !2616
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2615, metadata !DIExpression()), !dbg !2617
  br label %do.body, !dbg !2618

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !2619
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2619
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !2619
  store volatile i32 %0, ptr %counter, align 4, !dbg !2619
  br label %do.end, !dbg !2619

do.end:                                           ; preds = %do.body
  ret void, !dbg !2621
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__down_read_common(ptr noundef %sem, i32 noundef %state) #2 align 16 !dbg !1951 {
entry:
  %sem.addr = alloca ptr, align 8
  %state.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %count = alloca i64, align 8
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !1956, metadata !DIExpression()), !dbg !2622
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !1957, metadata !DIExpression()), !dbg !2623
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !2624
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1958, metadata !DIExpression()), !dbg !2625
  store i32 0, ptr %ret, align 4, !dbg !2625
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #14, !dbg !2626
  call void @llvm.dbg.declare(metadata ptr %count, metadata !1959, metadata !DIExpression()), !dbg !2627
  br label %do.body, !dbg !2628

do.body:                                          ; preds = %entry
  call void @__preempt_count_add(i32 noundef 1) #13, !dbg !2629
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !2629, !srcloc !2631
  br label %do.cond, !dbg !2629

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2629

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !2632
  %call = call zeroext i1 @rwsem_read_trylock(ptr noundef %0, ptr noundef %count) #13, !dbg !2634
  br i1 %call, label %if.end4, label %if.then, !dbg !2635

if.then:                                          ; preds = %do.end
  %1 = load ptr, ptr %sem.addr, align 8, !dbg !2636
  %2 = load i64, ptr %count, align 8, !dbg !2639
  %3 = load i32, ptr %state.addr, align 4, !dbg !2640
  %call1 = call ptr @rwsem_down_read_slowpath(ptr noundef %1, i64 noundef %2, i32 noundef %3) #13, !dbg !2641
  %call2 = call zeroext i1 @IS_ERR(ptr noundef %call1) #13, !dbg !2642
  br i1 %call2, label %if.then3, label %if.end, !dbg !2643

if.then3:                                         ; preds = %if.then
  store i32 -4, ptr %ret, align 4, !dbg !2644
  br label %out, !dbg !2646

if.end:                                           ; preds = %if.then
  br label %if.end4, !dbg !2647

if.end4:                                          ; preds = %if.end, %do.end
  br label %out, !dbg !2648

out:                                              ; preds = %if.end4, %if.then3
  call void @llvm.dbg.label(metadata !1960), !dbg !2649
  br label %do.body5, !dbg !2650

do.body5:                                         ; preds = %out
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !2651, !srcloc !2653
  %call6 = call zeroext i1 @__preempt_count_dec_and_test() #13, !dbg !2654
  %lnot = xor i1 %call6, true, !dbg !2654
  %lnot7 = xor i1 %lnot, true, !dbg !2654
  %lnot.ext = zext i1 %lnot7 to i32, !dbg !2654
  %conv = sext i32 %lnot.ext to i64, !dbg !2654
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2654
  %tobool = icmp ne i64 %expval, 0, !dbg !2654
  br i1 %tobool, label %if.then8, label %if.end12, !dbg !2651

if.then8:                                         ; preds = %do.body5
  br label %do.body9, !dbg !2654

do.body9:                                         ; preds = %if.then8
  %4 = call i64 @llvm.read_register.i64(metadata !2076), !dbg !2656
  %5 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %4) #14, !dbg !2656, !srcloc !2658
  call void @llvm.write_register.i64(metadata !2076, i64 %5), !dbg !2656
  br label %do.cond10, !dbg !2656

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !2656

do.end11:                                         ; preds = %do.cond10
  br label %if.end12, !dbg !2656

if.end12:                                         ; preds = %do.end11, %do.body5
  br label %do.cond13, !dbg !2651

do.cond13:                                        ; preds = %if.end12
  br label %do.end14, !dbg !2651

do.end14:                                         ; preds = %do.cond13
  %6 = load i32, ptr %ret, align 4, !dbg !2659
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #14, !dbg !2660
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !2660
  ret i32 %6, !dbg !2661
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #2 align 16 !dbg !2662 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !2665, metadata !DIExpression()), !dbg !2673
  br label %do.body, !dbg !2674

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #14, !dbg !2675
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !2666, metadata !DIExpression()), !dbg !2675
  %0 = load i32, ptr %val.addr, align 4, !dbg !2675
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !2675
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !2675

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !2675
  %cmp = icmp eq i32 %2, 1, !dbg !2675
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !2675

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !2675
  %cmp1 = icmp eq i32 %3, -1, !dbg !2675
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !2675

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !2675
  br label %cond.end, !dbg !2675

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !2675

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !2675
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !2675
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !2676
  %cmp2 = icmp eq i32 %5, 1, !dbg !2676
  br i1 %cmp2, label %if.then, label %if.else, !dbg !2675

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1)) #14, !dbg !2677, !srcloc !2679
  br label %if.end8, !dbg !2676

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !2680
  %cmp3 = icmp eq i32 %6, -1, !dbg !2680
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !2676

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1)) #14, !dbg !2681, !srcloc !2683
  br label %if.end, !dbg !2680

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !2680

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #14, !dbg !2684
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !2669, metadata !DIExpression()), !dbg !2684
  %7 = load i32, ptr %val.addr, align 4, !dbg !2684
  %conv = sext i32 %7 to i64, !dbg !2684
  %and = and i64 %conv, 4294967295, !dbg !2684
  %conv7 = trunc i64 %and to i32, !dbg !2684
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !2684
  %8 = load i32, ptr %pto_val__, align 4, !dbg !2684
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1)) #14, !dbg !2684, !srcloc !2685
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #14, !dbg !2680
  br label %do.cond, !dbg !2684

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !2684

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #14, !dbg !2674
  br label %do.end10, !dbg !2675

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !2686
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @rwsem_read_trylock(ptr noundef %sem, ptr noundef %cntp) #4 align 16 !dbg !2687 {
entry:
  %retval = alloca i1, align 1
  %sem.addr = alloca ptr, align 8
  %cntp.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !2692, metadata !DIExpression()), !dbg !2700
  store ptr %cntp, ptr %cntp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cntp.addr, metadata !2693, metadata !DIExpression()), !dbg !2701
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !2702
  %count = getelementptr inbounds %struct.rw_semaphore, ptr %0, i32 0, i32 0, !dbg !2703
  %call = call i64 @atomic_long_add_return_acquire(i64 noundef 256, ptr noundef %count) #13, !dbg !2704
  %1 = load ptr, ptr %cntp.addr, align 8, !dbg !2705
  store i64 %call, ptr %1, align 8, !dbg !2706
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !2707
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2694, metadata !DIExpression()), !dbg !2707
  %2 = load ptr, ptr %cntp.addr, align 8, !dbg !2707
  %3 = load i64, ptr %2, align 8, !dbg !2707
  %cmp = icmp slt i64 %3, 0, !dbg !2707
  %lnot = xor i1 %cmp, true, !dbg !2707
  %lnot1 = xor i1 %lnot, true, !dbg !2707
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2707
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !2707
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !2708
  %tobool = icmp ne i32 %4, 0, !dbg !2708
  %lnot2 = xor i1 %tobool, true, !dbg !2708
  %lnot4 = xor i1 %lnot2, true, !dbg !2708
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !2708
  %conv = sext i32 %lnot.ext5 to i64, !dbg !2708
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2708
  %tobool6 = icmp ne i64 %expval, 0, !dbg !2708
  br i1 %tobool6, label %if.then, label %if.end, !dbg !2707

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2708

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !2709
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !2697, metadata !DIExpression()), !dbg !2709
  store i32 2307, ptr %__flags, align 4, !dbg !2709
  br label %do.body7, !dbg !2709

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !2710

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !2710

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !2709

do.body8:                                         ; preds = %do.end
  %5 = load i32, ptr %__flags, align 4, !dbg !2712
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 245, i32 %5, i64 12) #14, !dbg !2712, !srcloc !2714
  br label %do.cond9, !dbg !2712

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !2712

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !2709

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !2715

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !2715

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !2708
  br label %do.cond14, !dbg !2709

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !2709

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !2709

if.end:                                           ; preds = %do.end15, %entry
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !2707
  %tobool16 = icmp ne i32 %6, 0, !dbg !2707
  %lnot17 = xor i1 %tobool16, true, !dbg !2707
  %lnot19 = xor i1 %lnot17, true, !dbg !2707
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !2707
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !2707
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !2707
  store i64 %expval22, ptr %tmp, align 8, !dbg !2708
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !2717
  %7 = load i64, ptr %tmp, align 8, !dbg !2707
  %tobool23 = icmp ne i64 %7, 0, !dbg !2717
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !2718

if.then24:                                        ; preds = %if.end
  %8 = load ptr, ptr %sem.addr, align 8, !dbg !2719
  call void @rwsem_set_nonspinnable(ptr noundef %8) #13, !dbg !2720
  br label %if.end25, !dbg !2720

if.end25:                                         ; preds = %if.then24, %if.end
  %9 = load ptr, ptr %cntp.addr, align 8, !dbg !2721
  %10 = load i64, ptr %9, align 8, !dbg !2723
  %and = and i64 %10, -9223372036854775801, !dbg !2724
  %tobool26 = icmp ne i64 %and, 0, !dbg !2724
  br i1 %tobool26, label %if.end28, label %if.then27, !dbg !2725

if.then27:                                        ; preds = %if.end25
  %11 = load ptr, ptr %sem.addr, align 8, !dbg !2726
  call void @rwsem_set_reader_owned(ptr noundef %11) #13, !dbg !2728
  store i1 true, ptr %retval, align 1, !dbg !2729
  br label %return, !dbg !2729

if.end28:                                         ; preds = %if.end25
  store i1 false, ptr %retval, align 1, !dbg !2730
  br label %return, !dbg !2730

return:                                           ; preds = %if.end28, %if.then27
  %12 = load i1, ptr %retval, align 1, !dbg !2731
  ret i1 %12, !dbg !2731
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #4 align 16 !dbg !2732 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2737, metadata !DIExpression()), !dbg !2738
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !2739
  %1 = ptrtoint ptr %0 to i64, !dbg !2739
  %2 = inttoptr i64 %1 to ptr, !dbg !2739
  %3 = ptrtoint ptr %2 to i64, !dbg !2739
  %cmp = icmp uge i64 %3, -4095, !dbg !2739
  %lnot = xor i1 %cmp, true, !dbg !2739
  %lnot1 = xor i1 %lnot, true, !dbg !2739
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2739
  %conv = sext i32 %lnot.ext to i64, !dbg !2739
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2739
  %tobool = icmp ne i64 %expval, 0, !dbg !2739
  ret i1 %tobool, !dbg !2740
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @rwsem_down_read_slowpath(ptr noundef %sem, i64 noundef %count, i32 noundef %state) #0 section ".sched.text" align 16 !dbg !2741 {
entry:
  %retval = alloca ptr, align 8
  %sem.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %state.addr = alloca i32, align 4
  %adjustment = alloca i64, align 8
  %rcnt = alloca i64, align 8
  %waiter = alloca %struct.rwsem_waiter, align 8
  %wake_q = alloca %struct.wake_q_head, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ai_ptr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %__ret = alloca i32, align 4
  %tmp63 = alloca i32, align 4
  %___p1 = alloca ptr, align 8
  %tmp73 = alloca ptr, align 8
  %tmp78 = alloca ptr, align 8
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !2745, metadata !DIExpression()), !dbg !2774
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !2746, metadata !DIExpression()), !dbg !2775
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !2747, metadata !DIExpression()), !dbg !2776
  call void @llvm.lifetime.start.p0(i64 8, ptr %adjustment) #14, !dbg !2777
  call void @llvm.dbg.declare(metadata ptr %adjustment, metadata !2748, metadata !DIExpression()), !dbg !2778
  store i64 -256, ptr %adjustment, align 8, !dbg !2778
  call void @llvm.lifetime.start.p0(i64 8, ptr %rcnt) #14, !dbg !2779
  call void @llvm.dbg.declare(metadata ptr %rcnt, metadata !2749, metadata !DIExpression()), !dbg !2780
  %0 = load i64, ptr %count.addr, align 8, !dbg !2781
  %shr = ashr i64 %0, 8, !dbg !2782
  store i64 %shr, ptr %rcnt, align 8, !dbg !2780
  call void @llvm.lifetime.start.p0(i64 48, ptr %waiter) #14, !dbg !2783
  call void @llvm.dbg.declare(metadata ptr %waiter, metadata !2750, metadata !DIExpression()), !dbg !2784
  call void @llvm.lifetime.start.p0(i64 16, ptr %wake_q) #14, !dbg !2785
  call void @llvm.dbg.declare(metadata ptr %wake_q, metadata !2751, metadata !DIExpression()), !dbg !2785
  %first = getelementptr inbounds %struct.wake_q_head, ptr %wake_q, i32 0, i32 0, !dbg !2785
  store ptr inttoptr (i64 1 to ptr), ptr %first, align 8, !dbg !2785
  %lastp = getelementptr inbounds %struct.wake_q_head, ptr %wake_q, i32 0, i32 1, !dbg !2785
  %first1 = getelementptr inbounds %struct.wake_q_head, ptr %wake_q, i32 0, i32 0, !dbg !2785
  store ptr %first1, ptr %lastp, align 8, !dbg !2785
  %1 = load ptr, ptr %sem.addr, align 8, !dbg !2786
  %owner = getelementptr inbounds %struct.rw_semaphore, ptr %1, i32 0, i32 1, !dbg !2788
  %call = call i64 @atomic_long_read(ptr noundef %owner) #13, !dbg !2789
  %and = and i64 %call, 1, !dbg !2790
  %tobool = icmp ne i64 %and, 0, !dbg !2790
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !2791

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %rcnt, align 8, !dbg !2792
  %cmp = icmp sgt i64 %2, 1, !dbg !2793
  br i1 %cmp, label %land.lhs.true2, label %if.end, !dbg !2794

land.lhs.true2:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %count.addr, align 8, !dbg !2795
  %and3 = and i64 %3, 1, !dbg !2796
  %tobool4 = icmp ne i64 %and3, 0, !dbg !2796
  br i1 %tobool4, label %if.end, label %if.then, !dbg !2797

if.then:                                          ; preds = %land.lhs.true2
  br label %queue, !dbg !2798

if.end:                                           ; preds = %land.lhs.true2, %land.lhs.true, %entry
  %4 = load i64, ptr %count.addr, align 8, !dbg !2799
  %and5 = and i64 %4, 5, !dbg !2801
  %tobool6 = icmp ne i64 %and5, 0, !dbg !2801
  br i1 %tobool6, label %if.end19, label %if.then7, !dbg !2802

if.then7:                                         ; preds = %if.end
  %5 = load ptr, ptr %sem.addr, align 8, !dbg !2803
  call void @rwsem_set_reader_owned(ptr noundef %5) #13, !dbg !2805
  %6 = load i64, ptr %rcnt, align 8, !dbg !2806
  %cmp8 = icmp eq i64 %6, 1, !dbg !2808
  br i1 %cmp8, label %land.lhs.true9, label %if.end18, !dbg !2809

land.lhs.true9:                                   ; preds = %if.then7
  %7 = load i64, ptr %count.addr, align 8, !dbg !2810
  %and10 = and i64 %7, 2, !dbg !2811
  %tobool11 = icmp ne i64 %and10, 0, !dbg !2811
  br i1 %tobool11, label %if.then12, label %if.end18, !dbg !2812

if.then12:                                        ; preds = %land.lhs.true9
  %8 = load ptr, ptr %sem.addr, align 8, !dbg !2813
  %wait_lock = getelementptr inbounds %struct.rw_semaphore, ptr %8, i32 0, i32 3, !dbg !2813
  call void @_raw_spin_lock_irq(ptr noundef %wait_lock) #13, !dbg !2813
  %9 = load ptr, ptr %sem.addr, align 8, !dbg !2815
  %wait_list = getelementptr inbounds %struct.rw_semaphore, ptr %9, i32 0, i32 4, !dbg !2817
  %call13 = call i32 @list_empty(ptr noundef %wait_list) #13, !dbg !2818
  %tobool14 = icmp ne i32 %call13, 0, !dbg !2818
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !2819

if.then15:                                        ; preds = %if.then12
  %10 = load ptr, ptr %sem.addr, align 8, !dbg !2820
  call void @rwsem_mark_wake(ptr noundef %10, i32 noundef 2, ptr noundef %wake_q) #13, !dbg !2821
  br label %if.end16, !dbg !2821

if.end16:                                         ; preds = %if.then15, %if.then12
  %11 = load ptr, ptr %sem.addr, align 8, !dbg !2822
  %wait_lock17 = getelementptr inbounds %struct.rw_semaphore, ptr %11, i32 0, i32 3, !dbg !2822
  call void @_raw_spin_unlock_irq(ptr noundef %wait_lock17) #13, !dbg !2822
  call void @wake_up_q(ptr noundef %wake_q) #13, !dbg !2823
  br label %if.end18, !dbg !2824

if.end18:                                         ; preds = %if.end16, %land.lhs.true9, %if.then7
  %12 = load ptr, ptr %sem.addr, align 8, !dbg !2825
  store ptr %12, ptr %retval, align 8, !dbg !2826
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2826

if.end19:                                         ; preds = %if.end
  br label %queue, !dbg !2827

queue:                                            ; preds = %if.end19, %if.then
  call void @llvm.dbg.label(metadata !2758), !dbg !2828
  %call20 = call ptr @get_current() #13, !dbg !2829
  %task = getelementptr inbounds %struct.rwsem_waiter, ptr %waiter, i32 0, i32 1, !dbg !2830
  store ptr %call20, ptr %task, align 8, !dbg !2831
  %type = getelementptr inbounds %struct.rwsem_waiter, ptr %waiter, i32 0, i32 2, !dbg !2832
  store i32 1, ptr %type, align 8, !dbg !2833
  %13 = load volatile i64, ptr @jiffies, align 64, !dbg !2834
  %add = add i64 %13, 4, !dbg !2835
  %timeout = getelementptr inbounds %struct.rwsem_waiter, ptr %waiter, i32 0, i32 3, !dbg !2836
  store i64 %add, ptr %timeout, align 8, !dbg !2837
  %handoff_set = getelementptr inbounds %struct.rwsem_waiter, ptr %waiter, i32 0, i32 4, !dbg !2838
  store i8 0, ptr %handoff_set, align 8, !dbg !2839
  %14 = load ptr, ptr %sem.addr, align 8, !dbg !2840
  %wait_lock21 = getelementptr inbounds %struct.rw_semaphore, ptr %14, i32 0, i32 3, !dbg !2840
  call void @_raw_spin_lock_irq(ptr noundef %wait_lock21) #13, !dbg !2840
  %15 = load ptr, ptr %sem.addr, align 8, !dbg !2841
  %wait_list22 = getelementptr inbounds %struct.rw_semaphore, ptr %15, i32 0, i32 4, !dbg !2843
  %call23 = call i32 @list_empty(ptr noundef %wait_list22) #13, !dbg !2844
  %tobool24 = icmp ne i32 %call23, 0, !dbg !2844
  br i1 %tobool24, label %if.then25, label %if.end43, !dbg !2845

if.then25:                                        ; preds = %queue
  %16 = load ptr, ptr %sem.addr, align 8, !dbg !2846
  %count26 = getelementptr inbounds %struct.rw_semaphore, ptr %16, i32 0, i32 0, !dbg !2849
  %call27 = call i64 @atomic_long_read(ptr noundef %count26) #13, !dbg !2850
  %and28 = and i64 %call27, 1, !dbg !2851
  %tobool29 = icmp ne i64 %and28, 0, !dbg !2851
  br i1 %tobool29, label %if.end41, label %if.then30, !dbg !2852

if.then30:                                        ; preds = %if.then25
  br label %do.body, !dbg !2853

do.body:                                          ; preds = %if.then30
  br label %do.body31, !dbg !2855

do.body31:                                        ; preds = %do.body
  br label %do.cond, !dbg !2857

do.cond:                                          ; preds = %do.body31
  br label %do.end, !dbg !2857

do.end:                                           ; preds = %do.cond
  br label %do.body32, !dbg !2855

do.body32:                                        ; preds = %do.end
  br label %do.body33, !dbg !2859

do.body33:                                        ; preds = %do.body32
  br label %do.cond34, !dbg !2861

do.cond34:                                        ; preds = %do.body33
  br label %do.end35, !dbg !2861

do.end35:                                         ; preds = %do.cond34
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !2859, !srcloc !2863
  br label %do.cond36, !dbg !2859

do.cond36:                                        ; preds = %do.end35
  br label %do.end37, !dbg !2859

do.end37:                                         ; preds = %do.cond36
  br label %do.cond38, !dbg !2855

do.cond38:                                        ; preds = %do.end37
  br label %do.end39, !dbg !2855

do.end39:                                         ; preds = %do.cond38
  %17 = load ptr, ptr %sem.addr, align 8, !dbg !2864
  %wait_lock40 = getelementptr inbounds %struct.rw_semaphore, ptr %17, i32 0, i32 3, !dbg !2864
  call void @_raw_spin_unlock_irq(ptr noundef %wait_lock40) #13, !dbg !2864
  %18 = load ptr, ptr %sem.addr, align 8, !dbg !2865
  call void @rwsem_set_reader_owned(ptr noundef %18) #13, !dbg !2866
  %19 = load ptr, ptr %sem.addr, align 8, !dbg !2867
  store ptr %19, ptr %retval, align 8, !dbg !2868
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2868

if.end41:                                         ; preds = %if.then25
  %20 = load i64, ptr %adjustment, align 8, !dbg !2869
  %add42 = add i64 %20, 2, !dbg !2869
  store i64 %add42, ptr %adjustment, align 8, !dbg !2869
  br label %if.end43, !dbg !2870

if.end43:                                         ; preds = %if.end41, %queue
  %21 = load ptr, ptr %sem.addr, align 8, !dbg !2871
  call void @rwsem_add_waiter(ptr noundef %21, ptr noundef %waiter) #13, !dbg !2872
  %22 = load i64, ptr %adjustment, align 8, !dbg !2873
  %23 = load ptr, ptr %sem.addr, align 8, !dbg !2874
  %count44 = getelementptr inbounds %struct.rw_semaphore, ptr %23, i32 0, i32 0, !dbg !2875
  %call45 = call i64 @atomic_long_add_return(i64 noundef %22, ptr noundef %count44) #13, !dbg !2876
  store i64 %call45, ptr %count.addr, align 8, !dbg !2877
  %24 = load ptr, ptr %sem.addr, align 8, !dbg !2878
  %25 = load i64, ptr %count.addr, align 8, !dbg !2879
  call void @rwsem_cond_wake_waiter(ptr noundef %24, i64 noundef %25, ptr noundef %wake_q) #13, !dbg !2880
  %26 = load ptr, ptr %sem.addr, align 8, !dbg !2881
  %wait_lock46 = getelementptr inbounds %struct.rw_semaphore, ptr %26, i32 0, i32 3, !dbg !2881
  call void @_raw_spin_unlock_irq(ptr noundef %wait_lock46) #13, !dbg !2881
  %call47 = call zeroext i1 @wake_q_empty(ptr noundef %wake_q) #13, !dbg !2882
  br i1 %call47, label %if.end49, label %if.then48, !dbg !2884

if.then48:                                        ; preds = %if.end43
  call void @wake_up_q(ptr noundef %wake_q) #13, !dbg !2885
  br label %if.end49, !dbg !2885

if.end49:                                         ; preds = %if.then48, %if.end43
  %27 = load ptr, ptr %sem.addr, align 8, !dbg !2886
  call void @trace_contention_begin(ptr noundef %27, i32 noundef 2) #13, !dbg !2887
  br label %for.cond, !dbg !2888

for.cond:                                         ; preds = %if.end92, %if.end49
  br label %do.body50, !dbg !2889

do.body50:                                        ; preds = %for.cond
  br label %do.body51, !dbg !2890

do.body51:                                        ; preds = %do.body50
  br label %do.cond52, !dbg !2891

do.cond52:                                        ; preds = %do.body51
  br label %do.end53, !dbg !2891

do.end53:                                         ; preds = %do.cond52
  br label %do.body54, !dbg !2890

do.body54:                                        ; preds = %do.end53
  br label %do.body55, !dbg !2893

do.body55:                                        ; preds = %do.body54
  br label %do.cond56, !dbg !2894

do.cond56:                                        ; preds = %do.body55
  br label %do.end57, !dbg !2894

do.end57:                                         ; preds = %do.cond56
  br label %do.body58, !dbg !2893

do.body58:                                        ; preds = %do.end57
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #14, !dbg !2896
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !2759, metadata !DIExpression()), !dbg !2896
  %call59 = call ptr @get_current() #13, !dbg !2896
  %__state = getelementptr inbounds %struct.task_struct, ptr %call59, i32 0, i32 1, !dbg !2896
  store ptr %__state, ptr %__ai_ptr, align 8, !dbg !2896
  br label %do.body60, !dbg !2896

do.body60:                                        ; preds = %do.body58
  br label %do.cond61, !dbg !2897

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !2897

do.end62:                                         ; preds = %do.cond61
  %28 = load ptr, ptr %__ai_ptr, align 8, !dbg !2896
  call void @instrument_atomic_read_write(ptr noundef %28, i64 noundef 4) #13, !dbg !2896
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #14, !dbg !2899
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !2768, metadata !DIExpression()), !dbg !2899
  %29 = load i32, ptr %state.addr, align 4, !dbg !2899
  store i32 %29, ptr %__ret, align 4, !dbg !2899
  %30 = load i32, ptr %__ret, align 4, !dbg !2899
  %31 = load ptr, ptr %__ai_ptr, align 8, !dbg !2899
  %32 = call i32 asm sideeffect "xchgl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %31, i32 %30, ptr elementtype(i32) %31) #14, !dbg !2899, !srcloc !2900
  store i32 %32, ptr %__ret, align 4, !dbg !2899
  %33 = load i32, ptr %__ret, align 4, !dbg !2899
  store i32 %33, ptr %tmp63, align 4, !dbg !2899
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #14, !dbg !2896
  %34 = load i32, ptr %tmp63, align 4, !dbg !2899
  store i32 %34, ptr %tmp, align 4, !dbg !2896
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #14, !dbg !2901
  %35 = load i32, ptr %tmp, align 4, !dbg !2896
  br label %do.cond64, !dbg !2901

do.cond64:                                        ; preds = %do.end62
  br label %do.end65, !dbg !2901

do.end65:                                         ; preds = %do.cond64
  br label %do.cond66, !dbg !2893

do.cond66:                                        ; preds = %do.end65
  br label %do.end67, !dbg !2893

do.end67:                                         ; preds = %do.cond66
  br label %do.cond68, !dbg !2890

do.cond68:                                        ; preds = %do.end67
  br label %do.end69, !dbg !2890

do.end69:                                         ; preds = %do.cond68
  call void @llvm.lifetime.start.p0(i64 8, ptr %___p1) #14, !dbg !2902
  call void @llvm.dbg.declare(metadata ptr %___p1, metadata !2770, metadata !DIExpression()), !dbg !2902
  br label %do.body70, !dbg !2903

do.body70:                                        ; preds = %do.end69
  br label %do.cond71, !dbg !2905

do.cond71:                                        ; preds = %do.body70
  br label %do.end72, !dbg !2905

do.end72:                                         ; preds = %do.cond71
  %task74 = getelementptr inbounds %struct.rwsem_waiter, ptr %waiter, i32 0, i32 1, !dbg !2903
  %36 = load volatile ptr, ptr %task74, align 8, !dbg !2903
  store ptr %36, ptr %tmp73, align 8, !dbg !2905
  %37 = load ptr, ptr %tmp73, align 8, !dbg !2903
  store ptr %37, ptr %___p1, align 8, !dbg !2902
  br label %do.body75, !dbg !2902

do.body75:                                        ; preds = %do.end72
  br label %do.cond76, !dbg !2907

do.cond76:                                        ; preds = %do.body75
  br label %do.end77, !dbg !2907

do.end77:                                         ; preds = %do.cond76
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !2902, !srcloc !2909
  %38 = load ptr, ptr %___p1, align 8, !dbg !2902
  store ptr %38, ptr %tmp78, align 8, !dbg !2902
  call void @llvm.lifetime.end.p0(i64 8, ptr %___p1) #14, !dbg !2910
  %39 = load ptr, ptr %tmp78, align 8, !dbg !2902
  %tobool79 = icmp ne ptr %39, null, !dbg !2910
  br i1 %tobool79, label %if.end81, label %if.then80, !dbg !2911

if.then80:                                        ; preds = %do.end77
  br label %for.end, !dbg !2912

if.end81:                                         ; preds = %do.end77
  %40 = load i32, ptr %state.addr, align 4, !dbg !2914
  %call82 = call ptr @get_current() #13, !dbg !2916
  %call83 = call i32 @signal_pending_state(i32 noundef %40, ptr noundef %call82) #13, !dbg !2917
  %tobool84 = icmp ne i32 %call83, 0, !dbg !2917
  br i1 %tobool84, label %if.then85, label %if.end92, !dbg !2918

if.then85:                                        ; preds = %if.end81
  %41 = load ptr, ptr %sem.addr, align 8, !dbg !2919
  %wait_lock86 = getelementptr inbounds %struct.rw_semaphore, ptr %41, i32 0, i32 3, !dbg !2919
  call void @_raw_spin_lock_irq(ptr noundef %wait_lock86) #13, !dbg !2919
  %task87 = getelementptr inbounds %struct.rwsem_waiter, ptr %waiter, i32 0, i32 1, !dbg !2921
  %42 = load ptr, ptr %task87, align 8, !dbg !2921
  %tobool88 = icmp ne ptr %42, null, !dbg !2923
  br i1 %tobool88, label %if.then89, label %if.end90, !dbg !2924

if.then89:                                        ; preds = %if.then85
  br label %out_nolock, !dbg !2925

if.end90:                                         ; preds = %if.then85
  %43 = load ptr, ptr %sem.addr, align 8, !dbg !2926
  %wait_lock91 = getelementptr inbounds %struct.rw_semaphore, ptr %43, i32 0, i32 3, !dbg !2926
  call void @_raw_spin_unlock_irq(ptr noundef %wait_lock91) #13, !dbg !2926
  br label %for.end, !dbg !2927

if.end92:                                         ; preds = %if.end81
  call void @schedule_preempt_disabled() #13, !dbg !2928
  br label %for.cond, !dbg !2929, !llvm.loop !2930

for.end:                                          ; preds = %if.end90, %if.then80
  br label %do.body93, !dbg !2933

do.body93:                                        ; preds = %for.end
  br label %do.body94, !dbg !2934

do.body94:                                        ; preds = %do.body93
  br label %do.cond95, !dbg !2936

do.cond95:                                        ; preds = %do.body94
  br label %do.end96, !dbg !2936

do.end96:                                         ; preds = %do.cond95
  br label %do.body97, !dbg !2934

do.body97:                                        ; preds = %do.end96
  br label %do.body98, !dbg !2938

do.body98:                                        ; preds = %do.body97
  br label %do.cond99, !dbg !2940

do.cond99:                                        ; preds = %do.body98
  br label %do.end100, !dbg !2940

do.end100:                                        ; preds = %do.cond99
  br label %do.body101, !dbg !2938

do.body101:                                       ; preds = %do.end100
  %call102 = call ptr @get_current() #13, !dbg !2942
  %__state103 = getelementptr inbounds %struct.task_struct, ptr %call102, i32 0, i32 1, !dbg !2942
  store volatile i32 0, ptr %__state103, align 8, !dbg !2942
  br label %do.cond104, !dbg !2942

do.cond104:                                       ; preds = %do.body101
  br label %do.end105, !dbg !2942

do.end105:                                        ; preds = %do.cond104
  br label %do.cond106, !dbg !2938

do.cond106:                                       ; preds = %do.end105
  br label %do.end107, !dbg !2938

do.end107:                                        ; preds = %do.cond106
  br label %do.cond108, !dbg !2934

do.cond108:                                       ; preds = %do.end107
  br label %do.end109, !dbg !2934

do.end109:                                        ; preds = %do.cond108
  %44 = load ptr, ptr %sem.addr, align 8, !dbg !2944
  call void @trace_contention_end(ptr noundef %44, i32 noundef 0) #13, !dbg !2945
  %45 = load ptr, ptr %sem.addr, align 8, !dbg !2946
  store ptr %45, ptr %retval, align 8, !dbg !2947
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2947

out_nolock:                                       ; preds = %if.then89
  call void @llvm.dbg.label(metadata !2773), !dbg !2948
  %46 = load ptr, ptr %sem.addr, align 8, !dbg !2949
  call void @rwsem_del_wake_waiter(ptr noundef %46, ptr noundef %waiter, ptr noundef %wake_q) #13, !dbg !2950
  br label %do.body110, !dbg !2951

do.body110:                                       ; preds = %out_nolock
  br label %do.body111, !dbg !2952

do.body111:                                       ; preds = %do.body110
  br label %do.cond112, !dbg !2954

do.cond112:                                       ; preds = %do.body111
  br label %do.end113, !dbg !2954

do.end113:                                        ; preds = %do.cond112
  br label %do.body114, !dbg !2952

do.body114:                                       ; preds = %do.end113
  br label %do.body115, !dbg !2956

do.body115:                                       ; preds = %do.body114
  br label %do.cond116, !dbg !2958

do.cond116:                                       ; preds = %do.body115
  br label %do.end117, !dbg !2958

do.end117:                                        ; preds = %do.cond116
  br label %do.body118, !dbg !2956

do.body118:                                       ; preds = %do.end117
  %call119 = call ptr @get_current() #13, !dbg !2960
  %__state120 = getelementptr inbounds %struct.task_struct, ptr %call119, i32 0, i32 1, !dbg !2960
  store volatile i32 0, ptr %__state120, align 8, !dbg !2960
  br label %do.cond121, !dbg !2960

do.cond121:                                       ; preds = %do.body118
  br label %do.end122, !dbg !2960

do.end122:                                        ; preds = %do.cond121
  br label %do.cond123, !dbg !2956

do.cond123:                                       ; preds = %do.end122
  br label %do.end124, !dbg !2956

do.end124:                                        ; preds = %do.cond123
  br label %do.cond125, !dbg !2952

do.cond125:                                       ; preds = %do.end124
  br label %do.end126, !dbg !2952

do.end126:                                        ; preds = %do.cond125
  %47 = load ptr, ptr %sem.addr, align 8, !dbg !2962
  call void @trace_contention_end(ptr noundef %47, i32 noundef -4) #13, !dbg !2963
  %call127 = call ptr @ERR_PTR(i64 noundef -4) #13, !dbg !2964
  store ptr %call127, ptr %retval, align 8, !dbg !2965
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2965

cleanup:                                          ; preds = %do.end126, %do.end109, %do.end39, %if.end18
  call void @llvm.lifetime.end.p0(i64 16, ptr %wake_q) #14, !dbg !2966
  call void @llvm.lifetime.end.p0(i64 48, ptr %waiter) #14, !dbg !2966
  call void @llvm.lifetime.end.p0(i64 8, ptr %rcnt) #14, !dbg !2966
  call void @llvm.lifetime.end.p0(i64 8, ptr %adjustment) #14, !dbg !2966
  %48 = load ptr, ptr %retval, align 8, !dbg !2966
  ret ptr %48, !dbg !2966
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #2 align 16 !dbg !2967 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #14, !dbg !2973
  call void @llvm.dbg.declare(metadata ptr %c, metadata !2971, metadata !DIExpression()), !dbg !2973
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1)) #14, !dbg !2973, !srcloc !2974
  %1 = icmp ult i8 %0, 2, !dbg !2973
  call void @llvm.assume(i1 %1), !dbg !2973
  store i8 %0, ptr %c, align 1, !dbg !2973
  %2 = load i8, ptr %c, align 1, !dbg !2973, !range !2975, !noundef !458
  %tobool = trunc i8 %2 to i1, !dbg !2973
  %frombool = zext i1 %tobool to i8, !dbg !2973
  store i8 %frombool, ptr %tmp, align 1, !dbg !2973
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #14, !dbg !2976
  %3 = load i8, ptr %tmp, align 1, !dbg !2973, !range !2975, !noundef !458
  %tobool1 = trunc i8 %3 to i1, !dbg !2973
  ret i1 %tobool1, !dbg !2977
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #8

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #9

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @atomic_long_add_return_acquire(i64 noundef %i, ptr noundef %v) #2 align 16 !dbg !2978 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2982, metadata !DIExpression()), !dbg !2984
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2983, metadata !DIExpression()), !dbg !2985
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2986
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #13, !dbg !2987
  %1 = load i64, ptr %i.addr, align 8, !dbg !2988
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2989
  %call = call i64 @raw_atomic_long_add_return_acquire(i64 noundef %1, ptr noundef %2) #13, !dbg !2990
  ret i64 %call, !dbg !2991
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rwsem_set_nonspinnable(ptr noundef %sem) #4 align 16 !dbg !2992 {
entry:
  %sem.addr = alloca ptr, align 8
  %owner = alloca i64, align 8
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !2994, metadata !DIExpression()), !dbg !2996
  call void @llvm.lifetime.start.p0(i64 8, ptr %owner) #14, !dbg !2997
  call void @llvm.dbg.declare(metadata ptr %owner, metadata !2995, metadata !DIExpression()), !dbg !2998
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !2999
  %owner1 = getelementptr inbounds %struct.rw_semaphore, ptr %0, i32 0, i32 1, !dbg !3000
  %call = call i64 @atomic_long_read(ptr noundef %owner1) #13, !dbg !3001
  store i64 %call, ptr %owner, align 8, !dbg !2998
  br label %do.body, !dbg !3002

do.body:                                          ; preds = %do.cond, %entry
  %1 = load i64, ptr %owner, align 8, !dbg !3003
  %and = and i64 %1, 1, !dbg !3006
  %tobool = icmp ne i64 %and, 0, !dbg !3006
  br i1 %tobool, label %if.end, label %if.then, !dbg !3007

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !3008

if.end:                                           ; preds = %do.body
  %2 = load i64, ptr %owner, align 8, !dbg !3009
  %and2 = and i64 %2, 2, !dbg !3011
  %tobool3 = icmp ne i64 %and2, 0, !dbg !3011
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !3012

if.then4:                                         ; preds = %if.end
  br label %do.end, !dbg !3013

if.end5:                                          ; preds = %if.end
  br label %do.cond, !dbg !3014

do.cond:                                          ; preds = %if.end5
  %3 = load ptr, ptr %sem.addr, align 8, !dbg !3015
  %owner6 = getelementptr inbounds %struct.rw_semaphore, ptr %3, i32 0, i32 1, !dbg !3016
  %4 = load i64, ptr %owner, align 8, !dbg !3017
  %or = or i64 %4, 2, !dbg !3018
  %call7 = call zeroext i1 @atomic_long_try_cmpxchg(ptr noundef %owner6, ptr noundef %owner, i64 noundef %or) #13, !dbg !3019
  %lnot = xor i1 %call7, true, !dbg !3020
  br i1 %lnot, label %do.body, label %do.end, !dbg !3014, !llvm.loop !3021

do.end:                                           ; preds = %do.cond, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %owner) #14, !dbg !3023
  ret void, !dbg !3023
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rwsem_set_reader_owned(ptr noundef %sem) #4 align 16 !dbg !3024 {
entry:
  %sem.addr = alloca ptr, align 8
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !3026, metadata !DIExpression()), !dbg !3027
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !3028
  %call = call ptr @get_current() #13, !dbg !3029
  call void @__rwsem_set_reader_owned(ptr noundef %0, ptr noundef %call) #13, !dbg !3030
  ret void, !dbg !3031
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #2 align 16 !dbg !3032 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3034, metadata !DIExpression()), !dbg !3036
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3035, metadata !DIExpression()), !dbg !3037
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3038
  %1 = load i64, ptr %size.addr, align 8, !dbg !3039
  %conv = trunc i64 %1 to i32, !dbg !3039
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #13, !dbg !3040
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3041
  %3 = load i64, ptr %size.addr, align 8, !dbg !3041
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #13, !dbg !3041
  ret void, !dbg !3042
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic_long_add_return_acquire(i64 noundef %i, ptr noundef %v) #2 align 16 !dbg !3043 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3045, metadata !DIExpression()), !dbg !3047
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3046, metadata !DIExpression()), !dbg !3048
  %0 = load i64, ptr %i.addr, align 8, !dbg !3049
  %1 = load ptr, ptr %v.addr, align 8, !dbg !3050
  %call = call i64 @raw_atomic64_add_return_acquire(i64 noundef %0, ptr noundef %1) #13, !dbg !3051
  ret i64 %call, !dbg !3052
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_add_return_acquire(i64 noundef %i, ptr noundef %v) #2 align 16 !dbg !3053 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3057, metadata !DIExpression()), !dbg !3059
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3058, metadata !DIExpression()), !dbg !3060
  %0 = load i64, ptr %i.addr, align 8, !dbg !3061
  %1 = load ptr, ptr %v.addr, align 8, !dbg !3062
  %call = call i64 @arch_atomic64_add_return(i64 noundef %0, ptr noundef %1) #13, !dbg !3063
  ret i64 %call, !dbg !3064
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_atomic64_add_return(i64 noundef %i, ptr noundef %v) #2 align 16 !dbg !3065 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  %__ret = alloca i64, align 8
  %tmp = alloca i64, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3067, metadata !DIExpression()), !dbg !3071
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3068, metadata !DIExpression()), !dbg !3072
  %0 = load i64, ptr %i.addr, align 8, !dbg !3073
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #14, !dbg !3074
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !3069, metadata !DIExpression()), !dbg !3074
  %1 = load i64, ptr %i.addr, align 8, !dbg !3074
  store i64 %1, ptr %__ret, align 8, !dbg !3074
  %2 = load i64, ptr %__ret, align 8, !dbg !3074
  %3 = load ptr, ptr %v.addr, align 8, !dbg !3074
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %3, i32 0, i32 0, !dbg !3074
  %4 = call i64 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddq ${0:q}, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %counter, i64 %2, ptr elementtype(i64) %counter) #14, !dbg !3074, !srcloc !3075
  store i64 %4, ptr %__ret, align 8, !dbg !3074
  %5 = load i64, ptr %__ret, align 8, !dbg !3074
  store i64 %5, ptr %tmp, align 8, !dbg !3074
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #14, !dbg !3076
  %6 = load i64, ptr %tmp, align 8, !dbg !3074
  %add = add i64 %0, %6, !dbg !3077
  ret i64 %add, !dbg !3078
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @atomic_long_read(ptr noundef %v) #2 align 16 !dbg !3079 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3085, metadata !DIExpression()), !dbg !3086
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3087
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 8) #13, !dbg !3088
  %1 = load ptr, ptr %v.addr, align 8, !dbg !3089
  %call = call i64 @raw_atomic_long_read(ptr noundef %1) #13, !dbg !3090
  ret i64 %call, !dbg !3091
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_long_try_cmpxchg(ptr noundef %v, ptr noundef %old, i64 noundef %new) #2 align 16 !dbg !3092 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3096, metadata !DIExpression()), !dbg !3099
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !3097, metadata !DIExpression()), !dbg !3100
  store i64 %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3098, metadata !DIExpression()), !dbg !3101
  br label %do.body, !dbg !3102

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3103

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3105
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #13, !dbg !3106
  %1 = load ptr, ptr %old.addr, align 8, !dbg !3107
  call void @instrument_atomic_read_write(ptr noundef %1, i64 noundef 8) #13, !dbg !3108
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3109
  %3 = load ptr, ptr %old.addr, align 8, !dbg !3110
  %4 = load i64, ptr %new.addr, align 8, !dbg !3111
  %call = call zeroext i1 @raw_atomic_long_try_cmpxchg(ptr noundef %2, ptr noundef %3, i64 noundef %4) #13, !dbg !3112
  ret i1 %call, !dbg !3113
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #2 align 16 !dbg !3114 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3116, metadata !DIExpression()), !dbg !3118
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3117, metadata !DIExpression()), !dbg !3119
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3120
  %1 = load i64, ptr %size.addr, align 8, !dbg !3121
  %conv = trunc i64 %1 to i32, !dbg !3121
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #13, !dbg !3122
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3123
  %3 = load i64, ptr %size.addr, align 8, !dbg !3123
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #13, !dbg !3123
  ret void, !dbg !3124
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic_long_read(ptr noundef %v) #2 align 16 !dbg !3125 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3127, metadata !DIExpression()), !dbg !3128
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3129
  %call = call i64 @raw_atomic64_read(ptr noundef %0) #13, !dbg !3130
  ret i64 %call, !dbg !3131
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !3132 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3134, metadata !DIExpression()), !dbg !3136
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3135, metadata !DIExpression()), !dbg !3137
  ret i1 true, !dbg !3138
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_read(ptr noundef %v) #2 align 16 !dbg !3139 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3145, metadata !DIExpression()), !dbg !3146
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3147
  %call = call i64 @arch_atomic64_read(ptr noundef %0) #13, !dbg !3148
  ret i64 %call, !dbg !3149
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_atomic64_read(ptr noundef %v) #2 align 16 !dbg !3150 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3152, metadata !DIExpression()), !dbg !3153
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3154
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !3154
  %1 = load volatile i64, ptr %counter, align 8, !dbg !3154
  ret i64 %1, !dbg !3155
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_long_try_cmpxchg(ptr noundef %v, ptr noundef %old, i64 noundef %new) #2 align 16 !dbg !3156 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3158, metadata !DIExpression()), !dbg !3161
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !3159, metadata !DIExpression()), !dbg !3162
  store i64 %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3160, metadata !DIExpression()), !dbg !3163
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3164
  %1 = load ptr, ptr %old.addr, align 8, !dbg !3165
  %2 = load i64, ptr %new.addr, align 8, !dbg !3166
  %call = call zeroext i1 @raw_atomic64_try_cmpxchg(ptr noundef %0, ptr noundef %1, i64 noundef %2) #13, !dbg !3167
  ret i1 %call, !dbg !3168
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic64_try_cmpxchg(ptr noundef %v, ptr noundef %old, i64 noundef %new) #2 align 16 !dbg !3169 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3173, metadata !DIExpression()), !dbg !3176
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !3174, metadata !DIExpression()), !dbg !3177
  store i64 %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3175, metadata !DIExpression()), !dbg !3178
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3179
  %1 = load ptr, ptr %old.addr, align 8, !dbg !3180
  %2 = load i64, ptr %new.addr, align 8, !dbg !3181
  %call = call zeroext i1 @arch_atomic64_try_cmpxchg(ptr noundef %0, ptr noundef %1, i64 noundef %2) #13, !dbg !3182
  ret i1 %call, !dbg !3183
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic64_try_cmpxchg(ptr noundef %v, ptr noundef %old, i64 noundef %new) #2 align 16 !dbg !3184 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i64, align 8
  %success = alloca i8, align 1
  %_old = alloca ptr, align 8
  %__old = alloca i64, align 8
  %__new = alloca i64, align 8
  %__ptr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3186, metadata !DIExpression()), !dbg !3195
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !3187, metadata !DIExpression()), !dbg !3196
  store i64 %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3188, metadata !DIExpression()), !dbg !3197
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #14, !dbg !3198
  call void @llvm.dbg.declare(metadata ptr %success, metadata !3189, metadata !DIExpression()), !dbg !3198
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #14, !dbg !3198
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !3191, metadata !DIExpression()), !dbg !3198
  %0 = load ptr, ptr %old.addr, align 8, !dbg !3198
  store ptr %0, ptr %_old, align 8, !dbg !3198
  call void @llvm.lifetime.start.p0(i64 8, ptr %__old) #14, !dbg !3198
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !3192, metadata !DIExpression()), !dbg !3198
  %1 = load ptr, ptr %_old, align 8, !dbg !3198
  %2 = load i64, ptr %1, align 8, !dbg !3198
  store i64 %2, ptr %__old, align 8, !dbg !3198
  call void @llvm.lifetime.start.p0(i64 8, ptr %__new) #14, !dbg !3198
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !3193, metadata !DIExpression()), !dbg !3198
  %3 = load i64, ptr %new.addr, align 8, !dbg !3198
  store i64 %3, ptr %__new, align 8, !dbg !3198
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #14, !dbg !3198
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !3194, metadata !DIExpression()), !dbg !3198
  %4 = load ptr, ptr %v.addr, align 8, !dbg !3198
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %4, i32 0, i32 0, !dbg !3198
  store ptr %counter, ptr %__ptr, align 8, !dbg !3198
  %5 = load ptr, ptr %__ptr, align 8, !dbg !3198
  %6 = load i64, ptr %__old, align 8, !dbg !3198
  %7 = load i64, ptr %__new, align 8, !dbg !3198
  %8 = call { i8, i64 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgq $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %7, ptr elementtype(i64) %5, i64 %6) #14, !dbg !3198, !srcloc !3199
  %asmresult = extractvalue { i8, i64 } %8, 0, !dbg !3198
  %asmresult1 = extractvalue { i8, i64 } %8, 1, !dbg !3198
  %9 = icmp ult i8 %asmresult, 2, !dbg !3198
  call void @llvm.assume(i1 %9), !dbg !3198
  store i8 %asmresult, ptr %success, align 1, !dbg !3198
  store i64 %asmresult1, ptr %__old, align 8, !dbg !3198
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #14, !dbg !3198
  %10 = load i8, ptr %success, align 1, !dbg !3200, !range !2975, !noundef !458
  %tobool = trunc i8 %10 to i1, !dbg !3200
  %lnot = xor i1 %tobool, true, !dbg !3200
  %lnot2 = xor i1 %lnot, true, !dbg !3200
  %lnot3 = xor i1 %lnot2, true, !dbg !3200
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !3200
  %conv = sext i32 %lnot.ext to i64, !dbg !3200
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3200
  %tobool4 = icmp ne i64 %expval, 0, !dbg !3200
  br i1 %tobool4, label %if.then, label %if.end, !dbg !3198

if.then:                                          ; preds = %entry
  %11 = load i64, ptr %__old, align 8, !dbg !3200
  %12 = load ptr, ptr %_old, align 8, !dbg !3200
  store i64 %11, ptr %12, align 8, !dbg !3200
  br label %if.end, !dbg !3200

if.end:                                           ; preds = %if.then, %entry
  %13 = load i8, ptr %success, align 1, !dbg !3198, !range !2975, !noundef !458
  %tobool5 = trunc i8 %13 to i1, !dbg !3198
  %lnot6 = xor i1 %tobool5, true, !dbg !3198
  %lnot8 = xor i1 %lnot6, true, !dbg !3198
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !3198
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !3198
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 1), !dbg !3198
  store i64 %expval11, ptr %tmp, align 8, !dbg !3200
  call void @llvm.lifetime.end.p0(i64 8, ptr %__new) #14, !dbg !3202
  call void @llvm.lifetime.end.p0(i64 8, ptr %__old) #14, !dbg !3202
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #14, !dbg !3202
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #14, !dbg !3202
  %14 = load i64, ptr %tmp, align 8, !dbg !3198
  %tobool12 = icmp ne i64 %14, 0, !dbg !3202
  ret i1 %tobool12, !dbg !3203
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__rwsem_set_reader_owned(ptr noundef %sem, ptr noundef %owner) #4 align 16 !dbg !3204 {
entry:
  %sem.addr = alloca ptr, align 8
  %owner.addr = alloca ptr, align 8
  %val = alloca i64, align 8
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !3208, metadata !DIExpression()), !dbg !3211
  store ptr %owner, ptr %owner.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %owner.addr, metadata !3209, metadata !DIExpression()), !dbg !3212
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #14, !dbg !3213
  call void @llvm.dbg.declare(metadata ptr %val, metadata !3210, metadata !DIExpression()), !dbg !3214
  %0 = load ptr, ptr %owner.addr, align 8, !dbg !3215
  %1 = ptrtoint ptr %0 to i64, !dbg !3216
  %or = or i64 %1, 1, !dbg !3217
  %2 = load ptr, ptr %sem.addr, align 8, !dbg !3218
  %owner1 = getelementptr inbounds %struct.rw_semaphore, ptr %2, i32 0, i32 1, !dbg !3219
  %call = call i64 @atomic_long_read(ptr noundef %owner1) #13, !dbg !3220
  %and = and i64 %call, 2, !dbg !3221
  %or2 = or i64 %or, %and, !dbg !3222
  store i64 %or2, ptr %val, align 8, !dbg !3214
  %3 = load ptr, ptr %sem.addr, align 8, !dbg !3223
  %owner3 = getelementptr inbounds %struct.rw_semaphore, ptr %3, i32 0, i32 1, !dbg !3224
  %4 = load i64, ptr %val, align 8, !dbg !3225
  call void @atomic_long_set(ptr noundef %owner3, i64 noundef %4) #13, !dbg !3226
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #14, !dbg !3227
  ret void, !dbg !3227
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #2 align 16 !dbg !3228 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #14, !dbg !3239
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !3233, metadata !DIExpression()), !dbg !3239
  br label %do.body, !dbg !3239

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !3240
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !3235, metadata !DIExpression()), !dbg !3240
  store ptr null, ptr %__vpp_verify, align 8, !dbg !3240
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !3240
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !3239
  br label %do.cond, !dbg !3240

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3240

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #14, !dbg !3241
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !3237, metadata !DIExpression()), !dbg !3241
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #15, !dbg !3241, !srcloc !3242
  store i64 %1, ptr %pfo_val__, align 8, !dbg !3241
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !3241
  %3 = inttoptr i64 %2 to ptr, !dbg !3241
  store ptr %3, ptr %tmp, align 8, !dbg !3241
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #14, !dbg !3239
  %4 = load ptr, ptr %tmp, align 8, !dbg !3241
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !3239
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !3239
  store ptr %5, ptr %tmp1, align 8, !dbg !3239
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #14, !dbg !3243
  %6 = load ptr, ptr %tmp1, align 8, !dbg !3239
  ret ptr %6, !dbg !3244
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3245 dso_local void @_raw_spin_lock_irq(ptr noundef) #6 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #4 align 16 !dbg !3250 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !3256, metadata !DIExpression()), !dbg !3257
  br label %do.body, !dbg !3258

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3260

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !3258
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !3258
  %1 = load volatile ptr, ptr %next, align 8, !dbg !3258
  store ptr %1, ptr %tmp, align 8, !dbg !3260
  %2 = load ptr, ptr %tmp, align 8, !dbg !3258
  %3 = load ptr, ptr %head.addr, align 8, !dbg !3262
  %cmp = icmp eq ptr %2, %3, !dbg !3263
  %conv = zext i1 %cmp to i32, !dbg !3263
  ret i32 %conv, !dbg !3264
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rwsem_mark_wake(ptr noundef %sem, i32 noundef %wake_type, ptr noundef %wake_q) #0 align 16 !dbg !3265 {
entry:
  %sem.addr = alloca ptr, align 8
  %wake_type.addr = alloca i32, align 4
  %wake_q.addr = alloca ptr, align 8
  %waiter = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %oldcount = alloca i64, align 8
  %woken = alloca i64, align 8
  %adjustment = alloca i64, align 8
  %wlist = alloca %struct.list_head, align 8
  %__mptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %owner = alloca ptr, align 8
  %__mptr37 = alloca ptr, align 8
  %tmp40 = alloca ptr, align 8
  %__mptr42 = alloca ptr, align 8
  %tmp44 = alloca ptr, align 8
  %__mptr69 = alloca ptr, align 8
  %tmp72 = alloca ptr, align 8
  %__mptr100 = alloca ptr, align 8
  %tmp102 = alloca ptr, align 8
  %__mptr104 = alloca ptr, align 8
  %tmp107 = alloca ptr, align 8
  %tsk = alloca ptr, align 8
  %__mptr141 = alloca ptr, align 8
  %tmp144 = alloca ptr, align 8
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !3270, metadata !DIExpression()), !dbg !3302
  store i32 %wake_type, ptr %wake_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %wake_type.addr, metadata !3271, metadata !DIExpression()), !dbg !3303
  store ptr %wake_q, ptr %wake_q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wake_q.addr, metadata !3272, metadata !DIExpression()), !dbg !3304
  call void @llvm.lifetime.start.p0(i64 8, ptr %waiter) #14, !dbg !3305
  call void @llvm.dbg.declare(metadata ptr %waiter, metadata !3273, metadata !DIExpression()), !dbg !3306
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #14, !dbg !3305
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !3274, metadata !DIExpression()), !dbg !3307
  call void @llvm.lifetime.start.p0(i64 8, ptr %oldcount) #14, !dbg !3308
  call void @llvm.dbg.declare(metadata ptr %oldcount, metadata !3275, metadata !DIExpression()), !dbg !3309
  call void @llvm.lifetime.start.p0(i64 8, ptr %woken) #14, !dbg !3308
  call void @llvm.dbg.declare(metadata ptr %woken, metadata !3276, metadata !DIExpression()), !dbg !3310
  store i64 0, ptr %woken, align 8, !dbg !3310
  call void @llvm.lifetime.start.p0(i64 8, ptr %adjustment) #14, !dbg !3308
  call void @llvm.dbg.declare(metadata ptr %adjustment, metadata !3277, metadata !DIExpression()), !dbg !3311
  store i64 0, ptr %adjustment, align 8, !dbg !3311
  call void @llvm.lifetime.start.p0(i64 16, ptr %wlist) #14, !dbg !3312
  call void @llvm.dbg.declare(metadata ptr %wlist, metadata !3278, metadata !DIExpression()), !dbg !3313
  br label %do.body, !dbg !3314

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !3315
  %wait_lock = getelementptr inbounds %struct.rw_semaphore, ptr %0, i32 0, i32 3, !dbg !3315
  br label %do.cond, !dbg !3315

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3315

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !3317
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3279, metadata !DIExpression()), !dbg !3317
  %1 = load ptr, ptr %sem.addr, align 8, !dbg !3317
  %wait_list = getelementptr inbounds %struct.rw_semaphore, ptr %1, i32 0, i32 4, !dbg !3317
  %next = getelementptr inbounds %struct.list_head, ptr %wait_list, i32 0, i32 0, !dbg !3317
  %2 = load ptr, ptr %next, align 8, !dbg !3317
  store ptr %2, ptr %__mptr, align 8, !dbg !3317
  %3 = load ptr, ptr %__mptr, align 8, !dbg !3317
  %add.ptr = getelementptr i8, ptr %3, i64 0, !dbg !3317
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !3317
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !3318
  %4 = load ptr, ptr %tmp1, align 8, !dbg !3317
  store ptr %4, ptr %waiter, align 8, !dbg !3319
  %5 = load ptr, ptr %waiter, align 8, !dbg !3320
  %type = getelementptr inbounds %struct.rwsem_waiter, ptr %5, i32 0, i32 2, !dbg !3322
  %6 = load i32, ptr %type, align 8, !dbg !3322
  %cmp = icmp eq i32 %6, 0, !dbg !3323
  br i1 %cmp, label %if.then, label %if.end4, !dbg !3324

if.then:                                          ; preds = %do.end
  %7 = load i32, ptr %wake_type.addr, align 4, !dbg !3325
  %cmp2 = icmp eq i32 %7, 0, !dbg !3328
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !3329

if.then3:                                         ; preds = %if.then
  %8 = load ptr, ptr %wake_q.addr, align 8, !dbg !3330
  %9 = load ptr, ptr %waiter, align 8, !dbg !3332
  %task = getelementptr inbounds %struct.rwsem_waiter, ptr %9, i32 0, i32 1, !dbg !3333
  %10 = load ptr, ptr %task, align 8, !dbg !3333
  call void @wake_q_add(ptr noundef %8, ptr noundef %10) #13, !dbg !3334
  br label %if.end, !dbg !3335

if.end:                                           ; preds = %if.then3, %if.then
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup147, !dbg !3336

if.end4:                                          ; preds = %do.end
  %11 = load ptr, ptr %sem.addr, align 8, !dbg !3337
  %count = getelementptr inbounds %struct.rw_semaphore, ptr %11, i32 0, i32 0, !dbg !3337
  %call = call i64 @atomic_long_read(ptr noundef %count) #13, !dbg !3337
  %cmp5 = icmp slt i64 %call, 0, !dbg !3337
  %lnot = xor i1 %cmp5, true, !dbg !3337
  %lnot6 = xor i1 %lnot, true, !dbg !3337
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !3337
  %conv = sext i32 %lnot.ext to i64, !dbg !3337
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3337
  %tobool = icmp ne i64 %expval, 0, !dbg !3337
  br i1 %tobool, label %if.then7, label %if.end8, !dbg !3339

if.then7:                                         ; preds = %if.end4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup147, !dbg !3340

if.end8:                                          ; preds = %if.end4
  %12 = load i32, ptr %wake_type.addr, align 4, !dbg !3341
  %cmp9 = icmp ne i32 %12, 2, !dbg !3342
  br i1 %cmp9, label %if.then11, label %if.end36, !dbg !3343

if.then11:                                        ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 8, ptr %owner) #14, !dbg !3344
  call void @llvm.dbg.declare(metadata ptr %owner, metadata !3281, metadata !DIExpression()), !dbg !3345
  store i64 256, ptr %adjustment, align 8, !dbg !3346
  %13 = load i64, ptr %adjustment, align 8, !dbg !3347
  %14 = load ptr, ptr %sem.addr, align 8, !dbg !3348
  %count12 = getelementptr inbounds %struct.rw_semaphore, ptr %14, i32 0, i32 0, !dbg !3349
  %call13 = call i64 @atomic_long_fetch_add(i64 noundef %13, ptr noundef %count12) #13, !dbg !3350
  store i64 %call13, ptr %oldcount, align 8, !dbg !3351
  %15 = load i64, ptr %oldcount, align 8, !dbg !3352
  %and = and i64 %15, 1, !dbg !3352
  %tobool14 = icmp ne i64 %and, 0, !dbg !3352
  %lnot15 = xor i1 %tobool14, true, !dbg !3352
  %lnot17 = xor i1 %lnot15, true, !dbg !3352
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !3352
  %conv19 = sext i32 %lnot.ext18 to i64, !dbg !3352
  %expval20 = call i64 @llvm.expect.i64(i64 %conv19, i64 0), !dbg !3352
  %tobool21 = icmp ne i64 %expval20, 0, !dbg !3352
  br i1 %tobool21, label %if.then22, label %if.end34, !dbg !3354

if.then22:                                        ; preds = %if.then11
  %16 = load ptr, ptr %waiter, align 8, !dbg !3355
  %timeout = getelementptr inbounds %struct.rwsem_waiter, ptr %16, i32 0, i32 3, !dbg !3355
  %17 = load i64, ptr %timeout, align 8, !dbg !3355
  %18 = load volatile i64, ptr @jiffies, align 64, !dbg !3355
  %sub = sub i64 %17, %18, !dbg !3355
  %cmp23 = icmp slt i64 %sub, 0, !dbg !3355
  br i1 %cmp23, label %if.then25, label %if.end31, !dbg !3358

if.then25:                                        ; preds = %if.then22
  %19 = load i64, ptr %oldcount, align 8, !dbg !3359
  %and26 = and i64 %19, 4, !dbg !3362
  %tobool27 = icmp ne i64 %and26, 0, !dbg !3362
  br i1 %tobool27, label %if.end30, label %if.then28, !dbg !3363

if.then28:                                        ; preds = %if.then25
  %20 = load i64, ptr %adjustment, align 8, !dbg !3364
  %sub29 = sub i64 %20, 4, !dbg !3364
  store i64 %sub29, ptr %adjustment, align 8, !dbg !3364
  br label %if.end30, !dbg !3366

if.end30:                                         ; preds = %if.then28, %if.then25
  %21 = load ptr, ptr %waiter, align 8, !dbg !3367
  %handoff_set = getelementptr inbounds %struct.rwsem_waiter, ptr %21, i32 0, i32 4, !dbg !3368
  store i8 1, ptr %handoff_set, align 8, !dbg !3369
  br label %if.end31, !dbg !3370

if.end31:                                         ; preds = %if.end30, %if.then22
  %22 = load i64, ptr %adjustment, align 8, !dbg !3371
  %sub32 = sub i64 0, %22, !dbg !3372
  %23 = load ptr, ptr %sem.addr, align 8, !dbg !3373
  %count33 = getelementptr inbounds %struct.rw_semaphore, ptr %23, i32 0, i32 0, !dbg !3374
  call void @atomic_long_add(i64 noundef %sub32, ptr noundef %count33) #13, !dbg !3375
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3376

if.end34:                                         ; preds = %if.then11
  %24 = load ptr, ptr %waiter, align 8, !dbg !3377
  %task35 = getelementptr inbounds %struct.rwsem_waiter, ptr %24, i32 0, i32 1, !dbg !3378
  %25 = load ptr, ptr %task35, align 8, !dbg !3378
  store ptr %25, ptr %owner, align 8, !dbg !3379
  %26 = load ptr, ptr %sem.addr, align 8, !dbg !3380
  %27 = load ptr, ptr %owner, align 8, !dbg !3381
  call void @__rwsem_set_reader_owned(ptr noundef %26, ptr noundef %27) #13, !dbg !3382
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3383
  br label %cleanup, !dbg !3383

cleanup:                                          ; preds = %if.end34, %if.end31
  call void @llvm.lifetime.end.p0(i64 8, ptr %owner) #14, !dbg !3383
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup147 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end36, !dbg !3384

if.end36:                                         ; preds = %cleanup.cont, %if.end8
  call void @INIT_LIST_HEAD(ptr noundef %wlist) #13, !dbg !3385
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr37) #14, !dbg !3386
  call void @llvm.dbg.declare(metadata ptr %__mptr37, metadata !3284, metadata !DIExpression()), !dbg !3386
  %28 = load ptr, ptr %sem.addr, align 8, !dbg !3386
  %wait_list38 = getelementptr inbounds %struct.rw_semaphore, ptr %28, i32 0, i32 4, !dbg !3386
  %next39 = getelementptr inbounds %struct.list_head, ptr %wait_list38, i32 0, i32 0, !dbg !3386
  %29 = load ptr, ptr %next39, align 8, !dbg !3386
  store ptr %29, ptr %__mptr37, align 8, !dbg !3386
  %30 = load ptr, ptr %__mptr37, align 8, !dbg !3386
  %add.ptr41 = getelementptr i8, ptr %30, i64 0, !dbg !3386
  store ptr %add.ptr41, ptr %tmp40, align 8, !dbg !3386
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr37) #14, !dbg !3387
  %31 = load ptr, ptr %tmp40, align 8, !dbg !3386
  store ptr %31, ptr %waiter, align 8, !dbg !3387
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr42) #14, !dbg !3388
  call void @llvm.dbg.declare(metadata ptr %__mptr42, metadata !3287, metadata !DIExpression()), !dbg !3388
  %32 = load ptr, ptr %waiter, align 8, !dbg !3388
  %list = getelementptr inbounds %struct.rwsem_waiter, ptr %32, i32 0, i32 0, !dbg !3388
  %next43 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 0, !dbg !3388
  %33 = load ptr, ptr %next43, align 8, !dbg !3388
  store ptr %33, ptr %__mptr42, align 8, !dbg !3388
  %34 = load ptr, ptr %__mptr42, align 8, !dbg !3388
  %add.ptr45 = getelementptr i8, ptr %34, i64 0, !dbg !3388
  store ptr %add.ptr45, ptr %tmp44, align 8, !dbg !3388
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr42) #14, !dbg !3387
  %35 = load ptr, ptr %tmp44, align 8, !dbg !3388
  store ptr %35, ptr %tmp, align 8, !dbg !3387
  br label %for.cond, !dbg !3387

for.cond:                                         ; preds = %for.inc, %if.end36
  %36 = load ptr, ptr %waiter, align 8, !dbg !3389
  %list46 = getelementptr inbounds %struct.rwsem_waiter, ptr %36, i32 0, i32 0, !dbg !3389
  %37 = load ptr, ptr %sem.addr, align 8, !dbg !3389
  %wait_list47 = getelementptr inbounds %struct.rw_semaphore, ptr %37, i32 0, i32 4, !dbg !3389
  %cmp48 = icmp eq ptr %list46, %wait_list47, !dbg !3389
  %lnot50 = xor i1 %cmp48, true, !dbg !3389
  br i1 %lnot50, label %for.body, label %for.end, !dbg !3387

for.body:                                         ; preds = %for.cond
  %38 = load ptr, ptr %waiter, align 8, !dbg !3390
  %type52 = getelementptr inbounds %struct.rwsem_waiter, ptr %38, i32 0, i32 2, !dbg !3393
  %39 = load i32, ptr %type52, align 8, !dbg !3393
  %cmp53 = icmp eq i32 %39, 0, !dbg !3394
  br i1 %cmp53, label %if.then55, label %if.end56, !dbg !3395

if.then55:                                        ; preds = %for.body
  br label %for.inc, !dbg !3396

if.end56:                                         ; preds = %for.body
  %40 = load i64, ptr %woken, align 8, !dbg !3397
  %inc = add i64 %40, 1, !dbg !3397
  store i64 %inc, ptr %woken, align 8, !dbg !3397
  %41 = load ptr, ptr %waiter, align 8, !dbg !3398
  %list57 = getelementptr inbounds %struct.rwsem_waiter, ptr %41, i32 0, i32 0, !dbg !3399
  call void @list_move_tail(ptr noundef %list57, ptr noundef %wlist) #13, !dbg !3400
  %42 = load i64, ptr %woken, align 8, !dbg !3401
  %cmp58 = icmp sge i64 %42, 256, !dbg !3401
  %lnot60 = xor i1 %cmp58, true, !dbg !3401
  %lnot62 = xor i1 %lnot60, true, !dbg !3401
  %lnot.ext63 = zext i1 %lnot62 to i32, !dbg !3401
  %conv64 = sext i32 %lnot.ext63 to i64, !dbg !3401
  %expval65 = call i64 @llvm.expect.i64(i64 %conv64, i64 0), !dbg !3401
  %tobool66 = icmp ne i64 %expval65, 0, !dbg !3401
  br i1 %tobool66, label %if.then67, label %if.end68, !dbg !3403

if.then67:                                        ; preds = %if.end56
  br label %for.end, !dbg !3404

if.end68:                                         ; preds = %if.end56
  br label %for.inc, !dbg !3405

for.inc:                                          ; preds = %if.end68, %if.then55
  %43 = load ptr, ptr %tmp, align 8, !dbg !3389
  store ptr %43, ptr %waiter, align 8, !dbg !3389
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr69) #14, !dbg !3406
  call void @llvm.dbg.declare(metadata ptr %__mptr69, metadata !3289, metadata !DIExpression()), !dbg !3406
  %44 = load ptr, ptr %tmp, align 8, !dbg !3406
  %list70 = getelementptr inbounds %struct.rwsem_waiter, ptr %44, i32 0, i32 0, !dbg !3406
  %next71 = getelementptr inbounds %struct.list_head, ptr %list70, i32 0, i32 0, !dbg !3406
  %45 = load ptr, ptr %next71, align 8, !dbg !3406
  store ptr %45, ptr %__mptr69, align 8, !dbg !3406
  %46 = load ptr, ptr %__mptr69, align 8, !dbg !3406
  %add.ptr73 = getelementptr i8, ptr %46, i64 0, !dbg !3406
  store ptr %add.ptr73, ptr %tmp72, align 8, !dbg !3406
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr69) #14, !dbg !3389
  %47 = load ptr, ptr %tmp72, align 8, !dbg !3406
  store ptr %47, ptr %tmp, align 8, !dbg !3389
  br label %for.cond, !dbg !3389, !llvm.loop !3407

for.end:                                          ; preds = %if.then67, %for.cond
  %48 = load i64, ptr %woken, align 8, !dbg !3409
  %mul = mul i64 %48, 256, !dbg !3410
  %49 = load i64, ptr %adjustment, align 8, !dbg !3411
  %sub74 = sub i64 %mul, %49, !dbg !3412
  store i64 %sub74, ptr %adjustment, align 8, !dbg !3413
  %50 = load ptr, ptr %sem.addr, align 8, !dbg !3414
  %count75 = getelementptr inbounds %struct.rw_semaphore, ptr %50, i32 0, i32 0, !dbg !3415
  %call76 = call i64 @atomic_long_read(ptr noundef %count75) #13, !dbg !3416
  store i64 %call76, ptr %oldcount, align 8, !dbg !3417
  %51 = load ptr, ptr %sem.addr, align 8, !dbg !3418
  %wait_list77 = getelementptr inbounds %struct.rw_semaphore, ptr %51, i32 0, i32 4, !dbg !3420
  %call78 = call i32 @list_empty(ptr noundef %wait_list77) #13, !dbg !3421
  %tobool79 = icmp ne i32 %call78, 0, !dbg !3421
  br i1 %tobool79, label %if.then80, label %if.else, !dbg !3422

if.then80:                                        ; preds = %for.end
  %52 = load i64, ptr %adjustment, align 8, !dbg !3423
  %sub81 = sub i64 %52, 2, !dbg !3423
  store i64 %sub81, ptr %adjustment, align 8, !dbg !3423
  %53 = load i64, ptr %oldcount, align 8, !dbg !3425
  %and82 = and i64 %53, 4, !dbg !3427
  %tobool83 = icmp ne i64 %and82, 0, !dbg !3427
  br i1 %tobool83, label %if.then84, label %if.end86, !dbg !3428

if.then84:                                        ; preds = %if.then80
  %54 = load i64, ptr %adjustment, align 8, !dbg !3429
  %sub85 = sub i64 %54, 4, !dbg !3429
  store i64 %sub85, ptr %adjustment, align 8, !dbg !3429
  br label %if.end86, !dbg !3430

if.end86:                                         ; preds = %if.then84, %if.then80
  br label %if.end95, !dbg !3431

if.else:                                          ; preds = %for.end
  %55 = load i64, ptr %woken, align 8, !dbg !3432
  %tobool87 = icmp ne i64 %55, 0, !dbg !3432
  br i1 %tobool87, label %if.then88, label %if.end94, !dbg !3434

if.then88:                                        ; preds = %if.else
  %56 = load i64, ptr %oldcount, align 8, !dbg !3435
  %and89 = and i64 %56, 4, !dbg !3438
  %tobool90 = icmp ne i64 %and89, 0, !dbg !3438
  br i1 %tobool90, label %if.then91, label %if.end93, !dbg !3439

if.then91:                                        ; preds = %if.then88
  %57 = load i64, ptr %adjustment, align 8, !dbg !3440
  %sub92 = sub i64 %57, 4, !dbg !3440
  store i64 %sub92, ptr %adjustment, align 8, !dbg !3440
  br label %if.end93, !dbg !3441

if.end93:                                         ; preds = %if.then91, %if.then88
  br label %if.end94, !dbg !3442

if.end94:                                         ; preds = %if.end93, %if.else
  br label %if.end95

if.end95:                                         ; preds = %if.end94, %if.end86
  %58 = load i64, ptr %adjustment, align 8, !dbg !3443
  %tobool96 = icmp ne i64 %58, 0, !dbg !3443
  br i1 %tobool96, label %if.then97, label %if.end99, !dbg !3445

if.then97:                                        ; preds = %if.end95
  %59 = load i64, ptr %adjustment, align 8, !dbg !3446
  %60 = load ptr, ptr %sem.addr, align 8, !dbg !3447
  %count98 = getelementptr inbounds %struct.rw_semaphore, ptr %60, i32 0, i32 0, !dbg !3448
  call void @atomic_long_add(i64 noundef %59, ptr noundef %count98) #13, !dbg !3449
  br label %if.end99, !dbg !3449

if.end99:                                         ; preds = %if.then97, %if.end95
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr100) #14, !dbg !3450
  call void @llvm.dbg.declare(metadata ptr %__mptr100, metadata !3292, metadata !DIExpression()), !dbg !3450
  %next101 = getelementptr inbounds %struct.list_head, ptr %wlist, i32 0, i32 0, !dbg !3450
  %61 = load ptr, ptr %next101, align 8, !dbg !3450
  store ptr %61, ptr %__mptr100, align 8, !dbg !3450
  %62 = load ptr, ptr %__mptr100, align 8, !dbg !3450
  %add.ptr103 = getelementptr i8, ptr %62, i64 0, !dbg !3450
  store ptr %add.ptr103, ptr %tmp102, align 8, !dbg !3450
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr100) #14, !dbg !3451
  %63 = load ptr, ptr %tmp102, align 8, !dbg !3450
  store ptr %63, ptr %waiter, align 8, !dbg !3451
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr104) #14, !dbg !3452
  call void @llvm.dbg.declare(metadata ptr %__mptr104, metadata !3295, metadata !DIExpression()), !dbg !3452
  %64 = load ptr, ptr %waiter, align 8, !dbg !3452
  %list105 = getelementptr inbounds %struct.rwsem_waiter, ptr %64, i32 0, i32 0, !dbg !3452
  %next106 = getelementptr inbounds %struct.list_head, ptr %list105, i32 0, i32 0, !dbg !3452
  %65 = load ptr, ptr %next106, align 8, !dbg !3452
  store ptr %65, ptr %__mptr104, align 8, !dbg !3452
  %66 = load ptr, ptr %__mptr104, align 8, !dbg !3452
  %add.ptr108 = getelementptr i8, ptr %66, i64 0, !dbg !3452
  store ptr %add.ptr108, ptr %tmp107, align 8, !dbg !3452
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr104) #14, !dbg !3451
  %67 = load ptr, ptr %tmp107, align 8, !dbg !3452
  store ptr %67, ptr %tmp, align 8, !dbg !3451
  br label %for.cond109, !dbg !3451

for.cond109:                                      ; preds = %for.inc140, %if.end99
  %68 = load ptr, ptr %waiter, align 8, !dbg !3453
  %list110 = getelementptr inbounds %struct.rwsem_waiter, ptr %68, i32 0, i32 0, !dbg !3453
  %cmp111 = icmp eq ptr %list110, %wlist, !dbg !3453
  %lnot113 = xor i1 %cmp111, true, !dbg !3453
  br i1 %lnot113, label %for.body115, label %for.end146, !dbg !3451

for.body115:                                      ; preds = %for.cond109
  call void @llvm.lifetime.start.p0(i64 8, ptr %tsk) #14, !dbg !3454
  call void @llvm.dbg.declare(metadata ptr %tsk, metadata !3297, metadata !DIExpression()), !dbg !3455
  %69 = load ptr, ptr %waiter, align 8, !dbg !3456
  %task116 = getelementptr inbounds %struct.rwsem_waiter, ptr %69, i32 0, i32 1, !dbg !3457
  %70 = load ptr, ptr %task116, align 8, !dbg !3457
  store ptr %70, ptr %tsk, align 8, !dbg !3458
  %71 = load ptr, ptr %tsk, align 8, !dbg !3459
  %call117 = call ptr @get_task_struct(ptr noundef %71) #13, !dbg !3460
  br label %do.body118, !dbg !3461

do.body118:                                       ; preds = %for.body115
  br label %do.body119, !dbg !3462

do.body119:                                       ; preds = %do.body118
  br label %do.cond120, !dbg !3464

do.cond120:                                       ; preds = %do.body119
  br label %do.end121, !dbg !3464

do.end121:                                        ; preds = %do.cond120
  br label %do.body122, !dbg !3462

do.body122:                                       ; preds = %do.end121
  br label %do.body123, !dbg !3466

do.body123:                                       ; preds = %do.body122
  br label %do.cond124, !dbg !3468

do.cond124:                                       ; preds = %do.body123
  br label %do.end125, !dbg !3468

do.end125:                                        ; preds = %do.cond124
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !3466, !srcloc !3470
  br label %do.body126, !dbg !3466

do.body126:                                       ; preds = %do.end125
  br label %do.body127, !dbg !3471

do.body127:                                       ; preds = %do.body126
  br label %do.cond128, !dbg !3473

do.cond128:                                       ; preds = %do.body127
  br label %do.end129, !dbg !3473

do.end129:                                        ; preds = %do.cond128
  br label %do.body130, !dbg !3471

do.body130:                                       ; preds = %do.end129
  %72 = load ptr, ptr %waiter, align 8, !dbg !3475
  %task131 = getelementptr inbounds %struct.rwsem_waiter, ptr %72, i32 0, i32 1, !dbg !3475
  store volatile ptr null, ptr %task131, align 8, !dbg !3475
  br label %do.cond132, !dbg !3475

do.cond132:                                       ; preds = %do.body130
  br label %do.end133, !dbg !3475

do.end133:                                        ; preds = %do.cond132
  br label %do.cond134, !dbg !3471

do.cond134:                                       ; preds = %do.end133
  br label %do.end135, !dbg !3471

do.end135:                                        ; preds = %do.cond134
  br label %do.cond136, !dbg !3466

do.cond136:                                       ; preds = %do.end135
  br label %do.end137, !dbg !3466

do.end137:                                        ; preds = %do.cond136
  br label %do.cond138, !dbg !3462

do.cond138:                                       ; preds = %do.end137
  br label %do.end139, !dbg !3462

do.end139:                                        ; preds = %do.cond138
  %73 = load ptr, ptr %wake_q.addr, align 8, !dbg !3477
  %74 = load ptr, ptr %tsk, align 8, !dbg !3478
  call void @wake_q_add_safe(ptr noundef %73, ptr noundef %74) #13, !dbg !3479
  call void @llvm.lifetime.end.p0(i64 8, ptr %tsk) #14, !dbg !3480
  br label %for.inc140, !dbg !3481

for.inc140:                                       ; preds = %do.end139
  %75 = load ptr, ptr %tmp, align 8, !dbg !3453
  store ptr %75, ptr %waiter, align 8, !dbg !3453
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr141) #14, !dbg !3482
  call void @llvm.dbg.declare(metadata ptr %__mptr141, metadata !3300, metadata !DIExpression()), !dbg !3482
  %76 = load ptr, ptr %tmp, align 8, !dbg !3482
  %list142 = getelementptr inbounds %struct.rwsem_waiter, ptr %76, i32 0, i32 0, !dbg !3482
  %next143 = getelementptr inbounds %struct.list_head, ptr %list142, i32 0, i32 0, !dbg !3482
  %77 = load ptr, ptr %next143, align 8, !dbg !3482
  store ptr %77, ptr %__mptr141, align 8, !dbg !3482
  %78 = load ptr, ptr %__mptr141, align 8, !dbg !3482
  %add.ptr145 = getelementptr i8, ptr %78, i64 0, !dbg !3482
  store ptr %add.ptr145, ptr %tmp144, align 8, !dbg !3482
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr141) #14, !dbg !3453
  %79 = load ptr, ptr %tmp144, align 8, !dbg !3482
  store ptr %79, ptr %tmp, align 8, !dbg !3453
  br label %for.cond109, !dbg !3453, !llvm.loop !3483

for.end146:                                       ; preds = %for.cond109
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3485
  br label %cleanup147, !dbg !3485

cleanup147:                                       ; preds = %for.end146, %cleanup, %if.then7, %if.end
  call void @llvm.lifetime.end.p0(i64 16, ptr %wlist) #14, !dbg !3485
  call void @llvm.lifetime.end.p0(i64 8, ptr %adjustment) #14, !dbg !3485
  call void @llvm.lifetime.end.p0(i64 8, ptr %woken) #14, !dbg !3485
  call void @llvm.lifetime.end.p0(i64 8, ptr %oldcount) #14, !dbg !3485
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #14, !dbg !3485
  call void @llvm.lifetime.end.p0(i64 8, ptr %waiter) #14, !dbg !3485
  %cleanup.dest153 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest153, label %unreachable [
    i32 0, label %cleanup.cont154
    i32 1, label %cleanup.cont154
  ]

cleanup.cont154:                                  ; preds = %cleanup147, %cleanup147
  ret void, !dbg !3485

unreachable:                                      ; preds = %cleanup147
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3486 dso_local void @_raw_spin_unlock_irq(ptr noundef) #6 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3487 dso_local void @wake_up_q(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rwsem_add_waiter(ptr noundef %sem, ptr noundef %waiter) #4 align 16 !dbg !3490 {
entry:
  %sem.addr = alloca ptr, align 8
  %waiter.addr = alloca ptr, align 8
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !3494, metadata !DIExpression()), !dbg !3496
  store ptr %waiter, ptr %waiter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %waiter.addr, metadata !3495, metadata !DIExpression()), !dbg !3497
  br label %do.body, !dbg !3498

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !3499
  %wait_lock = getelementptr inbounds %struct.rw_semaphore, ptr %0, i32 0, i32 3, !dbg !3499
  br label %do.end, !dbg !3499

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr %waiter.addr, align 8, !dbg !3501
  %list = getelementptr inbounds %struct.rwsem_waiter, ptr %1, i32 0, i32 0, !dbg !3502
  %2 = load ptr, ptr %sem.addr, align 8, !dbg !3503
  %wait_list = getelementptr inbounds %struct.rw_semaphore, ptr %2, i32 0, i32 4, !dbg !3504
  call void @list_add_tail(ptr noundef %list, ptr noundef %wait_list) #13, !dbg !3505
  ret void, !dbg !3506
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @atomic_long_add_return(i64 noundef %i, ptr noundef %v) #2 align 16 !dbg !3507 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3509, metadata !DIExpression()), !dbg !3511
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3510, metadata !DIExpression()), !dbg !3512
  br label %do.body, !dbg !3513

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3514

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3516
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #13, !dbg !3517
  %1 = load i64, ptr %i.addr, align 8, !dbg !3518
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3519
  %call = call i64 @raw_atomic_long_add_return(i64 noundef %1, ptr noundef %2) #13, !dbg !3520
  ret i64 %call, !dbg !3521
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rwsem_cond_wake_waiter(ptr noundef %sem, i64 noundef %count, ptr noundef %wake_q) #4 align 16 !dbg !3522 {
entry:
  %sem.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %wake_q.addr = alloca ptr, align 8
  %wake_type = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !3526, metadata !DIExpression()), !dbg !3530
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !3527, metadata !DIExpression()), !dbg !3531
  store ptr %wake_q, ptr %wake_q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wake_q.addr, metadata !3528, metadata !DIExpression()), !dbg !3532
  call void @llvm.lifetime.start.p0(i64 4, ptr %wake_type) #14, !dbg !3533
  call void @llvm.dbg.declare(metadata ptr %wake_type, metadata !3529, metadata !DIExpression()), !dbg !3534
  %0 = load i64, ptr %count.addr, align 8, !dbg !3535
  %and = and i64 %0, 1, !dbg !3537
  %tobool = icmp ne i64 %and, 0, !dbg !3537
  br i1 %tobool, label %if.then, label %if.end, !dbg !3538

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3539

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %count.addr, align 8, !dbg !3540
  %and1 = and i64 %1, -256, !dbg !3542
  %tobool2 = icmp ne i64 %and1, 0, !dbg !3542
  br i1 %tobool2, label %if.then3, label %if.else, !dbg !3543

if.then3:                                         ; preds = %if.end
  store i32 1, ptr %wake_type, align 4, !dbg !3544
  br label %if.end4, !dbg !3546

if.else:                                          ; preds = %if.end
  store i32 0, ptr %wake_type, align 4, !dbg !3547
  %2 = load ptr, ptr %sem.addr, align 8, !dbg !3549
  call void @clear_nonspinnable(ptr noundef %2) #13, !dbg !3550
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then3
  %3 = load ptr, ptr %sem.addr, align 8, !dbg !3551
  %4 = load i32, ptr %wake_type, align 4, !dbg !3552
  %5 = load ptr, ptr %wake_q.addr, align 8, !dbg !3553
  call void @rwsem_mark_wake(ptr noundef %3, i32 noundef %4, ptr noundef %5) #13, !dbg !3554
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3555
  br label %cleanup, !dbg !3555

cleanup:                                          ; preds = %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %wake_type) #14, !dbg !3555
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !3555

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @wake_q_empty(ptr noundef %head) #4 align 16 !dbg !3556 {
entry:
  %head.addr = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !3560, metadata !DIExpression()), !dbg !3561
  %0 = load ptr, ptr %head.addr, align 8, !dbg !3562
  %first = getelementptr inbounds %struct.wake_q_head, ptr %0, i32 0, i32 0, !dbg !3563
  %1 = load ptr, ptr %first, align 8, !dbg !3563
  %cmp = icmp eq ptr %1, inttoptr (i64 1 to ptr), !dbg !3564
  ret i1 %cmp, !dbg !3565
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_contention_begin(ptr noundef %lock, i32 noundef %flags) #4 align 16 !dbg !1974 {
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
  %__UNIQUE_ID_rcu238 = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %tmp45 = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1978, metadata !DIExpression()), !dbg !3566
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1979, metadata !DIExpression()), !dbg !3566
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_contention_begin, i32 0, i32 1)) #13, !dbg !3567
  br i1 %call, label %if.then, label %if.end68, !dbg !3566

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !3567

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__idx) #14, !dbg !3568
  call void @llvm.dbg.declare(metadata ptr %__idx, metadata !1980, metadata !DIExpression()), !dbg !3568
  store i32 0, ptr %__idx, align 4, !dbg !3568
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #14, !dbg !3569
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !1983, metadata !DIExpression()), !dbg !3569
  br label %do.body1, !dbg !3569

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !3570
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1986, metadata !DIExpression()), !dbg !3570
  store ptr null, ptr %__vpp_verify, align 8, !dbg !3570
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !3570
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !3569
  br label %do.cond, !dbg !3570

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !3570

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #14, !dbg !3571
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !1988, metadata !DIExpression()), !dbg !3571
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 2)) #14, !dbg !3571, !srcloc !3572
  store i32 %1, ptr %pfo_val__, align 4, !dbg !3571
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !3571
  %conv = zext i32 %2 to i64, !dbg !3571
  %conv2 = trunc i64 %conv to i32, !dbg !3571
  store i32 %conv2, ptr %tmp, align 4, !dbg !3571
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #14, !dbg !3569
  %3 = load i32, ptr %tmp, align 4, !dbg !3571
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !3569
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !3569
  store i32 %4, ptr %tmp3, align 4, !dbg !3569
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #14, !dbg !3573
  %5 = load i32, ptr %tmp3, align 4, !dbg !3569
  %call4 = call zeroext i1 @cpu_online(i32 noundef %5) #13, !dbg !3573
  br i1 %call4, label %if.end, label %if.then5, !dbg !3568

if.then5:                                         ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3573

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !3574
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1990, metadata !DIExpression()), !dbg !3574
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !3574
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !3575
  %tobool = icmp ne i32 %6, 0, !dbg !3575
  %lnot = xor i1 %tobool, true, !dbg !3575
  %lnot6 = xor i1 %lnot, true, !dbg !3575
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !3575
  %conv7 = sext i32 %lnot.ext to i64, !dbg !3575
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !3575
  %tobool8 = icmp ne i64 %expval, 0, !dbg !3575
  br i1 %tobool8, label %if.then9, label %if.end22, !dbg !3574

if.then9:                                         ; preds = %if.end
  br label %do.body10, !dbg !3575

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !3576
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1993, metadata !DIExpression()), !dbg !3576
  store i32 2307, ptr %__flags, align 4, !dbg !3576
  br label %do.body11, !dbg !3576

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !3577

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !3577

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !3576

do.body14:                                        ; preds = %do.end13
  %7 = load i32, ptr %__flags, align 4, !dbg !3579
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 120, i32 %7, i64 12) #14, !dbg !3579, !srcloc !3581
  br label %do.cond15, !dbg !3579

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !3579

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !3576

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !3582

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !3582

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !3575
  br label %do.cond20, !dbg !3576

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !3576

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !3576

if.end22:                                         ; preds = %do.end21, %if.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !3574
  %tobool24 = icmp ne i32 %8, 0, !dbg !3574
  %lnot25 = xor i1 %tobool24, true, !dbg !3574
  %lnot27 = xor i1 %lnot25, true, !dbg !3574
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !3574
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !3574
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !3574
  store i64 %expval30, ptr %tmp23, align 8, !dbg !3575
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !3584
  %9 = load i64, ptr %tmp23, align 8, !dbg !3574
  %tobool31 = icmp ne i64 %9, 0, !dbg !3584
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !3568

if.then32:                                        ; preds = %if.end22
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3584

if.end33:                                         ; preds = %if.end22
  br label %do.body34, !dbg !3568

do.body34:                                        ; preds = %if.end33
  call void @__preempt_count_add(i32 noundef 1) #13, !dbg !3585
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !3585, !srcloc !3587
  br label %do.cond35, !dbg !3585

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !3585

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !3568

do.body37:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #14, !dbg !3588
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !1996, metadata !DIExpression()), !dbg !3588
  call void @llvm.lifetime.start.p0(i64 8, ptr %__data) #14, !dbg !3588
  call void @llvm.dbg.declare(metadata ptr %__data, metadata !1998, metadata !DIExpression()), !dbg !3588
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu238) #14, !dbg !3589
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu238, metadata !1999, metadata !DIExpression()), !dbg !3589
  br label %do.body38, !dbg !3590

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !3592

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !3592

do.end40:                                         ; preds = %do.cond39
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_contention_begin, i32 0, i32 8), align 8, !dbg !3590
  store ptr %10, ptr %tmp41, align 8, !dbg !3592
  %11 = load ptr, ptr %tmp41, align 8, !dbg !3590
  store ptr %11, ptr %__UNIQUE_ID_rcu238, align 8, !dbg !3589
  %12 = load ptr, ptr %__UNIQUE_ID_rcu238, align 8, !dbg !3589
  store ptr %12, ptr %tmp42, align 8, !dbg !3589
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu238) #14, !dbg !3588
  %13 = load ptr, ptr %tmp42, align 8, !dbg !3589
  store ptr %13, ptr %it_func_ptr, align 8, !dbg !3588
  %14 = load ptr, ptr %it_func_ptr, align 8, !dbg !3594
  %tobool43 = icmp ne ptr %14, null, !dbg !3594
  br i1 %tobool43, label %if.then44, label %if.end47, !dbg !3588

if.then44:                                        ; preds = %do.end40
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !3596
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %15, i32 0, i32 1, !dbg !3596
  %16 = load ptr, ptr %data, align 8, !dbg !3596
  store ptr %16, ptr %__data, align 8, !dbg !3596
  store ptr @__SCT__tp_func_contention_begin, ptr %tmp45, align 8, !dbg !3598
  %17 = load ptr, ptr %tmp45, align 8, !dbg !3598
  %18 = load ptr, ptr %__data, align 8, !dbg !3596
  %19 = load ptr, ptr %lock.addr, align 8, !dbg !3596
  %20 = load i32, ptr %flags.addr, align 4, !dbg !3596
  %call46 = call i32 %17(ptr noundef %18, ptr noundef %19, i32 noundef %20) #13, !dbg !3596
  br label %if.end47, !dbg !3596

if.end47:                                         ; preds = %if.then44, %do.end40
  call void @llvm.lifetime.end.p0(i64 8, ptr %__data) #14, !dbg !3568
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #14, !dbg !3568
  br label %do.cond48, !dbg !3588

do.cond48:                                        ; preds = %if.end47
  br label %do.end49, !dbg !3588

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !3568

do.body50:                                        ; preds = %do.end49
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !3600, !srcloc !3602
  %call51 = call zeroext i1 @__preempt_count_dec_and_test() #13, !dbg !3603
  %lnot52 = xor i1 %call51, true, !dbg !3603
  %lnot54 = xor i1 %lnot52, true, !dbg !3603
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !3603
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !3603
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !3603
  %tobool58 = icmp ne i64 %expval57, 0, !dbg !3603
  br i1 %tobool58, label %if.then59, label %if.end63, !dbg !3600

if.then59:                                        ; preds = %do.body50
  br label %do.body60, !dbg !3603

do.body60:                                        ; preds = %if.then59
  %21 = call i64 @llvm.read_register.i64(metadata !2076), !dbg !3605
  %22 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %21) #14, !dbg !3605, !srcloc !3607
  call void @llvm.write_register.i64(metadata !2076, i64 %22), !dbg !3605
  br label %do.cond61, !dbg !3605

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !3605

do.end62:                                         ; preds = %do.cond61
  br label %if.end63, !dbg !3605

if.end63:                                         ; preds = %do.end62, %do.body50
  br label %do.cond64, !dbg !3600

do.cond64:                                        ; preds = %if.end63
  br label %do.end65, !dbg !3600

do.end65:                                         ; preds = %do.cond64
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3567
  br label %cleanup, !dbg !3567

cleanup:                                          ; preds = %do.end65, %if.then32, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__idx) #14, !dbg !3567
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end68
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end67, !dbg !3568

do.end67:                                         ; preds = %cleanup.cont
  br label %if.end68, !dbg !3568

if.end68:                                         ; preds = %cleanup, %do.end67, %entry
  ret void, !dbg !3566

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @signal_pending_state(i32 noundef %state, ptr noundef %p) #4 align 16 !dbg !3608 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !3612, metadata !DIExpression()), !dbg !3614
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3613, metadata !DIExpression()), !dbg !3615
  %0 = load i32, ptr %state.addr, align 4, !dbg !3616
  %and = and i32 %0, 257, !dbg !3618
  %tobool = icmp ne i32 %and, 0, !dbg !3618
  br i1 %tobool, label %if.end, label %if.then, !dbg !3619

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3620
  br label %return, !dbg !3620

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8, !dbg !3621
  %call = call i32 @signal_pending(ptr noundef %1) #13, !dbg !3623
  %tobool1 = icmp ne i32 %call, 0, !dbg !3623
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !3624

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !3625
  br label %return, !dbg !3625

if.end3:                                          ; preds = %if.end
  %2 = load i32, ptr %state.addr, align 4, !dbg !3626
  %and4 = and i32 %2, 1, !dbg !3627
  %tobool5 = icmp ne i32 %and4, 0, !dbg !3627
  br i1 %tobool5, label %lor.end, label %lor.rhs, !dbg !3628

lor.rhs:                                          ; preds = %if.end3
  %3 = load ptr, ptr %p.addr, align 8, !dbg !3629
  %call6 = call i32 @__fatal_signal_pending(ptr noundef %3) #13, !dbg !3630
  %tobool7 = icmp ne i32 %call6, 0, !dbg !3628
  br label %lor.end, !dbg !3628

lor.end:                                          ; preds = %lor.rhs, %if.end3
  %4 = phi i1 [ true, %if.end3 ], [ %tobool7, %lor.rhs ]
  %lor.ext = zext i1 %4 to i32, !dbg !3628
  store i32 %lor.ext, ptr %retval, align 4, !dbg !3631
  br label %return, !dbg !3631

return:                                           ; preds = %lor.end, %if.then2, %if.then
  %5 = load i32, ptr %retval, align 4, !dbg !3632
  ret i32 %5, !dbg !3632
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3633 dso_local void @schedule_preempt_disabled() #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_contention_end(ptr noundef %lock, i32 noundef %ret) #4 align 16 !dbg !2005 {
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
  %__UNIQUE_ID_rcu246 = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %tmp45 = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2009, metadata !DIExpression()), !dbg !3634
  store i32 %ret, ptr %ret.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ret.addr, metadata !2010, metadata !DIExpression()), !dbg !3634
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_contention_end, i32 0, i32 1)) #13, !dbg !3635
  br i1 %call, label %if.then, label %if.end68, !dbg !3634

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !3635

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__idx) #14, !dbg !3636
  call void @llvm.dbg.declare(metadata ptr %__idx, metadata !2011, metadata !DIExpression()), !dbg !3636
  store i32 0, ptr %__idx, align 4, !dbg !3636
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #14, !dbg !3637
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !2014, metadata !DIExpression()), !dbg !3637
  br label %do.body1, !dbg !3637

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !3638
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2017, metadata !DIExpression()), !dbg !3638
  store ptr null, ptr %__vpp_verify, align 8, !dbg !3638
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !3638
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !3637
  br label %do.cond, !dbg !3638

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !3638

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #14, !dbg !3639
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !2019, metadata !DIExpression()), !dbg !3639
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 2)) #14, !dbg !3639, !srcloc !3640
  store i32 %1, ptr %pfo_val__, align 4, !dbg !3639
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !3639
  %conv = zext i32 %2 to i64, !dbg !3639
  %conv2 = trunc i64 %conv to i32, !dbg !3639
  store i32 %conv2, ptr %tmp, align 4, !dbg !3639
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #14, !dbg !3637
  %3 = load i32, ptr %tmp, align 4, !dbg !3639
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !3637
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !3637
  store i32 %4, ptr %tmp3, align 4, !dbg !3637
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #14, !dbg !3641
  %5 = load i32, ptr %tmp3, align 4, !dbg !3637
  %call4 = call zeroext i1 @cpu_online(i32 noundef %5) #13, !dbg !3641
  br i1 %call4, label %if.end, label %if.then5, !dbg !3636

if.then5:                                         ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3641

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !3642
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2021, metadata !DIExpression()), !dbg !3642
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !3642
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !3643
  %tobool = icmp ne i32 %6, 0, !dbg !3643
  %lnot = xor i1 %tobool, true, !dbg !3643
  %lnot6 = xor i1 %lnot, true, !dbg !3643
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !3643
  %conv7 = sext i32 %lnot.ext to i64, !dbg !3643
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !3643
  %tobool8 = icmp ne i64 %expval, 0, !dbg !3643
  br i1 %tobool8, label %if.then9, label %if.end22, !dbg !3642

if.then9:                                         ; preds = %if.end
  br label %do.body10, !dbg !3643

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !3644
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !2024, metadata !DIExpression()), !dbg !3644
  store i32 2307, ptr %__flags, align 4, !dbg !3644
  br label %do.body11, !dbg !3644

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !3645

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !3645

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !3644

do.body14:                                        ; preds = %do.end13
  %7 = load i32, ptr %__flags, align 4, !dbg !3647
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 139, i32 %7, i64 12) #14, !dbg !3647, !srcloc !3649
  br label %do.cond15, !dbg !3647

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !3647

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !3644

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !3650

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !3650

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !3643
  br label %do.cond20, !dbg !3644

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !3644

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !3644

if.end22:                                         ; preds = %do.end21, %if.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !3642
  %tobool24 = icmp ne i32 %8, 0, !dbg !3642
  %lnot25 = xor i1 %tobool24, true, !dbg !3642
  %lnot27 = xor i1 %lnot25, true, !dbg !3642
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !3642
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !3642
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !3642
  store i64 %expval30, ptr %tmp23, align 8, !dbg !3643
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !3652
  %9 = load i64, ptr %tmp23, align 8, !dbg !3642
  %tobool31 = icmp ne i64 %9, 0, !dbg !3652
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !3636

if.then32:                                        ; preds = %if.end22
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3652

if.end33:                                         ; preds = %if.end22
  br label %do.body34, !dbg !3636

do.body34:                                        ; preds = %if.end33
  call void @__preempt_count_add(i32 noundef 1) #13, !dbg !3653
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !3653, !srcloc !3655
  br label %do.cond35, !dbg !3653

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !3653

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !3636

do.body37:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #14, !dbg !3656
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !2027, metadata !DIExpression()), !dbg !3656
  call void @llvm.lifetime.start.p0(i64 8, ptr %__data) #14, !dbg !3656
  call void @llvm.dbg.declare(metadata ptr %__data, metadata !2029, metadata !DIExpression()), !dbg !3656
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu246) #14, !dbg !3657
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu246, metadata !2030, metadata !DIExpression()), !dbg !3657
  br label %do.body38, !dbg !3658

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !3660

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !3660

do.end40:                                         ; preds = %do.cond39
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_contention_end, i32 0, i32 8), align 8, !dbg !3658
  store ptr %10, ptr %tmp41, align 8, !dbg !3660
  %11 = load ptr, ptr %tmp41, align 8, !dbg !3658
  store ptr %11, ptr %__UNIQUE_ID_rcu246, align 8, !dbg !3657
  %12 = load ptr, ptr %__UNIQUE_ID_rcu246, align 8, !dbg !3657
  store ptr %12, ptr %tmp42, align 8, !dbg !3657
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu246) #14, !dbg !3656
  %13 = load ptr, ptr %tmp42, align 8, !dbg !3657
  store ptr %13, ptr %it_func_ptr, align 8, !dbg !3656
  %14 = load ptr, ptr %it_func_ptr, align 8, !dbg !3662
  %tobool43 = icmp ne ptr %14, null, !dbg !3662
  br i1 %tobool43, label %if.then44, label %if.end47, !dbg !3656

if.then44:                                        ; preds = %do.end40
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !3664
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %15, i32 0, i32 1, !dbg !3664
  %16 = load ptr, ptr %data, align 8, !dbg !3664
  store ptr %16, ptr %__data, align 8, !dbg !3664
  store ptr @__SCT__tp_func_contention_end, ptr %tmp45, align 8, !dbg !3666
  %17 = load ptr, ptr %tmp45, align 8, !dbg !3666
  %18 = load ptr, ptr %__data, align 8, !dbg !3664
  %19 = load ptr, ptr %lock.addr, align 8, !dbg !3664
  %20 = load i32, ptr %ret.addr, align 4, !dbg !3664
  %call46 = call i32 %17(ptr noundef %18, ptr noundef %19, i32 noundef %20) #13, !dbg !3664
  br label %if.end47, !dbg !3664

if.end47:                                         ; preds = %if.then44, %do.end40
  call void @llvm.lifetime.end.p0(i64 8, ptr %__data) #14, !dbg !3636
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #14, !dbg !3636
  br label %do.cond48, !dbg !3656

do.cond48:                                        ; preds = %if.end47
  br label %do.end49, !dbg !3656

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !3636

do.body50:                                        ; preds = %do.end49
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !3668, !srcloc !3670
  %call51 = call zeroext i1 @__preempt_count_dec_and_test() #13, !dbg !3671
  %lnot52 = xor i1 %call51, true, !dbg !3671
  %lnot54 = xor i1 %lnot52, true, !dbg !3671
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !3671
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !3671
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !3671
  %tobool58 = icmp ne i64 %expval57, 0, !dbg !3671
  br i1 %tobool58, label %if.then59, label %if.end63, !dbg !3668

if.then59:                                        ; preds = %do.body50
  br label %do.body60, !dbg !3671

do.body60:                                        ; preds = %if.then59
  %21 = call i64 @llvm.read_register.i64(metadata !2076), !dbg !3673
  %22 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %21) #14, !dbg !3673, !srcloc !3675
  call void @llvm.write_register.i64(metadata !2076, i64 %22), !dbg !3673
  br label %do.cond61, !dbg !3673

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !3673

do.end62:                                         ; preds = %do.cond61
  br label %if.end63, !dbg !3673

if.end63:                                         ; preds = %do.end62, %do.body50
  br label %do.cond64, !dbg !3668

do.cond64:                                        ; preds = %if.end63
  br label %do.end65, !dbg !3668

do.end65:                                         ; preds = %do.cond64
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3635
  br label %cleanup, !dbg !3635

cleanup:                                          ; preds = %do.end65, %if.then32, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__idx) #14, !dbg !3635
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end68
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end67, !dbg !3636

do.end67:                                         ; preds = %cleanup.cont
  br label %if.end68, !dbg !3636

if.end68:                                         ; preds = %cleanup, %do.end67, %entry
  ret void, !dbg !3634

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rwsem_del_wake_waiter(ptr noundef %sem, ptr noundef %waiter, ptr noundef %wake_q) #4 align 16 !dbg !3676 {
entry:
  %sem.addr = alloca ptr, align 8
  %waiter.addr = alloca ptr, align 8
  %wake_q.addr = alloca ptr, align 8
  %first = alloca i8, align 1
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !3680, metadata !DIExpression()), !dbg !3686
  store ptr %waiter, ptr %waiter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %waiter.addr, metadata !3681, metadata !DIExpression()), !dbg !3687
  store ptr %wake_q, ptr %wake_q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wake_q.addr, metadata !3682, metadata !DIExpression()), !dbg !3688
  call void @llvm.lifetime.start.p0(i64 1, ptr %first) #14, !dbg !3689
  call void @llvm.dbg.declare(metadata ptr %first, metadata !3683, metadata !DIExpression()), !dbg !3690
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !3691
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3684, metadata !DIExpression()), !dbg !3691
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !3691
  %wait_list = getelementptr inbounds %struct.rw_semaphore, ptr %0, i32 0, i32 4, !dbg !3691
  %next = getelementptr inbounds %struct.list_head, ptr %wait_list, i32 0, i32 0, !dbg !3691
  %1 = load ptr, ptr %next, align 8, !dbg !3691
  store ptr %1, ptr %__mptr, align 8, !dbg !3691
  %2 = load ptr, ptr %__mptr, align 8, !dbg !3691
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !3691
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3691
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !3692
  %3 = load ptr, ptr %tmp, align 8, !dbg !3691
  %4 = load ptr, ptr %waiter.addr, align 8, !dbg !3693
  %cmp = icmp eq ptr %3, %4, !dbg !3694
  %frombool = zext i1 %cmp to i8, !dbg !3690
  store i8 %frombool, ptr %first, align 1, !dbg !3690
  %5 = load ptr, ptr %wake_q.addr, align 8, !dbg !3695
  call void @wake_q_init(ptr noundef %5) #13, !dbg !3696
  %6 = load ptr, ptr %sem.addr, align 8, !dbg !3697
  %7 = load ptr, ptr %waiter.addr, align 8, !dbg !3699
  %call = call zeroext i1 @rwsem_del_waiter(ptr noundef %6, ptr noundef %7) #13, !dbg !3700
  br i1 %call, label %land.lhs.true, label %if.end, !dbg !3701

land.lhs.true:                                    ; preds = %entry
  %8 = load i8, ptr %first, align 1, !dbg !3702, !range !2975, !noundef !458
  %tobool = trunc i8 %8 to i1, !dbg !3702
  br i1 %tobool, label %if.then, label %if.end, !dbg !3703

if.then:                                          ; preds = %land.lhs.true
  %9 = load ptr, ptr %sem.addr, align 8, !dbg !3704
  %10 = load ptr, ptr %wake_q.addr, align 8, !dbg !3705
  call void @rwsem_mark_wake(ptr noundef %9, i32 noundef 0, ptr noundef %10) #13, !dbg !3706
  br label %if.end, !dbg !3706

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %11 = load ptr, ptr %sem.addr, align 8, !dbg !3707
  %wait_lock = getelementptr inbounds %struct.rw_semaphore, ptr %11, i32 0, i32 3, !dbg !3707
  call void @_raw_spin_unlock_irq(ptr noundef %wait_lock) #13, !dbg !3707
  %12 = load ptr, ptr %wake_q.addr, align 8, !dbg !3708
  %call1 = call zeroext i1 @wake_q_empty(ptr noundef %12) #13, !dbg !3710
  br i1 %call1, label %if.end3, label %if.then2, !dbg !3711

if.then2:                                         ; preds = %if.end
  %13 = load ptr, ptr %wake_q.addr, align 8, !dbg !3712
  call void @wake_up_q(ptr noundef %13) #13, !dbg !3713
  br label %if.end3, !dbg !3713

if.end3:                                          ; preds = %if.then2, %if.end
  call void @llvm.lifetime.end.p0(i64 1, ptr %first) #14, !dbg !3714
  ret void, !dbg !3714
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #4 align 16 !dbg !3715 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !3719, metadata !DIExpression()), !dbg !3720
  %0 = load i64, ptr %error.addr, align 8, !dbg !3721
  %1 = inttoptr i64 %0 to ptr, !dbg !3722
  ret ptr %1, !dbg !3723
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3724 dso_local void @wake_q_add(ptr noundef, ptr noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @atomic_long_fetch_add(i64 noundef %i, ptr noundef %v) #2 align 16 !dbg !3727 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3729, metadata !DIExpression()), !dbg !3731
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3730, metadata !DIExpression()), !dbg !3732
  br label %do.body, !dbg !3733

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3734

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3736
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #13, !dbg !3737
  %1 = load i64, ptr %i.addr, align 8, !dbg !3738
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3739
  %call = call i64 @raw_atomic_long_fetch_add(i64 noundef %1, ptr noundef %2) #13, !dbg !3740
  ret i64 %call, !dbg !3741
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_long_add(i64 noundef %i, ptr noundef %v) #2 align 16 !dbg !3742 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3746, metadata !DIExpression()), !dbg !3748
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3747, metadata !DIExpression()), !dbg !3749
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3750
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #13, !dbg !3751
  %1 = load i64, ptr %i.addr, align 8, !dbg !3752
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3753
  call void @raw_atomic_long_add(i64 noundef %1, ptr noundef %2) #13, !dbg !3754
  ret void, !dbg !3755
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_move_tail(ptr noundef %list, ptr noundef %head) #4 align 16 !dbg !3756 {
entry:
  %list.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !3760, metadata !DIExpression()), !dbg !3762
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !3761, metadata !DIExpression()), !dbg !3763
  %0 = load ptr, ptr %list.addr, align 8, !dbg !3764
  call void @__list_del_entry(ptr noundef %0) #13, !dbg !3765
  %1 = load ptr, ptr %list.addr, align 8, !dbg !3766
  %2 = load ptr, ptr %head.addr, align 8, !dbg !3767
  call void @list_add_tail(ptr noundef %1, ptr noundef %2) #13, !dbg !3768
  ret void, !dbg !3769
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_task_struct(ptr noundef %t) #4 align 16 !dbg !3770 {
entry:
  %t.addr = alloca ptr, align 8
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !3775, metadata !DIExpression()), !dbg !3776
  %0 = load ptr, ptr %t.addr, align 8, !dbg !3777
  %usage = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 3, !dbg !3778
  call void @refcount_inc(ptr noundef %usage) #13, !dbg !3779
  %1 = load ptr, ptr %t.addr, align 8, !dbg !3780
  ret ptr %1, !dbg !3781
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3782 dso_local void @wake_q_add_safe(ptr noundef, ptr noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic_long_fetch_add(i64 noundef %i, ptr noundef %v) #2 align 16 !dbg !3783 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3785, metadata !DIExpression()), !dbg !3787
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3786, metadata !DIExpression()), !dbg !3788
  %0 = load i64, ptr %i.addr, align 8, !dbg !3789
  %1 = load ptr, ptr %v.addr, align 8, !dbg !3790
  %call = call i64 @raw_atomic64_fetch_add(i64 noundef %0, ptr noundef %1) #13, !dbg !3791
  ret i64 %call, !dbg !3792
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_fetch_add(i64 noundef %i, ptr noundef %v) #2 align 16 !dbg !3793 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3795, metadata !DIExpression()), !dbg !3797
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3796, metadata !DIExpression()), !dbg !3798
  %0 = load i64, ptr %i.addr, align 8, !dbg !3799
  %1 = load ptr, ptr %v.addr, align 8, !dbg !3800
  %call = call i64 @arch_atomic64_fetch_add(i64 noundef %0, ptr noundef %1) #13, !dbg !3801
  ret i64 %call, !dbg !3802
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_atomic64_fetch_add(i64 noundef %i, ptr noundef %v) #2 align 16 !dbg !3803 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  %__ret = alloca i64, align 8
  %tmp = alloca i64, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3805, metadata !DIExpression()), !dbg !3809
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3806, metadata !DIExpression()), !dbg !3810
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #14, !dbg !3811
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !3807, metadata !DIExpression()), !dbg !3811
  %0 = load i64, ptr %i.addr, align 8, !dbg !3811
  store i64 %0, ptr %__ret, align 8, !dbg !3811
  %1 = load i64, ptr %__ret, align 8, !dbg !3811
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3811
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %2, i32 0, i32 0, !dbg !3811
  %3 = call i64 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddq ${0:q}, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %counter, i64 %1, ptr elementtype(i64) %counter) #14, !dbg !3811, !srcloc !3812
  store i64 %3, ptr %__ret, align 8, !dbg !3811
  %4 = load i64, ptr %__ret, align 8, !dbg !3811
  store i64 %4, ptr %tmp, align 8, !dbg !3811
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #14, !dbg !3813
  %5 = load i64, ptr %tmp, align 8, !dbg !3811
  ret i64 %5, !dbg !3814
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_long_add(i64 noundef %i, ptr noundef %v) #2 align 16 !dbg !3815 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3817, metadata !DIExpression()), !dbg !3819
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3818, metadata !DIExpression()), !dbg !3820
  %0 = load i64, ptr %i.addr, align 8, !dbg !3821
  %1 = load ptr, ptr %v.addr, align 8, !dbg !3822
  call void @raw_atomic64_add(i64 noundef %0, ptr noundef %1) #13, !dbg !3823
  ret void, !dbg !3824
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic64_add(i64 noundef %i, ptr noundef %v) #2 align 16 !dbg !3825 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3829, metadata !DIExpression()), !dbg !3831
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3830, metadata !DIExpression()), !dbg !3832
  %0 = load i64, ptr %i.addr, align 8, !dbg !3833
  %1 = load ptr, ptr %v.addr, align 8, !dbg !3834
  call void @arch_atomic64_add(i64 noundef %0, ptr noundef %1) #13, !dbg !3835
  ret void, !dbg !3836
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic64_add(i64 noundef %i, ptr noundef %v) #2 align 16 !dbg !3837 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3839, metadata !DIExpression()), !dbg !3841
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3840, metadata !DIExpression()), !dbg !3842
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3843
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !3844
  %1 = load i64, ptr %i.addr, align 8, !dbg !3845
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3846
  %counter1 = getelementptr inbounds %struct.atomic64_t, ptr %2, i32 0, i32 0, !dbg !3847
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; addq $1,$0", "=*m,er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %counter, i64 %1, ptr elementtype(i64) %counter1) #14, !dbg !3848, !srcloc !3849
  ret void, !dbg !3850
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #4 align 16 !dbg !3851 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !3853, metadata !DIExpression()), !dbg !3854
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !3855
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #13, !dbg !3857
  br i1 %call, label %if.end, label %if.then, !dbg !3858

if.then:                                          ; preds = %entry
  br label %return, !dbg !3859

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !3860
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !3861
  %2 = load ptr, ptr %prev, align 8, !dbg !3861
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !3862
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !3863
  %4 = load ptr, ptr %next, align 8, !dbg !3863
  call void @__list_del(ptr noundef %2, ptr noundef %4) #13, !dbg !3864
  br label %return, !dbg !3865

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !3865
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #4 align 16 !dbg !3866 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3868, metadata !DIExpression()), !dbg !3870
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !3869, metadata !DIExpression()), !dbg !3871
  %0 = load ptr, ptr %new.addr, align 8, !dbg !3872
  %1 = load ptr, ptr %head.addr, align 8, !dbg !3873
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !3874
  %2 = load ptr, ptr %prev, align 8, !dbg !3874
  %3 = load ptr, ptr %head.addr, align 8, !dbg !3875
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #13, !dbg !3876
  ret void, !dbg !3877
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #4 align 16 !dbg !3878 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !3882, metadata !DIExpression()), !dbg !3883
  ret i1 true, !dbg !3884
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !3885 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !3887, metadata !DIExpression()), !dbg !3889
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !3888, metadata !DIExpression()), !dbg !3890
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !3891
  %1 = load ptr, ptr %next.addr, align 8, !dbg !3892
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !3893
  store ptr %0, ptr %prev1, align 8, !dbg !3894
  br label %do.body, !dbg !3895

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !3896

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !3898

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !3896

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !3900
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !3900
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !3900
  store volatile ptr %2, ptr %next4, align 8, !dbg !3900
  br label %do.end5, !dbg !3900

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !3896

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !3902
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !3903 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3907, metadata !DIExpression()), !dbg !3910
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !3908, metadata !DIExpression()), !dbg !3911
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !3909, metadata !DIExpression()), !dbg !3912
  %0 = load ptr, ptr %new.addr, align 8, !dbg !3913
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !3915
  %2 = load ptr, ptr %next.addr, align 8, !dbg !3916
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13, !dbg !3917
  br i1 %call, label %if.end, label %if.then, !dbg !3918

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !3919

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !3920
  %4 = load ptr, ptr %next.addr, align 8, !dbg !3921
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !3922
  store ptr %3, ptr %prev1, align 8, !dbg !3923
  %5 = load ptr, ptr %next.addr, align 8, !dbg !3924
  %6 = load ptr, ptr %new.addr, align 8, !dbg !3925
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !3926
  store ptr %5, ptr %next2, align 8, !dbg !3927
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !3928
  %8 = load ptr, ptr %new.addr, align 8, !dbg !3929
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !3930
  store ptr %7, ptr %prev3, align 8, !dbg !3931
  br label %do.body, !dbg !3932

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !3933

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !3935

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !3933

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !3937
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !3937
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !3937
  store volatile ptr %9, ptr %next6, align 8, !dbg !3937
  br label %do.end7, !dbg !3937

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !3933

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !3939
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !3940 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3944, metadata !DIExpression()), !dbg !3947
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !3945, metadata !DIExpression()), !dbg !3948
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !3946, metadata !DIExpression()), !dbg !3949
  ret i1 true, !dbg !3950
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_inc(ptr noundef %r) #4 align 16 !dbg !3951 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !3956, metadata !DIExpression()), !dbg !3957
  %0 = load ptr, ptr %r.addr, align 8, !dbg !3958
  call void @__refcount_inc(ptr noundef %0, ptr noundef null) #13, !dbg !3959
  ret void, !dbg !3960
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_inc(ptr noundef %r, ptr noundef %oldp) #4 align 16 !dbg !3961 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !3965, metadata !DIExpression()), !dbg !3967
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !3966, metadata !DIExpression()), !dbg !3968
  %0 = load ptr, ptr %r.addr, align 8, !dbg !3969
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !3970
  call void @__refcount_add(i32 noundef 1, ptr noundef %0, ptr noundef %1) #13, !dbg !3971
  ret void, !dbg !3972
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_add(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #4 align 16 !dbg !3973 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3977, metadata !DIExpression()), !dbg !3981
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !3978, metadata !DIExpression()), !dbg !3982
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !3979, metadata !DIExpression()), !dbg !3983
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #14, !dbg !3984
  call void @llvm.dbg.declare(metadata ptr %old, metadata !3980, metadata !DIExpression()), !dbg !3985
  %0 = load i32, ptr %i.addr, align 4, !dbg !3986
  %1 = load ptr, ptr %r.addr, align 8, !dbg !3987
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !3988
  %call = call i32 @atomic_fetch_add_relaxed(i32 noundef %0, ptr noundef %refs) #13, !dbg !3989
  store i32 %call, ptr %old, align 4, !dbg !3985
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !3990
  %tobool = icmp ne ptr %2, null, !dbg !3990
  br i1 %tobool, label %if.then, label %if.end, !dbg !3992

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !3993
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !3994
  store i32 %3, ptr %4, align 4, !dbg !3995
  br label %if.end, !dbg !3996

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !3997
  %tobool1 = icmp ne i32 %5, 0, !dbg !3997
  %lnot = xor i1 %tobool1, true, !dbg !3997
  %lnot2 = xor i1 %lnot, true, !dbg !3997
  %lnot3 = xor i1 %lnot2, true, !dbg !3997
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !3997
  %conv = sext i32 %lnot.ext to i64, !dbg !3997
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3997
  %tobool4 = icmp ne i64 %expval, 0, !dbg !3997
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !3999

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %r.addr, align 8, !dbg !4000
  call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 2) #13, !dbg !4001
  br label %if.end18, !dbg !4001

if.else:                                          ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !4002
  %cmp = icmp slt i32 %7, 0, !dbg !4002
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !4002

lor.rhs:                                          ; preds = %if.else
  %8 = load i32, ptr %old, align 4, !dbg !4002
  %9 = load i32, ptr %i.addr, align 4, !dbg !4002
  %add = add i32 %8, %9, !dbg !4002
  %cmp7 = icmp slt i32 %add, 0, !dbg !4002
  br label %lor.end, !dbg !4002

lor.end:                                          ; preds = %lor.rhs, %if.else
  %10 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %10, true, !dbg !4002
  %lnot11 = xor i1 %lnot9, true, !dbg !4002
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !4002
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !4002
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !4002
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !4002
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !4004

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !4005
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 1) #13, !dbg !4006
  br label %if.end17, !dbg !4006

if.end17:                                         ; preds = %if.then16, %lor.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #14, !dbg !4007
  ret void, !dbg !4007
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #2 align 16 !dbg !4008 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4012, metadata !DIExpression()), !dbg !4014
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4013, metadata !DIExpression()), !dbg !4015
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4016
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #13, !dbg !4017
  %1 = load i32, ptr %i.addr, align 4, !dbg !4018
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4019
  %call = call i32 @raw_atomic_fetch_add_relaxed(i32 noundef %1, ptr noundef %2) #13, !dbg !4020
  ret i32 %call, !dbg !4021
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4022 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #2 align 16 !dbg !4025 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4027, metadata !DIExpression()), !dbg !4029
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4028, metadata !DIExpression()), !dbg !4030
  %0 = load i32, ptr %i.addr, align 4, !dbg !4031
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4032
  %call = call i32 @arch_atomic_fetch_add(i32 noundef %0, ptr noundef %1) #13, !dbg !4033
  ret i32 %call, !dbg !4034
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_add(i32 noundef %i, ptr noundef %v) #2 align 16 !dbg !4035 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4037, metadata !DIExpression()), !dbg !4041
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4038, metadata !DIExpression()), !dbg !4042
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #14, !dbg !4043
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !4039, metadata !DIExpression()), !dbg !4043
  %0 = load i32, ptr %i.addr, align 4, !dbg !4043
  store i32 %0, ptr %__ret, align 4, !dbg !4043
  %1 = load i32, ptr %__ret, align 4, !dbg !4043
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4043
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !4043
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #14, !dbg !4043, !srcloc !4044
  store i32 %3, ptr %__ret, align 4, !dbg !4043
  %4 = load i32, ptr %__ret, align 4, !dbg !4043
  store i32 %4, ptr %tmp, align 4, !dbg !4043
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #14, !dbg !4045
  %5 = load i32, ptr %tmp, align 4, !dbg !4043
  ret i32 %5, !dbg !4046
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic_long_add_return(i64 noundef %i, ptr noundef %v) #2 align 16 !dbg !4047 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4049, metadata !DIExpression()), !dbg !4051
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4050, metadata !DIExpression()), !dbg !4052
  %0 = load i64, ptr %i.addr, align 8, !dbg !4053
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4054
  %call = call i64 @raw_atomic64_add_return(i64 noundef %0, ptr noundef %1) #13, !dbg !4055
  ret i64 %call, !dbg !4056
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_add_return(i64 noundef %i, ptr noundef %v) #2 align 16 !dbg !4057 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4059, metadata !DIExpression()), !dbg !4061
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4060, metadata !DIExpression()), !dbg !4062
  %0 = load i64, ptr %i.addr, align 8, !dbg !4063
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4064
  %call = call i64 @arch_atomic64_add_return(i64 noundef %0, ptr noundef %1) #13, !dbg !4065
  ret i64 %call, !dbg !4066
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_nonspinnable(ptr noundef %sem) #4 align 16 !dbg !4067 {
entry:
  %sem.addr = alloca ptr, align 8
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !4069, metadata !DIExpression()), !dbg !4070
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !4071
  %call = call zeroext i1 @rwsem_test_oflags(ptr noundef %0, i64 noundef 2) #13, !dbg !4071
  %lnot = xor i1 %call, true, !dbg !4071
  %lnot1 = xor i1 %lnot, true, !dbg !4071
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4071
  %conv = sext i32 %lnot.ext to i64, !dbg !4071
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4071
  %tobool = icmp ne i64 %expval, 0, !dbg !4071
  br i1 %tobool, label %if.then, label %if.end, !dbg !4073

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %sem.addr, align 8, !dbg !4074
  %owner = getelementptr inbounds %struct.rw_semaphore, ptr %1, i32 0, i32 1, !dbg !4075
  call void @atomic_long_andnot(i64 noundef 2, ptr noundef %owner) #13, !dbg !4076
  br label %if.end, !dbg !4076

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4077
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @rwsem_test_oflags(ptr noundef %sem, i64 noundef %flags) #4 align 16 !dbg !4078 {
entry:
  %sem.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !4082, metadata !DIExpression()), !dbg !4084
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4083, metadata !DIExpression()), !dbg !4085
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !4086
  %owner = getelementptr inbounds %struct.rw_semaphore, ptr %0, i32 0, i32 1, !dbg !4087
  %call = call i64 @atomic_long_read(ptr noundef %owner) #13, !dbg !4088
  %1 = load i64, ptr %flags.addr, align 8, !dbg !4089
  %and = and i64 %call, %1, !dbg !4090
  %tobool = icmp ne i64 %and, 0, !dbg !4088
  ret i1 %tobool, !dbg !4091
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_long_andnot(i64 noundef %i, ptr noundef %v) #2 align 16 !dbg !4092 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4094, metadata !DIExpression()), !dbg !4096
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4095, metadata !DIExpression()), !dbg !4097
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4098
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #13, !dbg !4099
  %1 = load i64, ptr %i.addr, align 8, !dbg !4100
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4101
  call void @raw_atomic_long_andnot(i64 noundef %1, ptr noundef %2) #13, !dbg !4102
  ret void, !dbg !4103
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_long_andnot(i64 noundef %i, ptr noundef %v) #2 align 16 !dbg !4104 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4106, metadata !DIExpression()), !dbg !4108
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4107, metadata !DIExpression()), !dbg !4109
  %0 = load i64, ptr %i.addr, align 8, !dbg !4110
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4111
  call void @raw_atomic64_andnot(i64 noundef %0, ptr noundef %1) #13, !dbg !4112
  ret void, !dbg !4113
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic64_andnot(i64 noundef %i, ptr noundef %v) #2 align 16 !dbg !4114 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4116, metadata !DIExpression()), !dbg !4118
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4117, metadata !DIExpression()), !dbg !4119
  %0 = load i64, ptr %i.addr, align 8, !dbg !4120
  %not = xor i64 %0, -1, !dbg !4121
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4122
  call void @raw_atomic64_and(i64 noundef %not, ptr noundef %1) #13, !dbg !4123
  ret void, !dbg !4124
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic64_and(i64 noundef %i, ptr noundef %v) #2 align 16 !dbg !4125 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4127, metadata !DIExpression()), !dbg !4129
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4128, metadata !DIExpression()), !dbg !4130
  %0 = load i64, ptr %i.addr, align 8, !dbg !4131
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4132
  call void @arch_atomic64_and(i64 noundef %0, ptr noundef %1) #13, !dbg !4133
  ret void, !dbg !4134
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic64_and(i64 noundef %i, ptr noundef %v) #2 align 16 !dbg !4135 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4137, metadata !DIExpression()), !dbg !4139
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4138, metadata !DIExpression()), !dbg !4140
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4141
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !4142
  %1 = load i64, ptr %i.addr, align 8, !dbg !4143
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; andq $1,$0", "=*m,er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %counter, i64 %1, ptr elementtype(i64) %counter) #14, !dbg !4144, !srcloc !4145
  ret void, !dbg !4146
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #2 align 16 !dbg !4147 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !4170, metadata !DIExpression()), !dbg !4171
  %0 = load ptr, ptr %key.addr, align 8, !dbg !4172
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #13, !dbg !4173
  ret i1 %call, !dbg !4174
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpu_online(i32 noundef %cpu) #4 align 16 !dbg !4175 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4179, metadata !DIExpression()), !dbg !4180
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !4181
  %call = call zeroext i1 @cpumask_test_cpu(i32 noundef %0, ptr noundef @__cpu_online_mask) #13, !dbg !4182
  ret i1 %call, !dbg !4183
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_contention_begin(ptr noundef, ptr noundef, i32 noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #2 align 16 !dbg !4184 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !4189, metadata !DIExpression()), !dbg !4192
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !4190, metadata !DIExpression()), !dbg !4193
  %0 = load ptr, ptr %key.addr, align 8, !dbg !4194
  %1 = load i8, ptr %branch.addr, align 1, !dbg !4195, !range !2975, !noundef !458
  %tobool = trunc i8 %1 to i1, !dbg !4195
  %conv = zext i1 %tobool to i32, !dbg !4195
  %or = or i32 2, %conv, !dbg !4196
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #14
          to label %asm.fallthrough [label %l_yes], !dbg !4197, !srcloc !4198

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !4199
  br label %return, !dbg !4199

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !4191), !dbg !4200
  store i1 true, ptr %retval, align 1, !dbg !4201
  br label %return, !dbg !4201

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !4202
  ret i1 %2, !dbg !4202
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_test_cpu(i32 noundef %cpu, ptr noundef %cpumask) #2 align 16 !dbg !4203 {
entry:
  %cpu.addr = alloca i32, align 4
  %cpumask.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4207, metadata !DIExpression()), !dbg !4209
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !4208, metadata !DIExpression()), !dbg !4210
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !4211
  %call = call i32 @cpumask_check(i32 noundef %0) #13, !dbg !4211
  %conv = zext i32 %call to i64, !dbg !4211
  %1 = load ptr, ptr %cpumask.addr, align 8, !dbg !4211
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !4211
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !4211
  %call1 = call zeroext i1 @_test_bit(i64 noundef %conv, ptr noundef %arraydecay) #13, !dbg !4211
  ret i1 %call1, !dbg !4212
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !4213 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4221, metadata !DIExpression()), !dbg !4223
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4222, metadata !DIExpression()), !dbg !4224
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4225
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4226
  %div = udiv i64 %1, 64, !dbg !4226
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !4227
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #13, !dbg !4228
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4229
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4230
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !4231
  ret i1 %call, !dbg !4232
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_check(i32 noundef %cpu) #2 align 16 !dbg !4233 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4237, metadata !DIExpression()), !dbg !4238
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !4239
  call void @cpu_max_bits_warn(i32 noundef %0, i32 noundef 64) #13, !dbg !4240
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !4241
  ret i32 %1, !dbg !4242
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !4243 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4246, metadata !DIExpression()), !dbg !4248
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4247, metadata !DIExpression()), !dbg !4249
  %0 = load i64, ptr %nr.addr, align 8, !dbg !4250
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4251
  br i1 %1, label %cond.true, label %cond.false, !dbg !4251

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4252
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4253
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !4254
  %conv = zext i1 %call to i32, !dbg !4254
  br label %cond.end, !dbg !4251

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !4255
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !4256
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #13, !dbg !4257
  %conv2 = zext i1 %call1 to i32, !dbg !4257
  br label %cond.end, !dbg !4251

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !4251
  %tobool = icmp ne i32 %cond, 0, !dbg !4251
  ret i1 %tobool, !dbg !4258
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !4259 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4263, metadata !DIExpression()), !dbg !4265
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4264, metadata !DIExpression()), !dbg !4266
  %0 = load i64, ptr %nr.addr, align 8, !dbg !4267
  %and = and i64 %0, 63, !dbg !4268
  %shl = shl i64 1, %and, !dbg !4269
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !4270
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4271
  %shr = ashr i64 %2, 6, !dbg !4272
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !4270
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !4270
  %and1 = and i64 %shl, %3, !dbg !4273
  %cmp = icmp ne i64 %and1, 0, !dbg !4274
  ret i1 %cmp, !dbg !4275
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !4276 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4278, metadata !DIExpression()), !dbg !4281
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4279, metadata !DIExpression()), !dbg !4282
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #14, !dbg !4283
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !4280, metadata !DIExpression()), !dbg !4284
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4285
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4286
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #14, !dbg !4287, !srcloc !4288
  %3 = icmp ult i8 %2, 2, !dbg !4287
  call void @llvm.assume(i1 %3), !dbg !4287
  store i8 %2, ptr %oldbit, align 1, !dbg !4287
  %4 = load i8, ptr %oldbit, align 1, !dbg !4289, !range !2975, !noundef !458
  %tobool = trunc i8 %4 to i1, !dbg !4289
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #14, !dbg !4290
  ret i1 %tobool, !dbg !4291
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_max_bits_warn(i32 noundef %cpu, i32 noundef %bits) #2 align 16 !dbg !4292 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4296, metadata !DIExpression()), !dbg !4298
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !4297, metadata !DIExpression()), !dbg !4299
  ret void, !dbg !4300
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @signal_pending(ptr noundef %p) #4 align 16 !dbg !4301 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4305, metadata !DIExpression()), !dbg !4306
  %0 = load ptr, ptr %p.addr, align 8, !dbg !4307
  %call = call i32 @test_tsk_thread_flag(ptr noundef %0, i32 noundef 17) #13, !dbg !4307
  %tobool = icmp ne i32 %call, 0, !dbg !4307
  %lnot = xor i1 %tobool, true, !dbg !4307
  %lnot1 = xor i1 %lnot, true, !dbg !4307
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4307
  %conv = sext i32 %lnot.ext to i64, !dbg !4307
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4307
  %tobool2 = icmp ne i64 %expval, 0, !dbg !4307
  br i1 %tobool2, label %if.then, label %if.end, !dbg !4309

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !4310
  br label %return, !dbg !4310

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8, !dbg !4311
  %call3 = call i32 @task_sigpending(ptr noundef %1) #13, !dbg !4312
  store i32 %call3, ptr %retval, align 4, !dbg !4313
  br label %return, !dbg !4313

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !4314
  ret i32 %2, !dbg !4314
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__fatal_signal_pending(ptr noundef %p) #4 align 16 !dbg !4315 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4317, metadata !DIExpression()), !dbg !4318
  %0 = load ptr, ptr %p.addr, align 8, !dbg !4319
  %pending = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 109, !dbg !4319
  %signal = getelementptr inbounds %struct.sigpending, ptr %pending, i32 0, i32 1, !dbg !4319
  %call = call i32 @sigismember(ptr noundef %signal, i32 noundef 9) #13, !dbg !4319
  %tobool = icmp ne i32 %call, 0, !dbg !4319
  %lnot = xor i1 %tobool, true, !dbg !4319
  %lnot1 = xor i1 %lnot, true, !dbg !4319
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4319
  %conv = sext i32 %lnot.ext to i64, !dbg !4319
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4319
  %conv2 = trunc i64 %expval to i32, !dbg !4319
  ret i32 %conv2, !dbg !4320
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @test_tsk_thread_flag(ptr noundef %tsk, i32 noundef %flag) #4 align 16 !dbg !4321 {
entry:
  %tsk.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !4325, metadata !DIExpression()), !dbg !4327
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !4326, metadata !DIExpression()), !dbg !4328
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !4329
  %thread_info = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 0, !dbg !4329
  %1 = load i32, ptr %flag.addr, align 4, !dbg !4330
  %call = call i32 @test_ti_thread_flag(ptr noundef %thread_info, i32 noundef %1) #13, !dbg !4331
  ret i32 %call, !dbg !4332
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @task_sigpending(ptr noundef %p) #4 align 16 !dbg !4333 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4335, metadata !DIExpression()), !dbg !4336
  %0 = load ptr, ptr %p.addr, align 8, !dbg !4337
  %call = call i32 @test_tsk_thread_flag(ptr noundef %0, i32 noundef 2) #13, !dbg !4337
  %tobool = icmp ne i32 %call, 0, !dbg !4337
  %lnot = xor i1 %tobool, true, !dbg !4337
  %lnot1 = xor i1 %lnot, true, !dbg !4337
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4337
  %conv = sext i32 %lnot.ext to i64, !dbg !4337
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4337
  %conv2 = trunc i64 %expval to i32, !dbg !4337
  ret i32 %conv2, !dbg !4338
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @test_ti_thread_flag(ptr noundef %ti, i32 noundef %flag) #4 align 16 !dbg !4339 {
entry:
  %ti.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %ti, ptr %ti.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ti.addr, metadata !4344, metadata !DIExpression()), !dbg !4346
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !4345, metadata !DIExpression()), !dbg !4347
  %0 = load i32, ptr %flag.addr, align 4, !dbg !4348
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !4348
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !4348

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ti.addr, align 8, !dbg !4348
  %flags = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 0, !dbg !4348
  %3 = ptrtoint ptr %flags to i64, !dbg !4348
  %cmp = icmp ne i64 %3, 0, !dbg !4348
  %conv = zext i1 %cmp to i32, !dbg !4348
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !4348
  br i1 %4, label %land.lhs.true1, label %cond.false, !dbg !4348

land.lhs.true1:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %ti.addr, align 8, !dbg !4348
  %flags2 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 0, !dbg !4348
  %6 = ptrtoint ptr %flags2 to i64, !dbg !4348
  %cmp3 = icmp ne i64 %6, 0, !dbg !4348
  br i1 %cmp3, label %land.lhs.true5, label %cond.false, !dbg !4348

land.lhs.true5:                                   ; preds = %land.lhs.true1
  %7 = load ptr, ptr %ti.addr, align 8, !dbg !4348
  %flags6 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 0, !dbg !4348
  %8 = load i64, ptr %flags6, align 8, !dbg !4348
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !4348
  br i1 %9, label %cond.true, label %cond.false, !dbg !4348

cond.true:                                        ; preds = %land.lhs.true5
  %10 = load i32, ptr %flag.addr, align 4, !dbg !4348
  %conv7 = sext i32 %10 to i64, !dbg !4348
  %11 = load ptr, ptr %ti.addr, align 8, !dbg !4348
  %flags8 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 0, !dbg !4348
  %call = call zeroext i1 @const_test_bit(i64 noundef %conv7, ptr noundef %flags8) #13, !dbg !4348
  %conv9 = zext i1 %call to i32, !dbg !4348
  br label %cond.end, !dbg !4348

cond.false:                                       ; preds = %land.lhs.true5, %land.lhs.true1, %land.lhs.true, %entry
  %12 = load i32, ptr %flag.addr, align 4, !dbg !4348
  %conv10 = sext i32 %12 to i64, !dbg !4348
  %13 = load ptr, ptr %ti.addr, align 8, !dbg !4348
  %flags11 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 0, !dbg !4348
  %call12 = call zeroext i1 @_test_bit(i64 noundef %conv10, ptr noundef %flags11) #13, !dbg !4348
  %conv13 = zext i1 %call12 to i32, !dbg !4348
  br label %cond.end, !dbg !4348

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv9, %cond.true ], [ %conv13, %cond.false ], !dbg !4348
  ret i32 %cond, !dbg !4349
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !4350 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4353, metadata !DIExpression()), !dbg !4358
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4354, metadata !DIExpression()), !dbg !4359
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #14, !dbg !4360
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4355, metadata !DIExpression()), !dbg !4361
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4362
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4363
  %div = udiv i64 %1, 64, !dbg !4363
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !4364
  store ptr %add.ptr, ptr %p, align 8, !dbg !4361
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #14, !dbg !4365
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !4356, metadata !DIExpression()), !dbg !4366
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4367
  %rem = urem i64 %2, 64, !dbg !4367
  %shl = shl i64 1, %rem, !dbg !4367
  store i64 %shl, ptr %mask, align 8, !dbg !4366
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #14, !dbg !4368
  call void @llvm.dbg.declare(metadata ptr %val, metadata !4357, metadata !DIExpression()), !dbg !4369
  %3 = load ptr, ptr %p, align 8, !dbg !4370
  %4 = load i64, ptr %3, align 8, !dbg !4371
  store i64 %4, ptr %val, align 8, !dbg !4369
  %5 = load i64, ptr %val, align 8, !dbg !4372
  %6 = load i64, ptr %mask, align 8, !dbg !4373
  %and = and i64 %5, %6, !dbg !4374
  %tobool = icmp ne i64 %and, 0, !dbg !4375
  %lnot = xor i1 %tobool, true, !dbg !4375
  %lnot1 = xor i1 %lnot, true, !dbg !4376
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #14, !dbg !4377
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #14, !dbg !4377
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #14, !dbg !4377
  ret i1 %lnot1, !dbg !4378
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sigismember(ptr noundef %set, i32 noundef %_sig) #4 align 16 !dbg !4379 {
entry:
  %set.addr = alloca ptr, align 8
  %_sig.addr = alloca i32, align 4
  %sig = alloca i64, align 8
  store ptr %set, ptr %set.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !4385, metadata !DIExpression()), !dbg !4388
  store i32 %_sig, ptr %_sig.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %_sig.addr, metadata !4386, metadata !DIExpression()), !dbg !4389
  call void @llvm.lifetime.start.p0(i64 8, ptr %sig) #14, !dbg !4390
  call void @llvm.dbg.declare(metadata ptr %sig, metadata !4387, metadata !DIExpression()), !dbg !4391
  %0 = load i32, ptr %_sig.addr, align 4, !dbg !4392
  %sub = sub i32 %0, 1, !dbg !4393
  %conv = sext i32 %sub to i64, !dbg !4392
  store i64 %conv, ptr %sig, align 8, !dbg !4391
  %1 = load ptr, ptr %set.addr, align 8, !dbg !4394
  %sig1 = getelementptr inbounds %struct.sigset_t, ptr %1, i32 0, i32 0, !dbg !4396
  %arrayidx = getelementptr [1 x i64], ptr %sig1, i64 0, i64 0, !dbg !4394
  %2 = load i64, ptr %arrayidx, align 8, !dbg !4394
  %3 = load i64, ptr %sig, align 8, !dbg !4397
  %shr = lshr i64 %2, %3, !dbg !4398
  %and = and i64 1, %shr, !dbg !4399
  %conv2 = trunc i64 %and to i32, !dbg !4400
  call void @llvm.lifetime.end.p0(i64 8, ptr %sig) #14, !dbg !4401
  ret i32 %conv2, !dbg !4402
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_contention_end(ptr noundef, ptr noundef, i32 noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @wake_q_init(ptr noundef %head) #4 align 16 !dbg !4403 {
entry:
  %head.addr = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !4405, metadata !DIExpression()), !dbg !4406
  %0 = load ptr, ptr %head.addr, align 8, !dbg !4407
  %first = getelementptr inbounds %struct.wake_q_head, ptr %0, i32 0, i32 0, !dbg !4408
  store ptr inttoptr (i64 1 to ptr), ptr %first, align 8, !dbg !4409
  %1 = load ptr, ptr %head.addr, align 8, !dbg !4410
  %first1 = getelementptr inbounds %struct.wake_q_head, ptr %1, i32 0, i32 0, !dbg !4411
  %2 = load ptr, ptr %head.addr, align 8, !dbg !4412
  %lastp = getelementptr inbounds %struct.wake_q_head, ptr %2, i32 0, i32 1, !dbg !4413
  store ptr %first1, ptr %lastp, align 8, !dbg !4414
  ret void, !dbg !4415
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @rwsem_del_waiter(ptr noundef %sem, ptr noundef %waiter) #4 align 16 !dbg !4416 {
entry:
  %retval = alloca i1, align 1
  %sem.addr = alloca ptr, align 8
  %waiter.addr = alloca ptr, align 8
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !4420, metadata !DIExpression()), !dbg !4422
  store ptr %waiter, ptr %waiter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %waiter.addr, metadata !4421, metadata !DIExpression()), !dbg !4423
  br label %do.body, !dbg !4424

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !4425
  %wait_lock = getelementptr inbounds %struct.rw_semaphore, ptr %0, i32 0, i32 3, !dbg !4425
  br label %do.end, !dbg !4425

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr %waiter.addr, align 8, !dbg !4427
  %list = getelementptr inbounds %struct.rwsem_waiter, ptr %1, i32 0, i32 0, !dbg !4428
  call void @list_del(ptr noundef %list) #13, !dbg !4429
  %2 = load ptr, ptr %sem.addr, align 8, !dbg !4430
  %wait_list = getelementptr inbounds %struct.rw_semaphore, ptr %2, i32 0, i32 4, !dbg !4430
  %call = call i32 @list_empty(ptr noundef %wait_list) #13, !dbg !4430
  %tobool = icmp ne i32 %call, 0, !dbg !4430
  %lnot = xor i1 %tobool, true, !dbg !4430
  %lnot1 = xor i1 %lnot, true, !dbg !4430
  %lnot2 = xor i1 %lnot1, true, !dbg !4430
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4430
  %conv = sext i32 %lnot.ext to i64, !dbg !4430
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !4430
  %tobool3 = icmp ne i64 %expval, 0, !dbg !4430
  br i1 %tobool3, label %if.then, label %if.end, !dbg !4432

if.then:                                          ; preds = %do.end
  store i1 true, ptr %retval, align 1, !dbg !4433
  br label %return, !dbg !4433

if.end:                                           ; preds = %do.end
  %3 = load ptr, ptr %sem.addr, align 8, !dbg !4434
  %count = getelementptr inbounds %struct.rw_semaphore, ptr %3, i32 0, i32 0, !dbg !4435
  call void @atomic_long_andnot(i64 noundef 6, ptr noundef %count) #13, !dbg !4436
  store i1 false, ptr %retval, align 1, !dbg !4437
  br label %return, !dbg !4437

return:                                           ; preds = %if.end, %if.then
  %4 = load i1, ptr %retval, align 1, !dbg !4438
  ret i1 %4, !dbg !4438
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #4 align 16 !dbg !4439 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4441, metadata !DIExpression()), !dbg !4442
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !4443
  call void @__list_del_entry(ptr noundef %0) #13, !dbg !4444
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !4445
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !4446
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !4447
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !4448
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !4449
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !4450
  ret void, !dbg !4451
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_long_try_cmpxchg_acquire(ptr noundef %v, ptr noundef %old, i64 noundef %new) #2 align 16 !dbg !4452 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4454, metadata !DIExpression()), !dbg !4457
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !4455, metadata !DIExpression()), !dbg !4458
  store i64 %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4456, metadata !DIExpression()), !dbg !4459
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4460
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #13, !dbg !4461
  %1 = load ptr, ptr %old.addr, align 8, !dbg !4462
  call void @instrument_atomic_read_write(ptr noundef %1, i64 noundef 8) #13, !dbg !4463
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4464
  %3 = load ptr, ptr %old.addr, align 8, !dbg !4465
  %4 = load i64, ptr %new.addr, align 8, !dbg !4466
  %call = call zeroext i1 @raw_atomic_long_try_cmpxchg_acquire(ptr noundef %2, ptr noundef %3, i64 noundef %4) #13, !dbg !4467
  ret i1 %call, !dbg !4468
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_long_try_cmpxchg_acquire(ptr noundef %v, ptr noundef %old, i64 noundef %new) #2 align 16 !dbg !4469 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4471, metadata !DIExpression()), !dbg !4474
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !4472, metadata !DIExpression()), !dbg !4475
  store i64 %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4473, metadata !DIExpression()), !dbg !4476
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4477
  %1 = load ptr, ptr %old.addr, align 8, !dbg !4478
  %2 = load i64, ptr %new.addr, align 8, !dbg !4479
  %call = call zeroext i1 @raw_atomic64_try_cmpxchg_acquire(ptr noundef %0, ptr noundef %1, i64 noundef %2) #13, !dbg !4480
  ret i1 %call, !dbg !4481
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic64_try_cmpxchg_acquire(ptr noundef %v, ptr noundef %old, i64 noundef %new) #2 align 16 !dbg !4482 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4484, metadata !DIExpression()), !dbg !4487
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !4485, metadata !DIExpression()), !dbg !4488
  store i64 %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4486, metadata !DIExpression()), !dbg !4489
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4490
  %1 = load ptr, ptr %old.addr, align 8, !dbg !4491
  %2 = load i64, ptr %new.addr, align 8, !dbg !4492
  %call = call zeroext i1 @arch_atomic64_try_cmpxchg(ptr noundef %0, ptr noundef %1, i64 noundef %2) #13, !dbg !4493
  ret i1 %call, !dbg !4494
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__down_write_common(ptr noundef %sem, i32 noundef %state) #2 align 16 !dbg !2045 {
entry:
  %sem.addr = alloca ptr, align 8
  %state.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !2047, metadata !DIExpression()), !dbg !4495
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !2048, metadata !DIExpression()), !dbg !4496
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !4497
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2049, metadata !DIExpression()), !dbg !4498
  store i32 0, ptr %ret, align 4, !dbg !4498
  br label %do.body, !dbg !4499

do.body:                                          ; preds = %entry
  call void @__preempt_count_add(i32 noundef 1) #13, !dbg !4500
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !4500, !srcloc !4502
  br label %do.cond, !dbg !4500

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4500

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !4503
  %call = call zeroext i1 @rwsem_write_trylock(ptr noundef %0) #13, !dbg !4503
  %lnot = xor i1 %call, true, !dbg !4503
  %lnot1 = xor i1 %lnot, true, !dbg !4503
  %lnot2 = xor i1 %lnot1, true, !dbg !4503
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4503
  %conv = sext i32 %lnot.ext to i64, !dbg !4503
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4503
  %tobool = icmp ne i64 %expval, 0, !dbg !4503
  br i1 %tobool, label %if.then, label %if.end6, !dbg !4505

if.then:                                          ; preds = %do.end
  %1 = load ptr, ptr %sem.addr, align 8, !dbg !4506
  %2 = load i32, ptr %state.addr, align 4, !dbg !4509
  %call3 = call ptr @rwsem_down_write_slowpath(ptr noundef %1, i32 noundef %2) #13, !dbg !4510
  %call4 = call zeroext i1 @IS_ERR(ptr noundef %call3) #13, !dbg !4511
  br i1 %call4, label %if.then5, label %if.end, !dbg !4512

if.then5:                                         ; preds = %if.then
  store i32 -4, ptr %ret, align 4, !dbg !4513
  br label %if.end, !dbg !4514

if.end:                                           ; preds = %if.then5, %if.then
  br label %if.end6, !dbg !4515

if.end6:                                          ; preds = %if.end, %do.end
  br label %do.body7, !dbg !4516

do.body7:                                         ; preds = %if.end6
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !4517, !srcloc !4519
  %call8 = call zeroext i1 @__preempt_count_dec_and_test() #13, !dbg !4520
  %lnot9 = xor i1 %call8, true, !dbg !4520
  %lnot11 = xor i1 %lnot9, true, !dbg !4520
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !4520
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !4520
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !4520
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !4520
  br i1 %tobool15, label %if.then16, label %if.end20, !dbg !4517

if.then16:                                        ; preds = %do.body7
  br label %do.body17, !dbg !4520

do.body17:                                        ; preds = %if.then16
  %3 = call i64 @llvm.read_register.i64(metadata !2076), !dbg !4522
  %4 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %3) #14, !dbg !4522, !srcloc !4524
  call void @llvm.write_register.i64(metadata !2076, i64 %4), !dbg !4522
  br label %do.cond18, !dbg !4522

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !4522

do.end19:                                         ; preds = %do.cond18
  br label %if.end20, !dbg !4522

if.end20:                                         ; preds = %do.end19, %do.body7
  br label %do.cond21, !dbg !4517

do.cond21:                                        ; preds = %if.end20
  br label %do.end22, !dbg !4517

do.end22:                                         ; preds = %do.cond21
  %5 = load i32, ptr %ret, align 4, !dbg !4525
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !4526
  ret i32 %5, !dbg !4527
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @rwsem_write_trylock(ptr noundef %sem) #4 align 16 !dbg !4528 {
entry:
  %retval = alloca i1, align 1
  %sem.addr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !4532, metadata !DIExpression()), !dbg !4534
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #14, !dbg !4535
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !4533, metadata !DIExpression()), !dbg !4536
  store i64 0, ptr %tmp, align 8, !dbg !4536
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !4537
  %count = getelementptr inbounds %struct.rw_semaphore, ptr %0, i32 0, i32 0, !dbg !4539
  %call = call zeroext i1 @atomic_long_try_cmpxchg_acquire(ptr noundef %count, ptr noundef %tmp, i64 noundef 1) #13, !dbg !4540
  br i1 %call, label %if.then, label %if.end, !dbg !4541

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %sem.addr, align 8, !dbg !4542
  call void @rwsem_set_owner(ptr noundef %1) #13, !dbg !4544
  store i1 true, ptr %retval, align 1, !dbg !4545
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4545

if.end:                                           ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !4546
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4546

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #14, !dbg !4547
  %2 = load i1, ptr %retval, align 1, !dbg !4547
  ret i1 %2, !dbg !4547
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @rwsem_down_write_slowpath(ptr noundef %sem, i32 noundef %state) #0 section ".sched.text" align 16 !dbg !4548 {
entry:
  %retval = alloca ptr, align 8
  %sem.addr = alloca ptr, align 8
  %state.addr = alloca i32, align 4
  %waiter = alloca %struct.rwsem_waiter, align 8
  %wake_q = alloca %struct.wake_q_head, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ai_ptr = alloca ptr, align 8
  %tmp23 = alloca i32, align 4
  %__ret = alloca i32, align 4
  %tmp24 = alloca i32, align 4
  %owner_state = alloca i32, align 4
  %__ai_ptr56 = alloca ptr, align 8
  %tmp62 = alloca i32, align 4
  %__ret63 = alloca i32, align 4
  %tmp64 = alloca i32, align 4
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !4552, metadata !DIExpression()), !dbg !4581
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !4553, metadata !DIExpression()), !dbg !4582
  call void @llvm.lifetime.start.p0(i64 48, ptr %waiter) #14, !dbg !4583
  call void @llvm.dbg.declare(metadata ptr %waiter, metadata !4554, metadata !DIExpression()), !dbg !4584
  call void @llvm.lifetime.start.p0(i64 16, ptr %wake_q) #14, !dbg !4585
  call void @llvm.dbg.declare(metadata ptr %wake_q, metadata !4555, metadata !DIExpression()), !dbg !4585
  %first = getelementptr inbounds %struct.wake_q_head, ptr %wake_q, i32 0, i32 0, !dbg !4585
  store ptr inttoptr (i64 1 to ptr), ptr %first, align 8, !dbg !4585
  %lastp = getelementptr inbounds %struct.wake_q_head, ptr %wake_q, i32 0, i32 1, !dbg !4585
  %first1 = getelementptr inbounds %struct.wake_q_head, ptr %wake_q, i32 0, i32 0, !dbg !4585
  store ptr %first1, ptr %lastp, align 8, !dbg !4585
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !4586
  %call = call zeroext i1 @rwsem_can_spin_on_owner(ptr noundef %0) #13, !dbg !4588
  br i1 %call, label %land.lhs.true, label %if.end, !dbg !4589

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %sem.addr, align 8, !dbg !4590
  %call2 = call zeroext i1 @rwsem_optimistic_spin(ptr noundef %1) #13, !dbg !4591
  br i1 %call2, label %if.then, label %if.end, !dbg !4592

if.then:                                          ; preds = %land.lhs.true
  %2 = load ptr, ptr %sem.addr, align 8, !dbg !4593
  store ptr %2, ptr %retval, align 8, !dbg !4595
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup109, !dbg !4595

if.end:                                           ; preds = %land.lhs.true, %entry
  %call3 = call ptr @get_current() #13, !dbg !4596
  %task = getelementptr inbounds %struct.rwsem_waiter, ptr %waiter, i32 0, i32 1, !dbg !4597
  store ptr %call3, ptr %task, align 8, !dbg !4598
  %type = getelementptr inbounds %struct.rwsem_waiter, ptr %waiter, i32 0, i32 2, !dbg !4599
  store i32 0, ptr %type, align 8, !dbg !4600
  %3 = load volatile i64, ptr @jiffies, align 64, !dbg !4601
  %add = add i64 %3, 4, !dbg !4602
  %timeout = getelementptr inbounds %struct.rwsem_waiter, ptr %waiter, i32 0, i32 3, !dbg !4603
  store i64 %add, ptr %timeout, align 8, !dbg !4604
  %handoff_set = getelementptr inbounds %struct.rwsem_waiter, ptr %waiter, i32 0, i32 4, !dbg !4605
  store i8 0, ptr %handoff_set, align 8, !dbg !4606
  %4 = load ptr, ptr %sem.addr, align 8, !dbg !4607
  %wait_lock = getelementptr inbounds %struct.rw_semaphore, ptr %4, i32 0, i32 3, !dbg !4607
  call void @_raw_spin_lock_irq(ptr noundef %wait_lock) #13, !dbg !4607
  %5 = load ptr, ptr %sem.addr, align 8, !dbg !4608
  call void @rwsem_add_waiter(ptr noundef %5, ptr noundef %waiter) #13, !dbg !4609
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !4610
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4556, metadata !DIExpression()), !dbg !4610
  %6 = load ptr, ptr %sem.addr, align 8, !dbg !4610
  %wait_list = getelementptr inbounds %struct.rw_semaphore, ptr %6, i32 0, i32 4, !dbg !4610
  %next = getelementptr inbounds %struct.list_head, ptr %wait_list, i32 0, i32 0, !dbg !4610
  %7 = load ptr, ptr %next, align 8, !dbg !4610
  store ptr %7, ptr %__mptr, align 8, !dbg !4610
  %8 = load ptr, ptr %__mptr, align 8, !dbg !4610
  %add.ptr = getelementptr i8, ptr %8, i64 0, !dbg !4610
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4610
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !4611
  %9 = load ptr, ptr %tmp, align 8, !dbg !4610
  %cmp = icmp ne ptr %9, %waiter, !dbg !4612
  br i1 %cmp, label %if.then4, label %if.else, !dbg !4613

if.then4:                                         ; preds = %if.end
  %10 = load ptr, ptr %sem.addr, align 8, !dbg !4614
  %11 = load ptr, ptr %sem.addr, align 8, !dbg !4616
  %count = getelementptr inbounds %struct.rw_semaphore, ptr %11, i32 0, i32 0, !dbg !4617
  %call5 = call i64 @atomic_long_read(ptr noundef %count) #13, !dbg !4618
  call void @rwsem_cond_wake_waiter(ptr noundef %10, i64 noundef %call5, ptr noundef %wake_q) #13, !dbg !4619
  %call6 = call zeroext i1 @wake_q_empty(ptr noundef %wake_q) #13, !dbg !4620
  br i1 %call6, label %if.end10, label %if.then7, !dbg !4622

if.then7:                                         ; preds = %if.then4
  %12 = load ptr, ptr %sem.addr, align 8, !dbg !4623
  %wait_lock8 = getelementptr inbounds %struct.rw_semaphore, ptr %12, i32 0, i32 3, !dbg !4623
  call void @_raw_spin_unlock_irq(ptr noundef %wait_lock8) #13, !dbg !4623
  call void @wake_up_q(ptr noundef %wake_q) #13, !dbg !4625
  %13 = load ptr, ptr %sem.addr, align 8, !dbg !4626
  %wait_lock9 = getelementptr inbounds %struct.rw_semaphore, ptr %13, i32 0, i32 3, !dbg !4626
  call void @_raw_spin_lock_irq(ptr noundef %wait_lock9) #13, !dbg !4626
  br label %if.end10, !dbg !4627

if.end10:                                         ; preds = %if.then7, %if.then4
  br label %if.end12, !dbg !4628

if.else:                                          ; preds = %if.end
  %14 = load ptr, ptr %sem.addr, align 8, !dbg !4629
  %count11 = getelementptr inbounds %struct.rw_semaphore, ptr %14, i32 0, i32 0, !dbg !4631
  call void @atomic_long_or(i64 noundef 2, ptr noundef %count11) #13, !dbg !4632
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.end10
  br label %do.body, !dbg !4633

do.body:                                          ; preds = %if.end12
  br label %do.body13, !dbg !4634

do.body13:                                        ; preds = %do.body
  br label %do.cond, !dbg !4635

do.cond:                                          ; preds = %do.body13
  br label %do.end, !dbg !4635

do.end:                                           ; preds = %do.cond
  br label %do.body14, !dbg !4634

do.body14:                                        ; preds = %do.end
  br label %do.body15, !dbg !4637

do.body15:                                        ; preds = %do.body14
  br label %do.cond16, !dbg !4638

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !4638

do.end17:                                         ; preds = %do.cond16
  br label %do.body18, !dbg !4637

do.body18:                                        ; preds = %do.end17
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #14, !dbg !4640
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !4559, metadata !DIExpression()), !dbg !4640
  %call19 = call ptr @get_current() #13, !dbg !4640
  %__state = getelementptr inbounds %struct.task_struct, ptr %call19, i32 0, i32 1, !dbg !4640
  store ptr %__state, ptr %__ai_ptr, align 8, !dbg !4640
  br label %do.body20, !dbg !4640

do.body20:                                        ; preds = %do.body18
  br label %do.cond21, !dbg !4641

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !4641

do.end22:                                         ; preds = %do.cond21
  %15 = load ptr, ptr %__ai_ptr, align 8, !dbg !4640
  call void @instrument_atomic_read_write(ptr noundef %15, i64 noundef 4) #13, !dbg !4640
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #14, !dbg !4643
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !4564, metadata !DIExpression()), !dbg !4643
  %16 = load i32, ptr %state.addr, align 4, !dbg !4643
  store i32 %16, ptr %__ret, align 4, !dbg !4643
  %17 = load i32, ptr %__ret, align 4, !dbg !4643
  %18 = load ptr, ptr %__ai_ptr, align 8, !dbg !4643
  %19 = call i32 asm sideeffect "xchgl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %18, i32 %17, ptr elementtype(i32) %18) #14, !dbg !4643, !srcloc !4644
  store i32 %19, ptr %__ret, align 4, !dbg !4643
  %20 = load i32, ptr %__ret, align 4, !dbg !4643
  store i32 %20, ptr %tmp24, align 4, !dbg !4643
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #14, !dbg !4640
  %21 = load i32, ptr %tmp24, align 4, !dbg !4643
  store i32 %21, ptr %tmp23, align 4, !dbg !4640
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #14, !dbg !4645
  %22 = load i32, ptr %tmp23, align 4, !dbg !4640
  br label %do.cond25, !dbg !4645

do.cond25:                                        ; preds = %do.end22
  br label %do.end26, !dbg !4645

do.end26:                                         ; preds = %do.cond25
  br label %do.cond27, !dbg !4637

do.cond27:                                        ; preds = %do.end26
  br label %do.end28, !dbg !4637

do.end28:                                         ; preds = %do.cond27
  br label %do.cond29, !dbg !4634

do.cond29:                                        ; preds = %do.end28
  br label %do.end30, !dbg !4634

do.end30:                                         ; preds = %do.cond29
  %23 = load ptr, ptr %sem.addr, align 8, !dbg !4646
  call void @trace_contention_begin(ptr noundef %23, i32 noundef 4) #13, !dbg !4647
  br label %for.cond, !dbg !4648

for.cond:                                         ; preds = %trylock_again, %do.end30
  %24 = load ptr, ptr %sem.addr, align 8, !dbg !4649
  %call31 = call zeroext i1 @rwsem_try_write_lock(ptr noundef %24, ptr noundef %waiter) #13, !dbg !4651
  br i1 %call31, label %if.then32, label %if.end33, !dbg !4652

if.then32:                                        ; preds = %for.cond
  br label %for.end, !dbg !4653

if.end33:                                         ; preds = %for.cond
  %25 = load ptr, ptr %sem.addr, align 8, !dbg !4655
  %wait_lock34 = getelementptr inbounds %struct.rw_semaphore, ptr %25, i32 0, i32 3, !dbg !4655
  call void @_raw_spin_unlock_irq(ptr noundef %wait_lock34) #13, !dbg !4655
  %26 = load i32, ptr %state.addr, align 4, !dbg !4656
  %call35 = call ptr @get_current() #13, !dbg !4658
  %call36 = call i32 @signal_pending_state(i32 noundef %26, ptr noundef %call35) #13, !dbg !4659
  %tobool = icmp ne i32 %call36, 0, !dbg !4659
  br i1 %tobool, label %if.then37, label %if.end38, !dbg !4660

if.then37:                                        ; preds = %if.end33
  br label %out_nolock, !dbg !4661

if.end38:                                         ; preds = %if.end33
  %handoff_set39 = getelementptr inbounds %struct.rwsem_waiter, ptr %waiter, i32 0, i32 4, !dbg !4662
  %27 = load i8, ptr %handoff_set39, align 8, !dbg !4662, !range !2975, !noundef !458
  %tobool40 = trunc i8 %27 to i1, !dbg !4662
  br i1 %tobool40, label %if.then41, label %if.end46, !dbg !4663

if.then41:                                        ; preds = %if.end38
  call void @llvm.lifetime.start.p0(i64 4, ptr %owner_state) #14, !dbg !4664
  call void @llvm.dbg.declare(metadata ptr %owner_state, metadata !4566, metadata !DIExpression()), !dbg !4665
  %28 = load ptr, ptr %sem.addr, align 8, !dbg !4666
  %call42 = call i32 @rwsem_spin_on_owner(ptr noundef %28) #13, !dbg !4667
  store i32 %call42, ptr %owner_state, align 4, !dbg !4668
  %29 = load i32, ptr %owner_state, align 4, !dbg !4669
  %cmp43 = icmp eq i32 %29, 1, !dbg !4671
  br i1 %cmp43, label %if.then44, label %if.end45, !dbg !4672

if.then44:                                        ; preds = %if.then41
  store i32 17, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4673

if.end45:                                         ; preds = %if.then41
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4674
  br label %cleanup, !dbg !4674

cleanup:                                          ; preds = %if.then44, %if.end45
  call void @llvm.lifetime.end.p0(i64 4, ptr %owner_state) #14, !dbg !4674
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup109 [
    i32 0, label %cleanup.cont
    i32 17, label %trylock_again
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end46, !dbg !4675

if.end46:                                         ; preds = %cleanup.cont, %if.end38
  call void @schedule_preempt_disabled() #13, !dbg !4676
  br label %do.body47, !dbg !4677

do.body47:                                        ; preds = %if.end46
  br label %do.body48, !dbg !4678

do.body48:                                        ; preds = %do.body47
  br label %do.cond49, !dbg !4679

do.cond49:                                        ; preds = %do.body48
  br label %do.end50, !dbg !4679

do.end50:                                         ; preds = %do.cond49
  br label %do.body51, !dbg !4678

do.body51:                                        ; preds = %do.end50
  br label %do.body52, !dbg !4681

do.body52:                                        ; preds = %do.body51
  br label %do.cond53, !dbg !4682

do.cond53:                                        ; preds = %do.body52
  br label %do.end54, !dbg !4682

do.end54:                                         ; preds = %do.cond53
  br label %do.body55, !dbg !4681

do.body55:                                        ; preds = %do.end54
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr56) #14, !dbg !4684
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr56, metadata !4572, metadata !DIExpression()), !dbg !4684
  %call57 = call ptr @get_current() #13, !dbg !4684
  %__state58 = getelementptr inbounds %struct.task_struct, ptr %call57, i32 0, i32 1, !dbg !4684
  store ptr %__state58, ptr %__ai_ptr56, align 8, !dbg !4684
  br label %do.body59, !dbg !4684

do.body59:                                        ; preds = %do.body55
  br label %do.cond60, !dbg !4685

do.cond60:                                        ; preds = %do.body59
  br label %do.end61, !dbg !4685

do.end61:                                         ; preds = %do.cond60
  %30 = load ptr, ptr %__ai_ptr56, align 8, !dbg !4684
  call void @instrument_atomic_read_write(ptr noundef %30, i64 noundef 4) #13, !dbg !4684
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret63) #14, !dbg !4687
  call void @llvm.dbg.declare(metadata ptr %__ret63, metadata !4577, metadata !DIExpression()), !dbg !4687
  %31 = load i32, ptr %state.addr, align 4, !dbg !4687
  store i32 %31, ptr %__ret63, align 4, !dbg !4687
  %32 = load i32, ptr %__ret63, align 4, !dbg !4687
  %33 = load ptr, ptr %__ai_ptr56, align 8, !dbg !4687
  %34 = call i32 asm sideeffect "xchgl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %33, i32 %32, ptr elementtype(i32) %33) #14, !dbg !4687, !srcloc !4688
  store i32 %34, ptr %__ret63, align 4, !dbg !4687
  %35 = load i32, ptr %__ret63, align 4, !dbg !4687
  store i32 %35, ptr %tmp64, align 4, !dbg !4687
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret63) #14, !dbg !4684
  %36 = load i32, ptr %tmp64, align 4, !dbg !4687
  store i32 %36, ptr %tmp62, align 4, !dbg !4684
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr56) #14, !dbg !4689
  %37 = load i32, ptr %tmp62, align 4, !dbg !4684
  br label %do.cond65, !dbg !4689

do.cond65:                                        ; preds = %do.end61
  br label %do.end66, !dbg !4689

do.end66:                                         ; preds = %do.cond65
  br label %do.cond67, !dbg !4681

do.cond67:                                        ; preds = %do.end66
  br label %do.end68, !dbg !4681

do.end68:                                         ; preds = %do.cond67
  br label %do.cond69, !dbg !4678

do.cond69:                                        ; preds = %do.end68
  br label %do.end70, !dbg !4678

do.end70:                                         ; preds = %do.cond69
  br label %trylock_again, !dbg !4678

trylock_again:                                    ; preds = %do.end70, %cleanup
  call void @llvm.dbg.label(metadata !4579), !dbg !4690
  %38 = load ptr, ptr %sem.addr, align 8, !dbg !4691
  %wait_lock71 = getelementptr inbounds %struct.rw_semaphore, ptr %38, i32 0, i32 3, !dbg !4691
  call void @_raw_spin_lock_irq(ptr noundef %wait_lock71) #13, !dbg !4691
  br label %for.cond, !dbg !4692, !llvm.loop !4693

for.end:                                          ; preds = %if.then32
  br label %do.body72, !dbg !4696

do.body72:                                        ; preds = %for.end
  br label %do.body73, !dbg !4697

do.body73:                                        ; preds = %do.body72
  br label %do.cond74, !dbg !4699

do.cond74:                                        ; preds = %do.body73
  br label %do.end75, !dbg !4699

do.end75:                                         ; preds = %do.cond74
  br label %do.body76, !dbg !4697

do.body76:                                        ; preds = %do.end75
  br label %do.body77, !dbg !4701

do.body77:                                        ; preds = %do.body76
  br label %do.cond78, !dbg !4703

do.cond78:                                        ; preds = %do.body77
  br label %do.end79, !dbg !4703

do.end79:                                         ; preds = %do.cond78
  br label %do.body80, !dbg !4701

do.body80:                                        ; preds = %do.end79
  %call81 = call ptr @get_current() #13, !dbg !4705
  %__state82 = getelementptr inbounds %struct.task_struct, ptr %call81, i32 0, i32 1, !dbg !4705
  store volatile i32 0, ptr %__state82, align 8, !dbg !4705
  br label %do.cond83, !dbg !4705

do.cond83:                                        ; preds = %do.body80
  br label %do.end84, !dbg !4705

do.end84:                                         ; preds = %do.cond83
  br label %do.cond85, !dbg !4701

do.cond85:                                        ; preds = %do.end84
  br label %do.end86, !dbg !4701

do.end86:                                         ; preds = %do.cond85
  br label %do.cond87, !dbg !4697

do.cond87:                                        ; preds = %do.end86
  br label %do.end88, !dbg !4697

do.end88:                                         ; preds = %do.cond87
  %39 = load ptr, ptr %sem.addr, align 8, !dbg !4707
  %wait_lock89 = getelementptr inbounds %struct.rw_semaphore, ptr %39, i32 0, i32 3, !dbg !4707
  call void @_raw_spin_unlock_irq(ptr noundef %wait_lock89) #13, !dbg !4707
  %40 = load ptr, ptr %sem.addr, align 8, !dbg !4708
  call void @trace_contention_end(ptr noundef %40, i32 noundef 0) #13, !dbg !4709
  %41 = load ptr, ptr %sem.addr, align 8, !dbg !4710
  store ptr %41, ptr %retval, align 8, !dbg !4711
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup109, !dbg !4711

out_nolock:                                       ; preds = %if.then37
  call void @llvm.dbg.label(metadata !4580), !dbg !4712
  br label %do.body90, !dbg !4713

do.body90:                                        ; preds = %out_nolock
  br label %do.body91, !dbg !4714

do.body91:                                        ; preds = %do.body90
  br label %do.cond92, !dbg !4716

do.cond92:                                        ; preds = %do.body91
  br label %do.end93, !dbg !4716

do.end93:                                         ; preds = %do.cond92
  br label %do.body94, !dbg !4714

do.body94:                                        ; preds = %do.end93
  br label %do.body95, !dbg !4718

do.body95:                                        ; preds = %do.body94
  br label %do.cond96, !dbg !4720

do.cond96:                                        ; preds = %do.body95
  br label %do.end97, !dbg !4720

do.end97:                                         ; preds = %do.cond96
  br label %do.body98, !dbg !4718

do.body98:                                        ; preds = %do.end97
  %call99 = call ptr @get_current() #13, !dbg !4722
  %__state100 = getelementptr inbounds %struct.task_struct, ptr %call99, i32 0, i32 1, !dbg !4722
  store volatile i32 0, ptr %__state100, align 8, !dbg !4722
  br label %do.cond101, !dbg !4722

do.cond101:                                       ; preds = %do.body98
  br label %do.end102, !dbg !4722

do.end102:                                        ; preds = %do.cond101
  br label %do.cond103, !dbg !4718

do.cond103:                                       ; preds = %do.end102
  br label %do.end104, !dbg !4718

do.end104:                                        ; preds = %do.cond103
  br label %do.cond105, !dbg !4714

do.cond105:                                       ; preds = %do.end104
  br label %do.end106, !dbg !4714

do.end106:                                        ; preds = %do.cond105
  %42 = load ptr, ptr %sem.addr, align 8, !dbg !4724
  %wait_lock107 = getelementptr inbounds %struct.rw_semaphore, ptr %42, i32 0, i32 3, !dbg !4724
  call void @_raw_spin_lock_irq(ptr noundef %wait_lock107) #13, !dbg !4724
  %43 = load ptr, ptr %sem.addr, align 8, !dbg !4725
  call void @rwsem_del_wake_waiter(ptr noundef %43, ptr noundef %waiter, ptr noundef %wake_q) #13, !dbg !4726
  %44 = load ptr, ptr %sem.addr, align 8, !dbg !4727
  call void @trace_contention_end(ptr noundef %44, i32 noundef -4) #13, !dbg !4728
  %call108 = call ptr @ERR_PTR(i64 noundef -4) #13, !dbg !4729
  store ptr %call108, ptr %retval, align 8, !dbg !4730
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup109, !dbg !4730

cleanup109:                                       ; preds = %do.end106, %do.end88, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %wake_q) #14, !dbg !4731
  call void @llvm.lifetime.end.p0(i64 48, ptr %waiter) #14, !dbg !4731
  %45 = load ptr, ptr %retval, align 8, !dbg !4731
  ret ptr %45, !dbg !4731
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rwsem_set_owner(ptr noundef %sem) #4 align 16 !dbg !4732 {
entry:
  %sem.addr = alloca ptr, align 8
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !4734, metadata !DIExpression()), !dbg !4735
  br label %do.body, !dbg !4736

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4737

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !4739
  %owner = getelementptr inbounds %struct.rw_semaphore, ptr %0, i32 0, i32 1, !dbg !4740
  %call = call ptr @get_current() #13, !dbg !4741
  %1 = ptrtoint ptr %call to i64, !dbg !4742
  call void @atomic_long_set(ptr noundef %owner, i64 noundef %1) #13, !dbg !4743
  ret void, !dbg !4744
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @rwsem_can_spin_on_owner(ptr noundef %sem) #4 align 16 !dbg !4745 {
entry:
  %retval = alloca i1, align 1
  %sem.addr = alloca ptr, align 8
  %owner = alloca ptr, align 8
  %flags = alloca i64, align 8
  %ret = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !4747, metadata !DIExpression()), !dbg !4751
  call void @llvm.lifetime.start.p0(i64 8, ptr %owner) #14, !dbg !4752
  call void @llvm.dbg.declare(metadata ptr %owner, metadata !4748, metadata !DIExpression()), !dbg !4753
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #14, !dbg !4754
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4749, metadata !DIExpression()), !dbg !4755
  call void @llvm.lifetime.start.p0(i64 1, ptr %ret) #14, !dbg !4756
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4750, metadata !DIExpression()), !dbg !4757
  store i8 1, ptr %ret, align 1, !dbg !4757
  %call = call zeroext i1 @need_resched() #13, !dbg !4758
  br i1 %call, label %if.then, label %if.end, !dbg !4760

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !4761
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4761

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !4763
  %call1 = call ptr @rwsem_owner_flags(ptr noundef %0, ptr noundef %flags) #13, !dbg !4764
  store ptr %call1, ptr %owner, align 8, !dbg !4765
  %1 = load i64, ptr %flags, align 8, !dbg !4766
  %and = and i64 %1, 2, !dbg !4768
  %tobool = icmp ne i64 %and, 0, !dbg !4768
  br i1 %tobool, label %if.then7, label %lor.lhs.false, !dbg !4769

lor.lhs.false:                                    ; preds = %if.end
  %2 = load ptr, ptr %owner, align 8, !dbg !4770
  %tobool2 = icmp ne ptr %2, null, !dbg !4770
  br i1 %tobool2, label %land.lhs.true, label %if.end8, !dbg !4771

land.lhs.true:                                    ; preds = %lor.lhs.false
  %3 = load i64, ptr %flags, align 8, !dbg !4772
  %and3 = and i64 %3, 1, !dbg !4773
  %tobool4 = icmp ne i64 %and3, 0, !dbg !4773
  br i1 %tobool4, label %if.end8, label %land.lhs.true5, !dbg !4774

land.lhs.true5:                                   ; preds = %land.lhs.true
  %4 = load ptr, ptr %owner, align 8, !dbg !4775
  %call6 = call zeroext i1 @owner_on_cpu(ptr noundef %4) #13, !dbg !4776
  br i1 %call6, label %if.end8, label %if.then7, !dbg !4777

if.then7:                                         ; preds = %land.lhs.true5, %if.end
  store i8 0, ptr %ret, align 1, !dbg !4778
  br label %if.end8, !dbg !4779

if.end8:                                          ; preds = %if.then7, %land.lhs.true5, %land.lhs.true, %lor.lhs.false
  %5 = load i8, ptr %ret, align 1, !dbg !4780, !range !2975, !noundef !458
  %tobool9 = trunc i8 %5 to i1, !dbg !4780
  store i1 %tobool9, ptr %retval, align 1, !dbg !4781
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4781

cleanup:                                          ; preds = %if.end8, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %ret) #14, !dbg !4782
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #14, !dbg !4782
  call void @llvm.lifetime.end.p0(i64 8, ptr %owner) #14, !dbg !4782
  %6 = load i1, ptr %retval, align 1, !dbg !4782
  ret i1 %6, !dbg !4782
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @rwsem_optimistic_spin(ptr noundef %sem) #0 align 16 !dbg !4783 {
entry:
  %sem.addr = alloca ptr, align 8
  %taken = alloca i8, align 1
  %prev_owner_state = alloca i32, align 4
  %loop = alloca i32, align 4
  %rspin_threshold = alloca i64, align 8
  %owner_state = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !4785, metadata !DIExpression()), !dbg !4795
  call void @llvm.lifetime.start.p0(i64 1, ptr %taken) #14, !dbg !4796
  call void @llvm.dbg.declare(metadata ptr %taken, metadata !4786, metadata !DIExpression()), !dbg !4797
  store i8 0, ptr %taken, align 1, !dbg !4797
  call void @llvm.lifetime.start.p0(i64 4, ptr %prev_owner_state) #14, !dbg !4798
  call void @llvm.dbg.declare(metadata ptr %prev_owner_state, metadata !4787, metadata !DIExpression()), !dbg !4799
  store i32 1, ptr %prev_owner_state, align 4, !dbg !4799
  call void @llvm.lifetime.start.p0(i64 4, ptr %loop) #14, !dbg !4800
  call void @llvm.dbg.declare(metadata ptr %loop, metadata !4788, metadata !DIExpression()), !dbg !4801
  store i32 0, ptr %loop, align 4, !dbg !4801
  call void @llvm.lifetime.start.p0(i64 8, ptr %rspin_threshold) #14, !dbg !4802
  call void @llvm.dbg.declare(metadata ptr %rspin_threshold, metadata !4789, metadata !DIExpression()), !dbg !4803
  store i64 0, ptr %rspin_threshold, align 8, !dbg !4803
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !4804
  %osq = getelementptr inbounds %struct.rw_semaphore, ptr %0, i32 0, i32 2, !dbg !4806
  %call = call zeroext i1 @osq_lock(ptr noundef %osq) #13, !dbg !4807
  br i1 %call, label %if.end, label %if.then, !dbg !4808

if.then:                                          ; preds = %entry
  br label %done, !dbg !4809

if.end:                                           ; preds = %entry
  br label %for.cond, !dbg !4810

for.cond:                                         ; preds = %cleanup.cont, %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %owner_state) #14, !dbg !4811
  call void @llvm.dbg.declare(metadata ptr %owner_state, metadata !4790, metadata !DIExpression()), !dbg !4812
  %1 = load ptr, ptr %sem.addr, align 8, !dbg !4813
  %call1 = call i32 @rwsem_spin_on_owner(ptr noundef %1) #13, !dbg !4814
  store i32 %call1, ptr %owner_state, align 4, !dbg !4815
  %2 = load i32, ptr %owner_state, align 4, !dbg !4816
  %and = and i32 %2, 7, !dbg !4818
  %tobool = icmp ne i32 %and, 0, !dbg !4818
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !4819

if.then2:                                         ; preds = %for.cond
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4820

if.end3:                                          ; preds = %for.cond
  %3 = load ptr, ptr %sem.addr, align 8, !dbg !4821
  %call4 = call zeroext i1 @rwsem_try_write_lock_unqueued(ptr noundef %3) #13, !dbg !4822
  %frombool = zext i1 %call4 to i8, !dbg !4823
  store i8 %frombool, ptr %taken, align 1, !dbg !4823
  %4 = load i8, ptr %taken, align 1, !dbg !4824, !range !2975, !noundef !458
  %tobool5 = trunc i8 %4 to i1, !dbg !4824
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !4826

if.then6:                                         ; preds = %if.end3
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4827

if.end7:                                          ; preds = %if.end3
  %5 = load i32, ptr %owner_state, align 4, !dbg !4828
  %cmp = icmp eq i32 %5, 4, !dbg !4830
  br i1 %cmp, label %if.then8, label %if.end22, !dbg !4831

if.then8:                                         ; preds = %if.end7
  %6 = load i32, ptr %prev_owner_state, align 4, !dbg !4832
  %cmp9 = icmp ne i32 %6, 4, !dbg !4835
  br i1 %cmp9, label %if.then10, label %if.else, !dbg !4836

if.then10:                                        ; preds = %if.then8
  %7 = load ptr, ptr %sem.addr, align 8, !dbg !4837
  %call11 = call zeroext i1 @rwsem_test_oflags(ptr noundef %7, i64 noundef 2) #13, !dbg !4840
  br i1 %call11, label %if.then12, label %if.end13, !dbg !4841

if.then12:                                        ; preds = %if.then10
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4842

if.end13:                                         ; preds = %if.then10
  %8 = load ptr, ptr %sem.addr, align 8, !dbg !4843
  %call14 = call i64 @rwsem_rspin_threshold(ptr noundef %8) #13, !dbg !4844
  store i64 %call14, ptr %rspin_threshold, align 8, !dbg !4845
  store i32 0, ptr %loop, align 4, !dbg !4846
  br label %if.end21, !dbg !4847

if.else:                                          ; preds = %if.then8
  %9 = load i32, ptr %loop, align 4, !dbg !4848
  %inc = add i32 %9, 1, !dbg !4848
  store i32 %inc, ptr %loop, align 4, !dbg !4848
  %and15 = and i32 %inc, 15, !dbg !4850
  %tobool16 = icmp ne i32 %and15, 0, !dbg !4850
  br i1 %tobool16, label %if.end20, label %land.lhs.true, !dbg !4851

land.lhs.true:                                    ; preds = %if.else
  %call17 = call i64 @sched_clock() #13, !dbg !4852
  %10 = load i64, ptr %rspin_threshold, align 8, !dbg !4853
  %cmp18 = icmp ugt i64 %call17, %10, !dbg !4854
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !4855

if.then19:                                        ; preds = %land.lhs.true
  %11 = load ptr, ptr %sem.addr, align 8, !dbg !4856
  call void @rwsem_set_nonspinnable(ptr noundef %11) #13, !dbg !4858
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4859

if.end20:                                         ; preds = %land.lhs.true, %if.else
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.end13
  br label %if.end22, !dbg !4860

if.end22:                                         ; preds = %if.end21, %if.end7
  %12 = load i32, ptr %owner_state, align 4, !dbg !4861
  %cmp23 = icmp ne i32 %12, 2, !dbg !4863
  br i1 %cmp23, label %if.then24, label %if.end35, !dbg !4864

if.then24:                                        ; preds = %if.end22
  %call25 = call zeroext i1 @need_resched() #13, !dbg !4865
  br i1 %call25, label %if.then26, label %if.end27, !dbg !4868

if.then26:                                        ; preds = %if.then24
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4869

if.end27:                                         ; preds = %if.then24
  %call28 = call ptr @get_current() #13, !dbg !4870
  %call29 = call i32 @rt_task(ptr noundef %call28) #13, !dbg !4872
  %tobool30 = icmp ne i32 %call29, 0, !dbg !4872
  br i1 %tobool30, label %land.lhs.true31, label %if.end34, !dbg !4873

land.lhs.true31:                                  ; preds = %if.end27
  %13 = load i32, ptr %prev_owner_state, align 4, !dbg !4874
  %cmp32 = icmp ne i32 %13, 2, !dbg !4875
  br i1 %cmp32, label %if.then33, label %if.end34, !dbg !4876

if.then33:                                        ; preds = %land.lhs.true31
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4877

if.end34:                                         ; preds = %land.lhs.true31, %if.end27
  br label %if.end35, !dbg !4878

if.end35:                                         ; preds = %if.end34, %if.end22
  %14 = load i32, ptr %owner_state, align 4, !dbg !4879
  store i32 %14, ptr %prev_owner_state, align 4, !dbg !4880
  call void @cpu_relax() #13, !dbg !4881
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4882
  br label %cleanup, !dbg !4882

cleanup:                                          ; preds = %if.end35, %if.then33, %if.then26, %if.then19, %if.then12, %if.then6, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %owner_state) #14, !dbg !4882
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond, !dbg !4883, !llvm.loop !4884

for.end:                                          ; preds = %cleanup
  %15 = load ptr, ptr %sem.addr, align 8, !dbg !4887
  %osq36 = getelementptr inbounds %struct.rw_semaphore, ptr %15, i32 0, i32 2, !dbg !4888
  call void @osq_unlock(ptr noundef %osq36) #13, !dbg !4889
  br label %done, !dbg !4889

done:                                             ; preds = %for.end, %if.then
  call void @llvm.dbg.label(metadata !4794), !dbg !4890
  %16 = load i8, ptr %taken, align 1, !dbg !4891, !range !2975, !noundef !458
  %tobool37 = trunc i8 %16 to i1, !dbg !4891
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %rspin_threshold) #14, !dbg !4892
  call void @llvm.lifetime.end.p0(i64 4, ptr %loop) #14, !dbg !4892
  call void @llvm.lifetime.end.p0(i64 4, ptr %prev_owner_state) #14, !dbg !4892
  call void @llvm.lifetime.end.p0(i64 1, ptr %taken) #14, !dbg !4892
  ret i1 %tobool37, !dbg !4893

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_long_or(i64 noundef %i, ptr noundef %v) #2 align 16 !dbg !4894 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4896, metadata !DIExpression()), !dbg !4898
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4897, metadata !DIExpression()), !dbg !4899
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4900
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #13, !dbg !4901
  %1 = load i64, ptr %i.addr, align 8, !dbg !4902
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4903
  call void @raw_atomic_long_or(i64 noundef %1, ptr noundef %2) #13, !dbg !4904
  ret void, !dbg !4905
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @rwsem_try_write_lock(ptr noundef %sem, ptr noundef %waiter) #4 align 16 !dbg !4906 {
entry:
  %retval = alloca i1, align 1
  %sem.addr = alloca ptr, align 8
  %waiter.addr = alloca ptr, align 8
  %first = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %count = alloca i64, align 8
  %new = alloca i64, align 8
  %has_handoff = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !4908, metadata !DIExpression()), !dbg !4917
  store ptr %waiter, ptr %waiter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %waiter.addr, metadata !4909, metadata !DIExpression()), !dbg !4918
  call void @llvm.lifetime.start.p0(i64 8, ptr %first) #14, !dbg !4919
  call void @llvm.dbg.declare(metadata ptr %first, metadata !4910, metadata !DIExpression()), !dbg !4920
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !4921
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4911, metadata !DIExpression()), !dbg !4921
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !4921
  %wait_list = getelementptr inbounds %struct.rw_semaphore, ptr %0, i32 0, i32 4, !dbg !4921
  %next = getelementptr inbounds %struct.list_head, ptr %wait_list, i32 0, i32 0, !dbg !4921
  %1 = load ptr, ptr %next, align 8, !dbg !4921
  store ptr %1, ptr %__mptr, align 8, !dbg !4921
  %2 = load ptr, ptr %__mptr, align 8, !dbg !4921
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !4921
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4921
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !4922
  %3 = load ptr, ptr %tmp, align 8, !dbg !4921
  store ptr %3, ptr %first, align 8, !dbg !4920
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #14, !dbg !4923
  call void @llvm.dbg.declare(metadata ptr %count, metadata !4913, metadata !DIExpression()), !dbg !4924
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #14, !dbg !4923
  call void @llvm.dbg.declare(metadata ptr %new, metadata !4914, metadata !DIExpression()), !dbg !4925
  br label %do.body, !dbg !4926

do.body:                                          ; preds = %entry
  %4 = load ptr, ptr %sem.addr, align 8, !dbg !4927
  %wait_lock = getelementptr inbounds %struct.rw_semaphore, ptr %4, i32 0, i32 3, !dbg !4927
  br label %do.cond, !dbg !4927

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4927

do.end:                                           ; preds = %do.cond
  %5 = load ptr, ptr %sem.addr, align 8, !dbg !4929
  %count1 = getelementptr inbounds %struct.rw_semaphore, ptr %5, i32 0, i32 0, !dbg !4930
  %call = call i64 @atomic_long_read(ptr noundef %count1) #13, !dbg !4931
  store i64 %call, ptr %count, align 8, !dbg !4932
  br label %do.body2, !dbg !4933

do.body2:                                         ; preds = %do.cond27, %do.end
  call void @llvm.lifetime.start.p0(i64 1, ptr %has_handoff) #14, !dbg !4934
  call void @llvm.dbg.declare(metadata ptr %has_handoff, metadata !4915, metadata !DIExpression()), !dbg !4935
  %6 = load i64, ptr %count, align 8, !dbg !4936
  %and = and i64 %6, 4, !dbg !4937
  %tobool = icmp ne i64 %and, 0, !dbg !4938
  %lnot = xor i1 %tobool, true, !dbg !4938
  %lnot3 = xor i1 %lnot, true, !dbg !4939
  %frombool = zext i1 %lnot3 to i8, !dbg !4935
  store i8 %frombool, ptr %has_handoff, align 1, !dbg !4935
  %7 = load i8, ptr %has_handoff, align 1, !dbg !4940, !range !2975, !noundef !458
  %tobool4 = trunc i8 %7 to i1, !dbg !4940
  br i1 %tobool4, label %if.then, label %if.end7, !dbg !4942

if.then:                                          ; preds = %do.body2
  %8 = load ptr, ptr %first, align 8, !dbg !4943
  %handoff_set = getelementptr inbounds %struct.rwsem_waiter, ptr %8, i32 0, i32 4, !dbg !4946
  %9 = load i8, ptr %handoff_set, align 8, !dbg !4946, !range !2975, !noundef !458
  %tobool5 = trunc i8 %9 to i1, !dbg !4946
  br i1 %tobool5, label %land.lhs.true, label %if.end, !dbg !4947

land.lhs.true:                                    ; preds = %if.then
  %10 = load ptr, ptr %waiter.addr, align 8, !dbg !4948
  %11 = load ptr, ptr %first, align 8, !dbg !4949
  %cmp = icmp ne ptr %10, %11, !dbg !4950
  br i1 %cmp, label %if.then6, label %if.end, !dbg !4951

if.then6:                                         ; preds = %land.lhs.true
  store i1 false, ptr %retval, align 1, !dbg !4952
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4952

if.end:                                           ; preds = %land.lhs.true, %if.then
  br label %if.end7, !dbg !4953

if.end7:                                          ; preds = %if.end, %do.body2
  %12 = load i64, ptr %count, align 8, !dbg !4954
  store i64 %12, ptr %new, align 8, !dbg !4955
  %13 = load i64, ptr %count, align 8, !dbg !4956
  %and8 = and i64 %13, -255, !dbg !4958
  %tobool9 = icmp ne i64 %and8, 0, !dbg !4958
  br i1 %tobool9, label %if.then10, label %if.else, !dbg !4959

if.then10:                                        ; preds = %if.end7
  %14 = load i8, ptr %has_handoff, align 1, !dbg !4960, !range !2975, !noundef !458
  %tobool11 = trunc i8 %14 to i1, !dbg !4960
  br i1 %tobool11, label %if.then16, label %lor.lhs.false, !dbg !4963

lor.lhs.false:                                    ; preds = %if.then10
  %15 = load ptr, ptr %waiter.addr, align 8, !dbg !4964
  %task = getelementptr inbounds %struct.rwsem_waiter, ptr %15, i32 0, i32 1, !dbg !4965
  %16 = load ptr, ptr %task, align 8, !dbg !4965
  %call12 = call i32 @rt_task(ptr noundef %16) #13, !dbg !4966
  %tobool13 = icmp ne i32 %call12, 0, !dbg !4966
  br i1 %tobool13, label %if.end17, label %land.lhs.true14, !dbg !4967

land.lhs.true14:                                  ; preds = %lor.lhs.false
  %17 = load ptr, ptr %waiter.addr, align 8, !dbg !4968
  %timeout = getelementptr inbounds %struct.rwsem_waiter, ptr %17, i32 0, i32 3, !dbg !4968
  %18 = load i64, ptr %timeout, align 8, !dbg !4968
  %19 = load volatile i64, ptr @jiffies, align 64, !dbg !4968
  %sub = sub i64 %18, %19, !dbg !4968
  %cmp15 = icmp slt i64 %sub, 0, !dbg !4968
  br i1 %cmp15, label %if.end17, label %if.then16, !dbg !4969

if.then16:                                        ; preds = %land.lhs.true14, %if.then10
  store i1 false, ptr %retval, align 1, !dbg !4970
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4970

if.end17:                                         ; preds = %land.lhs.true14, %lor.lhs.false
  %20 = load i64, ptr %new, align 8, !dbg !4971
  %or = or i64 %20, 4, !dbg !4971
  store i64 %or, ptr %new, align 8, !dbg !4971
  br label %if.end26, !dbg !4972

if.else:                                          ; preds = %if.end7
  %21 = load i64, ptr %new, align 8, !dbg !4973
  %or18 = or i64 %21, 1, !dbg !4973
  store i64 %or18, ptr %new, align 8, !dbg !4973
  %22 = load i64, ptr %new, align 8, !dbg !4975
  %and19 = and i64 %22, -5, !dbg !4975
  store i64 %and19, ptr %new, align 8, !dbg !4975
  %23 = load ptr, ptr %sem.addr, align 8, !dbg !4976
  %wait_list20 = getelementptr inbounds %struct.rw_semaphore, ptr %23, i32 0, i32 4, !dbg !4978
  %call21 = call i32 @list_is_singular(ptr noundef %wait_list20) #13, !dbg !4979
  %tobool22 = icmp ne i32 %call21, 0, !dbg !4979
  br i1 %tobool22, label %if.then23, label %if.end25, !dbg !4980

if.then23:                                        ; preds = %if.else
  %24 = load i64, ptr %new, align 8, !dbg !4981
  %and24 = and i64 %24, -3, !dbg !4981
  store i64 %and24, ptr %new, align 8, !dbg !4981
  br label %if.end25, !dbg !4982

if.end25:                                         ; preds = %if.then23, %if.else
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.end17
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4983
  br label %cleanup, !dbg !4983

cleanup:                                          ; preds = %if.end26, %if.then16, %if.then6
  call void @llvm.lifetime.end.p0(i64 1, ptr %has_handoff) #14, !dbg !4983
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup37 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond27, !dbg !4984

do.cond27:                                        ; preds = %cleanup.cont
  %25 = load ptr, ptr %sem.addr, align 8, !dbg !4985
  %count28 = getelementptr inbounds %struct.rw_semaphore, ptr %25, i32 0, i32 0, !dbg !4986
  %26 = load i64, ptr %new, align 8, !dbg !4987
  %call29 = call zeroext i1 @atomic_long_try_cmpxchg_acquire(ptr noundef %count28, ptr noundef %count, i64 noundef %26) #13, !dbg !4988
  %lnot30 = xor i1 %call29, true, !dbg !4989
  br i1 %lnot30, label %do.body2, label %do.end31, !dbg !4984, !llvm.loop !4990

do.end31:                                         ; preds = %do.cond27
  %27 = load i64, ptr %new, align 8, !dbg !4992
  %and32 = and i64 %27, 4, !dbg !4994
  %tobool33 = icmp ne i64 %and32, 0, !dbg !4994
  br i1 %tobool33, label %if.then34, label %if.end36, !dbg !4995

if.then34:                                        ; preds = %do.end31
  %28 = load ptr, ptr %first, align 8, !dbg !4996
  %handoff_set35 = getelementptr inbounds %struct.rwsem_waiter, ptr %28, i32 0, i32 4, !dbg !4998
  store i8 1, ptr %handoff_set35, align 8, !dbg !4999
  store i1 false, ptr %retval, align 1, !dbg !5000
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup37, !dbg !5000

if.end36:                                         ; preds = %do.end31
  %29 = load ptr, ptr %waiter.addr, align 8, !dbg !5001
  %list = getelementptr inbounds %struct.rwsem_waiter, ptr %29, i32 0, i32 0, !dbg !5002
  call void @list_del(ptr noundef %list) #13, !dbg !5003
  %30 = load ptr, ptr %sem.addr, align 8, !dbg !5004
  call void @rwsem_set_owner(ptr noundef %30) #13, !dbg !5005
  store i1 true, ptr %retval, align 1, !dbg !5006
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup37, !dbg !5006

cleanup37:                                        ; preds = %if.end36, %if.then34, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #14, !dbg !5007
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #14, !dbg !5007
  call void @llvm.lifetime.end.p0(i64 8, ptr %first) #14, !dbg !5007
  %31 = load i1, ptr %retval, align 1, !dbg !5007
  ret i1 %31, !dbg !5007
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rwsem_spin_on_owner(ptr noundef %sem) #12 align 16 !dbg !5008 {
entry:
  %retval = alloca i32, align 4
  %sem.addr = alloca ptr, align 8
  %new = alloca ptr, align 8
  %owner = alloca ptr, align 8
  %flags = alloca i64, align 8
  %new_flags = alloca i64, align 8
  %state = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !5012, metadata !DIExpression()), !dbg !5018
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #14, !dbg !5019
  call void @llvm.dbg.declare(metadata ptr %new, metadata !5013, metadata !DIExpression()), !dbg !5020
  call void @llvm.lifetime.start.p0(i64 8, ptr %owner) #14, !dbg !5019
  call void @llvm.dbg.declare(metadata ptr %owner, metadata !5014, metadata !DIExpression()), !dbg !5021
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #14, !dbg !5022
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5015, metadata !DIExpression()), !dbg !5023
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_flags) #14, !dbg !5022
  call void @llvm.dbg.declare(metadata ptr %new_flags, metadata !5016, metadata !DIExpression()), !dbg !5024
  call void @llvm.lifetime.start.p0(i64 4, ptr %state) #14, !dbg !5025
  call void @llvm.dbg.declare(metadata ptr %state, metadata !5017, metadata !DIExpression()), !dbg !5026
  br label %do.body, !dbg !5027

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5028

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5028

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !5030
  %call = call ptr @rwsem_owner_flags(ptr noundef %0, ptr noundef %flags) #13, !dbg !5031
  store ptr %call, ptr %owner, align 8, !dbg !5032
  %1 = load ptr, ptr %owner, align 8, !dbg !5033
  %2 = load i64, ptr %flags, align 8, !dbg !5034
  %call1 = call i32 @rwsem_owner_state(ptr noundef %1, i64 noundef %2) #13, !dbg !5035
  store i32 %call1, ptr %state, align 4, !dbg !5036
  %3 = load i32, ptr %state, align 4, !dbg !5037
  %cmp = icmp ne i32 %3, 2, !dbg !5039
  br i1 %cmp, label %if.then, label %if.end, !dbg !5040

if.then:                                          ; preds = %do.end
  %4 = load i32, ptr %state, align 4, !dbg !5041
  store i32 %4, ptr %retval, align 4, !dbg !5042
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5042

if.end:                                           ; preds = %do.end
  br label %for.cond, !dbg !5043

for.cond:                                         ; preds = %if.end12, %if.end
  %5 = load ptr, ptr %sem.addr, align 8, !dbg !5044
  %call2 = call ptr @rwsem_owner_flags(ptr noundef %5, ptr noundef %new_flags) #13, !dbg !5048
  store ptr %call2, ptr %new, align 8, !dbg !5049
  %6 = load ptr, ptr %new, align 8, !dbg !5050
  %7 = load ptr, ptr %owner, align 8, !dbg !5052
  %cmp3 = icmp ne ptr %6, %7, !dbg !5053
  br i1 %cmp3, label %if.then5, label %lor.lhs.false, !dbg !5054

lor.lhs.false:                                    ; preds = %for.cond
  %8 = load i64, ptr %new_flags, align 8, !dbg !5055
  %9 = load i64, ptr %flags, align 8, !dbg !5056
  %cmp4 = icmp ne i64 %8, %9, !dbg !5057
  br i1 %cmp4, label %if.then5, label %if.end7, !dbg !5058

if.then5:                                         ; preds = %lor.lhs.false, %for.cond
  %10 = load ptr, ptr %new, align 8, !dbg !5059
  %11 = load i64, ptr %new_flags, align 8, !dbg !5061
  %call6 = call i32 @rwsem_owner_state(ptr noundef %10, i64 noundef %11) #13, !dbg !5062
  store i32 %call6, ptr %state, align 4, !dbg !5063
  br label %for.end, !dbg !5064

if.end7:                                          ; preds = %lor.lhs.false
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !5065, !srcloc !5066
  %call8 = call zeroext i1 @need_resched() #13, !dbg !5067
  br i1 %call8, label %if.then11, label %lor.lhs.false9, !dbg !5069

lor.lhs.false9:                                   ; preds = %if.end7
  %12 = load ptr, ptr %owner, align 8, !dbg !5070
  %call10 = call zeroext i1 @owner_on_cpu(ptr noundef %12) #13, !dbg !5071
  br i1 %call10, label %if.end12, label %if.then11, !dbg !5072

if.then11:                                        ; preds = %lor.lhs.false9, %if.end7
  store i32 8, ptr %state, align 4, !dbg !5073
  br label %for.end, !dbg !5075

if.end12:                                         ; preds = %lor.lhs.false9
  call void @cpu_relax() #13, !dbg !5076
  br label %for.cond, !dbg !5077, !llvm.loop !5078

for.end:                                          ; preds = %if.then11, %if.then5
  %13 = load i32, ptr %state, align 4, !dbg !5081
  store i32 %13, ptr %retval, align 4, !dbg !5082
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5082

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %state) #14, !dbg !5083
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_flags) #14, !dbg !5083
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #14, !dbg !5083
  call void @llvm.lifetime.end.p0(i64 8, ptr %owner) #14, !dbg !5083
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #14, !dbg !5083
  %14 = load i32, ptr %retval, align 4, !dbg !5083
  ret i32 %14, !dbg !5083
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @need_resched() #2 align 16 !dbg !5084 {
entry:
  %call = call zeroext i1 @tif_need_resched() #13, !dbg !5085
  %lnot = xor i1 %call, true, !dbg !5085
  %lnot1 = xor i1 %lnot, true, !dbg !5085
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5085
  %conv = sext i32 %lnot.ext to i64, !dbg !5085
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5085
  %tobool = icmp ne i64 %expval, 0, !dbg !5085
  ret i1 %tobool, !dbg !5086
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @rwsem_owner_flags(ptr noundef %sem, ptr noundef %pflags) #4 align 16 !dbg !5087 {
entry:
  %sem.addr = alloca ptr, align 8
  %pflags.addr = alloca ptr, align 8
  %owner = alloca i64, align 8
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !5091, metadata !DIExpression()), !dbg !5094
  store ptr %pflags, ptr %pflags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pflags.addr, metadata !5092, metadata !DIExpression()), !dbg !5095
  call void @llvm.lifetime.start.p0(i64 8, ptr %owner) #14, !dbg !5096
  call void @llvm.dbg.declare(metadata ptr %owner, metadata !5093, metadata !DIExpression()), !dbg !5097
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !5098
  %owner1 = getelementptr inbounds %struct.rw_semaphore, ptr %0, i32 0, i32 1, !dbg !5099
  %call = call i64 @atomic_long_read(ptr noundef %owner1) #13, !dbg !5100
  store i64 %call, ptr %owner, align 8, !dbg !5097
  %1 = load i64, ptr %owner, align 8, !dbg !5101
  %and = and i64 %1, 3, !dbg !5102
  %2 = load ptr, ptr %pflags.addr, align 8, !dbg !5103
  store i64 %and, ptr %2, align 8, !dbg !5104
  %3 = load i64, ptr %owner, align 8, !dbg !5105
  %and2 = and i64 %3, -4, !dbg !5106
  %4 = inttoptr i64 %and2 to ptr, !dbg !5107
  call void @llvm.lifetime.end.p0(i64 8, ptr %owner) #14, !dbg !5108
  ret ptr %4, !dbg !5109
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @owner_on_cpu(ptr noundef %owner) #4 align 16 !dbg !5110 {
entry:
  %owner.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %owner, ptr %owner.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %owner.addr, metadata !5114, metadata !DIExpression()), !dbg !5115
  br label %do.body, !dbg !5116

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5118

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %owner.addr, align 8, !dbg !5116
  %on_cpu = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 6, !dbg !5116
  %1 = load volatile i32, ptr %on_cpu, align 4, !dbg !5116
  store i32 %1, ptr %tmp, align 4, !dbg !5118
  %2 = load i32, ptr %tmp, align 4, !dbg !5116
  %tobool = icmp ne i32 %2, 0, !dbg !5120
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !5121

land.rhs:                                         ; preds = %do.end
  %3 = load ptr, ptr %owner.addr, align 8, !dbg !5122
  %call = call i32 @task_cpu(ptr noundef %3) #13, !dbg !5123
  %call1 = call zeroext i1 @vcpu_is_preempted(i32 noundef %call) #13, !dbg !5124
  %lnot = xor i1 %call1, true, !dbg !5125
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.end
  %4 = phi i1 [ false, %do.end ], [ %lnot, %land.rhs ], !dbg !5126
  ret i1 %4, !dbg !5127
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @tif_need_resched() #2 align 16 !dbg !5128 {
entry:
  %call = call ptr @get_current() #13, !dbg !5129
  %flags = getelementptr inbounds %struct.thread_info, ptr %call, i32 0, i32 0, !dbg !5130
  %call1 = call zeroext i1 @arch_test_bit(i64 noundef 3, ptr noundef %flags) #13, !dbg !5131
  ret i1 %call1, !dbg !5132
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @vcpu_is_preempted(i32 noundef %cpu) #4 align 16 !dbg !5133 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5137, metadata !DIExpression()), !dbg !5138
  ret i1 false, !dbg !5139
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @task_cpu(ptr noundef %p) #4 align 16 !dbg !5140 {
entry:
  %p.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5146, metadata !DIExpression()), !dbg !5147
  br label %do.body, !dbg !5148

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5150

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %p.addr, align 8, !dbg !5148
  %thread_info = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 0, !dbg !5148
  %cpu = getelementptr inbounds %struct.thread_info, ptr %thread_info, i32 0, i32 3, !dbg !5148
  %1 = load volatile i32, ptr %cpu, align 4, !dbg !5148
  store i32 %1, ptr %tmp, align 4, !dbg !5150
  %2 = load i32, ptr %tmp, align 4, !dbg !5148
  ret i32 %2, !dbg !5152
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5153 dso_local zeroext i1 @osq_lock(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @rwsem_try_write_lock_unqueued(ptr noundef %sem) #4 align 16 !dbg !5156 {
entry:
  %retval = alloca i1, align 1
  %sem.addr = alloca ptr, align 8
  %count = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !5158, metadata !DIExpression()), !dbg !5160
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #14, !dbg !5161
  call void @llvm.dbg.declare(metadata ptr %count, metadata !5159, metadata !DIExpression()), !dbg !5162
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !5163
  %count1 = getelementptr inbounds %struct.rw_semaphore, ptr %0, i32 0, i32 0, !dbg !5164
  %call = call i64 @atomic_long_read(ptr noundef %count1) #13, !dbg !5165
  store i64 %call, ptr %count, align 8, !dbg !5162
  br label %while.cond, !dbg !5166

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i64, ptr %count, align 8, !dbg !5167
  %and = and i64 %1, -251, !dbg !5168
  %tobool = icmp ne i64 %and, 0, !dbg !5169
  %lnot = xor i1 %tobool, true, !dbg !5169
  br i1 %lnot, label %while.body, label %while.end, !dbg !5166

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %sem.addr, align 8, !dbg !5170
  %count2 = getelementptr inbounds %struct.rw_semaphore, ptr %2, i32 0, i32 0, !dbg !5173
  %3 = load i64, ptr %count, align 8, !dbg !5174
  %or = or i64 %3, 1, !dbg !5175
  %call3 = call zeroext i1 @atomic_long_try_cmpxchg_acquire(ptr noundef %count2, ptr noundef %count, i64 noundef %or) #13, !dbg !5176
  br i1 %call3, label %if.then, label %if.end, !dbg !5177

if.then:                                          ; preds = %while.body
  %4 = load ptr, ptr %sem.addr, align 8, !dbg !5178
  call void @rwsem_set_owner(ptr noundef %4) #13, !dbg !5180
  store i1 true, ptr %retval, align 1, !dbg !5181
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5181

if.end:                                           ; preds = %while.body
  br label %while.cond, !dbg !5166, !llvm.loop !5182

while.end:                                        ; preds = %while.cond
  store i1 false, ptr %retval, align 1, !dbg !5184
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5184

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #14, !dbg !5185
  %5 = load i1, ptr %retval, align 1, !dbg !5185
  ret i1 %5, !dbg !5185
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @rwsem_rspin_threshold(ptr noundef %sem) #4 align 16 !dbg !5186 {
entry:
  %sem.addr = alloca ptr, align 8
  %count = alloca i64, align 8
  %readers = alloca i32, align 4
  %delta = alloca i64, align 8
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !5190, metadata !DIExpression()), !dbg !5194
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #14, !dbg !5195
  call void @llvm.dbg.declare(metadata ptr %count, metadata !5191, metadata !DIExpression()), !dbg !5196
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !5197
  %count1 = getelementptr inbounds %struct.rw_semaphore, ptr %0, i32 0, i32 0, !dbg !5198
  %call = call i64 @atomic_long_read(ptr noundef %count1) #13, !dbg !5199
  store i64 %call, ptr %count, align 8, !dbg !5196
  call void @llvm.lifetime.start.p0(i64 4, ptr %readers) #14, !dbg !5200
  call void @llvm.dbg.declare(metadata ptr %readers, metadata !5192, metadata !DIExpression()), !dbg !5201
  %1 = load i64, ptr %count, align 8, !dbg !5202
  %shr = ashr i64 %1, 8, !dbg !5203
  %conv = trunc i64 %shr to i32, !dbg !5202
  store i32 %conv, ptr %readers, align 4, !dbg !5201
  call void @llvm.lifetime.start.p0(i64 8, ptr %delta) #14, !dbg !5204
  call void @llvm.dbg.declare(metadata ptr %delta, metadata !5193, metadata !DIExpression()), !dbg !5205
  %2 = load i32, ptr %readers, align 4, !dbg !5206
  %cmp = icmp sgt i32 %2, 30, !dbg !5208
  br i1 %cmp, label %if.then, label %if.end, !dbg !5209

if.then:                                          ; preds = %entry
  store i32 30, ptr %readers, align 4, !dbg !5210
  br label %if.end, !dbg !5211

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %readers, align 4, !dbg !5212
  %add = add i32 20, %3, !dbg !5213
  %conv3 = sext i32 %add to i64, !dbg !5214
  %mul = mul i64 %conv3, 1000, !dbg !5215
  %div = sdiv i64 %mul, 2, !dbg !5216
  store i64 %div, ptr %delta, align 8, !dbg !5217
  %call4 = call i64 @sched_clock() #13, !dbg !5218
  %4 = load i64, ptr %delta, align 8, !dbg !5219
  %add5 = add i64 %call4, %4, !dbg !5220
  call void @llvm.lifetime.end.p0(i64 8, ptr %delta) #14, !dbg !5221
  call void @llvm.lifetime.end.p0(i64 4, ptr %readers) #14, !dbg !5221
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #14, !dbg !5221
  ret i64 %add5, !dbg !5222
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5223 dso_local i64 @sched_clock() #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rt_task(ptr noundef %p) #4 align 16 !dbg !5227 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5230, metadata !DIExpression()), !dbg !5231
  %0 = load ptr, ptr %p.addr, align 8, !dbg !5232
  %prio = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 14, !dbg !5233
  %1 = load i32, ptr %prio, align 4, !dbg !5233
  %call = call i32 @rt_prio(i32 noundef %1) #13, !dbg !5234
  ret i32 %call, !dbg !5235
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_relax() #2 align 16 !dbg !5236 {
entry:
  call void @rep_nop() #13, !dbg !5238
  ret void, !dbg !5239
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5240 dso_local void @osq_unlock(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rt_prio(i32 noundef %prio) #4 align 16 !dbg !5241 {
entry:
  %retval = alloca i32, align 4
  %prio.addr = alloca i32, align 4
  store i32 %prio, ptr %prio.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %prio.addr, metadata !5245, metadata !DIExpression()), !dbg !5246
  %0 = load i32, ptr %prio.addr, align 4, !dbg !5247
  %cmp = icmp slt i32 %0, 100, !dbg !5247
  %lnot = xor i1 %cmp, true, !dbg !5247
  %lnot1 = xor i1 %lnot, true, !dbg !5247
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5247
  %conv = sext i32 %lnot.ext to i64, !dbg !5247
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5247
  %tobool = icmp ne i64 %expval, 0, !dbg !5247
  br i1 %tobool, label %if.then, label %if.end, !dbg !5249

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !5250
  br label %return, !dbg !5250

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5251
  br label %return, !dbg !5251

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, ptr %retval, align 4, !dbg !5252
  ret i32 %1, !dbg !5252
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rep_nop() #2 align 16 !dbg !5253 {
entry:
  call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !5254, !srcloc !5255
  ret void, !dbg !5256
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_long_or(i64 noundef %i, ptr noundef %v) #2 align 16 !dbg !5257 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5259, metadata !DIExpression()), !dbg !5261
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5260, metadata !DIExpression()), !dbg !5262
  %0 = load i64, ptr %i.addr, align 8, !dbg !5263
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5264
  call void @raw_atomic64_or(i64 noundef %0, ptr noundef %1) #13, !dbg !5265
  ret void, !dbg !5266
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic64_or(i64 noundef %i, ptr noundef %v) #2 align 16 !dbg !5267 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5269, metadata !DIExpression()), !dbg !5271
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5270, metadata !DIExpression()), !dbg !5272
  %0 = load i64, ptr %i.addr, align 8, !dbg !5273
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5274
  call void @arch_atomic64_or(i64 noundef %0, ptr noundef %1) #13, !dbg !5275
  ret void, !dbg !5276
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic64_or(i64 noundef %i, ptr noundef %v) #2 align 16 !dbg !5277 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5279, metadata !DIExpression()), !dbg !5281
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5280, metadata !DIExpression()), !dbg !5282
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5283
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !5284
  %1 = load i64, ptr %i.addr, align 8, !dbg !5285
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orq $1,$0", "=*m,er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %counter, i64 %1, ptr elementtype(i64) %counter) #14, !dbg !5286, !srcloc !5287
  ret void, !dbg !5288
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_is_singular(ptr noundef %head) #4 align 16 !dbg !5289 {
entry:
  %head.addr = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5291, metadata !DIExpression()), !dbg !5292
  %0 = load ptr, ptr %head.addr, align 8, !dbg !5293
  %call = call i32 @list_empty(ptr noundef %0) #13, !dbg !5294
  %tobool = icmp ne i32 %call, 0, !dbg !5294
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !5295

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %head.addr, align 8, !dbg !5296
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5297
  %2 = load ptr, ptr %next, align 8, !dbg !5297
  %3 = load ptr, ptr %head.addr, align 8, !dbg !5298
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !5299
  %4 = load ptr, ptr %prev, align 8, !dbg !5299
  %cmp = icmp eq ptr %2, %4, !dbg !5300
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !5301
  %land.ext = zext i1 %5 to i32, !dbg !5295
  ret i32 %land.ext, !dbg !5302
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rwsem_owner_state(ptr noundef %owner, i64 noundef %flags) #4 align 16 !dbg !5303 {
entry:
  %retval = alloca i32, align 4
  %owner.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  store ptr %owner, ptr %owner.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %owner.addr, metadata !5307, metadata !DIExpression()), !dbg !5309
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5308, metadata !DIExpression()), !dbg !5310
  %0 = load i64, ptr %flags.addr, align 8, !dbg !5311
  %and = and i64 %0, 2, !dbg !5313
  %tobool = icmp ne i64 %and, 0, !dbg !5313
  br i1 %tobool, label %if.then, label %if.end, !dbg !5314

if.then:                                          ; preds = %entry
  store i32 8, ptr %retval, align 4, !dbg !5315
  br label %return, !dbg !5315

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %flags.addr, align 8, !dbg !5316
  %and1 = and i64 %1, 1, !dbg !5318
  %tobool2 = icmp ne i64 %and1, 0, !dbg !5318
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !5319

if.then3:                                         ; preds = %if.end
  store i32 4, ptr %retval, align 4, !dbg !5320
  br label %return, !dbg !5320

if.end4:                                          ; preds = %if.end
  %2 = load ptr, ptr %owner.addr, align 8, !dbg !5321
  %tobool5 = icmp ne ptr %2, null, !dbg !5321
  %3 = zext i1 %tobool5 to i64, !dbg !5321
  %cond = select i1 %tobool5, i32 2, i32 1, !dbg !5321
  store i32 %cond, ptr %retval, align 4, !dbg !5322
  br label %return, !dbg !5322

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %4 = load i32, ptr %retval, align 4, !dbg !5323
  ret i32 %4, !dbg !5323
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rwsem_clear_reader_owned(ptr noundef %sem) #4 align 16 !dbg !5324 {
entry:
  %sem.addr = alloca ptr, align 8
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !5326, metadata !DIExpression()), !dbg !5327
  ret void, !dbg !5328
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @atomic_long_add_return_release(i64 noundef %i, ptr noundef %v) #2 align 16 !dbg !5329 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5331, metadata !DIExpression()), !dbg !5333
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5332, metadata !DIExpression()), !dbg !5334
  br label %do.body, !dbg !5335

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5336

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5338
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #13, !dbg !5339
  %1 = load i64, ptr %i.addr, align 8, !dbg !5340
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5341
  %call = call i64 @raw_atomic_long_add_return_release(i64 noundef %1, ptr noundef %2) #13, !dbg !5342
  ret i64 %call, !dbg !5343
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @rwsem_wake(ptr noundef %sem) #0 align 16 !dbg !5344 {
entry:
  %sem.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %wake_q = alloca %struct.wake_q_head, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy4 = alloca i64, align 8
  %__dummy25 = alloca i64, align 8
  %tmp8 = alloca i32, align 4
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !5348, metadata !DIExpression()), !dbg !5359
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #14, !dbg !5360
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5349, metadata !DIExpression()), !dbg !5361
  call void @llvm.lifetime.start.p0(i64 16, ptr %wake_q) #14, !dbg !5362
  call void @llvm.dbg.declare(metadata ptr %wake_q, metadata !5350, metadata !DIExpression()), !dbg !5362
  %first = getelementptr inbounds %struct.wake_q_head, ptr %wake_q, i32 0, i32 0, !dbg !5362
  store ptr inttoptr (i64 1 to ptr), ptr %first, align 8, !dbg !5362
  %lastp = getelementptr inbounds %struct.wake_q_head, ptr %wake_q, i32 0, i32 1, !dbg !5362
  %first1 = getelementptr inbounds %struct.wake_q_head, ptr %wake_q, i32 0, i32 0, !dbg !5362
  store ptr %first1, ptr %lastp, align 8, !dbg !5362
  br label %do.body, !dbg !5363

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #14, !dbg !5364
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5351, metadata !DIExpression()), !dbg !5364
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #14, !dbg !5364
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5354, metadata !DIExpression()), !dbg !5364
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5364
  %conv = zext i1 %cmp to i32, !dbg !5364
  store i32 1, ptr %tmp, align 4, !dbg !5364
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #14, !dbg !5365
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #14, !dbg !5365
  %0 = load i32, ptr %tmp, align 4, !dbg !5364
  %1 = load ptr, ptr %sem.addr, align 8, !dbg !5365
  %wait_lock = getelementptr inbounds %struct.rw_semaphore, ptr %1, i32 0, i32 3, !dbg !5365
  %call = call i64 @_raw_spin_lock_irqsave(ptr noundef %wait_lock) #13, !dbg !5365
  store i64 %call, ptr %flags, align 8, !dbg !5365
  br label %do.cond, !dbg !5365

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5365

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %sem.addr, align 8, !dbg !5366
  %wait_list = getelementptr inbounds %struct.rw_semaphore, ptr %2, i32 0, i32 4, !dbg !5368
  %call2 = call i32 @list_empty(ptr noundef %wait_list) #13, !dbg !5369
  %tobool = icmp ne i32 %call2, 0, !dbg !5369
  br i1 %tobool, label %if.end, label %if.then, !dbg !5370

if.then:                                          ; preds = %do.end
  %3 = load ptr, ptr %sem.addr, align 8, !dbg !5371
  call void @rwsem_mark_wake(ptr noundef %3, i32 noundef 0, ptr noundef %wake_q) #13, !dbg !5372
  br label %if.end, !dbg !5372

if.end:                                           ; preds = %if.then, %do.end
  br label %do.body3, !dbg !5373

do.body3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy4) #14, !dbg !5374
  call void @llvm.dbg.declare(metadata ptr %__dummy4, metadata !5355, metadata !DIExpression()), !dbg !5374
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy25) #14, !dbg !5374
  call void @llvm.dbg.declare(metadata ptr %__dummy25, metadata !5358, metadata !DIExpression()), !dbg !5374
  %cmp6 = icmp eq ptr %__dummy4, %__dummy25, !dbg !5374
  %conv7 = zext i1 %cmp6 to i32, !dbg !5374
  store i32 1, ptr %tmp8, align 4, !dbg !5374
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy25) #14, !dbg !5375
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy4) #14, !dbg !5375
  %4 = load i32, ptr %tmp8, align 4, !dbg !5374
  %5 = load ptr, ptr %sem.addr, align 8, !dbg !5375
  %wait_lock9 = getelementptr inbounds %struct.rw_semaphore, ptr %5, i32 0, i32 3, !dbg !5375
  %6 = load i64, ptr %flags, align 8, !dbg !5375
  call void @_raw_spin_unlock_irqrestore(ptr noundef %wait_lock9, i64 noundef %6) #13, !dbg !5375
  br label %do.cond10, !dbg !5375

do.cond10:                                        ; preds = %do.body3
  br label %do.end11, !dbg !5375

do.end11:                                         ; preds = %do.cond10
  call void @wake_up_q(ptr noundef %wake_q) #13, !dbg !5376
  %7 = load ptr, ptr %sem.addr, align 8, !dbg !5377
  call void @llvm.lifetime.end.p0(i64 16, ptr %wake_q) #14, !dbg !5378
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #14, !dbg !5378
  ret ptr %7, !dbg !5379
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic_long_add_return_release(i64 noundef %i, ptr noundef %v) #2 align 16 !dbg !5380 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5382, metadata !DIExpression()), !dbg !5384
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5383, metadata !DIExpression()), !dbg !5385
  %0 = load i64, ptr %i.addr, align 8, !dbg !5386
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5387
  %call = call i64 @raw_atomic64_add_return_release(i64 noundef %0, ptr noundef %1) #13, !dbg !5388
  ret i64 %call, !dbg !5389
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_add_return_release(i64 noundef %i, ptr noundef %v) #2 align 16 !dbg !5390 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5392, metadata !DIExpression()), !dbg !5394
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5393, metadata !DIExpression()), !dbg !5395
  %0 = load i64, ptr %i.addr, align 8, !dbg !5396
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5397
  %call = call i64 @arch_atomic64_add_return(i64 noundef %0, ptr noundef %1) #13, !dbg !5398
  ret i64 %call, !dbg !5399
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5400 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #6 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5403 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #6 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rwsem_clear_owner(ptr noundef %sem) #4 align 16 !dbg !5406 {
entry:
  %sem.addr = alloca ptr, align 8
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !5408, metadata !DIExpression()), !dbg !5409
  br label %do.body, !dbg !5410

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5411

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !5413
  %owner = getelementptr inbounds %struct.rw_semaphore, ptr %0, i32 0, i32 1, !dbg !5414
  call void @atomic_long_set(ptr noundef %owner, i64 noundef 0) #13, !dbg !5415
  ret void, !dbg !5416
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @atomic_long_fetch_add_release(i64 noundef %i, ptr noundef %v) #2 align 16 !dbg !5417 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5419, metadata !DIExpression()), !dbg !5421
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5420, metadata !DIExpression()), !dbg !5422
  br label %do.body, !dbg !5423

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5424

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5426
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #13, !dbg !5427
  %1 = load i64, ptr %i.addr, align 8, !dbg !5428
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5429
  %call = call i64 @raw_atomic_long_fetch_add_release(i64 noundef %1, ptr noundef %2) #13, !dbg !5430
  ret i64 %call, !dbg !5431
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic_long_fetch_add_release(i64 noundef %i, ptr noundef %v) #2 align 16 !dbg !5432 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5434, metadata !DIExpression()), !dbg !5436
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5435, metadata !DIExpression()), !dbg !5437
  %0 = load i64, ptr %i.addr, align 8, !dbg !5438
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5439
  %call = call i64 @raw_atomic64_fetch_add_release(i64 noundef %0, ptr noundef %1) #13, !dbg !5440
  ret i64 %call, !dbg !5441
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_fetch_add_release(i64 noundef %i, ptr noundef %v) #2 align 16 !dbg !5442 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5444, metadata !DIExpression()), !dbg !5446
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5445, metadata !DIExpression()), !dbg !5447
  %0 = load i64, ptr %i.addr, align 8, !dbg !5448
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5449
  %call = call i64 @arch_atomic64_fetch_add(i64 noundef %0, ptr noundef %1) #13, !dbg !5450
  ret i64 %call, !dbg !5451
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @rwsem_downgrade_wake(ptr noundef %sem) #0 align 16 !dbg !5452 {
entry:
  %sem.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %wake_q = alloca %struct.wake_q_head, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy4 = alloca i64, align 8
  %__dummy25 = alloca i64, align 8
  %tmp8 = alloca i32, align 4
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !5454, metadata !DIExpression()), !dbg !5465
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #14, !dbg !5466
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5455, metadata !DIExpression()), !dbg !5467
  call void @llvm.lifetime.start.p0(i64 16, ptr %wake_q) #14, !dbg !5468
  call void @llvm.dbg.declare(metadata ptr %wake_q, metadata !5456, metadata !DIExpression()), !dbg !5468
  %first = getelementptr inbounds %struct.wake_q_head, ptr %wake_q, i32 0, i32 0, !dbg !5468
  store ptr inttoptr (i64 1 to ptr), ptr %first, align 8, !dbg !5468
  %lastp = getelementptr inbounds %struct.wake_q_head, ptr %wake_q, i32 0, i32 1, !dbg !5468
  %first1 = getelementptr inbounds %struct.wake_q_head, ptr %wake_q, i32 0, i32 0, !dbg !5468
  store ptr %first1, ptr %lastp, align 8, !dbg !5468
  br label %do.body, !dbg !5469

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #14, !dbg !5470
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5457, metadata !DIExpression()), !dbg !5470
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #14, !dbg !5470
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5460, metadata !DIExpression()), !dbg !5470
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5470
  %conv = zext i1 %cmp to i32, !dbg !5470
  store i32 1, ptr %tmp, align 4, !dbg !5470
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #14, !dbg !5471
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #14, !dbg !5471
  %0 = load i32, ptr %tmp, align 4, !dbg !5470
  %1 = load ptr, ptr %sem.addr, align 8, !dbg !5471
  %wait_lock = getelementptr inbounds %struct.rw_semaphore, ptr %1, i32 0, i32 3, !dbg !5471
  %call = call i64 @_raw_spin_lock_irqsave(ptr noundef %wait_lock) #13, !dbg !5471
  store i64 %call, ptr %flags, align 8, !dbg !5471
  br label %do.cond, !dbg !5471

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5471

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %sem.addr, align 8, !dbg !5472
  %wait_list = getelementptr inbounds %struct.rw_semaphore, ptr %2, i32 0, i32 4, !dbg !5474
  %call2 = call i32 @list_empty(ptr noundef %wait_list) #13, !dbg !5475
  %tobool = icmp ne i32 %call2, 0, !dbg !5475
  br i1 %tobool, label %if.end, label %if.then, !dbg !5476

if.then:                                          ; preds = %do.end
  %3 = load ptr, ptr %sem.addr, align 8, !dbg !5477
  call void @rwsem_mark_wake(ptr noundef %3, i32 noundef 2, ptr noundef %wake_q) #13, !dbg !5478
  br label %if.end, !dbg !5478

if.end:                                           ; preds = %if.then, %do.end
  br label %do.body3, !dbg !5479

do.body3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy4) #14, !dbg !5480
  call void @llvm.dbg.declare(metadata ptr %__dummy4, metadata !5461, metadata !DIExpression()), !dbg !5480
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy25) #14, !dbg !5480
  call void @llvm.dbg.declare(metadata ptr %__dummy25, metadata !5464, metadata !DIExpression()), !dbg !5480
  %cmp6 = icmp eq ptr %__dummy4, %__dummy25, !dbg !5480
  %conv7 = zext i1 %cmp6 to i32, !dbg !5480
  store i32 1, ptr %tmp8, align 4, !dbg !5480
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy25) #14, !dbg !5481
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy4) #14, !dbg !5481
  %4 = load i32, ptr %tmp8, align 4, !dbg !5480
  %5 = load ptr, ptr %sem.addr, align 8, !dbg !5481
  %wait_lock9 = getelementptr inbounds %struct.rw_semaphore, ptr %5, i32 0, i32 3, !dbg !5481
  %6 = load i64, ptr %flags, align 8, !dbg !5481
  call void @_raw_spin_unlock_irqrestore(ptr noundef %wait_lock9, i64 noundef %6) #13, !dbg !5481
  br label %do.cond10, !dbg !5481

do.cond10:                                        ; preds = %do.body3
  br label %do.end11, !dbg !5481

do.end11:                                         ; preds = %do.cond10
  call void @wake_up_q(ptr noundef %wake_q) #13, !dbg !5482
  %7 = load ptr, ptr %sem.addr, align 8, !dbg !5483
  call void @llvm.lifetime.end.p0(i64 16, ptr %wake_q) #14, !dbg !5484
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #14, !dbg !5484
  ret ptr %7, !dbg !5485
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #9 = { nocallback nounwind }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone }
attributes #14 = { nounwind }
attributes #15 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!2076}
!llvm.module.flags = !{!2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084}
!llvm.ident = !{!2085}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___init_rwsem254", scope: !2, file: !3, line: 331, type: !53, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/locking/.rwsem.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/locking/rwsem\22 -D KBUILD_BASENAME=\22rwsem\22 -D KBUILD_MODNAME=\22rwsem\22 -D __KBUILD_MODNAME=kmod_rwsem -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/locking/rwsem.ll kernel/locking/rwsem.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !52, globals: !1924, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "kernel/locking/rwsem.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cb67d2ec95a3db3631311aba07da0f80")
!4 = !{!5, !11, !16, !22, !29, !33, !38, !46}
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
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !17, line: 16, baseType: !7, size: 32, elements: !18)
!17 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!18 = !{!19, !20, !21}
!19 = !DIEnumerator(name: "TT_NONE", value: 0)
!20 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!21 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !23, line: 51, baseType: !7, size: 32, elements: !24)
!23 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!24 = !{!25, !26, !27, !28}
!25 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!26 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!27 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!28 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rwsem_waiter_type", file: !3, line: 333, baseType: !7, size: 32, elements: !30)
!30 = !{!31, !32}
!31 = !DIEnumerator(name: "RWSEM_WAITING_FOR_WRITE", value: 0)
!32 = !DIEnumerator(name: "RWSEM_WAITING_FOR_READ", value: 1)
!33 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rwsem_wake_type", file: !3, line: 348, baseType: !7, size: 32, elements: !34)
!34 = !{!35, !36, !37}
!35 = !DIEnumerator(name: "RWSEM_WAKE_ANY", value: 0)
!36 = !DIEnumerator(name: "RWSEM_WAKE_READERS", value: 1)
!37 = !DIEnumerator(name: "RWSEM_WAKE_READ_OWNED", value: 2)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !39, line: 119, baseType: !7, size: 32, elements: !40)
!39 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!40 = !{!41, !42, !43, !44, !45}
!41 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!42 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!43 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!44 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!45 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!46 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "owner_state", file: !3, line: 679, baseType: !7, size: 32, elements: !47)
!47 = !{!48, !49, !50, !51}
!48 = !DIEnumerator(name: "OWNER_NULL", value: 1)
!49 = !DIEnumerator(name: "OWNER_WRITER", value: 2)
!50 = !DIEnumerator(name: "OWNER_READER", value: 4)
!51 = !DIEnumerator(name: "OWNER_NONSPINNABLE", value: 8)
!52 = !{!53, !54, !61, !69, !71, !72, !74, !75, !78, !79, !84, !85, !1291, !1887, !1890, !1892, !1894, !595, !1902, !803, !1903, !1906, !1913, !1915, !7, !1916, !1917, !1919, !1920, !1922}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !57, line: 22, baseType: !58)
!57 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !59, line: 30, baseType: !60)
!59 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!60 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !65, line: 190, size: 128, elements: !66)
!65 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!66 = !{!67, !68}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !64, file: !65, line: 191, baseType: !63, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !64, file: !65, line: 191, baseType: !63, size: 64, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !71)
!71 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !57, line: 21, baseType: !73)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !59, line: 27, baseType: !7)
!74 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !60)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !57, line: 23, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !59, line: 31, baseType: !83)
!83 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !87, line: 746, size: 58368, elements: !88)
!87 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!88 = !{!89, !97, !98, !99, !108, !109, !110, !111, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !192, !203, !330, !334, !337, !368, !369, !370, !371, !382, !384, !385, !386, !387, !388, !389, !400, !401, !404, !405, !406, !407, !408, !409, !410, !411, !418, !419, !426, !427, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !730, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !786, !788, !789, !790, !802, !804, !805, !806, !807, !808, !809, !815, !816, !817, !818, !819, !820, !821, !835, !841, !1041, !1042, !1043, !1044, !1048, !1051, !1058, !1063, !1066, !1069, !1072, !1075, !1220, !1251, !1252, !1253, !1254, !1255, !1256, !1259, !1260, !1261, !1264, !1265, !1266, !1275, !1283, !1284, !1285, !1286, !1287, !1292, !1293, !1294, !1297, !1298, !1301, !1304, !1307, !1310, !1313, !1314, !1401, !1402, !1403, !1404, !1405, !1411, !1412, !1413, !1414, !1417, !1418, !1421, !1424, !1425, !1428, !1429, !1430, !1433, !1434, !1435, !1438, !1439, !1440, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1472, !1475, !1543, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1555, !1627, !1629, !1630, !1631, !1632, !1633, !1645, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1662, !1663, !1664}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !86, file: !87, line: 752, baseType: !90, size: 192)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !91, line: 56, size: 192, elements: !92)
!91 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!92 = !{!93, !94, !95, !96}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !90, file: !91, line: 57, baseType: !74, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !90, file: !91, line: 58, baseType: !74, size: 64, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !90, file: !91, line: 59, baseType: !72, size: 32, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !90, file: !91, line: 61, baseType: !72, size: 32, offset: 160)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !86, file: !87, line: 754, baseType: !7, size: 32, offset: 192)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !86, file: !87, line: 767, baseType: !53, size: 64, offset: 256)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !86, file: !87, line: 768, baseType: !100, size: 32, offset: 320)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !39, line: 113, baseType: !101)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !39, line: 111, size: 32, elements: !102)
!102 = !{!103}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !101, file: !39, line: 112, baseType: !104, size: 32)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !65, line: 174, baseType: !105)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !65, line: 172, size: 32, elements: !106)
!106 = !{!107}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !105, file: !65, line: 173, baseType: !71, size: 32)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !86, file: !87, line: 770, baseType: !7, size: 32, offset: 352)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !86, file: !87, line: 771, baseType: !7, size: 32, offset: 384)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !86, file: !87, line: 774, baseType: !71, size: 32, offset: 416)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !86, file: !87, line: 775, baseType: !112, size: 128, offset: 448)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !113, line: 58, size: 128, elements: !114)
!113 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!114 = !{!115, !121, !126, !130}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !112, file: !113, line: 59, baseType: !116, size: 64)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !117, line: 60, size: 64, elements: !118)
!117 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!118 = !{!119}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !116, file: !117, line: 61, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, scope: !112, file: !113, line: 60, baseType: !122, size: 32, offset: 64)
!122 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !112, file: !113, line: 60, size: 32, elements: !123)
!123 = !{!124, !125}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !122, file: !113, line: 61, baseType: !7, size: 32)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !122, file: !113, line: 62, baseType: !104, size: 32)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !112, file: !113, line: 65, baseType: !127, size: 16, offset: 96)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !57, line: 19, baseType: !128)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !59, line: 24, baseType: !129)
!129 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !112, file: !113, line: 65, baseType: !127, size: 16, offset: 112)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !86, file: !87, line: 776, baseType: !7, size: 32, offset: 576)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !86, file: !87, line: 777, baseType: !74, size: 64, offset: 640)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !86, file: !87, line: 778, baseType: !85, size: 64, offset: 704)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !86, file: !87, line: 787, baseType: !71, size: 32, offset: 768)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !86, file: !87, line: 788, baseType: !71, size: 32, offset: 800)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !86, file: !87, line: 790, baseType: !71, size: 32, offset: 832)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !86, file: !87, line: 792, baseType: !71, size: 32, offset: 864)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !86, file: !87, line: 793, baseType: !71, size: 32, offset: 896)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !86, file: !87, line: 794, baseType: !71, size: 32, offset: 928)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !86, file: !87, line: 795, baseType: !7, size: 32, offset: 960)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !86, file: !87, line: 797, baseType: !142, size: 2048, offset: 1024)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !87, line: 551, size: 2048, elements: !143)
!143 = !{!144, !149, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !171, !174, !175, !176}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !142, file: !87, line: 553, baseType: !145, size: 128)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !87, line: 411, size: 128, elements: !146)
!146 = !{!147, !148}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !145, file: !87, line: 412, baseType: !74, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !145, file: !87, line: 413, baseType: !72, size: 32, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !142, file: !87, line: 554, baseType: !150, size: 192, align: 64, offset: 128)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !151, line: 5, size: 192, align: 64, elements: !152)
!151 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!152 = !{!153, !154, !156}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !150, file: !151, line: 6, baseType: !74, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !150, file: !151, line: 7, baseType: !155, size: 64, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !150, file: !151, line: 8, baseType: !155, size: 64, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !142, file: !87, line: 555, baseType: !81, size: 64, offset: 320)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !142, file: !87, line: 556, baseType: !81, size: 64, offset: 384)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !142, file: !87, line: 558, baseType: !64, size: 128, offset: 448)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !142, file: !87, line: 559, baseType: !7, size: 32, offset: 576)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !142, file: !87, line: 561, baseType: !81, size: 64, offset: 640)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !142, file: !87, line: 562, baseType: !81, size: 64, offset: 704)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !142, file: !87, line: 563, baseType: !81, size: 64, offset: 768)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !142, file: !87, line: 564, baseType: !81, size: 64, offset: 832)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !142, file: !87, line: 565, baseType: !56, size: 64, offset: 896)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !142, file: !87, line: 566, baseType: !81, size: 64, offset: 960)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !142, file: !87, line: 568, baseType: !81, size: 64, offset: 1024)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !142, file: !87, line: 571, baseType: !71, size: 32, offset: 1088)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !142, file: !87, line: 572, baseType: !170, size: 64, offset: 1152)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !142, file: !87, line: 574, baseType: !172, size: 64, offset: 1216)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !87, line: 49, flags: DIFlagFwdDecl)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !142, file: !87, line: 576, baseType: !172, size: 64, offset: 1280)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !142, file: !87, line: 578, baseType: !74, size: 64, offset: 1344)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !142, file: !87, line: 588, baseType: !177, size: 512, align: 512, offset: 1536)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !87, line: 497, size: 512, align: 512, elements: !178)
!178 = !{!179, !180, !181, !182, !183, !184, !185, !186, !187}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !177, file: !87, line: 498, baseType: !81, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !177, file: !87, line: 499, baseType: !81, size: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !177, file: !87, line: 500, baseType: !81, size: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !177, file: !87, line: 501, baseType: !72, size: 32, offset: 192)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !177, file: !87, line: 502, baseType: !72, size: 32, offset: 224)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !177, file: !87, line: 503, baseType: !74, size: 64, offset: 256)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !177, file: !87, line: 504, baseType: !74, size: 64, offset: 320)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !177, file: !87, line: 505, baseType: !74, size: 64, offset: 384)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !177, file: !87, line: 506, baseType: !188, size: 64, align: 64, offset: 448)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !87, line: 445, size: 64, align: 64, elements: !189)
!189 = !{!190, !191}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !188, file: !87, line: 446, baseType: !7, size: 32)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !188, file: !87, line: 447, baseType: !7, size: 32, offset: 32)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !86, file: !87, line: 798, baseType: !193, size: 384, offset: 3072)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !87, line: 592, size: 384, elements: !194)
!194 = !{!195, !196, !197, !198, !199, !200, !201}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !193, file: !87, line: 593, baseType: !64, size: 128)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !193, file: !87, line: 594, baseType: !74, size: 64, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !193, file: !87, line: 595, baseType: !74, size: 64, offset: 192)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !193, file: !87, line: 596, baseType: !7, size: 32, offset: 256)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !193, file: !87, line: 597, baseType: !129, size: 16, offset: 288)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !193, file: !87, line: 598, baseType: !129, size: 16, offset: 304)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !193, file: !87, line: 600, baseType: !202, size: 64, offset: 320)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !86, file: !87, line: 799, baseType: !204, size: 1792, offset: 3456)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !87, line: 610, size: 1792, elements: !205)
!205 = !{!206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !327, !328}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !204, file: !87, line: 611, baseType: !150, size: 192, align: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !204, file: !87, line: 618, baseType: !81, size: 64, offset: 192)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !204, file: !87, line: 619, baseType: !81, size: 64, offset: 256)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !204, file: !87, line: 620, baseType: !81, size: 64, offset: 320)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !204, file: !87, line: 621, baseType: !81, size: 64, offset: 384)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !204, file: !87, line: 622, baseType: !81, size: 64, offset: 448)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !204, file: !87, line: 629, baseType: !56, size: 64, offset: 512)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !204, file: !87, line: 630, baseType: !81, size: 64, offset: 576)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !204, file: !87, line: 631, baseType: !7, size: 32, offset: 640)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !204, file: !87, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !204, file: !87, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !204, file: !87, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !204, file: !87, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !204, file: !87, line: 662, baseType: !220, size: 512, offset: 704)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !12, line: 118, size: 512, elements: !221)
!221 = !{!222, !230, !231, !236, !323, !324, !325, !326}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !220, file: !12, line: 119, baseType: !223, size: 256)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !224, line: 9, size: 256, elements: !225)
!224 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!225 = !{!226, !227}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !223, file: !224, line: 10, baseType: !150, size: 192, align: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !223, file: !224, line: 11, baseType: !228, size: 64, offset: 192)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !229, line: 29, baseType: !56)
!229 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !220, file: !12, line: 120, baseType: !228, size: 64, offset: 256)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !220, file: !12, line: 121, baseType: !232, size: 64, offset: 320)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!11, !235}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !220, file: !12, line: 122, baseType: !237, size: 64, offset: 384)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !12, line: 159, size: 512, align: 512, elements: !239)
!239 = !{!240, !291, !292, !296, !306, !307, !318, !322}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !238, file: !12, line: 160, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !12, line: 215, size: 4608, align: 512, elements: !243)
!243 = !{!244, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !242, file: !12, line: 216, baseType: !245, size: 32)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !246, line: 23, baseType: !247)
!246 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !246, line: 14, size: 32, elements: !248)
!248 = !{!249}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !247, file: !246, line: 15, baseType: !250, size: 32)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !251, line: 44, baseType: !252)
!251 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !251, line: 14, size: 32, elements: !253)
!253 = !{!254}
!254 = !DIDerivedType(tag: DW_TAG_member, scope: !252, file: !251, line: 15, baseType: !255, size: 32)
!255 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !252, file: !251, line: 15, size: 32, elements: !256)
!256 = !{!257, !258, !266}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !255, file: !251, line: 16, baseType: !104, size: 32)
!258 = !DIDerivedType(tag: DW_TAG_member, scope: !255, file: !251, line: 24, baseType: !259, size: 16)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !255, file: !251, line: 24, size: 16, elements: !260)
!260 = !{!261, !265}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !259, file: !251, line: 25, baseType: !262, size: 8)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !57, line: 17, baseType: !263)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !59, line: 21, baseType: !264)
!264 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !259, file: !251, line: 26, baseType: !262, size: 8, offset: 8)
!266 = !DIDerivedType(tag: DW_TAG_member, scope: !255, file: !251, line: 28, baseType: !267, size: 32)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !255, file: !251, line: 28, size: 32, elements: !268)
!268 = !{!269, !270}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !267, file: !251, line: 29, baseType: !127, size: 16)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !267, file: !251, line: 30, baseType: !127, size: 16, offset: 16)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !242, file: !12, line: 217, baseType: !7, size: 32, offset: 32)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !242, file: !12, line: 218, baseType: !7, size: 32, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !242, file: !12, line: 219, baseType: !7, size: 32, offset: 96)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !242, file: !12, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !242, file: !12, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !242, file: !12, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !242, file: !12, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !242, file: !12, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !242, file: !12, line: 226, baseType: !7, size: 32, offset: 160)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !242, file: !12, line: 227, baseType: !129, size: 16, offset: 192)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !242, file: !12, line: 228, baseType: !129, size: 16, offset: 208)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !242, file: !12, line: 229, baseType: !7, size: 32, offset: 224)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !242, file: !12, line: 235, baseType: !228, size: 64, offset: 256)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !242, file: !12, line: 236, baseType: !235, size: 64, offset: 320)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !242, file: !12, line: 237, baseType: !228, size: 64, offset: 384)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !242, file: !12, line: 238, baseType: !235, size: 64, offset: 448)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !242, file: !12, line: 239, baseType: !288, size: 4096, align: 512, offset: 512)
!288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, size: 4096, align: 512, elements: !289)
!289 = !{!290}
!290 = !DISubrange(count: 8)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !238, file: !12, line: 161, baseType: !7, size: 32, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !238, file: !12, line: 162, baseType: !293, size: 32, offset: 96)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !65, line: 32, baseType: !294)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !295, line: 96, baseType: !71)
!295 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!296 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !238, file: !12, line: 163, baseType: !297, size: 32, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !298, line: 274, baseType: !299)
!298 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !298, line: 274, size: 32, elements: !300)
!300 = !{!301}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !299, file: !298, line: 274, baseType: !302, size: 32)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !298, line: 69, baseType: !303)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !298, line: 64, size: 32, elements: !304)
!304 = !{!305}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !303, file: !298, line: 65, baseType: !7, size: 32)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !238, file: !12, line: 164, baseType: !235, size: 64, offset: 192)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !238, file: !12, line: 165, baseType: !308, size: 128, offset: 256)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !224, line: 14, size: 128, elements: !309)
!309 = !{!310}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !308, file: !224, line: 15, baseType: !311, size: 128)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !151, line: 26, size: 128, elements: !312)
!312 = !{!313, !317}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !311, file: !151, line: 27, baseType: !314, size: 64)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !151, line: 12, size: 64, elements: !315)
!315 = !{!316}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !314, file: !151, line: 13, baseType: !155, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !311, file: !151, line: 28, baseType: !155, size: 64, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !238, file: !12, line: 166, baseType: !319, size: 64, offset: 384)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{!228}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !238, file: !12, line: 167, baseType: !228, size: 64, offset: 448)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !220, file: !12, line: 123, baseType: !262, size: 8, offset: 448)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !220, file: !12, line: 124, baseType: !262, size: 8, offset: 456)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !220, file: !12, line: 125, baseType: !262, size: 8, offset: 464)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !220, file: !12, line: 126, baseType: !262, size: 8, offset: 472)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !204, file: !87, line: 671, baseType: !220, size: 512, offset: 1216)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !204, file: !87, line: 679, baseType: !329, size: 64, offset: 1728)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !86, file: !87, line: 800, baseType: !331, size: 64, offset: 5248)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !333)
!333 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !87, line: 800, flags: DIFlagFwdDecl)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !86, file: !87, line: 809, baseType: !335, size: 64, offset: 5312)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !87, line: 70, flags: DIFlagFwdDecl)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !86, file: !87, line: 825, baseType: !338, size: 2048, align: 512, offset: 5632)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !87, line: 509, size: 2048, align: 512, elements: !339)
!339 = !{!340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !338, file: !87, line: 511, baseType: !81, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !338, file: !87, line: 512, baseType: !81, size: 64, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !338, file: !87, line: 513, baseType: !81, size: 64, offset: 128)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !338, file: !87, line: 514, baseType: !81, size: 64, offset: 192)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !338, file: !87, line: 515, baseType: !81, size: 64, offset: 256)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !338, file: !87, line: 516, baseType: !81, size: 64, offset: 320)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !338, file: !87, line: 518, baseType: !81, size: 64, offset: 384)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !338, file: !87, line: 519, baseType: !81, size: 64, offset: 448)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !338, file: !87, line: 520, baseType: !56, size: 64, offset: 512)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !338, file: !87, line: 522, baseType: !81, size: 64, offset: 576)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !338, file: !87, line: 523, baseType: !81, size: 64, offset: 640)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !338, file: !87, line: 524, baseType: !56, size: 64, offset: 704)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !338, file: !87, line: 526, baseType: !56, size: 64, offset: 768)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !338, file: !87, line: 527, baseType: !81, size: 64, offset: 832)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !338, file: !87, line: 529, baseType: !81, size: 64, offset: 896)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !338, file: !87, line: 530, baseType: !81, size: 64, offset: 960)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !338, file: !87, line: 531, baseType: !81, size: 64, offset: 1024)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !338, file: !87, line: 532, baseType: !81, size: 64, offset: 1088)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !338, file: !87, line: 533, baseType: !81, size: 64, offset: 1152)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !338, file: !87, line: 535, baseType: !81, size: 64, offset: 1216)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !338, file: !87, line: 536, baseType: !81, size: 64, offset: 1280)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !338, file: !87, line: 537, baseType: !81, size: 64, offset: 1344)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !338, file: !87, line: 538, baseType: !81, size: 64, offset: 1408)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !338, file: !87, line: 539, baseType: !81, size: 64, offset: 1472)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !338, file: !87, line: 540, baseType: !81, size: 64, offset: 1536)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !338, file: !87, line: 541, baseType: !81, size: 64, offset: 1600)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !338, file: !87, line: 542, baseType: !81, size: 64, offset: 1664)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !338, file: !87, line: 543, baseType: !81, size: 64, offset: 1728)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !86, file: !87, line: 833, baseType: !7, size: 32, offset: 7680)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !86, file: !87, line: 836, baseType: !7, size: 32, offset: 7712)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !86, file: !87, line: 837, baseType: !71, size: 32, offset: 7744)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !86, file: !87, line: 838, baseType: !372, size: 64, offset: 7808)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !374)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !375, line: 19, baseType: !376)
!375 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !375, line: 19, size: 64, elements: !377)
!377 = !{!378}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !376, file: !375, line: 19, baseType: !379, size: 64)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 64, elements: !380)
!380 = !{!381}
!381 = !DISubrange(count: 1)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !86, file: !87, line: 839, baseType: !383, size: 64, offset: 7872)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !86, file: !87, line: 840, baseType: !374, size: 64, offset: 7936)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !86, file: !87, line: 841, baseType: !53, size: 64, offset: 8000)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !86, file: !87, line: 843, baseType: !129, size: 16, offset: 8064)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !86, file: !87, line: 845, baseType: !129, size: 16, offset: 8080)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !86, file: !87, line: 848, baseType: !71, size: 32, offset: 8096)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !86, file: !87, line: 849, baseType: !390, size: 32, offset: 8128)
!390 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !87, line: 718, size: 32, elements: !391)
!391 = !{!392, !399}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !390, file: !87, line: 724, baseType: !393, size: 32)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !390, file: !87, line: 719, size: 32, elements: !394)
!394 = !{!395, !396, !397, !398}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !393, file: !87, line: 720, baseType: !262, size: 8)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !393, file: !87, line: 721, baseType: !262, size: 8, offset: 8)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !393, file: !87, line: 722, baseType: !262, size: 8, offset: 16)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !393, file: !87, line: 723, baseType: !262, size: 8, offset: 24)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !390, file: !87, line: 725, baseType: !72, size: 32)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !86, file: !87, line: 850, baseType: !64, size: 128, offset: 8192)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !86, file: !87, line: 851, baseType: !402, size: 64, offset: 8320)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !87, line: 60, flags: DIFlagFwdDecl)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !86, file: !87, line: 855, baseType: !74, size: 64, offset: 8384)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !86, file: !87, line: 856, baseType: !262, size: 8, offset: 8448)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !86, file: !87, line: 857, baseType: !262, size: 8, offset: 8456)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !86, file: !87, line: 858, baseType: !71, size: 32, offset: 8480)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !86, file: !87, line: 859, baseType: !64, size: 128, offset: 8512)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !86, file: !87, line: 860, baseType: !71, size: 32, offset: 8640)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !86, file: !87, line: 861, baseType: !64, size: 128, offset: 8704)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !86, file: !87, line: 873, baseType: !412, size: 256, offset: 8832)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !87, line: 376, size: 256, elements: !413)
!413 = !{!414, !415, !416, !417}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !412, file: !87, line: 381, baseType: !74, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !412, file: !87, line: 384, baseType: !83, size: 64, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !412, file: !87, line: 389, baseType: !83, size: 64, offset: 128)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !412, file: !87, line: 392, baseType: !83, size: 64, offset: 192)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !86, file: !87, line: 875, baseType: !64, size: 128, offset: 9088)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !86, file: !87, line: 877, baseType: !420, size: 320, offset: 9216)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !421, line: 86, size: 320, elements: !422)
!421 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!422 = !{!423, !424, !425}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !420, file: !421, line: 87, baseType: !71, size: 32)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !420, file: !421, line: 88, baseType: !64, size: 128, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !420, file: !421, line: 89, baseType: !64, size: 128, offset: 192)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !86, file: !87, line: 878, baseType: !150, size: 192, align: 64, offset: 9536)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !86, file: !87, line: 881, baseType: !428, size: 64, offset: 9728)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !430, line: 733, size: 10240, elements: !431)
!430 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!431 = !{!432, !647}
!432 = !DIDerivedType(tag: DW_TAG_member, scope: !429, file: !430, line: 734, baseType: !433, size: 10240)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !429, file: !430, line: 734, size: 10240, elements: !434)
!434 = !{!435, !439, !461, !468, !469, !470, !471, !472, !473, !481, !482, !483, !489, !490, !497, !498, !499, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !540, !554, !557, !613, !614, !615, !618, !622, !623, !626, !627, !628, !634, !635}
!435 = !DIDerivedType(tag: DW_TAG_member, scope: !433, file: !430, line: 739, baseType: !436, size: 512, align: 512)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !433, file: !430, line: 739, size: 512, align: 512, elements: !437)
!437 = !{!438}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !436, file: !430, line: 747, baseType: !104, size: 32)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !433, file: !430, line: 750, baseType: !440, size: 128, offset: 512)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !441, line: 218, size: 128, elements: !442)
!441 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!442 = !{!443, !459, !460}
!443 = !DIDerivedType(tag: DW_TAG_member, scope: !440, file: !441, line: 219, baseType: !444, size: 32)
!444 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !440, file: !441, line: 219, size: 32, elements: !445)
!445 = !{!446, !455}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !444, file: !441, line: 220, baseType: !447, size: 32)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !448, line: 29, baseType: !449)
!448 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !448, line: 17, size: 32, elements: !450)
!450 = !{!451}
!451 = !DIDerivedType(tag: DW_TAG_member, scope: !449, file: !448, line: 18, baseType: !452, size: 32)
!452 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !449, file: !448, line: 18, size: 32, elements: !453)
!453 = !{!454}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !452, file: !448, line: 19, baseType: !247, size: 32)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !444, file: !441, line: 221, baseType: !456)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !441, line: 197, baseType: !457)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !441, line: 197, elements: !458)
!458 = !{}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !440, file: !441, line: 223, baseType: !7, size: 32, offset: 32)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !440, file: !441, line: 224, baseType: !53, size: 64, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !433, file: !430, line: 752, baseType: !462, size: 64, offset: 640)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{!74, !465, !74, !74, !74, !74}
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !467, line: 537, flags: DIFlagFwdDecl)
!467 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!468 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !433, file: !430, line: 756, baseType: !74, size: 64, offset: 704)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !433, file: !430, line: 757, baseType: !74, size: 64, offset: 768)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !433, file: !430, line: 760, baseType: !74, size: 64, offset: 832)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !433, file: !430, line: 761, baseType: !74, size: 64, offset: 896)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !433, file: !430, line: 763, baseType: !74, size: 64, offset: 960)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !433, file: !430, line: 764, baseType: !474, size: 64, offset: 1024)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !467, line: 299, baseType: !476)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !467, line: 299, size: 64, elements: !477)
!477 = !{!478}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !476, file: !467, line: 299, baseType: !479, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !480, line: 18, baseType: !74)
!480 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!481 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !433, file: !430, line: 773, baseType: !104, size: 32, offset: 1088)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !433, file: !430, line: 785, baseType: !104, size: 32, offset: 1120)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !433, file: !430, line: 795, baseType: !484, size: 64, offset: 1152)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !430, line: 726, size: 128, elements: !486)
!486 = !{!487, !488}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !485, file: !430, line: 727, baseType: !81, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !485, file: !430, line: 728, baseType: !71, size: 32, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !433, file: !430, line: 801, baseType: !74, size: 64, offset: 1216)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !433, file: !430, line: 804, baseType: !491, size: 64, offset: 1280)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !492, line: 13, baseType: !493)
!492 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !65, line: 181, baseType: !494)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !65, line: 179, size: 64, elements: !495)
!495 = !{!496}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !494, file: !65, line: 180, baseType: !56, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !433, file: !430, line: 806, baseType: !71, size: 32, offset: 1344)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !433, file: !430, line: 808, baseType: !447, size: 32, offset: 1376)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !433, file: !430, line: 823, baseType: !500, size: 320, offset: 1408)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !501, line: 48, size: 320, elements: !502)
!501 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!502 = !{!503, !504, !505, !510, !511}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !500, file: !501, line: 49, baseType: !491, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !500, file: !501, line: 55, baseType: !491, size: 64, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !500, file: !501, line: 57, baseType: !506, size: 32, offset: 128)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !507, line: 15, size: 32, elements: !508)
!507 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!508 = !{!509}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !506, file: !507, line: 20, baseType: !104, size: 32)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !500, file: !501, line: 59, baseType: !245, size: 32, offset: 160)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !500, file: !501, line: 60, baseType: !64, size: 128, offset: 192)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !433, file: !430, line: 825, baseType: !64, size: 128, offset: 1728)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !433, file: !430, line: 845, baseType: !71, size: 32, offset: 1856)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !433, file: !430, line: 849, baseType: !74, size: 64, offset: 1920)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !433, file: !430, line: 850, baseType: !74, size: 64, offset: 1984)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !433, file: !430, line: 852, baseType: !74, size: 64, offset: 2048)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !433, file: !430, line: 853, baseType: !74, size: 64, offset: 2112)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !433, file: !430, line: 854, baseType: !493, size: 64, offset: 2176)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !433, file: !430, line: 855, baseType: !74, size: 64, offset: 2240)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !433, file: !430, line: 856, baseType: !74, size: 64, offset: 2304)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !433, file: !430, line: 857, baseType: !74, size: 64, offset: 2368)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !433, file: !430, line: 858, baseType: !74, size: 64, offset: 2432)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !433, file: !430, line: 865, baseType: !302, size: 32, offset: 2496)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !433, file: !430, line: 867, baseType: !447, size: 32, offset: 2528)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !433, file: !430, line: 869, baseType: !74, size: 64, offset: 2560)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !433, file: !430, line: 869, baseType: !74, size: 64, offset: 2624)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !433, file: !430, line: 869, baseType: !74, size: 64, offset: 2688)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !433, file: !430, line: 869, baseType: !74, size: 64, offset: 2752)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !433, file: !430, line: 870, baseType: !74, size: 64, offset: 2816)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !433, file: !430, line: 870, baseType: !74, size: 64, offset: 2880)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !433, file: !430, line: 870, baseType: !74, size: 64, offset: 2944)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !433, file: !430, line: 871, baseType: !74, size: 64, offset: 3008)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !433, file: !430, line: 871, baseType: !74, size: 64, offset: 3072)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !433, file: !430, line: 871, baseType: !74, size: 64, offset: 3136)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !433, file: !430, line: 871, baseType: !74, size: 64, offset: 3200)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !433, file: !430, line: 873, baseType: !537, size: 3328, offset: 3264)
!537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 3328, elements: !538)
!538 = !{!539}
!539 = !DISubrange(count: 52)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !433, file: !430, line: 875, baseType: !541, size: 1280, offset: 6592)
!541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !542, size: 1280, elements: !552)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !543, line: 22, size: 320, elements: !544)
!543 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!544 = !{!545, !546, !547, !548}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !542, file: !543, line: 23, baseType: !245, size: 32)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !542, file: !543, line: 24, baseType: !56, size: 64, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !542, file: !543, line: 26, baseType: !64, size: 128, offset: 128)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !542, file: !543, line: 28, baseType: !549, size: 64, offset: 256)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !57, line: 20, baseType: !551)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !59, line: 26, baseType: !71)
!552 = !{!553}
!553 = !DISubrange(count: 4)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !433, file: !430, line: 877, baseType: !555, size: 64, offset: 7872)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !430, line: 877, flags: DIFlagFwdDecl)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !433, file: !430, line: 880, baseType: !558, size: 1088, offset: 7936)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !559, line: 72, baseType: !560)
!559 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !559, line: 23, size: 1088, elements: !561)
!561 = !{!562, !563, !564, !565, !566, !569, !570, !578, !579, !607, !608, !609}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !560, file: !559, line: 28, baseType: !81, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !560, file: !559, line: 38, baseType: !493, size: 64, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !560, file: !559, line: 40, baseType: !74, size: 64, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !560, file: !559, line: 43, baseType: !500, size: 320, offset: 192)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !560, file: !559, line: 44, baseType: !567, size: 64, offset: 512)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !559, line: 44, flags: DIFlagFwdDecl)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !560, file: !559, line: 48, baseType: !74, size: 64, offset: 576)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !560, file: !559, line: 59, baseType: !571, size: 256, offset: 640)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !572, line: 66, size: 256, elements: !573)
!572 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!573 = !{!574, !575, !576, !577}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !571, file: !572, line: 67, baseType: !491, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !571, file: !572, line: 68, baseType: !245, size: 32, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !571, file: !572, line: 70, baseType: !506, size: 32, offset: 96)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !571, file: !572, line: 72, baseType: !64, size: 128, offset: 128)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !560, file: !559, line: 60, baseType: !53, size: 64, offset: 896)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !560, file: !559, line: 61, baseType: !580, size: 64, offset: 960)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !582)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !583, line: 13, size: 1216, elements: !584)
!583 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!584 = !{!585, !586, !587, !588, !589, !590, !591, !594, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !582, file: !583, line: 14, baseType: !53, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !582, file: !583, line: 15, baseType: !74, size: 64, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !582, file: !583, line: 17, baseType: !74, size: 64, offset: 128)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !582, file: !583, line: 17, baseType: !74, size: 64, offset: 192)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !582, file: !583, line: 18, baseType: !74, size: 64, offset: 256)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !582, file: !583, line: 18, baseType: !74, size: 64, offset: 320)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !582, file: !583, line: 19, baseType: !592, size: 64, offset: 384)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !582, file: !583, line: 21, baseType: !595, size: 64, offset: 448)
!595 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !582, file: !583, line: 23, baseType: !595, size: 64, offset: 512)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !582, file: !583, line: 24, baseType: !595, size: 64, offset: 576)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !582, file: !583, line: 25, baseType: !595, size: 64, offset: 640)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !582, file: !583, line: 26, baseType: !595, size: 64, offset: 704)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !582, file: !583, line: 27, baseType: !595, size: 64, offset: 768)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !582, file: !583, line: 28, baseType: !595, size: 64, offset: 832)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !582, file: !583, line: 29, baseType: !595, size: 64, offset: 896)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !582, file: !583, line: 30, baseType: !595, size: 64, offset: 960)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !582, file: !583, line: 31, baseType: !595, size: 64, offset: 1024)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !582, file: !583, line: 32, baseType: !595, size: 64, offset: 1088)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !582, file: !583, line: 33, baseType: !595, size: 64, offset: 1152)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !560, file: !559, line: 63, baseType: !104, size: 32, offset: 1024)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !560, file: !559, line: 69, baseType: !127, size: 16, offset: 1056)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !560, file: !559, line: 70, baseType: !610, size: 16, offset: 1072)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !57, line: 18, baseType: !611)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !59, line: 23, baseType: !612)
!612 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !433, file: !430, line: 882, baseType: !74, size: 64, offset: 9024)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !433, file: !430, line: 885, baseType: !447, size: 32, offset: 9088)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !433, file: !430, line: 886, baseType: !616, size: 64, offset: 9152)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !430, line: 732, flags: DIFlagFwdDecl)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !433, file: !430, line: 901, baseType: !619, size: 64, offset: 9216)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !621, line: 18, flags: DIFlagFwdDecl)
!621 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!622 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !433, file: !430, line: 904, baseType: !465, size: 64, offset: 9280)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !433, file: !430, line: 906, baseType: !624, size: 64, offset: 9344)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !430, line: 906, flags: DIFlagFwdDecl)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !433, file: !430, line: 930, baseType: !104, size: 32, offset: 9408)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !433, file: !430, line: 933, baseType: !104, size: 32, offset: 9440)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !433, file: !430, line: 935, baseType: !629, size: 64, offset: 9472)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !23, line: 103, size: 64, elements: !630)
!630 = !{!631}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !629, file: !23, line: 104, baseType: !632, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !23, line: 101, flags: DIFlagFwdDecl)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !433, file: !430, line: 940, baseType: !491, size: 64, offset: 9536)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !433, file: !430, line: 942, baseType: !636, size: 256, offset: 9600)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !637, line: 98, size: 256, elements: !638)
!637 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!638 = !{!639, !640, !641}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !636, file: !637, line: 99, baseType: !491, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !636, file: !637, line: 100, baseType: !64, size: 128, offset: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !636, file: !637, line: 101, baseType: !642, size: 64, offset: 192)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !637, line: 21, baseType: !643)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{null, !646}
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !429, file: !430, line: 986, baseType: !648, offset: 10240)
!648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, elements: !649)
!649 = !{!650}
!650 = !DISubrange(count: -1)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !86, file: !87, line: 882, baseType: !428, size: 64, offset: 9792)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !86, file: !87, line: 884, baseType: !71, size: 32, offset: 9856)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !86, file: !87, line: 885, baseType: !71, size: 32, offset: 9888)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !86, file: !87, line: 886, baseType: !71, size: 32, offset: 9920)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !86, file: !87, line: 888, baseType: !71, size: 32, offset: 9952)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !86, file: !87, line: 890, baseType: !74, size: 64, offset: 9984)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !86, file: !87, line: 893, baseType: !7, size: 32, offset: 10048)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !86, file: !87, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !86, file: !87, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !86, file: !87, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !86, file: !87, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !86, file: !87, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !86, file: !87, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !86, file: !87, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !86, file: !87, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !86, file: !87, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !86, file: !87, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !86, file: !87, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !86, file: !87, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !86, file: !87, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !86, file: !87, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !86, file: !87, line: 969, baseType: !74, size: 64, offset: 10176)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !86, file: !87, line: 971, baseType: !674, size: 448, offset: 10240)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !17, line: 25, size: 448, elements: !675)
!675 = !{!676, !677, !682}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !674, file: !17, line: 26, baseType: !74, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !674, file: !17, line: 27, baseType: !678, size: 64, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DISubroutineType(types: !680)
!680 = !{!595, !681}
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, scope: !674, file: !17, line: 28, baseType: !683, size: 320, offset: 128)
!683 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !674, file: !17, line: 28, size: 320, elements: !684)
!684 = !{!685, !695, !720}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !683, file: !17, line: 37, baseType: !686, size: 320)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !683, file: !17, line: 30, size: 320, elements: !687)
!687 = !{!688, !690, !691, !692, !693, !694}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !686, file: !17, line: 31, baseType: !689, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !686, file: !17, line: 32, baseType: !72, size: 32, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !686, file: !17, line: 33, baseType: !72, size: 32, offset: 96)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !686, file: !17, line: 34, baseType: !72, size: 32, offset: 128)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !686, file: !17, line: 35, baseType: !81, size: 64, offset: 192)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !686, file: !17, line: 36, baseType: !689, size: 64, offset: 256)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !683, file: !17, line: 47, baseType: !696, size: 192)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !683, file: !17, line: 39, size: 192, elements: !697)
!697 = !{!698, !699, !700, !719}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !696, file: !17, line: 40, baseType: !293, size: 32)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !696, file: !17, line: 41, baseType: !16, size: 32, offset: 32)
!700 = !DIDerivedType(tag: DW_TAG_member, scope: !696, file: !17, line: 42, baseType: !701, size: 64, offset: 64)
!701 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !696, file: !17, line: 42, size: 64, elements: !702)
!702 = !{!703, !711}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !701, file: !17, line: 43, baseType: !704, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !706, line: 7, size: 128, elements: !707)
!706 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!707 = !{!708, !710}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !705, file: !706, line: 8, baseType: !709, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !295, line: 93, baseType: !60)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !705, file: !706, line: 9, baseType: !60, size: 64, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !701, file: !17, line: 44, baseType: !712, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !714, line: 7, size: 64, elements: !715)
!714 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!715 = !{!716, !718}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !713, file: !714, line: 8, baseType: !717, size: 32)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !714, line: 5, baseType: !550)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !713, file: !714, line: 9, baseType: !550, size: 32, offset: 32)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !696, file: !17, line: 46, baseType: !81, size: 64, offset: 128)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !683, file: !17, line: 55, baseType: !721, size: 256)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !683, file: !17, line: 49, size: 256, elements: !722)
!722 = !{!723, !726, !727, !728, !729}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !721, file: !17, line: 50, baseType: !724, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !17, line: 14, flags: DIFlagFwdDecl)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !721, file: !17, line: 51, baseType: !71, size: 32, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !721, file: !17, line: 52, baseType: !71, size: 32, offset: 96)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !721, file: !17, line: 53, baseType: !74, size: 64, offset: 128)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !721, file: !17, line: 54, baseType: !74, size: 64, offset: 192)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !86, file: !87, line: 973, baseType: !731, size: 32, offset: 10688)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !65, line: 27, baseType: !732)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !295, line: 28, baseType: !71)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !86, file: !87, line: 974, baseType: !731, size: 32, offset: 10720)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !86, file: !87, line: 978, baseType: !74, size: 64, offset: 10752)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !86, file: !87, line: 987, baseType: !85, size: 64, offset: 10816)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !86, file: !87, line: 990, baseType: !85, size: 64, offset: 10880)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !86, file: !87, line: 995, baseType: !64, size: 128, offset: 10944)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !86, file: !87, line: 996, baseType: !64, size: 128, offset: 11072)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !86, file: !87, line: 997, baseType: !85, size: 64, offset: 11200)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !86, file: !87, line: 1005, baseType: !64, size: 128, offset: 11264)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !86, file: !87, line: 1006, baseType: !64, size: 128, offset: 11392)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !86, file: !87, line: 1009, baseType: !743, size: 64, offset: 11520)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !745, line: 59, size: 768, elements: !746)
!745 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!746 = !{!747, !748, !749, !750, !761, !762, !769, !778}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !744, file: !745, line: 61, baseType: !100, size: 32)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !744, file: !745, line: 62, baseType: !7, size: 32, offset: 32)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !744, file: !745, line: 63, baseType: !447, size: 32, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !744, file: !745, line: 65, baseType: !751, size: 256, offset: 128)
!751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !752, size: 256, elements: !552)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !65, line: 194, size: 64, elements: !753)
!753 = !{!754}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !752, file: !65, line: 195, baseType: !755, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !65, line: 198, size: 128, elements: !757)
!757 = !{!758, !759}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !756, file: !65, line: 199, baseType: !755, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !756, file: !65, line: 199, baseType: !760, size: 64, offset: 64)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !744, file: !745, line: 66, baseType: !752, size: 64, offset: 384)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !744, file: !745, line: 68, baseType: !763, size: 192, offset: 448)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !764, line: 41, baseType: !765)
!764 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !764, line: 37, size: 192, elements: !766)
!766 = !{!767, !768}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !765, file: !764, line: 38, baseType: !447, size: 32)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !765, file: !764, line: 39, baseType: !64, size: 128, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !744, file: !745, line: 69, baseType: !770, size: 128, align: 64, offset: 640)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !65, line: 232, size: 128, align: 64, elements: !771)
!771 = !{!772, !774}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !770, file: !65, line: 233, baseType: !773, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !770, file: !65, line: 234, baseType: !775, size: 64, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DISubroutineType(types: !777)
!777 = !{null, !773}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !744, file: !745, line: 70, baseType: !779, offset: 768)
!779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !780, elements: !649)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !745, line: 54, size: 128, elements: !781)
!781 = !{!782, !783}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !780, file: !745, line: 55, baseType: !71, size: 32)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !780, file: !745, line: 56, baseType: !784, size: 64, offset: 64)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !745, line: 56, flags: DIFlagFwdDecl)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !86, file: !87, line: 1010, baseType: !787, size: 512, offset: 11584)
!787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !756, size: 512, elements: !552)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !86, file: !87, line: 1011, baseType: !64, size: 128, offset: 12096)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !86, file: !87, line: 1012, baseType: !64, size: 128, offset: 12224)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !86, file: !87, line: 1014, baseType: !791, size: 64, offset: 12352)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !793, line: 26, size: 256, elements: !794)
!793 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!794 = !{!795, !796}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !792, file: !793, line: 27, baseType: !7, size: 32)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !792, file: !793, line: 28, baseType: !797, size: 192, offset: 64)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !798, line: 43, size: 192, elements: !799)
!798 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!799 = !{!800, !801}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !797, file: !798, line: 44, baseType: !245, size: 32)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !797, file: !798, line: 45, baseType: !64, size: 128, offset: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !86, file: !87, line: 1017, baseType: !803, size: 64, offset: 12416)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !86, file: !87, line: 1020, baseType: !803, size: 64, offset: 12480)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !86, file: !87, line: 1023, baseType: !53, size: 64, offset: 12544)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !86, file: !87, line: 1025, baseType: !81, size: 64, offset: 12608)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !86, file: !87, line: 1026, baseType: !81, size: 64, offset: 12672)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !86, file: !87, line: 1031, baseType: !81, size: 64, offset: 12736)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !86, file: !87, line: 1032, baseType: !810, size: 192, offset: 12800)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !87, line: 324, size: 192, elements: !811)
!811 = !{!812, !813, !814}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !810, file: !87, line: 326, baseType: !81, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !810, file: !87, line: 327, baseType: !81, size: 64, offset: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !810, file: !87, line: 328, baseType: !245, size: 32, offset: 128)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !86, file: !87, line: 1041, baseType: !74, size: 64, offset: 12992)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !86, file: !87, line: 1042, baseType: !74, size: 64, offset: 13056)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !86, file: !87, line: 1045, baseType: !81, size: 64, offset: 13120)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !86, file: !87, line: 1048, baseType: !81, size: 64, offset: 13184)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !86, file: !87, line: 1051, baseType: !74, size: 64, offset: 13248)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !86, file: !87, line: 1052, baseType: !74, size: 64, offset: 13312)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !86, file: !87, line: 1055, baseType: !822, size: 640, offset: 13376)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !823, line: 132, size: 640, elements: !824)
!823 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!824 = !{!825, !833, !834}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !822, file: !823, line: 133, baseType: !826, size: 576)
!826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !827, size: 576, elements: !831)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !823, line: 117, size: 192, elements: !828)
!828 = !{!829, !830}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !827, file: !823, line: 118, baseType: !81, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !827, file: !823, line: 119, baseType: !308, size: 128, offset: 64)
!831 = !{!832}
!832 = !DISubrange(count: 3)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !822, file: !823, line: 134, baseType: !7, size: 32, offset: 576)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !822, file: !823, line: 135, baseType: !7, size: 32, offset: 608)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !86, file: !87, line: 1058, baseType: !836, size: 448, offset: 14016)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !823, line: 144, size: 448, elements: !837)
!837 = !{!838, !839, !840}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !836, file: !823, line: 145, baseType: !770, size: 128, align: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !836, file: !823, line: 146, baseType: !571, size: 256, offset: 128)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !836, file: !823, line: 147, baseType: !7, size: 32, offset: 384)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !86, file: !87, line: 1064, baseType: !842, size: 64, offset: 14464)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !844)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !845, line: 110, size: 1472, elements: !846)
!845 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!846 = !{!847, !848, !855, !862, !863, !864, !865, !866, !867, !868, !869, !875, !876, !877, !878, !879, !880, !996, !997, !998, !999, !1000, !1023, !1024, !1028, !1036}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !844, file: !845, line: 111, baseType: !491, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !844, file: !845, line: 112, baseType: !849, size: 32, offset: 64)
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !621, line: 23, baseType: !850)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !621, line: 21, size: 32, elements: !851)
!851 = !{!852}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !850, file: !621, line: 22, baseType: !853, size: 32)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !65, line: 37, baseType: !854)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !295, line: 49, baseType: !7)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !844, file: !845, line: 113, baseType: !856, size: 32, offset: 96)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !621, line: 28, baseType: !857)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !621, line: 26, size: 32, elements: !858)
!858 = !{!859}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !857, file: !621, line: 27, baseType: !860, size: 32)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !65, line: 38, baseType: !861)
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !295, line: 50, baseType: !7)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !844, file: !845, line: 114, baseType: !849, size: 32, offset: 128)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !844, file: !845, line: 115, baseType: !856, size: 32, offset: 160)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !844, file: !845, line: 116, baseType: !849, size: 32, offset: 192)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !844, file: !845, line: 117, baseType: !856, size: 32, offset: 224)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !844, file: !845, line: 118, baseType: !849, size: 32, offset: 256)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !844, file: !845, line: 119, baseType: !856, size: 32, offset: 288)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !844, file: !845, line: 120, baseType: !7, size: 32, offset: 320)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !844, file: !845, line: 121, baseType: !870, size: 64, offset: 384)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !871, line: 24, baseType: !872)
!871 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !871, line: 24, size: 64, elements: !873)
!873 = !{!874}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !872, file: !871, line: 24, baseType: !81, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !844, file: !845, line: 122, baseType: !870, size: 64, offset: 448)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !844, file: !845, line: 123, baseType: !870, size: 64, offset: 512)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !844, file: !845, line: 124, baseType: !870, size: 64, offset: 576)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !844, file: !845, line: 125, baseType: !870, size: 64, offset: 640)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !844, file: !845, line: 127, baseType: !264, size: 8, offset: 704)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !844, file: !845, line: 129, baseType: !881, size: 64, offset: 768)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !883, line: 195, size: 1728, elements: !884)
!883 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!884 = !{!885, !886, !889, !894, !895, !898, !899, !906, !907, !908, !909, !912, !913, !914, !915, !916, !960, !981}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !882, file: !883, line: 196, baseType: !100, size: 32)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !882, file: !883, line: 197, baseType: !887, size: 32, offset: 32)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !883, line: 28, baseType: !888)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !65, line: 104, baseType: !550)
!889 = !DIDerivedType(tag: DW_TAG_member, scope: !882, file: !883, line: 198, baseType: !890, size: 192, offset: 64)
!890 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !882, file: !883, line: 198, size: 192, elements: !891)
!891 = !{!892, !893}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !890, file: !883, line: 199, baseType: !64, size: 128)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !890, file: !883, line: 200, baseType: !150, size: 192, align: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !882, file: !883, line: 205, baseType: !500, size: 320, offset: 256)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !882, file: !883, line: 206, baseType: !896, size: 64, offset: 576)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !883, line: 206, flags: DIFlagFwdDecl)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !882, file: !883, line: 207, baseType: !53, size: 64, offset: 640)
!899 = !DIDerivedType(tag: DW_TAG_member, scope: !882, file: !883, line: 208, baseType: !900, size: 64, offset: 704)
!900 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !882, file: !883, line: 208, size: 64, elements: !901)
!901 = !{!902, !905}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !900, file: !883, line: 209, baseType: !903, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !904, line: 8, baseType: !58)
!904 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!905 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !900, file: !883, line: 210, baseType: !903, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !882, file: !883, line: 212, baseType: !903, size: 64, offset: 768)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !882, file: !883, line: 213, baseType: !849, size: 32, offset: 832)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !882, file: !883, line: 214, baseType: !856, size: 32, offset: 864)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !882, file: !883, line: 215, baseType: !910, size: 32, offset: 896)
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !883, line: 31, baseType: !911)
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !65, line: 110, baseType: !72)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !882, file: !883, line: 216, baseType: !129, size: 16, offset: 928)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !882, file: !883, line: 217, baseType: !129, size: 16, offset: 944)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !882, file: !883, line: 221, baseType: !612, size: 16, offset: 960)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !882, file: !883, line: 228, baseType: !74, size: 64, offset: 1024)
!916 = !DIDerivedType(tag: DW_TAG_member, scope: !882, file: !883, line: 245, baseType: !917, size: 320, offset: 1088)
!917 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !882, file: !883, line: 245, size: 320, elements: !918)
!918 = !{!919, !951}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !917, file: !883, line: 246, baseType: !920, size: 320)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !883, line: 114, size: 320, elements: !921)
!921 = !{!922, !923, !936, !939, !948}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !920, file: !883, line: 116, baseType: !74, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, scope: !920, file: !883, line: 117, baseType: !924, size: 64, offset: 64)
!924 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !920, file: !883, line: 117, size: 64, elements: !925)
!925 = !{!926, !935}
!926 = !DIDerivedType(tag: DW_TAG_member, scope: !924, file: !883, line: 118, baseType: !927, size: 64)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !924, file: !883, line: 118, size: 64, elements: !928)
!928 = !{!929, !930}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !927, file: !883, line: 120, baseType: !127, size: 16)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !927, file: !883, line: 121, baseType: !931, size: 48, offset: 16)
!931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !932, size: 48, elements: !933)
!932 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!933 = !{!934}
!934 = !DISubrange(count: 6)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !924, file: !883, line: 127, baseType: !74, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !920, file: !883, line: 129, baseType: !937, size: 64, offset: 128)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !883, line: 102, flags: DIFlagFwdDecl)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !920, file: !883, line: 130, baseType: !940, size: 64, offset: 192)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !883, line: 108, size: 192, elements: !942)
!942 = !{!943, !944, !945}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !941, file: !883, line: 109, baseType: !770, size: 128, align: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !941, file: !883, line: 110, baseType: !100, size: 32, offset: 128)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !941, file: !883, line: 111, baseType: !946, size: 8, offset: 160)
!946 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !65, line: 35, baseType: !947)
!947 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !920, file: !883, line: 131, baseType: !949, size: 64, offset: 256)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !932)
!951 = !DIDerivedType(tag: DW_TAG_member, scope: !917, file: !883, line: 247, baseType: !952, size: 320)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !917, file: !883, line: 247, size: 320, elements: !953)
!953 = !{!954, !955, !956, !957, !958}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !952, file: !883, line: 248, baseType: !74, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !952, file: !883, line: 249, baseType: !74, size: 64, offset: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !952, file: !883, line: 250, baseType: !937, size: 64, offset: 128)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !952, file: !883, line: 251, baseType: !940, size: 64, offset: 192)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !952, file: !883, line: 252, baseType: !959, size: 64, offset: 256)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, scope: !882, file: !883, line: 260, baseType: !961, size: 256, offset: 1408)
!961 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !882, file: !883, line: 260, size: 256, elements: !962)
!962 = !{!963, !969}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !961, file: !883, line: 261, baseType: !964, size: 256)
!964 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !883, line: 134, size: 256, elements: !965)
!965 = !{!966, !967}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !964, file: !883, line: 135, baseType: !53, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !964, file: !883, line: 136, baseType: !968, size: 256)
!968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 256, elements: !552)
!969 = !DIDerivedType(tag: DW_TAG_member, scope: !961, file: !883, line: 262, baseType: !970, size: 256)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !961, file: !883, line: 262, size: 256, elements: !971)
!971 = !{!972, !973}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !970, file: !883, line: 264, baseType: !64, size: 128)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !970, file: !883, line: 265, baseType: !974, size: 128, offset: 128)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !975, line: 22, size: 128, elements: !976)
!975 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!976 = !{!977, !980}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !974, file: !975, line: 23, baseType: !978, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !975, line: 23, flags: DIFlagFwdDecl)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !974, file: !975, line: 24, baseType: !74, size: 64, offset: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !882, file: !883, line: 280, baseType: !982, size: 64, offset: 1664)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !883, line: 176, size: 192, elements: !984)
!984 = !{!985, !994, !995}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !983, file: !883, line: 177, baseType: !986, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !883, line: 171, baseType: !987)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DISubroutineType(types: !989)
!989 = !{!71, !881, !990, !992, !881}
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !938)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !964)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !983, file: !883, line: 178, baseType: !881, size: 64, offset: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !983, file: !883, line: 179, baseType: !937, size: 64, offset: 128)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !844, file: !845, line: 130, baseType: !881, size: 64, offset: 832)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !844, file: !845, line: 131, baseType: !881, size: 64, offset: 896)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !844, file: !845, line: 132, baseType: !881, size: 64, offset: 960)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !844, file: !845, line: 135, baseType: !53, size: 64, offset: 1024)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !844, file: !845, line: 137, baseType: !1001, size: 64, offset: 1088)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1003, line: 14, size: 1088, elements: !1004)
!1003 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1004 = !{!1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1002, file: !1003, line: 15, baseType: !100, size: 32)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1002, file: !1003, line: 17, baseType: !542, size: 320, offset: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1002, file: !1003, line: 19, baseType: !74, size: 64, offset: 384)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1002, file: !1003, line: 20, baseType: !491, size: 64, offset: 448)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1002, file: !1003, line: 23, baseType: !756, size: 128, offset: 512)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1002, file: !1003, line: 24, baseType: !849, size: 32, offset: 640)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1002, file: !1003, line: 29, baseType: !491, size: 64, offset: 704)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1002, file: !1003, line: 36, baseType: !1013, size: 320, offset: 768)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1014, line: 15, size: 320, elements: !1015)
!1014 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1015 = !{!1016, !1017, !1018, !1019, !1020, !1021, !1022}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1013, file: !1014, line: 16, baseType: !245, size: 32)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1013, file: !1014, line: 18, baseType: !71, size: 32, offset: 32)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1013, file: !1014, line: 19, baseType: !71, size: 32, offset: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1013, file: !1014, line: 20, baseType: !71, size: 32, offset: 96)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1013, file: !1014, line: 21, baseType: !71, size: 32, offset: 128)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1013, file: !1014, line: 22, baseType: !74, size: 64, offset: 192)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1013, file: !1014, line: 23, baseType: !74, size: 64, offset: 256)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !844, file: !845, line: 138, baseType: !619, size: 64, offset: 1152)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !844, file: !845, line: 139, baseType: !1025, size: 64, offset: 1216)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1027, line: 16, flags: DIFlagFwdDecl)
!1027 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !844, file: !845, line: 140, baseType: !1029, size: 64, offset: 1280)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !845, line: 25, size: 64, elements: !1031)
!1031 = !{!1032, !1033, !1034}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1030, file: !845, line: 26, baseType: !104, size: 32)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1030, file: !845, line: 27, baseType: !71, size: 32, offset: 32)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1030, file: !845, line: 28, baseType: !1035, offset: 64)
!1035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !856, elements: !649)
!1036 = !DIDerivedType(tag: DW_TAG_member, scope: !844, file: !845, line: 142, baseType: !1037, size: 128, offset: 1344)
!1037 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !844, file: !845, line: 142, size: 128, elements: !1038)
!1038 = !{!1039, !1040}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1037, file: !845, line: 143, baseType: !71, size: 32)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1037, file: !845, line: 144, baseType: !770, size: 128, align: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !86, file: !87, line: 1067, baseType: !842, size: 64, offset: 14528)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !86, file: !87, line: 1070, baseType: !842, size: 64, offset: 14592)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !86, file: !87, line: 1074, baseType: !881, size: 64, offset: 14656)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !86, file: !87, line: 1084, baseType: !1045, size: 128, offset: 14720)
!1045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !932, size: 128, elements: !1046)
!1046 = !{!1047}
!1047 = !DISubrange(count: 16)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !86, file: !87, line: 1086, baseType: !1049, size: 64, offset: 14848)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !87, line: 55, flags: DIFlagFwdDecl)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !86, file: !87, line: 1089, baseType: !1052, size: 64, offset: 14912)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1053, line: 12, size: 64, elements: !1054)
!1053 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1054 = !{!1055}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1052, file: !1053, line: 13, baseType: !1056, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1053, line: 8, flags: DIFlagFwdDecl)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !86, file: !87, line: 1090, baseType: !1059, size: 128, offset: 14976)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1060, line: 13, size: 128, elements: !1061)
!1060 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1061 = !{!1062}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1059, file: !1060, line: 14, baseType: !64, size: 128)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !86, file: !87, line: 1097, baseType: !1064, size: 64, offset: 15104)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !87, line: 50, flags: DIFlagFwdDecl)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !86, file: !87, line: 1100, baseType: !1067, size: 64, offset: 15168)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !87, line: 1100, flags: DIFlagFwdDecl)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !86, file: !87, line: 1103, baseType: !1070, size: 64, offset: 15232)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !87, line: 53, flags: DIFlagFwdDecl)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !86, file: !87, line: 1107, baseType: !1073, size: 64, offset: 15296)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !87, line: 56, flags: DIFlagFwdDecl)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !86, file: !87, line: 1110, baseType: !1076, size: 64, offset: 15360)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1078, line: 93, size: 8768, elements: !1079)
!1078 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!1079 = !{!1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1129, !1138, !1139, !1141, !1142, !1143, !1146, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1188, !1189, !1197, !1207, !1210, !1211, !1214, !1215, !1216, !1217, !1218, !1219}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1077, file: !1078, line: 94, baseType: !100, size: 32)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1077, file: !1078, line: 95, baseType: !104, size: 32, offset: 32)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1077, file: !1078, line: 96, baseType: !71, size: 32, offset: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !1077, file: !1078, line: 97, baseType: !71, size: 32, offset: 96)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1077, file: !1078, line: 98, baseType: !64, size: 128, offset: 128)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1077, file: !1078, line: 100, baseType: !763, size: 192, offset: 256)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1077, file: !1078, line: 103, baseType: !85, size: 64, offset: 448)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1077, file: !1078, line: 106, baseType: !1088, size: 192, offset: 512)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1027, line: 32, size: 192, elements: !1089)
!1089 = !{!1090, !1091}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1088, file: !1027, line: 33, baseType: !64, size: 128)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1088, file: !1027, line: 34, baseType: !1092, size: 64, offset: 128)
!1092 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1093, line: 25, baseType: !1094)
!1093 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1093, line: 23, size: 64, elements: !1095)
!1095 = !{!1096}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1094, file: !1093, line: 24, baseType: !379, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1077, file: !1078, line: 109, baseType: !752, size: 64, offset: 704)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1077, file: !1078, line: 112, baseType: !71, size: 32, offset: 768)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1077, file: !1078, line: 114, baseType: !71, size: 32, offset: 800)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !1077, file: !1078, line: 115, baseType: !85, size: 64, offset: 832)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1077, file: !1078, line: 118, baseType: !71, size: 32, offset: 896)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1077, file: !1078, line: 119, baseType: !7, size: 32, offset: 928)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1077, file: !1078, line: 121, baseType: !1104, size: 64, offset: 960)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1078, line: 80, size: 448, elements: !1106)
!1106 = !{!1107, !1108, !1114}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1105, file: !1078, line: 81, baseType: !104, size: 32)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1105, file: !1078, line: 82, baseType: !1109, size: 128, offset: 64)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1078, line: 75, size: 128, elements: !1110)
!1110 = !{!1111, !1112}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1109, file: !1078, line: 76, baseType: !85, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1109, file: !1078, line: 77, baseType: !1113, size: 64, offset: 64)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1105, file: !1078, line: 83, baseType: !792, size: 256, offset: 192)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1077, file: !1078, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1077, file: !1078, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !1077, file: !1078, line: 138, baseType: !7, size: 32, offset: 1056)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1077, file: !1078, line: 139, baseType: !64, size: 128, offset: 1088)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1077, file: !1078, line: 142, baseType: !220, size: 512, offset: 1216)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1077, file: !1078, line: 143, baseType: !228, size: 64, offset: 1728)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1077, file: !1078, line: 150, baseType: !1122, size: 256, offset: 1792)
!1122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1123, size: 256, elements: !1127)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1078, line: 38, size: 128, elements: !1124)
!1124 = !{!1125, !1126}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1123, file: !1078, line: 39, baseType: !81, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1123, file: !1078, line: 40, baseType: !81, size: 64, offset: 64)
!1127 = !{!1128}
!1128 = !DISubrange(count: 2)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1077, file: !1078, line: 156, baseType: !1130, size: 192, offset: 2048)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1078, line: 66, size: 192, elements: !1131)
!1131 = !{!1132}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1130, file: !1078, line: 67, baseType: !1133, size: 192)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1078, line: 47, size: 192, elements: !1134)
!1134 = !{!1135, !1136, !1137}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1133, file: !1078, line: 48, baseType: !493, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1133, file: !1078, line: 49, baseType: !493, size: 64, offset: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1133, file: !1078, line: 50, baseType: !493, size: 64, offset: 128)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1077, file: !1078, line: 160, baseType: !822, size: 640, offset: 2240)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1077, file: !1078, line: 163, baseType: !1140, size: 256, offset: 2880)
!1140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !743, size: 256, elements: !552)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1077, file: !1078, line: 169, baseType: !743, size: 64, offset: 3136)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1077, file: !1078, line: 172, baseType: !71, size: 32, offset: 3200)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1077, file: !1078, line: 174, baseType: !1144, size: 64, offset: 3264)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1078, line: 174, flags: DIFlagFwdDecl)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1077, file: !1078, line: 185, baseType: !1147, size: 64, offset: 3328)
!1147 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !298, line: 860, baseType: !1148)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !298, line: 853, size: 64, elements: !1149)
!1149 = !{!1150, !1155}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1148, file: !298, line: 858, baseType: !1151, size: 32)
!1151 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !298, line: 275, baseType: !1152)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !298, line: 275, size: 32, elements: !1153)
!1153 = !{!1154}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1152, file: !298, line: 275, baseType: !302, size: 32)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1148, file: !298, line: 859, baseType: !447, size: 32, offset: 32)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1077, file: !1078, line: 186, baseType: !81, size: 64, offset: 3392)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1077, file: !1078, line: 186, baseType: !81, size: 64, offset: 3456)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1077, file: !1078, line: 186, baseType: !81, size: 64, offset: 3520)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1077, file: !1078, line: 186, baseType: !81, size: 64, offset: 3584)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1077, file: !1078, line: 187, baseType: !81, size: 64, offset: 3648)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1077, file: !1078, line: 188, baseType: !81, size: 64, offset: 3712)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1077, file: !1078, line: 189, baseType: !810, size: 192, offset: 3776)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1077, file: !1078, line: 190, baseType: !74, size: 64, offset: 3968)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1077, file: !1078, line: 190, baseType: !74, size: 64, offset: 4032)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1077, file: !1078, line: 190, baseType: !74, size: 64, offset: 4096)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1077, file: !1078, line: 190, baseType: !74, size: 64, offset: 4160)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1077, file: !1078, line: 191, baseType: !74, size: 64, offset: 4224)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1077, file: !1078, line: 191, baseType: !74, size: 64, offset: 4288)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1077, file: !1078, line: 191, baseType: !74, size: 64, offset: 4352)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1077, file: !1078, line: 191, baseType: !74, size: 64, offset: 4416)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1077, file: !1078, line: 192, baseType: !74, size: 64, offset: 4480)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1077, file: !1078, line: 192, baseType: !74, size: 64, offset: 4544)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1077, file: !1078, line: 192, baseType: !74, size: 64, offset: 4608)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1077, file: !1078, line: 192, baseType: !74, size: 64, offset: 4672)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1077, file: !1078, line: 193, baseType: !74, size: 64, offset: 4736)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1077, file: !1078, line: 193, baseType: !74, size: 64, offset: 4800)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1077, file: !1078, line: 194, baseType: !1178, size: 448, offset: 4864)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1179, line: 12, size: 448, elements: !1180)
!1179 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1180 = !{!1181, !1182, !1183, !1184, !1185, !1186, !1187}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1178, file: !1179, line: 15, baseType: !81, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1178, file: !1179, line: 17, baseType: !81, size: 64, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1178, file: !1179, line: 19, baseType: !81, size: 64, offset: 128)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1178, file: !1179, line: 21, baseType: !81, size: 64, offset: 192)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1178, file: !1179, line: 29, baseType: !81, size: 64, offset: 256)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1178, file: !1179, line: 35, baseType: !81, size: 64, offset: 320)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1178, file: !1179, line: 44, baseType: !81, size: 64, offset: 384)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1077, file: !1078, line: 202, baseType: !83, size: 64, offset: 5312)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1077, file: !1078, line: 213, baseType: !1190, size: 2048, offset: 5376)
!1190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1191, size: 2048, elements: !1046)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1192, line: 43, size: 128, elements: !1193)
!1192 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!1193 = !{!1194, !1196}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1191, file: !1192, line: 44, baseType: !1195, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !295, line: 16, baseType: !74)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1191, file: !1192, line: 45, baseType: !1195, size: 64, offset: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !1077, file: !1078, line: 216, baseType: !1198, size: 448, offset: 7424)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !1078, line: 30, size: 448, elements: !1199)
!1199 = !{!1200, !1201, !1202, !1203, !1204, !1205, !1206}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !1198, file: !1078, line: 31, baseType: !71, size: 32)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !1198, file: !1078, line: 32, baseType: !595, size: 64, offset: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !1198, file: !1078, line: 33, baseType: !74, size: 64, offset: 128)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !1198, file: !1078, line: 34, baseType: !81, size: 64, offset: 192)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !1198, file: !1078, line: 34, baseType: !81, size: 64, offset: 256)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !1198, file: !1078, line: 35, baseType: !74, size: 64, offset: 320)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !1198, file: !1078, line: 35, baseType: !74, size: 64, offset: 384)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1077, file: !1078, line: 219, baseType: !1208, size: 64, offset: 7872)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !1078, line: 219, flags: DIFlagFwdDecl)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !1077, file: !1078, line: 222, baseType: !7, size: 32, offset: 7936)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !1077, file: !1078, line: 223, baseType: !1212, size: 64, offset: 8000)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !1078, line: 223, flags: DIFlagFwdDecl)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1077, file: !1078, line: 230, baseType: !946, size: 8, offset: 8064)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1077, file: !1078, line: 231, baseType: !612, size: 16, offset: 8080)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1077, file: !1078, line: 232, baseType: !612, size: 16, offset: 8096)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1077, file: !1078, line: 234, baseType: !428, size: 64, offset: 8128)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1077, file: !1078, line: 237, baseType: !571, size: 256, offset: 8192)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !1077, file: !1078, line: 243, baseType: !500, size: 320, offset: 8448)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !86, file: !87, line: 1111, baseType: !1221, size: 64, offset: 15424)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1078, line: 20, size: 16640, elements: !1223)
!1223 = !{!1224, !1225, !1226, !1227}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1222, file: !1078, line: 21, baseType: !447, size: 32)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1222, file: !1078, line: 22, baseType: !100, size: 32, offset: 32)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1222, file: !1078, line: 23, baseType: !763, size: 192, offset: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1222, file: !1078, line: 24, baseType: !1228, size: 16384, offset: 256)
!1228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1229, size: 16384, elements: !1249)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1027, line: 51, size: 256, elements: !1230)
!1230 = !{!1231}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1229, file: !1027, line: 52, baseType: !1232, size: 256)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1027, line: 37, size: 256, elements: !1233)
!1233 = !{!1234, !1241, !1242, !1248}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1232, file: !1027, line: 39, baseType: !1235, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1236, line: 83, baseType: !1237)
!1236 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1236, line: 82, baseType: !1239)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{null, !71}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1232, file: !1027, line: 40, baseType: !74, size: 64, offset: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1232, file: !1027, line: 46, baseType: !1243, size: 64, offset: 128)
!1243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1236, line: 86, baseType: !1244)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1236, line: 85, baseType: !1246)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{null}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1232, file: !1027, line: 48, baseType: !1092, size: 64, offset: 192)
!1249 = !{!1250}
!1250 = !DISubrange(count: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !86, file: !87, line: 1112, baseType: !1092, size: 64, offset: 15488)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !86, file: !87, line: 1113, baseType: !1092, size: 64, offset: 15552)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !86, file: !87, line: 1115, baseType: !1092, size: 64, offset: 15616)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !86, file: !87, line: 1116, baseType: !1088, size: 192, offset: 15680)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !86, file: !87, line: 1117, baseType: !74, size: 64, offset: 15872)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !86, file: !87, line: 1118, baseType: !1257, size: 64, offset: 15936)
!1257 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !65, line: 61, baseType: !1258)
!1258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !295, line: 72, baseType: !1195)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !86, file: !87, line: 1119, baseType: !7, size: 32, offset: 16000)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !86, file: !87, line: 1121, baseType: !773, size: 64, offset: 16064)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !86, file: !87, line: 1125, baseType: !1262, size: 64, offset: 16128)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !87, line: 43, flags: DIFlagFwdDecl)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !86, file: !87, line: 1127, baseType: !849, size: 32, offset: 16192)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !86, file: !87, line: 1128, baseType: !7, size: 32, offset: 16224)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !86, file: !87, line: 1130, baseType: !1267, size: 128, offset: 16256)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1268, line: 37, size: 128, elements: !1269)
!1268 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!1269 = !{!1270, !1271, !1272}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1267, file: !1268, line: 38, baseType: !71, size: 32)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1267, file: !1268, line: 39, baseType: !104, size: 32, offset: 32)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1267, file: !1268, line: 40, baseType: !1273, size: 64, offset: 64)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1268, line: 24, flags: DIFlagFwdDecl)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !86, file: !87, line: 1131, baseType: !1276, size: 256, offset: 16384)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !1277, line: 12, size: 256, elements: !1278)
!1277 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!1278 = !{!1279, !1280, !1281, !1282}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !1276, file: !1277, line: 13, baseType: !959, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1276, file: !1277, line: 14, baseType: !74, size: 64, offset: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1276, file: !1277, line: 15, baseType: !74, size: 64, offset: 128)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !1276, file: !1277, line: 16, baseType: !946, size: 8, offset: 192)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !86, file: !87, line: 1134, baseType: !81, size: 64, offset: 16640)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !86, file: !87, line: 1135, baseType: !81, size: 64, offset: 16704)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !86, file: !87, line: 1138, baseType: !447, size: 32, offset: 16768)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !86, file: !87, line: 1141, baseType: !245, size: 32, offset: 16800)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !86, file: !87, line: 1143, baseType: !1288, size: 64, offset: 16832)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !87, line: 735, size: 64, elements: !1289)
!1289 = !{!1290}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1288, file: !87, line: 736, baseType: !1291, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !86, file: !87, line: 1147, baseType: !311, size: 128, offset: 16896)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !86, file: !87, line: 1149, baseType: !85, size: 64, offset: 17024)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !86, file: !87, line: 1151, baseType: !1295, size: 64, offset: 17088)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !87, line: 1151, flags: DIFlagFwdDecl)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !86, file: !87, line: 1188, baseType: !53, size: 64, offset: 17152)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !86, file: !87, line: 1191, baseType: !1299, size: 64, offset: 17216)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !87, line: 44, flags: DIFlagFwdDecl)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !86, file: !87, line: 1194, baseType: !1302, size: 64, offset: 17280)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !87, line: 45, flags: DIFlagFwdDecl)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !86, file: !87, line: 1197, baseType: !1305, size: 64, offset: 17344)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !87, line: 61, flags: DIFlagFwdDecl)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !86, file: !87, line: 1199, baseType: !1308, size: 64, offset: 17408)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !87, line: 52, flags: DIFlagFwdDecl)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !86, file: !87, line: 1202, baseType: !1311, size: 64, offset: 17472)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !87, line: 48, flags: DIFlagFwdDecl)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !86, file: !87, line: 1205, baseType: !74, size: 64, offset: 17536)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !86, file: !87, line: 1206, baseType: !1315, size: 64, offset: 17600)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1027, line: 14, baseType: !1317)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1027, line: 12, size: 384, elements: !1318)
!1318 = !{!1319}
!1319 = !DIDerivedType(tag: DW_TAG_member, scope: !1317, file: !1027, line: 13, baseType: !1320, size: 384)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1317, file: !1027, line: 13, size: 384, elements: !1321)
!1321 = !{!1322, !1323, !1324, !1325}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1320, file: !1027, line: 13, baseType: !71, size: 32)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1320, file: !1027, line: 13, baseType: !71, size: 32, offset: 32)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1320, file: !1027, line: 13, baseType: !71, size: 32, offset: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1320, file: !1027, line: 13, baseType: !1326, size: 256, offset: 128)
!1326 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1327, line: 37, size: 256, elements: !1328)
!1327 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!1328 = !{!1329, !1334, !1347, !1353, !1363, !1390, !1395}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1326, file: !1327, line: 42, baseType: !1330, size: 64)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1326, file: !1327, line: 39, size: 64, elements: !1331)
!1331 = !{!1332, !1333}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1330, file: !1327, line: 40, baseType: !732, size: 32)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1330, file: !1327, line: 41, baseType: !854, size: 32, offset: 32)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1326, file: !1327, line: 50, baseType: !1335, size: 192)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1326, file: !1327, line: 45, size: 192, elements: !1336)
!1336 = !{!1337, !1339, !1340, !1346}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1335, file: !1327, line: 46, baseType: !1338, size: 32)
!1338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !295, line: 95, baseType: !71)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1335, file: !1327, line: 47, baseType: !71, size: 32, offset: 32)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1335, file: !1327, line: 48, baseType: !1341, size: 64, offset: 64)
!1341 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1327, line: 11, baseType: !1342)
!1342 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1327, line: 8, size: 64, elements: !1343)
!1343 = !{!1344, !1345}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1342, file: !1327, line: 9, baseType: !71, size: 32)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1342, file: !1327, line: 10, baseType: !53, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1335, file: !1327, line: 49, baseType: !71, size: 32, offset: 128)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1326, file: !1327, line: 57, baseType: !1348, size: 128)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1326, file: !1327, line: 53, size: 128, elements: !1349)
!1349 = !{!1350, !1351, !1352}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1348, file: !1327, line: 54, baseType: !732, size: 32)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1348, file: !1327, line: 55, baseType: !854, size: 32, offset: 32)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1348, file: !1327, line: 56, baseType: !1341, size: 64, offset: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1326, file: !1327, line: 66, baseType: !1354, size: 256)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1326, file: !1327, line: 60, size: 256, elements: !1355)
!1355 = !{!1356, !1357, !1358, !1359, !1362}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1354, file: !1327, line: 61, baseType: !732, size: 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1354, file: !1327, line: 62, baseType: !854, size: 32, offset: 32)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1354, file: !1327, line: 63, baseType: !71, size: 32, offset: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1354, file: !1327, line: 64, baseType: !1360, size: 64, offset: 128)
!1360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !295, line: 94, baseType: !1361)
!1361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !295, line: 15, baseType: !595)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1354, file: !1327, line: 65, baseType: !1360, size: 64, offset: 192)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1326, file: !1327, line: 105, baseType: !1364, size: 256)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1326, file: !1327, line: 69, size: 256, elements: !1365)
!1365 = !{!1366, !1367}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1364, file: !1327, line: 70, baseType: !53, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, scope: !1364, file: !1327, line: 79, baseType: !1368, size: 192, offset: 64)
!1368 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1364, file: !1327, line: 79, size: 192, elements: !1369)
!1369 = !{!1370, !1371, !1372, !1379, !1384}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !1368, file: !1327, line: 81, baseType: !71, size: 32)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1368, file: !1327, line: 86, baseType: !612, size: 16)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1368, file: !1327, line: 92, baseType: !1373, size: 192)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1368, file: !1327, line: 88, size: 192, elements: !1374)
!1374 = !{!1375, !1377, !1378}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1373, file: !1327, line: 89, baseType: !1376, size: 64)
!1376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !932, size: 64, elements: !289)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1373, file: !1327, line: 90, baseType: !53, size: 64, offset: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1373, file: !1327, line: 91, baseType: !53, size: 64, offset: 128)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1368, file: !1327, line: 97, baseType: !1380, size: 96)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1368, file: !1327, line: 94, size: 96, elements: !1381)
!1381 = !{!1382, !1383}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1380, file: !1327, line: 95, baseType: !1376, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1380, file: !1327, line: 96, baseType: !73, size: 32, offset: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !1368, file: !1327, line: 103, baseType: !1385, size: 128)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1368, file: !1327, line: 99, size: 128, elements: !1386)
!1386 = !{!1387, !1388, !1389}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !1385, file: !1327, line: 100, baseType: !74, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !1385, file: !1327, line: 101, baseType: !73, size: 32, offset: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1385, file: !1327, line: 102, baseType: !73, size: 32, offset: 96)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1326, file: !1327, line: 111, baseType: !1391, size: 128)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1326, file: !1327, line: 108, size: 128, elements: !1392)
!1392 = !{!1393, !1394}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1391, file: !1327, line: 109, baseType: !595, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1391, file: !1327, line: 110, baseType: !71, size: 32, offset: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1326, file: !1327, line: 118, baseType: !1396, size: 128)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1326, file: !1327, line: 114, size: 128, elements: !1397)
!1397 = !{!1398, !1399, !1400}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1396, file: !1327, line: 115, baseType: !53, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1396, file: !1327, line: 116, baseType: !71, size: 32, offset: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1396, file: !1327, line: 117, baseType: !7, size: 32, offset: 96)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !86, file: !87, line: 1208, baseType: !1178, size: 448, offset: 17664)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !86, file: !87, line: 1215, baseType: !81, size: 64, offset: 18112)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !86, file: !87, line: 1217, baseType: !81, size: 64, offset: 18176)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !86, file: !87, line: 1219, baseType: !81, size: 64, offset: 18240)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !86, file: !87, line: 1223, baseType: !1406, size: 64, offset: 18304)
!1406 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !1407, line: 99, baseType: !1408)
!1407 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1407, line: 99, size: 64, elements: !1409)
!1409 = !{!1410}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1408, file: !1407, line: 99, baseType: !379, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !86, file: !87, line: 1225, baseType: !1151, size: 32, offset: 18368)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !86, file: !87, line: 1226, baseType: !71, size: 32, offset: 18400)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !86, file: !87, line: 1227, baseType: !71, size: 32, offset: 18432)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !86, file: !87, line: 1231, baseType: !1415, size: 64, offset: 18496)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !87, line: 1231, flags: DIFlagFwdDecl)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !86, file: !87, line: 1233, baseType: !64, size: 128, offset: 18560)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !86, file: !87, line: 1240, baseType: !1419, size: 64, offset: 18688)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !87, line: 62, flags: DIFlagFwdDecl)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !86, file: !87, line: 1242, baseType: !1422, size: 64, offset: 18752)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !87, line: 1242, flags: DIFlagFwdDecl)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !86, file: !87, line: 1244, baseType: !64, size: 128, offset: 18816)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !86, file: !87, line: 1245, baseType: !1426, size: 64, offset: 18944)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !87, line: 51, flags: DIFlagFwdDecl)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !86, file: !87, line: 1246, baseType: !571, size: 256, offset: 19008)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !86, file: !87, line: 1247, baseType: !7, size: 32, offset: 19264)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !86, file: !87, line: 1250, baseType: !1431, size: 64, offset: 19328)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !87, line: 57, flags: DIFlagFwdDecl)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !86, file: !87, line: 1251, baseType: !571, size: 256, offset: 19392)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !86, file: !87, line: 1252, baseType: !64, size: 128, offset: 19648)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !86, file: !87, line: 1259, baseType: !1436, size: 64, offset: 19776)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !87, line: 54, flags: DIFlagFwdDecl)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !86, file: !87, line: 1260, baseType: !612, size: 16, offset: 19840)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !86, file: !87, line: 1261, baseType: !612, size: 16, offset: 19856)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !86, file: !87, line: 1314, baseType: !1441, size: 64, offset: 19904)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1443, line: 62, size: 256, align: 256, elements: !1444)
!1443 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!1444 = !{!1445, !1446, !1447, !1448, !1449, !1450, !1451}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1442, file: !1443, line: 75, baseType: !73, size: 32)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1442, file: !1443, line: 90, baseType: !73, size: 32, offset: 32)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1442, file: !1443, line: 112, baseType: !82, size: 64, offset: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1442, file: !1443, line: 132, baseType: !73, size: 32, offset: 128)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !1442, file: !1443, line: 140, baseType: !73, size: 32, offset: 160)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1442, file: !1443, line: 149, baseType: !73, size: 32, offset: 192)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1442, file: !1443, line: 154, baseType: !1452, offset: 224)
!1452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !932, elements: !649)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !86, file: !87, line: 1315, baseType: !72, size: 32, offset: 19968)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !86, file: !87, line: 1316, baseType: !72, size: 32, offset: 20000)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !86, file: !87, line: 1321, baseType: !74, size: 64, offset: 20032)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !86, file: !87, line: 1325, baseType: !71, size: 32, offset: 20096)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !86, file: !87, line: 1326, baseType: !71, size: 32, offset: 20128)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !86, file: !87, line: 1327, baseType: !71, size: 32, offset: 20160)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !86, file: !87, line: 1328, baseType: !71, size: 32, offset: 20192)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !86, file: !87, line: 1329, baseType: !770, size: 128, align: 64, offset: 20224)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !86, file: !87, line: 1332, baseType: !1462, size: 128, offset: 20352)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1463, line: 51, size: 128, elements: !1464)
!1463 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!1464 = !{!1465, !1470, !1471}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1462, file: !1463, line: 60, baseType: !1466, size: 64)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1467, line: 7, size: 64, elements: !1468)
!1467 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!1468 = !{!1469}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1466, file: !1467, line: 12, baseType: !376, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1462, file: !1463, line: 63, baseType: !946, size: 8, offset: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1462, file: !1463, line: 70, baseType: !946, size: 8, offset: 72)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !86, file: !87, line: 1335, baseType: !1473, size: 64, offset: 20480)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !87, line: 59, flags: DIFlagFwdDecl)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !86, file: !87, line: 1337, baseType: !1476, size: 128, offset: 20544)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1463, line: 39, size: 128, elements: !1477)
!1477 = !{!1478, !1541, !1542}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1476, file: !1463, line: 40, baseType: !1479, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !430, line: 74, size: 512, align: 128, elements: !1481)
!1481 = !{!1482, !1483, !1535, !1540}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1480, file: !430, line: 75, baseType: !74, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, scope: !1480, file: !430, line: 83, baseType: !1484, size: 320, offset: 64)
!1484 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1480, file: !430, line: 83, size: 320, elements: !1485)
!1485 = !{!1486, !1509, !1523, !1527, !1534}
!1486 = !DIDerivedType(tag: DW_TAG_member, scope: !1484, file: !430, line: 84, baseType: !1487, size: 320)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1484, file: !430, line: 84, size: 320, elements: !1488)
!1488 = !{!1489, !1500, !1503, !1508}
!1489 = !DIDerivedType(tag: DW_TAG_member, scope: !1487, file: !430, line: 90, baseType: !1490, size: 128)
!1490 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1487, file: !430, line: 90, size: 128, elements: !1491)
!1491 = !{!1492, !1493, !1498, !1499}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1490, file: !430, line: 91, baseType: !64, size: 128)
!1493 = !DIDerivedType(tag: DW_TAG_member, scope: !1490, file: !430, line: 94, baseType: !1494, size: 128)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1490, file: !430, line: 94, size: 128, elements: !1495)
!1495 = !{!1496, !1497}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1494, file: !430, line: 96, baseType: !53, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1494, file: !430, line: 98, baseType: !7, size: 32, offset: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1490, file: !430, line: 102, baseType: !64, size: 128)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1490, file: !430, line: 103, baseType: !64, size: 128)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1487, file: !430, line: 106, baseType: !1501, size: 64, offset: 128)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !430, line: 32, flags: DIFlagFwdDecl)
!1503 = !DIDerivedType(tag: DW_TAG_member, scope: !1487, file: !430, line: 107, baseType: !1504, size: 64, offset: 192)
!1504 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1487, file: !430, line: 107, size: 64, elements: !1505)
!1505 = !{!1506, !1507}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1504, file: !430, line: 108, baseType: !74, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1504, file: !430, line: 109, baseType: !74, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1487, file: !430, line: 117, baseType: !74, size: 64, offset: 256)
!1509 = !DIDerivedType(tag: DW_TAG_member, scope: !1484, file: !430, line: 119, baseType: !1510, size: 320)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1484, file: !430, line: 119, size: 320, elements: !1511)
!1511 = !{!1512, !1513, !1516, !1517, !1518}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1510, file: !430, line: 124, baseType: !74, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1510, file: !430, line: 125, baseType: !1514, size: 64, offset: 64)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !430, line: 125, flags: DIFlagFwdDecl)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1510, file: !430, line: 126, baseType: !74, size: 64, offset: 128)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1510, file: !430, line: 127, baseType: !74, size: 64, offset: 192)
!1518 = !DIDerivedType(tag: DW_TAG_member, scope: !1510, file: !430, line: 128, baseType: !1519, size: 64, offset: 256)
!1519 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1510, file: !430, line: 128, size: 64, elements: !1520)
!1520 = !{!1521, !1522}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1519, file: !430, line: 133, baseType: !74, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1519, file: !430, line: 138, baseType: !491, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, scope: !1484, file: !430, line: 141, baseType: !1524, size: 64)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1484, file: !430, line: 141, size: 64, elements: !1525)
!1525 = !{!1526}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1524, file: !430, line: 142, baseType: !74, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, scope: !1484, file: !430, line: 144, baseType: !1528, size: 128)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1484, file: !430, line: 144, size: 128, elements: !1529)
!1529 = !{!1530, !1533}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1528, file: !430, line: 146, baseType: !1531, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !430, line: 146, flags: DIFlagFwdDecl)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1528, file: !430, line: 147, baseType: !53, size: 64, offset: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1484, file: !430, line: 161, baseType: !770, size: 128, align: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, scope: !1480, file: !430, line: 164, baseType: !1536, size: 32, offset: 384)
!1536 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1480, file: !430, line: 164, size: 32, elements: !1537)
!1537 = !{!1538, !1539}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1536, file: !430, line: 169, baseType: !104, size: 32)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1536, file: !430, line: 177, baseType: !7, size: 32)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1480, file: !430, line: 181, baseType: !104, size: 32, offset: 416)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1476, file: !1463, line: 42, baseType: !73, size: 32, offset: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1476, file: !1463, line: 43, baseType: !73, size: 32, offset: 96)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !86, file: !87, line: 1340, baseType: !1544, size: 64, offset: 20672)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !87, line: 69, flags: DIFlagFwdDecl)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !86, file: !87, line: 1351, baseType: !71, size: 32, offset: 20736)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !86, file: !87, line: 1352, baseType: !71, size: 32, offset: 20768)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !86, file: !87, line: 1354, baseType: !74, size: 64, offset: 20800)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !86, file: !87, line: 1364, baseType: !81, size: 64, offset: 20864)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !86, file: !87, line: 1365, baseType: !81, size: 64, offset: 20928)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !86, file: !87, line: 1412, baseType: !74, size: 64, offset: 20992)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !86, file: !87, line: 1453, baseType: !1553, size: 64, offset: 21056)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !87, line: 1453, flags: DIFlagFwdDecl)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !86, file: !87, line: 1457, baseType: !1556, size: 64, offset: 21120)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !23, line: 61, size: 576, elements: !1558)
!1558 = !{!1559, !1560, !1579, !1582, !1583, !1616, !1626}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1557, file: !23, line: 62, baseType: !22, size: 32)
!1560 = !DIDerivedType(tag: DW_TAG_member, scope: !1557, file: !23, line: 64, baseType: !1561, size: 192, offset: 64)
!1561 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1557, file: !23, line: 64, size: 192, elements: !1562)
!1562 = !{!1563, !1574}
!1563 = !DIDerivedType(tag: DW_TAG_member, scope: !1561, file: !23, line: 65, baseType: !1564, size: 192)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1561, file: !23, line: 65, size: 192, elements: !1565)
!1565 = !{!1566, !1573}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !1564, file: !23, line: 66, baseType: !1567, size: 128)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !1568, line: 50, size: 128, elements: !1569)
!1568 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!1569 = !{!1570, !1571, !1572}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !1567, file: !1568, line: 52, baseType: !74, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !1567, file: !1568, line: 54, baseType: !7, size: 32, offset: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !1567, file: !1568, line: 55, baseType: !7, size: 32, offset: 96)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !1564, file: !23, line: 67, baseType: !74, size: 64, offset: 128)
!1574 = !DIDerivedType(tag: DW_TAG_member, scope: !1561, file: !23, line: 70, baseType: !1575, size: 192)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1561, file: !23, line: 70, size: 192, elements: !1576)
!1576 = !{!1577, !1578}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !1575, file: !23, line: 71, baseType: !770, size: 128, align: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !1575, file: !23, line: 72, baseType: !74, size: 64, offset: 128)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !1557, file: !23, line: 76, baseType: !1580, size: 64, offset: 256)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !23, line: 76, flags: DIFlagFwdDecl)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !1557, file: !23, line: 77, baseType: !74, size: 64, offset: 320)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !1557, file: !23, line: 79, baseType: !1584, size: 64, offset: 384)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !1568, line: 25, size: 256, elements: !1586)
!1586 = !{!1587, !1593, !1597}
!1587 = !DIDerivedType(tag: DW_TAG_member, scope: !1585, file: !1568, line: 26, baseType: !1588, size: 128)
!1588 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1585, file: !1568, line: 26, size: 128, elements: !1589)
!1589 = !{!1590, !1592}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1588, file: !1568, line: 27, baseType: !1591, size: 128)
!1591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 128, elements: !1046)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !1588, file: !1568, line: 28, baseType: !1591, size: 128)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1585, file: !1568, line: 31, baseType: !1594, size: 64, offset: 128)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1596)
!1596 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !1568, line: 23, flags: DIFlagFwdDecl)
!1597 = !DIDerivedType(tag: DW_TAG_member, scope: !1585, file: !1568, line: 33, baseType: !1598, size: 64, offset: 192)
!1598 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1585, file: !1568, line: 33, size: 64, elements: !1599)
!1599 = !{!1600, !1606, !1611}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !1598, file: !1568, line: 38, baseType: !1601, size: 64)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1598, file: !1568, line: 34, size: 64, elements: !1602)
!1602 = !{!1603, !1604, !1605}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !1601, file: !1568, line: 35, baseType: !550, size: 32)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1601, file: !1568, line: 36, baseType: !262, size: 8, offset: 32)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !1601, file: !1568, line: 37, baseType: !262, size: 8, offset: 40)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !1598, file: !1568, line: 42, baseType: !1607, size: 16)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1598, file: !1568, line: 39, size: 16, elements: !1608)
!1608 = !{!1609, !1610}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !1607, file: !1568, line: 40, baseType: !262, size: 8)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1607, file: !1568, line: 41, baseType: !262, size: 8, offset: 8)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !1598, file: !1568, line: 46, baseType: !1612, size: 16)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1598, file: !1568, line: 43, size: 16, elements: !1613)
!1613 = !{!1614, !1615}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !1612, file: !1568, line: 44, baseType: !262, size: 8)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1612, file: !1568, line: 45, baseType: !262, size: 8, offset: 8)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !1557, file: !23, line: 81, baseType: !1617, size: 64, offset: 448)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !23, line: 85, size: 384, elements: !1619)
!1619 = !{!1620, !1621, !1622, !1623, !1624, !1625}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !1618, file: !23, line: 86, baseType: !1580, size: 64)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1618, file: !23, line: 87, baseType: !74, size: 64, offset: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1618, file: !23, line: 88, baseType: !74, size: 64, offset: 128)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !1618, file: !23, line: 89, baseType: !74, size: 64, offset: 192)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !1618, file: !23, line: 90, baseType: !946, size: 8, offset: 256)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1618, file: !23, line: 92, baseType: !1617, size: 64, offset: 320)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1557, file: !23, line: 82, baseType: !7, size: 32, offset: 512)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !86, file: !87, line: 1463, baseType: !1628, offset: 21184)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !87, line: 739, elements: !458)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !86, file: !87, line: 1470, baseType: !770, size: 128, align: 64, offset: 21184)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !86, file: !87, line: 1471, baseType: !100, size: 32, offset: 21312)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !86, file: !87, line: 1472, baseType: !71, size: 32, offset: 21344)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !86, file: !87, line: 1474, baseType: !85, size: 64, offset: 21376)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !86, file: !87, line: 1475, baseType: !1634, size: 320, offset: 21440)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1635, line: 11, size: 320, elements: !1636)
!1635 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1636 = !{!1637, !1638, !1639, !1644}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1634, file: !1635, line: 16, baseType: !756, size: 128)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1634, file: !1635, line: 17, baseType: !74, size: 64, offset: 128)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1634, file: !1635, line: 18, baseType: !1640, size: 64, offset: 192)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{null, !1643}
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1634, file: !1635, line: 19, baseType: !72, size: 32, offset: 256)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !86, file: !87, line: 1478, baseType: !1646, size: 64, offset: 21760)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !87, line: 1478, flags: DIFlagFwdDecl)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !86, file: !87, line: 1482, baseType: !100, size: 32, offset: 21824)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !86, file: !87, line: 1489, baseType: !53, size: 64, offset: 21888)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !86, file: !87, line: 1504, baseType: !53, size: 64, offset: 21952)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !86, file: !87, line: 1505, baseType: !82, size: 64, offset: 22016)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !86, file: !87, line: 1506, baseType: !81, size: 64, offset: 22080)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !86, file: !87, line: 1507, baseType: !82, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !86, file: !87, line: 1508, baseType: !82, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !86, file: !87, line: 1509, baseType: !82, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !86, file: !87, line: 1510, baseType: !770, size: 128, align: 64, offset: 22208)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !86, file: !87, line: 1511, baseType: !71, size: 32, offset: 22336)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !86, file: !87, line: 1515, baseType: !1659, size: 64, offset: 22400)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !117, line: 56, size: 64, elements: !1660)
!1660 = !{!1661}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1659, file: !117, line: 57, baseType: !120, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !86, file: !87, line: 1518, baseType: !1659, size: 64, offset: 22464)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !86, file: !87, line: 1528, baseType: !770, size: 128, align: 64, offset: 22528)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !86, file: !87, line: 1552, baseType: !1665, size: 35328, offset: 23040)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1666, line: 430, size: 35328, elements: !1667)
!1666 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!1667 = !{!1668, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1697, !1698, !1699, !1700, !1701, !1702, !1705, !1706, !1707, !1708}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1665, file: !1666, line: 432, baseType: !1669, size: 192)
!1669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1670, size: 192, elements: !831)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1671, line: 16, size: 64, elements: !1672)
!1671 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!1672 = !{!1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1670, file: !1671, line: 17, baseType: !127, size: 16)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1670, file: !1671, line: 18, baseType: !127, size: 16, offset: 16)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1670, file: !1671, line: 19, baseType: !127, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1670, file: !1671, line: 19, baseType: !127, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1670, file: !1671, line: 19, baseType: !127, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1670, file: !1671, line: 19, baseType: !127, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1670, file: !1671, line: 19, baseType: !127, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1670, file: !1671, line: 20, baseType: !127, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1670, file: !1671, line: 20, baseType: !127, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1670, file: !1671, line: 20, baseType: !127, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1670, file: !1671, line: 20, baseType: !127, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1670, file: !1671, line: 20, baseType: !127, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1670, file: !1671, line: 20, baseType: !127, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1665, file: !1666, line: 436, baseType: !74, size: 64, offset: 192)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1665, file: !1666, line: 440, baseType: !129, size: 16, offset: 256)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1665, file: !1666, line: 441, baseType: !129, size: 16, offset: 272)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1665, file: !1666, line: 442, baseType: !129, size: 16, offset: 288)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1665, file: !1666, line: 443, baseType: !129, size: 16, offset: 304)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1665, file: !1666, line: 447, baseType: !74, size: 64, offset: 320)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1665, file: !1666, line: 448, baseType: !74, size: 64, offset: 384)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1665, file: !1666, line: 459, baseType: !1694, size: 256, offset: 448)
!1694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1695, size: 256, elements: !552)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1666, line: 428, flags: DIFlagFwdDecl)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1665, file: !1666, line: 461, baseType: !74, size: 64, offset: 704)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1665, file: !1666, line: 463, baseType: !74, size: 64, offset: 768)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1665, file: !1666, line: 465, baseType: !74, size: 64, offset: 832)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1665, file: !1666, line: 466, baseType: !74, size: 64, offset: 896)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1665, file: !1666, line: 467, baseType: !74, size: 64, offset: 960)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1665, file: !1666, line: 473, baseType: !1703, size: 64, offset: 1024)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1666, line: 10, flags: DIFlagFwdDecl)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1665, file: !1666, line: 480, baseType: !74, size: 64, offset: 1088)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !1665, file: !1666, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !1665, file: !1666, line: 491, baseType: !72, size: 32, offset: 1184)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1665, file: !1666, line: 501, baseType: !1709, size: 33792, offset: 1536)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1710, line: 448, size: 33792, elements: !1711)
!1710 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!1711 = !{!1712, !1713, !1714, !1878, !1879, !1885, !1886}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1709, file: !1710, line: 461, baseType: !7, size: 32)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1709, file: !1710, line: 468, baseType: !74, size: 64, offset: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !1709, file: !1710, line: 476, baseType: !1715, size: 64, offset: 128)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !1710, line: 356, size: 33280, align: 512, elements: !1717)
!1717 = !{!1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1716, file: !1710, line: 358, baseType: !7, size: 32)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !1716, file: !1710, line: 361, baseType: !7, size: 32, offset: 32)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1716, file: !1710, line: 364, baseType: !81, size: 64, offset: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !1716, file: !1710, line: 367, baseType: !81, size: 64, offset: 128)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !1716, file: !1710, line: 370, baseType: !81, size: 64, offset: 192)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !1716, file: !1710, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !1716, file: !1710, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !1716, file: !1710, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !1716, file: !1710, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1716, file: !1710, line: 397, baseType: !1728, size: 32768, offset: 512)
!1728 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1710, line: 348, size: 32768, elements: !1729)
!1729 = !{!1730, !1745, !1784, !1861, !1874}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1728, file: !1710, line: 349, baseType: !1731, size: 896)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1710, line: 12, size: 896, elements: !1732)
!1732 = !{!1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1744}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1731, file: !1710, line: 13, baseType: !72, size: 32)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1731, file: !1710, line: 14, baseType: !72, size: 32, offset: 32)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1731, file: !1710, line: 15, baseType: !72, size: 32, offset: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1731, file: !1710, line: 16, baseType: !72, size: 32, offset: 96)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1731, file: !1710, line: 17, baseType: !72, size: 32, offset: 128)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1731, file: !1710, line: 18, baseType: !72, size: 32, offset: 160)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1731, file: !1710, line: 19, baseType: !72, size: 32, offset: 192)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1731, file: !1710, line: 22, baseType: !1741, size: 640, offset: 224)
!1741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 640, elements: !1742)
!1742 = !{!1743}
!1743 = !DISubrange(count: 20)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1731, file: !1710, line: 25, baseType: !72, size: 32, offset: 864)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1728, file: !1710, line: 350, baseType: !1746, size: 4096, align: 128)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1710, line: 34, size: 4096, align: 128, elements: !1747)
!1747 = !{!1748, !1749, !1750, !1751, !1752, !1767, !1768, !1769, !1773, !1775, !1779}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1746, file: !1710, line: 35, baseType: !127, size: 16)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1746, file: !1710, line: 36, baseType: !127, size: 16, offset: 16)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1746, file: !1710, line: 37, baseType: !127, size: 16, offset: 32)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1746, file: !1710, line: 38, baseType: !127, size: 16, offset: 48)
!1752 = !DIDerivedType(tag: DW_TAG_member, scope: !1746, file: !1710, line: 39, baseType: !1753, size: 128, offset: 64)
!1753 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1746, file: !1710, line: 39, size: 128, elements: !1754)
!1754 = !{!1755, !1760}
!1755 = !DIDerivedType(tag: DW_TAG_member, scope: !1753, file: !1710, line: 40, baseType: !1756, size: 128)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1753, file: !1710, line: 40, size: 128, elements: !1757)
!1757 = !{!1758, !1759}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1756, file: !1710, line: 41, baseType: !81, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1756, file: !1710, line: 42, baseType: !81, size: 64, offset: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, scope: !1753, file: !1710, line: 44, baseType: !1761, size: 128)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1753, file: !1710, line: 44, size: 128, elements: !1762)
!1762 = !{!1763, !1764, !1765, !1766}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1761, file: !1710, line: 45, baseType: !72, size: 32)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1761, file: !1710, line: 46, baseType: !72, size: 32, offset: 32)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1761, file: !1710, line: 47, baseType: !72, size: 32, offset: 64)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1761, file: !1710, line: 48, baseType: !72, size: 32, offset: 96)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1746, file: !1710, line: 51, baseType: !72, size: 32, offset: 192)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1746, file: !1710, line: 52, baseType: !72, size: 32, offset: 224)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1746, file: !1710, line: 55, baseType: !1770, size: 1024, offset: 256)
!1770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 1024, elements: !1771)
!1771 = !{!1772}
!1772 = !DISubrange(count: 32)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1746, file: !1710, line: 58, baseType: !1774, size: 2048, offset: 1280)
!1774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 2048, elements: !1249)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1746, file: !1710, line: 60, baseType: !1776, size: 384, offset: 3328)
!1776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 384, elements: !1777)
!1777 = !{!1778}
!1778 = !DISubrange(count: 12)
!1779 = !DIDerivedType(tag: DW_TAG_member, scope: !1746, file: !1710, line: 62, baseType: !1780, size: 384, offset: 3712)
!1780 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1746, file: !1710, line: 62, size: 384, elements: !1781)
!1781 = !{!1782, !1783}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1780, file: !1710, line: 63, baseType: !1776, size: 384)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1780, file: !1710, line: 64, baseType: !1776, size: 384)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1728, file: !1710, line: 351, baseType: !1785, size: 1088)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1710, line: 79, size: 1088, elements: !1786)
!1786 = !{!1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1860}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1785, file: !1710, line: 80, baseType: !72, size: 32)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1785, file: !1710, line: 81, baseType: !72, size: 32, offset: 32)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1785, file: !1710, line: 82, baseType: !72, size: 32, offset: 64)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1785, file: !1710, line: 83, baseType: !72, size: 32, offset: 96)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1785, file: !1710, line: 84, baseType: !72, size: 32, offset: 128)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1785, file: !1710, line: 85, baseType: !72, size: 32, offset: 160)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1785, file: !1710, line: 86, baseType: !72, size: 32, offset: 192)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1785, file: !1710, line: 88, baseType: !1741, size: 640, offset: 224)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1785, file: !1710, line: 89, baseType: !262, size: 8, offset: 864)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1785, file: !1710, line: 90, baseType: !262, size: 8, offset: 872)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1785, file: !1710, line: 91, baseType: !262, size: 8, offset: 880)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1785, file: !1710, line: 92, baseType: !262, size: 8, offset: 888)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1785, file: !1710, line: 93, baseType: !262, size: 8, offset: 896)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1785, file: !1710, line: 94, baseType: !262, size: 8, offset: 904)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1785, file: !1710, line: 95, baseType: !1802, size: 64, offset: 960)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1804, line: 11, size: 128, elements: !1805)
!1804 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!1805 = !{!1806, !1807}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1803, file: !1804, line: 12, baseType: !595, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1803, file: !1804, line: 13, baseType: !1808, size: 64, offset: 64)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1810, line: 103, size: 1344, elements: !1811)
!1810 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!1811 = !{!1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1840, !1841, !1842}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1809, file: !1810, line: 109, baseType: !74, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1809, file: !1810, line: 110, baseType: !74, size: 64, offset: 64)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1809, file: !1810, line: 111, baseType: !74, size: 64, offset: 128)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1809, file: !1810, line: 112, baseType: !74, size: 64, offset: 192)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1809, file: !1810, line: 113, baseType: !74, size: 64, offset: 256)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1809, file: !1810, line: 114, baseType: !74, size: 64, offset: 320)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1809, file: !1810, line: 117, baseType: !74, size: 64, offset: 384)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1809, file: !1810, line: 118, baseType: !74, size: 64, offset: 448)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1809, file: !1810, line: 119, baseType: !74, size: 64, offset: 512)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1809, file: !1810, line: 120, baseType: !74, size: 64, offset: 576)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1809, file: !1810, line: 121, baseType: !74, size: 64, offset: 640)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1809, file: !1810, line: 122, baseType: !74, size: 64, offset: 704)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1809, file: !1810, line: 123, baseType: !74, size: 64, offset: 768)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1809, file: !1810, line: 124, baseType: !74, size: 64, offset: 832)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1809, file: !1810, line: 125, baseType: !74, size: 64, offset: 896)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1809, file: !1810, line: 139, baseType: !74, size: 64, offset: 960)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1809, file: !1810, line: 142, baseType: !74, size: 64, offset: 1024)
!1829 = !DIDerivedType(tag: DW_TAG_member, scope: !1809, file: !1810, line: 144, baseType: !1830, size: 64, offset: 1088)
!1830 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1809, file: !1810, line: 144, size: 64, elements: !1831)
!1831 = !{!1832, !1833, !1834}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1830, file: !1810, line: 146, baseType: !127, size: 16)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !1830, file: !1810, line: 148, baseType: !81, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !1830, file: !1810, line: 150, baseType: !1835, size: 64)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !1810, line: 59, size: 64, elements: !1836)
!1836 = !{!1837, !1838, !1839}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1835, file: !1810, line: 61, baseType: !81, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !1835, file: !1810, line: 63, baseType: !81, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !1835, file: !1810, line: 65, baseType: !81, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1809, file: !1810, line: 153, baseType: !74, size: 64, offset: 1152)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1809, file: !1810, line: 154, baseType: !74, size: 64, offset: 1216)
!1842 = !DIDerivedType(tag: DW_TAG_member, scope: !1809, file: !1810, line: 156, baseType: !1843, size: 64, offset: 1280)
!1843 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1809, file: !1810, line: 156, size: 64, elements: !1844)
!1844 = !{!1845, !1846, !1847}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1843, file: !1810, line: 158, baseType: !127, size: 16)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !1843, file: !1810, line: 160, baseType: !81, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !1843, file: !1810, line: 162, baseType: !1848, size: 64)
!1848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !1810, line: 69, size: 64, elements: !1849)
!1849 = !{!1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1848, file: !1810, line: 71, baseType: !81, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !1848, file: !1810, line: 73, baseType: !81, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !1848, file: !1810, line: 75, baseType: !81, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !1848, file: !1810, line: 77, baseType: !81, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !1848, file: !1810, line: 80, baseType: !81, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1848, file: !1810, line: 83, baseType: !81, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !1848, file: !1810, line: 86, baseType: !81, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !1848, file: !1810, line: 88, baseType: !81, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !1848, file: !1810, line: 93, baseType: !81, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !1848, file: !1810, line: 100, baseType: !81, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1785, file: !1710, line: 96, baseType: !72, size: 32, offset: 1024)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1728, file: !1710, line: 352, baseType: !1862, size: 4608, align: 512)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1710, line: 333, size: 4608, align: 512, elements: !1863)
!1863 = !{!1864, !1865, !1872}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1862, file: !1710, line: 334, baseType: !1746, size: 4096, align: 128)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1862, file: !1710, line: 335, baseType: !1866, size: 512, offset: 4096)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1710, line: 312, size: 512, elements: !1867)
!1867 = !{!1868, !1869, !1870}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1866, file: !1710, line: 313, baseType: !81, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1866, file: !1710, line: 314, baseType: !81, size: 64, offset: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1866, file: !1710, line: 315, baseType: !1871, size: 384, offset: 128)
!1871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 384, elements: !933)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1862, file: !1710, line: 336, baseType: !1873, offset: 4608)
!1873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, elements: !649)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1728, file: !1710, line: 353, baseType: !1875, size: 32768)
!1875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 32768, elements: !1876)
!1876 = !{!1877}
!1877 = !DISubrange(count: 4096)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !1709, file: !1710, line: 484, baseType: !1715, size: 64, offset: 192)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1709, file: !1710, line: 491, baseType: !1880, size: 128, offset: 256)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !1710, line: 404, size: 128, elements: !1881)
!1881 = !{!1882, !1883, !1884}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !1880, file: !1710, line: 424, baseType: !81, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !1880, file: !1710, line: 432, baseType: !7, size: 32, offset: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !1880, file: !1710, line: 440, baseType: !7, size: 32, offset: 96)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !1709, file: !1710, line: 498, baseType: !1880, size: 128, offset: 384)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !1709, file: !1710, line: 508, baseType: !1716, size: 33280, align: 512, offset: 512)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1889)
!1889 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !85)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rwsem_waiter", file: !3, line: 338, size: 384, elements: !1896)
!1896 = !{!1897, !1898, !1899, !1900, !1901}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1895, file: !3, line: 339, baseType: !64, size: 128)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1895, file: !3, line: 340, baseType: !85, size: 64, offset: 128)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1895, file: !3, line: 341, baseType: !29, size: 32, offset: 192)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1895, file: !3, line: 342, baseType: !74, size: 64, offset: 256)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "handoff_set", scope: !1895, file: !3, line: 343, baseType: !946, size: 8, offset: 320)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1905)
!1905 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1906)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !1908, line: 26, size: 192, elements: !1909)
!1908 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1909 = !{!1910, !1911, !1912}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1907, file: !1908, line: 27, baseType: !53, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1907, file: !1908, line: 28, baseType: !53, size: 64, offset: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1907, file: !1908, line: 29, baseType: !71, size: 32, offset: 128)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !376)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !65, line: 42, baseType: !74)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1891)
!1924 = !{!0, !1925, !1927, !1929, !1931, !1933, !1935, !1937, !1939, !1941, !1943, !1945, !1949, !1961, !1966, !1972, !2001, !2003, !2032, !2034, !2043, !2050, !2056, !2064, !2070}
!1925 = !DIGlobalVariableExpression(var: !1926, expr: !DIExpression())
!1926 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_down_read270", scope: !2, file: !3, line: 1524, type: !53, isLocal: true, isDefinition: true)
!1927 = !DIGlobalVariableExpression(var: !1928, expr: !DIExpression())
!1928 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_down_read_interruptible271", scope: !2, file: !3, line: 1538, type: !53, isLocal: true, isDefinition: true)
!1929 = !DIGlobalVariableExpression(var: !1930, expr: !DIExpression())
!1930 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_down_read_killable272", scope: !2, file: !3, line: 1552, type: !53, isLocal: true, isDefinition: true)
!1931 = !DIGlobalVariableExpression(var: !1932, expr: !DIExpression())
!1932 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_down_read_trylock273", scope: !2, file: !3, line: 1565, type: !53, isLocal: true, isDefinition: true)
!1933 = !DIGlobalVariableExpression(var: !1934, expr: !DIExpression())
!1934 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_down_write274", scope: !2, file: !3, line: 1576, type: !53, isLocal: true, isDefinition: true)
!1935 = !DIGlobalVariableExpression(var: !1936, expr: !DIExpression())
!1936 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_down_write_killable275", scope: !2, file: !3, line: 1594, type: !53, isLocal: true, isDefinition: true)
!1937 = !DIGlobalVariableExpression(var: !1938, expr: !DIExpression())
!1938 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_down_write_trylock276", scope: !2, file: !3, line: 1608, type: !53, isLocal: true, isDefinition: true)
!1939 = !DIGlobalVariableExpression(var: !1940, expr: !DIExpression())
!1940 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_up_read277", scope: !2, file: !3, line: 1618, type: !53, isLocal: true, isDefinition: true)
!1941 = !DIGlobalVariableExpression(var: !1942, expr: !DIExpression())
!1942 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_up_write278", scope: !2, file: !3, line: 1628, type: !53, isLocal: true, isDefinition: true)
!1943 = !DIGlobalVariableExpression(var: !1944, expr: !DIExpression())
!1944 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_downgrade_write279", scope: !2, file: !3, line: 1638, type: !53, isLocal: true, isDefinition: true)
!1945 = !DIGlobalVariableExpression(var: !1946, expr: !DIExpression())
!1946 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__might_resched2", scope: !1947, file: !1948, line: 112, type: !53, isLocal: true, isDefinition: true)
!1947 = distinct !DISubprogram(name: "might_resched", scope: !1948, file: !1948, line: 110, type: !1246, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1948 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!1949 = !DIGlobalVariableExpression(var: !1950, expr: !DIExpression())
!1950 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule263", scope: !1951, file: !3, line: 1257, type: !53, isLocal: true, isDefinition: true)
!1951 = distinct !DISubprogram(name: "__down_read_common", scope: !3, file: !3, line: 1243, type: !1952, scopeLine: 1244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1955)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{!71, !1954, !71}
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!1955 = !{!1956, !1957, !1958, !1959, !1960}
!1956 = !DILocalVariable(name: "sem", arg: 1, scope: !1951, file: !3, line: 1243, type: !1954)
!1957 = !DILocalVariable(name: "state", arg: 2, scope: !1951, file: !3, line: 1243, type: !71)
!1958 = !DILocalVariable(name: "ret", scope: !1951, file: !3, line: 1245, type: !71)
!1959 = !DILocalVariable(name: "count", scope: !1951, file: !3, line: 1246, type: !595)
!1960 = !DILabel(scope: !1951, name: "out", file: !3, line: 1256)
!1961 = !DIGlobalVariableExpression(var: !1962, expr: !DIExpression())
!1962 = distinct !DIGlobalVariable(scope: null, file: !3, line: 245, type: !1963, isLocal: true, isDefinition: true)
!1963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !932, size: 184, elements: !1964)
!1964 = !{!1965}
!1965 = !DISubrange(count: 23)
!1966 = !DIGlobalVariableExpression(var: !1967, expr: !DIExpression())
!1967 = distinct !DIGlobalVariable(scope: null, file: !1968, line: 95, type: !1969, isLocal: true, isDefinition: true)
!1968 = !DIFile(filename: "./include/trace/events/lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bb4e6643de3c3749267f6f3b5a53bfe0")
!1969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !932, size: 224, elements: !1970)
!1970 = !{!1971}
!1971 = !DISubrange(count: 28)
!1972 = !DIGlobalVariableExpression(var: !1973, expr: !DIExpression())
!1973 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_contention_begin240", scope: !1974, file: !1968, line: 95, type: !53, isLocal: true, isDefinition: true)
!1974 = distinct !DISubprogram(name: "trace_contention_begin", scope: !1968, file: !1968, line: 95, type: !1975, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1977)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{null, !53, !7}
!1977 = !{!1978, !1979, !1980, !1983, !1986, !1988, !1990, !1993, !1996, !1998, !1999}
!1978 = !DILocalVariable(name: "lock", arg: 1, scope: !1974, file: !1968, line: 95, type: !53)
!1979 = !DILocalVariable(name: "flags", arg: 2, scope: !1974, file: !1968, line: 95, type: !7)
!1980 = !DILocalVariable(name: "__idx", scope: !1981, file: !1968, line: 95, type: !71)
!1981 = distinct !DILexicalBlock(scope: !1982, file: !1968, line: 95, column: 1)
!1982 = distinct !DILexicalBlock(scope: !1974, file: !1968, line: 95, column: 1)
!1983 = !DILocalVariable(name: "pscr_ret__", scope: !1984, file: !1968, line: 95, type: !71)
!1984 = distinct !DILexicalBlock(scope: !1985, file: !1968, line: 95, column: 1)
!1985 = distinct !DILexicalBlock(scope: !1981, file: !1968, line: 95, column: 1)
!1986 = !DILocalVariable(name: "__vpp_verify", scope: !1987, file: !1968, line: 95, type: !592)
!1987 = distinct !DILexicalBlock(scope: !1984, file: !1968, line: 95, column: 1)
!1988 = !DILocalVariable(name: "pfo_val__", scope: !1989, file: !1968, line: 95, type: !72)
!1989 = distinct !DILexicalBlock(scope: !1984, file: !1968, line: 95, column: 1)
!1990 = !DILocalVariable(name: "__ret_warn_on", scope: !1991, file: !1968, line: 95, type: !71)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !1968, line: 95, column: 1)
!1992 = distinct !DILexicalBlock(scope: !1981, file: !1968, line: 95, column: 1)
!1993 = !DILocalVariable(name: "__flags", scope: !1994, file: !1968, line: 95, type: !71)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !1968, line: 95, column: 1)
!1995 = distinct !DILexicalBlock(scope: !1991, file: !1968, line: 95, column: 1)
!1996 = !DILocalVariable(name: "it_func_ptr", scope: !1997, file: !1968, line: 95, type: !1906)
!1997 = distinct !DILexicalBlock(scope: !1981, file: !1968, line: 95, column: 1)
!1998 = !DILocalVariable(name: "__data", scope: !1997, file: !1968, line: 95, type: !53)
!1999 = !DILocalVariable(name: "__UNIQUE_ID_rcu238", scope: !2000, file: !1968, line: 95, type: !1906)
!2000 = distinct !DILexicalBlock(scope: !1997, file: !1968, line: 95, column: 1)
!2001 = !DIGlobalVariableExpression(var: !2002, expr: !DIExpression())
!2002 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace241", scope: !1974, file: !1968, line: 95, type: !53, isLocal: true, isDefinition: true)
!2003 = !DIGlobalVariableExpression(var: !2004, expr: !DIExpression())
!2004 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_contention_end248", scope: !2005, file: !1968, line: 122, type: !53, isLocal: true, isDefinition: true)
!2005 = distinct !DISubprogram(name: "trace_contention_end", scope: !1968, file: !1968, line: 122, type: !2006, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2008)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{null, !53, !71}
!2008 = !{!2009, !2010, !2011, !2014, !2017, !2019, !2021, !2024, !2027, !2029, !2030}
!2009 = !DILocalVariable(name: "lock", arg: 1, scope: !2005, file: !1968, line: 122, type: !53)
!2010 = !DILocalVariable(name: "ret", arg: 2, scope: !2005, file: !1968, line: 122, type: !71)
!2011 = !DILocalVariable(name: "__idx", scope: !2012, file: !1968, line: 122, type: !71)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !1968, line: 122, column: 1)
!2013 = distinct !DILexicalBlock(scope: !2005, file: !1968, line: 122, column: 1)
!2014 = !DILocalVariable(name: "pscr_ret__", scope: !2015, file: !1968, line: 122, type: !71)
!2015 = distinct !DILexicalBlock(scope: !2016, file: !1968, line: 122, column: 1)
!2016 = distinct !DILexicalBlock(scope: !2012, file: !1968, line: 122, column: 1)
!2017 = !DILocalVariable(name: "__vpp_verify", scope: !2018, file: !1968, line: 122, type: !592)
!2018 = distinct !DILexicalBlock(scope: !2015, file: !1968, line: 122, column: 1)
!2019 = !DILocalVariable(name: "pfo_val__", scope: !2020, file: !1968, line: 122, type: !72)
!2020 = distinct !DILexicalBlock(scope: !2015, file: !1968, line: 122, column: 1)
!2021 = !DILocalVariable(name: "__ret_warn_on", scope: !2022, file: !1968, line: 122, type: !71)
!2022 = distinct !DILexicalBlock(scope: !2023, file: !1968, line: 122, column: 1)
!2023 = distinct !DILexicalBlock(scope: !2012, file: !1968, line: 122, column: 1)
!2024 = !DILocalVariable(name: "__flags", scope: !2025, file: !1968, line: 122, type: !71)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !1968, line: 122, column: 1)
!2026 = distinct !DILexicalBlock(scope: !2022, file: !1968, line: 122, column: 1)
!2027 = !DILocalVariable(name: "it_func_ptr", scope: !2028, file: !1968, line: 122, type: !1906)
!2028 = distinct !DILexicalBlock(scope: !2012, file: !1968, line: 122, column: 1)
!2029 = !DILocalVariable(name: "__data", scope: !2028, file: !1968, line: 122, type: !53)
!2030 = !DILocalVariable(name: "__UNIQUE_ID_rcu246", scope: !2031, file: !1968, line: 122, type: !1906)
!2031 = distinct !DILexicalBlock(scope: !2028, file: !1968, line: 122, column: 1)
!2032 = !DIGlobalVariableExpression(var: !2033, expr: !DIExpression())
!2033 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace249", scope: !2005, file: !1968, line: 122, type: !53, isLocal: true, isDefinition: true)
!2034 = !DIGlobalVariableExpression(var: !2035, expr: !DIExpression())
!2035 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule264", scope: !2036, file: !3, line: 1293, type: !53, isLocal: true, isDefinition: true)
!2036 = distinct !DISubprogram(name: "__down_read_trylock", scope: !3, file: !3, line: 1276, type: !2037, scopeLine: 1277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2039)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{!71, !1954}
!2039 = !{!2040, !2041, !2042}
!2040 = !DILocalVariable(name: "sem", arg: 1, scope: !2036, file: !3, line: 1276, type: !1954)
!2041 = !DILocalVariable(name: "ret", scope: !2036, file: !3, line: 1278, type: !71)
!2042 = !DILocalVariable(name: "tmp", scope: !2036, file: !3, line: 1279, type: !595)
!2043 = !DIGlobalVariableExpression(var: !2044, expr: !DIExpression())
!2044 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule265", scope: !2045, file: !3, line: 1309, type: !53, isLocal: true, isDefinition: true)
!2045 = distinct !DISubprogram(name: "__down_write_common", scope: !3, file: !3, line: 1300, type: !1952, scopeLine: 1301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2046)
!2046 = !{!2047, !2048, !2049}
!2047 = !DILocalVariable(name: "sem", arg: 1, scope: !2045, file: !3, line: 1300, type: !1954)
!2048 = !DILocalVariable(name: "state", arg: 2, scope: !2045, file: !3, line: 1300, type: !71)
!2049 = !DILocalVariable(name: "ret", scope: !2045, file: !3, line: 1302, type: !71)
!2050 = !DIGlobalVariableExpression(var: !2051, expr: !DIExpression())
!2051 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule266", scope: !2052, file: !3, line: 1330, type: !53, isLocal: true, isDefinition: true)
!2052 = distinct !DISubprogram(name: "__down_write_trylock", scope: !3, file: !3, line: 1323, type: !2037, scopeLine: 1324, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2053)
!2053 = !{!2054, !2055}
!2054 = !DILocalVariable(name: "sem", arg: 1, scope: !2052, file: !3, line: 1323, type: !1954)
!2055 = !DILocalVariable(name: "ret", scope: !2052, file: !3, line: 1325, type: !71)
!2056 = !DIGlobalVariableExpression(var: !2057, expr: !DIExpression())
!2057 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule267", scope: !2058, file: !3, line: 1354, type: !53, isLocal: true, isDefinition: true)
!2058 = distinct !DISubprogram(name: "__up_read", scope: !3, file: !3, line: 1338, type: !2059, scopeLine: 1339, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2061)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{null, !1954}
!2061 = !{!2062, !2063}
!2062 = !DILocalVariable(name: "sem", arg: 1, scope: !2058, file: !3, line: 1338, type: !1954)
!2063 = !DILocalVariable(name: "tmp", scope: !2058, file: !3, line: 1340, type: !595)
!2064 = !DIGlobalVariableExpression(var: !2065, expr: !DIExpression())
!2065 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule268", scope: !2066, file: !3, line: 1377, type: !53, isLocal: true, isDefinition: true)
!2066 = distinct !DISubprogram(name: "__up_write", scope: !3, file: !3, line: 1360, type: !2059, scopeLine: 1361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2067)
!2067 = !{!2068, !2069}
!2068 = !DILocalVariable(name: "sem", arg: 1, scope: !2066, file: !3, line: 1360, type: !1954)
!2069 = !DILocalVariable(name: "tmp", scope: !2066, file: !3, line: 1362, type: !595)
!2070 = !DIGlobalVariableExpression(var: !2071, expr: !DIExpression())
!2071 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule269", scope: !2072, file: !3, line: 1401, type: !53, isLocal: true, isDefinition: true)
!2072 = distinct !DISubprogram(name: "__downgrade_write", scope: !3, file: !3, line: 1383, type: !2059, scopeLine: 1384, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2073)
!2073 = !{!2074, !2075}
!2074 = !DILocalVariable(name: "sem", arg: 1, scope: !2072, file: !3, line: 1383, type: !1954)
!2075 = !DILocalVariable(name: "tmp", scope: !2072, file: !3, line: 1385, type: !595)
!2076 = !{!"rsp"}
!2077 = !{i32 7, !"Dwarf Version", i32 5}
!2078 = !{i32 2, !"Debug Info Version", i32 3}
!2079 = !{i32 1, !"wchar_size", i32 2}
!2080 = !{i32 8, !"cf-protection-branch", i32 1}
!2081 = !{i32 4, !"function_return_thunk_extern", i32 1}
!2082 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!2083 = !{i32 1, !"Code Model", i32 2}
!2084 = !{i32 1, !"override-stack-alignment", i32 8}
!2085 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!2086 = distinct !DISubprogram(name: "__init_rwsem", scope: !3, file: !3, line: 310, type: !2087, scopeLine: 312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2092)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{null, !1954, !949, !2089}
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2091, line: 206, elements: !458)
!2091 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2092 = !{!2093, !2094, !2095}
!2093 = !DILocalVariable(name: "sem", arg: 1, scope: !2086, file: !3, line: 310, type: !1954)
!2094 = !DILocalVariable(name: "name", arg: 2, scope: !2086, file: !3, line: 310, type: !949)
!2095 = !DILocalVariable(name: "key", arg: 3, scope: !2086, file: !3, line: 311, type: !2089)
!2096 = !DILocation(line: 310, column: 40, scope: !2086)
!2097 = !DILocation(line: 310, column: 57, scope: !2086)
!2098 = !DILocation(line: 311, column: 28, scope: !2086)
!2099 = !DILocation(line: 323, column: 19, scope: !2086)
!2100 = !DILocation(line: 323, column: 24, scope: !2086)
!2101 = !DILocation(line: 323, column: 2, scope: !2086)
!2102 = !DILocation(line: 324, column: 2, scope: !2086)
!2103 = !DILocation(line: 324, column: 2, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2086, file: !3, line: 324, column: 2)
!2105 = !DILocation(line: 325, column: 18, scope: !2086)
!2106 = !DILocation(line: 325, column: 23, scope: !2086)
!2107 = !DILocation(line: 325, column: 2, scope: !2086)
!2108 = !DILocation(line: 326, column: 19, scope: !2086)
!2109 = !DILocation(line: 326, column: 24, scope: !2086)
!2110 = !DILocation(line: 326, column: 2, scope: !2086)
!2111 = !DILocation(line: 328, column: 17, scope: !2086)
!2112 = !DILocation(line: 328, column: 22, scope: !2086)
!2113 = !DILocation(line: 328, column: 2, scope: !2086)
!2114 = !DILocation(line: 330, column: 1, scope: !2086)
!2115 = distinct !DISubprogram(name: "atomic_long_set", scope: !2116, file: !2116, line: 3193, type: !2117, scopeLine: 3194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2120)
!2116 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!2117 = !DISubroutineType(types: !2118)
!2118 = !{null, !2119, !595}
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!2120 = !{!2121, !2122}
!2121 = !DILocalVariable(name: "v", arg: 1, scope: !2115, file: !2116, line: 3193, type: !2119)
!2122 = !DILocalVariable(name: "i", arg: 2, scope: !2115, file: !2116, line: 3193, type: !595)
!2123 = !DILocation(line: 3193, column: 32, scope: !2115)
!2124 = !DILocation(line: 3193, column: 40, scope: !2115)
!2125 = !DILocation(line: 3195, column: 26, scope: !2115)
!2126 = !DILocation(line: 3195, column: 2, scope: !2115)
!2127 = !DILocation(line: 3196, column: 22, scope: !2115)
!2128 = !DILocation(line: 3196, column: 25, scope: !2115)
!2129 = !DILocation(line: 3196, column: 2, scope: !2115)
!2130 = !DILocation(line: 3197, column: 1, scope: !2115)
!2131 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !2132, file: !2132, line: 35, type: !2133, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2135)
!2132 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!2133 = !DISubroutineType(types: !2134)
!2134 = !{null, !63}
!2135 = !{!2136}
!2136 = !DILocalVariable(name: "list", arg: 1, scope: !2131, file: !2132, line: 35, type: !63)
!2137 = !DILocation(line: 35, column: 53, scope: !2131)
!2138 = !DILocation(line: 37, column: 2, scope: !2131)
!2139 = !DILocation(line: 37, column: 2, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2131, file: !2132, line: 37, column: 2)
!2141 = !DILocation(line: 37, column: 2, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2140, file: !2132, line: 37, column: 2)
!2143 = !DILocation(line: 37, column: 2, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2140, file: !2132, line: 37, column: 2)
!2145 = !DILocation(line: 38, column: 2, scope: !2131)
!2146 = !DILocation(line: 38, column: 2, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2131, file: !2132, line: 38, column: 2)
!2148 = !DILocation(line: 38, column: 2, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2147, file: !2132, line: 38, column: 2)
!2150 = !DILocation(line: 38, column: 2, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2147, file: !2132, line: 38, column: 2)
!2152 = !DILocation(line: 39, column: 1, scope: !2131)
!2153 = distinct !DISubprogram(name: "osq_lock_init", scope: !507, file: !507, line: 28, type: !2154, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2157)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{null, !2156}
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!2157 = !{!2158}
!2158 = !DILocalVariable(name: "lock", arg: 1, scope: !2153, file: !507, line: 28, type: !2156)
!2159 = !DILocation(line: 28, column: 64, scope: !2153)
!2160 = !DILocation(line: 30, column: 14, scope: !2153)
!2161 = !DILocation(line: 30, column: 20, scope: !2153)
!2162 = !DILocation(line: 30, column: 2, scope: !2153)
!2163 = !DILocation(line: 31, column: 1, scope: !2153)
!2164 = distinct !DISubprogram(name: "down_read", scope: !3, file: !3, line: 1517, type: !2059, scopeLine: 1518, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2165)
!2165 = !{!2166}
!2166 = !DILocalVariable(name: "sem", arg: 1, scope: !2164, file: !3, line: 1517, type: !1954)
!2167 = !DILocation(line: 1517, column: 45, scope: !2164)
!2168 = !DILocation(line: 1519, column: 2, scope: !2164)
!2169 = !DILocation(line: 1519, column: 2, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2164, file: !3, line: 1519, column: 2)
!2171 = !DILocation(line: 1520, column: 2, scope: !2164)
!2172 = !DILocation(line: 1520, column: 2, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2164, file: !3, line: 1520, column: 2)
!2174 = !DILocation(line: 1522, column: 2, scope: !2164)
!2175 = !DILocation(line: 1523, column: 1, scope: !2164)
!2176 = !DILocation(line: 112, column: 2, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !1947, file: !1948, line: 112, column: 2)
!2178 = !DILocation(line: 112, column: 2, scope: !1947)
!2179 = !DILocation(line: 113, column: 1, scope: !1947)
!2180 = distinct !DISubprogram(name: "__down_read", scope: !3, file: !3, line: 1261, type: !2059, scopeLine: 1262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2181)
!2181 = !{!2182}
!2182 = !DILocalVariable(name: "sem", arg: 1, scope: !2180, file: !3, line: 1261, type: !1954)
!2183 = !DILocation(line: 1261, column: 62, scope: !2180)
!2184 = !DILocation(line: 1263, column: 21, scope: !2180)
!2185 = !DILocation(line: 1263, column: 2, scope: !2180)
!2186 = !DILocation(line: 1264, column: 1, scope: !2180)
!2187 = distinct !DISubprogram(name: "down_read_interruptible", scope: !3, file: !3, line: 1526, type: !2037, scopeLine: 1527, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2188)
!2188 = !{!2189}
!2189 = !DILocalVariable(name: "sem", arg: 1, scope: !2187, file: !3, line: 1526, type: !1954)
!2190 = !DILocation(line: 1526, column: 58, scope: !2187)
!2191 = !DILocation(line: 1528, column: 2, scope: !2187)
!2192 = !DILocation(line: 1528, column: 2, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2187, file: !3, line: 1528, column: 2)
!2194 = !DILocation(line: 1529, column: 2, scope: !2187)
!2195 = !DILocation(line: 1529, column: 2, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2187, file: !3, line: 1529, column: 2)
!2197 = !DILocation(line: 1531, column: 6, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2187, file: !3, line: 1531, column: 6)
!2199 = !DILocation(line: 1531, column: 6, scope: !2187)
!2200 = !DILocation(line: 1532, column: 3, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2198, file: !3, line: 1531, column: 82)
!2202 = !DILocation(line: 1532, column: 3, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2201, file: !3, line: 1532, column: 3)
!2204 = !DILocation(line: 1533, column: 3, scope: !2201)
!2205 = !DILocation(line: 1536, column: 2, scope: !2187)
!2206 = !DILocation(line: 1537, column: 1, scope: !2187)
!2207 = distinct !DISubprogram(name: "__down_read_interruptible", scope: !3, file: !3, line: 1266, type: !2037, scopeLine: 1267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2208)
!2208 = !{!2209}
!2209 = !DILocalVariable(name: "sem", arg: 1, scope: !2207, file: !3, line: 1266, type: !1954)
!2210 = !DILocation(line: 1266, column: 75, scope: !2207)
!2211 = !DILocation(line: 1268, column: 28, scope: !2207)
!2212 = !DILocation(line: 1268, column: 9, scope: !2207)
!2213 = !DILocation(line: 1268, column: 2, scope: !2207)
!2214 = distinct !DISubprogram(name: "down_read_killable", scope: !3, file: !3, line: 1540, type: !2037, scopeLine: 1541, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2215)
!2215 = !{!2216}
!2216 = !DILocalVariable(name: "sem", arg: 1, scope: !2214, file: !3, line: 1540, type: !1954)
!2217 = !DILocation(line: 1540, column: 53, scope: !2214)
!2218 = !DILocation(line: 1542, column: 2, scope: !2214)
!2219 = !DILocation(line: 1542, column: 2, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2214, file: !3, line: 1542, column: 2)
!2221 = !DILocation(line: 1543, column: 2, scope: !2214)
!2222 = !DILocation(line: 1543, column: 2, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2214, file: !3, line: 1543, column: 2)
!2224 = !DILocation(line: 1545, column: 6, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2214, file: !3, line: 1545, column: 6)
!2226 = !DILocation(line: 1545, column: 6, scope: !2214)
!2227 = !DILocation(line: 1546, column: 3, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2225, file: !3, line: 1545, column: 77)
!2229 = !DILocation(line: 1546, column: 3, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2228, file: !3, line: 1546, column: 3)
!2231 = !DILocation(line: 1547, column: 3, scope: !2228)
!2232 = !DILocation(line: 1550, column: 2, scope: !2214)
!2233 = !DILocation(line: 1551, column: 1, scope: !2214)
!2234 = distinct !DISubprogram(name: "__down_read_killable", scope: !3, file: !3, line: 1271, type: !2037, scopeLine: 1272, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2235)
!2235 = !{!2236}
!2236 = !DILocalVariable(name: "sem", arg: 1, scope: !2234, file: !3, line: 1271, type: !1954)
!2237 = !DILocation(line: 1271, column: 70, scope: !2234)
!2238 = !DILocation(line: 1273, column: 28, scope: !2234)
!2239 = !DILocation(line: 1273, column: 9, scope: !2234)
!2240 = !DILocation(line: 1273, column: 2, scope: !2234)
!2241 = distinct !DISubprogram(name: "down_read_trylock", scope: !3, file: !3, line: 1557, type: !2037, scopeLine: 1558, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2242)
!2242 = !{!2243, !2244}
!2243 = !DILocalVariable(name: "sem", arg: 1, scope: !2241, file: !3, line: 1557, type: !1954)
!2244 = !DILocalVariable(name: "ret", scope: !2241, file: !3, line: 1559, type: !71)
!2245 = !DILocation(line: 1557, column: 44, scope: !2241)
!2246 = !DILocation(line: 1559, column: 2, scope: !2241)
!2247 = !DILocation(line: 1559, column: 6, scope: !2241)
!2248 = !DILocation(line: 1559, column: 32, scope: !2241)
!2249 = !DILocation(line: 1559, column: 12, scope: !2241)
!2250 = !DILocation(line: 1561, column: 6, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2241, file: !3, line: 1561, column: 6)
!2252 = !DILocation(line: 1561, column: 10, scope: !2251)
!2253 = !DILocation(line: 1561, column: 6, scope: !2241)
!2254 = !DILocation(line: 1562, column: 3, scope: !2251)
!2255 = !DILocation(line: 1562, column: 3, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2251, file: !3, line: 1562, column: 3)
!2257 = !DILocation(line: 1563, column: 9, scope: !2241)
!2258 = !DILocation(line: 1564, column: 1, scope: !2241)
!2259 = !DILocation(line: 1563, column: 2, scope: !2241)
!2260 = !DILocation(line: 1276, column: 60, scope: !2036)
!2261 = !DILocation(line: 1278, column: 2, scope: !2036)
!2262 = !DILocation(line: 1278, column: 6, scope: !2036)
!2263 = !DILocation(line: 1279, column: 2, scope: !2036)
!2264 = !DILocation(line: 1279, column: 7, scope: !2036)
!2265 = !DILocation(line: 1283, column: 2, scope: !2036)
!2266 = !DILocation(line: 1283, column: 2, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2036, file: !3, line: 1283, column: 2)
!2268 = !{i64 2153585437}
!2269 = !DILocation(line: 1284, column: 26, scope: !2036)
!2270 = !DILocation(line: 1284, column: 31, scope: !2036)
!2271 = !DILocation(line: 1284, column: 8, scope: !2036)
!2272 = !DILocation(line: 1284, column: 6, scope: !2036)
!2273 = !DILocation(line: 1285, column: 2, scope: !2036)
!2274 = !DILocation(line: 1285, column: 11, scope: !2036)
!2275 = !DILocation(line: 1285, column: 15, scope: !2036)
!2276 = !DILocation(line: 1285, column: 9, scope: !2036)
!2277 = !DILocation(line: 1286, column: 40, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2279, file: !3, line: 1286, column: 7)
!2279 = distinct !DILexicalBlock(scope: !2036, file: !3, line: 1285, column: 42)
!2280 = !DILocation(line: 1286, column: 45, scope: !2278)
!2281 = !DILocation(line: 1287, column: 11, scope: !2278)
!2282 = !DILocation(line: 1287, column: 15, scope: !2278)
!2283 = !DILocation(line: 1286, column: 7, scope: !2278)
!2284 = !DILocation(line: 1286, column: 7, scope: !2279)
!2285 = !DILocation(line: 1288, column: 27, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2278, file: !3, line: 1287, column: 37)
!2287 = !DILocation(line: 1288, column: 4, scope: !2286)
!2288 = !DILocation(line: 1289, column: 8, scope: !2286)
!2289 = !DILocation(line: 1290, column: 4, scope: !2286)
!2290 = distinct !{!2290, !2273, !2291, !2292, !2293}
!2291 = !DILocation(line: 1292, column: 2, scope: !2036)
!2292 = !{!"llvm.loop.mustprogress"}
!2293 = !{!"llvm.loop.unroll.disable"}
!2294 = !DILocation(line: 1293, column: 2, scope: !2036)
!2295 = !DILocation(line: 1293, column: 2, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2036, file: !3, line: 1293, column: 2)
!2297 = !{i64 2153585783}
!2298 = !DILocation(line: 1293, column: 2, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2296, file: !3, line: 1293, column: 2)
!2300 = !DILocation(line: 1293, column: 2, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2299, file: !3, line: 1293, column: 2)
!2302 = !{i64 2153585965}
!2303 = !DILocation(line: 1294, column: 9, scope: !2036)
!2304 = !DILocation(line: 1295, column: 1, scope: !2036)
!2305 = !DILocation(line: 1294, column: 2, scope: !2036)
!2306 = distinct !DISubprogram(name: "down_write", scope: !3, file: !3, line: 1570, type: !2059, scopeLine: 1571, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2307)
!2307 = !{!2308}
!2308 = !DILocalVariable(name: "sem", arg: 1, scope: !2306, file: !3, line: 1570, type: !1954)
!2309 = !DILocation(line: 1570, column: 46, scope: !2306)
!2310 = !DILocation(line: 1572, column: 2, scope: !2306)
!2311 = !DILocation(line: 1572, column: 2, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2306, file: !3, line: 1572, column: 2)
!2313 = !DILocation(line: 1573, column: 2, scope: !2306)
!2314 = !DILocation(line: 1573, column: 2, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2306, file: !3, line: 1573, column: 2)
!2316 = !DILocation(line: 1574, column: 2, scope: !2306)
!2317 = !DILocation(line: 1575, column: 1, scope: !2306)
!2318 = distinct !DISubprogram(name: "__down_write", scope: !3, file: !3, line: 1313, type: !2059, scopeLine: 1314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2319)
!2319 = !{!2320}
!2320 = !DILocalVariable(name: "sem", arg: 1, scope: !2318, file: !3, line: 1313, type: !1954)
!2321 = !DILocation(line: 1313, column: 63, scope: !2318)
!2322 = !DILocation(line: 1315, column: 22, scope: !2318)
!2323 = !DILocation(line: 1315, column: 2, scope: !2318)
!2324 = !DILocation(line: 1316, column: 1, scope: !2318)
!2325 = distinct !DISubprogram(name: "down_write_killable", scope: !3, file: !3, line: 1581, type: !2037, scopeLine: 1582, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2326)
!2326 = !{!2327}
!2327 = !DILocalVariable(name: "sem", arg: 1, scope: !2325, file: !3, line: 1581, type: !1954)
!2328 = !DILocation(line: 1581, column: 54, scope: !2325)
!2329 = !DILocation(line: 1583, column: 2, scope: !2325)
!2330 = !DILocation(line: 1583, column: 2, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2325, file: !3, line: 1583, column: 2)
!2332 = !DILocation(line: 1584, column: 2, scope: !2325)
!2333 = !DILocation(line: 1584, column: 2, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2325, file: !3, line: 1584, column: 2)
!2335 = !DILocation(line: 1586, column: 6, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2325, file: !3, line: 1586, column: 6)
!2337 = !DILocation(line: 1586, column: 6, scope: !2325)
!2338 = !DILocation(line: 1588, column: 3, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2336, file: !3, line: 1587, column: 31)
!2340 = !DILocation(line: 1588, column: 3, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2339, file: !3, line: 1588, column: 3)
!2342 = !DILocation(line: 1589, column: 3, scope: !2339)
!2343 = !DILocation(line: 1592, column: 2, scope: !2325)
!2344 = !DILocation(line: 1593, column: 1, scope: !2325)
!2345 = distinct !DISubprogram(name: "__down_write_killable", scope: !3, file: !3, line: 1318, type: !2037, scopeLine: 1319, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2346)
!2346 = !{!2347}
!2347 = !DILocalVariable(name: "sem", arg: 1, scope: !2345, file: !3, line: 1318, type: !1954)
!2348 = !DILocation(line: 1318, column: 71, scope: !2345)
!2349 = !DILocation(line: 1320, column: 29, scope: !2345)
!2350 = !DILocation(line: 1320, column: 9, scope: !2345)
!2351 = !DILocation(line: 1320, column: 2, scope: !2345)
!2352 = distinct !DISubprogram(name: "down_write_trylock", scope: !3, file: !3, line: 1599, type: !2037, scopeLine: 1600, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2353)
!2353 = !{!2354, !2355}
!2354 = !DILocalVariable(name: "sem", arg: 1, scope: !2352, file: !3, line: 1599, type: !1954)
!2355 = !DILocalVariable(name: "ret", scope: !2352, file: !3, line: 1601, type: !71)
!2356 = !DILocation(line: 1599, column: 45, scope: !2352)
!2357 = !DILocation(line: 1601, column: 2, scope: !2352)
!2358 = !DILocation(line: 1601, column: 6, scope: !2352)
!2359 = !DILocation(line: 1601, column: 33, scope: !2352)
!2360 = !DILocation(line: 1601, column: 12, scope: !2352)
!2361 = !DILocation(line: 1603, column: 6, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2352, file: !3, line: 1603, column: 6)
!2363 = !DILocation(line: 1603, column: 10, scope: !2362)
!2364 = !DILocation(line: 1603, column: 6, scope: !2352)
!2365 = !DILocation(line: 1604, column: 3, scope: !2362)
!2366 = !DILocation(line: 1604, column: 3, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2362, file: !3, line: 1604, column: 3)
!2368 = !DILocation(line: 1606, column: 9, scope: !2352)
!2369 = !DILocation(line: 1607, column: 1, scope: !2352)
!2370 = !DILocation(line: 1606, column: 2, scope: !2352)
!2371 = !DILocation(line: 1323, column: 61, scope: !2052)
!2372 = !DILocation(line: 1325, column: 2, scope: !2052)
!2373 = !DILocation(line: 1325, column: 6, scope: !2052)
!2374 = !DILocation(line: 1327, column: 2, scope: !2052)
!2375 = !DILocation(line: 1327, column: 2, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2052, file: !3, line: 1327, column: 2)
!2377 = !{i64 2153590662}
!2378 = !DILocation(line: 1329, column: 28, scope: !2052)
!2379 = !DILocation(line: 1329, column: 8, scope: !2052)
!2380 = !DILocation(line: 1329, column: 6, scope: !2052)
!2381 = !DILocation(line: 1330, column: 2, scope: !2052)
!2382 = !DILocation(line: 1330, column: 2, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2052, file: !3, line: 1330, column: 2)
!2384 = !{i64 2153590808}
!2385 = !DILocation(line: 1330, column: 2, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2383, file: !3, line: 1330, column: 2)
!2387 = !DILocation(line: 1330, column: 2, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2386, file: !3, line: 1330, column: 2)
!2389 = !{i64 2153590990}
!2390 = !DILocation(line: 1332, column: 9, scope: !2052)
!2391 = !DILocation(line: 1333, column: 1, scope: !2052)
!2392 = !DILocation(line: 1332, column: 2, scope: !2052)
!2393 = distinct !DISubprogram(name: "up_read", scope: !3, file: !3, line: 1613, type: !2059, scopeLine: 1614, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2394)
!2394 = !{!2395}
!2395 = !DILocalVariable(name: "sem", arg: 1, scope: !2393, file: !3, line: 1613, type: !1954)
!2396 = !DILocation(line: 1613, column: 35, scope: !2393)
!2397 = !DILocation(line: 1615, column: 2, scope: !2393)
!2398 = !DILocation(line: 1615, column: 2, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2393, file: !3, line: 1615, column: 2)
!2400 = !DILocation(line: 1616, column: 12, scope: !2393)
!2401 = !DILocation(line: 1616, column: 2, scope: !2393)
!2402 = !DILocation(line: 1617, column: 1, scope: !2393)
!2403 = !DILocation(line: 1338, column: 51, scope: !2058)
!2404 = !DILocation(line: 1340, column: 2, scope: !2058)
!2405 = !DILocation(line: 1340, column: 7, scope: !2058)
!2406 = !DILocation(line: 1345, column: 2, scope: !2058)
!2407 = !DILocation(line: 1345, column: 2, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2058, file: !3, line: 1345, column: 2)
!2409 = !{i64 2153592883}
!2410 = !DILocation(line: 1346, column: 27, scope: !2058)
!2411 = !DILocation(line: 1346, column: 2, scope: !2058)
!2412 = !DILocation(line: 1347, column: 60, scope: !2058)
!2413 = !DILocation(line: 1347, column: 65, scope: !2058)
!2414 = !DILocation(line: 1347, column: 8, scope: !2058)
!2415 = !DILocation(line: 1347, column: 6, scope: !2058)
!2416 = !DILocation(line: 1349, column: 6, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2058, file: !3, line: 1349, column: 6)
!2418 = !DILocation(line: 1349, column: 6, scope: !2058)
!2419 = !DILocation(line: 1351, column: 22, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2417, file: !3, line: 1350, column: 30)
!2421 = !DILocation(line: 1351, column: 3, scope: !2420)
!2422 = !DILocation(line: 1352, column: 14, scope: !2420)
!2423 = !DILocation(line: 1352, column: 3, scope: !2420)
!2424 = !DILocation(line: 1353, column: 2, scope: !2420)
!2425 = !DILocation(line: 1354, column: 2, scope: !2058)
!2426 = !DILocation(line: 1354, column: 2, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2058, file: !3, line: 1354, column: 2)
!2428 = !{i64 2153593312}
!2429 = !DILocation(line: 1354, column: 2, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2427, file: !3, line: 1354, column: 2)
!2431 = !DILocation(line: 1354, column: 2, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2430, file: !3, line: 1354, column: 2)
!2433 = !{i64 2153593494}
!2434 = !DILocation(line: 1355, column: 1, scope: !2058)
!2435 = distinct !DISubprogram(name: "up_write", scope: !3, file: !3, line: 1623, type: !2059, scopeLine: 1624, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2436)
!2436 = !{!2437}
!2437 = !DILocalVariable(name: "sem", arg: 1, scope: !2435, file: !3, line: 1623, type: !1954)
!2438 = !DILocation(line: 1623, column: 36, scope: !2435)
!2439 = !DILocation(line: 1625, column: 2, scope: !2435)
!2440 = !DILocation(line: 1625, column: 2, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2435, file: !3, line: 1625, column: 2)
!2442 = !DILocation(line: 1626, column: 13, scope: !2435)
!2443 = !DILocation(line: 1626, column: 2, scope: !2435)
!2444 = !DILocation(line: 1627, column: 1, scope: !2435)
!2445 = !DILocation(line: 1360, column: 52, scope: !2066)
!2446 = !DILocation(line: 1362, column: 2, scope: !2066)
!2447 = !DILocation(line: 1362, column: 7, scope: !2066)
!2448 = !DILocation(line: 1372, column: 2, scope: !2066)
!2449 = !DILocation(line: 1372, column: 2, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2066, file: !3, line: 1372, column: 2)
!2451 = !{i64 2153599448}
!2452 = !DILocation(line: 1373, column: 20, scope: !2066)
!2453 = !DILocation(line: 1373, column: 2, scope: !2066)
!2454 = !DILocation(line: 1374, column: 61, scope: !2066)
!2455 = !DILocation(line: 1374, column: 66, scope: !2066)
!2456 = !DILocation(line: 1374, column: 8, scope: !2066)
!2457 = !DILocation(line: 1374, column: 6, scope: !2066)
!2458 = !DILocation(line: 1375, column: 6, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2066, file: !3, line: 1375, column: 6)
!2460 = !DILocation(line: 1375, column: 6, scope: !2066)
!2461 = !DILocation(line: 1376, column: 14, scope: !2459)
!2462 = !DILocation(line: 1376, column: 3, scope: !2459)
!2463 = !DILocation(line: 1377, column: 2, scope: !2066)
!2464 = !DILocation(line: 1377, column: 2, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2066, file: !3, line: 1377, column: 2)
!2466 = !{i64 2153599660}
!2467 = !DILocation(line: 1377, column: 2, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2465, file: !3, line: 1377, column: 2)
!2469 = !DILocation(line: 1377, column: 2, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2468, file: !3, line: 1377, column: 2)
!2471 = !{i64 2153599842}
!2472 = !DILocation(line: 1378, column: 1, scope: !2066)
!2473 = distinct !DISubprogram(name: "downgrade_write", scope: !3, file: !3, line: 1633, type: !2059, scopeLine: 1634, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2474)
!2474 = !{!2475}
!2475 = !DILocalVariable(name: "sem", arg: 1, scope: !2473, file: !3, line: 1633, type: !1954)
!2476 = !DILocation(line: 1633, column: 43, scope: !2473)
!2477 = !DILocation(line: 1635, column: 2, scope: !2473)
!2478 = !DILocation(line: 1635, column: 2, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2473, file: !3, line: 1635, column: 2)
!2480 = !DILocation(line: 1636, column: 20, scope: !2473)
!2481 = !DILocation(line: 1636, column: 2, scope: !2473)
!2482 = !DILocation(line: 1637, column: 1, scope: !2473)
!2483 = !DILocation(line: 1383, column: 59, scope: !2072)
!2484 = !DILocation(line: 1385, column: 2, scope: !2072)
!2485 = !DILocation(line: 1385, column: 7, scope: !2072)
!2486 = !DILocation(line: 1395, column: 2, scope: !2072)
!2487 = !DILocation(line: 1395, column: 2, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2072, file: !3, line: 1395, column: 2)
!2489 = !{i64 2153601735}
!2490 = !DILocation(line: 1397, column: 44, scope: !2072)
!2491 = !DILocation(line: 1397, column: 49, scope: !2072)
!2492 = !DILocation(line: 1396, column: 8, scope: !2072)
!2493 = !DILocation(line: 1396, column: 6, scope: !2072)
!2494 = !DILocation(line: 1398, column: 25, scope: !2072)
!2495 = !DILocation(line: 1398, column: 2, scope: !2072)
!2496 = !DILocation(line: 1399, column: 6, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2072, file: !3, line: 1399, column: 6)
!2498 = !DILocation(line: 1399, column: 10, scope: !2497)
!2499 = !DILocation(line: 1399, column: 6, scope: !2072)
!2500 = !DILocation(line: 1400, column: 24, scope: !2497)
!2501 = !DILocation(line: 1400, column: 3, scope: !2497)
!2502 = !DILocation(line: 1401, column: 2, scope: !2072)
!2503 = !DILocation(line: 1401, column: 2, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2072, file: !3, line: 1401, column: 2)
!2505 = !{i64 2153601933}
!2506 = !DILocation(line: 1401, column: 2, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2504, file: !3, line: 1401, column: 2)
!2508 = !DILocation(line: 1401, column: 2, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2507, file: !3, line: 1401, column: 2)
!2510 = !{i64 2153602115}
!2511 = !DILocation(line: 1402, column: 1, scope: !2072)
!2512 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !2513, file: !2513, line: 80, type: !2514, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2519)
!2513 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!2514 = !DISubroutineType(types: !2515)
!2515 = !{null, !2516, !1257}
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2518)
!2518 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2519 = !{!2520, !2521}
!2520 = !DILocalVariable(name: "v", arg: 1, scope: !2512, file: !2513, line: 80, type: !2516)
!2521 = !DILocalVariable(name: "size", arg: 2, scope: !2512, file: !2513, line: 80, type: !1257)
!2522 = !DILocation(line: 80, column: 74, scope: !2512)
!2523 = !DILocation(line: 80, column: 84, scope: !2512)
!2524 = !DILocation(line: 82, column: 20, scope: !2512)
!2525 = !DILocation(line: 82, column: 23, scope: !2512)
!2526 = !DILocation(line: 82, column: 2, scope: !2512)
!2527 = !DILocation(line: 83, column: 2, scope: !2512)
!2528 = !DILocation(line: 84, column: 1, scope: !2512)
!2529 = distinct !DISubprogram(name: "raw_atomic_long_set", scope: !492, file: !492, line: 76, type: !2117, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2530)
!2530 = !{!2531, !2532}
!2531 = !DILocalVariable(name: "v", arg: 1, scope: !2529, file: !492, line: 76, type: !2119)
!2532 = !DILocalVariable(name: "i", arg: 2, scope: !2529, file: !492, line: 76, type: !595)
!2533 = !DILocation(line: 76, column: 36, scope: !2529)
!2534 = !DILocation(line: 76, column: 44, scope: !2529)
!2535 = !DILocation(line: 79, column: 19, scope: !2529)
!2536 = !DILocation(line: 79, column: 22, scope: !2529)
!2537 = !DILocation(line: 79, column: 2, scope: !2529)
!2538 = !DILocation(line: 83, column: 1, scope: !2529)
!2539 = distinct !DISubprogram(name: "kasan_check_write", scope: !2540, file: !2540, line: 44, type: !2541, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2543)
!2540 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!2541 = !DISubroutineType(types: !2542)
!2542 = !{!946, !2516, !7}
!2543 = !{!2544, !2545}
!2544 = !DILocalVariable(name: "p", arg: 1, scope: !2539, file: !2540, line: 44, type: !2516)
!2545 = !DILocalVariable(name: "size", arg: 2, scope: !2539, file: !2540, line: 44, type: !7)
!2546 = !DILocation(line: 44, column: 59, scope: !2539)
!2547 = !DILocation(line: 44, column: 75, scope: !2539)
!2548 = !DILocation(line: 46, column: 2, scope: !2539)
!2549 = distinct !DISubprogram(name: "kcsan_check_access", scope: !2550, file: !2550, line: 229, type: !2551, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2553)
!2550 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!2551 = !DISubroutineType(types: !2552)
!2552 = !{null, !2516, !1257, !71}
!2553 = !{!2554, !2555, !2556}
!2554 = !DILocalVariable(name: "ptr", arg: 1, scope: !2549, file: !2550, line: 229, type: !2516)
!2555 = !DILocalVariable(name: "size", arg: 2, scope: !2549, file: !2550, line: 229, type: !1257)
!2556 = !DILocalVariable(name: "type", arg: 3, scope: !2549, file: !2550, line: 230, type: !71)
!2557 = !DILocation(line: 229, column: 60, scope: !2549)
!2558 = !DILocation(line: 229, column: 72, scope: !2549)
!2559 = !DILocation(line: 230, column: 15, scope: !2549)
!2560 = !DILocation(line: 230, column: 23, scope: !2549)
!2561 = distinct !DISubprogram(name: "raw_atomic64_set", scope: !2562, file: !2562, line: 2600, type: !2563, scopeLine: 2601, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2566)
!2562 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!2563 = !DISubroutineType(types: !2564)
!2564 = !{null, !2565, !56}
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!2566 = !{!2567, !2568}
!2567 = !DILocalVariable(name: "v", arg: 1, scope: !2561, file: !2562, line: 2600, type: !2565)
!2568 = !DILocalVariable(name: "i", arg: 2, scope: !2561, file: !2562, line: 2600, type: !56)
!2569 = !DILocation(line: 2600, column: 30, scope: !2561)
!2570 = !DILocation(line: 2600, column: 37, scope: !2561)
!2571 = !DILocation(line: 2602, column: 20, scope: !2561)
!2572 = !DILocation(line: 2602, column: 23, scope: !2561)
!2573 = !DILocation(line: 2602, column: 2, scope: !2561)
!2574 = !DILocation(line: 2603, column: 1, scope: !2561)
!2575 = distinct !DISubprogram(name: "arch_atomic64_set", scope: !2576, file: !2576, line: 18, type: !2563, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2577)
!2576 = !DIFile(filename: "./arch/x86/include/asm/atomic64_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e491f305c5821f66703047d9c813539")
!2577 = !{!2578, !2579}
!2578 = !DILocalVariable(name: "v", arg: 1, scope: !2575, file: !2576, line: 18, type: !2565)
!2579 = !DILocalVariable(name: "i", arg: 2, scope: !2575, file: !2576, line: 18, type: !56)
!2580 = !DILocation(line: 18, column: 59, scope: !2575)
!2581 = !DILocation(line: 18, column: 66, scope: !2575)
!2582 = !DILocation(line: 20, column: 2, scope: !2575)
!2583 = !DILocation(line: 20, column: 2, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2575, file: !2576, line: 20, column: 2)
!2585 = !DILocation(line: 21, column: 1, scope: !2575)
!2586 = distinct !DISubprogram(name: "atomic_set", scope: !2116, file: !2116, line: 65, type: !2587, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2590)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{null, !2589, !71}
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!2590 = !{!2591, !2592}
!2591 = !DILocalVariable(name: "v", arg: 1, scope: !2586, file: !2116, line: 65, type: !2589)
!2592 = !DILocalVariable(name: "i", arg: 2, scope: !2586, file: !2116, line: 65, type: !71)
!2593 = !DILocation(line: 65, column: 22, scope: !2586)
!2594 = !DILocation(line: 65, column: 29, scope: !2586)
!2595 = !DILocation(line: 67, column: 26, scope: !2586)
!2596 = !DILocation(line: 67, column: 2, scope: !2586)
!2597 = !DILocation(line: 68, column: 17, scope: !2586)
!2598 = !DILocation(line: 68, column: 20, scope: !2586)
!2599 = !DILocation(line: 68, column: 2, scope: !2586)
!2600 = !DILocation(line: 69, column: 1, scope: !2586)
!2601 = distinct !DISubprogram(name: "raw_atomic_set", scope: !2562, file: !2562, line: 488, type: !2587, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2602)
!2602 = !{!2603, !2604}
!2603 = !DILocalVariable(name: "v", arg: 1, scope: !2601, file: !2562, line: 488, type: !2589)
!2604 = !DILocalVariable(name: "i", arg: 2, scope: !2601, file: !2562, line: 488, type: !71)
!2605 = !DILocation(line: 488, column: 26, scope: !2601)
!2606 = !DILocation(line: 488, column: 33, scope: !2601)
!2607 = !DILocation(line: 490, column: 18, scope: !2601)
!2608 = !DILocation(line: 490, column: 21, scope: !2601)
!2609 = !DILocation(line: 490, column: 2, scope: !2601)
!2610 = !DILocation(line: 491, column: 1, scope: !2601)
!2611 = distinct !DISubprogram(name: "arch_atomic_set", scope: !2612, file: !2612, line: 26, type: !2587, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2613)
!2612 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!2613 = !{!2614, !2615}
!2614 = !DILocalVariable(name: "v", arg: 1, scope: !2611, file: !2612, line: 26, type: !2589)
!2615 = !DILocalVariable(name: "i", arg: 2, scope: !2611, file: !2612, line: 26, type: !71)
!2616 = !DILocation(line: 26, column: 55, scope: !2611)
!2617 = !DILocation(line: 26, column: 62, scope: !2611)
!2618 = !DILocation(line: 28, column: 2, scope: !2611)
!2619 = !DILocation(line: 28, column: 2, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2611, file: !2612, line: 28, column: 2)
!2621 = !DILocation(line: 29, column: 1, scope: !2611)
!2622 = !DILocation(line: 1243, column: 68, scope: !1951)
!2623 = !DILocation(line: 1243, column: 77, scope: !1951)
!2624 = !DILocation(line: 1245, column: 2, scope: !1951)
!2625 = !DILocation(line: 1245, column: 6, scope: !1951)
!2626 = !DILocation(line: 1246, column: 2, scope: !1951)
!2627 = !DILocation(line: 1246, column: 7, scope: !1951)
!2628 = !DILocation(line: 1248, column: 2, scope: !1951)
!2629 = !DILocation(line: 1248, column: 2, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !1951, file: !3, line: 1248, column: 2)
!2631 = !{i64 2153582510}
!2632 = !DILocation(line: 1249, column: 26, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !1951, file: !3, line: 1249, column: 6)
!2634 = !DILocation(line: 1249, column: 7, scope: !2633)
!2635 = !DILocation(line: 1249, column: 6, scope: !1951)
!2636 = !DILocation(line: 1250, column: 39, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2638, file: !3, line: 1250, column: 7)
!2638 = distinct !DILexicalBlock(scope: !2633, file: !3, line: 1249, column: 40)
!2639 = !DILocation(line: 1250, column: 44, scope: !2637)
!2640 = !DILocation(line: 1250, column: 51, scope: !2637)
!2641 = !DILocation(line: 1250, column: 14, scope: !2637)
!2642 = !DILocation(line: 1250, column: 7, scope: !2637)
!2643 = !DILocation(line: 1250, column: 7, scope: !2638)
!2644 = !DILocation(line: 1251, column: 8, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2637, file: !3, line: 1250, column: 60)
!2646 = !DILocation(line: 1252, column: 4, scope: !2645)
!2647 = !DILocation(line: 1255, column: 2, scope: !2638)
!2648 = !DILocation(line: 1249, column: 37, scope: !2633)
!2649 = !DILocation(line: 1256, column: 1, scope: !1951)
!2650 = !DILocation(line: 1257, column: 2, scope: !1951)
!2651 = !DILocation(line: 1257, column: 2, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !1951, file: !3, line: 1257, column: 2)
!2653 = !{i64 2153582658}
!2654 = !DILocation(line: 1257, column: 2, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2652, file: !3, line: 1257, column: 2)
!2656 = !DILocation(line: 1257, column: 2, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2655, file: !3, line: 1257, column: 2)
!2658 = !{i64 2153582840}
!2659 = !DILocation(line: 1258, column: 9, scope: !1951)
!2660 = !DILocation(line: 1259, column: 1, scope: !1951)
!2661 = !DILocation(line: 1258, column: 2, scope: !1951)
!2662 = distinct !DISubprogram(name: "__preempt_count_add", scope: !2663, file: !2663, line: 78, type: !1239, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2664)
!2663 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!2664 = !{!2665, !2666, !2669}
!2665 = !DILocalVariable(name: "val", arg: 1, scope: !2662, file: !2663, line: 78, type: !71)
!2666 = !DILocalVariable(name: "pao_ID__", scope: !2667, file: !2663, line: 80, type: !2668)
!2667 = distinct !DILexicalBlock(scope: !2662, file: !2663, line: 80, column: 2)
!2668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!2669 = !DILocalVariable(name: "pto_val__", scope: !2670, file: !2663, line: 80, type: !72)
!2670 = distinct !DILexicalBlock(scope: !2671, file: !2663, line: 80, column: 2)
!2671 = distinct !DILexicalBlock(scope: !2672, file: !2663, line: 80, column: 2)
!2672 = distinct !DILexicalBlock(scope: !2667, file: !2663, line: 80, column: 2)
!2673 = !DILocation(line: 78, column: 53, scope: !2662)
!2674 = !DILocation(line: 80, column: 2, scope: !2662)
!2675 = !DILocation(line: 80, column: 2, scope: !2667)
!2676 = !DILocation(line: 80, column: 2, scope: !2672)
!2677 = !DILocation(line: 80, column: 2, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2672, file: !2663, line: 80, column: 2)
!2679 = !{i64 2149633145}
!2680 = !DILocation(line: 80, column: 2, scope: !2671)
!2681 = !DILocation(line: 80, column: 2, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2671, file: !2663, line: 80, column: 2)
!2683 = !{i64 2149633440}
!2684 = !DILocation(line: 80, column: 2, scope: !2670)
!2685 = !{i64 2149634145}
!2686 = !DILocation(line: 81, column: 1, scope: !2662)
!2687 = distinct !DISubprogram(name: "rwsem_read_trylock", scope: !3, file: !3, line: 241, type: !2688, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2691)
!2688 = !DISubroutineType(types: !2689)
!2689 = !{!946, !1954, !2690}
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!2691 = !{!2692, !2693, !2694, !2697}
!2692 = !DILocalVariable(name: "sem", arg: 1, scope: !2687, file: !3, line: 241, type: !1954)
!2693 = !DILocalVariable(name: "cntp", arg: 2, scope: !2687, file: !3, line: 241, type: !2690)
!2694 = !DILocalVariable(name: "__ret_warn_on", scope: !2695, file: !3, line: 245, type: !71)
!2695 = distinct !DILexicalBlock(scope: !2696, file: !3, line: 245, column: 6)
!2696 = distinct !DILexicalBlock(scope: !2687, file: !3, line: 245, column: 6)
!2697 = !DILocalVariable(name: "__flags", scope: !2698, file: !3, line: 245, type: !71)
!2698 = distinct !DILexicalBlock(scope: !2699, file: !3, line: 245, column: 6)
!2699 = distinct !DILexicalBlock(scope: !2695, file: !3, line: 245, column: 6)
!2700 = !DILocation(line: 241, column: 60, scope: !2687)
!2701 = !DILocation(line: 241, column: 71, scope: !2687)
!2702 = !DILocation(line: 243, column: 61, scope: !2687)
!2703 = !DILocation(line: 243, column: 66, scope: !2687)
!2704 = !DILocation(line: 243, column: 10, scope: !2687)
!2705 = !DILocation(line: 243, column: 3, scope: !2687)
!2706 = !DILocation(line: 243, column: 8, scope: !2687)
!2707 = !DILocation(line: 245, column: 6, scope: !2695)
!2708 = !DILocation(line: 245, column: 6, scope: !2699)
!2709 = !DILocation(line: 245, column: 6, scope: !2698)
!2710 = !DILocation(line: 245, column: 6, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2698, file: !3, line: 245, column: 6)
!2712 = !DILocation(line: 245, column: 6, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2698, file: !3, line: 245, column: 6)
!2714 = !{i64 2153531696, i64 2153531725, i64 2153531771, i64 2153531829, i64 2153531883, i64 2153531937, i64 2153531992, i64 2153532023, i64 2153532331, i64 2153532337, i64 2153532384, i64 2153532407, i64 2153532433}
!2715 = !DILocation(line: 245, column: 6, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2698, file: !3, line: 245, column: 6)
!2717 = !DILocation(line: 245, column: 6, scope: !2696)
!2718 = !DILocation(line: 245, column: 6, scope: !2687)
!2719 = !DILocation(line: 246, column: 26, scope: !2696)
!2720 = !DILocation(line: 246, column: 3, scope: !2696)
!2721 = !DILocation(line: 248, column: 9, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2687, file: !3, line: 248, column: 6)
!2723 = !DILocation(line: 248, column: 8, scope: !2722)
!2724 = !DILocation(line: 248, column: 14, scope: !2722)
!2725 = !DILocation(line: 248, column: 6, scope: !2687)
!2726 = !DILocation(line: 249, column: 26, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2722, file: !3, line: 248, column: 41)
!2728 = !DILocation(line: 249, column: 3, scope: !2727)
!2729 = !DILocation(line: 250, column: 3, scope: !2727)
!2730 = !DILocation(line: 253, column: 2, scope: !2687)
!2731 = !DILocation(line: 254, column: 1, scope: !2687)
!2732 = distinct !DISubprogram(name: "IS_ERR", scope: !2733, file: !2733, line: 59, type: !2734, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2736)
!2733 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!2734 = !DISubroutineType(types: !2735)
!2735 = !{!946, !592}
!2736 = !{!2737}
!2737 = !DILocalVariable(name: "ptr", arg: 1, scope: !2732, file: !2733, line: 59, type: !592)
!2738 = !DILocation(line: 59, column: 60, scope: !2732)
!2739 = !DILocation(line: 61, column: 9, scope: !2732)
!2740 = !DILocation(line: 61, column: 2, scope: !2732)
!2741 = distinct !DISubprogram(name: "rwsem_down_read_slowpath", scope: !3, file: !3, line: 996, type: !2742, scopeLine: 997, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2744)
!2742 = !DISubroutineType(types: !2743)
!2743 = !{!1954, !1954, !595, !7}
!2744 = !{!2745, !2746, !2747, !2748, !2749, !2750, !2751, !2758, !2759, !2768, !2770, !2773}
!2745 = !DILocalVariable(name: "sem", arg: 1, scope: !2741, file: !3, line: 996, type: !1954)
!2746 = !DILocalVariable(name: "count", arg: 2, scope: !2741, file: !3, line: 996, type: !595)
!2747 = !DILocalVariable(name: "state", arg: 3, scope: !2741, file: !3, line: 996, type: !7)
!2748 = !DILocalVariable(name: "adjustment", scope: !2741, file: !3, line: 998, type: !595)
!2749 = !DILocalVariable(name: "rcnt", scope: !2741, file: !3, line: 999, type: !595)
!2750 = !DILocalVariable(name: "waiter", scope: !2741, file: !3, line: 1000, type: !1895)
!2751 = !DILocalVariable(name: "wake_q", scope: !2741, file: !3, line: 1001, type: !2752)
!2752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_head", file: !2753, line: 38, size: 128, elements: !2754)
!2753 = !DIFile(filename: "./include/linux/sched/wake_q.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d0534a004845bdc2d4b9ab1b4e9297e")
!2754 = !{!2755, !2756}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2752, file: !2753, line: 39, baseType: !1291, size: 64)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "lastp", scope: !2752, file: !2753, line: 40, baseType: !2757, size: 64, offset: 64)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!2758 = !DILabel(scope: !2741, name: "queue", file: !3, line: 1034)
!2759 = !DILocalVariable(name: "__ai_ptr", scope: !2760, file: !3, line: 1073, type: !2767)
!2760 = distinct !DILexicalBlock(scope: !2761, file: !3, line: 1073, column: 3)
!2761 = distinct !DILexicalBlock(scope: !2762, file: !3, line: 1073, column: 3)
!2762 = distinct !DILexicalBlock(scope: !2763, file: !3, line: 1073, column: 3)
!2763 = distinct !DILexicalBlock(scope: !2764, file: !3, line: 1073, column: 3)
!2764 = distinct !DILexicalBlock(scope: !2765, file: !3, line: 1072, column: 11)
!2765 = distinct !DILexicalBlock(scope: !2766, file: !3, line: 1072, column: 2)
!2766 = distinct !DILexicalBlock(scope: !2741, file: !3, line: 1072, column: 2)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2768 = !DILocalVariable(name: "__ret", scope: !2769, file: !3, line: 1073, type: !7)
!2769 = distinct !DILexicalBlock(scope: !2760, file: !3, line: 1073, column: 3)
!2770 = !DILocalVariable(name: "___p1", scope: !2771, file: !3, line: 1074, type: !85)
!2771 = distinct !DILexicalBlock(scope: !2772, file: !3, line: 1074, column: 8)
!2772 = distinct !DILexicalBlock(scope: !2764, file: !3, line: 1074, column: 7)
!2773 = !DILabel(scope: !2741, name: "out_nolock", file: !3, line: 1095)
!2774 = !DILocation(line: 996, column: 47, scope: !2741)
!2775 = !DILocation(line: 996, column: 57, scope: !2741)
!2776 = !DILocation(line: 996, column: 77, scope: !2741)
!2777 = !DILocation(line: 998, column: 2, scope: !2741)
!2778 = !DILocation(line: 998, column: 7, scope: !2741)
!2779 = !DILocation(line: 999, column: 2, scope: !2741)
!2780 = !DILocation(line: 999, column: 7, scope: !2741)
!2781 = !DILocation(line: 999, column: 15, scope: !2741)
!2782 = !DILocation(line: 999, column: 21, scope: !2741)
!2783 = !DILocation(line: 1000, column: 2, scope: !2741)
!2784 = !DILocation(line: 1000, column: 22, scope: !2741)
!2785 = !DILocation(line: 1001, column: 2, scope: !2741)
!2786 = !DILocation(line: 1008, column: 25, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2741, file: !3, line: 1008, column: 6)
!2788 = !DILocation(line: 1008, column: 30, scope: !2787)
!2789 = !DILocation(line: 1008, column: 7, scope: !2787)
!2790 = !DILocation(line: 1008, column: 37, scope: !2787)
!2791 = !DILocation(line: 1008, column: 59, scope: !2787)
!2792 = !DILocation(line: 1009, column: 7, scope: !2787)
!2793 = !DILocation(line: 1009, column: 12, scope: !2787)
!2794 = !DILocation(line: 1009, column: 17, scope: !2787)
!2795 = !DILocation(line: 1009, column: 22, scope: !2787)
!2796 = !DILocation(line: 1009, column: 28, scope: !2787)
!2797 = !DILocation(line: 1008, column: 6, scope: !2741)
!2798 = !DILocation(line: 1010, column: 3, scope: !2787)
!2799 = !DILocation(line: 1015, column: 8, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2741, file: !3, line: 1015, column: 6)
!2801 = !DILocation(line: 1015, column: 14, scope: !2800)
!2802 = !DILocation(line: 1015, column: 6, scope: !2741)
!2803 = !DILocation(line: 1016, column: 26, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2800, file: !3, line: 1015, column: 61)
!2805 = !DILocation(line: 1016, column: 3, scope: !2804)
!2806 = !DILocation(line: 1023, column: 8, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2804, file: !3, line: 1023, column: 7)
!2808 = !DILocation(line: 1023, column: 13, scope: !2807)
!2809 = !DILocation(line: 1023, column: 19, scope: !2807)
!2810 = !DILocation(line: 1023, column: 23, scope: !2807)
!2811 = !DILocation(line: 1023, column: 29, scope: !2807)
!2812 = !DILocation(line: 1023, column: 7, scope: !2804)
!2813 = !DILocation(line: 1024, column: 4, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2807, file: !3, line: 1023, column: 52)
!2815 = !DILocation(line: 1025, column: 21, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2814, file: !3, line: 1025, column: 8)
!2817 = !DILocation(line: 1025, column: 26, scope: !2816)
!2818 = !DILocation(line: 1025, column: 9, scope: !2816)
!2819 = !DILocation(line: 1025, column: 8, scope: !2814)
!2820 = !DILocation(line: 1026, column: 21, scope: !2816)
!2821 = !DILocation(line: 1026, column: 5, scope: !2816)
!2822 = !DILocation(line: 1028, column: 4, scope: !2814)
!2823 = !DILocation(line: 1029, column: 4, scope: !2814)
!2824 = !DILocation(line: 1030, column: 3, scope: !2814)
!2825 = !DILocation(line: 1031, column: 10, scope: !2804)
!2826 = !DILocation(line: 1031, column: 3, scope: !2804)
!2827 = !DILocation(line: 1015, column: 58, scope: !2800)
!2828 = !DILocation(line: 1034, column: 1, scope: !2741)
!2829 = !DILocation(line: 1035, column: 16, scope: !2741)
!2830 = !DILocation(line: 1035, column: 9, scope: !2741)
!2831 = !DILocation(line: 1035, column: 14, scope: !2741)
!2832 = !DILocation(line: 1036, column: 9, scope: !2741)
!2833 = !DILocation(line: 1036, column: 14, scope: !2741)
!2834 = !DILocation(line: 1037, column: 19, scope: !2741)
!2835 = !DILocation(line: 1037, column: 27, scope: !2741)
!2836 = !DILocation(line: 1037, column: 9, scope: !2741)
!2837 = !DILocation(line: 1037, column: 17, scope: !2741)
!2838 = !DILocation(line: 1038, column: 9, scope: !2741)
!2839 = !DILocation(line: 1038, column: 21, scope: !2741)
!2840 = !DILocation(line: 1040, column: 2, scope: !2741)
!2841 = !DILocation(line: 1041, column: 18, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2741, file: !3, line: 1041, column: 6)
!2843 = !DILocation(line: 1041, column: 23, scope: !2842)
!2844 = !DILocation(line: 1041, column: 6, scope: !2842)
!2845 = !DILocation(line: 1041, column: 6, scope: !2741)
!2846 = !DILocation(line: 1048, column: 27, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2848, file: !3, line: 1048, column: 7)
!2848 = distinct !DILexicalBlock(scope: !2842, file: !3, line: 1041, column: 35)
!2849 = !DILocation(line: 1048, column: 32, scope: !2847)
!2850 = !DILocation(line: 1048, column: 9, scope: !2847)
!2851 = !DILocation(line: 1048, column: 39, scope: !2847)
!2852 = !DILocation(line: 1048, column: 7, scope: !2848)
!2853 = !DILocation(line: 1050, column: 4, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2847, file: !3, line: 1048, column: 61)
!2855 = !DILocation(line: 1050, column: 4, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2854, file: !3, line: 1050, column: 4)
!2857 = !DILocation(line: 1050, column: 4, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2856, file: !3, line: 1050, column: 4)
!2859 = !DILocation(line: 1050, column: 4, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2856, file: !3, line: 1050, column: 4)
!2861 = !DILocation(line: 1050, column: 4, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2860, file: !3, line: 1050, column: 4)
!2863 = !{i64 2153558379}
!2864 = !DILocation(line: 1051, column: 4, scope: !2854)
!2865 = !DILocation(line: 1052, column: 27, scope: !2854)
!2866 = !DILocation(line: 1052, column: 4, scope: !2854)
!2867 = !DILocation(line: 1054, column: 11, scope: !2854)
!2868 = !DILocation(line: 1054, column: 4, scope: !2854)
!2869 = !DILocation(line: 1056, column: 14, scope: !2848)
!2870 = !DILocation(line: 1057, column: 2, scope: !2848)
!2871 = !DILocation(line: 1058, column: 19, scope: !2741)
!2872 = !DILocation(line: 1058, column: 2, scope: !2741)
!2873 = !DILocation(line: 1061, column: 33, scope: !2741)
!2874 = !DILocation(line: 1061, column: 46, scope: !2741)
!2875 = !DILocation(line: 1061, column: 51, scope: !2741)
!2876 = !DILocation(line: 1061, column: 10, scope: !2741)
!2877 = !DILocation(line: 1061, column: 8, scope: !2741)
!2878 = !DILocation(line: 1063, column: 25, scope: !2741)
!2879 = !DILocation(line: 1063, column: 30, scope: !2741)
!2880 = !DILocation(line: 1063, column: 2, scope: !2741)
!2881 = !DILocation(line: 1064, column: 2, scope: !2741)
!2882 = !DILocation(line: 1066, column: 7, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2741, file: !3, line: 1066, column: 6)
!2884 = !DILocation(line: 1066, column: 6, scope: !2741)
!2885 = !DILocation(line: 1067, column: 3, scope: !2883)
!2886 = !DILocation(line: 1069, column: 25, scope: !2741)
!2887 = !DILocation(line: 1069, column: 2, scope: !2741)
!2888 = !DILocation(line: 1072, column: 2, scope: !2741)
!2889 = !DILocation(line: 1073, column: 3, scope: !2764)
!2890 = !DILocation(line: 1073, column: 3, scope: !2763)
!2891 = !DILocation(line: 1073, column: 3, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2763, file: !3, line: 1073, column: 3)
!2893 = !DILocation(line: 1073, column: 3, scope: !2762)
!2894 = !DILocation(line: 1073, column: 3, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2762, file: !3, line: 1073, column: 3)
!2896 = !DILocation(line: 1073, column: 3, scope: !2760)
!2897 = !DILocation(line: 1073, column: 3, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2760, file: !3, line: 1073, column: 3)
!2899 = !DILocation(line: 1073, column: 3, scope: !2769)
!2900 = !{i64 2153560067}
!2901 = !DILocation(line: 1073, column: 3, scope: !2761)
!2902 = !DILocation(line: 1074, column: 8, scope: !2771)
!2903 = !DILocation(line: 1074, column: 8, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2771, file: !3, line: 1074, column: 8)
!2905 = !DILocation(line: 1074, column: 8, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2904, file: !3, line: 1074, column: 8)
!2907 = !DILocation(line: 1074, column: 8, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2771, file: !3, line: 1074, column: 8)
!2909 = !{i64 2153564971}
!2910 = !DILocation(line: 1074, column: 8, scope: !2772)
!2911 = !DILocation(line: 1074, column: 7, scope: !2764)
!2912 = !DILocation(line: 1076, column: 4, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2772, file: !3, line: 1074, column: 40)
!2914 = !DILocation(line: 1078, column: 28, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2764, file: !3, line: 1078, column: 7)
!2916 = !DILocation(line: 1078, column: 35, scope: !2915)
!2917 = !DILocation(line: 1078, column: 7, scope: !2915)
!2918 = !DILocation(line: 1078, column: 7, scope: !2764)
!2919 = !DILocation(line: 1079, column: 4, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2915, file: !3, line: 1078, column: 45)
!2921 = !DILocation(line: 1080, column: 15, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2920, file: !3, line: 1080, column: 8)
!2923 = !DILocation(line: 1080, column: 8, scope: !2922)
!2924 = !DILocation(line: 1080, column: 8, scope: !2920)
!2925 = !DILocation(line: 1081, column: 5, scope: !2922)
!2926 = !DILocation(line: 1082, column: 4, scope: !2920)
!2927 = !DILocation(line: 1084, column: 4, scope: !2920)
!2928 = !DILocation(line: 1086, column: 3, scope: !2764)
!2929 = !DILocation(line: 1072, column: 2, scope: !2765)
!2930 = distinct !{!2930, !2931, !2932, !2293}
!2931 = !DILocation(line: 1072, column: 2, scope: !2766)
!2932 = !DILocation(line: 1088, column: 2, scope: !2766)
!2933 = !DILocation(line: 1090, column: 2, scope: !2741)
!2934 = !DILocation(line: 1090, column: 2, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2741, file: !3, line: 1090, column: 2)
!2936 = !DILocation(line: 1090, column: 2, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2935, file: !3, line: 1090, column: 2)
!2938 = !DILocation(line: 1090, column: 2, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2935, file: !3, line: 1090, column: 2)
!2940 = !DILocation(line: 1090, column: 2, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2939, file: !3, line: 1090, column: 2)
!2942 = !DILocation(line: 1090, column: 2, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2939, file: !3, line: 1090, column: 2)
!2944 = !DILocation(line: 1092, column: 23, scope: !2741)
!2945 = !DILocation(line: 1092, column: 2, scope: !2741)
!2946 = !DILocation(line: 1093, column: 9, scope: !2741)
!2947 = !DILocation(line: 1093, column: 2, scope: !2741)
!2948 = !DILocation(line: 1095, column: 1, scope: !2741)
!2949 = !DILocation(line: 1096, column: 24, scope: !2741)
!2950 = !DILocation(line: 1096, column: 2, scope: !2741)
!2951 = !DILocation(line: 1097, column: 2, scope: !2741)
!2952 = !DILocation(line: 1097, column: 2, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !2741, file: !3, line: 1097, column: 2)
!2954 = !DILocation(line: 1097, column: 2, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2953, file: !3, line: 1097, column: 2)
!2956 = !DILocation(line: 1097, column: 2, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2953, file: !3, line: 1097, column: 2)
!2958 = !DILocation(line: 1097, column: 2, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2957, file: !3, line: 1097, column: 2)
!2960 = !DILocation(line: 1097, column: 2, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2957, file: !3, line: 1097, column: 2)
!2962 = !DILocation(line: 1099, column: 23, scope: !2741)
!2963 = !DILocation(line: 1099, column: 2, scope: !2741)
!2964 = !DILocation(line: 1100, column: 9, scope: !2741)
!2965 = !DILocation(line: 1100, column: 2, scope: !2741)
!2966 = !DILocation(line: 1101, column: 1, scope: !2741)
!2967 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !2663, file: !2663, line: 93, type: !2968, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2970)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{!946}
!2970 = !{!2971}
!2971 = !DILocalVariable(name: "c", scope: !2972, file: !2663, line: 95, type: !946)
!2972 = distinct !DILexicalBlock(scope: !2967, file: !2663, line: 95, column: 9)
!2973 = !DILocation(line: 95, column: 9, scope: !2972)
!2974 = !{i64 2149637501, i64 2149637594}
!2975 = !{i8 0, i8 2}
!2976 = !DILocation(line: 95, column: 9, scope: !2967)
!2977 = !DILocation(line: 95, column: 2, scope: !2967)
!2978 = distinct !DISubprogram(name: "atomic_long_add_return_acquire", scope: !2116, file: !2116, line: 3267, type: !2979, scopeLine: 3268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2981)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{!595, !595, !2119}
!2981 = !{!2982, !2983}
!2982 = !DILocalVariable(name: "i", arg: 1, scope: !2978, file: !2116, line: 3267, type: !595)
!2983 = !DILocalVariable(name: "v", arg: 2, scope: !2978, file: !2116, line: 3267, type: !2119)
!2984 = !DILocation(line: 3267, column: 37, scope: !2978)
!2985 = !DILocation(line: 3267, column: 55, scope: !2978)
!2986 = !DILocation(line: 3269, column: 31, scope: !2978)
!2987 = !DILocation(line: 3269, column: 2, scope: !2978)
!2988 = !DILocation(line: 3270, column: 44, scope: !2978)
!2989 = !DILocation(line: 3270, column: 47, scope: !2978)
!2990 = !DILocation(line: 3270, column: 9, scope: !2978)
!2991 = !DILocation(line: 3270, column: 2, scope: !2978)
!2992 = distinct !DISubprogram(name: "rwsem_set_nonspinnable", scope: !3, file: !3, line: 228, type: !2059, scopeLine: 229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2993)
!2993 = !{!2994, !2995}
!2994 = !DILocalVariable(name: "sem", arg: 1, scope: !2992, file: !3, line: 228, type: !1954)
!2995 = !DILocalVariable(name: "owner", scope: !2992, file: !3, line: 230, type: !74)
!2996 = !DILocation(line: 228, column: 64, scope: !2992)
!2997 = !DILocation(line: 230, column: 2, scope: !2992)
!2998 = !DILocation(line: 230, column: 16, scope: !2992)
!2999 = !DILocation(line: 230, column: 42, scope: !2992)
!3000 = !DILocation(line: 230, column: 47, scope: !2992)
!3001 = !DILocation(line: 230, column: 24, scope: !2992)
!3002 = !DILocation(line: 232, column: 2, scope: !2992)
!3003 = !DILocation(line: 233, column: 9, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !3005, file: !3, line: 233, column: 7)
!3005 = distinct !DILexicalBlock(scope: !2992, file: !3, line: 232, column: 5)
!3006 = !DILocation(line: 233, column: 15, scope: !3004)
!3007 = !DILocation(line: 233, column: 7, scope: !3005)
!3008 = !DILocation(line: 234, column: 4, scope: !3004)
!3009 = !DILocation(line: 235, column: 7, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !3005, file: !3, line: 235, column: 7)
!3011 = !DILocation(line: 235, column: 13, scope: !3010)
!3012 = !DILocation(line: 235, column: 7, scope: !3005)
!3013 = !DILocation(line: 236, column: 4, scope: !3010)
!3014 = !DILocation(line: 237, column: 2, scope: !3005)
!3015 = !DILocation(line: 237, column: 37, scope: !2992)
!3016 = !DILocation(line: 237, column: 42, scope: !2992)
!3017 = !DILocation(line: 238, column: 8, scope: !2992)
!3018 = !DILocation(line: 238, column: 14, scope: !2992)
!3019 = !DILocation(line: 237, column: 12, scope: !2992)
!3020 = !DILocation(line: 237, column: 11, scope: !2992)
!3021 = distinct !{!3021, !3002, !3022, !2292, !2293}
!3022 = !DILocation(line: 238, column: 35, scope: !2992)
!3023 = !DILocation(line: 239, column: 1, scope: !2992)
!3024 = distinct !DISubprogram(name: "rwsem_set_reader_owned", scope: !3, file: !3, line: 179, type: !2059, scopeLine: 180, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3025)
!3025 = !{!3026}
!3026 = !DILocalVariable(name: "sem", arg: 1, scope: !3024, file: !3, line: 179, type: !1954)
!3027 = !DILocation(line: 179, column: 64, scope: !3024)
!3028 = !DILocation(line: 181, column: 27, scope: !3024)
!3029 = !DILocation(line: 181, column: 32, scope: !3024)
!3030 = !DILocation(line: 181, column: 2, scope: !3024)
!3031 = !DILocation(line: 182, column: 1, scope: !3024)
!3032 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !2513, file: !2513, line: 94, type: !2514, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3033)
!3033 = !{!3034, !3035}
!3034 = !DILocalVariable(name: "v", arg: 1, scope: !3032, file: !2513, line: 94, type: !2516)
!3035 = !DILocalVariable(name: "size", arg: 2, scope: !3032, file: !2513, line: 94, type: !1257)
!3036 = !DILocation(line: 94, column: 79, scope: !3032)
!3037 = !DILocation(line: 94, column: 89, scope: !3032)
!3038 = !DILocation(line: 96, column: 20, scope: !3032)
!3039 = !DILocation(line: 96, column: 23, scope: !3032)
!3040 = !DILocation(line: 96, column: 2, scope: !3032)
!3041 = !DILocation(line: 97, column: 2, scope: !3032)
!3042 = !DILocation(line: 98, column: 1, scope: !3032)
!3043 = distinct !DISubprogram(name: "raw_atomic_long_add_return_acquire", scope: !492, file: !492, line: 160, type: !2979, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3044)
!3044 = !{!3045, !3046}
!3045 = !DILocalVariable(name: "i", arg: 1, scope: !3043, file: !492, line: 160, type: !595)
!3046 = !DILocalVariable(name: "v", arg: 2, scope: !3043, file: !492, line: 160, type: !2119)
!3047 = !DILocation(line: 160, column: 41, scope: !3043)
!3048 = !DILocation(line: 160, column: 59, scope: !3043)
!3049 = !DILocation(line: 163, column: 41, scope: !3043)
!3050 = !DILocation(line: 163, column: 44, scope: !3043)
!3051 = !DILocation(line: 163, column: 9, scope: !3043)
!3052 = !DILocation(line: 163, column: 2, scope: !3043)
!3053 = distinct !DISubprogram(name: "raw_atomic64_add_return_acquire", scope: !2562, file: !2562, line: 2687, type: !3054, scopeLine: 2688, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3056)
!3054 = !DISubroutineType(types: !3055)
!3055 = !{!56, !56, !2565}
!3056 = !{!3057, !3058}
!3057 = !DILocalVariable(name: "i", arg: 1, scope: !3053, file: !2562, line: 2687, type: !56)
!3058 = !DILocalVariable(name: "v", arg: 2, scope: !3053, file: !2562, line: 2687, type: !2565)
!3059 = !DILocation(line: 2687, column: 37, scope: !3053)
!3060 = !DILocation(line: 2687, column: 52, scope: !3053)
!3061 = !DILocation(line: 2696, column: 34, scope: !3053)
!3062 = !DILocation(line: 2696, column: 37, scope: !3053)
!3063 = !DILocation(line: 2696, column: 9, scope: !3053)
!3064 = !DILocation(line: 2696, column: 2, scope: !3053)
!3065 = distinct !DISubprogram(name: "arch_atomic64_add_return", scope: !2576, file: !2576, line: 77, type: !3054, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3066)
!3066 = !{!3067, !3068, !3069}
!3067 = !DILocalVariable(name: "i", arg: 1, scope: !3065, file: !2576, line: 77, type: !56)
!3068 = !DILocalVariable(name: "v", arg: 2, scope: !3065, file: !2576, line: 77, type: !2565)
!3069 = !DILocalVariable(name: "__ret", scope: !3070, file: !2576, line: 79, type: !56)
!3070 = distinct !DILexicalBlock(scope: !3065, file: !2576, line: 79, column: 13)
!3071 = !DILocation(line: 77, column: 57, scope: !3065)
!3072 = !DILocation(line: 77, column: 72, scope: !3065)
!3073 = !DILocation(line: 79, column: 9, scope: !3065)
!3074 = !DILocation(line: 79, column: 13, scope: !3070)
!3075 = !{i64 2148482425, i64 2148482464, i64 2148482485, i64 2148482522, i64 2148482545, i64 2148482554}
!3076 = !DILocation(line: 79, column: 13, scope: !3065)
!3077 = !DILocation(line: 79, column: 11, scope: !3065)
!3078 = !DILocation(line: 79, column: 2, scope: !3065)
!3079 = distinct !DISubprogram(name: "atomic_long_read", scope: !2116, file: !2116, line: 3158, type: !3080, scopeLine: 3159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3084)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{!595, !3082}
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !491)
!3084 = !{!3085}
!3085 = !DILocalVariable(name: "v", arg: 1, scope: !3079, file: !2116, line: 3158, type: !3082)
!3086 = !DILocation(line: 3158, column: 39, scope: !3079)
!3087 = !DILocation(line: 3160, column: 25, scope: !3079)
!3088 = !DILocation(line: 3160, column: 2, scope: !3079)
!3089 = !DILocation(line: 3161, column: 30, scope: !3079)
!3090 = !DILocation(line: 3161, column: 9, scope: !3079)
!3091 = !DILocation(line: 3161, column: 2, scope: !3079)
!3092 = distinct !DISubprogram(name: "atomic_long_try_cmpxchg", scope: !2116, file: !2116, line: 4398, type: !3093, scopeLine: 4399, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3095)
!3093 = !DISubroutineType(types: !3094)
!3094 = !{!946, !2119, !2690, !595}
!3095 = !{!3096, !3097, !3098}
!3096 = !DILocalVariable(name: "v", arg: 1, scope: !3092, file: !2116, line: 4398, type: !2119)
!3097 = !DILocalVariable(name: "old", arg: 2, scope: !3092, file: !2116, line: 4398, type: !2690)
!3098 = !DILocalVariable(name: "new", arg: 3, scope: !3092, file: !2116, line: 4398, type: !595)
!3099 = !DILocation(line: 4398, column: 40, scope: !3092)
!3100 = !DILocation(line: 4398, column: 49, scope: !3092)
!3101 = !DILocation(line: 4398, column: 59, scope: !3092)
!3102 = !DILocation(line: 4400, column: 2, scope: !3092)
!3103 = !DILocation(line: 4400, column: 2, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3092, file: !2116, line: 4400, column: 2)
!3105 = !DILocation(line: 4401, column: 31, scope: !3092)
!3106 = !DILocation(line: 4401, column: 2, scope: !3092)
!3107 = !DILocation(line: 4402, column: 31, scope: !3092)
!3108 = !DILocation(line: 4402, column: 2, scope: !3092)
!3109 = !DILocation(line: 4403, column: 37, scope: !3092)
!3110 = !DILocation(line: 4403, column: 40, scope: !3092)
!3111 = !DILocation(line: 4403, column: 45, scope: !3092)
!3112 = !DILocation(line: 4403, column: 9, scope: !3092)
!3113 = !DILocation(line: 4403, column: 2, scope: !3092)
!3114 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !2513, file: !2513, line: 66, type: !2514, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3115)
!3115 = !{!3116, !3117}
!3116 = !DILocalVariable(name: "v", arg: 1, scope: !3114, file: !2513, line: 66, type: !2516)
!3117 = !DILocalVariable(name: "size", arg: 2, scope: !3114, file: !2513, line: 66, type: !1257)
!3118 = !DILocation(line: 66, column: 73, scope: !3114)
!3119 = !DILocation(line: 66, column: 83, scope: !3114)
!3120 = !DILocation(line: 68, column: 19, scope: !3114)
!3121 = !DILocation(line: 68, column: 22, scope: !3114)
!3122 = !DILocation(line: 68, column: 2, scope: !3114)
!3123 = !DILocation(line: 69, column: 2, scope: !3114)
!3124 = !DILocation(line: 70, column: 1, scope: !3114)
!3125 = distinct !DISubprogram(name: "raw_atomic_long_read", scope: !492, file: !492, line: 35, type: !3080, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3126)
!3126 = !{!3127}
!3127 = !DILocalVariable(name: "v", arg: 1, scope: !3125, file: !492, line: 35, type: !3082)
!3128 = !DILocation(line: 35, column: 43, scope: !3125)
!3129 = !DILocation(line: 38, column: 27, scope: !3125)
!3130 = !DILocation(line: 38, column: 9, scope: !3125)
!3131 = !DILocation(line: 38, column: 2, scope: !3125)
!3132 = distinct !DISubprogram(name: "kasan_check_read", scope: !2540, file: !2540, line: 40, type: !2541, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3133)
!3133 = !{!3134, !3135}
!3134 = !DILocalVariable(name: "p", arg: 1, scope: !3132, file: !2540, line: 40, type: !2516)
!3135 = !DILocalVariable(name: "size", arg: 2, scope: !3132, file: !2540, line: 40, type: !7)
!3136 = !DILocation(line: 40, column: 58, scope: !3132)
!3137 = !DILocation(line: 40, column: 74, scope: !3132)
!3138 = !DILocation(line: 42, column: 2, scope: !3132)
!3139 = distinct !DISubprogram(name: "raw_atomic64_read", scope: !2562, file: !2562, line: 2554, type: !3140, scopeLine: 2555, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3144)
!3140 = !DISubroutineType(types: !3141)
!3141 = !{!56, !3142}
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !493)
!3144 = !{!3145}
!3145 = !DILocalVariable(name: "v", arg: 1, scope: !3139, file: !2562, line: 2554, type: !3142)
!3146 = !DILocation(line: 2554, column: 37, scope: !3139)
!3147 = !DILocation(line: 2556, column: 28, scope: !3139)
!3148 = !DILocation(line: 2556, column: 9, scope: !3139)
!3149 = !DILocation(line: 2556, column: 2, scope: !3139)
!3150 = distinct !DISubprogram(name: "arch_atomic64_read", scope: !2576, file: !2576, line: 13, type: !3140, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3151)
!3151 = !{!3152}
!3152 = !DILocalVariable(name: "v", arg: 1, scope: !3150, file: !2576, line: 13, type: !3142)
!3153 = !DILocation(line: 13, column: 65, scope: !3150)
!3154 = !DILocation(line: 15, column: 9, scope: !3150)
!3155 = !DILocation(line: 15, column: 2, scope: !3150)
!3156 = distinct !DISubprogram(name: "raw_atomic_long_try_cmpxchg", scope: !492, file: !492, line: 1450, type: !3093, scopeLine: 1451, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3157)
!3157 = !{!3158, !3159, !3160}
!3158 = !DILocalVariable(name: "v", arg: 1, scope: !3156, file: !492, line: 1450, type: !2119)
!3159 = !DILocalVariable(name: "old", arg: 2, scope: !3156, file: !492, line: 1450, type: !2690)
!3160 = !DILocalVariable(name: "new", arg: 3, scope: !3156, file: !492, line: 1450, type: !595)
!3161 = !DILocation(line: 1450, column: 44, scope: !3156)
!3162 = !DILocation(line: 1450, column: 53, scope: !3156)
!3163 = !DILocation(line: 1450, column: 63, scope: !3156)
!3164 = !DILocation(line: 1453, column: 34, scope: !3156)
!3165 = !DILocation(line: 1453, column: 44, scope: !3156)
!3166 = !DILocation(line: 1453, column: 49, scope: !3156)
!3167 = !DILocation(line: 1453, column: 9, scope: !3156)
!3168 = !DILocation(line: 1453, column: 2, scope: !3156)
!3169 = distinct !DISubprogram(name: "raw_atomic64_try_cmpxchg", scope: !2562, file: !2562, line: 4221, type: !3170, scopeLine: 4222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3172)
!3170 = !DISubroutineType(types: !3171)
!3171 = !{!946, !2565, !78, !56}
!3172 = !{!3173, !3174, !3175}
!3173 = !DILocalVariable(name: "v", arg: 1, scope: !3169, file: !2562, line: 4221, type: !2565)
!3174 = !DILocalVariable(name: "old", arg: 2, scope: !3169, file: !2562, line: 4221, type: !78)
!3175 = !DILocalVariable(name: "new", arg: 3, scope: !3169, file: !2562, line: 4221, type: !56)
!3176 = !DILocation(line: 4221, column: 38, scope: !3169)
!3177 = !DILocation(line: 4221, column: 46, scope: !3169)
!3178 = !DILocation(line: 4221, column: 55, scope: !3169)
!3179 = !DILocation(line: 4224, column: 35, scope: !3169)
!3180 = !DILocation(line: 4224, column: 38, scope: !3169)
!3181 = !DILocation(line: 4224, column: 43, scope: !3169)
!3182 = !DILocation(line: 4224, column: 9, scope: !3169)
!3183 = !DILocation(line: 4224, column: 2, scope: !3169)
!3184 = distinct !DISubprogram(name: "arch_atomic64_try_cmpxchg", scope: !2576, file: !2576, line: 107, type: !3170, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3185)
!3185 = !{!3186, !3187, !3188, !3189, !3191, !3192, !3193, !3194}
!3186 = !DILocalVariable(name: "v", arg: 1, scope: !3184, file: !2576, line: 107, type: !2565)
!3187 = !DILocalVariable(name: "old", arg: 2, scope: !3184, file: !2576, line: 107, type: !78)
!3188 = !DILocalVariable(name: "new", arg: 3, scope: !3184, file: !2576, line: 107, type: !56)
!3189 = !DILocalVariable(name: "success", scope: !3190, file: !2576, line: 109, type: !946)
!3190 = distinct !DILexicalBlock(scope: !3184, file: !2576, line: 109, column: 9)
!3191 = !DILocalVariable(name: "_old", scope: !3190, file: !2576, line: 109, type: !78)
!3192 = !DILocalVariable(name: "__old", scope: !3190, file: !2576, line: 109, type: !56)
!3193 = !DILocalVariable(name: "__new", scope: !3190, file: !2576, line: 109, type: !56)
!3194 = !DILocalVariable(name: "__ptr", scope: !3190, file: !2576, line: 109, type: !79)
!3195 = !DILocation(line: 107, column: 67, scope: !3184)
!3196 = !DILocation(line: 107, column: 75, scope: !3184)
!3197 = !DILocation(line: 107, column: 84, scope: !3184)
!3198 = !DILocation(line: 109, column: 9, scope: !3190)
!3199 = !{i64 2148492724, i64 2148492763, i64 2148492784, i64 2148492821, i64 2148492844, i64 2148492853, i64 2148493054}
!3200 = !DILocation(line: 109, column: 9, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3190, file: !2576, line: 109, column: 9)
!3202 = !DILocation(line: 109, column: 9, scope: !3184)
!3203 = !DILocation(line: 109, column: 2, scope: !3184)
!3204 = distinct !DISubprogram(name: "__rwsem_set_reader_owned", scope: !3, file: !3, line: 170, type: !3205, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3207)
!3205 = !DISubroutineType(types: !3206)
!3206 = !{null, !1954, !85}
!3207 = !{!3208, !3209, !3210}
!3208 = !DILocalVariable(name: "sem", arg: 1, scope: !3204, file: !3, line: 170, type: !1954)
!3209 = !DILocalVariable(name: "owner", arg: 2, scope: !3204, file: !3, line: 171, type: !85)
!3210 = !DILocalVariable(name: "val", scope: !3204, file: !3, line: 173, type: !74)
!3211 = !DILocation(line: 170, column: 66, scope: !3204)
!3212 = !DILocation(line: 171, column: 30, scope: !3204)
!3213 = !DILocation(line: 173, column: 2, scope: !3204)
!3214 = !DILocation(line: 173, column: 16, scope: !3204)
!3215 = !DILocation(line: 173, column: 37, scope: !3204)
!3216 = !DILocation(line: 173, column: 22, scope: !3204)
!3217 = !DILocation(line: 173, column: 43, scope: !3204)
!3218 = !DILocation(line: 174, column: 22, scope: !3204)
!3219 = !DILocation(line: 174, column: 27, scope: !3204)
!3220 = !DILocation(line: 174, column: 4, scope: !3204)
!3221 = !DILocation(line: 174, column: 34, scope: !3204)
!3222 = !DILocation(line: 173, column: 64, scope: !3204)
!3223 = !DILocation(line: 176, column: 19, scope: !3204)
!3224 = !DILocation(line: 176, column: 24, scope: !3204)
!3225 = !DILocation(line: 176, column: 31, scope: !3204)
!3226 = !DILocation(line: 176, column: 2, scope: !3204)
!3227 = !DILocation(line: 177, column: 1, scope: !3204)
!3228 = distinct !DISubprogram(name: "get_current", scope: !3229, file: !3229, line: 39, type: !3230, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3232)
!3229 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!3230 = !DISubroutineType(types: !3231)
!3231 = !{!85}
!3232 = !{!3233, !3235, !3237}
!3233 = !DILocalVariable(name: "pscr_ret__", scope: !3234, file: !3229, line: 41, type: !85)
!3234 = distinct !DILexicalBlock(scope: !3228, file: !3229, line: 41, column: 9)
!3235 = !DILocalVariable(name: "__vpp_verify", scope: !3236, file: !3229, line: 41, type: !592)
!3236 = distinct !DILexicalBlock(scope: !3234, file: !3229, line: 41, column: 9)
!3237 = !DILocalVariable(name: "pfo_val__", scope: !3238, file: !3229, line: 41, type: !81)
!3238 = distinct !DILexicalBlock(scope: !3234, file: !3229, line: 41, column: 9)
!3239 = !DILocation(line: 41, column: 9, scope: !3234)
!3240 = !DILocation(line: 41, column: 9, scope: !3236)
!3241 = !DILocation(line: 41, column: 9, scope: !3238)
!3242 = !{i64 2148236240}
!3243 = !DILocation(line: 41, column: 9, scope: !3228)
!3244 = !DILocation(line: 41, column: 2, scope: !3228)
!3245 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !3246, file: !3246, line: 29, type: !3247, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3246 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!3247 = !DISubroutineType(types: !3248)
!3248 = !{null, !3249}
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!3250 = distinct !DISubprogram(name: "list_empty", scope: !2132, file: !2132, line: 371, type: !3251, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3255)
!3251 = !DISubroutineType(types: !3252)
!3252 = !{!71, !3253}
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!3255 = !{!3256}
!3256 = !DILocalVariable(name: "head", arg: 1, scope: !3250, file: !2132, line: 371, type: !3253)
!3257 = !DILocation(line: 371, column: 54, scope: !3250)
!3258 = !DILocation(line: 373, column: 9, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3250, file: !2132, line: 373, column: 9)
!3260 = !DILocation(line: 373, column: 9, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3259, file: !2132, line: 373, column: 9)
!3262 = !DILocation(line: 373, column: 34, scope: !3250)
!3263 = !DILocation(line: 373, column: 31, scope: !3250)
!3264 = !DILocation(line: 373, column: 2, scope: !3250)
!3265 = distinct !DISubprogram(name: "rwsem_mark_wake", scope: !3, file: !3, line: 411, type: !3266, scopeLine: 414, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3269)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{null, !1954, !33, !3268}
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!3269 = !{!3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3281, !3284, !3287, !3289, !3292, !3295, !3297, !3300}
!3270 = !DILocalVariable(name: "sem", arg: 1, scope: !3265, file: !3, line: 411, type: !1954)
!3271 = !DILocalVariable(name: "wake_type", arg: 2, scope: !3265, file: !3, line: 412, type: !33)
!3272 = !DILocalVariable(name: "wake_q", arg: 3, scope: !3265, file: !3, line: 413, type: !3268)
!3273 = !DILocalVariable(name: "waiter", scope: !3265, file: !3, line: 415, type: !1894)
!3274 = !DILocalVariable(name: "tmp", scope: !3265, file: !3, line: 415, type: !1894)
!3275 = !DILocalVariable(name: "oldcount", scope: !3265, file: !3, line: 416, type: !595)
!3276 = !DILocalVariable(name: "woken", scope: !3265, file: !3, line: 416, type: !595)
!3277 = !DILocalVariable(name: "adjustment", scope: !3265, file: !3, line: 416, type: !595)
!3278 = !DILocalVariable(name: "wlist", scope: !3265, file: !3, line: 417, type: !64)
!3279 = !DILocalVariable(name: "__mptr", scope: !3280, file: !3, line: 425, type: !53)
!3280 = distinct !DILexicalBlock(scope: !3265, file: !3, line: 425, column: 11)
!3281 = !DILocalVariable(name: "owner", scope: !3282, file: !3, line: 455, type: !85)
!3282 = distinct !DILexicalBlock(scope: !3283, file: !3, line: 454, column: 42)
!3283 = distinct !DILexicalBlock(scope: !3265, file: !3, line: 454, column: 6)
!3284 = !DILocalVariable(name: "__mptr", scope: !3285, file: !3, line: 510, type: !53)
!3285 = distinct !DILexicalBlock(scope: !3286, file: !3, line: 510, column: 2)
!3286 = distinct !DILexicalBlock(scope: !3265, file: !3, line: 510, column: 2)
!3287 = !DILocalVariable(name: "__mptr", scope: !3288, file: !3, line: 510, type: !53)
!3288 = distinct !DILexicalBlock(scope: !3286, file: !3, line: 510, column: 2)
!3289 = !DILocalVariable(name: "__mptr", scope: !3290, file: !3, line: 510, type: !53)
!3290 = distinct !DILexicalBlock(scope: !3291, file: !3, line: 510, column: 2)
!3291 = distinct !DILexicalBlock(scope: !3286, file: !3, line: 510, column: 2)
!3292 = !DILocalVariable(name: "__mptr", scope: !3293, file: !3, line: 549, type: !53)
!3293 = distinct !DILexicalBlock(scope: !3294, file: !3, line: 549, column: 2)
!3294 = distinct !DILexicalBlock(scope: !3265, file: !3, line: 549, column: 2)
!3295 = !DILocalVariable(name: "__mptr", scope: !3296, file: !3, line: 549, type: !53)
!3296 = distinct !DILexicalBlock(scope: !3294, file: !3, line: 549, column: 2)
!3297 = !DILocalVariable(name: "tsk", scope: !3298, file: !3, line: 550, type: !85)
!3298 = distinct !DILexicalBlock(scope: !3299, file: !3, line: 549, column: 54)
!3299 = distinct !DILexicalBlock(scope: !3294, file: !3, line: 549, column: 2)
!3300 = !DILocalVariable(name: "__mptr", scope: !3301, file: !3, line: 549, type: !53)
!3301 = distinct !DILexicalBlock(scope: !3299, file: !3, line: 549, column: 2)
!3302 = !DILocation(line: 411, column: 50, scope: !3265)
!3303 = !DILocation(line: 412, column: 29, scope: !3265)
!3304 = !DILocation(line: 413, column: 28, scope: !3265)
!3305 = !DILocation(line: 415, column: 2, scope: !3265)
!3306 = !DILocation(line: 415, column: 23, scope: !3265)
!3307 = !DILocation(line: 415, column: 32, scope: !3265)
!3308 = !DILocation(line: 416, column: 2, scope: !3265)
!3309 = !DILocation(line: 416, column: 7, scope: !3265)
!3310 = !DILocation(line: 416, column: 17, scope: !3265)
!3311 = !DILocation(line: 416, column: 28, scope: !3265)
!3312 = !DILocation(line: 417, column: 2, scope: !3265)
!3313 = !DILocation(line: 417, column: 19, scope: !3265)
!3314 = !DILocation(line: 419, column: 2, scope: !3265)
!3315 = !DILocation(line: 419, column: 2, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3265, file: !3, line: 419, column: 2)
!3317 = !DILocation(line: 425, column: 11, scope: !3280)
!3318 = !DILocation(line: 425, column: 11, scope: !3265)
!3319 = !DILocation(line: 425, column: 9, scope: !3265)
!3320 = !DILocation(line: 427, column: 6, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !3265, file: !3, line: 427, column: 6)
!3322 = !DILocation(line: 427, column: 14, scope: !3321)
!3323 = !DILocation(line: 427, column: 19, scope: !3321)
!3324 = !DILocation(line: 427, column: 6, scope: !3265)
!3325 = !DILocation(line: 428, column: 7, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3327, file: !3, line: 428, column: 7)
!3327 = distinct !DILexicalBlock(scope: !3321, file: !3, line: 427, column: 47)
!3328 = !DILocation(line: 428, column: 17, scope: !3326)
!3329 = !DILocation(line: 428, column: 7, scope: !3327)
!3330 = !DILocation(line: 436, column: 15, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3326, file: !3, line: 428, column: 36)
!3332 = !DILocation(line: 436, column: 23, scope: !3331)
!3333 = !DILocation(line: 436, column: 31, scope: !3331)
!3334 = !DILocation(line: 436, column: 4, scope: !3331)
!3335 = !DILocation(line: 438, column: 3, scope: !3331)
!3336 = !DILocation(line: 440, column: 3, scope: !3327)
!3337 = !DILocation(line: 446, column: 6, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3265, file: !3, line: 446, column: 6)
!3339 = !DILocation(line: 446, column: 6, scope: !3265)
!3340 = !DILocation(line: 447, column: 3, scope: !3338)
!3341 = !DILocation(line: 454, column: 6, scope: !3283)
!3342 = !DILocation(line: 454, column: 16, scope: !3283)
!3343 = !DILocation(line: 454, column: 6, scope: !3265)
!3344 = !DILocation(line: 455, column: 3, scope: !3282)
!3345 = !DILocation(line: 455, column: 23, scope: !3282)
!3346 = !DILocation(line: 457, column: 14, scope: !3282)
!3347 = !DILocation(line: 458, column: 36, scope: !3282)
!3348 = !DILocation(line: 458, column: 49, scope: !3282)
!3349 = !DILocation(line: 458, column: 54, scope: !3282)
!3350 = !DILocation(line: 458, column: 14, scope: !3282)
!3351 = !DILocation(line: 458, column: 12, scope: !3282)
!3352 = !DILocation(line: 459, column: 7, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3282, file: !3, line: 459, column: 7)
!3354 = !DILocation(line: 459, column: 7, scope: !3282)
!3355 = !DILocation(line: 465, column: 8, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3357, file: !3, line: 465, column: 8)
!3357 = distinct !DILexicalBlock(scope: !3353, file: !3, line: 459, column: 47)
!3358 = !DILocation(line: 465, column: 8, scope: !3357)
!3359 = !DILocation(line: 466, column: 11, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !3361, file: !3, line: 466, column: 9)
!3361 = distinct !DILexicalBlock(scope: !3356, file: !3, line: 465, column: 46)
!3362 = !DILocation(line: 466, column: 20, scope: !3360)
!3363 = !DILocation(line: 466, column: 9, scope: !3361)
!3364 = !DILocation(line: 467, column: 17, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !3360, file: !3, line: 466, column: 43)
!3366 = !DILocation(line: 469, column: 5, scope: !3365)
!3367 = !DILocation(line: 470, column: 5, scope: !3361)
!3368 = !DILocation(line: 470, column: 13, scope: !3361)
!3369 = !DILocation(line: 470, column: 25, scope: !3361)
!3370 = !DILocation(line: 471, column: 4, scope: !3361)
!3371 = !DILocation(line: 473, column: 21, scope: !3357)
!3372 = !DILocation(line: 473, column: 20, scope: !3357)
!3373 = !DILocation(line: 473, column: 34, scope: !3357)
!3374 = !DILocation(line: 473, column: 39, scope: !3357)
!3375 = !DILocation(line: 473, column: 4, scope: !3357)
!3376 = !DILocation(line: 474, column: 4, scope: !3357)
!3377 = !DILocation(line: 482, column: 11, scope: !3282)
!3378 = !DILocation(line: 482, column: 19, scope: !3282)
!3379 = !DILocation(line: 482, column: 9, scope: !3282)
!3380 = !DILocation(line: 483, column: 28, scope: !3282)
!3381 = !DILocation(line: 483, column: 33, scope: !3282)
!3382 = !DILocation(line: 483, column: 3, scope: !3282)
!3383 = !DILocation(line: 484, column: 2, scope: !3283)
!3384 = !DILocation(line: 484, column: 2, scope: !3282)
!3385 = !DILocation(line: 509, column: 2, scope: !3265)
!3386 = !DILocation(line: 510, column: 2, scope: !3285)
!3387 = !DILocation(line: 510, column: 2, scope: !3286)
!3388 = !DILocation(line: 510, column: 2, scope: !3288)
!3389 = !DILocation(line: 510, column: 2, scope: !3291)
!3390 = !DILocation(line: 511, column: 7, scope: !3391)
!3391 = distinct !DILexicalBlock(scope: !3392, file: !3, line: 511, column: 7)
!3392 = distinct !DILexicalBlock(scope: !3291, file: !3, line: 510, column: 63)
!3393 = !DILocation(line: 511, column: 15, scope: !3391)
!3394 = !DILocation(line: 511, column: 20, scope: !3391)
!3395 = !DILocation(line: 511, column: 7, scope: !3392)
!3396 = !DILocation(line: 512, column: 4, scope: !3391)
!3397 = !DILocation(line: 514, column: 8, scope: !3392)
!3398 = !DILocation(line: 515, column: 19, scope: !3392)
!3399 = !DILocation(line: 515, column: 27, scope: !3392)
!3400 = !DILocation(line: 515, column: 3, scope: !3392)
!3401 = !DILocation(line: 520, column: 7, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3392, file: !3, line: 520, column: 7)
!3403 = !DILocation(line: 520, column: 7, scope: !3392)
!3404 = !DILocation(line: 521, column: 4, scope: !3402)
!3405 = !DILocation(line: 522, column: 2, scope: !3392)
!3406 = !DILocation(line: 510, column: 2, scope: !3290)
!3407 = distinct !{!3407, !3387, !3408, !2292, !2293}
!3408 = !DILocation(line: 522, column: 2, scope: !3286)
!3409 = !DILocation(line: 524, column: 15, scope: !3265)
!3410 = !DILocation(line: 524, column: 21, scope: !3265)
!3411 = !DILocation(line: 524, column: 43, scope: !3265)
!3412 = !DILocation(line: 524, column: 41, scope: !3265)
!3413 = !DILocation(line: 524, column: 13, scope: !3265)
!3414 = !DILocation(line: 527, column: 31, scope: !3265)
!3415 = !DILocation(line: 527, column: 36, scope: !3265)
!3416 = !DILocation(line: 527, column: 13, scope: !3265)
!3417 = !DILocation(line: 527, column: 11, scope: !3265)
!3418 = !DILocation(line: 528, column: 18, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3265, file: !3, line: 528, column: 6)
!3420 = !DILocation(line: 528, column: 23, scope: !3419)
!3421 = !DILocation(line: 528, column: 6, scope: !3419)
!3422 = !DILocation(line: 528, column: 6, scope: !3265)
!3423 = !DILocation(line: 533, column: 14, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !3419, file: !3, line: 528, column: 35)
!3425 = !DILocation(line: 534, column: 7, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3424, file: !3, line: 534, column: 7)
!3427 = !DILocation(line: 534, column: 16, scope: !3426)
!3428 = !DILocation(line: 534, column: 7, scope: !3424)
!3429 = !DILocation(line: 535, column: 15, scope: !3426)
!3430 = !DILocation(line: 535, column: 4, scope: !3426)
!3431 = !DILocation(line: 536, column: 2, scope: !3424)
!3432 = !DILocation(line: 536, column: 13, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !3419, file: !3, line: 536, column: 13)
!3434 = !DILocation(line: 536, column: 13, scope: !3419)
!3435 = !DILocation(line: 541, column: 7, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3437, file: !3, line: 541, column: 7)
!3437 = distinct !DILexicalBlock(scope: !3433, file: !3, line: 536, column: 20)
!3438 = !DILocation(line: 541, column: 16, scope: !3436)
!3439 = !DILocation(line: 541, column: 7, scope: !3437)
!3440 = !DILocation(line: 542, column: 15, scope: !3436)
!3441 = !DILocation(line: 542, column: 4, scope: !3436)
!3442 = !DILocation(line: 543, column: 2, scope: !3437)
!3443 = !DILocation(line: 545, column: 6, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3265, file: !3, line: 545, column: 6)
!3445 = !DILocation(line: 545, column: 6, scope: !3265)
!3446 = !DILocation(line: 546, column: 19, scope: !3444)
!3447 = !DILocation(line: 546, column: 32, scope: !3444)
!3448 = !DILocation(line: 546, column: 37, scope: !3444)
!3449 = !DILocation(line: 546, column: 3, scope: !3444)
!3450 = !DILocation(line: 549, column: 2, scope: !3293)
!3451 = !DILocation(line: 549, column: 2, scope: !3294)
!3452 = !DILocation(line: 549, column: 2, scope: !3296)
!3453 = !DILocation(line: 549, column: 2, scope: !3299)
!3454 = !DILocation(line: 550, column: 3, scope: !3298)
!3455 = !DILocation(line: 550, column: 23, scope: !3298)
!3456 = !DILocation(line: 552, column: 9, scope: !3298)
!3457 = !DILocation(line: 552, column: 17, scope: !3298)
!3458 = !DILocation(line: 552, column: 7, scope: !3298)
!3459 = !DILocation(line: 553, column: 19, scope: !3298)
!3460 = !DILocation(line: 553, column: 3, scope: !3298)
!3461 = !DILocation(line: 561, column: 3, scope: !3298)
!3462 = !DILocation(line: 561, column: 3, scope: !3463)
!3463 = distinct !DILexicalBlock(scope: !3298, file: !3, line: 561, column: 3)
!3464 = !DILocation(line: 561, column: 3, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3463, file: !3, line: 561, column: 3)
!3466 = !DILocation(line: 561, column: 3, scope: !3467)
!3467 = distinct !DILexicalBlock(scope: !3463, file: !3, line: 561, column: 3)
!3468 = !DILocation(line: 561, column: 3, scope: !3469)
!3469 = distinct !DILexicalBlock(scope: !3467, file: !3, line: 561, column: 3)
!3470 = !{i64 2153549747}
!3471 = !DILocation(line: 561, column: 3, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3467, file: !3, line: 561, column: 3)
!3473 = !DILocation(line: 561, column: 3, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !3472, file: !3, line: 561, column: 3)
!3475 = !DILocation(line: 561, column: 3, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !3472, file: !3, line: 561, column: 3)
!3477 = !DILocation(line: 566, column: 19, scope: !3298)
!3478 = !DILocation(line: 566, column: 27, scope: !3298)
!3479 = !DILocation(line: 566, column: 3, scope: !3298)
!3480 = !DILocation(line: 567, column: 2, scope: !3299)
!3481 = !DILocation(line: 567, column: 2, scope: !3298)
!3482 = !DILocation(line: 549, column: 2, scope: !3301)
!3483 = distinct !{!3483, !3451, !3484, !2292, !2293}
!3484 = !DILocation(line: 567, column: 2, scope: !3294)
!3485 = !DILocation(line: 568, column: 1, scope: !3265)
!3486 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !3246, file: !3246, line: 41, type: !3247, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3487 = !DISubprogram(name: "wake_up_q", scope: !2753, file: !2753, line: 64, type: !3488, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3488 = !DISubroutineType(types: !3489)
!3489 = !{null, !3268}
!3490 = distinct !DISubprogram(name: "rwsem_add_waiter", scope: !3, file: !3, line: 370, type: !3491, scopeLine: 371, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3493)
!3491 = !DISubroutineType(types: !3492)
!3492 = !{null, !1954, !1894}
!3493 = !{!3494, !3495}
!3494 = !DILocalVariable(name: "sem", arg: 1, scope: !3490, file: !3, line: 370, type: !1954)
!3495 = !DILocalVariable(name: "waiter", arg: 2, scope: !3490, file: !3, line: 370, type: !1894)
!3496 = !DILocation(line: 370, column: 39, scope: !3490)
!3497 = !DILocation(line: 370, column: 65, scope: !3490)
!3498 = !DILocation(line: 372, column: 2, scope: !3490)
!3499 = !DILocation(line: 372, column: 2, scope: !3500)
!3500 = distinct !DILexicalBlock(scope: !3490, file: !3, line: 372, column: 2)
!3501 = !DILocation(line: 373, column: 17, scope: !3490)
!3502 = !DILocation(line: 373, column: 25, scope: !3490)
!3503 = !DILocation(line: 373, column: 32, scope: !3490)
!3504 = !DILocation(line: 373, column: 37, scope: !3490)
!3505 = !DILocation(line: 373, column: 2, scope: !3490)
!3506 = !DILocation(line: 375, column: 1, scope: !3490)
!3507 = distinct !DISubprogram(name: "atomic_long_add_return", scope: !2116, file: !2116, line: 3248, type: !2979, scopeLine: 3249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3508)
!3508 = !{!3509, !3510}
!3509 = !DILocalVariable(name: "i", arg: 1, scope: !3507, file: !2116, line: 3248, type: !595)
!3510 = !DILocalVariable(name: "v", arg: 2, scope: !3507, file: !2116, line: 3248, type: !2119)
!3511 = !DILocation(line: 3248, column: 29, scope: !3507)
!3512 = !DILocation(line: 3248, column: 47, scope: !3507)
!3513 = !DILocation(line: 3250, column: 2, scope: !3507)
!3514 = !DILocation(line: 3250, column: 2, scope: !3515)
!3515 = distinct !DILexicalBlock(scope: !3507, file: !2116, line: 3250, column: 2)
!3516 = !DILocation(line: 3251, column: 31, scope: !3507)
!3517 = !DILocation(line: 3251, column: 2, scope: !3507)
!3518 = !DILocation(line: 3252, column: 36, scope: !3507)
!3519 = !DILocation(line: 3252, column: 39, scope: !3507)
!3520 = !DILocation(line: 3252, column: 9, scope: !3507)
!3521 = !DILocation(line: 3252, column: 2, scope: !3507)
!3522 = distinct !DISubprogram(name: "rwsem_cond_wake_waiter", scope: !3, file: !3, line: 975, type: !3523, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3525)
!3523 = !DISubroutineType(types: !3524)
!3524 = !{null, !1954, !595, !3268}
!3525 = !{!3526, !3527, !3528, !3529}
!3526 = !DILocalVariable(name: "sem", arg: 1, scope: !3522, file: !3, line: 975, type: !1954)
!3527 = !DILocalVariable(name: "count", arg: 2, scope: !3522, file: !3, line: 975, type: !595)
!3528 = !DILocalVariable(name: "wake_q", arg: 3, scope: !3522, file: !3, line: 976, type: !3268)
!3529 = !DILocalVariable(name: "wake_type", scope: !3522, file: !3, line: 978, type: !33)
!3530 = !DILocation(line: 975, column: 64, scope: !3522)
!3531 = !DILocation(line: 975, column: 74, scope: !3522)
!3532 = !DILocation(line: 976, column: 28, scope: !3522)
!3533 = !DILocation(line: 978, column: 2, scope: !3522)
!3534 = !DILocation(line: 978, column: 23, scope: !3522)
!3535 = !DILocation(line: 980, column: 6, scope: !3536)
!3536 = distinct !DILexicalBlock(scope: !3522, file: !3, line: 980, column: 6)
!3537 = !DILocation(line: 980, column: 12, scope: !3536)
!3538 = !DILocation(line: 980, column: 6, scope: !3522)
!3539 = !DILocation(line: 981, column: 3, scope: !3536)
!3540 = !DILocation(line: 983, column: 6, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3522, file: !3, line: 983, column: 6)
!3542 = !DILocation(line: 983, column: 12, scope: !3541)
!3543 = !DILocation(line: 983, column: 6, scope: !3522)
!3544 = !DILocation(line: 984, column: 13, scope: !3545)
!3545 = distinct !DILexicalBlock(scope: !3541, file: !3, line: 983, column: 33)
!3546 = !DILocation(line: 985, column: 2, scope: !3545)
!3547 = !DILocation(line: 986, column: 13, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3541, file: !3, line: 985, column: 9)
!3549 = !DILocation(line: 987, column: 22, scope: !3548)
!3550 = !DILocation(line: 987, column: 3, scope: !3548)
!3551 = !DILocation(line: 989, column: 18, scope: !3522)
!3552 = !DILocation(line: 989, column: 23, scope: !3522)
!3553 = !DILocation(line: 989, column: 34, scope: !3522)
!3554 = !DILocation(line: 989, column: 2, scope: !3522)
!3555 = !DILocation(line: 990, column: 1, scope: !3522)
!3556 = distinct !DISubprogram(name: "wake_q_empty", scope: !2753, file: !2753, line: 57, type: !3557, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3559)
!3557 = !DISubroutineType(types: !3558)
!3558 = !{!946, !3268}
!3559 = !{!3560}
!3560 = !DILocalVariable(name: "head", arg: 1, scope: !3556, file: !2753, line: 57, type: !3268)
!3561 = !DILocation(line: 57, column: 53, scope: !3556)
!3562 = !DILocation(line: 59, column: 9, scope: !3556)
!3563 = !DILocation(line: 59, column: 15, scope: !3556)
!3564 = !DILocation(line: 59, column: 21, scope: !3556)
!3565 = !DILocation(line: 59, column: 2, scope: !3556)
!3566 = !DILocation(line: 95, column: 1, scope: !1974)
!3567 = !DILocation(line: 95, column: 1, scope: !1982)
!3568 = !DILocation(line: 95, column: 1, scope: !1981)
!3569 = !DILocation(line: 95, column: 1, scope: !1984)
!3570 = !DILocation(line: 95, column: 1, scope: !1987)
!3571 = !DILocation(line: 95, column: 1, scope: !1989)
!3572 = !{i64 2153434519}
!3573 = !DILocation(line: 95, column: 1, scope: !1985)
!3574 = !DILocation(line: 95, column: 1, scope: !1991)
!3575 = !DILocation(line: 95, column: 1, scope: !1995)
!3576 = !DILocation(line: 95, column: 1, scope: !1994)
!3577 = !DILocation(line: 95, column: 1, scope: !3578)
!3578 = distinct !DILexicalBlock(scope: !1994, file: !1968, line: 95, column: 1)
!3579 = !DILocation(line: 95, column: 1, scope: !3580)
!3580 = distinct !DILexicalBlock(scope: !1994, file: !1968, line: 95, column: 1)
!3581 = !{i64 2153435721, i64 2153435750, i64 2153435796, i64 2153435854, i64 2153435908, i64 2153435962, i64 2153436017, i64 2153436048, i64 2153436356, i64 2153436362, i64 2153436409, i64 2153436432, i64 2153436458}
!3582 = !DILocation(line: 95, column: 1, scope: !3583)
!3583 = distinct !DILexicalBlock(scope: !1994, file: !1968, line: 95, column: 1)
!3584 = !DILocation(line: 95, column: 1, scope: !1992)
!3585 = !DILocation(line: 95, column: 1, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !1981, file: !1968, line: 95, column: 1)
!3587 = !{i64 2153436810}
!3588 = !DILocation(line: 95, column: 1, scope: !1997)
!3589 = !DILocation(line: 95, column: 1, scope: !2000)
!3590 = !DILocation(line: 95, column: 1, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !2000, file: !1968, line: 95, column: 1)
!3592 = !DILocation(line: 95, column: 1, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !3591, file: !1968, line: 95, column: 1)
!3594 = !DILocation(line: 95, column: 1, scope: !3595)
!3595 = distinct !DILexicalBlock(scope: !1997, file: !1968, line: 95, column: 1)
!3596 = !DILocation(line: 95, column: 1, scope: !3597)
!3597 = distinct !DILexicalBlock(scope: !3595, file: !1968, line: 95, column: 1)
!3598 = !DILocation(line: 95, column: 1, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !3597, file: !1968, line: 95, column: 1)
!3600 = !DILocation(line: 95, column: 1, scope: !3601)
!3601 = distinct !DILexicalBlock(scope: !1981, file: !1968, line: 95, column: 1)
!3602 = !{i64 2153447356}
!3603 = !DILocation(line: 95, column: 1, scope: !3604)
!3604 = distinct !DILexicalBlock(scope: !3601, file: !1968, line: 95, column: 1)
!3605 = !DILocation(line: 95, column: 1, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3604, file: !1968, line: 95, column: 1)
!3607 = !{i64 2153447515}
!3608 = distinct !DISubprogram(name: "signal_pending_state", scope: !1078, file: !1078, line: 414, type: !3609, scopeLine: 415, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3611)
!3609 = !DISubroutineType(types: !3610)
!3610 = !{!71, !7, !85}
!3611 = !{!3612, !3613}
!3612 = !DILocalVariable(name: "state", arg: 1, scope: !3608, file: !1078, line: 414, type: !7)
!3613 = !DILocalVariable(name: "p", arg: 2, scope: !3608, file: !1078, line: 414, type: !85)
!3614 = !DILocation(line: 414, column: 53, scope: !3608)
!3615 = !DILocation(line: 414, column: 80, scope: !3608)
!3616 = !DILocation(line: 416, column: 8, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !3608, file: !1078, line: 416, column: 6)
!3618 = !DILocation(line: 416, column: 14, scope: !3617)
!3619 = !DILocation(line: 416, column: 6, scope: !3608)
!3620 = !DILocation(line: 417, column: 3, scope: !3617)
!3621 = !DILocation(line: 418, column: 22, scope: !3622)
!3622 = distinct !DILexicalBlock(scope: !3608, file: !1078, line: 418, column: 6)
!3623 = !DILocation(line: 418, column: 7, scope: !3622)
!3624 = !DILocation(line: 418, column: 6, scope: !3608)
!3625 = !DILocation(line: 419, column: 3, scope: !3622)
!3626 = !DILocation(line: 421, column: 10, scope: !3608)
!3627 = !DILocation(line: 421, column: 16, scope: !3608)
!3628 = !DILocation(line: 421, column: 38, scope: !3608)
!3629 = !DILocation(line: 421, column: 64, scope: !3608)
!3630 = !DILocation(line: 421, column: 41, scope: !3608)
!3631 = !DILocation(line: 421, column: 2, scope: !3608)
!3632 = !DILocation(line: 422, column: 1, scope: !3608)
!3633 = !DISubprogram(name: "schedule_preempt_disabled", scope: !87, file: !87, line: 304, type: !1246, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3634 = !DILocation(line: 122, column: 1, scope: !2005)
!3635 = !DILocation(line: 122, column: 1, scope: !2013)
!3636 = !DILocation(line: 122, column: 1, scope: !2012)
!3637 = !DILocation(line: 122, column: 1, scope: !2015)
!3638 = !DILocation(line: 122, column: 1, scope: !2018)
!3639 = !DILocation(line: 122, column: 1, scope: !2020)
!3640 = !{i64 2153484086}
!3641 = !DILocation(line: 122, column: 1, scope: !2016)
!3642 = !DILocation(line: 122, column: 1, scope: !2022)
!3643 = !DILocation(line: 122, column: 1, scope: !2026)
!3644 = !DILocation(line: 122, column: 1, scope: !2025)
!3645 = !DILocation(line: 122, column: 1, scope: !3646)
!3646 = distinct !DILexicalBlock(scope: !2025, file: !1968, line: 122, column: 1)
!3647 = !DILocation(line: 122, column: 1, scope: !3648)
!3648 = distinct !DILexicalBlock(scope: !2025, file: !1968, line: 122, column: 1)
!3649 = !{i64 2153485282, i64 2153485311, i64 2153485357, i64 2153485415, i64 2153485469, i64 2153485523, i64 2153485578, i64 2153485609, i64 2153485917, i64 2153485923, i64 2153485970, i64 2153485993, i64 2153486019}
!3650 = !DILocation(line: 122, column: 1, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !2025, file: !1968, line: 122, column: 1)
!3652 = !DILocation(line: 122, column: 1, scope: !2023)
!3653 = !DILocation(line: 122, column: 1, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !2012, file: !1968, line: 122, column: 1)
!3655 = !{i64 2153486371}
!3656 = !DILocation(line: 122, column: 1, scope: !2028)
!3657 = !DILocation(line: 122, column: 1, scope: !2031)
!3658 = !DILocation(line: 122, column: 1, scope: !3659)
!3659 = distinct !DILexicalBlock(scope: !2031, file: !1968, line: 122, column: 1)
!3660 = !DILocation(line: 122, column: 1, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !3659, file: !1968, line: 122, column: 1)
!3662 = !DILocation(line: 122, column: 1, scope: !3663)
!3663 = distinct !DILexicalBlock(scope: !2028, file: !1968, line: 122, column: 1)
!3664 = !DILocation(line: 122, column: 1, scope: !3665)
!3665 = distinct !DILexicalBlock(scope: !3663, file: !1968, line: 122, column: 1)
!3666 = !DILocation(line: 122, column: 1, scope: !3667)
!3667 = distinct !DILexicalBlock(scope: !3665, file: !1968, line: 122, column: 1)
!3668 = !DILocation(line: 122, column: 1, scope: !3669)
!3669 = distinct !DILexicalBlock(scope: !2012, file: !1968, line: 122, column: 1)
!3670 = !{i64 2153492730}
!3671 = !DILocation(line: 122, column: 1, scope: !3672)
!3672 = distinct !DILexicalBlock(scope: !3669, file: !1968, line: 122, column: 1)
!3673 = !DILocation(line: 122, column: 1, scope: !3674)
!3674 = distinct !DILexicalBlock(scope: !3672, file: !1968, line: 122, column: 1)
!3675 = !{i64 2153492889}
!3676 = distinct !DISubprogram(name: "rwsem_del_wake_waiter", scope: !3, file: !3, line: 577, type: !3677, scopeLine: 580, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3679)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{null, !1954, !1894, !3268}
!3679 = !{!3680, !3681, !3682, !3683, !3684}
!3680 = !DILocalVariable(name: "sem", arg: 1, scope: !3676, file: !3, line: 577, type: !1954)
!3681 = !DILocalVariable(name: "waiter", arg: 2, scope: !3676, file: !3, line: 577, type: !1894)
!3682 = !DILocalVariable(name: "wake_q", arg: 3, scope: !3676, file: !3, line: 578, type: !3268)
!3683 = !DILocalVariable(name: "first", scope: !3676, file: !3, line: 581, type: !946)
!3684 = !DILocalVariable(name: "__mptr", scope: !3685, file: !3, line: 581, type: !53)
!3685 = distinct !DILexicalBlock(scope: !3676, file: !3, line: 581, column: 15)
!3686 = !DILocation(line: 577, column: 44, scope: !3676)
!3687 = !DILocation(line: 577, column: 70, scope: !3676)
!3688 = !DILocation(line: 578, column: 29, scope: !3676)
!3689 = !DILocation(line: 581, column: 2, scope: !3676)
!3690 = !DILocation(line: 581, column: 7, scope: !3676)
!3691 = !DILocation(line: 581, column: 15, scope: !3685)
!3692 = !DILocation(line: 581, column: 15, scope: !3676)
!3693 = !DILocation(line: 581, column: 42, scope: !3676)
!3694 = !DILocation(line: 581, column: 39, scope: !3676)
!3695 = !DILocation(line: 583, column: 14, scope: !3676)
!3696 = !DILocation(line: 583, column: 2, scope: !3676)
!3697 = !DILocation(line: 590, column: 23, scope: !3698)
!3698 = distinct !DILexicalBlock(scope: !3676, file: !3, line: 590, column: 6)
!3699 = !DILocation(line: 590, column: 28, scope: !3698)
!3700 = !DILocation(line: 590, column: 6, scope: !3698)
!3701 = !DILocation(line: 590, column: 36, scope: !3698)
!3702 = !DILocation(line: 590, column: 39, scope: !3698)
!3703 = !DILocation(line: 590, column: 6, scope: !3676)
!3704 = !DILocation(line: 591, column: 19, scope: !3698)
!3705 = !DILocation(line: 591, column: 40, scope: !3698)
!3706 = !DILocation(line: 591, column: 3, scope: !3698)
!3707 = !DILocation(line: 592, column: 2, scope: !3676)
!3708 = !DILocation(line: 593, column: 20, scope: !3709)
!3709 = distinct !DILexicalBlock(scope: !3676, file: !3, line: 593, column: 6)
!3710 = !DILocation(line: 593, column: 7, scope: !3709)
!3711 = !DILocation(line: 593, column: 6, scope: !3676)
!3712 = !DILocation(line: 594, column: 13, scope: !3709)
!3713 = !DILocation(line: 594, column: 3, scope: !3709)
!3714 = !DILocation(line: 595, column: 1, scope: !3676)
!3715 = distinct !DISubprogram(name: "ERR_PTR", scope: !2733, file: !2733, line: 39, type: !3716, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3718)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{!53, !595}
!3718 = !{!3719}
!3719 = !DILocalVariable(name: "error", arg: 1, scope: !3715, file: !2733, line: 39, type: !595)
!3720 = !DILocation(line: 39, column: 48, scope: !3715)
!3721 = !DILocation(line: 41, column: 18, scope: !3715)
!3722 = !DILocation(line: 41, column: 9, scope: !3715)
!3723 = !DILocation(line: 41, column: 2, scope: !3715)
!3724 = !DISubprogram(name: "wake_q_add", scope: !2753, file: !2753, line: 62, type: !3725, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3725 = !DISubroutineType(types: !3726)
!3726 = !{null, !3268, !85}
!3727 = distinct !DISubprogram(name: "atomic_long_fetch_add", scope: !2116, file: !2116, line: 3322, type: !2979, scopeLine: 3323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3728)
!3728 = !{!3729, !3730}
!3729 = !DILocalVariable(name: "i", arg: 1, scope: !3727, file: !2116, line: 3322, type: !595)
!3730 = !DILocalVariable(name: "v", arg: 2, scope: !3727, file: !2116, line: 3322, type: !2119)
!3731 = !DILocation(line: 3322, column: 28, scope: !3727)
!3732 = !DILocation(line: 3322, column: 46, scope: !3727)
!3733 = !DILocation(line: 3324, column: 2, scope: !3727)
!3734 = !DILocation(line: 3324, column: 2, scope: !3735)
!3735 = distinct !DILexicalBlock(scope: !3727, file: !2116, line: 3324, column: 2)
!3736 = !DILocation(line: 3325, column: 31, scope: !3727)
!3737 = !DILocation(line: 3325, column: 2, scope: !3727)
!3738 = !DILocation(line: 3326, column: 35, scope: !3727)
!3739 = !DILocation(line: 3326, column: 38, scope: !3727)
!3740 = !DILocation(line: 3326, column: 9, scope: !3727)
!3741 = !DILocation(line: 3326, column: 2, scope: !3727)
!3742 = distinct !DISubprogram(name: "atomic_long_add", scope: !2116, file: !2116, line: 3230, type: !3743, scopeLine: 3231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3745)
!3743 = !DISubroutineType(types: !3744)
!3744 = !{null, !595, !2119}
!3745 = !{!3746, !3747}
!3746 = !DILocalVariable(name: "i", arg: 1, scope: !3742, file: !2116, line: 3230, type: !595)
!3747 = !DILocalVariable(name: "v", arg: 2, scope: !3742, file: !2116, line: 3230, type: !2119)
!3748 = !DILocation(line: 3230, column: 22, scope: !3742)
!3749 = !DILocation(line: 3230, column: 40, scope: !3742)
!3750 = !DILocation(line: 3232, column: 31, scope: !3742)
!3751 = !DILocation(line: 3232, column: 2, scope: !3742)
!3752 = !DILocation(line: 3233, column: 22, scope: !3742)
!3753 = !DILocation(line: 3233, column: 25, scope: !3742)
!3754 = !DILocation(line: 3233, column: 2, scope: !3742)
!3755 = !DILocation(line: 3234, column: 1, scope: !3742)
!3756 = distinct !DISubprogram(name: "list_move_tail", scope: !2132, file: !2132, line: 307, type: !3757, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3759)
!3757 = !DISubroutineType(types: !3758)
!3758 = !{null, !63, !63}
!3759 = !{!3760, !3761}
!3760 = !DILocalVariable(name: "list", arg: 1, scope: !3756, file: !2132, line: 307, type: !63)
!3761 = !DILocalVariable(name: "head", arg: 2, scope: !3756, file: !2132, line: 308, type: !63)
!3762 = !DILocation(line: 307, column: 53, scope: !3756)
!3763 = !DILocation(line: 308, column: 25, scope: !3756)
!3764 = !DILocation(line: 310, column: 19, scope: !3756)
!3765 = !DILocation(line: 310, column: 2, scope: !3756)
!3766 = !DILocation(line: 311, column: 16, scope: !3756)
!3767 = !DILocation(line: 311, column: 22, scope: !3756)
!3768 = !DILocation(line: 311, column: 2, scope: !3756)
!3769 = !DILocation(line: 312, column: 1, scope: !3756)
!3770 = distinct !DISubprogram(name: "get_task_struct", scope: !3771, file: !3771, line: 115, type: !3772, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3774)
!3771 = !DIFile(filename: "./include/linux/sched/task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ef3d4d4bfe7d22703d2dead2224ab376")
!3772 = !DISubroutineType(types: !3773)
!3773 = !{!85, !85}
!3774 = !{!3775}
!3775 = !DILocalVariable(name: "t", arg: 1, scope: !3770, file: !3771, line: 115, type: !85)
!3776 = !DILocation(line: 115, column: 71, scope: !3770)
!3777 = !DILocation(line: 117, column: 16, scope: !3770)
!3778 = !DILocation(line: 117, column: 19, scope: !3770)
!3779 = !DILocation(line: 117, column: 2, scope: !3770)
!3780 = !DILocation(line: 118, column: 9, scope: !3770)
!3781 = !DILocation(line: 118, column: 2, scope: !3770)
!3782 = !DISubprogram(name: "wake_q_add_safe", scope: !2753, file: !2753, line: 63, type: !3725, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3783 = distinct !DISubprogram(name: "raw_atomic_long_fetch_add", scope: !492, file: !492, line: 223, type: !2979, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3784)
!3784 = !{!3785, !3786}
!3785 = !DILocalVariable(name: "i", arg: 1, scope: !3783, file: !492, line: 223, type: !595)
!3786 = !DILocalVariable(name: "v", arg: 2, scope: !3783, file: !492, line: 223, type: !2119)
!3787 = !DILocation(line: 223, column: 32, scope: !3783)
!3788 = !DILocation(line: 223, column: 50, scope: !3783)
!3789 = !DILocation(line: 226, column: 32, scope: !3783)
!3790 = !DILocation(line: 226, column: 35, scope: !3783)
!3791 = !DILocation(line: 226, column: 9, scope: !3783)
!3792 = !DILocation(line: 226, column: 2, scope: !3783)
!3793 = distinct !DISubprogram(name: "raw_atomic64_fetch_add", scope: !2562, file: !2562, line: 2763, type: !3054, scopeLine: 2764, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3794)
!3794 = !{!3795, !3796}
!3795 = !DILocalVariable(name: "i", arg: 1, scope: !3793, file: !2562, line: 2763, type: !56)
!3796 = !DILocalVariable(name: "v", arg: 2, scope: !3793, file: !2562, line: 2763, type: !2565)
!3797 = !DILocation(line: 2763, column: 28, scope: !3793)
!3798 = !DILocation(line: 2763, column: 43, scope: !3793)
!3799 = !DILocation(line: 2766, column: 33, scope: !3793)
!3800 = !DILocation(line: 2766, column: 36, scope: !3793)
!3801 = !DILocation(line: 2766, column: 9, scope: !3793)
!3802 = !DILocation(line: 2766, column: 2, scope: !3793)
!3803 = distinct !DISubprogram(name: "arch_atomic64_fetch_add", scope: !2576, file: !2576, line: 89, type: !3054, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3804)
!3804 = !{!3805, !3806, !3807}
!3805 = !DILocalVariable(name: "i", arg: 1, scope: !3803, file: !2576, line: 89, type: !56)
!3806 = !DILocalVariable(name: "v", arg: 2, scope: !3803, file: !2576, line: 89, type: !2565)
!3807 = !DILocalVariable(name: "__ret", scope: !3808, file: !2576, line: 91, type: !56)
!3808 = distinct !DILexicalBlock(scope: !3803, file: !2576, line: 91, column: 9)
!3809 = !DILocation(line: 89, column: 56, scope: !3803)
!3810 = !DILocation(line: 89, column: 71, scope: !3803)
!3811 = !DILocation(line: 91, column: 9, scope: !3808)
!3812 = !{i64 2148484839, i64 2148484878, i64 2148484899, i64 2148484936, i64 2148484959, i64 2148484968}
!3813 = !DILocation(line: 91, column: 9, scope: !3803)
!3814 = !DILocation(line: 91, column: 2, scope: !3803)
!3815 = distinct !DISubprogram(name: "raw_atomic_long_add", scope: !492, file: !492, line: 118, type: !3743, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3816)
!3816 = !{!3817, !3818}
!3817 = !DILocalVariable(name: "i", arg: 1, scope: !3815, file: !492, line: 118, type: !595)
!3818 = !DILocalVariable(name: "v", arg: 2, scope: !3815, file: !492, line: 118, type: !2119)
!3819 = !DILocation(line: 118, column: 26, scope: !3815)
!3820 = !DILocation(line: 118, column: 44, scope: !3815)
!3821 = !DILocation(line: 121, column: 19, scope: !3815)
!3822 = !DILocation(line: 121, column: 22, scope: !3815)
!3823 = !DILocation(line: 121, column: 2, scope: !3815)
!3824 = !DILocation(line: 125, column: 1, scope: !3815)
!3825 = distinct !DISubprogram(name: "raw_atomic64_add", scope: !2562, file: !2562, line: 2643, type: !3826, scopeLine: 2644, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3828)
!3826 = !DISubroutineType(types: !3827)
!3827 = !{null, !56, !2565}
!3828 = !{!3829, !3830}
!3829 = !DILocalVariable(name: "i", arg: 1, scope: !3825, file: !2562, line: 2643, type: !56)
!3830 = !DILocalVariable(name: "v", arg: 2, scope: !3825, file: !2562, line: 2643, type: !2565)
!3831 = !DILocation(line: 2643, column: 22, scope: !3825)
!3832 = !DILocation(line: 2643, column: 37, scope: !3825)
!3833 = !DILocation(line: 2645, column: 20, scope: !3825)
!3834 = !DILocation(line: 2645, column: 23, scope: !3825)
!3835 = !DILocation(line: 2645, column: 2, scope: !3825)
!3836 = !DILocation(line: 2646, column: 1, scope: !3825)
!3837 = distinct !DISubprogram(name: "arch_atomic64_add", scope: !2576, file: !2576, line: 23, type: !3826, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3838)
!3838 = !{!3839, !3840}
!3839 = !DILocalVariable(name: "i", arg: 1, scope: !3837, file: !2576, line: 23, type: !56)
!3840 = !DILocalVariable(name: "v", arg: 2, scope: !3837, file: !2576, line: 23, type: !2565)
!3841 = !DILocation(line: 23, column: 51, scope: !3837)
!3842 = !DILocation(line: 23, column: 66, scope: !3837)
!3843 = !DILocation(line: 26, column: 16, scope: !3837)
!3844 = !DILocation(line: 26, column: 19, scope: !3837)
!3845 = !DILocation(line: 27, column: 16, scope: !3837)
!3846 = !DILocation(line: 27, column: 25, scope: !3837)
!3847 = !DILocation(line: 27, column: 28, scope: !3837)
!3848 = !DILocation(line: 25, column: 2, scope: !3837)
!3849 = !{i64 2148471455, i64 2148471494, i64 2148471515, i64 2148471552, i64 2148471575, i64 2148471445}
!3850 = !DILocation(line: 28, column: 1, scope: !3837)
!3851 = distinct !DISubprogram(name: "__list_del_entry", scope: !2132, file: !2132, line: 213, type: !2133, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3852)
!3852 = !{!3853}
!3853 = !DILocalVariable(name: "entry", arg: 1, scope: !3851, file: !2132, line: 213, type: !63)
!3854 = !DILocation(line: 213, column: 55, scope: !3851)
!3855 = !DILocation(line: 215, column: 30, scope: !3856)
!3856 = distinct !DILexicalBlock(scope: !3851, file: !2132, line: 215, column: 6)
!3857 = !DILocation(line: 215, column: 7, scope: !3856)
!3858 = !DILocation(line: 215, column: 6, scope: !3851)
!3859 = !DILocation(line: 216, column: 3, scope: !3856)
!3860 = !DILocation(line: 218, column: 13, scope: !3851)
!3861 = !DILocation(line: 218, column: 20, scope: !3851)
!3862 = !DILocation(line: 218, column: 26, scope: !3851)
!3863 = !DILocation(line: 218, column: 33, scope: !3851)
!3864 = !DILocation(line: 218, column: 2, scope: !3851)
!3865 = !DILocation(line: 219, column: 1, scope: !3851)
!3866 = distinct !DISubprogram(name: "list_add_tail", scope: !2132, file: !2132, line: 181, type: !3757, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3867)
!3867 = !{!3868, !3869}
!3868 = !DILocalVariable(name: "new", arg: 1, scope: !3866, file: !2132, line: 181, type: !63)
!3869 = !DILocalVariable(name: "head", arg: 2, scope: !3866, file: !2132, line: 181, type: !63)
!3870 = !DILocation(line: 181, column: 52, scope: !3866)
!3871 = !DILocation(line: 181, column: 75, scope: !3866)
!3872 = !DILocation(line: 183, column: 13, scope: !3866)
!3873 = !DILocation(line: 183, column: 18, scope: !3866)
!3874 = !DILocation(line: 183, column: 24, scope: !3866)
!3875 = !DILocation(line: 183, column: 30, scope: !3866)
!3876 = !DILocation(line: 183, column: 2, scope: !3866)
!3877 = !DILocation(line: 184, column: 1, scope: !3866)
!3878 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !2132, file: !2132, line: 134, type: !3879, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3881)
!3879 = !DISubroutineType(types: !3880)
!3880 = !{!946, !63}
!3881 = !{!3882}
!3882 = !DILocalVariable(name: "entry", arg: 1, scope: !3878, file: !2132, line: 134, type: !63)
!3883 = !DILocation(line: 134, column: 61, scope: !3878)
!3884 = !DILocation(line: 136, column: 2, scope: !3878)
!3885 = distinct !DISubprogram(name: "__list_del", scope: !2132, file: !2132, line: 193, type: !3757, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3886)
!3886 = !{!3887, !3888}
!3887 = !DILocalVariable(name: "prev", arg: 1, scope: !3885, file: !2132, line: 193, type: !63)
!3888 = !DILocalVariable(name: "next", arg: 2, scope: !3885, file: !2132, line: 193, type: !63)
!3889 = !DILocation(line: 193, column: 50, scope: !3885)
!3890 = !DILocation(line: 193, column: 75, scope: !3885)
!3891 = !DILocation(line: 195, column: 15, scope: !3885)
!3892 = !DILocation(line: 195, column: 2, scope: !3885)
!3893 = !DILocation(line: 195, column: 8, scope: !3885)
!3894 = !DILocation(line: 195, column: 13, scope: !3885)
!3895 = !DILocation(line: 196, column: 2, scope: !3885)
!3896 = !DILocation(line: 196, column: 2, scope: !3897)
!3897 = distinct !DILexicalBlock(scope: !3885, file: !2132, line: 196, column: 2)
!3898 = !DILocation(line: 196, column: 2, scope: !3899)
!3899 = distinct !DILexicalBlock(scope: !3897, file: !2132, line: 196, column: 2)
!3900 = !DILocation(line: 196, column: 2, scope: !3901)
!3901 = distinct !DILexicalBlock(scope: !3897, file: !2132, line: 196, column: 2)
!3902 = !DILocation(line: 197, column: 1, scope: !3885)
!3903 = distinct !DISubprogram(name: "__list_add", scope: !2132, file: !2132, line: 146, type: !3904, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3906)
!3904 = !DISubroutineType(types: !3905)
!3905 = !{null, !63, !63, !63}
!3906 = !{!3907, !3908, !3909}
!3907 = !DILocalVariable(name: "new", arg: 1, scope: !3903, file: !2132, line: 146, type: !63)
!3908 = !DILocalVariable(name: "prev", arg: 2, scope: !3903, file: !2132, line: 147, type: !63)
!3909 = !DILocalVariable(name: "next", arg: 3, scope: !3903, file: !2132, line: 148, type: !63)
!3910 = !DILocation(line: 146, column: 49, scope: !3903)
!3911 = !DILocation(line: 147, column: 28, scope: !3903)
!3912 = !DILocation(line: 148, column: 28, scope: !3903)
!3913 = !DILocation(line: 150, column: 24, scope: !3914)
!3914 = distinct !DILexicalBlock(scope: !3903, file: !2132, line: 150, column: 6)
!3915 = !DILocation(line: 150, column: 29, scope: !3914)
!3916 = !DILocation(line: 150, column: 35, scope: !3914)
!3917 = !DILocation(line: 150, column: 7, scope: !3914)
!3918 = !DILocation(line: 150, column: 6, scope: !3903)
!3919 = !DILocation(line: 151, column: 3, scope: !3914)
!3920 = !DILocation(line: 153, column: 15, scope: !3903)
!3921 = !DILocation(line: 153, column: 2, scope: !3903)
!3922 = !DILocation(line: 153, column: 8, scope: !3903)
!3923 = !DILocation(line: 153, column: 13, scope: !3903)
!3924 = !DILocation(line: 154, column: 14, scope: !3903)
!3925 = !DILocation(line: 154, column: 2, scope: !3903)
!3926 = !DILocation(line: 154, column: 7, scope: !3903)
!3927 = !DILocation(line: 154, column: 12, scope: !3903)
!3928 = !DILocation(line: 155, column: 14, scope: !3903)
!3929 = !DILocation(line: 155, column: 2, scope: !3903)
!3930 = !DILocation(line: 155, column: 7, scope: !3903)
!3931 = !DILocation(line: 155, column: 12, scope: !3903)
!3932 = !DILocation(line: 156, column: 2, scope: !3903)
!3933 = !DILocation(line: 156, column: 2, scope: !3934)
!3934 = distinct !DILexicalBlock(scope: !3903, file: !2132, line: 156, column: 2)
!3935 = !DILocation(line: 156, column: 2, scope: !3936)
!3936 = distinct !DILexicalBlock(scope: !3934, file: !2132, line: 156, column: 2)
!3937 = !DILocation(line: 156, column: 2, scope: !3938)
!3938 = distinct !DILexicalBlock(scope: !3934, file: !2132, line: 156, column: 2)
!3939 = !DILocation(line: 157, column: 1, scope: !3903)
!3940 = distinct !DISubprogram(name: "__list_add_valid", scope: !2132, file: !2132, line: 128, type: !3941, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3943)
!3941 = !DISubroutineType(types: !3942)
!3942 = !{!946, !63, !63, !63}
!3943 = !{!3944, !3945, !3946}
!3944 = !DILocalVariable(name: "new", arg: 1, scope: !3940, file: !2132, line: 128, type: !63)
!3945 = !DILocalVariable(name: "prev", arg: 2, scope: !3940, file: !2132, line: 129, type: !63)
!3946 = !DILocalVariable(name: "next", arg: 3, scope: !3940, file: !2132, line: 130, type: !63)
!3947 = !DILocation(line: 128, column: 55, scope: !3940)
!3948 = !DILocation(line: 129, column: 23, scope: !3940)
!3949 = !DILocation(line: 130, column: 23, scope: !3940)
!3950 = !DILocation(line: 132, column: 2, scope: !3940)
!3951 = distinct !DISubprogram(name: "refcount_inc", scope: !39, file: !39, line: 265, type: !3952, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3955)
!3952 = !DISubroutineType(types: !3953)
!3953 = !{null, !3954}
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!3955 = !{!3956}
!3956 = !DILocalVariable(name: "r", arg: 1, scope: !3951, file: !39, line: 265, type: !3954)
!3957 = !DILocation(line: 265, column: 45, scope: !3951)
!3958 = !DILocation(line: 267, column: 17, scope: !3951)
!3959 = !DILocation(line: 267, column: 2, scope: !3951)
!3960 = !DILocation(line: 268, column: 1, scope: !3951)
!3961 = distinct !DISubprogram(name: "__refcount_inc", scope: !39, file: !39, line: 248, type: !3962, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3964)
!3962 = !DISubroutineType(types: !3963)
!3963 = !{null, !3954, !803}
!3964 = !{!3965, !3966}
!3965 = !DILocalVariable(name: "r", arg: 1, scope: !3961, file: !39, line: 248, type: !3954)
!3966 = !DILocalVariable(name: "oldp", arg: 2, scope: !3961, file: !39, line: 248, type: !803)
!3967 = !DILocation(line: 248, column: 47, scope: !3961)
!3968 = !DILocation(line: 248, column: 55, scope: !3961)
!3969 = !DILocation(line: 250, column: 20, scope: !3961)
!3970 = !DILocation(line: 250, column: 23, scope: !3961)
!3971 = !DILocation(line: 250, column: 2, scope: !3961)
!3972 = !DILocation(line: 251, column: 1, scope: !3961)
!3973 = distinct !DISubprogram(name: "__refcount_add", scope: !39, file: !39, line: 191, type: !3974, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3976)
!3974 = !DISubroutineType(types: !3975)
!3975 = !{null, !71, !3954, !803}
!3976 = !{!3977, !3978, !3979, !3980}
!3977 = !DILocalVariable(name: "i", arg: 1, scope: !3973, file: !39, line: 191, type: !71)
!3978 = !DILocalVariable(name: "r", arg: 2, scope: !3973, file: !39, line: 191, type: !3954)
!3979 = !DILocalVariable(name: "oldp", arg: 3, scope: !3973, file: !39, line: 191, type: !803)
!3980 = !DILocalVariable(name: "old", scope: !3973, file: !39, line: 193, type: !71)
!3981 = !DILocation(line: 191, column: 39, scope: !3973)
!3982 = !DILocation(line: 191, column: 54, scope: !3973)
!3983 = !DILocation(line: 191, column: 62, scope: !3973)
!3984 = !DILocation(line: 193, column: 2, scope: !3973)
!3985 = !DILocation(line: 193, column: 6, scope: !3973)
!3986 = !DILocation(line: 193, column: 37, scope: !3973)
!3987 = !DILocation(line: 193, column: 41, scope: !3973)
!3988 = !DILocation(line: 193, column: 44, scope: !3973)
!3989 = !DILocation(line: 193, column: 12, scope: !3973)
!3990 = !DILocation(line: 195, column: 6, scope: !3991)
!3991 = distinct !DILexicalBlock(scope: !3973, file: !39, line: 195, column: 6)
!3992 = !DILocation(line: 195, column: 6, scope: !3973)
!3993 = !DILocation(line: 196, column: 11, scope: !3991)
!3994 = !DILocation(line: 196, column: 4, scope: !3991)
!3995 = !DILocation(line: 196, column: 9, scope: !3991)
!3996 = !DILocation(line: 196, column: 3, scope: !3991)
!3997 = !DILocation(line: 198, column: 6, scope: !3998)
!3998 = distinct !DILexicalBlock(scope: !3973, file: !39, line: 198, column: 6)
!3999 = !DILocation(line: 198, column: 6, scope: !3973)
!4000 = !DILocation(line: 199, column: 26, scope: !3998)
!4001 = !DILocation(line: 199, column: 3, scope: !3998)
!4002 = !DILocation(line: 200, column: 11, scope: !4003)
!4003 = distinct !DILexicalBlock(scope: !3998, file: !39, line: 200, column: 11)
!4004 = !DILocation(line: 200, column: 11, scope: !3998)
!4005 = !DILocation(line: 201, column: 26, scope: !4003)
!4006 = !DILocation(line: 201, column: 3, scope: !4003)
!4007 = !DILocation(line: 202, column: 1, scope: !3973)
!4008 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !2116, file: !2116, line: 250, type: !4009, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4011)
!4009 = !DISubroutineType(types: !4010)
!4010 = !{!71, !71, !2589}
!4011 = !{!4012, !4013}
!4012 = !DILocalVariable(name: "i", arg: 1, scope: !4008, file: !2116, line: 250, type: !71)
!4013 = !DILocalVariable(name: "v", arg: 2, scope: !4008, file: !2116, line: 250, type: !2589)
!4014 = !DILocation(line: 250, column: 30, scope: !4008)
!4015 = !DILocation(line: 250, column: 43, scope: !4008)
!4016 = !DILocation(line: 252, column: 31, scope: !4008)
!4017 = !DILocation(line: 252, column: 2, scope: !4008)
!4018 = !DILocation(line: 253, column: 38, scope: !4008)
!4019 = !DILocation(line: 253, column: 41, scope: !4008)
!4020 = !DILocation(line: 253, column: 9, scope: !4008)
!4021 = !DILocation(line: 253, column: 2, scope: !4008)
!4022 = !DISubprogram(name: "refcount_warn_saturate", scope: !39, file: !39, line: 127, type: !4023, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4023 = !DISubroutineType(types: !4024)
!4024 = !{null, !3954, !38}
!4025 = distinct !DISubprogram(name: "raw_atomic_fetch_add_relaxed", scope: !2562, file: !2562, line: 731, type: !4009, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4026)
!4026 = !{!4027, !4028}
!4027 = !DILocalVariable(name: "i", arg: 1, scope: !4025, file: !2562, line: 731, type: !71)
!4028 = !DILocalVariable(name: "v", arg: 2, scope: !4025, file: !2562, line: 731, type: !2589)
!4029 = !DILocation(line: 731, column: 34, scope: !4025)
!4030 = !DILocation(line: 731, column: 47, scope: !4025)
!4031 = !DILocation(line: 736, column: 31, scope: !4025)
!4032 = !DILocation(line: 736, column: 34, scope: !4025)
!4033 = !DILocation(line: 736, column: 9, scope: !4025)
!4034 = !DILocation(line: 736, column: 2, scope: !4025)
!4035 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !2612, file: !2612, line: 95, type: !4009, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4036)
!4036 = !{!4037, !4038, !4039}
!4037 = !DILocalVariable(name: "i", arg: 1, scope: !4035, file: !2612, line: 95, type: !71)
!4038 = !DILocalVariable(name: "v", arg: 2, scope: !4035, file: !2612, line: 95, type: !2589)
!4039 = !DILocalVariable(name: "__ret", scope: !4040, file: !2612, line: 97, type: !71)
!4040 = distinct !DILexicalBlock(scope: !4035, file: !2612, line: 97, column: 9)
!4041 = !DILocation(line: 95, column: 54, scope: !4035)
!4042 = !DILocation(line: 95, column: 67, scope: !4035)
!4043 = !DILocation(line: 97, column: 9, scope: !4040)
!4044 = !{i64 2148453744, i64 2148453783, i64 2148453804, i64 2148453841, i64 2148453864, i64 2148453873}
!4045 = !DILocation(line: 97, column: 9, scope: !4035)
!4046 = !DILocation(line: 97, column: 2, scope: !4035)
!4047 = distinct !DISubprogram(name: "raw_atomic_long_add_return", scope: !492, file: !492, line: 139, type: !2979, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4048)
!4048 = !{!4049, !4050}
!4049 = !DILocalVariable(name: "i", arg: 1, scope: !4047, file: !492, line: 139, type: !595)
!4050 = !DILocalVariable(name: "v", arg: 2, scope: !4047, file: !492, line: 139, type: !2119)
!4051 = !DILocation(line: 139, column: 33, scope: !4047)
!4052 = !DILocation(line: 139, column: 51, scope: !4047)
!4053 = !DILocation(line: 142, column: 33, scope: !4047)
!4054 = !DILocation(line: 142, column: 36, scope: !4047)
!4055 = !DILocation(line: 142, column: 9, scope: !4047)
!4056 = !DILocation(line: 142, column: 2, scope: !4047)
!4057 = distinct !DISubprogram(name: "raw_atomic64_add_return", scope: !2562, file: !2562, line: 2660, type: !3054, scopeLine: 2661, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4058)
!4058 = !{!4059, !4060}
!4059 = !DILocalVariable(name: "i", arg: 1, scope: !4057, file: !2562, line: 2660, type: !56)
!4060 = !DILocalVariable(name: "v", arg: 2, scope: !4057, file: !2562, line: 2660, type: !2565)
!4061 = !DILocation(line: 2660, column: 29, scope: !4057)
!4062 = !DILocation(line: 2660, column: 44, scope: !4057)
!4063 = !DILocation(line: 2663, column: 34, scope: !4057)
!4064 = !DILocation(line: 2663, column: 37, scope: !4057)
!4065 = !DILocation(line: 2663, column: 9, scope: !4057)
!4066 = !DILocation(line: 2663, column: 2, scope: !4057)
!4067 = distinct !DISubprogram(name: "clear_nonspinnable", scope: !3, file: !3, line: 941, type: !2059, scopeLine: 942, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4068)
!4068 = !{!4069}
!4069 = !DILocalVariable(name: "sem", arg: 1, scope: !4067, file: !3, line: 941, type: !1954)
!4070 = !DILocation(line: 941, column: 60, scope: !4067)
!4071 = !DILocation(line: 943, column: 6, scope: !4072)
!4072 = distinct !DILexicalBlock(scope: !4067, file: !3, line: 943, column: 6)
!4073 = !DILocation(line: 943, column: 6, scope: !4067)
!4074 = !DILocation(line: 944, column: 43, scope: !4072)
!4075 = !DILocation(line: 944, column: 48, scope: !4072)
!4076 = !DILocation(line: 944, column: 3, scope: !4072)
!4077 = !DILocation(line: 945, column: 1, scope: !4067)
!4078 = distinct !DISubprogram(name: "rwsem_test_oflags", scope: !3, file: !3, line: 155, type: !4079, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4081)
!4079 = !DISubroutineType(types: !4080)
!4080 = !{!946, !1954, !595}
!4081 = !{!4082, !4083}
!4082 = !DILocalVariable(name: "sem", arg: 1, scope: !4078, file: !3, line: 155, type: !1954)
!4083 = !DILocalVariable(name: "flags", arg: 2, scope: !4078, file: !3, line: 155, type: !595)
!4084 = !DILocation(line: 155, column: 59, scope: !4078)
!4085 = !DILocation(line: 155, column: 69, scope: !4078)
!4086 = !DILocation(line: 157, column: 27, scope: !4078)
!4087 = !DILocation(line: 157, column: 32, scope: !4078)
!4088 = !DILocation(line: 157, column: 9, scope: !4078)
!4089 = !DILocation(line: 157, column: 41, scope: !4078)
!4090 = !DILocation(line: 157, column: 39, scope: !4078)
!4091 = !DILocation(line: 157, column: 2, scope: !4078)
!4092 = distinct !DISubprogram(name: "atomic_long_andnot", scope: !2116, file: !2116, line: 3968, type: !3743, scopeLine: 3969, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4093)
!4093 = !{!4094, !4095}
!4094 = !DILocalVariable(name: "i", arg: 1, scope: !4092, file: !2116, line: 3968, type: !595)
!4095 = !DILocalVariable(name: "v", arg: 2, scope: !4092, file: !2116, line: 3968, type: !2119)
!4096 = !DILocation(line: 3968, column: 25, scope: !4092)
!4097 = !DILocation(line: 3968, column: 43, scope: !4092)
!4098 = !DILocation(line: 3970, column: 31, scope: !4092)
!4099 = !DILocation(line: 3970, column: 2, scope: !4092)
!4100 = !DILocation(line: 3971, column: 25, scope: !4092)
!4101 = !DILocation(line: 3971, column: 28, scope: !4092)
!4102 = !DILocation(line: 3971, column: 2, scope: !4092)
!4103 = !DILocation(line: 3972, column: 1, scope: !4092)
!4104 = distinct !DISubprogram(name: "raw_atomic_long_andnot", scope: !492, file: !492, line: 961, type: !3743, scopeLine: 962, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4105)
!4105 = !{!4106, !4107}
!4106 = !DILocalVariable(name: "i", arg: 1, scope: !4104, file: !492, line: 961, type: !595)
!4107 = !DILocalVariable(name: "v", arg: 2, scope: !4104, file: !492, line: 961, type: !2119)
!4108 = !DILocation(line: 961, column: 29, scope: !4104)
!4109 = !DILocation(line: 961, column: 47, scope: !4104)
!4110 = !DILocation(line: 964, column: 22, scope: !4104)
!4111 = !DILocation(line: 964, column: 25, scope: !4104)
!4112 = !DILocation(line: 964, column: 2, scope: !4104)
!4113 = !DILocation(line: 968, column: 1, scope: !4104)
!4114 = distinct !DISubprogram(name: "raw_atomic64_andnot", scope: !2562, file: !2562, line: 3645, type: !3826, scopeLine: 3646, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4115)
!4115 = !{!4116, !4117}
!4116 = !DILocalVariable(name: "i", arg: 1, scope: !4114, file: !2562, line: 3645, type: !56)
!4117 = !DILocalVariable(name: "v", arg: 2, scope: !4114, file: !2562, line: 3645, type: !2565)
!4118 = !DILocation(line: 3645, column: 25, scope: !4114)
!4119 = !DILocation(line: 3645, column: 40, scope: !4114)
!4120 = !DILocation(line: 3650, column: 20, scope: !4114)
!4121 = !DILocation(line: 3650, column: 19, scope: !4114)
!4122 = !DILocation(line: 3650, column: 23, scope: !4114)
!4123 = !DILocation(line: 3650, column: 2, scope: !4114)
!4124 = !DILocation(line: 3652, column: 1, scope: !4114)
!4125 = distinct !DISubprogram(name: "raw_atomic64_and", scope: !2562, file: !2562, line: 3525, type: !3826, scopeLine: 3526, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4126)
!4126 = !{!4127, !4128}
!4127 = !DILocalVariable(name: "i", arg: 1, scope: !4125, file: !2562, line: 3525, type: !56)
!4128 = !DILocalVariable(name: "v", arg: 2, scope: !4125, file: !2562, line: 3525, type: !2565)
!4129 = !DILocation(line: 3525, column: 22, scope: !4125)
!4130 = !DILocation(line: 3525, column: 37, scope: !4125)
!4131 = !DILocation(line: 3527, column: 20, scope: !4125)
!4132 = !DILocation(line: 3527, column: 23, scope: !4125)
!4133 = !DILocation(line: 3527, column: 2, scope: !4125)
!4134 = !DILocation(line: 3528, column: 1, scope: !4125)
!4135 = distinct !DISubprogram(name: "arch_atomic64_and", scope: !2576, file: !2576, line: 119, type: !3826, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4136)
!4136 = !{!4137, !4138}
!4137 = !DILocalVariable(name: "i", arg: 1, scope: !4135, file: !2576, line: 119, type: !56)
!4138 = !DILocalVariable(name: "v", arg: 2, scope: !4135, file: !2576, line: 119, type: !2565)
!4139 = !DILocation(line: 119, column: 51, scope: !4135)
!4140 = !DILocation(line: 119, column: 66, scope: !4135)
!4141 = !DILocation(line: 122, column: 12, scope: !4135)
!4142 = !DILocation(line: 122, column: 15, scope: !4135)
!4143 = !DILocation(line: 123, column: 12, scope: !4135)
!4144 = !DILocation(line: 121, column: 2, scope: !4135)
!4145 = !{i64 2148494678, i64 2148494717, i64 2148494738, i64 2148494775, i64 2148494798, i64 2148494668}
!4146 = !DILocation(line: 125, column: 1, scope: !4135)
!4147 = distinct !DISubprogram(name: "static_key_false", scope: !4148, file: !4148, line: 205, type: !4149, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4169)
!4148 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!4149 = !DISubroutineType(types: !4150)
!4150 = !{!946, !4151}
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4152, size: 64)
!4152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !4148, line: 85, size: 128, elements: !4153)
!4153 = !{!4154, !4155}
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4152, file: !4148, line: 86, baseType: !104, size: 32)
!4155 = !DIDerivedType(tag: DW_TAG_member, scope: !4152, file: !4148, line: 101, baseType: !4156, size: 64, offset: 64)
!4156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4152, file: !4148, line: 101, size: 64, elements: !4157)
!4157 = !{!4158, !4159, !4166}
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4156, file: !4148, line: 102, baseType: !74, size: 64)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !4156, file: !4148, line: 103, baseType: !4160, size: 64)
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4161, size: 64)
!4161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !4148, line: 117, size: 128, elements: !4162)
!4162 = !{!4163, !4164, !4165}
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4161, file: !4148, line: 118, baseType: !550, size: 32)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4161, file: !4148, line: 119, baseType: !550, size: 32, offset: 32)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4161, file: !4148, line: 120, baseType: !595, size: 64, offset: 64)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4156, file: !4148, line: 104, baseType: !4167, size: 64)
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4168, size: 64)
!4168 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !4148, line: 104, flags: DIFlagFwdDecl)
!4169 = !{!4170}
!4170 = !DILocalVariable(name: "key", arg: 1, scope: !4147, file: !4148, line: 205, type: !4151)
!4171 = !DILocation(line: 205, column: 65, scope: !4147)
!4172 = !DILocation(line: 207, column: 28, scope: !4147)
!4173 = !DILocation(line: 207, column: 9, scope: !4147)
!4174 = !DILocation(line: 207, column: 2, scope: !4147)
!4175 = distinct !DISubprogram(name: "cpu_online", scope: !375, file: !375, line: 1080, type: !4176, scopeLine: 1081, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4178)
!4176 = !DISubroutineType(types: !4177)
!4177 = !{!946, !7}
!4178 = !{!4179}
!4179 = !DILocalVariable(name: "cpu", arg: 1, scope: !4175, file: !375, line: 1080, type: !7)
!4180 = !DILocation(line: 1080, column: 44, scope: !4175)
!4181 = !DILocation(line: 1082, column: 26, scope: !4175)
!4182 = !DILocation(line: 1082, column: 9, scope: !4175)
!4183 = !DILocation(line: 1082, column: 2, scope: !4175)
!4184 = distinct !DISubprogram(name: "arch_static_branch", scope: !4185, file: !4185, line: 25, type: !4186, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4188)
!4185 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!4186 = !DISubroutineType(types: !4187)
!4187 = !{!946, !4151, !946}
!4188 = !{!4189, !4190, !4191}
!4189 = !DILocalVariable(name: "key", arg: 1, scope: !4184, file: !4185, line: 25, type: !4151)
!4190 = !DILocalVariable(name: "branch", arg: 2, scope: !4184, file: !4185, line: 25, type: !946)
!4191 = !DILabel(scope: !4184, name: "l_yes", file: !4185, line: 33)
!4192 = !DILocation(line: 25, column: 67, scope: !4184)
!4193 = !DILocation(line: 25, column: 77, scope: !4184)
!4194 = !DILocation(line: 30, column: 13, scope: !4184)
!4195 = !DILocation(line: 30, column: 28, scope: !4184)
!4196 = !DILocation(line: 30, column: 26, scope: !4184)
!4197 = !DILocation(line: 27, column: 2, scope: !4184)
!4198 = !{i64 1525242, i64 1525286, i64 2149009969, i64 2149009990, i64 2149010016, i64 2149010049, i64 2149010083, i64 2149010107}
!4199 = !DILocation(line: 32, column: 2, scope: !4184)
!4200 = !DILocation(line: 33, column: 1, scope: !4184)
!4201 = !DILocation(line: 34, column: 2, scope: !4184)
!4202 = !DILocation(line: 35, column: 1, scope: !4184)
!4203 = distinct !DISubprogram(name: "cpumask_test_cpu", scope: !375, file: !375, line: 502, type: !4204, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4206)
!4204 = !DISubroutineType(types: !4205)
!4205 = !{!946, !71, !1913}
!4206 = !{!4207, !4208}
!4207 = !DILocalVariable(name: "cpu", arg: 1, scope: !4203, file: !375, line: 502, type: !71)
!4208 = !DILocalVariable(name: "cpumask", arg: 2, scope: !4203, file: !375, line: 502, type: !1913)
!4209 = !DILocation(line: 502, column: 50, scope: !4203)
!4210 = !DILocation(line: 502, column: 77, scope: !4203)
!4211 = !DILocation(line: 504, column: 9, scope: !4203)
!4212 = !DILocation(line: 504, column: 2, scope: !4203)
!4213 = distinct !DISubprogram(name: "_test_bit", scope: !4214, file: !4214, line: 139, type: !4215, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4220)
!4214 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!4215 = !DISubroutineType(types: !4216)
!4216 = !{!946, !74, !4217}
!4217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4218, size: 64)
!4218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4219)
!4219 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !74)
!4220 = !{!4221, !4222}
!4221 = !DILocalVariable(name: "nr", arg: 1, scope: !4213, file: !4214, line: 139, type: !74)
!4222 = !DILocalVariable(name: "addr", arg: 2, scope: !4213, file: !4214, line: 139, type: !4217)
!4223 = !DILocation(line: 139, column: 25, scope: !4213)
!4224 = !DILocation(line: 139, column: 59, scope: !4213)
!4225 = !DILocation(line: 141, column: 25, scope: !4213)
!4226 = !DILocation(line: 141, column: 32, scope: !4213)
!4227 = !DILocation(line: 141, column: 30, scope: !4213)
!4228 = !DILocation(line: 141, column: 2, scope: !4213)
!4229 = !DILocation(line: 142, column: 23, scope: !4213)
!4230 = !DILocation(line: 142, column: 27, scope: !4213)
!4231 = !DILocation(line: 142, column: 9, scope: !4213)
!4232 = !DILocation(line: 142, column: 2, scope: !4213)
!4233 = distinct !DISubprogram(name: "cpumask_check", scope: !375, file: !375, line: 148, type: !4234, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4236)
!4234 = !DISubroutineType(types: !4235)
!4235 = !{!7, !7}
!4236 = !{!4237}
!4237 = !DILocalVariable(name: "cpu", arg: 1, scope: !4233, file: !375, line: 148, type: !7)
!4238 = !DILocation(line: 148, column: 64, scope: !4233)
!4239 = !DILocation(line: 150, column: 20, scope: !4233)
!4240 = !DILocation(line: 150, column: 2, scope: !4233)
!4241 = !DILocation(line: 151, column: 9, scope: !4233)
!4242 = !DILocation(line: 151, column: 2, scope: !4233)
!4243 = distinct !DISubprogram(name: "arch_test_bit", scope: !4244, file: !4244, line: 237, type: !4215, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4245)
!4244 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!4245 = !{!4246, !4247}
!4246 = !DILocalVariable(name: "nr", arg: 1, scope: !4243, file: !4244, line: 237, type: !74)
!4247 = !DILocalVariable(name: "addr", arg: 2, scope: !4243, file: !4244, line: 237, type: !4217)
!4248 = !DILocation(line: 237, column: 29, scope: !4243)
!4249 = !DILocation(line: 237, column: 63, scope: !4243)
!4250 = !DILocation(line: 239, column: 30, scope: !4243)
!4251 = !DILocation(line: 239, column: 9, scope: !4243)
!4252 = !DILocation(line: 239, column: 54, scope: !4243)
!4253 = !DILocation(line: 239, column: 58, scope: !4243)
!4254 = !DILocation(line: 239, column: 36, scope: !4243)
!4255 = !DILocation(line: 240, column: 26, scope: !4243)
!4256 = !DILocation(line: 240, column: 30, scope: !4243)
!4257 = !DILocation(line: 240, column: 8, scope: !4243)
!4258 = !DILocation(line: 239, column: 2, scope: !4243)
!4259 = distinct !DISubprogram(name: "constant_test_bit", scope: !4244, file: !4244, line: 204, type: !4260, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4262)
!4260 = !DISubroutineType(types: !4261)
!4261 = !{!946, !595, !4217}
!4262 = !{!4263, !4264}
!4263 = !DILocalVariable(name: "nr", arg: 1, scope: !4259, file: !4244, line: 204, type: !595)
!4264 = !DILocalVariable(name: "addr", arg: 2, scope: !4259, file: !4244, line: 204, type: !4217)
!4265 = !DILocation(line: 204, column: 52, scope: !4259)
!4266 = !DILocation(line: 204, column: 86, scope: !4259)
!4267 = !DILocation(line: 206, column: 19, scope: !4259)
!4268 = !DILocation(line: 206, column: 22, scope: !4259)
!4269 = !DILocation(line: 206, column: 15, scope: !4259)
!4270 = !DILocation(line: 207, column: 4, scope: !4259)
!4271 = !DILocation(line: 207, column: 9, scope: !4259)
!4272 = !DILocation(line: 207, column: 12, scope: !4259)
!4273 = !DILocation(line: 206, column: 44, scope: !4259)
!4274 = !DILocation(line: 207, column: 37, scope: !4259)
!4275 = !DILocation(line: 206, column: 2, scope: !4259)
!4276 = distinct !DISubprogram(name: "variable_test_bit", scope: !4244, file: !4244, line: 224, type: !4260, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4277)
!4277 = !{!4278, !4279, !4280}
!4278 = !DILocalVariable(name: "nr", arg: 1, scope: !4276, file: !4244, line: 224, type: !595)
!4279 = !DILocalVariable(name: "addr", arg: 2, scope: !4276, file: !4244, line: 224, type: !4217)
!4280 = !DILocalVariable(name: "oldbit", scope: !4276, file: !4244, line: 226, type: !946)
!4281 = !DILocation(line: 224, column: 52, scope: !4276)
!4282 = !DILocation(line: 224, column: 86, scope: !4276)
!4283 = !DILocation(line: 226, column: 2, scope: !4276)
!4284 = !DILocation(line: 226, column: 7, scope: !4276)
!4285 = !DILocation(line: 231, column: 33, scope: !4276)
!4286 = !DILocation(line: 231, column: 46, scope: !4276)
!4287 = !DILocation(line: 228, column: 2, scope: !4276)
!4288 = !{i64 2147845005, i64 2147845079}
!4289 = !DILocation(line: 233, column: 9, scope: !4276)
!4290 = !DILocation(line: 234, column: 1, scope: !4276)
!4291 = !DILocation(line: 233, column: 2, scope: !4276)
!4292 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !375, file: !375, line: 140, type: !4293, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4295)
!4293 = !DISubroutineType(types: !4294)
!4294 = !{null, !7, !7}
!4295 = !{!4296, !4297}
!4296 = !DILocalVariable(name: "cpu", arg: 1, scope: !4292, file: !375, line: 140, type: !7)
!4297 = !DILocalVariable(name: "bits", arg: 2, scope: !4292, file: !375, line: 140, type: !7)
!4298 = !DILocation(line: 140, column: 60, scope: !4292)
!4299 = !DILocation(line: 140, column: 78, scope: !4292)
!4300 = !DILocation(line: 145, column: 1, scope: !4292)
!4301 = distinct !DISubprogram(name: "signal_pending", scope: !1078, file: !1078, line: 392, type: !4302, scopeLine: 393, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4304)
!4302 = !DISubroutineType(types: !4303)
!4303 = !{!71, !85}
!4304 = !{!4305}
!4305 = !DILocalVariable(name: "p", arg: 1, scope: !4301, file: !1078, line: 392, type: !85)
!4306 = !DILocation(line: 392, column: 54, scope: !4301)
!4307 = !DILocation(line: 399, column: 6, scope: !4308)
!4308 = distinct !DILexicalBlock(scope: !4301, file: !1078, line: 399, column: 6)
!4309 = !DILocation(line: 399, column: 6, scope: !4301)
!4310 = !DILocation(line: 400, column: 3, scope: !4308)
!4311 = !DILocation(line: 401, column: 25, scope: !4301)
!4312 = !DILocation(line: 401, column: 9, scope: !4301)
!4313 = !DILocation(line: 401, column: 2, scope: !4301)
!4314 = !DILocation(line: 402, column: 1, scope: !4301)
!4315 = distinct !DISubprogram(name: "__fatal_signal_pending", scope: !1078, file: !1078, line: 404, type: !4302, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4316)
!4316 = !{!4317}
!4317 = !DILocalVariable(name: "p", arg: 1, scope: !4315, file: !1078, line: 404, type: !85)
!4318 = !DILocation(line: 404, column: 62, scope: !4315)
!4319 = !DILocation(line: 406, column: 9, scope: !4315)
!4320 = !DILocation(line: 406, column: 2, scope: !4315)
!4321 = distinct !DISubprogram(name: "test_tsk_thread_flag", scope: !87, file: !87, line: 2066, type: !4322, scopeLine: 2067, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4324)
!4322 = !DISubroutineType(types: !4323)
!4323 = !{!71, !85, !71}
!4324 = !{!4325, !4326}
!4325 = !DILocalVariable(name: "tsk", arg: 1, scope: !4321, file: !87, line: 2066, type: !85)
!4326 = !DILocalVariable(name: "flag", arg: 2, scope: !4321, file: !87, line: 2066, type: !71)
!4327 = !DILocation(line: 2066, column: 60, scope: !4321)
!4328 = !DILocation(line: 2066, column: 69, scope: !4321)
!4329 = !DILocation(line: 2068, column: 29, scope: !4321)
!4330 = !DILocation(line: 2068, column: 52, scope: !4321)
!4331 = !DILocation(line: 2068, column: 9, scope: !4321)
!4332 = !DILocation(line: 2068, column: 2, scope: !4321)
!4333 = distinct !DISubprogram(name: "task_sigpending", scope: !1078, file: !1078, line: 387, type: !4302, scopeLine: 388, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4334)
!4334 = !{!4335}
!4335 = !DILocalVariable(name: "p", arg: 1, scope: !4333, file: !1078, line: 387, type: !85)
!4336 = !DILocation(line: 387, column: 55, scope: !4333)
!4337 = !DILocation(line: 389, column: 9, scope: !4333)
!4338 = !DILocation(line: 389, column: 2, scope: !4333)
!4339 = distinct !DISubprogram(name: "test_ti_thread_flag", scope: !4340, file: !4340, line: 116, type: !4341, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4343)
!4340 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!4341 = !DISubroutineType(types: !4342)
!4342 = !{!71, !1919, !71}
!4343 = !{!4344, !4345}
!4344 = !DILocalVariable(name: "ti", arg: 1, scope: !4339, file: !4340, line: 116, type: !1919)
!4345 = !DILocalVariable(name: "flag", arg: 2, scope: !4339, file: !4340, line: 116, type: !71)
!4346 = !DILocation(line: 116, column: 59, scope: !4339)
!4347 = !DILocation(line: 116, column: 67, scope: !4339)
!4348 = !DILocation(line: 118, column: 9, scope: !4339)
!4349 = !DILocation(line: 118, column: 2, scope: !4339)
!4350 = distinct !DISubprogram(name: "const_test_bit", scope: !4351, file: !4351, line: 166, type: !4215, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4352)
!4351 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!4352 = !{!4353, !4354, !4355, !4356, !4357}
!4353 = !DILocalVariable(name: "nr", arg: 1, scope: !4350, file: !4351, line: 166, type: !74)
!4354 = !DILocalVariable(name: "addr", arg: 2, scope: !4350, file: !4351, line: 166, type: !4217)
!4355 = !DILocalVariable(name: "p", scope: !4350, file: !4351, line: 168, type: !1917)
!4356 = !DILocalVariable(name: "mask", scope: !4350, file: !4351, line: 169, type: !74)
!4357 = !DILocalVariable(name: "val", scope: !4350, file: !4351, line: 170, type: !74)
!4358 = !DILocation(line: 166, column: 30, scope: !4350)
!4359 = !DILocation(line: 166, column: 64, scope: !4350)
!4360 = !DILocation(line: 168, column: 2, scope: !4350)
!4361 = !DILocation(line: 168, column: 23, scope: !4350)
!4362 = !DILocation(line: 168, column: 50, scope: !4350)
!4363 = !DILocation(line: 168, column: 57, scope: !4350)
!4364 = !DILocation(line: 168, column: 55, scope: !4350)
!4365 = !DILocation(line: 169, column: 2, scope: !4350)
!4366 = !DILocation(line: 169, column: 16, scope: !4350)
!4367 = !DILocation(line: 169, column: 23, scope: !4350)
!4368 = !DILocation(line: 170, column: 2, scope: !4350)
!4369 = !DILocation(line: 170, column: 16, scope: !4350)
!4370 = !DILocation(line: 170, column: 23, scope: !4350)
!4371 = !DILocation(line: 170, column: 22, scope: !4350)
!4372 = !DILocation(line: 172, column: 12, scope: !4350)
!4373 = !DILocation(line: 172, column: 18, scope: !4350)
!4374 = !DILocation(line: 172, column: 16, scope: !4350)
!4375 = !DILocation(line: 172, column: 10, scope: !4350)
!4376 = !DILocation(line: 172, column: 9, scope: !4350)
!4377 = !DILocation(line: 173, column: 1, scope: !4350)
!4378 = !DILocation(line: 172, column: 2, scope: !4350)
!4379 = distinct !DISubprogram(name: "sigismember", scope: !4380, file: !4380, line: 82, type: !4381, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4384)
!4380 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!4381 = !DISubroutineType(types: !4382)
!4382 = !{!71, !4383, !71}
!4383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!4384 = !{!4385, !4386, !4387}
!4385 = !DILocalVariable(name: "set", arg: 1, scope: !4379, file: !4380, line: 82, type: !4383)
!4386 = !DILocalVariable(name: "_sig", arg: 2, scope: !4379, file: !4380, line: 82, type: !71)
!4387 = !DILocalVariable(name: "sig", scope: !4379, file: !4380, line: 84, type: !74)
!4388 = !DILocation(line: 82, column: 41, scope: !4379)
!4389 = !DILocation(line: 82, column: 50, scope: !4379)
!4390 = !DILocation(line: 84, column: 2, scope: !4379)
!4391 = !DILocation(line: 84, column: 16, scope: !4379)
!4392 = !DILocation(line: 84, column: 22, scope: !4379)
!4393 = !DILocation(line: 84, column: 27, scope: !4379)
!4394 = !DILocation(line: 86, column: 15, scope: !4395)
!4395 = distinct !DILexicalBlock(scope: !4379, file: !4380, line: 85, column: 6)
!4396 = !DILocation(line: 86, column: 20, scope: !4395)
!4397 = !DILocation(line: 86, column: 30, scope: !4395)
!4398 = !DILocation(line: 86, column: 27, scope: !4395)
!4399 = !DILocation(line: 86, column: 12, scope: !4395)
!4400 = !DILocation(line: 86, column: 10, scope: !4395)
!4401 = !DILocation(line: 89, column: 1, scope: !4379)
!4402 = !DILocation(line: 86, column: 3, scope: !4395)
!4403 = distinct !DISubprogram(name: "wake_q_init", scope: !2753, file: !2753, line: 51, type: !3488, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4404)
!4404 = !{!4405}
!4405 = !DILocalVariable(name: "head", arg: 1, scope: !4403, file: !2753, line: 51, type: !3268)
!4406 = !DILocation(line: 51, column: 52, scope: !4403)
!4407 = !DILocation(line: 53, column: 2, scope: !4403)
!4408 = !DILocation(line: 53, column: 8, scope: !4403)
!4409 = !DILocation(line: 53, column: 14, scope: !4403)
!4410 = !DILocation(line: 54, column: 17, scope: !4403)
!4411 = !DILocation(line: 54, column: 23, scope: !4403)
!4412 = !DILocation(line: 54, column: 2, scope: !4403)
!4413 = !DILocation(line: 54, column: 8, scope: !4403)
!4414 = !DILocation(line: 54, column: 14, scope: !4403)
!4415 = !DILocation(line: 55, column: 1, scope: !4403)
!4416 = distinct !DISubprogram(name: "rwsem_del_waiter", scope: !3, file: !3, line: 386, type: !4417, scopeLine: 387, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4419)
!4417 = !DISubroutineType(types: !4418)
!4418 = !{!946, !1954, !1894}
!4419 = !{!4420, !4421}
!4420 = !DILocalVariable(name: "sem", arg: 1, scope: !4416, file: !3, line: 386, type: !1954)
!4421 = !DILocalVariable(name: "waiter", arg: 2, scope: !4416, file: !3, line: 386, type: !1894)
!4422 = !DILocation(line: 386, column: 39, scope: !4416)
!4423 = !DILocation(line: 386, column: 65, scope: !4416)
!4424 = !DILocation(line: 388, column: 2, scope: !4416)
!4425 = !DILocation(line: 388, column: 2, scope: !4426)
!4426 = distinct !DILexicalBlock(scope: !4416, file: !3, line: 388, column: 2)
!4427 = !DILocation(line: 389, column: 12, scope: !4416)
!4428 = !DILocation(line: 389, column: 20, scope: !4416)
!4429 = !DILocation(line: 389, column: 2, scope: !4416)
!4430 = !DILocation(line: 390, column: 6, scope: !4431)
!4431 = distinct !DILexicalBlock(scope: !4416, file: !3, line: 390, column: 6)
!4432 = !DILocation(line: 390, column: 6, scope: !4416)
!4433 = !DILocation(line: 391, column: 3, scope: !4431)
!4434 = !DILocation(line: 393, column: 63, scope: !4416)
!4435 = !DILocation(line: 393, column: 68, scope: !4416)
!4436 = !DILocation(line: 393, column: 2, scope: !4416)
!4437 = !DILocation(line: 394, column: 2, scope: !4416)
!4438 = !DILocation(line: 395, column: 1, scope: !4416)
!4439 = distinct !DISubprogram(name: "list_del", scope: !2132, file: !2132, line: 227, type: !2133, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4440)
!4440 = !{!4441}
!4441 = !DILocalVariable(name: "entry", arg: 1, scope: !4439, file: !2132, line: 227, type: !63)
!4442 = !DILocation(line: 227, column: 47, scope: !4439)
!4443 = !DILocation(line: 229, column: 19, scope: !4439)
!4444 = !DILocation(line: 229, column: 2, scope: !4439)
!4445 = !DILocation(line: 230, column: 2, scope: !4439)
!4446 = !DILocation(line: 230, column: 9, scope: !4439)
!4447 = !DILocation(line: 230, column: 14, scope: !4439)
!4448 = !DILocation(line: 231, column: 2, scope: !4439)
!4449 = !DILocation(line: 231, column: 9, scope: !4439)
!4450 = !DILocation(line: 231, column: 14, scope: !4439)
!4451 = !DILocation(line: 232, column: 1, scope: !4439)
!4452 = distinct !DISubprogram(name: "atomic_long_try_cmpxchg_acquire", scope: !2116, file: !2116, line: 4420, type: !3093, scopeLine: 4421, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4453)
!4453 = !{!4454, !4455, !4456}
!4454 = !DILocalVariable(name: "v", arg: 1, scope: !4452, file: !2116, line: 4420, type: !2119)
!4455 = !DILocalVariable(name: "old", arg: 2, scope: !4452, file: !2116, line: 4420, type: !2690)
!4456 = !DILocalVariable(name: "new", arg: 3, scope: !4452, file: !2116, line: 4420, type: !595)
!4457 = !DILocation(line: 4420, column: 48, scope: !4452)
!4458 = !DILocation(line: 4420, column: 57, scope: !4452)
!4459 = !DILocation(line: 4420, column: 67, scope: !4452)
!4460 = !DILocation(line: 4422, column: 31, scope: !4452)
!4461 = !DILocation(line: 4422, column: 2, scope: !4452)
!4462 = !DILocation(line: 4423, column: 31, scope: !4452)
!4463 = !DILocation(line: 4423, column: 2, scope: !4452)
!4464 = !DILocation(line: 4424, column: 45, scope: !4452)
!4465 = !DILocation(line: 4424, column: 48, scope: !4452)
!4466 = !DILocation(line: 4424, column: 53, scope: !4452)
!4467 = !DILocation(line: 4424, column: 9, scope: !4452)
!4468 = !DILocation(line: 4424, column: 2, scope: !4452)
!4469 = distinct !DISubprogram(name: "raw_atomic_long_try_cmpxchg_acquire", scope: !492, file: !492, line: 1473, type: !3093, scopeLine: 1474, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4470)
!4470 = !{!4471, !4472, !4473}
!4471 = !DILocalVariable(name: "v", arg: 1, scope: !4469, file: !492, line: 1473, type: !2119)
!4472 = !DILocalVariable(name: "old", arg: 2, scope: !4469, file: !492, line: 1473, type: !2690)
!4473 = !DILocalVariable(name: "new", arg: 3, scope: !4469, file: !492, line: 1473, type: !595)
!4474 = !DILocation(line: 1473, column: 52, scope: !4469)
!4475 = !DILocation(line: 1473, column: 61, scope: !4469)
!4476 = !DILocation(line: 1473, column: 71, scope: !4469)
!4477 = !DILocation(line: 1476, column: 42, scope: !4469)
!4478 = !DILocation(line: 1476, column: 52, scope: !4469)
!4479 = !DILocation(line: 1476, column: 57, scope: !4469)
!4480 = !DILocation(line: 1476, column: 9, scope: !4469)
!4481 = !DILocation(line: 1476, column: 2, scope: !4469)
!4482 = distinct !DISubprogram(name: "raw_atomic64_try_cmpxchg_acquire", scope: !2562, file: !2562, line: 4254, type: !3170, scopeLine: 4255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4483)
!4483 = !{!4484, !4485, !4486}
!4484 = !DILocalVariable(name: "v", arg: 1, scope: !4482, file: !2562, line: 4254, type: !2565)
!4485 = !DILocalVariable(name: "old", arg: 2, scope: !4482, file: !2562, line: 4254, type: !78)
!4486 = !DILocalVariable(name: "new", arg: 3, scope: !4482, file: !2562, line: 4254, type: !56)
!4487 = !DILocation(line: 4254, column: 46, scope: !4482)
!4488 = !DILocation(line: 4254, column: 54, scope: !4482)
!4489 = !DILocation(line: 4254, column: 63, scope: !4482)
!4490 = !DILocation(line: 4263, column: 35, scope: !4482)
!4491 = !DILocation(line: 4263, column: 38, scope: !4482)
!4492 = !DILocation(line: 4263, column: 43, scope: !4482)
!4493 = !DILocation(line: 4263, column: 9, scope: !4482)
!4494 = !DILocation(line: 4263, column: 2, scope: !4482)
!4495 = !DILocation(line: 1300, column: 69, scope: !2045)
!4496 = !DILocation(line: 1300, column: 78, scope: !2045)
!4497 = !DILocation(line: 1302, column: 2, scope: !2045)
!4498 = !DILocation(line: 1302, column: 6, scope: !2045)
!4499 = !DILocation(line: 1304, column: 2, scope: !2045)
!4500 = !DILocation(line: 1304, column: 2, scope: !4501)
!4501 = distinct !DILexicalBlock(scope: !2045, file: !3, line: 1304, column: 2)
!4502 = !{i64 2153587900}
!4503 = !DILocation(line: 1305, column: 6, scope: !4504)
!4504 = distinct !DILexicalBlock(scope: !2045, file: !3, line: 1305, column: 6)
!4505 = !DILocation(line: 1305, column: 6, scope: !2045)
!4506 = !DILocation(line: 1306, column: 40, scope: !4507)
!4507 = distinct !DILexicalBlock(scope: !4508, file: !3, line: 1306, column: 7)
!4508 = distinct !DILexicalBlock(scope: !4504, file: !3, line: 1305, column: 43)
!4509 = !DILocation(line: 1306, column: 45, scope: !4507)
!4510 = !DILocation(line: 1306, column: 14, scope: !4507)
!4511 = !DILocation(line: 1306, column: 7, scope: !4507)
!4512 = !DILocation(line: 1306, column: 7, scope: !4508)
!4513 = !DILocation(line: 1307, column: 8, scope: !4507)
!4514 = !DILocation(line: 1307, column: 4, scope: !4507)
!4515 = !DILocation(line: 1308, column: 2, scope: !4508)
!4516 = !DILocation(line: 1309, column: 2, scope: !2045)
!4517 = !DILocation(line: 1309, column: 2, scope: !4518)
!4518 = distinct !DILexicalBlock(scope: !2045, file: !3, line: 1309, column: 2)
!4519 = !{i64 2153588101}
!4520 = !DILocation(line: 1309, column: 2, scope: !4521)
!4521 = distinct !DILexicalBlock(scope: !4518, file: !3, line: 1309, column: 2)
!4522 = !DILocation(line: 1309, column: 2, scope: !4523)
!4523 = distinct !DILexicalBlock(scope: !4521, file: !3, line: 1309, column: 2)
!4524 = !{i64 2153588283}
!4525 = !DILocation(line: 1310, column: 9, scope: !2045)
!4526 = !DILocation(line: 1311, column: 1, scope: !2045)
!4527 = !DILocation(line: 1310, column: 2, scope: !2045)
!4528 = distinct !DISubprogram(name: "rwsem_write_trylock", scope: !3, file: !3, line: 256, type: !4529, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4531)
!4529 = !DISubroutineType(types: !4530)
!4530 = !{!946, !1954}
!4531 = !{!4532, !4533}
!4532 = !DILocalVariable(name: "sem", arg: 1, scope: !4528, file: !3, line: 256, type: !1954)
!4533 = !DILocalVariable(name: "tmp", scope: !4528, file: !3, line: 258, type: !595)
!4534 = !DILocation(line: 256, column: 61, scope: !4528)
!4535 = !DILocation(line: 258, column: 2, scope: !4528)
!4536 = !DILocation(line: 258, column: 7, scope: !4528)
!4537 = !DILocation(line: 260, column: 39, scope: !4538)
!4538 = distinct !DILexicalBlock(scope: !4528, file: !3, line: 260, column: 6)
!4539 = !DILocation(line: 260, column: 44, scope: !4538)
!4540 = !DILocation(line: 260, column: 6, scope: !4538)
!4541 = !DILocation(line: 260, column: 6, scope: !4528)
!4542 = !DILocation(line: 261, column: 19, scope: !4543)
!4543 = distinct !DILexicalBlock(scope: !4538, file: !3, line: 260, column: 79)
!4544 = !DILocation(line: 261, column: 3, scope: !4543)
!4545 = !DILocation(line: 262, column: 3, scope: !4543)
!4546 = !DILocation(line: 265, column: 2, scope: !4528)
!4547 = !DILocation(line: 266, column: 1, scope: !4528)
!4548 = distinct !DISubprogram(name: "rwsem_down_write_slowpath", scope: !3, file: !3, line: 1107, type: !4549, scopeLine: 1108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4551)
!4549 = !DISubroutineType(types: !4550)
!4550 = !{!1954, !1954, !71}
!4551 = !{!4552, !4553, !4554, !4555, !4556, !4559, !4564, !4566, !4572, !4577, !4579, !4580}
!4552 = !DILocalVariable(name: "sem", arg: 1, scope: !4548, file: !3, line: 1107, type: !1954)
!4553 = !DILocalVariable(name: "state", arg: 2, scope: !4548, file: !3, line: 1107, type: !71)
!4554 = !DILocalVariable(name: "waiter", scope: !4548, file: !3, line: 1109, type: !1895)
!4555 = !DILocalVariable(name: "wake_q", scope: !4548, file: !3, line: 1110, type: !2752)
!4556 = !DILocalVariable(name: "__mptr", scope: !4557, file: !3, line: 1131, type: !53)
!4557 = distinct !DILexicalBlock(scope: !4558, file: !3, line: 1131, column: 6)
!4558 = distinct !DILexicalBlock(scope: !4548, file: !3, line: 1131, column: 6)
!4559 = !DILocalVariable(name: "__ai_ptr", scope: !4560, file: !3, line: 1148, type: !2767)
!4560 = distinct !DILexicalBlock(scope: !4561, file: !3, line: 1148, column: 2)
!4561 = distinct !DILexicalBlock(scope: !4562, file: !3, line: 1148, column: 2)
!4562 = distinct !DILexicalBlock(scope: !4563, file: !3, line: 1148, column: 2)
!4563 = distinct !DILexicalBlock(scope: !4548, file: !3, line: 1148, column: 2)
!4564 = !DILocalVariable(name: "__ret", scope: !4565, file: !3, line: 1148, type: !7)
!4565 = distinct !DILexicalBlock(scope: !4560, file: !3, line: 1148, column: 2)
!4566 = !DILocalVariable(name: "owner_state", scope: !4567, file: !3, line: 1171, type: !46)
!4567 = distinct !DILexicalBlock(scope: !4568, file: !3, line: 1170, column: 27)
!4568 = distinct !DILexicalBlock(scope: !4569, file: !3, line: 1170, column: 7)
!4569 = distinct !DILexicalBlock(scope: !4570, file: !3, line: 1151, column: 11)
!4570 = distinct !DILexicalBlock(scope: !4571, file: !3, line: 1151, column: 2)
!4571 = distinct !DILexicalBlock(scope: !4548, file: !3, line: 1151, column: 2)
!4572 = !DILocalVariable(name: "__ai_ptr", scope: !4573, file: !3, line: 1180, type: !2767)
!4573 = distinct !DILexicalBlock(scope: !4574, file: !3, line: 1180, column: 3)
!4574 = distinct !DILexicalBlock(scope: !4575, file: !3, line: 1180, column: 3)
!4575 = distinct !DILexicalBlock(scope: !4576, file: !3, line: 1180, column: 3)
!4576 = distinct !DILexicalBlock(scope: !4569, file: !3, line: 1180, column: 3)
!4577 = !DILocalVariable(name: "__ret", scope: !4578, file: !3, line: 1180, type: !7)
!4578 = distinct !DILexicalBlock(scope: !4573, file: !3, line: 1180, column: 3)
!4579 = !DILabel(scope: !4569, name: "trylock_again", file: !3, line: 1181)
!4580 = !DILabel(scope: !4548, name: "out_nolock", file: !3, line: 1190)
!4581 = !DILocation(line: 1107, column: 48, scope: !4548)
!4582 = !DILocation(line: 1107, column: 57, scope: !4548)
!4583 = !DILocation(line: 1109, column: 2, scope: !4548)
!4584 = !DILocation(line: 1109, column: 22, scope: !4548)
!4585 = !DILocation(line: 1110, column: 2, scope: !4548)
!4586 = !DILocation(line: 1113, column: 30, scope: !4587)
!4587 = distinct !DILexicalBlock(scope: !4548, file: !3, line: 1113, column: 6)
!4588 = !DILocation(line: 1113, column: 6, scope: !4587)
!4589 = !DILocation(line: 1113, column: 35, scope: !4587)
!4590 = !DILocation(line: 1113, column: 60, scope: !4587)
!4591 = !DILocation(line: 1113, column: 38, scope: !4587)
!4592 = !DILocation(line: 1113, column: 6, scope: !4548)
!4593 = !DILocation(line: 1115, column: 10, scope: !4594)
!4594 = distinct !DILexicalBlock(scope: !4587, file: !3, line: 1113, column: 66)
!4595 = !DILocation(line: 1115, column: 3, scope: !4594)
!4596 = !DILocation(line: 1122, column: 16, scope: !4548)
!4597 = !DILocation(line: 1122, column: 9, scope: !4548)
!4598 = !DILocation(line: 1122, column: 14, scope: !4548)
!4599 = !DILocation(line: 1123, column: 9, scope: !4548)
!4600 = !DILocation(line: 1123, column: 14, scope: !4548)
!4601 = !DILocation(line: 1124, column: 19, scope: !4548)
!4602 = !DILocation(line: 1124, column: 27, scope: !4548)
!4603 = !DILocation(line: 1124, column: 9, scope: !4548)
!4604 = !DILocation(line: 1124, column: 17, scope: !4548)
!4605 = !DILocation(line: 1125, column: 9, scope: !4548)
!4606 = !DILocation(line: 1125, column: 21, scope: !4548)
!4607 = !DILocation(line: 1127, column: 2, scope: !4548)
!4608 = !DILocation(line: 1128, column: 19, scope: !4548)
!4609 = !DILocation(line: 1128, column: 2, scope: !4548)
!4610 = !DILocation(line: 1131, column: 6, scope: !4557)
!4611 = !DILocation(line: 1131, column: 6, scope: !4558)
!4612 = !DILocation(line: 1131, column: 30, scope: !4558)
!4613 = !DILocation(line: 1131, column: 6, scope: !4548)
!4614 = !DILocation(line: 1132, column: 26, scope: !4615)
!4615 = distinct !DILexicalBlock(scope: !4558, file: !3, line: 1131, column: 42)
!4616 = !DILocation(line: 1132, column: 49, scope: !4615)
!4617 = !DILocation(line: 1132, column: 54, scope: !4615)
!4618 = !DILocation(line: 1132, column: 31, scope: !4615)
!4619 = !DILocation(line: 1132, column: 3, scope: !4615)
!4620 = !DILocation(line: 1134, column: 8, scope: !4621)
!4621 = distinct !DILexicalBlock(scope: !4615, file: !3, line: 1134, column: 7)
!4622 = !DILocation(line: 1134, column: 7, scope: !4615)
!4623 = !DILocation(line: 1139, column: 4, scope: !4624)
!4624 = distinct !DILexicalBlock(scope: !4621, file: !3, line: 1134, column: 31)
!4625 = !DILocation(line: 1140, column: 4, scope: !4624)
!4626 = !DILocation(line: 1141, column: 4, scope: !4624)
!4627 = !DILocation(line: 1142, column: 3, scope: !4624)
!4628 = !DILocation(line: 1143, column: 2, scope: !4615)
!4629 = !DILocation(line: 1144, column: 39, scope: !4630)
!4630 = distinct !DILexicalBlock(scope: !4558, file: !3, line: 1143, column: 9)
!4631 = !DILocation(line: 1144, column: 44, scope: !4630)
!4632 = !DILocation(line: 1144, column: 3, scope: !4630)
!4633 = !DILocation(line: 1148, column: 2, scope: !4548)
!4634 = !DILocation(line: 1148, column: 2, scope: !4563)
!4635 = !DILocation(line: 1148, column: 2, scope: !4636)
!4636 = distinct !DILexicalBlock(scope: !4563, file: !3, line: 1148, column: 2)
!4637 = !DILocation(line: 1148, column: 2, scope: !4562)
!4638 = !DILocation(line: 1148, column: 2, scope: !4639)
!4639 = distinct !DILexicalBlock(scope: !4562, file: !3, line: 1148, column: 2)
!4640 = !DILocation(line: 1148, column: 2, scope: !4560)
!4641 = !DILocation(line: 1148, column: 2, scope: !4642)
!4642 = distinct !DILexicalBlock(scope: !4560, file: !3, line: 1148, column: 2)
!4643 = !DILocation(line: 1148, column: 2, scope: !4565)
!4644 = !{i64 2153573867}
!4645 = !DILocation(line: 1148, column: 2, scope: !4561)
!4646 = !DILocation(line: 1149, column: 25, scope: !4548)
!4647 = !DILocation(line: 1149, column: 2, scope: !4548)
!4648 = !DILocation(line: 1151, column: 2, scope: !4548)
!4649 = !DILocation(line: 1152, column: 28, scope: !4650)
!4650 = distinct !DILexicalBlock(scope: !4569, file: !3, line: 1152, column: 7)
!4651 = !DILocation(line: 1152, column: 7, scope: !4650)
!4652 = !DILocation(line: 1152, column: 7, scope: !4569)
!4653 = !DILocation(line: 1154, column: 4, scope: !4654)
!4654 = distinct !DILexicalBlock(scope: !4650, file: !3, line: 1152, column: 43)
!4655 = !DILocation(line: 1157, column: 3, scope: !4569)
!4656 = !DILocation(line: 1159, column: 28, scope: !4657)
!4657 = distinct !DILexicalBlock(scope: !4569, file: !3, line: 1159, column: 7)
!4658 = !DILocation(line: 1159, column: 35, scope: !4657)
!4659 = !DILocation(line: 1159, column: 7, scope: !4657)
!4660 = !DILocation(line: 1159, column: 7, scope: !4569)
!4661 = !DILocation(line: 1160, column: 4, scope: !4657)
!4662 = !DILocation(line: 1170, column: 14, scope: !4568)
!4663 = !DILocation(line: 1170, column: 7, scope: !4569)
!4664 = !DILocation(line: 1171, column: 4, scope: !4567)
!4665 = !DILocation(line: 1171, column: 21, scope: !4567)
!4666 = !DILocation(line: 1173, column: 38, scope: !4567)
!4667 = !DILocation(line: 1173, column: 18, scope: !4567)
!4668 = !DILocation(line: 1173, column: 16, scope: !4567)
!4669 = !DILocation(line: 1174, column: 8, scope: !4670)
!4670 = distinct !DILexicalBlock(scope: !4567, file: !3, line: 1174, column: 8)
!4671 = !DILocation(line: 1174, column: 20, scope: !4670)
!4672 = !DILocation(line: 1174, column: 8, scope: !4567)
!4673 = !DILocation(line: 1175, column: 5, scope: !4670)
!4674 = !DILocation(line: 1176, column: 3, scope: !4568)
!4675 = !DILocation(line: 1176, column: 3, scope: !4567)
!4676 = !DILocation(line: 1178, column: 3, scope: !4569)
!4677 = !DILocation(line: 1180, column: 3, scope: !4569)
!4678 = !DILocation(line: 1180, column: 3, scope: !4576)
!4679 = !DILocation(line: 1180, column: 3, scope: !4680)
!4680 = distinct !DILexicalBlock(scope: !4576, file: !3, line: 1180, column: 3)
!4681 = !DILocation(line: 1180, column: 3, scope: !4575)
!4682 = !DILocation(line: 1180, column: 3, scope: !4683)
!4683 = distinct !DILexicalBlock(scope: !4575, file: !3, line: 1180, column: 3)
!4684 = !DILocation(line: 1180, column: 3, scope: !4573)
!4685 = !DILocation(line: 1180, column: 3, scope: !4686)
!4686 = distinct !DILexicalBlock(scope: !4573, file: !3, line: 1180, column: 3)
!4687 = !DILocation(line: 1180, column: 3, scope: !4578)
!4688 = !{i64 2153575575}
!4689 = !DILocation(line: 1180, column: 3, scope: !4574)
!4690 = !DILocation(line: 1181, column: 1, scope: !4569)
!4691 = !DILocation(line: 1182, column: 3, scope: !4569)
!4692 = !DILocation(line: 1151, column: 2, scope: !4570)
!4693 = distinct !{!4693, !4694, !4695, !2293}
!4694 = !DILocation(line: 1151, column: 2, scope: !4571)
!4695 = !DILocation(line: 1183, column: 2, scope: !4571)
!4696 = !DILocation(line: 1184, column: 2, scope: !4548)
!4697 = !DILocation(line: 1184, column: 2, scope: !4698)
!4698 = distinct !DILexicalBlock(scope: !4548, file: !3, line: 1184, column: 2)
!4699 = !DILocation(line: 1184, column: 2, scope: !4700)
!4700 = distinct !DILexicalBlock(scope: !4698, file: !3, line: 1184, column: 2)
!4701 = !DILocation(line: 1184, column: 2, scope: !4702)
!4702 = distinct !DILexicalBlock(scope: !4698, file: !3, line: 1184, column: 2)
!4703 = !DILocation(line: 1184, column: 2, scope: !4704)
!4704 = distinct !DILexicalBlock(scope: !4702, file: !3, line: 1184, column: 2)
!4705 = !DILocation(line: 1184, column: 2, scope: !4706)
!4706 = distinct !DILexicalBlock(scope: !4702, file: !3, line: 1184, column: 2)
!4707 = !DILocation(line: 1185, column: 2, scope: !4548)
!4708 = !DILocation(line: 1187, column: 23, scope: !4548)
!4709 = !DILocation(line: 1187, column: 2, scope: !4548)
!4710 = !DILocation(line: 1188, column: 9, scope: !4548)
!4711 = !DILocation(line: 1188, column: 2, scope: !4548)
!4712 = !DILocation(line: 1190, column: 1, scope: !4548)
!4713 = !DILocation(line: 1191, column: 2, scope: !4548)
!4714 = !DILocation(line: 1191, column: 2, scope: !4715)
!4715 = distinct !DILexicalBlock(scope: !4548, file: !3, line: 1191, column: 2)
!4716 = !DILocation(line: 1191, column: 2, scope: !4717)
!4717 = distinct !DILexicalBlock(scope: !4715, file: !3, line: 1191, column: 2)
!4718 = !DILocation(line: 1191, column: 2, scope: !4719)
!4719 = distinct !DILexicalBlock(scope: !4715, file: !3, line: 1191, column: 2)
!4720 = !DILocation(line: 1191, column: 2, scope: !4721)
!4721 = distinct !DILexicalBlock(scope: !4719, file: !3, line: 1191, column: 2)
!4722 = !DILocation(line: 1191, column: 2, scope: !4723)
!4723 = distinct !DILexicalBlock(scope: !4719, file: !3, line: 1191, column: 2)
!4724 = !DILocation(line: 1192, column: 2, scope: !4548)
!4725 = !DILocation(line: 1193, column: 24, scope: !4548)
!4726 = !DILocation(line: 1193, column: 2, scope: !4548)
!4727 = !DILocation(line: 1195, column: 23, scope: !4548)
!4728 = !DILocation(line: 1195, column: 2, scope: !4548)
!4729 = !DILocation(line: 1196, column: 9, scope: !4548)
!4730 = !DILocation(line: 1196, column: 2, scope: !4548)
!4731 = !DILocation(line: 1197, column: 1, scope: !4548)
!4732 = distinct !DISubprogram(name: "rwsem_set_owner", scope: !3, file: !3, line: 140, type: !2059, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4733)
!4733 = !{!4734}
!4734 = !DILocalVariable(name: "sem", arg: 1, scope: !4732, file: !3, line: 140, type: !1954)
!4735 = !DILocation(line: 140, column: 57, scope: !4732)
!4736 = !DILocation(line: 142, column: 2, scope: !4732)
!4737 = !DILocation(line: 142, column: 2, scope: !4738)
!4738 = distinct !DILexicalBlock(scope: !4732, file: !3, line: 142, column: 2)
!4739 = !DILocation(line: 143, column: 19, scope: !4732)
!4740 = !DILocation(line: 143, column: 24, scope: !4732)
!4741 = !DILocation(line: 143, column: 37, scope: !4732)
!4742 = !DILocation(line: 143, column: 31, scope: !4732)
!4743 = !DILocation(line: 143, column: 2, scope: !4732)
!4744 = !DILocation(line: 144, column: 1, scope: !4732)
!4745 = distinct !DISubprogram(name: "rwsem_can_spin_on_owner", scope: !3, file: !3, line: 705, type: !4529, scopeLine: 706, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4746)
!4746 = !{!4747, !4748, !4749, !4750}
!4747 = !DILocalVariable(name: "sem", arg: 1, scope: !4745, file: !3, line: 705, type: !1954)
!4748 = !DILocalVariable(name: "owner", scope: !4745, file: !3, line: 707, type: !85)
!4749 = !DILocalVariable(name: "flags", scope: !4745, file: !3, line: 708, type: !74)
!4750 = !DILocalVariable(name: "ret", scope: !4745, file: !3, line: 709, type: !946)
!4751 = !DILocation(line: 705, column: 65, scope: !4745)
!4752 = !DILocation(line: 707, column: 2, scope: !4745)
!4753 = !DILocation(line: 707, column: 22, scope: !4745)
!4754 = !DILocation(line: 708, column: 2, scope: !4745)
!4755 = !DILocation(line: 708, column: 16, scope: !4745)
!4756 = !DILocation(line: 709, column: 2, scope: !4745)
!4757 = !DILocation(line: 709, column: 7, scope: !4745)
!4758 = !DILocation(line: 711, column: 6, scope: !4759)
!4759 = distinct !DILexicalBlock(scope: !4745, file: !3, line: 711, column: 6)
!4760 = !DILocation(line: 711, column: 6, scope: !4745)
!4761 = !DILocation(line: 713, column: 3, scope: !4762)
!4762 = distinct !DILexicalBlock(scope: !4759, file: !3, line: 711, column: 22)
!4763 = !DILocation(line: 720, column: 28, scope: !4745)
!4764 = !DILocation(line: 720, column: 10, scope: !4745)
!4765 = !DILocation(line: 720, column: 8, scope: !4745)
!4766 = !DILocation(line: 724, column: 7, scope: !4767)
!4767 = distinct !DILexicalBlock(scope: !4745, file: !3, line: 724, column: 6)
!4768 = !DILocation(line: 724, column: 13, scope: !4767)
!4769 = !DILocation(line: 724, column: 35, scope: !4767)
!4770 = !DILocation(line: 725, column: 7, scope: !4767)
!4771 = !DILocation(line: 725, column: 13, scope: !4767)
!4772 = !DILocation(line: 725, column: 18, scope: !4767)
!4773 = !DILocation(line: 725, column: 24, scope: !4767)
!4774 = !DILocation(line: 725, column: 46, scope: !4767)
!4775 = !DILocation(line: 725, column: 63, scope: !4767)
!4776 = !DILocation(line: 725, column: 50, scope: !4767)
!4777 = !DILocation(line: 724, column: 6, scope: !4745)
!4778 = !DILocation(line: 726, column: 7, scope: !4767)
!4779 = !DILocation(line: 726, column: 3, scope: !4767)
!4780 = !DILocation(line: 729, column: 9, scope: !4745)
!4781 = !DILocation(line: 729, column: 2, scope: !4745)
!4782 = !DILocation(line: 730, column: 1, scope: !4745)
!4783 = distinct !DISubprogram(name: "rwsem_optimistic_spin", scope: !3, file: !3, line: 819, type: !4529, scopeLine: 820, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4784)
!4784 = !{!4785, !4786, !4787, !4788, !4789, !4790, !4794}
!4785 = !DILocalVariable(name: "sem", arg: 1, scope: !4783, file: !3, line: 819, type: !1954)
!4786 = !DILocalVariable(name: "taken", scope: !4783, file: !3, line: 821, type: !946)
!4787 = !DILocalVariable(name: "prev_owner_state", scope: !4783, file: !3, line: 822, type: !71)
!4788 = !DILocalVariable(name: "loop", scope: !4783, file: !3, line: 823, type: !71)
!4789 = !DILocalVariable(name: "rspin_threshold", scope: !4783, file: !3, line: 824, type: !81)
!4790 = !DILocalVariable(name: "owner_state", scope: !4791, file: !3, line: 837, type: !46)
!4791 = distinct !DILexicalBlock(scope: !4792, file: !3, line: 836, column: 11)
!4792 = distinct !DILexicalBlock(scope: !4793, file: !3, line: 836, column: 2)
!4793 = distinct !DILexicalBlock(scope: !4783, file: !3, line: 836, column: 2)
!4794 = !DILabel(scope: !4783, name: "done", file: !3, line: 932)
!4795 = !DILocation(line: 819, column: 56, scope: !4783)
!4796 = !DILocation(line: 821, column: 2, scope: !4783)
!4797 = !DILocation(line: 821, column: 7, scope: !4783)
!4798 = !DILocation(line: 822, column: 2, scope: !4783)
!4799 = !DILocation(line: 822, column: 6, scope: !4783)
!4800 = !DILocation(line: 823, column: 2, scope: !4783)
!4801 = !DILocation(line: 823, column: 6, scope: !4783)
!4802 = !DILocation(line: 824, column: 2, scope: !4783)
!4803 = !DILocation(line: 824, column: 6, scope: !4783)
!4804 = !DILocation(line: 827, column: 17, scope: !4805)
!4805 = distinct !DILexicalBlock(scope: !4783, file: !3, line: 827, column: 6)
!4806 = !DILocation(line: 827, column: 22, scope: !4805)
!4807 = !DILocation(line: 827, column: 7, scope: !4805)
!4808 = !DILocation(line: 827, column: 6, scope: !4783)
!4809 = !DILocation(line: 828, column: 3, scope: !4805)
!4810 = !DILocation(line: 836, column: 2, scope: !4783)
!4811 = !DILocation(line: 837, column: 3, scope: !4791)
!4812 = !DILocation(line: 837, column: 20, scope: !4791)
!4813 = !DILocation(line: 839, column: 37, scope: !4791)
!4814 = !DILocation(line: 839, column: 17, scope: !4791)
!4815 = !DILocation(line: 839, column: 15, scope: !4791)
!4816 = !DILocation(line: 840, column: 9, scope: !4817)
!4817 = distinct !DILexicalBlock(scope: !4791, file: !3, line: 840, column: 7)
!4818 = !DILocation(line: 840, column: 21, scope: !4817)
!4819 = !DILocation(line: 840, column: 7, scope: !4791)
!4820 = !DILocation(line: 841, column: 4, scope: !4817)
!4821 = !DILocation(line: 846, column: 41, scope: !4791)
!4822 = !DILocation(line: 846, column: 11, scope: !4791)
!4823 = !DILocation(line: 846, column: 9, scope: !4791)
!4824 = !DILocation(line: 848, column: 7, scope: !4825)
!4825 = distinct !DILexicalBlock(scope: !4791, file: !3, line: 848, column: 7)
!4826 = !DILocation(line: 848, column: 7, scope: !4791)
!4827 = !DILocation(line: 849, column: 4, scope: !4825)
!4828 = !DILocation(line: 854, column: 7, scope: !4829)
!4829 = distinct !DILexicalBlock(scope: !4791, file: !3, line: 854, column: 7)
!4830 = !DILocation(line: 854, column: 19, scope: !4829)
!4831 = !DILocation(line: 854, column: 7, scope: !4791)
!4832 = !DILocation(line: 862, column: 8, scope: !4833)
!4833 = distinct !DILexicalBlock(scope: !4834, file: !3, line: 862, column: 8)
!4834 = distinct !DILexicalBlock(scope: !4829, file: !3, line: 854, column: 36)
!4835 = !DILocation(line: 862, column: 25, scope: !4833)
!4836 = !DILocation(line: 862, column: 8, scope: !4834)
!4837 = !DILocation(line: 863, column: 27, scope: !4838)
!4838 = distinct !DILexicalBlock(scope: !4839, file: !3, line: 863, column: 9)
!4839 = distinct !DILexicalBlock(scope: !4833, file: !3, line: 862, column: 42)
!4840 = !DILocation(line: 863, column: 9, scope: !4838)
!4841 = !DILocation(line: 863, column: 9, scope: !4839)
!4842 = !DILocation(line: 864, column: 6, scope: !4838)
!4843 = !DILocation(line: 865, column: 45, scope: !4839)
!4844 = !DILocation(line: 865, column: 23, scope: !4839)
!4845 = !DILocation(line: 865, column: 21, scope: !4839)
!4846 = !DILocation(line: 866, column: 10, scope: !4839)
!4847 = !DILocation(line: 867, column: 4, scope: !4839)
!4848 = !DILocation(line: 876, column: 15, scope: !4849)
!4849 = distinct !DILexicalBlock(scope: !4833, file: !3, line: 876, column: 13)
!4850 = !DILocation(line: 876, column: 22, scope: !4849)
!4851 = !DILocation(line: 876, column: 29, scope: !4849)
!4852 = !DILocation(line: 876, column: 33, scope: !4849)
!4853 = !DILocation(line: 876, column: 49, scope: !4849)
!4854 = !DILocation(line: 876, column: 47, scope: !4849)
!4855 = !DILocation(line: 876, column: 13, scope: !4833)
!4856 = !DILocation(line: 877, column: 28, scope: !4857)
!4857 = distinct !DILexicalBlock(scope: !4849, file: !3, line: 876, column: 67)
!4858 = !DILocation(line: 877, column: 5, scope: !4857)
!4859 = !DILocation(line: 879, column: 5, scope: !4857)
!4860 = !DILocation(line: 881, column: 3, scope: !4834)
!4861 = !DILocation(line: 914, column: 7, scope: !4862)
!4862 = distinct !DILexicalBlock(scope: !4791, file: !3, line: 914, column: 7)
!4863 = !DILocation(line: 914, column: 19, scope: !4862)
!4864 = !DILocation(line: 914, column: 7, scope: !4791)
!4865 = !DILocation(line: 915, column: 8, scope: !4866)
!4866 = distinct !DILexicalBlock(scope: !4867, file: !3, line: 915, column: 8)
!4867 = distinct !DILexicalBlock(scope: !4862, file: !3, line: 914, column: 36)
!4868 = !DILocation(line: 915, column: 8, scope: !4867)
!4869 = !DILocation(line: 916, column: 5, scope: !4866)
!4870 = !DILocation(line: 917, column: 16, scope: !4871)
!4871 = distinct !DILexicalBlock(scope: !4867, file: !3, line: 917, column: 8)
!4872 = !DILocation(line: 917, column: 8, scope: !4871)
!4873 = !DILocation(line: 917, column: 25, scope: !4871)
!4874 = !DILocation(line: 918, column: 8, scope: !4871)
!4875 = !DILocation(line: 918, column: 25, scope: !4871)
!4876 = !DILocation(line: 917, column: 8, scope: !4867)
!4877 = !DILocation(line: 919, column: 5, scope: !4871)
!4878 = !DILocation(line: 920, column: 3, scope: !4867)
!4879 = !DILocation(line: 921, column: 22, scope: !4791)
!4880 = !DILocation(line: 921, column: 20, scope: !4791)
!4881 = !DILocation(line: 929, column: 3, scope: !4791)
!4882 = !DILocation(line: 930, column: 2, scope: !4792)
!4883 = !DILocation(line: 836, column: 2, scope: !4792)
!4884 = distinct !{!4884, !4885, !4886, !2293}
!4885 = !DILocation(line: 836, column: 2, scope: !4793)
!4886 = !DILocation(line: 930, column: 2, scope: !4793)
!4887 = !DILocation(line: 931, column: 14, scope: !4783)
!4888 = !DILocation(line: 931, column: 19, scope: !4783)
!4889 = !DILocation(line: 931, column: 2, scope: !4783)
!4890 = !DILocation(line: 932, column: 1, scope: !4783)
!4891 = !DILocation(line: 934, column: 9, scope: !4783)
!4892 = !DILocation(line: 935, column: 1, scope: !4783)
!4893 = !DILocation(line: 934, column: 2, scope: !4783)
!4894 = distinct !DISubprogram(name: "atomic_long_or", scope: !2116, file: !2116, line: 4060, type: !3743, scopeLine: 4061, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4895)
!4895 = !{!4896, !4897}
!4896 = !DILocalVariable(name: "i", arg: 1, scope: !4894, file: !2116, line: 4060, type: !595)
!4897 = !DILocalVariable(name: "v", arg: 2, scope: !4894, file: !2116, line: 4060, type: !2119)
!4898 = !DILocation(line: 4060, column: 21, scope: !4894)
!4899 = !DILocation(line: 4060, column: 39, scope: !4894)
!4900 = !DILocation(line: 4062, column: 31, scope: !4894)
!4901 = !DILocation(line: 4062, column: 2, scope: !4894)
!4902 = !DILocation(line: 4063, column: 21, scope: !4894)
!4903 = !DILocation(line: 4063, column: 24, scope: !4894)
!4904 = !DILocation(line: 4063, column: 2, scope: !4894)
!4905 = !DILocation(line: 4064, column: 1, scope: !4894)
!4906 = distinct !DISubprogram(name: "rwsem_try_write_lock", scope: !3, file: !3, line: 604, type: !4417, scopeLine: 606, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4907)
!4907 = !{!4908, !4909, !4910, !4911, !4913, !4914, !4915}
!4908 = !DILocalVariable(name: "sem", arg: 1, scope: !4906, file: !3, line: 604, type: !1954)
!4909 = !DILocalVariable(name: "waiter", arg: 2, scope: !4906, file: !3, line: 605, type: !1894)
!4910 = !DILocalVariable(name: "first", scope: !4906, file: !3, line: 607, type: !1894)
!4911 = !DILocalVariable(name: "__mptr", scope: !4912, file: !3, line: 607, type: !53)
!4912 = distinct !DILexicalBlock(scope: !4906, file: !3, line: 607, column: 31)
!4913 = !DILocalVariable(name: "count", scope: !4906, file: !3, line: 608, type: !595)
!4914 = !DILocalVariable(name: "new", scope: !4906, file: !3, line: 608, type: !595)
!4915 = !DILocalVariable(name: "has_handoff", scope: !4916, file: !3, line: 614, type: !946)
!4916 = distinct !DILexicalBlock(scope: !4906, file: !3, line: 613, column: 5)
!4917 = !DILocation(line: 604, column: 62, scope: !4906)
!4918 = !DILocation(line: 605, column: 27, scope: !4906)
!4919 = !DILocation(line: 607, column: 2, scope: !4906)
!4920 = !DILocation(line: 607, column: 23, scope: !4906)
!4921 = !DILocation(line: 607, column: 31, scope: !4912)
!4922 = !DILocation(line: 607, column: 31, scope: !4906)
!4923 = !DILocation(line: 608, column: 2, scope: !4906)
!4924 = !DILocation(line: 608, column: 7, scope: !4906)
!4925 = !DILocation(line: 608, column: 14, scope: !4906)
!4926 = !DILocation(line: 610, column: 2, scope: !4906)
!4927 = !DILocation(line: 610, column: 2, scope: !4928)
!4928 = distinct !DILexicalBlock(scope: !4906, file: !3, line: 610, column: 2)
!4929 = !DILocation(line: 612, column: 28, scope: !4906)
!4930 = !DILocation(line: 612, column: 33, scope: !4906)
!4931 = !DILocation(line: 612, column: 10, scope: !4906)
!4932 = !DILocation(line: 612, column: 8, scope: !4906)
!4933 = !DILocation(line: 613, column: 2, scope: !4906)
!4934 = !DILocation(line: 614, column: 3, scope: !4916)
!4935 = !DILocation(line: 614, column: 8, scope: !4916)
!4936 = !DILocation(line: 614, column: 25, scope: !4916)
!4937 = !DILocation(line: 614, column: 31, scope: !4916)
!4938 = !DILocation(line: 614, column: 23, scope: !4916)
!4939 = !DILocation(line: 614, column: 22, scope: !4916)
!4940 = !DILocation(line: 616, column: 7, scope: !4941)
!4941 = distinct !DILexicalBlock(scope: !4916, file: !3, line: 616, column: 7)
!4942 = !DILocation(line: 616, column: 7, scope: !4916)
!4943 = !DILocation(line: 622, column: 8, scope: !4944)
!4944 = distinct !DILexicalBlock(scope: !4945, file: !3, line: 622, column: 8)
!4945 = distinct !DILexicalBlock(scope: !4941, file: !3, line: 616, column: 20)
!4946 = !DILocation(line: 622, column: 15, scope: !4944)
!4947 = !DILocation(line: 622, column: 27, scope: !4944)
!4948 = !DILocation(line: 622, column: 31, scope: !4944)
!4949 = !DILocation(line: 622, column: 41, scope: !4944)
!4950 = !DILocation(line: 622, column: 38, scope: !4944)
!4951 = !DILocation(line: 622, column: 8, scope: !4945)
!4952 = !DILocation(line: 623, column: 5, scope: !4944)
!4953 = !DILocation(line: 624, column: 3, scope: !4945)
!4954 = !DILocation(line: 626, column: 9, scope: !4916)
!4955 = !DILocation(line: 626, column: 7, scope: !4916)
!4956 = !DILocation(line: 628, column: 7, scope: !4957)
!4957 = distinct !DILexicalBlock(scope: !4916, file: !3, line: 628, column: 7)
!4958 = !DILocation(line: 628, column: 13, scope: !4957)
!4959 = !DILocation(line: 628, column: 7, scope: !4916)
!4960 = !DILocation(line: 634, column: 8, scope: !4961)
!4961 = distinct !DILexicalBlock(scope: !4962, file: !3, line: 634, column: 8)
!4962 = distinct !DILexicalBlock(scope: !4957, file: !3, line: 628, column: 32)
!4963 = !DILocation(line: 634, column: 20, scope: !4961)
!4964 = !DILocation(line: 634, column: 33, scope: !4961)
!4965 = !DILocation(line: 634, column: 41, scope: !4961)
!4966 = !DILocation(line: 634, column: 25, scope: !4961)
!4967 = !DILocation(line: 634, column: 47, scope: !4961)
!4968 = !DILocation(line: 635, column: 11, scope: !4961)
!4969 = !DILocation(line: 634, column: 8, scope: !4962)
!4970 = !DILocation(line: 636, column: 5, scope: !4961)
!4971 = !DILocation(line: 638, column: 8, scope: !4962)
!4972 = !DILocation(line: 639, column: 3, scope: !4962)
!4973 = !DILocation(line: 640, column: 8, scope: !4974)
!4974 = distinct !DILexicalBlock(scope: !4957, file: !3, line: 639, column: 10)
!4975 = !DILocation(line: 641, column: 8, scope: !4974)
!4976 = !DILocation(line: 643, column: 26, scope: !4977)
!4977 = distinct !DILexicalBlock(scope: !4974, file: !3, line: 643, column: 8)
!4978 = !DILocation(line: 643, column: 31, scope: !4977)
!4979 = !DILocation(line: 643, column: 8, scope: !4977)
!4980 = !DILocation(line: 643, column: 8, scope: !4974)
!4981 = !DILocation(line: 644, column: 9, scope: !4977)
!4982 = !DILocation(line: 644, column: 5, scope: !4977)
!4983 = !DILocation(line: 646, column: 2, scope: !4906)
!4984 = !DILocation(line: 646, column: 2, scope: !4916)
!4985 = !DILocation(line: 646, column: 45, scope: !4906)
!4986 = !DILocation(line: 646, column: 50, scope: !4906)
!4987 = !DILocation(line: 646, column: 65, scope: !4906)
!4988 = !DILocation(line: 646, column: 12, scope: !4906)
!4989 = !DILocation(line: 646, column: 11, scope: !4906)
!4990 = distinct !{!4990, !4933, !4991, !2292, !2293}
!4991 = !DILocation(line: 646, column: 69, scope: !4906)
!4992 = !DILocation(line: 653, column: 6, scope: !4993)
!4993 = distinct !DILexicalBlock(scope: !4906, file: !3, line: 653, column: 6)
!4994 = !DILocation(line: 653, column: 10, scope: !4993)
!4995 = !DILocation(line: 653, column: 6, scope: !4906)
!4996 = !DILocation(line: 654, column: 3, scope: !4997)
!4997 = distinct !DILexicalBlock(scope: !4993, file: !3, line: 653, column: 32)
!4998 = !DILocation(line: 654, column: 10, scope: !4997)
!4999 = !DILocation(line: 654, column: 22, scope: !4997)
!5000 = !DILocation(line: 656, column: 3, scope: !4997)
!5001 = !DILocation(line: 663, column: 12, scope: !4906)
!5002 = !DILocation(line: 663, column: 20, scope: !4906)
!5003 = !DILocation(line: 663, column: 2, scope: !4906)
!5004 = !DILocation(line: 664, column: 18, scope: !4906)
!5005 = !DILocation(line: 664, column: 2, scope: !4906)
!5006 = !DILocation(line: 665, column: 2, scope: !4906)
!5007 = !DILocation(line: 666, column: 1, scope: !4906)
!5008 = distinct !DISubprogram(name: "rwsem_spin_on_owner", scope: !3, file: !3, line: 747, type: !5009, scopeLine: 748, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5011)
!5009 = !DISubroutineType(types: !5010)
!5010 = !{!46, !1954}
!5011 = !{!5012, !5013, !5014, !5015, !5016, !5017}
!5012 = !DILocalVariable(name: "sem", arg: 1, scope: !5008, file: !3, line: 747, type: !1954)
!5013 = !DILocalVariable(name: "new", scope: !5008, file: !3, line: 749, type: !85)
!5014 = !DILocalVariable(name: "owner", scope: !5008, file: !3, line: 749, type: !85)
!5015 = !DILocalVariable(name: "flags", scope: !5008, file: !3, line: 750, type: !74)
!5016 = !DILocalVariable(name: "new_flags", scope: !5008, file: !3, line: 750, type: !74)
!5017 = !DILocalVariable(name: "state", scope: !5008, file: !3, line: 751, type: !46)
!5018 = !DILocation(line: 747, column: 42, scope: !5008)
!5019 = !DILocation(line: 749, column: 2, scope: !5008)
!5020 = !DILocation(line: 749, column: 22, scope: !5008)
!5021 = !DILocation(line: 749, column: 28, scope: !5008)
!5022 = !DILocation(line: 750, column: 2, scope: !5008)
!5023 = !DILocation(line: 750, column: 16, scope: !5008)
!5024 = !DILocation(line: 750, column: 23, scope: !5008)
!5025 = !DILocation(line: 751, column: 2, scope: !5008)
!5026 = !DILocation(line: 751, column: 19, scope: !5008)
!5027 = !DILocation(line: 753, column: 2, scope: !5008)
!5028 = !DILocation(line: 753, column: 2, scope: !5029)
!5029 = distinct !DILexicalBlock(scope: !5008, file: !3, line: 753, column: 2)
!5030 = !DILocation(line: 755, column: 28, scope: !5008)
!5031 = !DILocation(line: 755, column: 10, scope: !5008)
!5032 = !DILocation(line: 755, column: 8, scope: !5008)
!5033 = !DILocation(line: 756, column: 28, scope: !5008)
!5034 = !DILocation(line: 756, column: 35, scope: !5008)
!5035 = !DILocation(line: 756, column: 10, scope: !5008)
!5036 = !DILocation(line: 756, column: 8, scope: !5008)
!5037 = !DILocation(line: 757, column: 6, scope: !5038)
!5038 = distinct !DILexicalBlock(scope: !5008, file: !3, line: 757, column: 6)
!5039 = !DILocation(line: 757, column: 12, scope: !5038)
!5040 = !DILocation(line: 757, column: 6, scope: !5008)
!5041 = !DILocation(line: 758, column: 10, scope: !5038)
!5042 = !DILocation(line: 758, column: 3, scope: !5038)
!5043 = !DILocation(line: 760, column: 2, scope: !5008)
!5044 = !DILocation(line: 767, column: 27, scope: !5045)
!5045 = distinct !DILexicalBlock(scope: !5046, file: !3, line: 760, column: 11)
!5046 = distinct !DILexicalBlock(scope: !5047, file: !3, line: 760, column: 2)
!5047 = distinct !DILexicalBlock(scope: !5008, file: !3, line: 760, column: 2)
!5048 = !DILocation(line: 767, column: 9, scope: !5045)
!5049 = !DILocation(line: 767, column: 7, scope: !5045)
!5050 = !DILocation(line: 768, column: 8, scope: !5051)
!5051 = distinct !DILexicalBlock(scope: !5045, file: !3, line: 768, column: 7)
!5052 = !DILocation(line: 768, column: 15, scope: !5051)
!5053 = !DILocation(line: 768, column: 12, scope: !5051)
!5054 = !DILocation(line: 768, column: 22, scope: !5051)
!5055 = !DILocation(line: 768, column: 26, scope: !5051)
!5056 = !DILocation(line: 768, column: 39, scope: !5051)
!5057 = !DILocation(line: 768, column: 36, scope: !5051)
!5058 = !DILocation(line: 768, column: 7, scope: !5045)
!5059 = !DILocation(line: 769, column: 30, scope: !5060)
!5060 = distinct !DILexicalBlock(scope: !5051, file: !3, line: 768, column: 47)
!5061 = !DILocation(line: 769, column: 35, scope: !5060)
!5062 = !DILocation(line: 769, column: 12, scope: !5060)
!5063 = !DILocation(line: 769, column: 10, scope: !5060)
!5064 = !DILocation(line: 770, column: 4, scope: !5060)
!5065 = !DILocation(line: 781, column: 3, scope: !5045)
!5066 = !{i64 2153556881}
!5067 = !DILocation(line: 783, column: 7, scope: !5068)
!5068 = distinct !DILexicalBlock(scope: !5045, file: !3, line: 783, column: 7)
!5069 = !DILocation(line: 783, column: 22, scope: !5068)
!5070 = !DILocation(line: 783, column: 39, scope: !5068)
!5071 = !DILocation(line: 783, column: 26, scope: !5068)
!5072 = !DILocation(line: 783, column: 7, scope: !5045)
!5073 = !DILocation(line: 784, column: 10, scope: !5074)
!5074 = distinct !DILexicalBlock(scope: !5068, file: !3, line: 783, column: 47)
!5075 = !DILocation(line: 785, column: 4, scope: !5074)
!5076 = !DILocation(line: 788, column: 3, scope: !5045)
!5077 = !DILocation(line: 760, column: 2, scope: !5046)
!5078 = distinct !{!5078, !5079, !5080, !2293}
!5079 = !DILocation(line: 760, column: 2, scope: !5047)
!5080 = !DILocation(line: 789, column: 2, scope: !5047)
!5081 = !DILocation(line: 791, column: 9, scope: !5008)
!5082 = !DILocation(line: 791, column: 2, scope: !5008)
!5083 = !DILocation(line: 792, column: 1, scope: !5008)
!5084 = distinct !DISubprogram(name: "need_resched", scope: !87, file: !87, line: 2260, type: !2968, scopeLine: 2261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5085 = !DILocation(line: 2262, column: 9, scope: !5084)
!5086 = !DILocation(line: 2262, column: 2, scope: !5084)
!5087 = distinct !DISubprogram(name: "rwsem_owner_flags", scope: !3, file: !3, line: 282, type: !5088, scopeLine: 283, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5090)
!5088 = !DISubroutineType(types: !5089)
!5089 = !{!85, !1954, !1915}
!5090 = !{!5091, !5092, !5093}
!5091 = !DILocalVariable(name: "sem", arg: 1, scope: !5087, file: !3, line: 282, type: !1954)
!5092 = !DILocalVariable(name: "pflags", arg: 2, scope: !5087, file: !3, line: 282, type: !1915)
!5093 = !DILocalVariable(name: "owner", scope: !5087, file: !3, line: 284, type: !74)
!5094 = !DILocation(line: 282, column: 40, scope: !5087)
!5095 = !DILocation(line: 282, column: 60, scope: !5087)
!5096 = !DILocation(line: 284, column: 2, scope: !5087)
!5097 = !DILocation(line: 284, column: 16, scope: !5087)
!5098 = !DILocation(line: 284, column: 42, scope: !5087)
!5099 = !DILocation(line: 284, column: 47, scope: !5087)
!5100 = !DILocation(line: 284, column: 24, scope: !5087)
!5101 = !DILocation(line: 286, column: 12, scope: !5087)
!5102 = !DILocation(line: 286, column: 18, scope: !5087)
!5103 = !DILocation(line: 286, column: 3, scope: !5087)
!5104 = !DILocation(line: 286, column: 10, scope: !5087)
!5105 = !DILocation(line: 287, column: 32, scope: !5087)
!5106 = !DILocation(line: 287, column: 38, scope: !5087)
!5107 = !DILocation(line: 287, column: 9, scope: !5087)
!5108 = !DILocation(line: 288, column: 1, scope: !5087)
!5109 = !DILocation(line: 287, column: 2, scope: !5087)
!5110 = distinct !DISubprogram(name: "owner_on_cpu", scope: !87, file: !87, line: 2317, type: !5111, scopeLine: 2318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5113)
!5111 = !DISubroutineType(types: !5112)
!5112 = !{!946, !85}
!5113 = !{!5114}
!5114 = !DILocalVariable(name: "owner", arg: 1, scope: !5110, file: !87, line: 2317, type: !85)
!5115 = !DILocation(line: 2317, column: 53, scope: !5110)
!5116 = !DILocation(line: 2323, column: 9, scope: !5117)
!5117 = distinct !DILexicalBlock(scope: !5110, file: !87, line: 2323, column: 9)
!5118 = !DILocation(line: 2323, column: 9, scope: !5119)
!5119 = distinct !DILexicalBlock(scope: !5117, file: !87, line: 2323, column: 9)
!5120 = !DILocation(line: 2323, column: 9, scope: !5110)
!5121 = !DILocation(line: 2323, column: 34, scope: !5110)
!5122 = !DILocation(line: 2323, column: 65, scope: !5110)
!5123 = !DILocation(line: 2323, column: 56, scope: !5110)
!5124 = !DILocation(line: 2323, column: 38, scope: !5110)
!5125 = !DILocation(line: 2323, column: 37, scope: !5110)
!5126 = !DILocation(line: 0, scope: !5110)
!5127 = !DILocation(line: 2323, column: 2, scope: !5110)
!5128 = distinct !DISubprogram(name: "tif_need_resched", scope: !4340, file: !4340, line: 182, type: !2968, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5129 = !DILocation(line: 185, column: 28, scope: !5128)
!5130 = !DILocation(line: 185, column: 51, scope: !5128)
!5131 = !DILocation(line: 184, column: 9, scope: !5128)
!5132 = !DILocation(line: 184, column: 2, scope: !5128)
!5133 = distinct !DISubprogram(name: "vcpu_is_preempted", scope: !87, file: !87, line: 2303, type: !5134, scopeLine: 2304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5136)
!5134 = !DISubroutineType(types: !5135)
!5135 = !{!946, !71}
!5136 = !{!5137}
!5137 = !DILocalVariable(name: "cpu", arg: 1, scope: !5133, file: !87, line: 2303, type: !71)
!5138 = !DILocation(line: 2303, column: 42, scope: !5133)
!5139 = !DILocation(line: 2305, column: 2, scope: !5133)
!5140 = distinct !DISubprogram(name: "task_cpu", scope: !87, file: !87, line: 2270, type: !5141, scopeLine: 2271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5145)
!5141 = !DISubroutineType(types: !5142)
!5142 = !{!7, !5143}
!5143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5144, size: 64)
!5144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!5145 = !{!5146}
!5146 = !DILocalVariable(name: "p", arg: 1, scope: !5140, file: !87, line: 2270, type: !5143)
!5147 = !DILocation(line: 2270, column: 63, scope: !5140)
!5148 = !DILocation(line: 2272, column: 9, scope: !5149)
!5149 = distinct !DILexicalBlock(scope: !5140, file: !87, line: 2272, column: 9)
!5150 = !DILocation(line: 2272, column: 9, scope: !5151)
!5151 = distinct !DILexicalBlock(scope: !5149, file: !87, line: 2272, column: 9)
!5152 = !DILocation(line: 2272, column: 2, scope: !5140)
!5153 = !DISubprogram(name: "osq_lock", scope: !507, file: !507, line: 33, type: !5154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5154 = !DISubroutineType(types: !5155)
!5155 = !{!946, !2156}
!5156 = distinct !DISubprogram(name: "rwsem_try_write_lock_unqueued", scope: !3, file: !3, line: 690, type: !4529, scopeLine: 691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5157)
!5157 = !{!5158, !5159}
!5158 = !DILocalVariable(name: "sem", arg: 1, scope: !5156, file: !3, line: 690, type: !1954)
!5159 = !DILocalVariable(name: "count", scope: !5156, file: !3, line: 692, type: !595)
!5160 = !DILocation(line: 690, column: 71, scope: !5156)
!5161 = !DILocation(line: 692, column: 2, scope: !5156)
!5162 = !DILocation(line: 692, column: 7, scope: !5156)
!5163 = !DILocation(line: 692, column: 33, scope: !5156)
!5164 = !DILocation(line: 692, column: 38, scope: !5156)
!5165 = !DILocation(line: 692, column: 15, scope: !5156)
!5166 = !DILocation(line: 694, column: 2, scope: !5156)
!5167 = !DILocation(line: 694, column: 11, scope: !5156)
!5168 = !DILocation(line: 694, column: 17, scope: !5156)
!5169 = !DILocation(line: 694, column: 9, scope: !5156)
!5170 = !DILocation(line: 695, column: 40, scope: !5171)
!5171 = distinct !DILexicalBlock(scope: !5172, file: !3, line: 695, column: 7)
!5172 = distinct !DILexicalBlock(scope: !5156, file: !3, line: 694, column: 58)
!5173 = !DILocation(line: 695, column: 45, scope: !5171)
!5174 = !DILocation(line: 696, column: 6, scope: !5171)
!5175 = !DILocation(line: 696, column: 12, scope: !5171)
!5176 = !DILocation(line: 695, column: 7, scope: !5171)
!5177 = !DILocation(line: 695, column: 7, scope: !5172)
!5178 = !DILocation(line: 697, column: 20, scope: !5179)
!5179 = distinct !DILexicalBlock(scope: !5171, file: !3, line: 696, column: 36)
!5180 = !DILocation(line: 697, column: 4, scope: !5179)
!5181 = !DILocation(line: 699, column: 4, scope: !5179)
!5182 = distinct !{!5182, !5166, !5183, !2292, !2293}
!5183 = !DILocation(line: 701, column: 2, scope: !5156)
!5184 = !DILocation(line: 702, column: 2, scope: !5156)
!5185 = !DILocation(line: 703, column: 1, scope: !5156)
!5186 = distinct !DISubprogram(name: "rwsem_rspin_threshold", scope: !3, file: !3, line: 806, type: !5187, scopeLine: 807, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5189)
!5187 = !DISubroutineType(types: !5188)
!5188 = !{!81, !1954}
!5189 = !{!5190, !5191, !5192, !5193}
!5190 = !DILocalVariable(name: "sem", arg: 1, scope: !5186, file: !3, line: 806, type: !1954)
!5191 = !DILocalVariable(name: "count", scope: !5186, file: !3, line: 808, type: !595)
!5192 = !DILocalVariable(name: "readers", scope: !5186, file: !3, line: 809, type: !71)
!5193 = !DILocalVariable(name: "delta", scope: !5186, file: !3, line: 810, type: !81)
!5194 = !DILocation(line: 806, column: 62, scope: !5186)
!5195 = !DILocation(line: 808, column: 2, scope: !5186)
!5196 = !DILocation(line: 808, column: 7, scope: !5186)
!5197 = !DILocation(line: 808, column: 33, scope: !5186)
!5198 = !DILocation(line: 808, column: 38, scope: !5186)
!5199 = !DILocation(line: 808, column: 15, scope: !5186)
!5200 = !DILocation(line: 809, column: 2, scope: !5186)
!5201 = !DILocation(line: 809, column: 6, scope: !5186)
!5202 = !DILocation(line: 809, column: 16, scope: !5186)
!5203 = !DILocation(line: 809, column: 22, scope: !5186)
!5204 = !DILocation(line: 810, column: 2, scope: !5186)
!5205 = !DILocation(line: 810, column: 6, scope: !5186)
!5206 = !DILocation(line: 812, column: 6, scope: !5207)
!5207 = distinct !DILexicalBlock(scope: !5186, file: !3, line: 812, column: 6)
!5208 = !DILocation(line: 812, column: 14, scope: !5207)
!5209 = !DILocation(line: 812, column: 6, scope: !5186)
!5210 = !DILocation(line: 813, column: 11, scope: !5207)
!5211 = !DILocation(line: 813, column: 3, scope: !5207)
!5212 = !DILocation(line: 814, column: 16, scope: !5186)
!5213 = !DILocation(line: 814, column: 14, scope: !5186)
!5214 = !DILocation(line: 814, column: 10, scope: !5186)
!5215 = !DILocation(line: 814, column: 25, scope: !5186)
!5216 = !DILocation(line: 814, column: 41, scope: !5186)
!5217 = !DILocation(line: 814, column: 8, scope: !5186)
!5218 = !DILocation(line: 816, column: 9, scope: !5186)
!5219 = !DILocation(line: 816, column: 25, scope: !5186)
!5220 = !DILocation(line: 816, column: 23, scope: !5186)
!5221 = !DILocation(line: 817, column: 1, scope: !5186)
!5222 = !DILocation(line: 816, column: 2, scope: !5186)
!5223 = !DISubprogram(name: "sched_clock", scope: !5224, file: !5224, line: 15, type: !5225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5224 = !DIFile(filename: "./include/linux/sched/clock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "820797187d326b72c061635bf384b4aa")
!5225 = !DISubroutineType(types: !5226)
!5226 = !{!81}
!5227 = distinct !DISubprogram(name: "rt_task", scope: !5228, file: !5228, line: 16, type: !4302, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5229)
!5228 = !DIFile(filename: "./include/linux/sched/rt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51b163e1cec9a3c9755ca6e171de807a")
!5229 = !{!5230}
!5230 = !DILocalVariable(name: "p", arg: 1, scope: !5227, file: !5228, line: 16, type: !85)
!5231 = !DILocation(line: 16, column: 47, scope: !5227)
!5232 = !DILocation(line: 18, column: 17, scope: !5227)
!5233 = !DILocation(line: 18, column: 20, scope: !5227)
!5234 = !DILocation(line: 18, column: 9, scope: !5227)
!5235 = !DILocation(line: 18, column: 2, scope: !5227)
!5236 = distinct !DISubprogram(name: "cpu_relax", scope: !5237, file: !5237, line: 16, type: !1246, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5237 = !DIFile(filename: "./arch/x86/include/asm/vdso/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3605265f38a0580735b11842c92ee9df")
!5238 = !DILocation(line: 18, column: 2, scope: !5236)
!5239 = !DILocation(line: 19, column: 1, scope: !5236)
!5240 = !DISubprogram(name: "osq_unlock", scope: !507, file: !507, line: 34, type: !2154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5241 = distinct !DISubprogram(name: "rt_prio", scope: !5228, file: !5228, line: 9, type: !5242, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5244)
!5242 = !DISubroutineType(types: !5243)
!5243 = !{!71, !71}
!5244 = !{!5245}
!5245 = !DILocalVariable(name: "prio", arg: 1, scope: !5241, file: !5228, line: 9, type: !71)
!5246 = !DILocation(line: 9, column: 31, scope: !5241)
!5247 = !DILocation(line: 11, column: 6, scope: !5248)
!5248 = distinct !DILexicalBlock(scope: !5241, file: !5228, line: 11, column: 6)
!5249 = !DILocation(line: 11, column: 6, scope: !5241)
!5250 = !DILocation(line: 12, column: 3, scope: !5248)
!5251 = !DILocation(line: 13, column: 2, scope: !5241)
!5252 = !DILocation(line: 14, column: 1, scope: !5241)
!5253 = distinct !DISubprogram(name: "rep_nop", scope: !5237, file: !5237, line: 11, type: !1246, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5254 = !DILocation(line: 13, column: 2, scope: !5253)
!5255 = !{i64 2101931}
!5256 = !DILocation(line: 14, column: 1, scope: !5253)
!5257 = distinct !DISubprogram(name: "raw_atomic_long_or", scope: !492, file: !492, line: 1066, type: !3743, scopeLine: 1067, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5258)
!5258 = !{!5259, !5260}
!5259 = !DILocalVariable(name: "i", arg: 1, scope: !5257, file: !492, line: 1066, type: !595)
!5260 = !DILocalVariable(name: "v", arg: 2, scope: !5257, file: !492, line: 1066, type: !2119)
!5261 = !DILocation(line: 1066, column: 25, scope: !5257)
!5262 = !DILocation(line: 1066, column: 43, scope: !5257)
!5263 = !DILocation(line: 1069, column: 18, scope: !5257)
!5264 = !DILocation(line: 1069, column: 21, scope: !5257)
!5265 = !DILocation(line: 1069, column: 2, scope: !5257)
!5266 = !DILocation(line: 1073, column: 1, scope: !5257)
!5267 = distinct !DISubprogram(name: "raw_atomic64_or", scope: !2562, file: !2562, line: 3769, type: !3826, scopeLine: 3770, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5268)
!5268 = !{!5269, !5270}
!5269 = !DILocalVariable(name: "i", arg: 1, scope: !5267, file: !2562, line: 3769, type: !56)
!5270 = !DILocalVariable(name: "v", arg: 2, scope: !5267, file: !2562, line: 3769, type: !2565)
!5271 = !DILocation(line: 3769, column: 21, scope: !5267)
!5272 = !DILocation(line: 3769, column: 36, scope: !5267)
!5273 = !DILocation(line: 3771, column: 19, scope: !5267)
!5274 = !DILocation(line: 3771, column: 22, scope: !5267)
!5275 = !DILocation(line: 3771, column: 2, scope: !5267)
!5276 = !DILocation(line: 3772, column: 1, scope: !5267)
!5277 = distinct !DISubprogram(name: "arch_atomic64_or", scope: !2576, file: !2576, line: 137, type: !3826, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5278)
!5278 = !{!5279, !5280}
!5279 = !DILocalVariable(name: "i", arg: 1, scope: !5277, file: !2576, line: 137, type: !56)
!5280 = !DILocalVariable(name: "v", arg: 2, scope: !5277, file: !2576, line: 137, type: !2565)
!5281 = !DILocation(line: 137, column: 50, scope: !5277)
!5282 = !DILocation(line: 137, column: 65, scope: !5277)
!5283 = !DILocation(line: 140, column: 12, scope: !5277)
!5284 = !DILocation(line: 140, column: 15, scope: !5277)
!5285 = !DILocation(line: 141, column: 12, scope: !5277)
!5286 = !DILocation(line: 139, column: 2, scope: !5277)
!5287 = !{i64 2148495274, i64 2148495313, i64 2148495334, i64 2148495371, i64 2148495394, i64 2148495264}
!5288 = !DILocation(line: 143, column: 1, scope: !5277)
!5289 = distinct !DISubprogram(name: "list_is_singular", scope: !2132, file: !2132, line: 449, type: !3251, scopeLine: 450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5290)
!5290 = !{!5291}
!5291 = !DILocalVariable(name: "head", arg: 1, scope: !5289, file: !2132, line: 449, type: !3253)
!5292 = !DILocation(line: 449, column: 60, scope: !5289)
!5293 = !DILocation(line: 451, column: 21, scope: !5289)
!5294 = !DILocation(line: 451, column: 10, scope: !5289)
!5295 = !DILocation(line: 451, column: 27, scope: !5289)
!5296 = !DILocation(line: 451, column: 31, scope: !5289)
!5297 = !DILocation(line: 451, column: 37, scope: !5289)
!5298 = !DILocation(line: 451, column: 45, scope: !5289)
!5299 = !DILocation(line: 451, column: 51, scope: !5289)
!5300 = !DILocation(line: 451, column: 42, scope: !5289)
!5301 = !DILocation(line: 0, scope: !5289)
!5302 = !DILocation(line: 451, column: 2, scope: !5289)
!5303 = distinct !DISubprogram(name: "rwsem_owner_state", scope: !3, file: !3, line: 735, type: !5304, scopeLine: 736, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5306)
!5304 = !DISubroutineType(types: !5305)
!5305 = !{!46, !85, !74}
!5306 = !{!5307, !5308}
!5307 = !DILocalVariable(name: "owner", arg: 1, scope: !5303, file: !3, line: 735, type: !85)
!5308 = !DILocalVariable(name: "flags", arg: 2, scope: !5303, file: !3, line: 735, type: !74)
!5309 = !DILocation(line: 735, column: 39, scope: !5303)
!5310 = !DILocation(line: 735, column: 60, scope: !5303)
!5311 = !DILocation(line: 737, column: 6, scope: !5312)
!5312 = distinct !DILexicalBlock(scope: !5303, file: !3, line: 737, column: 6)
!5313 = !DILocation(line: 737, column: 12, scope: !5312)
!5314 = !DILocation(line: 737, column: 6, scope: !5303)
!5315 = !DILocation(line: 738, column: 3, scope: !5312)
!5316 = !DILocation(line: 740, column: 6, scope: !5317)
!5317 = distinct !DILexicalBlock(scope: !5303, file: !3, line: 740, column: 6)
!5318 = !DILocation(line: 740, column: 12, scope: !5317)
!5319 = !DILocation(line: 740, column: 6, scope: !5303)
!5320 = !DILocation(line: 741, column: 3, scope: !5317)
!5321 = !DILocation(line: 743, column: 9, scope: !5303)
!5322 = !DILocation(line: 743, column: 2, scope: !5303)
!5323 = !DILocation(line: 744, column: 1, scope: !5303)
!5324 = distinct !DISubprogram(name: "rwsem_clear_reader_owned", scope: !3, file: !3, line: 219, type: !2059, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5325)
!5325 = !{!5326}
!5326 = !DILocalVariable(name: "sem", arg: 1, scope: !5324, file: !3, line: 219, type: !1954)
!5327 = !DILocation(line: 219, column: 66, scope: !5324)
!5328 = !DILocation(line: 221, column: 1, scope: !5324)
!5329 = distinct !DISubprogram(name: "atomic_long_add_return_release", scope: !2116, file: !2116, line: 3285, type: !2979, scopeLine: 3286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5330)
!5330 = !{!5331, !5332}
!5331 = !DILocalVariable(name: "i", arg: 1, scope: !5329, file: !2116, line: 3285, type: !595)
!5332 = !DILocalVariable(name: "v", arg: 2, scope: !5329, file: !2116, line: 3285, type: !2119)
!5333 = !DILocation(line: 3285, column: 37, scope: !5329)
!5334 = !DILocation(line: 3285, column: 55, scope: !5329)
!5335 = !DILocation(line: 3287, column: 2, scope: !5329)
!5336 = !DILocation(line: 3287, column: 2, scope: !5337)
!5337 = distinct !DILexicalBlock(scope: !5329, file: !2116, line: 3287, column: 2)
!5338 = !DILocation(line: 3288, column: 31, scope: !5329)
!5339 = !DILocation(line: 3288, column: 2, scope: !5329)
!5340 = !DILocation(line: 3289, column: 44, scope: !5329)
!5341 = !DILocation(line: 3289, column: 47, scope: !5329)
!5342 = !DILocation(line: 3289, column: 9, scope: !5329)
!5343 = !DILocation(line: 3289, column: 2, scope: !5329)
!5344 = distinct !DISubprogram(name: "rwsem_wake", scope: !3, file: !3, line: 1203, type: !5345, scopeLine: 1204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5347)
!5345 = !DISubroutineType(types: !5346)
!5346 = !{!1954, !1954}
!5347 = !{!5348, !5349, !5350, !5351, !5354, !5355, !5358}
!5348 = !DILocalVariable(name: "sem", arg: 1, scope: !5344, file: !3, line: 1203, type: !1954)
!5349 = !DILocalVariable(name: "flags", scope: !5344, file: !3, line: 1205, type: !74)
!5350 = !DILocalVariable(name: "wake_q", scope: !5344, file: !3, line: 1206, type: !2752)
!5351 = !DILocalVariable(name: "__dummy", scope: !5352, file: !3, line: 1208, type: !74)
!5352 = distinct !DILexicalBlock(scope: !5353, file: !3, line: 1208, column: 2)
!5353 = distinct !DILexicalBlock(scope: !5344, file: !3, line: 1208, column: 2)
!5354 = !DILocalVariable(name: "__dummy2", scope: !5352, file: !3, line: 1208, type: !74)
!5355 = !DILocalVariable(name: "__dummy", scope: !5356, file: !3, line: 1213, type: !74)
!5356 = distinct !DILexicalBlock(scope: !5357, file: !3, line: 1213, column: 2)
!5357 = distinct !DILexicalBlock(scope: !5344, file: !3, line: 1213, column: 2)
!5358 = !DILocalVariable(name: "__dummy2", scope: !5356, file: !3, line: 1213, type: !74)
!5359 = !DILocation(line: 1203, column: 61, scope: !5344)
!5360 = !DILocation(line: 1205, column: 2, scope: !5344)
!5361 = !DILocation(line: 1205, column: 16, scope: !5344)
!5362 = !DILocation(line: 1206, column: 2, scope: !5344)
!5363 = !DILocation(line: 1208, column: 2, scope: !5344)
!5364 = !DILocation(line: 1208, column: 2, scope: !5352)
!5365 = !DILocation(line: 1208, column: 2, scope: !5353)
!5366 = !DILocation(line: 1210, column: 19, scope: !5367)
!5367 = distinct !DILexicalBlock(scope: !5344, file: !3, line: 1210, column: 6)
!5368 = !DILocation(line: 1210, column: 24, scope: !5367)
!5369 = !DILocation(line: 1210, column: 7, scope: !5367)
!5370 = !DILocation(line: 1210, column: 6, scope: !5344)
!5371 = !DILocation(line: 1211, column: 19, scope: !5367)
!5372 = !DILocation(line: 1211, column: 3, scope: !5367)
!5373 = !DILocation(line: 1213, column: 2, scope: !5344)
!5374 = !DILocation(line: 1213, column: 2, scope: !5356)
!5375 = !DILocation(line: 1213, column: 2, scope: !5357)
!5376 = !DILocation(line: 1214, column: 2, scope: !5344)
!5377 = !DILocation(line: 1216, column: 9, scope: !5344)
!5378 = !DILocation(line: 1217, column: 1, scope: !5344)
!5379 = !DILocation(line: 1216, column: 2, scope: !5344)
!5380 = distinct !DISubprogram(name: "raw_atomic_long_add_return_release", scope: !492, file: !492, line: 181, type: !2979, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5381)
!5381 = !{!5382, !5383}
!5382 = !DILocalVariable(name: "i", arg: 1, scope: !5380, file: !492, line: 181, type: !595)
!5383 = !DILocalVariable(name: "v", arg: 2, scope: !5380, file: !492, line: 181, type: !2119)
!5384 = !DILocation(line: 181, column: 41, scope: !5380)
!5385 = !DILocation(line: 181, column: 59, scope: !5380)
!5386 = !DILocation(line: 184, column: 41, scope: !5380)
!5387 = !DILocation(line: 184, column: 44, scope: !5380)
!5388 = !DILocation(line: 184, column: 9, scope: !5380)
!5389 = !DILocation(line: 184, column: 2, scope: !5380)
!5390 = distinct !DISubprogram(name: "raw_atomic64_add_return_release", scope: !2562, file: !2562, line: 2714, type: !3054, scopeLine: 2715, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5391)
!5391 = !{!5392, !5393}
!5392 = !DILocalVariable(name: "i", arg: 1, scope: !5390, file: !2562, line: 2714, type: !56)
!5393 = !DILocalVariable(name: "v", arg: 2, scope: !5390, file: !2562, line: 2714, type: !2565)
!5394 = !DILocation(line: 2714, column: 37, scope: !5390)
!5395 = !DILocation(line: 2714, column: 52, scope: !5390)
!5396 = !DILocation(line: 2722, column: 34, scope: !5390)
!5397 = !DILocation(line: 2722, column: 37, scope: !5390)
!5398 = !DILocation(line: 2722, column: 9, scope: !5390)
!5399 = !DILocation(line: 2722, column: 2, scope: !5390)
!5400 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !3246, file: !3246, line: 32, type: !5401, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5401 = !DISubroutineType(types: !5402)
!5402 = !{!74, !3249}
!5403 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !3246, file: !3246, line: 43, type: !5404, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5404 = !DISubroutineType(types: !5405)
!5405 = !{null, !3249, !74}
!5406 = distinct !DISubprogram(name: "rwsem_clear_owner", scope: !3, file: !3, line: 146, type: !2059, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5407)
!5407 = !{!5408}
!5408 = !DILocalVariable(name: "sem", arg: 1, scope: !5406, file: !3, line: 146, type: !1954)
!5409 = !DILocation(line: 146, column: 59, scope: !5406)
!5410 = !DILocation(line: 148, column: 2, scope: !5406)
!5411 = !DILocation(line: 148, column: 2, scope: !5412)
!5412 = distinct !DILexicalBlock(scope: !5406, file: !3, line: 148, column: 2)
!5413 = !DILocation(line: 149, column: 19, scope: !5406)
!5414 = !DILocation(line: 149, column: 24, scope: !5406)
!5415 = !DILocation(line: 149, column: 2, scope: !5406)
!5416 = !DILocation(line: 150, column: 1, scope: !5406)
!5417 = distinct !DISubprogram(name: "atomic_long_fetch_add_release", scope: !2116, file: !2116, line: 3359, type: !2979, scopeLine: 3360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5418)
!5418 = !{!5419, !5420}
!5419 = !DILocalVariable(name: "i", arg: 1, scope: !5417, file: !2116, line: 3359, type: !595)
!5420 = !DILocalVariable(name: "v", arg: 2, scope: !5417, file: !2116, line: 3359, type: !2119)
!5421 = !DILocation(line: 3359, column: 36, scope: !5417)
!5422 = !DILocation(line: 3359, column: 54, scope: !5417)
!5423 = !DILocation(line: 3361, column: 2, scope: !5417)
!5424 = !DILocation(line: 3361, column: 2, scope: !5425)
!5425 = distinct !DILexicalBlock(scope: !5417, file: !2116, line: 3361, column: 2)
!5426 = !DILocation(line: 3362, column: 31, scope: !5417)
!5427 = !DILocation(line: 3362, column: 2, scope: !5417)
!5428 = !DILocation(line: 3363, column: 43, scope: !5417)
!5429 = !DILocation(line: 3363, column: 46, scope: !5417)
!5430 = !DILocation(line: 3363, column: 9, scope: !5417)
!5431 = !DILocation(line: 3363, column: 2, scope: !5417)
!5432 = distinct !DISubprogram(name: "raw_atomic_long_fetch_add_release", scope: !492, file: !492, line: 265, type: !2979, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5433)
!5433 = !{!5434, !5435}
!5434 = !DILocalVariable(name: "i", arg: 1, scope: !5432, file: !492, line: 265, type: !595)
!5435 = !DILocalVariable(name: "v", arg: 2, scope: !5432, file: !492, line: 265, type: !2119)
!5436 = !DILocation(line: 265, column: 40, scope: !5432)
!5437 = !DILocation(line: 265, column: 58, scope: !5432)
!5438 = !DILocation(line: 268, column: 40, scope: !5432)
!5439 = !DILocation(line: 268, column: 43, scope: !5432)
!5440 = !DILocation(line: 268, column: 9, scope: !5432)
!5441 = !DILocation(line: 268, column: 2, scope: !5432)
!5442 = distinct !DISubprogram(name: "raw_atomic64_fetch_add_release", scope: !2562, file: !2562, line: 2817, type: !3054, scopeLine: 2818, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5443)
!5443 = !{!5444, !5445}
!5444 = !DILocalVariable(name: "i", arg: 1, scope: !5442, file: !2562, line: 2817, type: !56)
!5445 = !DILocalVariable(name: "v", arg: 2, scope: !5442, file: !2562, line: 2817, type: !2565)
!5446 = !DILocation(line: 2817, column: 36, scope: !5442)
!5447 = !DILocation(line: 2817, column: 51, scope: !5442)
!5448 = !DILocation(line: 2825, column: 33, scope: !5442)
!5449 = !DILocation(line: 2825, column: 36, scope: !5442)
!5450 = !DILocation(line: 2825, column: 9, scope: !5442)
!5451 = !DILocation(line: 2825, column: 2, scope: !5442)
!5452 = distinct !DISubprogram(name: "rwsem_downgrade_wake", scope: !3, file: !3, line: 1224, type: !5345, scopeLine: 1225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5453)
!5453 = !{!5454, !5455, !5456, !5457, !5460, !5461, !5464}
!5454 = !DILocalVariable(name: "sem", arg: 1, scope: !5452, file: !3, line: 1224, type: !1954)
!5455 = !DILocalVariable(name: "flags", scope: !5452, file: !3, line: 1226, type: !74)
!5456 = !DILocalVariable(name: "wake_q", scope: !5452, file: !3, line: 1227, type: !2752)
!5457 = !DILocalVariable(name: "__dummy", scope: !5458, file: !3, line: 1229, type: !74)
!5458 = distinct !DILexicalBlock(scope: !5459, file: !3, line: 1229, column: 2)
!5459 = distinct !DILexicalBlock(scope: !5452, file: !3, line: 1229, column: 2)
!5460 = !DILocalVariable(name: "__dummy2", scope: !5458, file: !3, line: 1229, type: !74)
!5461 = !DILocalVariable(name: "__dummy", scope: !5462, file: !3, line: 1234, type: !74)
!5462 = distinct !DILexicalBlock(scope: !5463, file: !3, line: 1234, column: 2)
!5463 = distinct !DILexicalBlock(scope: !5452, file: !3, line: 1234, column: 2)
!5464 = !DILocalVariable(name: "__dummy2", scope: !5462, file: !3, line: 1234, type: !74)
!5465 = !DILocation(line: 1224, column: 71, scope: !5452)
!5466 = !DILocation(line: 1226, column: 2, scope: !5452)
!5467 = !DILocation(line: 1226, column: 16, scope: !5452)
!5468 = !DILocation(line: 1227, column: 2, scope: !5452)
!5469 = !DILocation(line: 1229, column: 2, scope: !5452)
!5470 = !DILocation(line: 1229, column: 2, scope: !5458)
!5471 = !DILocation(line: 1229, column: 2, scope: !5459)
!5472 = !DILocation(line: 1231, column: 19, scope: !5473)
!5473 = distinct !DILexicalBlock(scope: !5452, file: !3, line: 1231, column: 6)
!5474 = !DILocation(line: 1231, column: 24, scope: !5473)
!5475 = !DILocation(line: 1231, column: 7, scope: !5473)
!5476 = !DILocation(line: 1231, column: 6, scope: !5452)
!5477 = !DILocation(line: 1232, column: 19, scope: !5473)
!5478 = !DILocation(line: 1232, column: 3, scope: !5473)
!5479 = !DILocation(line: 1234, column: 2, scope: !5452)
!5480 = !DILocation(line: 1234, column: 2, scope: !5462)
!5481 = !DILocation(line: 1234, column: 2, scope: !5463)
!5482 = !DILocation(line: 1235, column: 2, scope: !5452)
!5483 = !DILocation(line: 1237, column: 9, scope: !5452)
!5484 = !DILocation(line: 1238, column: 1, scope: !5452)
!5485 = !DILocation(line: 1237, column: 2, scope: !5452)
