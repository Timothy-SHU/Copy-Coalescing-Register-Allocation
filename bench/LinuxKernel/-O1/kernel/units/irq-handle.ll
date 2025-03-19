; ModuleID = 'kernel/irq/handle.c'
source_filename = "kernel/irq/handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_handle_bad_irq: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad handle_bad_irq ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_no_action: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad no_action ; .previous"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.kernel_stat = type { i64, [10 x i32] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.13 }
%union.anon.13 = type { i64 }
%struct.pcpu_hot = type { %union.anon.14 }
%union.anon.14 = type { %struct.anon.15, [16 x i8] }
%struct.anon.15 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.static_call_key = type { ptr, %union.anon.16 }
%union.anon.16 = type { i64 }
%struct.cpumask = type { [1 x i64] }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, [1 x %struct.cpumask], i64, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, %struct.hlist_node, [24 x i8] }
%struct.irq_common_data = type { i32, i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask] }
%struct.irq_data = type { i32, i32, i64, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%struct.irqaction = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, ptr, ptr, [32 x i8] }
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
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%struct.page_frag = type { ptr, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
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
%struct.tracepoint_func = type { ptr, ptr, i32 }

@__UNIQUE_ID___addressable_handle_bad_irq262 = internal global ptr @handle_bad_irq, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_no_action263 = internal global ptr @no_action, section ".discard.addressable", align 8, !dbg !179
@__handle_irq_event_percpu.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !181
@.str = private unnamed_addr constant [39 x i8] c"irq %u handler %pS enabled interrupts\0A\00", align 1, !dbg !2595
@.str.1 = private unnamed_addr constant [20 x i8] c"kernel/irq/handle.c\00", align 1, !dbg !2600
@print_irq_desc.ratelimit = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 5000, i32 5, i32 0, i32 0, i64 0, i64 0 }, align 8, !dbg !2603
@__func__.print_irq_desc = private unnamed_addr constant [15 x i8] c"print_irq_desc\00", align 1, !dbg !2622
@.str.2 = private unnamed_addr constant [55 x i8] c"irq %d, desc: %p, depth: %d, count: %d, unhandled: %d\0A\00", align 1, !dbg !2627
@.str.3 = private unnamed_addr constant [26 x i8] c"->handle_irq():  %p, %pS\0A\00", align 1, !dbg !2632
@.str.4 = private unnamed_addr constant [28 x i8] c"->irq_data.chip(): %p, %pS\0A\00", align 1, !dbg !2637
@.str.5 = private unnamed_addr constant [16 x i8] c"->action(): %p\0A\00", align 1, !dbg !2642
@.str.6 = private unnamed_addr constant [30 x i8] c"->action->handler(): %p, %pS\0A\00", align 1, !dbg !2644
@.str.7 = private unnamed_addr constant [10 x i8] c"%14s set\0A\00", align 1, !dbg !2649
@.str.8 = private unnamed_addr constant [10 x i8] c"IRQ_LEVEL\00", align 1, !dbg !2654
@.str.9 = private unnamed_addr constant [12 x i8] c"IRQ_PER_CPU\00", align 1, !dbg !2656
@.str.10 = private unnamed_addr constant [12 x i8] c"IRQ_NOPROBE\00", align 1, !dbg !2659
@.str.11 = private unnamed_addr constant [14 x i8] c"IRQ_NOREQUEST\00", align 1, !dbg !2661
@.str.12 = private unnamed_addr constant [13 x i8] c"IRQ_NOTHREAD\00", align 1, !dbg !2666
@.str.13 = private unnamed_addr constant [13 x i8] c"IRQ_NOAUTOEN\00", align 1, !dbg !2671
@.str.14 = private unnamed_addr constant [16 x i8] c"IRQS_AUTODETECT\00", align 1, !dbg !2673
@.str.15 = private unnamed_addr constant [12 x i8] c"IRQS_REPLAY\00", align 1, !dbg !2675
@.str.16 = private unnamed_addr constant [13 x i8] c"IRQS_WAITING\00", align 1, !dbg !2677
@.str.17 = private unnamed_addr constant [13 x i8] c"IRQS_PENDING\00", align 1, !dbg !2679
@.str.18 = private unnamed_addr constant [4 x i8] c"add\00", align 1, !dbg !2681
@kstat = external dso_local global %struct.kernel_stat, section ".data..percpu", align 8
@__tracepoint_irq_handler_entry = external dso_local global %struct.tracepoint, align 8
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str.19 = private unnamed_addr constant [27 x i8] c"include/trace/events/irq.h\00", align 1, !dbg !2684
@trace_irq_handler_entry.__UNIQUE_ID___addressable___SCK__tp_func_irq_handler_entry207 = internal global ptr @__SCK__tp_func_irq_handler_entry, section ".discard.addressable", align 8, !dbg !2690
@__SCK__tp_func_irq_handler_entry = external dso_local global %struct.static_call_key, align 8
@trace_irq_handler_entry.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace208 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !2719
@__SCK__preempt_schedule_notrace = external dso_local global %struct.static_call_key, align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@__tracepoint_irq_handler_exit = external dso_local global %struct.tracepoint, align 8
@trace_irq_handler_exit.__UNIQUE_ID___addressable___SCK__tp_func_irq_handler_exit215 = internal global ptr @__SCK__tp_func_irq_handler_exit, section ".discard.addressable", align 8, !dbg !2721
@__SCK__tp_func_irq_handler_exit = external dso_local global %struct.static_call_key, align 8
@trace_irq_handler_exit.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace216 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !2751
@.str.20 = private unnamed_addr constant [78 x i8] c"\014IRQ %d device %s returned IRQ_WAKE_THREAD but no thread function available.\00", align 1, !dbg !2753
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID___addressable_handle_bad_irq262, ptr @__UNIQUE_ID___addressable_no_action263, ptr @trace_irq_handler_entry.__UNIQUE_ID___addressable___SCK__tp_func_irq_handler_entry207, ptr @trace_irq_handler_entry.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace208, ptr @trace_irq_handler_exit.__UNIQUE_ID___addressable___SCK__tp_func_irq_handler_exit215, ptr @trace_irq_handler_exit.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace216], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @handle_bad_irq(ptr noundef %desc) #0 align 16 !dbg !2768 {
entry:
  %desc.addr = alloca ptr, align 8
  %irq = alloca i32, align 4
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !2770, metadata !DIExpression()), !dbg !2772
  call void @llvm.lifetime.start.p0(i64 4, ptr %irq) #12, !dbg !2773
  call void @llvm.dbg.declare(metadata ptr %irq, metadata !2771, metadata !DIExpression()), !dbg !2774
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !2775
  %call = call i32 @irq_desc_get_irq(ptr noundef %0) #13, !dbg !2776
  store i32 %call, ptr %irq, align 4, !dbg !2774
  %1 = load i32, ptr %irq, align 4, !dbg !2777
  %2 = load ptr, ptr %desc.addr, align 8, !dbg !2778
  call void @print_irq_desc(i32 noundef %1, ptr noundef %2) #13, !dbg !2779
  %3 = load ptr, ptr %desc.addr, align 8, !dbg !2780
  call void @kstat_incr_irqs_this_cpu(ptr noundef %3) #13, !dbg !2781
  %4 = load i32, ptr %irq, align 4, !dbg !2782
  call void @ack_bad_irq(i32 noundef %4) #13, !dbg !2783
  call void @llvm.lifetime.end.p0(i64 4, ptr %irq) #12, !dbg !2784
  ret void, !dbg !2784
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @irq_desc_get_irq(ptr noundef %desc) #3 align 16 !dbg !2785 {
entry:
  %desc.addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !2789, metadata !DIExpression()), !dbg !2790
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !2791
  %irq_data = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, !dbg !2792
  %irq = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 1, !dbg !2793
  %1 = load i32, ptr %irq, align 4, !dbg !2793
  ret i32 %1, !dbg !2794
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @print_irq_desc(i32 noundef %irq, ptr noundef %desc) #3 align 16 !dbg !2605 {
entry:
  %irq.addr = alloca i32, align 4
  %desc.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  %tmp9 = alloca i32, align 4
  %tmp15 = alloca i32, align 4
  %tmp22 = alloca i32, align 4
  %tmp32 = alloca i32, align 4
  %tmp41 = alloca i32, align 4
  %tmp50 = alloca i32, align 4
  %tmp59 = alloca i32, align 4
  %tmp68 = alloca i32, align 4
  %tmp77 = alloca i32, align 4
  %tmp85 = alloca i32, align 4
  %tmp94 = alloca i32, align 4
  %tmp103 = alloca i32, align 4
  %tmp112 = alloca i32, align 4
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !2610, metadata !DIExpression()), !dbg !2795
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !2611, metadata !DIExpression()), !dbg !2796
  %call = call i32 @___ratelimit(ptr noundef @print_irq_desc.ratelimit, ptr noundef @__func__.print_irq_desc) #13, !dbg !2797
  %tobool = icmp ne i32 %call, 0, !dbg !2797
  br i1 %tobool, label %if.end, label %if.then, !dbg !2799

if.then:                                          ; preds = %entry
  br label %do.end120, !dbg !2800

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !2801

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !2803

do.end:                                           ; preds = %do.body
  %0 = load i32, ptr %irq.addr, align 4, !dbg !2801
  %1 = load ptr, ptr %desc.addr, align 8, !dbg !2801
  %2 = load ptr, ptr %desc.addr, align 8, !dbg !2801
  %depth = getelementptr inbounds %struct.irq_desc, ptr %2, i32 0, i32 7, !dbg !2801
  %3 = load i32, ptr %depth, align 64, !dbg !2801
  %4 = load ptr, ptr %desc.addr, align 8, !dbg !2801
  %irq_count = getelementptr inbounds %struct.irq_desc, ptr %4, i32 0, i32 10, !dbg !2801
  %5 = load i32, ptr %irq_count, align 4, !dbg !2801
  %6 = load ptr, ptr %desc.addr, align 8, !dbg !2801
  %irqs_unhandled = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 12, !dbg !2801
  %7 = load i32, ptr %irqs_unhandled, align 8, !dbg !2801
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, i32 noundef %0, ptr noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef %7) #14, !dbg !2801
  store i32 %call1, ptr %tmp, align 4, !dbg !2803
  %8 = load i32, ptr %tmp, align 4, !dbg !2801
  br label %do.body2, !dbg !2805

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !2807

do.end3:                                          ; preds = %do.body2
  %9 = load ptr, ptr %desc.addr, align 8, !dbg !2805
  %handle_irq = getelementptr inbounds %struct.irq_desc, ptr %9, i32 0, i32 3, !dbg !2805
  %10 = load ptr, ptr %handle_irq, align 8, !dbg !2805
  %11 = load ptr, ptr %desc.addr, align 8, !dbg !2805
  %handle_irq5 = getelementptr inbounds %struct.irq_desc, ptr %11, i32 0, i32 3, !dbg !2805
  %12 = load ptr, ptr %handle_irq5, align 8, !dbg !2805
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3, ptr noundef %10, ptr noundef %12) #14, !dbg !2805
  store i32 %call6, ptr %tmp4, align 4, !dbg !2807
  %13 = load i32, ptr %tmp4, align 4, !dbg !2805
  br label %do.body7, !dbg !2809

do.body7:                                         ; preds = %do.end3
  br label %do.end8, !dbg !2811

do.end8:                                          ; preds = %do.body7
  %14 = load ptr, ptr %desc.addr, align 8, !dbg !2809
  %irq_data = getelementptr inbounds %struct.irq_desc, ptr %14, i32 0, i32 1, !dbg !2809
  %chip = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 4, !dbg !2809
  %15 = load ptr, ptr %chip, align 8, !dbg !2809
  %16 = load ptr, ptr %desc.addr, align 8, !dbg !2809
  %irq_data10 = getelementptr inbounds %struct.irq_desc, ptr %16, i32 0, i32 1, !dbg !2809
  %chip11 = getelementptr inbounds %struct.irq_data, ptr %irq_data10, i32 0, i32 4, !dbg !2809
  %17 = load ptr, ptr %chip11, align 8, !dbg !2809
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4, ptr noundef %15, ptr noundef %17) #14, !dbg !2809
  store i32 %call12, ptr %tmp9, align 4, !dbg !2811
  %18 = load i32, ptr %tmp9, align 4, !dbg !2809
  br label %do.body13, !dbg !2813

do.body13:                                        ; preds = %do.end8
  br label %do.end14, !dbg !2815

do.end14:                                         ; preds = %do.body13
  %19 = load ptr, ptr %desc.addr, align 8, !dbg !2813
  %action = getelementptr inbounds %struct.irq_desc, ptr %19, i32 0, i32 4, !dbg !2813
  %20 = load ptr, ptr %action, align 16, !dbg !2813
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5, ptr noundef %20) #14, !dbg !2813
  store i32 %call16, ptr %tmp15, align 4, !dbg !2815
  %21 = load i32, ptr %tmp15, align 4, !dbg !2813
  %22 = load ptr, ptr %desc.addr, align 8, !dbg !2817
  %action17 = getelementptr inbounds %struct.irq_desc, ptr %22, i32 0, i32 4, !dbg !2819
  %23 = load ptr, ptr %action17, align 16, !dbg !2819
  %tobool18 = icmp ne ptr %23, null, !dbg !2817
  br i1 %tobool18, label %if.then19, label %if.end27, !dbg !2820

if.then19:                                        ; preds = %do.end14
  br label %do.body20, !dbg !2821

do.body20:                                        ; preds = %if.then19
  br label %do.end21, !dbg !2824

do.end21:                                         ; preds = %do.body20
  %24 = load ptr, ptr %desc.addr, align 8, !dbg !2821
  %action23 = getelementptr inbounds %struct.irq_desc, ptr %24, i32 0, i32 4, !dbg !2821
  %25 = load ptr, ptr %action23, align 16, !dbg !2821
  %handler = getelementptr inbounds %struct.irqaction, ptr %25, i32 0, i32 0, !dbg !2821
  %26 = load ptr, ptr %handler, align 64, !dbg !2821
  %27 = load ptr, ptr %desc.addr, align 8, !dbg !2821
  %action24 = getelementptr inbounds %struct.irq_desc, ptr %27, i32 0, i32 4, !dbg !2821
  %28 = load ptr, ptr %action24, align 16, !dbg !2821
  %handler25 = getelementptr inbounds %struct.irqaction, ptr %28, i32 0, i32 0, !dbg !2821
  %29 = load ptr, ptr %handler25, align 64, !dbg !2821
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef @.str.6, ptr noundef %26, ptr noundef %29) #14, !dbg !2821
  store i32 %call26, ptr %tmp22, align 4, !dbg !2824
  %30 = load i32, ptr %tmp22, align 4, !dbg !2821
  br label %if.end27, !dbg !2826

if.end27:                                         ; preds = %do.end21, %do.end14
  %31 = load ptr, ptr %desc.addr, align 8, !dbg !2827
  %status_use_accessors = getelementptr inbounds %struct.irq_desc, ptr %31, i32 0, i32 5, !dbg !2827
  %32 = load i32, ptr %status_use_accessors, align 8, !dbg !2827
  %and = and i32 %32, 256, !dbg !2827
  %tobool28 = icmp ne i32 %and, 0, !dbg !2827
  br i1 %tobool28, label %if.then29, label %if.end34, !dbg !2829

if.then29:                                        ; preds = %if.end27
  br label %do.body30, !dbg !2830

do.body30:                                        ; preds = %if.then29
  br label %do.end31, !dbg !2832

do.end31:                                         ; preds = %do.body30
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7, ptr noundef @.str.8) #14, !dbg !2830
  store i32 %call33, ptr %tmp32, align 4, !dbg !2832
  %33 = load i32, ptr %tmp32, align 4, !dbg !2830
  br label %if.end34, !dbg !2827

if.end34:                                         ; preds = %do.end31, %if.end27
  %34 = load ptr, ptr %desc.addr, align 8, !dbg !2834
  %status_use_accessors35 = getelementptr inbounds %struct.irq_desc, ptr %34, i32 0, i32 5, !dbg !2834
  %35 = load i32, ptr %status_use_accessors35, align 8, !dbg !2834
  %and36 = and i32 %35, 512, !dbg !2834
  %tobool37 = icmp ne i32 %and36, 0, !dbg !2834
  br i1 %tobool37, label %if.then38, label %if.end43, !dbg !2836

if.then38:                                        ; preds = %if.end34
  br label %do.body39, !dbg !2837

do.body39:                                        ; preds = %if.then38
  br label %do.end40, !dbg !2839

do.end40:                                         ; preds = %do.body39
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7, ptr noundef @.str.9) #14, !dbg !2837
  store i32 %call42, ptr %tmp41, align 4, !dbg !2839
  %36 = load i32, ptr %tmp41, align 4, !dbg !2837
  br label %if.end43, !dbg !2834

if.end43:                                         ; preds = %do.end40, %if.end34
  %37 = load ptr, ptr %desc.addr, align 8, !dbg !2841
  %status_use_accessors44 = getelementptr inbounds %struct.irq_desc, ptr %37, i32 0, i32 5, !dbg !2841
  %38 = load i32, ptr %status_use_accessors44, align 8, !dbg !2841
  %and45 = and i32 %38, 1024, !dbg !2841
  %tobool46 = icmp ne i32 %and45, 0, !dbg !2841
  br i1 %tobool46, label %if.then47, label %if.end52, !dbg !2843

if.then47:                                        ; preds = %if.end43
  br label %do.body48, !dbg !2844

do.body48:                                        ; preds = %if.then47
  br label %do.end49, !dbg !2846

do.end49:                                         ; preds = %do.body48
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7, ptr noundef @.str.10) #14, !dbg !2844
  store i32 %call51, ptr %tmp50, align 4, !dbg !2846
  %39 = load i32, ptr %tmp50, align 4, !dbg !2844
  br label %if.end52, !dbg !2841

if.end52:                                         ; preds = %do.end49, %if.end43
  %40 = load ptr, ptr %desc.addr, align 8, !dbg !2848
  %status_use_accessors53 = getelementptr inbounds %struct.irq_desc, ptr %40, i32 0, i32 5, !dbg !2848
  %41 = load i32, ptr %status_use_accessors53, align 8, !dbg !2848
  %and54 = and i32 %41, 2048, !dbg !2848
  %tobool55 = icmp ne i32 %and54, 0, !dbg !2848
  br i1 %tobool55, label %if.then56, label %if.end61, !dbg !2850

if.then56:                                        ; preds = %if.end52
  br label %do.body57, !dbg !2851

do.body57:                                        ; preds = %if.then56
  br label %do.end58, !dbg !2853

do.end58:                                         ; preds = %do.body57
  %call60 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7, ptr noundef @.str.11) #14, !dbg !2851
  store i32 %call60, ptr %tmp59, align 4, !dbg !2853
  %42 = load i32, ptr %tmp59, align 4, !dbg !2851
  br label %if.end61, !dbg !2848

if.end61:                                         ; preds = %do.end58, %if.end52
  %43 = load ptr, ptr %desc.addr, align 8, !dbg !2855
  %status_use_accessors62 = getelementptr inbounds %struct.irq_desc, ptr %43, i32 0, i32 5, !dbg !2855
  %44 = load i32, ptr %status_use_accessors62, align 8, !dbg !2855
  %and63 = and i32 %44, 65536, !dbg !2855
  %tobool64 = icmp ne i32 %and63, 0, !dbg !2855
  br i1 %tobool64, label %if.then65, label %if.end70, !dbg !2857

if.then65:                                        ; preds = %if.end61
  br label %do.body66, !dbg !2858

do.body66:                                        ; preds = %if.then65
  br label %do.end67, !dbg !2860

do.end67:                                         ; preds = %do.body66
  %call69 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7, ptr noundef @.str.12) #14, !dbg !2858
  store i32 %call69, ptr %tmp68, align 4, !dbg !2860
  %45 = load i32, ptr %tmp68, align 4, !dbg !2858
  br label %if.end70, !dbg !2855

if.end70:                                         ; preds = %do.end67, %if.end61
  %46 = load ptr, ptr %desc.addr, align 8, !dbg !2862
  %status_use_accessors71 = getelementptr inbounds %struct.irq_desc, ptr %46, i32 0, i32 5, !dbg !2862
  %47 = load i32, ptr %status_use_accessors71, align 8, !dbg !2862
  %and72 = and i32 %47, 4096, !dbg !2862
  %tobool73 = icmp ne i32 %and72, 0, !dbg !2862
  br i1 %tobool73, label %if.then74, label %if.end79, !dbg !2864

if.then74:                                        ; preds = %if.end70
  br label %do.body75, !dbg !2865

do.body75:                                        ; preds = %if.then74
  br label %do.end76, !dbg !2867

do.end76:                                         ; preds = %do.body75
  %call78 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7, ptr noundef @.str.13) #14, !dbg !2865
  store i32 %call78, ptr %tmp77, align 4, !dbg !2867
  %48 = load i32, ptr %tmp77, align 4, !dbg !2865
  br label %if.end79, !dbg !2862

if.end79:                                         ; preds = %do.end76, %if.end70
  %49 = load ptr, ptr %desc.addr, align 8, !dbg !2869
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, ptr %49, i32 0, i32 6, !dbg !2869
  %50 = load i32, ptr %core_internal_state__do_not_mess_with_it, align 4, !dbg !2869
  %and80 = and i32 %50, 1, !dbg !2869
  %tobool81 = icmp ne i32 %and80, 0, !dbg !2869
  br i1 %tobool81, label %if.then82, label %if.end87, !dbg !2871

if.then82:                                        ; preds = %if.end79
  br label %do.body83, !dbg !2872

do.body83:                                        ; preds = %if.then82
  br label %do.end84, !dbg !2874

do.end84:                                         ; preds = %do.body83
  %call86 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7, ptr noundef @.str.14) #14, !dbg !2872
  store i32 %call86, ptr %tmp85, align 4, !dbg !2874
  %51 = load i32, ptr %tmp85, align 4, !dbg !2872
  br label %if.end87, !dbg !2869

if.end87:                                         ; preds = %do.end84, %if.end79
  %52 = load ptr, ptr %desc.addr, align 8, !dbg !2876
  %core_internal_state__do_not_mess_with_it88 = getelementptr inbounds %struct.irq_desc, ptr %52, i32 0, i32 6, !dbg !2876
  %53 = load i32, ptr %core_internal_state__do_not_mess_with_it88, align 4, !dbg !2876
  %and89 = and i32 %53, 64, !dbg !2876
  %tobool90 = icmp ne i32 %and89, 0, !dbg !2876
  br i1 %tobool90, label %if.then91, label %if.end96, !dbg !2878

if.then91:                                        ; preds = %if.end87
  br label %do.body92, !dbg !2879

do.body92:                                        ; preds = %if.then91
  br label %do.end93, !dbg !2881

do.end93:                                         ; preds = %do.body92
  %call95 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7, ptr noundef @.str.15) #14, !dbg !2879
  store i32 %call95, ptr %tmp94, align 4, !dbg !2881
  %54 = load i32, ptr %tmp94, align 4, !dbg !2879
  br label %if.end96, !dbg !2876

if.end96:                                         ; preds = %do.end93, %if.end87
  %55 = load ptr, ptr %desc.addr, align 8, !dbg !2883
  %core_internal_state__do_not_mess_with_it97 = getelementptr inbounds %struct.irq_desc, ptr %55, i32 0, i32 6, !dbg !2883
  %56 = load i32, ptr %core_internal_state__do_not_mess_with_it97, align 4, !dbg !2883
  %and98 = and i32 %56, 128, !dbg !2883
  %tobool99 = icmp ne i32 %and98, 0, !dbg !2883
  br i1 %tobool99, label %if.then100, label %if.end105, !dbg !2885

if.then100:                                       ; preds = %if.end96
  br label %do.body101, !dbg !2886

do.body101:                                       ; preds = %if.then100
  br label %do.end102, !dbg !2888

do.end102:                                        ; preds = %do.body101
  %call104 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7, ptr noundef @.str.16) #14, !dbg !2886
  store i32 %call104, ptr %tmp103, align 4, !dbg !2888
  %57 = load i32, ptr %tmp103, align 4, !dbg !2886
  br label %if.end105, !dbg !2883

if.end105:                                        ; preds = %do.end102, %if.end96
  %58 = load ptr, ptr %desc.addr, align 8, !dbg !2890
  %core_internal_state__do_not_mess_with_it106 = getelementptr inbounds %struct.irq_desc, ptr %58, i32 0, i32 6, !dbg !2890
  %59 = load i32, ptr %core_internal_state__do_not_mess_with_it106, align 4, !dbg !2890
  %and107 = and i32 %59, 512, !dbg !2890
  %tobool108 = icmp ne i32 %and107, 0, !dbg !2890
  br i1 %tobool108, label %if.then109, label %if.end114, !dbg !2892

if.then109:                                       ; preds = %if.end105
  br label %do.body110, !dbg !2893

do.body110:                                       ; preds = %if.then109
  br label %do.end111, !dbg !2895

do.end111:                                        ; preds = %do.body110
  %call113 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7, ptr noundef @.str.17) #14, !dbg !2893
  store i32 %call113, ptr %tmp112, align 4, !dbg !2895
  %60 = load i32, ptr %tmp112, align 4, !dbg !2893
  br label %if.end114, !dbg !2890

if.end114:                                        ; preds = %do.end111, %if.end105
  br label %do.body115, !dbg !2897

do.body115:                                       ; preds = %if.end114
  br label %do.end116, !dbg !2898

do.end116:                                        ; preds = %do.body115
  br label %do.body117, !dbg !2900

do.body117:                                       ; preds = %do.end116
  br label %do.end118, !dbg !2901

do.end118:                                        ; preds = %do.body117
  br label %do.body119, !dbg !2903

do.body119:                                       ; preds = %do.end118
  br label %do.end120, !dbg !2904

do.end120:                                        ; preds = %if.then, %do.body119
  ret void, !dbg !2906
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kstat_incr_irqs_this_cpu(ptr noundef %desc) #3 align 16 !dbg !2907 {
entry:
  %desc.addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !2909, metadata !DIExpression()), !dbg !2910
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !2911
  call void @__kstat_incr_irqs_this_cpu(ptr noundef %0) #13, !dbg !2912
  %1 = load ptr, ptr %desc.addr, align 8, !dbg !2913
  %tot_count = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 9, !dbg !2914
  %2 = load i32, ptr %tot_count, align 8, !dbg !2915
  %inc = add i32 %2, 1, !dbg !2915
  store i32 %inc, ptr %tot_count, align 8, !dbg !2915
  ret void, !dbg !2916
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2917 dso_local void @ack_bad_irq(i32 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @no_action(i32 noundef %cpl, ptr noundef %dev_id) #0 align 16 !dbg !2921 {
entry:
  %cpl.addr = alloca i32, align 4
  %dev_id.addr = alloca ptr, align 8
  store i32 %cpl, ptr %cpl.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpl.addr, metadata !2923, metadata !DIExpression()), !dbg !2925
  store ptr %dev_id, ptr %dev_id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev_id.addr, metadata !2924, metadata !DIExpression()), !dbg !2926
  ret i32 0, !dbg !2927
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__irq_wake_thread(ptr noundef %desc, ptr noundef %action) #0 align 16 !dbg !2928 {
entry:
  %desc.addr = alloca ptr, align 8
  %action.addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !2932, metadata !DIExpression()), !dbg !2934
  store ptr %action, ptr %action.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %action.addr, metadata !2933, metadata !DIExpression()), !dbg !2935
  %0 = load ptr, ptr %action.addr, align 8, !dbg !2936
  %thread = getelementptr inbounds %struct.irqaction, ptr %0, i32 0, i32 5, !dbg !2938
  %1 = load ptr, ptr %thread, align 8, !dbg !2938
  %flags = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 4, !dbg !2939
  %2 = load i32, ptr %flags, align 4, !dbg !2939
  %and = and i32 %2, 4, !dbg !2940
  %tobool = icmp ne i32 %and, 0, !dbg !2940
  br i1 %tobool, label %if.then, label %if.end, !dbg !2941

if.then:                                          ; preds = %entry
  br label %return, !dbg !2942

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %action.addr, align 8, !dbg !2943
  %thread_flags = getelementptr inbounds %struct.irqaction, ptr %3, i32 0, i32 9, !dbg !2945
  %call = call zeroext i1 @test_and_set_bit(i64 noundef 0, ptr noundef %thread_flags) #13, !dbg !2946
  br i1 %call, label %if.then1, label %if.end2, !dbg !2947

if.then1:                                         ; preds = %if.end
  br label %return, !dbg !2948

if.end2:                                          ; preds = %if.end
  %4 = load ptr, ptr %action.addr, align 8, !dbg !2949
  %thread_mask = getelementptr inbounds %struct.irqaction, ptr %4, i32 0, i32 10, !dbg !2950
  %5 = load i64, ptr %thread_mask, align 8, !dbg !2950
  %6 = load ptr, ptr %desc.addr, align 8, !dbg !2951
  %threads_oneshot = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 21, !dbg !2952
  %7 = load i64, ptr %threads_oneshot, align 16, !dbg !2953
  %or = or i64 %7, %5, !dbg !2953
  store i64 %or, ptr %threads_oneshot, align 16, !dbg !2953
  %8 = load ptr, ptr %desc.addr, align 8, !dbg !2954
  %threads_active = getelementptr inbounds %struct.irq_desc, ptr %8, i32 0, i32 22, !dbg !2955
  call void @atomic_inc(ptr noundef %threads_active) #13, !dbg !2956
  %9 = load ptr, ptr %action.addr, align 8, !dbg !2957
  %thread3 = getelementptr inbounds %struct.irqaction, ptr %9, i32 0, i32 5, !dbg !2958
  %10 = load ptr, ptr %thread3, align 8, !dbg !2958
  %call4 = call i32 @wake_up_process(ptr noundef %10) #13, !dbg !2959
  br label %return, !dbg !2960

return:                                           ; preds = %if.end2, %if.then1, %if.then
  ret void, !dbg !2960
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @test_and_set_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !2961 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2968, metadata !DIExpression()), !dbg !2970
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2969, metadata !DIExpression()), !dbg !2971
  br label %do.body, !dbg !2972

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2973

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2975
  %1 = load i64, ptr %nr.addr, align 8, !dbg !2976
  %div = sdiv i64 %1, 64, !dbg !2976
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !2977
  call void @instrument_atomic_read_write(ptr noundef %add.ptr, i64 noundef 8) #13, !dbg !2978
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2979
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !2980
  %call = call zeroext i1 @arch_test_and_set_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !2981
  ret i1 %call, !dbg !2982
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_inc(ptr noundef %v) #5 align 16 !dbg !2983 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2989, metadata !DIExpression()), !dbg !2990
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2991
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #13, !dbg !2992
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2993
  call void @raw_atomic_inc(ptr noundef %1) #13, !dbg !2994
  ret void, !dbg !2995
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2996 dso_local i32 @wake_up_process(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__handle_irq_event_percpu(ptr noundef %desc) #0 align 16 !dbg !183 {
entry:
  %desc.addr = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %irq = alloca i32, align 4
  %action = alloca ptr, align 8
  %res = alloca i32, align 4
  %__ret_do_once = alloca i8, align 1
  %_flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp10 = alloca i32, align 4
  %__dummy11 = alloca i64, align 8
  %__dummy212 = alloca i64, align 8
  %tmp15 = alloca i32, align 4
  %tmp16 = alloca i32, align 4
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp35 = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp77 = alloca i64, align 8
  %tmp86 = alloca i64, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !2564, metadata !DIExpression()), !dbg !2999
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #12, !dbg !3000
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !2565, metadata !DIExpression()), !dbg !3001
  store i32 0, ptr %retval1, align 4, !dbg !3001
  call void @llvm.lifetime.start.p0(i64 4, ptr %irq) #12, !dbg !3002
  call void @llvm.dbg.declare(metadata ptr %irq, metadata !2566, metadata !DIExpression()), !dbg !3003
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !3004
  %irq_data = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, !dbg !3005
  %irq2 = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 1, !dbg !3006
  %1 = load i32, ptr %irq2, align 4, !dbg !3006
  store i32 %1, ptr %irq, align 4, !dbg !3003
  call void @llvm.lifetime.start.p0(i64 8, ptr %action) #12, !dbg !3007
  call void @llvm.dbg.declare(metadata ptr %action, metadata !2567, metadata !DIExpression()), !dbg !3008
  %2 = load ptr, ptr %desc.addr, align 8, !dbg !3009
  call void @record_irq_time(ptr noundef %2) #13, !dbg !3010
  %3 = load ptr, ptr %desc.addr, align 8, !dbg !3011
  %action3 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 4, !dbg !3011
  %4 = load ptr, ptr %action3, align 16, !dbg !3011
  store ptr %4, ptr %action, align 8, !dbg !3011
  br label %for.cond, !dbg !3011

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load ptr, ptr %action, align 8, !dbg !3012
  %tobool = icmp ne ptr %5, null, !dbg !3011
  br i1 %tobool, label %for.body, label %for.end, !dbg !3011

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #12, !dbg !3013
  call void @llvm.dbg.declare(metadata ptr %res, metadata !2568, metadata !DIExpression()), !dbg !3014
  %6 = load ptr, ptr %desc.addr, align 8, !dbg !3015
  %call = call zeroext i1 @irq_settings_can_thread(ptr noundef %6) #13, !dbg !3017
  br i1 %call, label %land.lhs.true, label %if.end, !dbg !3018

land.lhs.true:                                    ; preds = %for.body
  %7 = load ptr, ptr %action, align 8, !dbg !3019
  %flags = getelementptr inbounds %struct.irqaction, ptr %7, i32 0, i32 8, !dbg !3020
  %8 = load i32, ptr %flags, align 4, !dbg !3020
  %and = and i32 %8, 74752, !dbg !3021
  %tobool4 = icmp ne i32 %and, 0, !dbg !3021
  br i1 %tobool4, label %if.end, label %if.then, !dbg !3022

if.then:                                          ; preds = %land.lhs.true
  br label %do.body, !dbg !3023

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !3024

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3024

do.end:                                           ; preds = %do.cond
  br label %if.end, !dbg !3024

if.end:                                           ; preds = %do.end, %land.lhs.true, %for.body
  %9 = load i32, ptr %irq, align 4, !dbg !3026
  %10 = load ptr, ptr %action, align 8, !dbg !3027
  call void @trace_irq_handler_entry(i32 noundef %9, ptr noundef %10) #13, !dbg !3028
  %11 = load ptr, ptr %action, align 8, !dbg !3029
  %handler = getelementptr inbounds %struct.irqaction, ptr %11, i32 0, i32 0, !dbg !3030
  %12 = load ptr, ptr %handler, align 64, !dbg !3030
  %13 = load i32, ptr %irq, align 4, !dbg !3031
  %14 = load ptr, ptr %action, align 8, !dbg !3032
  %dev_id = getelementptr inbounds %struct.irqaction, ptr %14, i32 0, i32 1, !dbg !3033
  %15 = load ptr, ptr %dev_id, align 8, !dbg !3033
  %call5 = call i32 %12(i32 noundef %13, ptr noundef %15) #13, !dbg !3029
  store i32 %call5, ptr %res, align 4, !dbg !3034
  %16 = load i32, ptr %irq, align 4, !dbg !3035
  %17 = load ptr, ptr %action, align 8, !dbg !3036
  %18 = load i32, ptr %res, align 4, !dbg !3037
  call void @trace_irq_handler_exit(i32 noundef %16, ptr noundef %17, i32 noundef %18) #13, !dbg !3038
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #12, !dbg !3039
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !2572, metadata !DIExpression()), !dbg !3039
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags) #12, !dbg !3040
  call void @llvm.dbg.declare(metadata ptr %_flags, metadata !2575, metadata !DIExpression()), !dbg !3040
  br label %do.body6, !dbg !3040

do.body6:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #12, !dbg !3041
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !2577, metadata !DIExpression()), !dbg !3041
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #12, !dbg !3041
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !2580, metadata !DIExpression()), !dbg !3041
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !3041
  %conv = zext i1 %cmp to i32, !dbg !3041
  store i32 1, ptr %tmp, align 4, !dbg !3041
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #12, !dbg !3042
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #12, !dbg !3042
  %19 = load i32, ptr %tmp, align 4, !dbg !3041
  %call7 = call i64 @arch_local_save_flags() #13, !dbg !3042
  store i64 %call7, ptr %_flags, align 8, !dbg !3042
  br label %do.cond8, !dbg !3042

do.cond8:                                         ; preds = %do.body6
  br label %do.end9, !dbg !3042

do.end9:                                          ; preds = %do.cond8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy11) #12, !dbg !3043
  call void @llvm.dbg.declare(metadata ptr %__dummy11, metadata !2581, metadata !DIExpression()), !dbg !3043
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy212) #12, !dbg !3043
  call void @llvm.dbg.declare(metadata ptr %__dummy212, metadata !2584, metadata !DIExpression()), !dbg !3043
  %cmp13 = icmp eq ptr %__dummy11, %__dummy212, !dbg !3043
  %conv14 = zext i1 %cmp13 to i32, !dbg !3043
  store i32 1, ptr %tmp15, align 4, !dbg !3043
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy212) #12, !dbg !3044
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy11) #12, !dbg !3044
  %20 = load i32, ptr %tmp15, align 4, !dbg !3043
  %21 = load i64, ptr %_flags, align 8, !dbg !3044
  %call17 = call i32 @arch_irqs_disabled_flags(i64 noundef %21) #13, !dbg !3044
  store i32 %call17, ptr %tmp16, align 4, !dbg !3044
  %22 = load i32, ptr %tmp16, align 4, !dbg !3044
  store i32 %22, ptr %tmp10, align 4, !dbg !3042
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags) #12, !dbg !3039
  %23 = load i32, ptr %tmp10, align 4, !dbg !3040
  %tobool18 = icmp ne i32 %23, 0, !dbg !3039
  %lnot = xor i1 %tobool18, true, !dbg !3039
  %lnot19 = xor i1 %lnot, true, !dbg !3039
  %lnot20 = xor i1 %lnot19, true, !dbg !3039
  %frombool = zext i1 %lnot20 to i8, !dbg !3039
  store i8 %frombool, ptr %__ret_do_once, align 1, !dbg !3039
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #12, !dbg !3045
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !2585, metadata !DIExpression()), !dbg !3045
  %24 = load i8, ptr %__ret_do_once, align 1, !dbg !3045, !range !3046, !noundef !702
  %tobool21 = trunc i8 %24 to i1, !dbg !3045
  %lnot22 = xor i1 %tobool21, true, !dbg !3045
  %lnot23 = xor i1 %lnot22, true, !dbg !3045
  %frombool24 = zext i1 %lnot23 to i8, !dbg !3045
  store i8 %frombool24, ptr %__ret_cond, align 1, !dbg !3045
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #12, !dbg !3045
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !2588, metadata !DIExpression()), !dbg !3045
  store i8 0, ptr %__ret_once, align 1, !dbg !3045
  %25 = load i8, ptr %__ret_cond, align 1, !dbg !3047, !range !3046, !noundef !702
  %tobool25 = trunc i8 %25 to i1, !dbg !3047
  br i1 %tobool25, label %land.rhs, label %land.end, !dbg !3047

land.rhs:                                         ; preds = %do.end9
  %26 = load i8, ptr @__handle_irq_event_percpu.__already_done, align 1, !dbg !3047, !range !3046, !noundef !702
  %tobool27 = trunc i8 %26 to i1, !dbg !3047
  %lnot28 = xor i1 %tobool27, true, !dbg !3047
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.end9
  %27 = phi i1 [ false, %do.end9 ], [ %lnot28, %land.rhs ], !dbg !3049
  %lnot29 = xor i1 %27, true, !dbg !3047
  %lnot30 = xor i1 %lnot29, true, !dbg !3047
  %lnot.ext = zext i1 %lnot30 to i32, !dbg !3047
  %conv31 = sext i32 %lnot.ext to i64, !dbg !3047
  %expval = call i64 @llvm.expect.i64(i64 %conv31, i64 0), !dbg !3047
  %tobool32 = icmp ne i64 %expval, 0, !dbg !3047
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !3045

if.then33:                                        ; preds = %land.end
  store i8 1, ptr @__handle_irq_event_percpu.__already_done, align 1, !dbg !3050
  store i8 1, ptr %__ret_once, align 1, !dbg !3050
  br label %if.end34, !dbg !3050

if.end34:                                         ; preds = %if.then33, %land.end
  %28 = load i8, ptr %__ret_once, align 1, !dbg !3045, !range !3046, !noundef !702
  %tobool36 = trunc i8 %28 to i1, !dbg !3045
  %lnot37 = xor i1 %tobool36, true, !dbg !3045
  %lnot39 = xor i1 %lnot37, true, !dbg !3045
  %lnot.ext40 = zext i1 %lnot39 to i32, !dbg !3045
  %conv41 = sext i32 %lnot.ext40 to i64, !dbg !3045
  %expval42 = call i64 @llvm.expect.i64(i64 %conv41, i64 0), !dbg !3045
  store i64 %expval42, ptr %tmp35, align 8, !dbg !3047
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #12, !dbg !3052
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #12, !dbg !3052
  %29 = load i64, ptr %tmp35, align 8, !dbg !3045
  %tobool43 = icmp ne i64 %29, 0, !dbg !3052
  br i1 %tobool43, label %if.then44, label %if.end85, !dbg !3039

if.then44:                                        ; preds = %if.end34
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !3053
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2589, metadata !DIExpression()), !dbg !3053
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !3053
  %30 = load i32, ptr %__ret_warn_on, align 4, !dbg !3054
  %tobool45 = icmp ne i32 %30, 0, !dbg !3054
  %lnot46 = xor i1 %tobool45, true, !dbg !3054
  %lnot48 = xor i1 %lnot46, true, !dbg !3054
  %lnot.ext49 = zext i1 %lnot48 to i32, !dbg !3054
  %conv50 = sext i32 %lnot.ext49 to i64, !dbg !3054
  %expval51 = call i64 @llvm.expect.i64(i64 %conv50, i64 0), !dbg !3054
  %tobool52 = icmp ne i64 %expval51, 0, !dbg !3054
  br i1 %tobool52, label %if.then53, label %if.end76, !dbg !3053

if.then53:                                        ; preds = %if.then44
  br label %do.body54, !dbg !3054

do.body54:                                        ; preds = %if.then53
  br label %do.body55, !dbg !3055

do.body55:                                        ; preds = %do.body54
  br label %do.cond56, !dbg !3056

do.cond56:                                        ; preds = %do.body55
  br label %do.end57, !dbg !3056

do.end57:                                         ; preds = %do.cond56
  %31 = load i32, ptr %irq, align 4, !dbg !3055
  %32 = load ptr, ptr %action, align 8, !dbg !3055
  %handler58 = getelementptr inbounds %struct.irqaction, ptr %32, i32 0, i32 0, !dbg !3055
  %33 = load ptr, ptr %handler58, align 64, !dbg !3055
  call void (ptr, ...) @__warn_printk(ptr noundef @.str, i32 noundef %31, ptr noundef %33) #13, !dbg !3055
  br label %do.body59, !dbg !3055

do.body59:                                        ; preds = %do.end57
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !3058
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !2591, metadata !DIExpression()), !dbg !3058
  store i32 2313, ptr %__flags, align 4, !dbg !3058
  br label %do.body60, !dbg !3058

do.body60:                                        ; preds = %do.body59
  br label %do.cond61, !dbg !3059

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !3059

do.end62:                                         ; preds = %do.cond61
  br label %do.body63, !dbg !3058

do.body63:                                        ; preds = %do.end62
  %34 = load i32, ptr %__flags, align 4, !dbg !3061
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 162, i32 %34, i64 12) #12, !dbg !3061, !srcloc !3063
  br label %do.cond64, !dbg !3061

do.cond64:                                        ; preds = %do.body63
  br label %do.end65, !dbg !3061

do.end65:                                         ; preds = %do.cond64
  br label %do.body66, !dbg !3058

do.body66:                                        ; preds = %do.end65
  br label %do.cond67, !dbg !3064

do.cond67:                                        ; preds = %do.body66
  br label %do.end68, !dbg !3064

do.end68:                                         ; preds = %do.cond67
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !3055
  br label %do.cond69, !dbg !3058

do.cond69:                                        ; preds = %do.end68
  br label %do.end70, !dbg !3058

do.end70:                                         ; preds = %do.cond69
  br label %do.body71, !dbg !3055

do.body71:                                        ; preds = %do.end70
  br label %do.cond72, !dbg !3066

do.cond72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !3066

do.end73:                                         ; preds = %do.cond72
  br label %do.cond74, !dbg !3055

do.cond74:                                        ; preds = %do.end73
  br label %do.end75, !dbg !3055

do.end75:                                         ; preds = %do.cond74
  br label %if.end76, !dbg !3055

if.end76:                                         ; preds = %do.end75, %if.then44
  %35 = load i32, ptr %__ret_warn_on, align 4, !dbg !3053
  %tobool78 = icmp ne i32 %35, 0, !dbg !3053
  %lnot79 = xor i1 %tobool78, true, !dbg !3053
  %lnot81 = xor i1 %lnot79, true, !dbg !3053
  %lnot.ext82 = zext i1 %lnot81 to i32, !dbg !3053
  %conv83 = sext i32 %lnot.ext82 to i64, !dbg !3053
  %expval84 = call i64 @llvm.expect.i64(i64 %conv83, i64 0), !dbg !3053
  store i64 %expval84, ptr %tmp77, align 8, !dbg !3054
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !3052
  %36 = load i64, ptr %tmp77, align 8, !dbg !3053
  br label %if.end85, !dbg !3052

if.end85:                                         ; preds = %if.end76, %if.end34
  %37 = load i8, ptr %__ret_do_once, align 1, !dbg !3039, !range !3046, !noundef !702
  %tobool87 = trunc i8 %37 to i1, !dbg !3039
  %lnot88 = xor i1 %tobool87, true, !dbg !3039
  %lnot90 = xor i1 %lnot88, true, !dbg !3039
  %lnot.ext91 = zext i1 %lnot90 to i32, !dbg !3039
  %conv92 = sext i32 %lnot.ext91 to i64, !dbg !3039
  %expval93 = call i64 @llvm.expect.i64(i64 %conv92, i64 0), !dbg !3039
  store i64 %expval93, ptr %tmp86, align 8, !dbg !3052
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #12, !dbg !3068
  %38 = load i64, ptr %tmp86, align 8, !dbg !3039
  %tobool94 = icmp ne i64 %38, 0, !dbg !3068
  br i1 %tobool94, label %if.then95, label %if.end99, !dbg !3069

if.then95:                                        ; preds = %if.end85
  br label %do.body96, !dbg !3070

do.body96:                                        ; preds = %if.then95
  call void @arch_local_irq_disable() #13, !dbg !3071
  br label %do.cond97, !dbg !3071

do.cond97:                                        ; preds = %do.body96
  br label %do.end98, !dbg !3071

do.end98:                                         ; preds = %do.cond97
  br label %if.end99, !dbg !3071

if.end99:                                         ; preds = %do.end98, %if.end85
  %39 = load i32, ptr %res, align 4, !dbg !3073
  switch i32 %39, label %sw.default [
    i32 2, label %sw.bb
  ], !dbg !3074

sw.bb:                                            ; preds = %if.end99
  %40 = load ptr, ptr %action, align 8, !dbg !3075
  %thread_fn = getelementptr inbounds %struct.irqaction, ptr %40, i32 0, i32 4, !dbg !3075
  %41 = load ptr, ptr %thread_fn, align 32, !dbg !3075
  %tobool100 = icmp ne ptr %41, null, !dbg !3075
  %lnot101 = xor i1 %tobool100, true, !dbg !3075
  %lnot103 = xor i1 %lnot101, true, !dbg !3075
  %lnot105 = xor i1 %lnot103, true, !dbg !3075
  %lnot.ext106 = zext i1 %lnot105 to i32, !dbg !3075
  %conv107 = sext i32 %lnot.ext106 to i64, !dbg !3075
  %expval108 = call i64 @llvm.expect.i64(i64 %conv107, i64 0), !dbg !3075
  %tobool109 = icmp ne i64 %expval108, 0, !dbg !3075
  br i1 %tobool109, label %if.then110, label %if.end111, !dbg !3078

if.then110:                                       ; preds = %sw.bb
  %42 = load i32, ptr %irq, align 4, !dbg !3079
  %43 = load ptr, ptr %action, align 8, !dbg !3081
  call void @warn_no_thread(i32 noundef %42, ptr noundef %43) #13, !dbg !3082
  br label %sw.epilog, !dbg !3083

if.end111:                                        ; preds = %sw.bb
  %44 = load ptr, ptr %desc.addr, align 8, !dbg !3084
  %45 = load ptr, ptr %action, align 8, !dbg !3085
  call void @__irq_wake_thread(ptr noundef %44, ptr noundef %45) #13, !dbg !3086
  br label %sw.epilog, !dbg !3087

sw.default:                                       ; preds = %if.end99
  br label %sw.epilog, !dbg !3088

sw.epilog:                                        ; preds = %sw.default, %if.end111, %if.then110
  %46 = load i32, ptr %res, align 4, !dbg !3089
  %47 = load i32, ptr %retval1, align 4, !dbg !3090
  %or = or i32 %47, %46, !dbg !3090
  store i32 %or, ptr %retval1, align 4, !dbg !3090
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #12, !dbg !3091
  br label %for.inc, !dbg !3092

for.inc:                                          ; preds = %sw.epilog
  %48 = load ptr, ptr %action, align 8, !dbg !3012
  %next = getelementptr inbounds %struct.irqaction, ptr %48, i32 0, i32 3, !dbg !3012
  %49 = load ptr, ptr %next, align 8, !dbg !3012
  store ptr %49, ptr %action, align 8, !dbg !3012
  br label %for.cond, !dbg !3012, !llvm.loop !3093

for.end:                                          ; preds = %for.cond
  %50 = load i32, ptr %retval1, align 4, !dbg !3097
  call void @llvm.lifetime.end.p0(i64 8, ptr %action) #12, !dbg !3098
  call void @llvm.lifetime.end.p0(i64 4, ptr %irq) #12, !dbg !3098
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #12, !dbg !3098
  ret i32 %50, !dbg !3099
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @record_irq_time(ptr noundef %desc) #3 align 16 !dbg !3100 {
entry:
  %desc.addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !3102, metadata !DIExpression()), !dbg !3103
  ret void, !dbg !3104
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @irq_settings_can_thread(ptr noundef %desc) #3 align 16 !dbg !3105 {
entry:
  %desc.addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !3109, metadata !DIExpression()), !dbg !3110
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !3111
  %status_use_accessors = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 5, !dbg !3112
  %1 = load i32, ptr %status_use_accessors, align 8, !dbg !3112
  %and = and i32 %1, 65536, !dbg !3113
  %tobool = icmp ne i32 %and, 0, !dbg !3114
  %lnot = xor i1 %tobool, true, !dbg !3114
  ret i1 %lnot, !dbg !3115
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_irq_handler_entry(i32 noundef %irq, ptr noundef %action) #3 align 16 !dbg !2692 {
entry:
  %irq.addr = alloca i32, align 4
  %action.addr = alloca ptr, align 8
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
  %__UNIQUE_ID_rcu205 = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %tmp45 = alloca ptr, align 8
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !2696, metadata !DIExpression()), !dbg !3116
  store ptr %action, ptr %action.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %action.addr, metadata !2697, metadata !DIExpression()), !dbg !3116
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_irq_handler_entry, i32 0, i32 1)) #13, !dbg !3117
  br i1 %call, label %if.then, label %if.end68, !dbg !3116

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !3117

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__idx) #12, !dbg !3118
  call void @llvm.dbg.declare(metadata ptr %__idx, metadata !2698, metadata !DIExpression()), !dbg !3118
  store i32 0, ptr %__idx, align 4, !dbg !3118
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #12, !dbg !3119
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !2701, metadata !DIExpression()), !dbg !3119
  br label %do.body1, !dbg !3119

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !3120
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2704, metadata !DIExpression()), !dbg !3120
  store ptr null, ptr %__vpp_verify, align 8, !dbg !3120
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !3120
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !3119
  br label %do.cond, !dbg !3120

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !3120

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #12, !dbg !3121
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !2706, metadata !DIExpression()), !dbg !3121
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.15, ptr @pcpu_hot, i32 0, i32 2)) #12, !dbg !3121, !srcloc !3122
  store i32 %1, ptr %pfo_val__, align 4, !dbg !3121
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !3121
  %conv = zext i32 %2 to i64, !dbg !3121
  %conv2 = trunc i64 %conv to i32, !dbg !3121
  store i32 %conv2, ptr %tmp, align 4, !dbg !3121
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #12, !dbg !3119
  %3 = load i32, ptr %tmp, align 4, !dbg !3121
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !3119
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !3119
  store i32 %4, ptr %tmp3, align 4, !dbg !3119
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #12, !dbg !3123
  %5 = load i32, ptr %tmp3, align 4, !dbg !3119
  %call4 = call zeroext i1 @cpu_online(i32 noundef %5) #13, !dbg !3123
  br i1 %call4, label %if.end, label %if.then5, !dbg !3118

if.then5:                                         ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3123

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !3124
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2708, metadata !DIExpression()), !dbg !3124
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !3124
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !3125
  %tobool = icmp ne i32 %6, 0, !dbg !3125
  %lnot = xor i1 %tobool, true, !dbg !3125
  %lnot6 = xor i1 %lnot, true, !dbg !3125
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !3125
  %conv7 = sext i32 %lnot.ext to i64, !dbg !3125
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !3125
  %tobool8 = icmp ne i64 %expval, 0, !dbg !3125
  br i1 %tobool8, label %if.then9, label %if.end22, !dbg !3124

if.then9:                                         ; preds = %if.end
  br label %do.body10, !dbg !3125

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !3126
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !2711, metadata !DIExpression()), !dbg !3126
  store i32 2307, ptr %__flags, align 4, !dbg !3126
  br label %do.body11, !dbg !3126

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !3127

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !3127

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !3126

do.body14:                                        ; preds = %do.end13
  %7 = load i32, ptr %__flags, align 4, !dbg !3129
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.19, i32 70, i32 %7, i64 12) #12, !dbg !3129, !srcloc !3131
  br label %do.cond15, !dbg !3129

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !3129

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !3126

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !3132

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !3132

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !3125
  br label %do.cond20, !dbg !3126

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !3126

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !3126

if.end22:                                         ; preds = %do.end21, %if.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !3124
  %tobool24 = icmp ne i32 %8, 0, !dbg !3124
  %lnot25 = xor i1 %tobool24, true, !dbg !3124
  %lnot27 = xor i1 %lnot25, true, !dbg !3124
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !3124
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !3124
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !3124
  store i64 %expval30, ptr %tmp23, align 8, !dbg !3125
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !3134
  %9 = load i64, ptr %tmp23, align 8, !dbg !3124
  %tobool31 = icmp ne i64 %9, 0, !dbg !3134
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !3118

if.then32:                                        ; preds = %if.end22
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3134

if.end33:                                         ; preds = %if.end22
  br label %do.body34, !dbg !3118

do.body34:                                        ; preds = %if.end33
  call void @__preempt_count_add(i32 noundef 1) #13, !dbg !3135
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !3135, !srcloc !3137
  br label %do.cond35, !dbg !3135

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !3135

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !3118

do.body37:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #12, !dbg !3138
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !2714, metadata !DIExpression()), !dbg !3138
  call void @llvm.lifetime.start.p0(i64 8, ptr %__data) #12, !dbg !3138
  call void @llvm.dbg.declare(metadata ptr %__data, metadata !2716, metadata !DIExpression()), !dbg !3138
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu205) #12, !dbg !3139
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu205, metadata !2717, metadata !DIExpression()), !dbg !3139
  br label %do.body38, !dbg !3140

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !3142

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !3142

do.end40:                                         ; preds = %do.cond39
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_irq_handler_entry, i32 0, i32 8), align 8, !dbg !3140
  store ptr %10, ptr %tmp41, align 8, !dbg !3142
  %11 = load ptr, ptr %tmp41, align 8, !dbg !3140
  store ptr %11, ptr %__UNIQUE_ID_rcu205, align 8, !dbg !3139
  %12 = load ptr, ptr %__UNIQUE_ID_rcu205, align 8, !dbg !3139
  store ptr %12, ptr %tmp42, align 8, !dbg !3139
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu205) #12, !dbg !3138
  %13 = load ptr, ptr %tmp42, align 8, !dbg !3139
  store ptr %13, ptr %it_func_ptr, align 8, !dbg !3138
  %14 = load ptr, ptr %it_func_ptr, align 8, !dbg !3144
  %tobool43 = icmp ne ptr %14, null, !dbg !3144
  br i1 %tobool43, label %if.then44, label %if.end47, !dbg !3138

if.then44:                                        ; preds = %do.end40
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !3146
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %15, i32 0, i32 1, !dbg !3146
  %16 = load ptr, ptr %data, align 8, !dbg !3146
  store ptr %16, ptr %__data, align 8, !dbg !3146
  store ptr @__SCT__tp_func_irq_handler_entry, ptr %tmp45, align 8, !dbg !3148
  %17 = load ptr, ptr %tmp45, align 8, !dbg !3148
  %18 = load ptr, ptr %__data, align 8, !dbg !3146
  %19 = load i32, ptr %irq.addr, align 4, !dbg !3146
  %20 = load ptr, ptr %action.addr, align 8, !dbg !3146
  %call46 = call i32 %17(ptr noundef %18, i32 noundef %19, ptr noundef %20) #13, !dbg !3146
  br label %if.end47, !dbg !3146

if.end47:                                         ; preds = %if.then44, %do.end40
  call void @llvm.lifetime.end.p0(i64 8, ptr %__data) #12, !dbg !3118
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #12, !dbg !3118
  br label %do.cond48, !dbg !3138

do.cond48:                                        ; preds = %if.end47
  br label %do.end49, !dbg !3138

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !3118

do.body50:                                        ; preds = %do.end49
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !3150, !srcloc !3152
  %call51 = call zeroext i1 @__preempt_count_dec_and_test() #13, !dbg !3153
  %lnot52 = xor i1 %call51, true, !dbg !3153
  %lnot54 = xor i1 %lnot52, true, !dbg !3153
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !3153
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !3153
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !3153
  %tobool58 = icmp ne i64 %expval57, 0, !dbg !3153
  br i1 %tobool58, label %if.then59, label %if.end63, !dbg !3150

if.then59:                                        ; preds = %do.body50
  br label %do.body60, !dbg !3153

do.body60:                                        ; preds = %if.then59
  %21 = call i64 @llvm.read_register.i64(metadata !2758), !dbg !3155
  %22 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %21) #12, !dbg !3155, !srcloc !3157
  call void @llvm.write_register.i64(metadata !2758, i64 %22), !dbg !3155
  br label %do.cond61, !dbg !3155

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !3155

do.end62:                                         ; preds = %do.cond61
  br label %if.end63, !dbg !3155

if.end63:                                         ; preds = %do.end62, %do.body50
  br label %do.cond64, !dbg !3150

do.cond64:                                        ; preds = %if.end63
  br label %do.end65, !dbg !3150

do.end65:                                         ; preds = %do.cond64
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3117
  br label %cleanup, !dbg !3117

cleanup:                                          ; preds = %do.end65, %if.then32, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__idx) #12, !dbg !3117
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end68
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end67, !dbg !3118

do.end67:                                         ; preds = %cleanup.cont
  br label %if.end68, !dbg !3118

if.end68:                                         ; preds = %cleanup, %do.end67, %entry
  ret void, !dbg !3116

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_irq_handler_exit(i32 noundef %irq, ptr noundef %action, i32 noundef %ret) #3 align 16 !dbg !2723 {
entry:
  %irq.addr = alloca i32, align 4
  %action.addr = alloca ptr, align 8
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
  %__UNIQUE_ID_rcu213 = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %tmp45 = alloca ptr, align 8
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !2727, metadata !DIExpression()), !dbg !3158
  store ptr %action, ptr %action.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %action.addr, metadata !2728, metadata !DIExpression()), !dbg !3158
  store i32 %ret, ptr %ret.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ret.addr, metadata !2729, metadata !DIExpression()), !dbg !3158
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_irq_handler_exit, i32 0, i32 1)) #13, !dbg !3159
  br i1 %call, label %if.then, label %if.end68, !dbg !3158

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !3159

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__idx) #12, !dbg !3160
  call void @llvm.dbg.declare(metadata ptr %__idx, metadata !2730, metadata !DIExpression()), !dbg !3160
  store i32 0, ptr %__idx, align 4, !dbg !3160
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #12, !dbg !3161
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !2733, metadata !DIExpression()), !dbg !3161
  br label %do.body1, !dbg !3161

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !3162
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2736, metadata !DIExpression()), !dbg !3162
  store ptr null, ptr %__vpp_verify, align 8, !dbg !3162
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !3162
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !3161
  br label %do.cond, !dbg !3162

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !3162

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #12, !dbg !3163
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !2738, metadata !DIExpression()), !dbg !3163
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.15, ptr @pcpu_hot, i32 0, i32 2)) #12, !dbg !3163, !srcloc !3164
  store i32 %1, ptr %pfo_val__, align 4, !dbg !3163
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !3163
  %conv = zext i32 %2 to i64, !dbg !3163
  %conv2 = trunc i64 %conv to i32, !dbg !3163
  store i32 %conv2, ptr %tmp, align 4, !dbg !3163
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #12, !dbg !3161
  %3 = load i32, ptr %tmp, align 4, !dbg !3163
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !3161
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !3161
  store i32 %4, ptr %tmp3, align 4, !dbg !3161
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #12, !dbg !3165
  %5 = load i32, ptr %tmp3, align 4, !dbg !3161
  %call4 = call zeroext i1 @cpu_online(i32 noundef %5) #13, !dbg !3165
  br i1 %call4, label %if.end, label %if.then5, !dbg !3160

if.then5:                                         ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3165

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !3166
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2740, metadata !DIExpression()), !dbg !3166
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !3166
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !3167
  %tobool = icmp ne i32 %6, 0, !dbg !3167
  %lnot = xor i1 %tobool, true, !dbg !3167
  %lnot6 = xor i1 %lnot, true, !dbg !3167
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !3167
  %conv7 = sext i32 %lnot.ext to i64, !dbg !3167
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !3167
  %tobool8 = icmp ne i64 %expval, 0, !dbg !3167
  br i1 %tobool8, label %if.then9, label %if.end22, !dbg !3166

if.then9:                                         ; preds = %if.end
  br label %do.body10, !dbg !3167

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !3168
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !2743, metadata !DIExpression()), !dbg !3168
  store i32 2307, ptr %__flags, align 4, !dbg !3168
  br label %do.body11, !dbg !3168

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !3169

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !3169

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !3168

do.body14:                                        ; preds = %do.end13
  %7 = load i32, ptr %__flags, align 4, !dbg !3171
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.19, i32 101, i32 %7, i64 12) #12, !dbg !3171, !srcloc !3173
  br label %do.cond15, !dbg !3171

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !3171

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !3168

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !3174

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !3174

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !3167
  br label %do.cond20, !dbg !3168

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !3168

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !3168

if.end22:                                         ; preds = %do.end21, %if.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !3166
  %tobool24 = icmp ne i32 %8, 0, !dbg !3166
  %lnot25 = xor i1 %tobool24, true, !dbg !3166
  %lnot27 = xor i1 %lnot25, true, !dbg !3166
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !3166
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !3166
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !3166
  store i64 %expval30, ptr %tmp23, align 8, !dbg !3167
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !3176
  %9 = load i64, ptr %tmp23, align 8, !dbg !3166
  %tobool31 = icmp ne i64 %9, 0, !dbg !3176
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !3160

if.then32:                                        ; preds = %if.end22
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3176

if.end33:                                         ; preds = %if.end22
  br label %do.body34, !dbg !3160

do.body34:                                        ; preds = %if.end33
  call void @__preempt_count_add(i32 noundef 1) #13, !dbg !3177
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !3177, !srcloc !3179
  br label %do.cond35, !dbg !3177

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !3177

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !3160

do.body37:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #12, !dbg !3180
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !2746, metadata !DIExpression()), !dbg !3180
  call void @llvm.lifetime.start.p0(i64 8, ptr %__data) #12, !dbg !3180
  call void @llvm.dbg.declare(metadata ptr %__data, metadata !2748, metadata !DIExpression()), !dbg !3180
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu213) #12, !dbg !3181
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu213, metadata !2749, metadata !DIExpression()), !dbg !3181
  br label %do.body38, !dbg !3182

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !3184

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !3184

do.end40:                                         ; preds = %do.cond39
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_irq_handler_exit, i32 0, i32 8), align 8, !dbg !3182
  store ptr %10, ptr %tmp41, align 8, !dbg !3184
  %11 = load ptr, ptr %tmp41, align 8, !dbg !3182
  store ptr %11, ptr %__UNIQUE_ID_rcu213, align 8, !dbg !3181
  %12 = load ptr, ptr %__UNIQUE_ID_rcu213, align 8, !dbg !3181
  store ptr %12, ptr %tmp42, align 8, !dbg !3181
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu213) #12, !dbg !3180
  %13 = load ptr, ptr %tmp42, align 8, !dbg !3181
  store ptr %13, ptr %it_func_ptr, align 8, !dbg !3180
  %14 = load ptr, ptr %it_func_ptr, align 8, !dbg !3186
  %tobool43 = icmp ne ptr %14, null, !dbg !3186
  br i1 %tobool43, label %if.then44, label %if.end47, !dbg !3180

if.then44:                                        ; preds = %do.end40
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !3188
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %15, i32 0, i32 1, !dbg !3188
  %16 = load ptr, ptr %data, align 8, !dbg !3188
  store ptr %16, ptr %__data, align 8, !dbg !3188
  store ptr @__SCT__tp_func_irq_handler_exit, ptr %tmp45, align 8, !dbg !3190
  %17 = load ptr, ptr %tmp45, align 8, !dbg !3190
  %18 = load ptr, ptr %__data, align 8, !dbg !3188
  %19 = load i32, ptr %irq.addr, align 4, !dbg !3188
  %20 = load ptr, ptr %action.addr, align 8, !dbg !3188
  %21 = load i32, ptr %ret.addr, align 4, !dbg !3188
  %call46 = call i32 %17(ptr noundef %18, i32 noundef %19, ptr noundef %20, i32 noundef %21) #13, !dbg !3188
  br label %if.end47, !dbg !3188

if.end47:                                         ; preds = %if.then44, %do.end40
  call void @llvm.lifetime.end.p0(i64 8, ptr %__data) #12, !dbg !3160
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #12, !dbg !3160
  br label %do.cond48, !dbg !3180

do.cond48:                                        ; preds = %if.end47
  br label %do.end49, !dbg !3180

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !3160

do.body50:                                        ; preds = %do.end49
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !3192, !srcloc !3194
  %call51 = call zeroext i1 @__preempt_count_dec_and_test() #13, !dbg !3195
  %lnot52 = xor i1 %call51, true, !dbg !3195
  %lnot54 = xor i1 %lnot52, true, !dbg !3195
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !3195
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !3195
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !3195
  %tobool58 = icmp ne i64 %expval57, 0, !dbg !3195
  br i1 %tobool58, label %if.then59, label %if.end63, !dbg !3192

if.then59:                                        ; preds = %do.body50
  br label %do.body60, !dbg !3195

do.body60:                                        ; preds = %if.then59
  %22 = call i64 @llvm.read_register.i64(metadata !2758), !dbg !3197
  %23 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %22) #12, !dbg !3197, !srcloc !3199
  call void @llvm.write_register.i64(metadata !2758, i64 %23), !dbg !3197
  br label %do.cond61, !dbg !3197

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !3197

do.end62:                                         ; preds = %do.cond61
  br label %if.end63, !dbg !3197

if.end63:                                         ; preds = %do.end62, %do.body50
  br label %do.cond64, !dbg !3192

do.cond64:                                        ; preds = %if.end63
  br label %do.end65, !dbg !3192

do.end65:                                         ; preds = %do.cond64
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3159
  br label %cleanup, !dbg !3159

cleanup:                                          ; preds = %do.end65, %if.then32, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__idx) #12, !dbg !3159
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end68
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end67, !dbg !3160

do.end67:                                         ; preds = %cleanup.cont
  br label %if.end68, !dbg !3160

if.end68:                                         ; preds = %cleanup, %do.end67, %entry
  ret void, !dbg !3158

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #5 align 16 !dbg !3200 {
entry:
  %call = call i64 @native_save_fl() #13, !dbg !3204
  ret i64 %call, !dbg !3205
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #5 align 16 !dbg !3206 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3210, metadata !DIExpression()), !dbg !3211
  %0 = load i64, ptr %flags.addr, align 8, !dbg !3212
  %and = and i64 %0, 512, !dbg !3213
  %tobool = icmp ne i64 %and, 0, !dbg !3214
  %lnot = xor i1 %tobool, true, !dbg !3214
  %lnot.ext = zext i1 %lnot to i32, !dbg !3214
  ret i32 %lnot.ext, !dbg !3215
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3216 dso_local void @__warn_printk(ptr noundef, ...) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_disable() #5 align 16 !dbg !3219 {
entry:
  call void @native_irq_disable() #13, !dbg !3220
  ret void, !dbg !3221
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @warn_no_thread(i32 noundef %irq, ptr noundef %action) #0 align 16 !dbg !3222 {
entry:
  %irq.addr = alloca i32, align 4
  %action.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !3226, metadata !DIExpression()), !dbg !3228
  store ptr %action, ptr %action.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %action.addr, metadata !3227, metadata !DIExpression()), !dbg !3229
  %0 = load ptr, ptr %action.addr, align 8, !dbg !3230
  %thread_flags = getelementptr inbounds %struct.irqaction, ptr %0, i32 0, i32 9, !dbg !3232
  %call = call zeroext i1 @test_and_set_bit(i64 noundef 1, ptr noundef %thread_flags) #13, !dbg !3233
  br i1 %call, label %if.then, label %if.end, !dbg !3234

if.then:                                          ; preds = %entry
  br label %return, !dbg !3235

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !3236

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !3238

do.end:                                           ; preds = %do.body
  %1 = load i32, ptr %irq.addr, align 4, !dbg !3236
  %2 = load ptr, ptr %action.addr, align 8, !dbg !3236
  %name = getelementptr inbounds %struct.irqaction, ptr %2, i32 0, i32 11, !dbg !3236
  %3 = load ptr, ptr %name, align 16, !dbg !3236
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str.20, i32 noundef %1, ptr noundef %3) #14, !dbg !3236
  store i32 %call1, ptr %tmp, align 4, !dbg !3238
  %4 = load i32, ptr %tmp, align 4, !dbg !3236
  br label %return, !dbg !3240

return:                                           ; preds = %do.end, %if.then
  ret void, !dbg !3240
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @handle_irq_event_percpu(ptr noundef %desc) #0 align 16 !dbg !3241 {
entry:
  %desc.addr = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !3243, metadata !DIExpression()), !dbg !3245
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #12, !dbg !3246
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !3244, metadata !DIExpression()), !dbg !3247
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !3248
  %call = call i32 @__handle_irq_event_percpu(ptr noundef %0) #13, !dbg !3249
  store i32 %call, ptr %retval1, align 4, !dbg !3250
  %1 = load ptr, ptr %desc.addr, align 8, !dbg !3251
  %irq_data = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 1, !dbg !3252
  %irq = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 1, !dbg !3253
  %2 = load i32, ptr %irq, align 4, !dbg !3253
  call void @add_interrupt_randomness(i32 noundef %2) #13, !dbg !3254
  %3 = load ptr, ptr %desc.addr, align 8, !dbg !3255
  %call2 = call zeroext i1 @irq_settings_no_debug(ptr noundef %3) #13, !dbg !3257
  br i1 %call2, label %if.end, label %if.then, !dbg !3258

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %desc.addr, align 8, !dbg !3259
  %5 = load i32, ptr %retval1, align 4, !dbg !3260
  call void @note_interrupt(ptr noundef %4, i32 noundef %5) #13, !dbg !3261
  br label %if.end, !dbg !3261

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, ptr %retval1, align 4, !dbg !3262
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #12, !dbg !3263
  ret i32 %6, !dbg !3264
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3265 dso_local void @add_interrupt_randomness(i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @irq_settings_no_debug(ptr noundef %desc) #3 align 16 !dbg !3269 {
entry:
  %desc.addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !3271, metadata !DIExpression()), !dbg !3272
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !3273
  %status_use_accessors = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 5, !dbg !3274
  %1 = load i32, ptr %status_use_accessors, align 8, !dbg !3274
  %and = and i32 %1, 2097152, !dbg !3275
  %tobool = icmp ne i32 %and, 0, !dbg !3273
  ret i1 %tobool, !dbg !3276
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3277 dso_local void @note_interrupt(ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @handle_irq_event(ptr noundef %desc) #0 align 16 !dbg !3280 {
entry:
  %desc.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !3282, metadata !DIExpression()), !dbg !3284
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #12, !dbg !3285
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3283, metadata !DIExpression()), !dbg !3286
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !3287
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 6, !dbg !3288
  %1 = load i32, ptr %core_internal_state__do_not_mess_with_it, align 4, !dbg !3289
  %and = and i32 %1, -513, !dbg !3289
  store i32 %and, ptr %core_internal_state__do_not_mess_with_it, align 4, !dbg !3289
  %2 = load ptr, ptr %desc.addr, align 8, !dbg !3290
  %irq_data = getelementptr inbounds %struct.irq_desc, ptr %2, i32 0, i32 1, !dbg !3291
  call void @irqd_set(ptr noundef %irq_data, i32 noundef 262144) #13, !dbg !3292
  %3 = load ptr, ptr %desc.addr, align 8, !dbg !3293
  %lock = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 15, !dbg !3293
  call void @_raw_spin_unlock(ptr noundef %lock) #13, !dbg !3293
  %4 = load ptr, ptr %desc.addr, align 8, !dbg !3294
  %call = call i32 @handle_irq_event_percpu(ptr noundef %4) #13, !dbg !3295
  store i32 %call, ptr %ret, align 4, !dbg !3296
  %5 = load ptr, ptr %desc.addr, align 8, !dbg !3297
  %lock1 = getelementptr inbounds %struct.irq_desc, ptr %5, i32 0, i32 15, !dbg !3297
  call void @_raw_spin_lock(ptr noundef %lock1) #13, !dbg !3297
  %6 = load ptr, ptr %desc.addr, align 8, !dbg !3298
  %irq_data2 = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 1, !dbg !3299
  call void @irqd_clear(ptr noundef %irq_data2, i32 noundef 262144) #13, !dbg !3300
  %7 = load i32, ptr %ret, align 4, !dbg !3301
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #12, !dbg !3302
  ret i32 %7, !dbg !3303
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @irqd_set(ptr noundef %d, i32 noundef %mask) #3 align 16 !dbg !3304 {
entry:
  %d.addr = alloca ptr, align 8
  %mask.addr = alloca i32, align 4
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !3306, metadata !DIExpression()), !dbg !3308
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !3307, metadata !DIExpression()), !dbg !3309
  %0 = load i32, ptr %mask.addr, align 4, !dbg !3310
  %1 = load ptr, ptr %d.addr, align 8, !dbg !3311
  %common = getelementptr inbounds %struct.irq_data, ptr %1, i32 0, i32 3, !dbg !3311
  %2 = load ptr, ptr %common, align 8, !dbg !3311
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, ptr %2, i32 0, i32 0, !dbg !3311
  %3 = load i32, ptr %state_use_accessors, align 8, !dbg !3312
  %or = or i32 %3, %0, !dbg !3312
  store i32 %or, ptr %state_use_accessors, align 8, !dbg !3312
  ret void, !dbg !3313
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3314 dso_local void @_raw_spin_unlock(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3319 dso_local void @_raw_spin_lock(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @irqd_clear(ptr noundef %d, i32 noundef %mask) #3 align 16 !dbg !3320 {
entry:
  %d.addr = alloca ptr, align 8
  %mask.addr = alloca i32, align 4
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !3322, metadata !DIExpression()), !dbg !3324
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !3323, metadata !DIExpression()), !dbg !3325
  %0 = load i32, ptr %mask.addr, align 4, !dbg !3326
  %not = xor i32 %0, -1, !dbg !3327
  %1 = load ptr, ptr %d.addr, align 8, !dbg !3328
  %common = getelementptr inbounds %struct.irq_data, ptr %1, i32 0, i32 3, !dbg !3328
  %2 = load ptr, ptr %common, align 8, !dbg !3328
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, ptr %2, i32 0, i32 0, !dbg !3328
  %3 = load i32, ptr %state_use_accessors, align 8, !dbg !3329
  %and = and i32 %3, %not, !dbg !3329
  store i32 %and, ptr %state_use_accessors, align 8, !dbg !3329
  ret void, !dbg !3330
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3331 dso_local i32 @___ratelimit(ptr noundef, ptr noundef) #4

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !3335 dso_local i32 @_printk(ptr noundef, ...) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__kstat_incr_irqs_this_cpu(ptr noundef %desc) #3 align 16 !dbg !3339 {
entry:
  %desc.addr = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pao_ID__ = alloca i32, align 4
  %__vpp_verify7 = alloca ptr, align 8
  %pao_ID__10 = alloca i32, align 4
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !3341, metadata !DIExpression()), !dbg !3354
  call void @__this_cpu_preempt_check(ptr noundef @.str.18) #13, !dbg !3355
  br label %do.body, !dbg !3355

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !3356

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !3357
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !3342, metadata !DIExpression()), !dbg !3357
  store ptr null, ptr %__vpp_verify, align 8, !dbg !3357
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !3357
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !3356
  br label %do.end, !dbg !3357

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !3356

do.body2:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #12, !dbg !3358
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !3346, metadata !DIExpression()), !dbg !3358
  store i32 1, ptr %pao_ID__, align 4, !dbg !3358
  %1 = load ptr, ptr %desc.addr, align 8, !dbg !3359
  %kstat_irqs = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 2, !dbg !3359
  %2 = load ptr, ptr %kstat_irqs, align 32, !dbg !3359
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %2, ptr elementtype(i32) %2) #12, !dbg !3359, !srcloc !3362
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #12, !dbg !3356
  br label %do.end3, !dbg !3358

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !3356

do.end4:                                          ; preds = %do.end3
  call void @__this_cpu_preempt_check(ptr noundef @.str.18) #13, !dbg !3363
  br label %do.body5, !dbg !3363

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !3364

do.body6:                                         ; preds = %do.body5
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify7) #12, !dbg !3365
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify7, metadata !3348, metadata !DIExpression()), !dbg !3365
  store ptr null, ptr %__vpp_verify7, align 8, !dbg !3365
  %3 = load ptr, ptr %__vpp_verify7, align 8, !dbg !3365
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify7) #12, !dbg !3364
  br label %do.end8, !dbg !3365

do.end8:                                          ; preds = %do.body6
  br label %do.body9, !dbg !3364

do.body9:                                         ; preds = %do.end8
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__10) #12, !dbg !3366
  call void @llvm.dbg.declare(metadata ptr %pao_ID__10, metadata !3352, metadata !DIExpression()), !dbg !3366
  store i32 1, ptr %pao_ID__10, align 4, !dbg !3366
  call void asm "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @kstat, ptr elementtype(i64) @kstat) #12, !dbg !3367, !srcloc !3370
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__10) #12, !dbg !3364
  br label %do.end11, !dbg !3366

do.end11:                                         ; preds = %do.body9
  br label %do.end12, !dbg !3364

do.end12:                                         ; preds = %do.end11
  ret void, !dbg !3371
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__this_cpu_preempt_check(ptr noundef %op) #5 align 16 !dbg !3372 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !3377, metadata !DIExpression()), !dbg !3378
  ret void, !dbg !3379
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !3380 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3388, metadata !DIExpression()), !dbg !3390
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3389, metadata !DIExpression()), !dbg !3391
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3392
  %1 = load i64, ptr %size.addr, align 8, !dbg !3393
  %conv = trunc i64 %1 to i32, !dbg !3393
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #13, !dbg !3394
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3395
  %3 = load i64, ptr %size.addr, align 8, !dbg !3395
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #13, !dbg !3395
  ret void, !dbg !3396
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_and_set_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !3397 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3400, metadata !DIExpression()), !dbg !3404
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3401, metadata !DIExpression()), !dbg !3405
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #12, !dbg !3406
  call void @llvm.dbg.declare(metadata ptr %c, metadata !3402, metadata !DIExpression()), !dbg !3406
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3406
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3406
  %2 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1, ptr elementtype(i64) %0) #12, !dbg !3406, !srcloc !3407
  %3 = icmp ult i8 %2, 2, !dbg !3406
  call void @llvm.assume(i1 %3), !dbg !3406
  store i8 %2, ptr %c, align 1, !dbg !3406
  %4 = load i8, ptr %c, align 1, !dbg !3406, !range !3046, !noundef !702
  %tobool = trunc i8 %4 to i1, !dbg !3406
  %frombool = zext i1 %tobool to i8, !dbg !3406
  store i8 %frombool, ptr %tmp, align 1, !dbg !3406
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #12, !dbg !3408
  %5 = load i8, ptr %tmp, align 1, !dbg !3406, !range !3046, !noundef !702
  %tobool1 = trunc i8 %5 to i1, !dbg !3406
  ret i1 %tobool1, !dbg !3409
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !3410 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3415, metadata !DIExpression()), !dbg !3417
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3416, metadata !DIExpression()), !dbg !3418
  ret i1 true, !dbg !3419
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !3420 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !3425, metadata !DIExpression()), !dbg !3428
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3426, metadata !DIExpression()), !dbg !3429
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !3427, metadata !DIExpression()), !dbg !3430
  ret void, !dbg !3431
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_inc(ptr noundef %v) #5 align 16 !dbg !3432 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3435, metadata !DIExpression()), !dbg !3436
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3437
  call void @arch_atomic_inc(ptr noundef %0) #13, !dbg !3438
  ret void, !dbg !3439
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_inc(ptr noundef %v) #5 align 16 !dbg !3440 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3443, metadata !DIExpression()), !dbg !3444
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3445
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !3446
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #12, !dbg !3447, !srcloc !3448
  ret void, !dbg !3449
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #5 align 16 !dbg !3450 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !3466, metadata !DIExpression()), !dbg !3467
  %0 = load ptr, ptr %key.addr, align 8, !dbg !3468
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #13, !dbg !3469
  ret i1 %call, !dbg !3470
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpu_online(i32 noundef %cpu) #3 align 16 !dbg !3471 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !3475, metadata !DIExpression()), !dbg !3476
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !3477
  %call = call zeroext i1 @cpumask_test_cpu(i32 noundef %0, ptr noundef @__cpu_online_mask) #13, !dbg !3478
  ret i1 %call, !dbg !3479
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #5 align 16 !dbg !3480 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !3483, metadata !DIExpression()), !dbg !3490
  br label %do.body, !dbg !3491

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #12, !dbg !3492
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !3484, metadata !DIExpression()), !dbg !3492
  %0 = load i32, ptr %val.addr, align 4, !dbg !3492
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !3492
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !3492

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !3492
  %cmp = icmp eq i32 %2, 1, !dbg !3492
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !3492

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !3492
  %cmp1 = icmp eq i32 %3, -1, !dbg !3492
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !3492

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !3492
  br label %cond.end, !dbg !3492

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !3492

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !3492
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !3492
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !3493
  %cmp2 = icmp eq i32 %5, 1, !dbg !3493
  br i1 %cmp2, label %if.then, label %if.else, !dbg !3492

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.15, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.15, ptr @pcpu_hot, i32 0, i32 1)) #12, !dbg !3494, !srcloc !3496
  br label %if.end8, !dbg !3493

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !3497
  %cmp3 = icmp eq i32 %6, -1, !dbg !3497
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !3493

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.15, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.15, ptr @pcpu_hot, i32 0, i32 1)) #12, !dbg !3498, !srcloc !3500
  br label %if.end, !dbg !3497

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !3497

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #12, !dbg !3501
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !3486, metadata !DIExpression()), !dbg !3501
  %7 = load i32, ptr %val.addr, align 4, !dbg !3501
  %conv = sext i32 %7 to i64, !dbg !3501
  %and = and i64 %conv, 4294967295, !dbg !3501
  %conv7 = trunc i64 %and to i32, !dbg !3501
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !3501
  %8 = load i32, ptr %pto_val__, align 4, !dbg !3501
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.15, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.15, ptr @pcpu_hot, i32 0, i32 1)) #12, !dbg !3501, !srcloc !3502
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #12, !dbg !3497
  br label %do.cond, !dbg !3501

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !3501

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #12, !dbg !3491
  br label %do.end10, !dbg !3492

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !3503
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_irq_handler_entry(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #5 align 16 !dbg !3504 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #12, !dbg !3508
  call void @llvm.dbg.declare(metadata ptr %c, metadata !3506, metadata !DIExpression()), !dbg !3508
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.15, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.15, ptr @pcpu_hot, i32 0, i32 1)) #12, !dbg !3508, !srcloc !3509
  %1 = icmp ult i8 %0, 2, !dbg !3508
  call void @llvm.assume(i1 %1), !dbg !3508
  store i8 %0, ptr %c, align 1, !dbg !3508
  %2 = load i8, ptr %c, align 1, !dbg !3508, !range !3046, !noundef !702
  %tobool = trunc i8 %2 to i1, !dbg !3508
  %frombool = zext i1 %tobool to i8, !dbg !3508
  store i8 %frombool, ptr %tmp, align 1, !dbg !3508
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #12, !dbg !3510
  %3 = load i8, ptr %tmp, align 1, !dbg !3508, !range !3046, !noundef !702
  %tobool1 = trunc i8 %3 to i1, !dbg !3508
  ret i1 %tobool1, !dbg !3511
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #9

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #5 align 16 !dbg !3512 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !3517, metadata !DIExpression()), !dbg !3520
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !3518, metadata !DIExpression()), !dbg !3521
  %0 = load ptr, ptr %key.addr, align 8, !dbg !3522
  %1 = load i8, ptr %branch.addr, align 1, !dbg !3523, !range !3046, !noundef !702
  %tobool = trunc i8 %1 to i1, !dbg !3523
  %conv = zext i1 %tobool to i32, !dbg !3523
  %or = or i32 2, %conv, !dbg !3524
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #12
          to label %asm.fallthrough [label %l_yes], !dbg !3525, !srcloc !3526

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !3527
  br label %return, !dbg !3527

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !3519), !dbg !3528
  store i1 true, ptr %retval, align 1, !dbg !3529
  br label %return, !dbg !3529

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !3530
  ret i1 %2, !dbg !3530
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_test_cpu(i32 noundef %cpu, ptr noundef %cpumask) #5 align 16 !dbg !3531 {
entry:
  %cpu.addr = alloca i32, align 4
  %cpumask.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !3535, metadata !DIExpression()), !dbg !3537
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !3536, metadata !DIExpression()), !dbg !3538
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !3539
  %call = call i32 @cpumask_check(i32 noundef %0) #13, !dbg !3539
  %conv = zext i32 %call to i64, !dbg !3539
  %1 = load ptr, ptr %cpumask.addr, align 8, !dbg !3539
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !3539
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !3539
  %call1 = call zeroext i1 @_test_bit(i64 noundef %conv, ptr noundef %arraydecay) #13, !dbg !3539
  ret i1 %call1, !dbg !3540
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !3541 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3548, metadata !DIExpression()), !dbg !3550
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3549, metadata !DIExpression()), !dbg !3551
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3552
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3553
  %div = udiv i64 %1, 64, !dbg !3553
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !3554
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #13, !dbg !3555
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3556
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !3557
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !3558
  ret i1 %call, !dbg !3559
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_check(i32 noundef %cpu) #5 align 16 !dbg !3560 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !3564, metadata !DIExpression()), !dbg !3565
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !3566
  call void @cpu_max_bits_warn(i32 noundef %0, i32 noundef 64) #13, !dbg !3567
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !3568
  ret i32 %1, !dbg !3569
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !3570 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3572, metadata !DIExpression()), !dbg !3574
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3573, metadata !DIExpression()), !dbg !3575
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3576
  %1 = load i64, ptr %size.addr, align 8, !dbg !3577
  %conv = trunc i64 %1 to i32, !dbg !3577
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #13, !dbg !3578
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3579
  %3 = load i64, ptr %size.addr, align 8, !dbg !3579
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #13, !dbg !3579
  ret void, !dbg !3580
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !3581 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3583, metadata !DIExpression()), !dbg !3585
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3584, metadata !DIExpression()), !dbg !3586
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3587
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3588
  br i1 %1, label %cond.true, label %cond.false, !dbg !3588

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3589
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !3590
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !3591
  %conv = zext i1 %call to i32, !dbg !3591
  br label %cond.end, !dbg !3588

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !3592
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !3593
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #13, !dbg !3594
  %conv2 = zext i1 %call1 to i32, !dbg !3594
  br label %cond.end, !dbg !3588

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !3588
  %tobool = icmp ne i32 %cond, 0, !dbg !3588
  ret i1 %tobool, !dbg !3595
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !3596 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3598, metadata !DIExpression()), !dbg !3600
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3599, metadata !DIExpression()), !dbg !3601
  ret i1 true, !dbg !3602
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !3603 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3607, metadata !DIExpression()), !dbg !3609
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3608, metadata !DIExpression()), !dbg !3610
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3611
  %and = and i64 %0, 63, !dbg !3612
  %shl = shl i64 1, %and, !dbg !3613
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !3614
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3615
  %shr = ashr i64 %2, 6, !dbg !3616
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !3614
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !3614
  %and1 = and i64 %shl, %3, !dbg !3617
  %cmp = icmp ne i64 %and1, 0, !dbg !3618
  ret i1 %cmp, !dbg !3619
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !3620 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3622, metadata !DIExpression()), !dbg !3625
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3623, metadata !DIExpression()), !dbg !3626
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #12, !dbg !3627
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !3624, metadata !DIExpression()), !dbg !3628
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3629
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3630
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #12, !dbg !3631, !srcloc !3632
  %3 = icmp ult i8 %2, 2, !dbg !3631
  call void @llvm.assume(i1 %3), !dbg !3631
  store i8 %2, ptr %oldbit, align 1, !dbg !3631
  %4 = load i8, ptr %oldbit, align 1, !dbg !3633, !range !3046, !noundef !702
  %tobool = trunc i8 %4 to i1, !dbg !3633
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #12, !dbg !3634
  ret i1 %tobool, !dbg !3635
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_max_bits_warn(i32 noundef %cpu, i32 noundef %bits) #5 align 16 !dbg !3636 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !3640, metadata !DIExpression()), !dbg !3642
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !3641, metadata !DIExpression()), !dbg !3643
  ret void, !dbg !3644
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #11

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_irq_handler_exit(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #5 align 16 !dbg !3645 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #12, !dbg !3648
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !3647, metadata !DIExpression()), !dbg !3649
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #12, !dbg !3650, !srcloc !3651
  %0 = load i64, ptr %flags, align 8, !dbg !3652
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #12, !dbg !3653
  ret i64 %0, !dbg !3654
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_disable() #5 align 16 !dbg !3655 {
entry:
  call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !3656, !srcloc !3657
  ret void, !dbg !3658
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #10 = { nocallback nounwind }
attributes #11 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { noredzone }
attributes #14 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!2758}
!llvm.module.flags = !{!2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766}
!llvm.ident = !{!2767}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_handle_bad_irq262", scope: !2, file: !3, line: 41, type: !149, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/irq/.handle.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/irq/handle\22 -D KBUILD_BASENAME=\22handle\22 -D KBUILD_MODNAME=\22handle\22 -D __KBUILD_MODNAME=kmod_handle -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/irq/handle.ll kernel/irq/handle.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !148, globals: !178, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "kernel/irq/handle.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7569614cb2a06a2edfefbcc112416702")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !50, !58, !63, !76, !103, !129}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqchip_irq_state", file: !6, line: 497, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "IRQCHIP_STATE_PENDING", value: 0)
!10 = !DIEnumerator(name: "IRQCHIP_STATE_ACTIVE", value: 1)
!11 = !DIEnumerator(name: "IRQCHIP_STATE_MASKED", value: 2)
!12 = !DIEnumerator(name: "IRQCHIP_STATE_LINE_LEVEL", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !14, line: 11, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6f79c8839b3f722a70a16edaeaa0164")
!15 = !{!16, !17, !18}
!16 = !DIEnumerator(name: "IRQ_NONE", value: 0)
!17 = !DIEnumerator(name: "IRQ_HANDLED", value: 1)
!18 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !20, line: 65, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!21 = !{!22, !23}
!22 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!23 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !25, line: 16, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!26 = !{!27, !28, !29}
!27 = !DIEnumerator(name: "TT_NONE", value: 0)
!28 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!29 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !31, line: 51, baseType: !7, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!32 = !{!33, !34, !35, !36}
!33 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!34 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!35 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!36 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !38, line: 26, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!39 = !{!40, !41, !42}
!40 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!41 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!42 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !44, line: 312, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!45 = !{!46, !47, !48, !49}
!46 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!47 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!48 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!49 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !51, line: 34, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "kernel/irq/internals.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1a83a6391bcc5e0feb0932e94d9f4c16")
!52 = !{!53, !54, !55, !56, !57}
!53 = !DIEnumerator(name: "IRQTF_RUNTHREAD", value: 0)
!54 = !DIEnumerator(name: "IRQTF_WARNED", value: 1)
!55 = !DIEnumerator(name: "IRQTF_AFFINITY", value: 2)
!56 = !DIEnumerator(name: "IRQTF_FORCED_THREAD", value: 3)
!57 = !DIEnumerator(name: "IRQTF_READY", value: 4)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !59, line: 10, baseType: !7, size: 32, elements: !60)
!59 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!60 = !{!61, !62}
!61 = !DIEnumerator(name: "false", value: 0)
!62 = !DIEnumerator(name: "true", value: 1)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !51, line: 60, baseType: !7, size: 32, elements: !64)
!64 = !{!65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75}
!65 = !DIEnumerator(name: "IRQS_AUTODETECT", value: 1)
!66 = !DIEnumerator(name: "IRQS_SPURIOUS_DISABLED", value: 2)
!67 = !DIEnumerator(name: "IRQS_POLL_INPROGRESS", value: 8)
!68 = !DIEnumerator(name: "IRQS_ONESHOT", value: 32)
!69 = !DIEnumerator(name: "IRQS_REPLAY", value: 64)
!70 = !DIEnumerator(name: "IRQS_WAITING", value: 128)
!71 = !DIEnumerator(name: "IRQS_PENDING", value: 512)
!72 = !DIEnumerator(name: "IRQS_SUSPENDED", value: 2048)
!73 = !DIEnumerator(name: "IRQS_TIMINGS", value: 4096)
!74 = !DIEnumerator(name: "IRQS_NMI", value: 8192)
!75 = !DIEnumerator(name: "IRQS_SYSFS", value: 16384)
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !77, line: 227, baseType: !7, size: 32, elements: !78)
!77 = !DIFile(filename: "./include/linux/irq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ce91671074049198389009db13b88160")
!78 = !{!79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102}
!79 = !DIEnumerator(name: "IRQD_TRIGGER_MASK", value: 15)
!80 = !DIEnumerator(name: "IRQD_SETAFFINITY_PENDING", value: 256)
!81 = !DIEnumerator(name: "IRQD_ACTIVATED", value: 512)
!82 = !DIEnumerator(name: "IRQD_NO_BALANCING", value: 1024)
!83 = !DIEnumerator(name: "IRQD_PER_CPU", value: 2048)
!84 = !DIEnumerator(name: "IRQD_AFFINITY_SET", value: 4096)
!85 = !DIEnumerator(name: "IRQD_LEVEL", value: 8192)
!86 = !DIEnumerator(name: "IRQD_WAKEUP_STATE", value: 16384)
!87 = !DIEnumerator(name: "IRQD_MOVE_PCNTXT", value: 32768)
!88 = !DIEnumerator(name: "IRQD_IRQ_DISABLED", value: 65536)
!89 = !DIEnumerator(name: "IRQD_IRQ_MASKED", value: 131072)
!90 = !DIEnumerator(name: "IRQD_IRQ_INPROGRESS", value: 262144)
!91 = !DIEnumerator(name: "IRQD_WAKEUP_ARMED", value: 524288)
!92 = !DIEnumerator(name: "IRQD_FORWARDED_TO_VCPU", value: 1048576)
!93 = !DIEnumerator(name: "IRQD_AFFINITY_MANAGED", value: 2097152)
!94 = !DIEnumerator(name: "IRQD_IRQ_STARTED", value: 4194304)
!95 = !DIEnumerator(name: "IRQD_MANAGED_SHUTDOWN", value: 8388608)
!96 = !DIEnumerator(name: "IRQD_SINGLE_TARGET", value: 16777216)
!97 = !DIEnumerator(name: "IRQD_DEFAULT_TRIGGER_SET", value: 33554432)
!98 = !DIEnumerator(name: "IRQD_CAN_RESERVE", value: 67108864)
!99 = !DIEnumerator(name: "IRQD_HANDLE_ENFORCE_IRQCTX", value: 134217728)
!100 = !DIEnumerator(name: "IRQD_AFFINITY_ON_ACTIVATE", value: 268435456)
!101 = !DIEnumerator(name: "IRQD_IRQ_ENABLED_ON_SUSPEND", value: 536870912)
!102 = !DIEnumerator(name: "IRQD_RESEND_WHEN_IN_PROGRESS", value: 1073741824)
!103 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !77, line: 77, baseType: !7, size: 32, elements: !104)
!104 = !{!105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128}
!105 = !DIEnumerator(name: "IRQ_TYPE_NONE", value: 0)
!106 = !DIEnumerator(name: "IRQ_TYPE_EDGE_RISING", value: 1)
!107 = !DIEnumerator(name: "IRQ_TYPE_EDGE_FALLING", value: 2)
!108 = !DIEnumerator(name: "IRQ_TYPE_EDGE_BOTH", value: 3)
!109 = !DIEnumerator(name: "IRQ_TYPE_LEVEL_HIGH", value: 4)
!110 = !DIEnumerator(name: "IRQ_TYPE_LEVEL_LOW", value: 8)
!111 = !DIEnumerator(name: "IRQ_TYPE_LEVEL_MASK", value: 12)
!112 = !DIEnumerator(name: "IRQ_TYPE_SENSE_MASK", value: 15)
!113 = !DIEnumerator(name: "IRQ_TYPE_DEFAULT", value: 15)
!114 = !DIEnumerator(name: "IRQ_TYPE_PROBE", value: 16)
!115 = !DIEnumerator(name: "IRQ_LEVEL", value: 256)
!116 = !DIEnumerator(name: "IRQ_PER_CPU", value: 512)
!117 = !DIEnumerator(name: "IRQ_NOPROBE", value: 1024)
!118 = !DIEnumerator(name: "IRQ_NOREQUEST", value: 2048)
!119 = !DIEnumerator(name: "IRQ_NOAUTOEN", value: 4096)
!120 = !DIEnumerator(name: "IRQ_NO_BALANCING", value: 8192)
!121 = !DIEnumerator(name: "IRQ_MOVE_PCNTXT", value: 16384)
!122 = !DIEnumerator(name: "IRQ_NESTED_THREAD", value: 32768)
!123 = !DIEnumerator(name: "IRQ_NOTHREAD", value: 65536)
!124 = !DIEnumerator(name: "IRQ_PER_CPU_DEVID", value: 131072)
!125 = !DIEnumerator(name: "IRQ_IS_POLLED", value: 262144)
!126 = !DIEnumerator(name: "IRQ_DISABLE_UNLAZY", value: 524288)
!127 = !DIEnumerator(name: "IRQ_HIDDEN", value: 1048576)
!128 = !DIEnumerator(name: "IRQ_NO_DEBUG", value: 2097152)
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !130, line: 6, baseType: !7, size: 32, elements: !131)
!130 = !DIFile(filename: "kernel/irq/settings.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "472defa47e63f7ff01ae8d2992e315d8")
!131 = !{!132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147}
!132 = !DIEnumerator(name: "_IRQ_DEFAULT_INIT_FLAGS", value: 0)
!133 = !DIEnumerator(name: "_IRQ_PER_CPU", value: 512)
!134 = !DIEnumerator(name: "_IRQ_LEVEL", value: 256)
!135 = !DIEnumerator(name: "_IRQ_NOPROBE", value: 1024)
!136 = !DIEnumerator(name: "_IRQ_NOREQUEST", value: 2048)
!137 = !DIEnumerator(name: "_IRQ_NOTHREAD", value: 65536)
!138 = !DIEnumerator(name: "_IRQ_NOAUTOEN", value: 4096)
!139 = !DIEnumerator(name: "_IRQ_MOVE_PCNTXT", value: 16384)
!140 = !DIEnumerator(name: "_IRQ_NO_BALANCING", value: 8192)
!141 = !DIEnumerator(name: "_IRQ_NESTED_THREAD", value: 32768)
!142 = !DIEnumerator(name: "_IRQ_PER_CPU_DEVID", value: 131072)
!143 = !DIEnumerator(name: "_IRQ_IS_POLLED", value: 262144)
!144 = !DIEnumerator(name: "_IRQ_DISABLE_UNLAZY", value: 524288)
!145 = !DIEnumerator(name: "_IRQ_HIDDEN", value: 1048576)
!146 = !DIEnumerator(name: "_IRQ_NO_DEBUG", value: 2097152)
!147 = !DIEnumerator(name: "_IRQF_MODIFY_MASK", value: 2096911)
!148 = !{!149, !150, !151, !152, !154, !153, !155, !158, !165, !7, !174}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!151 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !158)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !160, line: 26, size: 192, elements: !161)
!160 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!161 = !{!162, !163, !164}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !159, file: !160, line: 27, baseType: !149, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !159, file: !160, line: 28, baseType: !149, size: 64, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !159, file: !160, line: 29, baseType: !151, size: 32, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !168, line: 19, size: 64, elements: !169)
!168 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!169 = !{!170}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !167, file: !168, line: 19, baseType: !171, size: 64)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 64, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 1)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !175, line: 21, baseType: !176)
!175 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !177, line: 27, baseType: !7)
!177 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!178 = !{!0, !179, !181, !2595, !2600, !2603, !2622, !2627, !2632, !2637, !2642, !2644, !2649, !2654, !2656, !2659, !2661, !2666, !2671, !2673, !2675, !2677, !2679, !2681, !2684, !2690, !2719, !2721, !2751, !2753}
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_no_action263", scope: !2, file: !3, line: 50, type: !149, isLocal: true, isDefinition: true)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(name: "__already_done", scope: !183, file: !3, line: 161, type: !240, isLocal: true, isDefinition: true)
!183 = distinct !DISubprogram(name: "__handle_irq_event_percpu", scope: !3, file: !3, line: 139, type: !184, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2563)
!184 = !DISubroutineType(types: !185)
!185 = !{!186, !187}
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !14, line: 17, baseType: !13)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_desc", file: !189, line: 55, size: 3584, align: 512, elements: !190)
!189 = !DIFile(filename: "./include/linux/irqdesc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "435ffcdb49377a4c91932ebe21d66dca")
!190 = !{!191, !204, !303, !304, !310, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1837, !1838, !1839, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !2205, !2206, !2207, !2561, !2562}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "irq_common_data", scope: !188, file: !189, line: 56, baseType: !192, size: 320)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_common_data", file: !77, line: 147, size: 320, elements: !193)
!193 = !{!194, !195, !196, !197, !200, !203}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "state_use_accessors", scope: !192, file: !77, line: 148, baseType: !7, size: 32)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !192, file: !77, line: 150, baseType: !7, size: 32, offset: 32)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "handler_data", scope: !192, file: !77, line: 152, baseType: !149, size: 64, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "msi_desc", scope: !192, file: !77, line: 153, baseType: !198, size: 64, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_desc", file: !77, line: 129, flags: DIFlagFwdDecl)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "affinity", scope: !192, file: !77, line: 155, baseType: !201, size: 64, offset: 192)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !168, line: 913, baseType: !202)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 64, elements: !172)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "effective_affinity", scope: !192, file: !77, line: 158, baseType: !201, size: 64, offset: 256)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "irq_data", scope: !188, file: !189, line: 57, baseType: !205, size: 448, offset: 320)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !77, line: 179, size: 448, elements: !206)
!206 = !{!207, !208, !209, !210, !212, !297, !301, !302}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !205, file: !77, line: 180, baseType: !174, size: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !205, file: !77, line: 181, baseType: !7, size: 32, offset: 32)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq", scope: !205, file: !77, line: 182, baseType: !153, size: 64, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !205, file: !77, line: 183, baseType: !211, size: 64, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !205, file: !77, line: 184, baseType: !213, size: 64, offset: 192)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip", file: !77, line: 501, size: 2112, elements: !215)
!215 = !{!216, !220, !225, !229, !230, !231, !232, !233, !234, !235, !236, !243, !247, !251, !252, !253, !254, !255, !256, !257, !258, !264, !265, !266, !272, !273, !278, !282, !286, !290, !294, !295, !296}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !214, file: !77, line: 502, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !219)
!219 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "irq_startup", scope: !214, file: !77, line: 503, baseType: !221, size: 64, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!7, !224}
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "irq_shutdown", scope: !214, file: !77, line: 504, baseType: !226, size: 64, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{null, !224}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "irq_enable", scope: !214, file: !77, line: 505, baseType: !226, size: 64, offset: 192)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "irq_disable", scope: !214, file: !77, line: 506, baseType: !226, size: 64, offset: 256)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "irq_ack", scope: !214, file: !77, line: 508, baseType: !226, size: 64, offset: 320)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask", scope: !214, file: !77, line: 509, baseType: !226, size: 64, offset: 384)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask_ack", scope: !214, file: !77, line: 510, baseType: !226, size: 64, offset: 448)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "irq_unmask", scope: !214, file: !77, line: 511, baseType: !226, size: 64, offset: 512)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "irq_eoi", scope: !214, file: !77, line: 512, baseType: !226, size: 64, offset: 576)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_affinity", scope: !214, file: !77, line: 514, baseType: !237, size: 64, offset: 640)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{!151, !224, !165, !240}
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !241, line: 35, baseType: !242)
!241 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!242 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "irq_retrigger", scope: !214, file: !77, line: 515, baseType: !244, size: 64, offset: 704)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!151, !224}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_type", scope: !214, file: !77, line: 516, baseType: !248, size: 64, offset: 768)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{!151, !224, !7}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_wake", scope: !214, file: !77, line: 517, baseType: !248, size: 64, offset: 832)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_lock", scope: !214, file: !77, line: 519, baseType: !226, size: 64, offset: 896)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_sync_unlock", scope: !214, file: !77, line: 520, baseType: !226, size: 64, offset: 960)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "irq_suspend", scope: !214, file: !77, line: 526, baseType: !226, size: 64, offset: 1024)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "irq_resume", scope: !214, file: !77, line: 527, baseType: !226, size: 64, offset: 1088)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pm_shutdown", scope: !214, file: !77, line: 528, baseType: !226, size: 64, offset: 1152)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "irq_calc_mask", scope: !214, file: !77, line: 530, baseType: !226, size: 64, offset: 1216)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "irq_print_chip", scope: !214, file: !77, line: 532, baseType: !259, size: 64, offset: 1280)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{null, !224, !262}
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !77, line: 27, flags: DIFlagFwdDecl)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "irq_request_resources", scope: !214, file: !77, line: 533, baseType: !244, size: 64, offset: 1344)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "irq_release_resources", scope: !214, file: !77, line: 534, baseType: !226, size: 64, offset: 1408)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "irq_compose_msi_msg", scope: !214, file: !77, line: 536, baseType: !267, size: 64, offset: 1472)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{null, !224, !270}
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_msg", file: !77, line: 29, flags: DIFlagFwdDecl)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "irq_write_msi_msg", scope: !214, file: !77, line: 537, baseType: !267, size: 64, offset: 1536)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get_irqchip_state", scope: !214, file: !77, line: 539, baseType: !274, size: 64, offset: 1600)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{!151, !224, !5, !277}
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_irqchip_state", scope: !214, file: !77, line: 540, baseType: !279, size: 64, offset: 1664)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!151, !224, !5, !240}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_vcpu_affinity", scope: !214, file: !77, line: 542, baseType: !283, size: 64, offset: 1728)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DISubroutineType(types: !285)
!285 = !{!151, !224, !149}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_single", scope: !214, file: !77, line: 544, baseType: !287, size: 64, offset: 1792)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{null, !224, !7}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_mask", scope: !214, file: !77, line: 545, baseType: !291, size: 64, offset: 1856)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{null, !224, !165}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_setup", scope: !214, file: !77, line: 547, baseType: !244, size: 64, offset: 1920)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_teardown", scope: !214, file: !77, line: 548, baseType: !226, size: 64, offset: 1984)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !214, file: !77, line: 550, baseType: !153, size: 64, offset: 2048)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !205, file: !77, line: 185, baseType: !298, size: 64, offset: 256)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !300, line: 13, flags: DIFlagFwdDecl)
!300 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!301 = !DIDerivedType(tag: DW_TAG_member, name: "parent_data", scope: !205, file: !77, line: 187, baseType: !224, size: 64, offset: 320)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "chip_data", scope: !205, file: !77, line: 189, baseType: !149, size: 64, offset: 384)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "kstat_irqs", scope: !188, file: !189, line: 58, baseType: !150, size: 64, offset: 768)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "handle_irq", scope: !188, file: !189, line: 59, baseType: !305, size: 64, offset: 832)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_flow_handler_t", file: !306, line: 12, baseType: !307)
!306 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12f502f2f1e55658b1d5aa186ee65843")
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{null, !187}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !188, file: !189, line: 60, baseType: !311, size: 64, offset: 896)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irqaction", file: !6, line: 118, size: 1024, align: 512, elements: !313)
!313 = !{!314, !319, !320, !321, !322, !323, !1815, !1816, !1817, !1818, !1819, !1820, !1821}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !312, file: !6, line: 119, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !6, line: 100, baseType: !316)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{!186, !151, !149}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "dev_id", scope: !312, file: !6, line: 120, baseType: !149, size: 64, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_dev_id", scope: !312, file: !6, line: 121, baseType: !149, size: 64, offset: 128)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !312, file: !6, line: 122, baseType: !311, size: 64, offset: 192)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "thread_fn", scope: !312, file: !6, line: 123, baseType: !315, size: 64, offset: 256)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !312, file: !6, line: 124, baseType: !324, size: 64, offset: 320)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !326, line: 746, size: 58368, elements: !327)
!326 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!327 = !{!328, !336, !337, !338, !348, !349, !350, !351, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !443, !454, !581, !585, !588, !619, !620, !621, !622, !626, !628, !629, !630, !631, !632, !633, !644, !645, !648, !649, !650, !651, !652, !653, !654, !655, !662, !663, !670, !671, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !973, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !1029, !1031, !1032, !1033, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1077, !1083, !1087, !1088, !1089, !1092, !1096, !1099, !1106, !1111, !1114, !1117, !1120, !1123, !1126, !1129, !1135, !1136, !1137, !1143, !1144, !1148, !1149, !1150, !1153, !1161, !1162, !1171, !1180, !1181, !1182, !1183, !1184, !1189, !1190, !1191, !1194, !1195, !1198, !1201, !1204, !1207, !1210, !1211, !1298, !1309, !1310, !1311, !1312, !1318, !1323, !1324, !1325, !1328, !1329, !1332, !1335, !1336, !1339, !1340, !1341, !1344, !1345, !1346, !1349, !1350, !1351, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1383, !1386, !1454, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1466, !1538, !1540, !1541, !1542, !1543, !1544, !1556, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1586, !1587, !1588}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !325, file: !326, line: 752, baseType: !329, size: 192)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !330, line: 56, size: 192, elements: !331)
!330 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!331 = !{!332, !333, !334, !335}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !329, file: !330, line: 57, baseType: !153, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !329, file: !330, line: 58, baseType: !153, size: 64, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !329, file: !330, line: 59, baseType: !174, size: 32, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !329, file: !330, line: 61, baseType: !174, size: 32, offset: 160)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !325, file: !326, line: 754, baseType: !7, size: 32, offset: 192)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !325, file: !326, line: 767, baseType: !149, size: 64, offset: 256)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !325, file: !326, line: 768, baseType: !339, size: 32, offset: 320)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !340, line: 113, baseType: !341)
!340 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !340, line: 111, size: 32, elements: !342)
!342 = !{!343}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !341, file: !340, line: 112, baseType: !344, size: 32)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !241, line: 174, baseType: !345)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !241, line: 172, size: 32, elements: !346)
!346 = !{!347}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !345, file: !241, line: 173, baseType: !151, size: 32)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !325, file: !326, line: 770, baseType: !7, size: 32, offset: 352)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !325, file: !326, line: 771, baseType: !7, size: 32, offset: 384)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !325, file: !326, line: 774, baseType: !151, size: 32, offset: 416)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !325, file: !326, line: 775, baseType: !352, size: 128, offset: 448)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !353, line: 58, size: 128, elements: !354)
!353 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!354 = !{!355, !361, !366, !370}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !352, file: !353, line: 59, baseType: !356, size: 64)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !357, line: 60, size: 64, elements: !358)
!357 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!358 = !{!359}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !356, file: !357, line: 61, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, scope: !352, file: !353, line: 60, baseType: !362, size: 32, offset: 64)
!362 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !352, file: !353, line: 60, size: 32, elements: !363)
!363 = !{!364, !365}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !362, file: !353, line: 61, baseType: !7, size: 32)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !362, file: !353, line: 62, baseType: !344, size: 32)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !352, file: !353, line: 65, baseType: !367, size: 16, offset: 96)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !175, line: 19, baseType: !368)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !177, line: 24, baseType: !369)
!369 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !352, file: !353, line: 65, baseType: !367, size: 16, offset: 112)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !325, file: !326, line: 776, baseType: !7, size: 32, offset: 576)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !325, file: !326, line: 777, baseType: !153, size: 64, offset: 640)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !325, file: !326, line: 778, baseType: !324, size: 64, offset: 704)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !325, file: !326, line: 787, baseType: !151, size: 32, offset: 768)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !325, file: !326, line: 788, baseType: !151, size: 32, offset: 800)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !325, file: !326, line: 790, baseType: !151, size: 32, offset: 832)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !325, file: !326, line: 792, baseType: !151, size: 32, offset: 864)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !325, file: !326, line: 793, baseType: !151, size: 32, offset: 896)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !325, file: !326, line: 794, baseType: !151, size: 32, offset: 928)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !325, file: !326, line: 795, baseType: !7, size: 32, offset: 960)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !325, file: !326, line: 797, baseType: !382, size: 2048, offset: 1024)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !326, line: 551, size: 2048, elements: !383)
!383 = !{!384, !389, !397, !401, !402, !408, !409, !410, !411, !412, !413, !417, !418, !419, !420, !422, !425, !426, !427}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !382, file: !326, line: 553, baseType: !385, size: 128)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !326, line: 411, size: 128, elements: !386)
!386 = !{!387, !388}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !385, file: !326, line: 412, baseType: !153, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !385, file: !326, line: 413, baseType: !174, size: 32, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !382, file: !326, line: 554, baseType: !390, size: 192, align: 64, offset: 128)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !391, line: 5, size: 192, align: 64, elements: !392)
!391 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!392 = !{!393, !394, !396}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !390, file: !391, line: 6, baseType: !153, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !390, file: !391, line: 7, baseType: !395, size: 64, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !390, file: !391, line: 8, baseType: !395, size: 64, offset: 128)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !382, file: !326, line: 555, baseType: !398, size: 64, offset: 320)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !175, line: 23, baseType: !399)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !177, line: 31, baseType: !400)
!400 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !382, file: !326, line: 556, baseType: !398, size: 64, offset: 384)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !382, file: !326, line: 558, baseType: !403, size: 128, offset: 448)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !241, line: 190, size: 128, elements: !404)
!404 = !{!405, !407}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !403, file: !241, line: 191, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !403, file: !241, line: 191, baseType: !406, size: 64, offset: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !382, file: !326, line: 559, baseType: !7, size: 32, offset: 576)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !382, file: !326, line: 561, baseType: !398, size: 64, offset: 640)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !382, file: !326, line: 562, baseType: !398, size: 64, offset: 704)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !382, file: !326, line: 563, baseType: !398, size: 64, offset: 768)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !382, file: !326, line: 564, baseType: !398, size: 64, offset: 832)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !382, file: !326, line: 565, baseType: !414, size: 64, offset: 896)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !175, line: 22, baseType: !415)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !177, line: 30, baseType: !416)
!416 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !382, file: !326, line: 566, baseType: !398, size: 64, offset: 960)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !382, file: !326, line: 568, baseType: !398, size: 64, offset: 1024)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !382, file: !326, line: 571, baseType: !151, size: 32, offset: 1088)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !382, file: !326, line: 572, baseType: !421, size: 64, offset: 1152)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !382, file: !326, line: 574, baseType: !423, size: 64, offset: 1216)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !326, line: 49, flags: DIFlagFwdDecl)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !382, file: !326, line: 576, baseType: !423, size: 64, offset: 1280)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !382, file: !326, line: 578, baseType: !153, size: 64, offset: 1344)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !382, file: !326, line: 588, baseType: !428, size: 512, align: 512, offset: 1536)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !326, line: 497, size: 512, align: 512, elements: !429)
!429 = !{!430, !431, !432, !433, !434, !435, !436, !437, !438}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !428, file: !326, line: 498, baseType: !398, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !428, file: !326, line: 499, baseType: !398, size: 64, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !428, file: !326, line: 500, baseType: !398, size: 64, offset: 128)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !428, file: !326, line: 501, baseType: !174, size: 32, offset: 192)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !428, file: !326, line: 502, baseType: !174, size: 32, offset: 224)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !428, file: !326, line: 503, baseType: !153, size: 64, offset: 256)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !428, file: !326, line: 504, baseType: !153, size: 64, offset: 320)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !428, file: !326, line: 505, baseType: !153, size: 64, offset: 384)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !428, file: !326, line: 506, baseType: !439, size: 64, align: 64, offset: 448)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !326, line: 445, size: 64, align: 64, elements: !440)
!440 = !{!441, !442}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !439, file: !326, line: 446, baseType: !7, size: 32)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !439, file: !326, line: 447, baseType: !7, size: 32, offset: 32)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !325, file: !326, line: 798, baseType: !444, size: 384, offset: 3072)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !326, line: 592, size: 384, elements: !445)
!445 = !{!446, !447, !448, !449, !450, !451, !452}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !444, file: !326, line: 593, baseType: !403, size: 128)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !444, file: !326, line: 594, baseType: !153, size: 64, offset: 128)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !444, file: !326, line: 595, baseType: !153, size: 64, offset: 192)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !444, file: !326, line: 596, baseType: !7, size: 32, offset: 256)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !444, file: !326, line: 597, baseType: !369, size: 16, offset: 288)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !444, file: !326, line: 598, baseType: !369, size: 16, offset: 304)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !444, file: !326, line: 600, baseType: !453, size: 64, offset: 320)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !325, file: !326, line: 799, baseType: !455, size: 1792, offset: 3456)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !326, line: 610, size: 1792, elements: !456)
!456 = !{!457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !578, !579}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !455, file: !326, line: 611, baseType: !390, size: 192, align: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !455, file: !326, line: 618, baseType: !398, size: 64, offset: 192)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !455, file: !326, line: 619, baseType: !398, size: 64, offset: 256)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !455, file: !326, line: 620, baseType: !398, size: 64, offset: 320)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !455, file: !326, line: 621, baseType: !398, size: 64, offset: 384)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !455, file: !326, line: 622, baseType: !398, size: 64, offset: 448)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !455, file: !326, line: 629, baseType: !414, size: 64, offset: 512)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !455, file: !326, line: 630, baseType: !398, size: 64, offset: 576)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !455, file: !326, line: 631, baseType: !7, size: 32, offset: 640)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !455, file: !326, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !455, file: !326, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !455, file: !326, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !455, file: !326, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !455, file: !326, line: 662, baseType: !471, size: 512, offset: 704)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !472)
!472 = !{!473, !481, !482, !487, !574, !575, !576, !577}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !471, file: !20, line: 119, baseType: !474, size: 256)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !475, line: 9, size: 256, elements: !476)
!475 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!476 = !{!477, !478}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !474, file: !475, line: 10, baseType: !390, size: 192, align: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !474, file: !475, line: 11, baseType: !479, size: 64, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !480, line: 29, baseType: !414)
!480 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!481 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !471, file: !20, line: 120, baseType: !479, size: 64, offset: 256)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !471, file: !20, line: 121, baseType: !483, size: 64, offset: 320)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{!19, !486}
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !471, file: !20, line: 122, baseType: !488, size: 64, offset: 384)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !490)
!490 = !{!491, !542, !543, !547, !557, !558, !569, !573}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !489, file: !20, line: 160, baseType: !492, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 215, size: 4608, align: 512, elements: !494)
!494 = !{!495, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !493, file: !20, line: 216, baseType: !496, size: 32)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !497, line: 23, baseType: !498)
!497 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !497, line: 14, size: 32, elements: !499)
!499 = !{!500}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !498, file: !497, line: 15, baseType: !501, size: 32)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !502, line: 44, baseType: !503)
!502 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !502, line: 14, size: 32, elements: !504)
!504 = !{!505}
!505 = !DIDerivedType(tag: DW_TAG_member, scope: !503, file: !502, line: 15, baseType: !506, size: 32)
!506 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !503, file: !502, line: 15, size: 32, elements: !507)
!507 = !{!508, !509, !517}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !506, file: !502, line: 16, baseType: !344, size: 32)
!509 = !DIDerivedType(tag: DW_TAG_member, scope: !506, file: !502, line: 24, baseType: !510, size: 16)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !506, file: !502, line: 24, size: 16, elements: !511)
!511 = !{!512, !516}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !510, file: !502, line: 25, baseType: !513, size: 8)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !175, line: 17, baseType: !514)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !177, line: 21, baseType: !515)
!515 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !510, file: !502, line: 26, baseType: !513, size: 8, offset: 8)
!517 = !DIDerivedType(tag: DW_TAG_member, scope: !506, file: !502, line: 28, baseType: !518, size: 32)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !506, file: !502, line: 28, size: 32, elements: !519)
!519 = !{!520, !521}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !518, file: !502, line: 29, baseType: !367, size: 16)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !518, file: !502, line: 30, baseType: !367, size: 16, offset: 16)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !493, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !493, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !493, file: !20, line: 219, baseType: !7, size: 32, offset: 96)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !493, file: !20, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !493, file: !20, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !493, file: !20, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !493, file: !20, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !493, file: !20, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !493, file: !20, line: 226, baseType: !7, size: 32, offset: 160)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !493, file: !20, line: 227, baseType: !369, size: 16, offset: 192)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !493, file: !20, line: 228, baseType: !369, size: 16, offset: 208)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !493, file: !20, line: 229, baseType: !7, size: 32, offset: 224)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !493, file: !20, line: 235, baseType: !479, size: 64, offset: 256)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !493, file: !20, line: 236, baseType: !486, size: 64, offset: 320)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !493, file: !20, line: 237, baseType: !479, size: 64, offset: 384)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !493, file: !20, line: 238, baseType: !486, size: 64, offset: 448)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !493, file: !20, line: 239, baseType: !539, size: 4096, align: 512, offset: 512)
!539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 4096, align: 512, elements: !540)
!540 = !{!541}
!541 = !DISubrange(count: 8)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !489, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !489, file: !20, line: 162, baseType: !544, size: 32, offset: 96)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !241, line: 32, baseType: !545)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !546, line: 96, baseType: !151)
!546 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!547 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !489, file: !20, line: 163, baseType: !548, size: 32, offset: 128)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !549, line: 274, baseType: !550)
!549 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !549, line: 274, size: 32, elements: !551)
!551 = !{!552}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !550, file: !549, line: 274, baseType: !553, size: 32)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !549, line: 69, baseType: !554)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !549, line: 64, size: 32, elements: !555)
!555 = !{!556}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !554, file: !549, line: 65, baseType: !7, size: 32)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !489, file: !20, line: 164, baseType: !486, size: 64, offset: 192)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !489, file: !20, line: 165, baseType: !559, size: 128, offset: 256)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !475, line: 14, size: 128, elements: !560)
!560 = !{!561}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !559, file: !475, line: 15, baseType: !562, size: 128)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !391, line: 26, size: 128, elements: !563)
!563 = !{!564, !568}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !562, file: !391, line: 27, baseType: !565, size: 64)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !391, line: 12, size: 64, elements: !566)
!566 = !{!567}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !565, file: !391, line: 13, baseType: !395, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !562, file: !391, line: 28, baseType: !395, size: 64, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !489, file: !20, line: 166, baseType: !570, size: 64, offset: 384)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DISubroutineType(types: !572)
!572 = !{!479}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !489, file: !20, line: 167, baseType: !479, size: 64, offset: 448)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !471, file: !20, line: 123, baseType: !513, size: 8, offset: 448)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !471, file: !20, line: 124, baseType: !513, size: 8, offset: 456)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !471, file: !20, line: 125, baseType: !513, size: 8, offset: 464)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !471, file: !20, line: 126, baseType: !513, size: 8, offset: 472)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !455, file: !326, line: 671, baseType: !471, size: 512, offset: 1216)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !455, file: !326, line: 679, baseType: !580, size: 64, offset: 1728)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !325, file: !326, line: 800, baseType: !582, size: 64, offset: 5248)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !584)
!584 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !326, line: 800, flags: DIFlagFwdDecl)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !325, file: !326, line: 809, baseType: !586, size: 64, offset: 5312)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !326, line: 70, flags: DIFlagFwdDecl)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !325, file: !326, line: 825, baseType: !589, size: 2048, align: 512, offset: 5632)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !326, line: 509, size: 2048, align: 512, elements: !590)
!590 = !{!591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !589, file: !326, line: 511, baseType: !398, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !589, file: !326, line: 512, baseType: !398, size: 64, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !589, file: !326, line: 513, baseType: !398, size: 64, offset: 128)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !589, file: !326, line: 514, baseType: !398, size: 64, offset: 192)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !589, file: !326, line: 515, baseType: !398, size: 64, offset: 256)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !589, file: !326, line: 516, baseType: !398, size: 64, offset: 320)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !589, file: !326, line: 518, baseType: !398, size: 64, offset: 384)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !589, file: !326, line: 519, baseType: !398, size: 64, offset: 448)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !589, file: !326, line: 520, baseType: !414, size: 64, offset: 512)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !589, file: !326, line: 522, baseType: !398, size: 64, offset: 576)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !589, file: !326, line: 523, baseType: !398, size: 64, offset: 640)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !589, file: !326, line: 524, baseType: !414, size: 64, offset: 704)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !589, file: !326, line: 526, baseType: !414, size: 64, offset: 768)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !589, file: !326, line: 527, baseType: !398, size: 64, offset: 832)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !589, file: !326, line: 529, baseType: !398, size: 64, offset: 896)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !589, file: !326, line: 530, baseType: !398, size: 64, offset: 960)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !589, file: !326, line: 531, baseType: !398, size: 64, offset: 1024)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !589, file: !326, line: 532, baseType: !398, size: 64, offset: 1088)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !589, file: !326, line: 533, baseType: !398, size: 64, offset: 1152)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !589, file: !326, line: 535, baseType: !398, size: 64, offset: 1216)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !589, file: !326, line: 536, baseType: !398, size: 64, offset: 1280)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !589, file: !326, line: 537, baseType: !398, size: 64, offset: 1344)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !589, file: !326, line: 538, baseType: !398, size: 64, offset: 1408)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !589, file: !326, line: 539, baseType: !398, size: 64, offset: 1472)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !589, file: !326, line: 540, baseType: !398, size: 64, offset: 1536)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !589, file: !326, line: 541, baseType: !398, size: 64, offset: 1600)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !589, file: !326, line: 542, baseType: !398, size: 64, offset: 1664)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !589, file: !326, line: 543, baseType: !398, size: 64, offset: 1728)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !325, file: !326, line: 833, baseType: !7, size: 32, offset: 7680)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !325, file: !326, line: 836, baseType: !7, size: 32, offset: 7712)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !325, file: !326, line: 837, baseType: !151, size: 32, offset: 7744)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !325, file: !326, line: 838, baseType: !623, size: 64, offset: 7808)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !625)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !168, line: 19, baseType: !167)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !325, file: !326, line: 839, baseType: !627, size: 64, offset: 7872)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !325, file: !326, line: 840, baseType: !625, size: 64, offset: 7936)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !325, file: !326, line: 841, baseType: !149, size: 64, offset: 8000)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !325, file: !326, line: 843, baseType: !369, size: 16, offset: 8064)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !325, file: !326, line: 845, baseType: !369, size: 16, offset: 8080)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !325, file: !326, line: 848, baseType: !151, size: 32, offset: 8096)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !325, file: !326, line: 849, baseType: !634, size: 32, offset: 8128)
!634 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !326, line: 718, size: 32, elements: !635)
!635 = !{!636, !643}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !634, file: !326, line: 724, baseType: !637, size: 32)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !634, file: !326, line: 719, size: 32, elements: !638)
!638 = !{!639, !640, !641, !642}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !637, file: !326, line: 720, baseType: !513, size: 8)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !637, file: !326, line: 721, baseType: !513, size: 8, offset: 8)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !637, file: !326, line: 722, baseType: !513, size: 8, offset: 16)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !637, file: !326, line: 723, baseType: !513, size: 8, offset: 24)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !634, file: !326, line: 725, baseType: !174, size: 32)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !325, file: !326, line: 850, baseType: !403, size: 128, offset: 8192)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !325, file: !326, line: 851, baseType: !646, size: 64, offset: 8320)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !326, line: 60, flags: DIFlagFwdDecl)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !325, file: !326, line: 855, baseType: !153, size: 64, offset: 8384)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !325, file: !326, line: 856, baseType: !513, size: 8, offset: 8448)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !325, file: !326, line: 857, baseType: !513, size: 8, offset: 8456)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !325, file: !326, line: 858, baseType: !151, size: 32, offset: 8480)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !325, file: !326, line: 859, baseType: !403, size: 128, offset: 8512)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !325, file: !326, line: 860, baseType: !151, size: 32, offset: 8640)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !325, file: !326, line: 861, baseType: !403, size: 128, offset: 8704)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !325, file: !326, line: 873, baseType: !656, size: 256, offset: 8832)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !326, line: 376, size: 256, elements: !657)
!657 = !{!658, !659, !660, !661}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !656, file: !326, line: 381, baseType: !153, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !656, file: !326, line: 384, baseType: !400, size: 64, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !656, file: !326, line: 389, baseType: !400, size: 64, offset: 128)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !656, file: !326, line: 392, baseType: !400, size: 64, offset: 192)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !325, file: !326, line: 875, baseType: !403, size: 128, offset: 9088)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !325, file: !326, line: 877, baseType: !664, size: 320, offset: 9216)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !665, line: 86, size: 320, elements: !666)
!665 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!666 = !{!667, !668, !669}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !664, file: !665, line: 87, baseType: !151, size: 32)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !664, file: !665, line: 88, baseType: !403, size: 128, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !664, file: !665, line: 89, baseType: !403, size: 128, offset: 192)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !325, file: !326, line: 878, baseType: !390, size: 192, align: 64, offset: 9536)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !325, file: !326, line: 881, baseType: !672, size: 64, offset: 9728)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !674, line: 733, size: 10240, elements: !675)
!674 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!675 = !{!676, !890}
!676 = !DIDerivedType(tag: DW_TAG_member, scope: !673, file: !674, line: 734, baseType: !677, size: 10240)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !673, file: !674, line: 734, size: 10240, elements: !678)
!678 = !{!679, !683, !705, !712, !713, !714, !715, !716, !717, !725, !726, !727, !733, !734, !741, !742, !743, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !784, !798, !801, !857, !858, !859, !862, !865, !866, !869, !870, !871, !877, !878}
!679 = !DIDerivedType(tag: DW_TAG_member, scope: !677, file: !674, line: 739, baseType: !680, size: 512, align: 512)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !677, file: !674, line: 739, size: 512, align: 512, elements: !681)
!681 = !{!682}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !680, file: !674, line: 747, baseType: !344, size: 32)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !677, file: !674, line: 750, baseType: !684, size: 128, offset: 512)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !685, line: 218, size: 128, elements: !686)
!685 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!686 = !{!687, !703, !704}
!687 = !DIDerivedType(tag: DW_TAG_member, scope: !684, file: !685, line: 219, baseType: !688, size: 32)
!688 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !684, file: !685, line: 219, size: 32, elements: !689)
!689 = !{!690, !699}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !688, file: !685, line: 220, baseType: !691, size: 32)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !692, line: 29, baseType: !693)
!692 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !692, line: 17, size: 32, elements: !694)
!694 = !{!695}
!695 = !DIDerivedType(tag: DW_TAG_member, scope: !693, file: !692, line: 18, baseType: !696, size: 32)
!696 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !693, file: !692, line: 18, size: 32, elements: !697)
!697 = !{!698}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !696, file: !692, line: 19, baseType: !498, size: 32)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !688, file: !685, line: 221, baseType: !700)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !685, line: 197, baseType: !701)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !685, line: 197, elements: !702)
!702 = !{}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !684, file: !685, line: 223, baseType: !7, size: 32, offset: 32)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !684, file: !685, line: 224, baseType: !149, size: 64, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !677, file: !674, line: 752, baseType: !706, size: 64, offset: 640)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DISubroutineType(types: !708)
!708 = !{!153, !709, !153, !153, !153, !153}
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !711, line: 537, flags: DIFlagFwdDecl)
!711 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!712 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !677, file: !674, line: 756, baseType: !153, size: 64, offset: 704)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !677, file: !674, line: 757, baseType: !153, size: 64, offset: 768)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !677, file: !674, line: 760, baseType: !153, size: 64, offset: 832)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !677, file: !674, line: 761, baseType: !153, size: 64, offset: 896)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !677, file: !674, line: 763, baseType: !153, size: 64, offset: 960)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !677, file: !674, line: 764, baseType: !718, size: 64, offset: 1024)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !711, line: 299, baseType: !720)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !711, line: 299, size: 64, elements: !721)
!721 = !{!722}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !720, file: !711, line: 299, baseType: !723, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !724, line: 18, baseType: !153)
!724 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!725 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !677, file: !674, line: 773, baseType: !344, size: 32, offset: 1088)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !677, file: !674, line: 785, baseType: !344, size: 32, offset: 1120)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !677, file: !674, line: 795, baseType: !728, size: 64, offset: 1152)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !674, line: 726, size: 128, elements: !730)
!730 = !{!731, !732}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !729, file: !674, line: 727, baseType: !398, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !729, file: !674, line: 728, baseType: !151, size: 32, offset: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !677, file: !674, line: 801, baseType: !153, size: 64, offset: 1216)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !677, file: !674, line: 804, baseType: !735, size: 64, offset: 1280)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !736, line: 13, baseType: !737)
!736 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !241, line: 181, baseType: !738)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !241, line: 179, size: 64, elements: !739)
!739 = !{!740}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !738, file: !241, line: 180, baseType: !414, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !677, file: !674, line: 806, baseType: !151, size: 32, offset: 1344)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !677, file: !674, line: 808, baseType: !691, size: 32, offset: 1376)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !677, file: !674, line: 823, baseType: !744, size: 320, offset: 1408)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !745, line: 48, size: 320, elements: !746)
!745 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!746 = !{!747, !748, !749, !754, !755}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !744, file: !745, line: 49, baseType: !735, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !744, file: !745, line: 55, baseType: !735, size: 64, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !744, file: !745, line: 57, baseType: !750, size: 32, offset: 128)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !751, line: 15, size: 32, elements: !752)
!751 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!752 = !{!753}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !750, file: !751, line: 20, baseType: !344, size: 32)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !744, file: !745, line: 59, baseType: !496, size: 32, offset: 160)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !744, file: !745, line: 60, baseType: !403, size: 128, offset: 192)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !677, file: !674, line: 825, baseType: !403, size: 128, offset: 1728)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !677, file: !674, line: 845, baseType: !151, size: 32, offset: 1856)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !677, file: !674, line: 849, baseType: !153, size: 64, offset: 1920)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !677, file: !674, line: 850, baseType: !153, size: 64, offset: 1984)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !677, file: !674, line: 852, baseType: !153, size: 64, offset: 2048)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !677, file: !674, line: 853, baseType: !153, size: 64, offset: 2112)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !677, file: !674, line: 854, baseType: !737, size: 64, offset: 2176)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !677, file: !674, line: 855, baseType: !153, size: 64, offset: 2240)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !677, file: !674, line: 856, baseType: !153, size: 64, offset: 2304)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !677, file: !674, line: 857, baseType: !153, size: 64, offset: 2368)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !677, file: !674, line: 858, baseType: !153, size: 64, offset: 2432)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !677, file: !674, line: 865, baseType: !553, size: 32, offset: 2496)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !677, file: !674, line: 867, baseType: !691, size: 32, offset: 2528)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !677, file: !674, line: 869, baseType: !153, size: 64, offset: 2560)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !677, file: !674, line: 869, baseType: !153, size: 64, offset: 2624)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !677, file: !674, line: 869, baseType: !153, size: 64, offset: 2688)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !677, file: !674, line: 869, baseType: !153, size: 64, offset: 2752)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !677, file: !674, line: 870, baseType: !153, size: 64, offset: 2816)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !677, file: !674, line: 870, baseType: !153, size: 64, offset: 2880)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !677, file: !674, line: 870, baseType: !153, size: 64, offset: 2944)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !677, file: !674, line: 871, baseType: !153, size: 64, offset: 3008)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !677, file: !674, line: 871, baseType: !153, size: 64, offset: 3072)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !677, file: !674, line: 871, baseType: !153, size: 64, offset: 3136)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !677, file: !674, line: 871, baseType: !153, size: 64, offset: 3200)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !677, file: !674, line: 873, baseType: !781, size: 3328, offset: 3264)
!781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 3328, elements: !782)
!782 = !{!783}
!783 = !DISubrange(count: 52)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !677, file: !674, line: 875, baseType: !785, size: 1280, offset: 6592)
!785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !786, size: 1280, elements: !796)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !787, line: 22, size: 320, elements: !788)
!787 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!788 = !{!789, !790, !791, !792}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !786, file: !787, line: 23, baseType: !496, size: 32)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !786, file: !787, line: 24, baseType: !414, size: 64, offset: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !786, file: !787, line: 26, baseType: !403, size: 128, offset: 128)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !786, file: !787, line: 28, baseType: !793, size: 64, offset: 256)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !175, line: 20, baseType: !795)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !177, line: 26, baseType: !151)
!796 = !{!797}
!797 = !DISubrange(count: 4)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !677, file: !674, line: 877, baseType: !799, size: 64, offset: 7872)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !674, line: 877, flags: DIFlagFwdDecl)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !677, file: !674, line: 880, baseType: !802, size: 1088, offset: 7936)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !803, line: 72, baseType: !804)
!803 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !803, line: 23, size: 1088, elements: !805)
!805 = !{!806, !807, !808, !809, !810, !813, !814, !822, !823, !851, !852, !853}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !804, file: !803, line: 28, baseType: !398, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !804, file: !803, line: 38, baseType: !737, size: 64, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !804, file: !803, line: 40, baseType: !153, size: 64, offset: 128)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !804, file: !803, line: 43, baseType: !744, size: 320, offset: 192)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !804, file: !803, line: 44, baseType: !811, size: 64, offset: 512)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !803, line: 44, flags: DIFlagFwdDecl)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !804, file: !803, line: 48, baseType: !153, size: 64, offset: 576)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !804, file: !803, line: 59, baseType: !815, size: 256, offset: 640)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !816, line: 66, size: 256, elements: !817)
!816 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!817 = !{!818, !819, !820, !821}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !815, file: !816, line: 67, baseType: !735, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !815, file: !816, line: 68, baseType: !496, size: 32, offset: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !815, file: !816, line: 70, baseType: !750, size: 32, offset: 96)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !815, file: !816, line: 72, baseType: !403, size: 128, offset: 128)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !804, file: !803, line: 60, baseType: !149, size: 64, offset: 896)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !804, file: !803, line: 61, baseType: !824, size: 64, offset: 960)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !826)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !827, line: 13, size: 1216, elements: !828)
!827 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!828 = !{!829, !830, !831, !832, !833, !834, !835, !838, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !826, file: !827, line: 14, baseType: !149, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !826, file: !827, line: 15, baseType: !153, size: 64, offset: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !826, file: !827, line: 17, baseType: !153, size: 64, offset: 128)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !826, file: !827, line: 17, baseType: !153, size: 64, offset: 192)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !826, file: !827, line: 18, baseType: !153, size: 64, offset: 256)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !826, file: !827, line: 18, baseType: !153, size: 64, offset: 320)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !826, file: !827, line: 19, baseType: !836, size: 64, offset: 384)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !826, file: !827, line: 21, baseType: !839, size: 64, offset: 448)
!839 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !826, file: !827, line: 23, baseType: !839, size: 64, offset: 512)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !826, file: !827, line: 24, baseType: !839, size: 64, offset: 576)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !826, file: !827, line: 25, baseType: !839, size: 64, offset: 640)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !826, file: !827, line: 26, baseType: !839, size: 64, offset: 704)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !826, file: !827, line: 27, baseType: !839, size: 64, offset: 768)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !826, file: !827, line: 28, baseType: !839, size: 64, offset: 832)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !826, file: !827, line: 29, baseType: !839, size: 64, offset: 896)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !826, file: !827, line: 30, baseType: !839, size: 64, offset: 960)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !826, file: !827, line: 31, baseType: !839, size: 64, offset: 1024)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !826, file: !827, line: 32, baseType: !839, size: 64, offset: 1088)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !826, file: !827, line: 33, baseType: !839, size: 64, offset: 1152)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !804, file: !803, line: 63, baseType: !344, size: 32, offset: 1024)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !804, file: !803, line: 69, baseType: !367, size: 16, offset: 1056)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !804, file: !803, line: 70, baseType: !854, size: 16, offset: 1072)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !175, line: 18, baseType: !855)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !177, line: 23, baseType: !856)
!856 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !677, file: !674, line: 882, baseType: !153, size: 64, offset: 9024)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !677, file: !674, line: 885, baseType: !691, size: 32, offset: 9088)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !677, file: !674, line: 886, baseType: !860, size: 64, offset: 9152)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !674, line: 732, flags: DIFlagFwdDecl)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !677, file: !674, line: 901, baseType: !863, size: 64, offset: 9216)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !674, line: 901, flags: DIFlagFwdDecl)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !677, file: !674, line: 904, baseType: !709, size: 64, offset: 9280)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !677, file: !674, line: 906, baseType: !867, size: 64, offset: 9344)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !674, line: 906, flags: DIFlagFwdDecl)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !677, file: !674, line: 930, baseType: !344, size: 32, offset: 9408)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !677, file: !674, line: 933, baseType: !344, size: 32, offset: 9440)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !677, file: !674, line: 935, baseType: !872, size: 64, offset: 9472)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !31, line: 103, size: 64, elements: !873)
!873 = !{!874}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !872, file: !31, line: 104, baseType: !875, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !31, line: 101, flags: DIFlagFwdDecl)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !677, file: !674, line: 940, baseType: !735, size: 64, offset: 9536)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !677, file: !674, line: 942, baseType: !879, size: 256, offset: 9600)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !880, line: 98, size: 256, elements: !881)
!880 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!881 = !{!882, !883, !884}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !879, file: !880, line: 99, baseType: !735, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !879, file: !880, line: 100, baseType: !403, size: 128, offset: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !879, file: !880, line: 101, baseType: !885, size: 64, offset: 192)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !880, line: 21, baseType: !886)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DISubroutineType(types: !888)
!888 = !{null, !889}
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !673, file: !674, line: 986, baseType: !891, offset: 10240)
!891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, elements: !892)
!892 = !{!893}
!893 = !DISubrange(count: -1)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !325, file: !326, line: 882, baseType: !672, size: 64, offset: 9792)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !325, file: !326, line: 884, baseType: !151, size: 32, offset: 9856)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !325, file: !326, line: 885, baseType: !151, size: 32, offset: 9888)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !325, file: !326, line: 886, baseType: !151, size: 32, offset: 9920)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !325, file: !326, line: 888, baseType: !151, size: 32, offset: 9952)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !325, file: !326, line: 890, baseType: !153, size: 64, offset: 9984)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !325, file: !326, line: 893, baseType: !7, size: 32, offset: 10048)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !325, file: !326, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !325, file: !326, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !325, file: !326, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !325, file: !326, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !325, file: !326, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !325, file: !326, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !325, file: !326, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !325, file: !326, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !325, file: !326, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !325, file: !326, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !325, file: !326, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !325, file: !326, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !325, file: !326, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !325, file: !326, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !325, file: !326, line: 969, baseType: !153, size: 64, offset: 10176)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !325, file: !326, line: 971, baseType: !917, size: 448, offset: 10240)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 448, elements: !918)
!918 = !{!919, !920, !925}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !917, file: !25, line: 26, baseType: !153, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !917, file: !25, line: 27, baseType: !921, size: 64, offset: 64)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DISubroutineType(types: !923)
!923 = !{!839, !924}
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, scope: !917, file: !25, line: 28, baseType: !926, size: 320, offset: 128)
!926 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !917, file: !25, line: 28, size: 320, elements: !927)
!927 = !{!928, !938, !963}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !926, file: !25, line: 37, baseType: !929, size: 320)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !926, file: !25, line: 30, size: 320, elements: !930)
!930 = !{!931, !933, !934, !935, !936, !937}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !929, file: !25, line: 31, baseType: !932, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !929, file: !25, line: 32, baseType: !174, size: 32, offset: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !929, file: !25, line: 33, baseType: !174, size: 32, offset: 96)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !929, file: !25, line: 34, baseType: !174, size: 32, offset: 128)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !929, file: !25, line: 35, baseType: !398, size: 64, offset: 192)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !929, file: !25, line: 36, baseType: !932, size: 64, offset: 256)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !926, file: !25, line: 47, baseType: !939, size: 192)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !926, file: !25, line: 39, size: 192, elements: !940)
!940 = !{!941, !942, !943, !962}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !939, file: !25, line: 40, baseType: !544, size: 32)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !939, file: !25, line: 41, baseType: !24, size: 32, offset: 32)
!943 = !DIDerivedType(tag: DW_TAG_member, scope: !939, file: !25, line: 42, baseType: !944, size: 64, offset: 64)
!944 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !939, file: !25, line: 42, size: 64, elements: !945)
!945 = !{!946, !954}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !944, file: !25, line: 43, baseType: !947, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !949, line: 7, size: 128, elements: !950)
!949 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!950 = !{!951, !953}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !948, file: !949, line: 8, baseType: !952, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !546, line: 93, baseType: !416)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !948, file: !949, line: 9, baseType: !416, size: 64, offset: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !944, file: !25, line: 44, baseType: !955, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !957, line: 7, size: 64, elements: !958)
!957 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!958 = !{!959, !961}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !956, file: !957, line: 8, baseType: !960, size: 32)
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !957, line: 5, baseType: !794)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !956, file: !957, line: 9, baseType: !794, size: 32, offset: 32)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !939, file: !25, line: 46, baseType: !398, size: 64, offset: 128)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !926, file: !25, line: 55, baseType: !964, size: 256)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !926, file: !25, line: 49, size: 256, elements: !965)
!965 = !{!966, !969, !970, !971, !972}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !964, file: !25, line: 50, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !964, file: !25, line: 51, baseType: !151, size: 32, offset: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !964, file: !25, line: 52, baseType: !151, size: 32, offset: 96)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !964, file: !25, line: 53, baseType: !153, size: 64, offset: 128)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !964, file: !25, line: 54, baseType: !153, size: 64, offset: 192)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !325, file: !326, line: 973, baseType: !974, size: 32, offset: 10688)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !241, line: 27, baseType: !975)
!975 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !546, line: 28, baseType: !151)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !325, file: !326, line: 974, baseType: !974, size: 32, offset: 10720)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !325, file: !326, line: 978, baseType: !153, size: 64, offset: 10752)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !325, file: !326, line: 987, baseType: !324, size: 64, offset: 10816)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !325, file: !326, line: 990, baseType: !324, size: 64, offset: 10880)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !325, file: !326, line: 995, baseType: !403, size: 128, offset: 10944)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !325, file: !326, line: 996, baseType: !403, size: 128, offset: 11072)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !325, file: !326, line: 997, baseType: !324, size: 64, offset: 11200)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !325, file: !326, line: 1005, baseType: !403, size: 128, offset: 11264)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !325, file: !326, line: 1006, baseType: !403, size: 128, offset: 11392)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !325, file: !326, line: 1009, baseType: !986, size: 64, offset: 11520)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !988, line: 59, size: 768, elements: !989)
!988 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!989 = !{!990, !991, !992, !993, !1004, !1005, !1012, !1021}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !987, file: !988, line: 61, baseType: !339, size: 32)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !987, file: !988, line: 62, baseType: !7, size: 32, offset: 32)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !987, file: !988, line: 63, baseType: !691, size: 32, offset: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !987, file: !988, line: 65, baseType: !994, size: 256, offset: 128)
!994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !995, size: 256, elements: !796)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !241, line: 194, size: 64, elements: !996)
!996 = !{!997}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !995, file: !241, line: 195, baseType: !998, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !241, line: 198, size: 128, elements: !1000)
!1000 = !{!1001, !1002}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !999, file: !241, line: 199, baseType: !998, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !999, file: !241, line: 199, baseType: !1003, size: 64, offset: 64)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !987, file: !988, line: 66, baseType: !995, size: 64, offset: 384)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !987, file: !988, line: 68, baseType: !1006, size: 192, offset: 448)
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1007, line: 41, baseType: !1008)
!1007 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1007, line: 37, size: 192, elements: !1009)
!1009 = !{!1010, !1011}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1008, file: !1007, line: 38, baseType: !691, size: 32)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1008, file: !1007, line: 39, baseType: !403, size: 128, offset: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !987, file: !988, line: 69, baseType: !1013, size: 128, align: 64, offset: 640)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !241, line: 232, size: 128, align: 64, elements: !1014)
!1014 = !{!1015, !1017}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1013, file: !241, line: 233, baseType: !1016, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1013, file: !241, line: 234, baseType: !1018, size: 64, offset: 64)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{null, !1016}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !987, file: !988, line: 70, baseType: !1022, offset: 768)
!1022 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1023, elements: !892)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !988, line: 54, size: 128, elements: !1024)
!1024 = !{!1025, !1026}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1023, file: !988, line: 55, baseType: !151, size: 32)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1023, file: !988, line: 56, baseType: !1027, size: 64, offset: 64)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !988, line: 56, flags: DIFlagFwdDecl)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !325, file: !326, line: 1010, baseType: !1030, size: 512, offset: 11584)
!1030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !999, size: 512, elements: !796)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !325, file: !326, line: 1011, baseType: !403, size: 128, offset: 12096)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !325, file: !326, line: 1012, baseType: !403, size: 128, offset: 12224)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !325, file: !326, line: 1014, baseType: !1034, size: 64, offset: 12352)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1036, line: 26, size: 256, elements: !1037)
!1036 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1037 = !{!1038, !1039}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1035, file: !1036, line: 27, baseType: !7, size: 32)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1035, file: !1036, line: 28, baseType: !1040, size: 192, offset: 64)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1041, line: 43, size: 192, elements: !1042)
!1041 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1042 = !{!1043, !1044}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1040, file: !1041, line: 44, baseType: !496, size: 32)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1040, file: !1041, line: 45, baseType: !403, size: 128, offset: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !325, file: !326, line: 1017, baseType: !154, size: 64, offset: 12416)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !325, file: !326, line: 1020, baseType: !154, size: 64, offset: 12480)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !325, file: !326, line: 1023, baseType: !149, size: 64, offset: 12544)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !325, file: !326, line: 1025, baseType: !398, size: 64, offset: 12608)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !325, file: !326, line: 1026, baseType: !398, size: 64, offset: 12672)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !325, file: !326, line: 1031, baseType: !398, size: 64, offset: 12736)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !325, file: !326, line: 1032, baseType: !1052, size: 192, offset: 12800)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !326, line: 324, size: 192, elements: !1053)
!1053 = !{!1054, !1055, !1056}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1052, file: !326, line: 326, baseType: !398, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1052, file: !326, line: 327, baseType: !398, size: 64, offset: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1052, file: !326, line: 328, baseType: !496, size: 32, offset: 128)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !325, file: !326, line: 1041, baseType: !153, size: 64, offset: 12992)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !325, file: !326, line: 1042, baseType: !153, size: 64, offset: 13056)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !325, file: !326, line: 1045, baseType: !398, size: 64, offset: 13120)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !325, file: !326, line: 1048, baseType: !398, size: 64, offset: 13184)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !325, file: !326, line: 1051, baseType: !153, size: 64, offset: 13248)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !325, file: !326, line: 1052, baseType: !153, size: 64, offset: 13312)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !325, file: !326, line: 1055, baseType: !1064, size: 640, offset: 13376)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1065, line: 132, size: 640, elements: !1066)
!1065 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1066 = !{!1067, !1075, !1076}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1064, file: !1065, line: 133, baseType: !1068, size: 576)
!1068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1069, size: 576, elements: !1073)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1065, line: 117, size: 192, elements: !1070)
!1070 = !{!1071, !1072}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1069, file: !1065, line: 118, baseType: !398, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1069, file: !1065, line: 119, baseType: !559, size: 128, offset: 64)
!1073 = !{!1074}
!1074 = !DISubrange(count: 3)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1064, file: !1065, line: 134, baseType: !7, size: 32, offset: 576)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1064, file: !1065, line: 135, baseType: !7, size: 32, offset: 608)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !325, file: !326, line: 1058, baseType: !1078, size: 448, offset: 14016)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1065, line: 144, size: 448, elements: !1079)
!1079 = !{!1080, !1081, !1082}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1078, file: !1065, line: 145, baseType: !1013, size: 128, align: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1078, file: !1065, line: 146, baseType: !815, size: 256, offset: 128)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1078, file: !1065, line: 147, baseType: !7, size: 32, offset: 384)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !325, file: !326, line: 1064, baseType: !1084, size: 64, offset: 14464)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1086)
!1086 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !326, line: 1064, flags: DIFlagFwdDecl)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !325, file: !326, line: 1067, baseType: !1084, size: 64, offset: 14528)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !325, file: !326, line: 1070, baseType: !1084, size: 64, offset: 14592)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !325, file: !326, line: 1074, baseType: !1090, size: 64, offset: 14656)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !326, line: 1074, flags: DIFlagFwdDecl)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !325, file: !326, line: 1084, baseType: !1093, size: 128, offset: 14720)
!1093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 128, elements: !1094)
!1094 = !{!1095}
!1095 = !DISubrange(count: 16)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !325, file: !326, line: 1086, baseType: !1097, size: 64, offset: 14848)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !326, line: 55, flags: DIFlagFwdDecl)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !325, file: !326, line: 1089, baseType: !1100, size: 64, offset: 14912)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1101, line: 12, size: 64, elements: !1102)
!1101 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1102 = !{!1103}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1100, file: !1101, line: 13, baseType: !1104, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1101, line: 8, flags: DIFlagFwdDecl)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !325, file: !326, line: 1090, baseType: !1107, size: 128, offset: 14976)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1108, line: 13, size: 128, elements: !1109)
!1108 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1109 = !{!1110}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1107, file: !1108, line: 14, baseType: !403, size: 128)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !325, file: !326, line: 1097, baseType: !1112, size: 64, offset: 15104)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !326, line: 50, flags: DIFlagFwdDecl)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !325, file: !326, line: 1100, baseType: !1115, size: 64, offset: 15168)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !326, line: 1100, flags: DIFlagFwdDecl)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !325, file: !326, line: 1103, baseType: !1118, size: 64, offset: 15232)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !326, line: 53, flags: DIFlagFwdDecl)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !325, file: !326, line: 1107, baseType: !1121, size: 64, offset: 15296)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !326, line: 56, flags: DIFlagFwdDecl)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !325, file: !326, line: 1110, baseType: !1124, size: 64, offset: 15360)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1065, line: 236, flags: DIFlagFwdDecl)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !325, file: !326, line: 1111, baseType: !1127, size: 64, offset: 15424)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !326, line: 67, flags: DIFlagFwdDecl)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !325, file: !326, line: 1112, baseType: !1130, size: 64, offset: 15488)
!1130 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1131, line: 25, baseType: !1132)
!1131 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1131, line: 23, size: 64, elements: !1133)
!1133 = !{!1134}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1132, file: !1131, line: 24, baseType: !171, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !325, file: !326, line: 1113, baseType: !1130, size: 64, offset: 15552)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !325, file: !326, line: 1115, baseType: !1130, size: 64, offset: 15616)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !325, file: !326, line: 1116, baseType: !1138, size: 192, offset: 15680)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1139, line: 32, size: 192, elements: !1140)
!1139 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1140 = !{!1141, !1142}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1138, file: !1139, line: 33, baseType: !403, size: 128)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1138, file: !1139, line: 34, baseType: !1130, size: 64, offset: 128)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !325, file: !326, line: 1117, baseType: !153, size: 64, offset: 15872)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !325, file: !326, line: 1118, baseType: !1145, size: 64, offset: 15936)
!1145 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !241, line: 61, baseType: !1146)
!1146 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !546, line: 72, baseType: !1147)
!1147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !546, line: 16, baseType: !153)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !325, file: !326, line: 1119, baseType: !7, size: 32, offset: 16000)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !325, file: !326, line: 1121, baseType: !1016, size: 64, offset: 16064)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !325, file: !326, line: 1125, baseType: !1151, size: 64, offset: 16128)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !326, line: 43, flags: DIFlagFwdDecl)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !325, file: !326, line: 1127, baseType: !1154, size: 32, offset: 16192)
!1154 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1155, line: 23, baseType: !1156)
!1155 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1155, line: 21, size: 32, elements: !1157)
!1157 = !{!1158}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1156, file: !1155, line: 22, baseType: !1159, size: 32)
!1159 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !241, line: 37, baseType: !1160)
!1160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !546, line: 49, baseType: !7)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !325, file: !326, line: 1128, baseType: !7, size: 32, offset: 16224)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !325, file: !326, line: 1130, baseType: !1163, size: 128, offset: 16256)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1164, line: 37, size: 128, elements: !1165)
!1164 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!1165 = !{!1166, !1167, !1168}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1163, file: !1164, line: 38, baseType: !151, size: 32)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1163, file: !1164, line: 39, baseType: !344, size: 32, offset: 32)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1163, file: !1164, line: 40, baseType: !1169, size: 64, offset: 64)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1164, line: 24, flags: DIFlagFwdDecl)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !325, file: !326, line: 1131, baseType: !1172, size: 256, offset: 16384)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !1173, line: 12, size: 256, elements: !1174)
!1173 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!1174 = !{!1175, !1177, !1178, !1179}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !1172, file: !1173, line: 13, baseType: !1176, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1172, file: !1173, line: 14, baseType: !153, size: 64, offset: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1172, file: !1173, line: 15, baseType: !153, size: 64, offset: 128)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !1172, file: !1173, line: 16, baseType: !240, size: 8, offset: 192)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !325, file: !326, line: 1134, baseType: !398, size: 64, offset: 16640)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !325, file: !326, line: 1135, baseType: !398, size: 64, offset: 16704)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !325, file: !326, line: 1138, baseType: !691, size: 32, offset: 16768)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !325, file: !326, line: 1141, baseType: !496, size: 32, offset: 16800)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !325, file: !326, line: 1143, baseType: !1185, size: 64, offset: 16832)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !326, line: 735, size: 64, elements: !1186)
!1186 = !{!1187}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1185, file: !326, line: 736, baseType: !1188, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !325, file: !326, line: 1147, baseType: !562, size: 128, offset: 16896)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !325, file: !326, line: 1149, baseType: !324, size: 64, offset: 17024)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !325, file: !326, line: 1151, baseType: !1192, size: 64, offset: 17088)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !326, line: 1151, flags: DIFlagFwdDecl)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !325, file: !326, line: 1188, baseType: !149, size: 64, offset: 17152)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !325, file: !326, line: 1191, baseType: !1196, size: 64, offset: 17216)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !326, line: 44, flags: DIFlagFwdDecl)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !325, file: !326, line: 1194, baseType: !1199, size: 64, offset: 17280)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !326, line: 45, flags: DIFlagFwdDecl)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !325, file: !326, line: 1197, baseType: !1202, size: 64, offset: 17344)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !326, line: 61, flags: DIFlagFwdDecl)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !325, file: !326, line: 1199, baseType: !1205, size: 64, offset: 17408)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !326, line: 52, flags: DIFlagFwdDecl)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !325, file: !326, line: 1202, baseType: !1208, size: 64, offset: 17472)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !326, line: 48, flags: DIFlagFwdDecl)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !325, file: !326, line: 1205, baseType: !153, size: 64, offset: 17536)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !325, file: !326, line: 1206, baseType: !1212, size: 64, offset: 17600)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1139, line: 14, baseType: !1214)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1139, line: 12, size: 384, elements: !1215)
!1215 = !{!1216}
!1216 = !DIDerivedType(tag: DW_TAG_member, scope: !1214, file: !1139, line: 13, baseType: !1217, size: 384)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1214, file: !1139, line: 13, size: 384, elements: !1218)
!1218 = !{!1219, !1220, !1221, !1222}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1217, file: !1139, line: 13, baseType: !151, size: 32)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1217, file: !1139, line: 13, baseType: !151, size: 32, offset: 32)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1217, file: !1139, line: 13, baseType: !151, size: 32, offset: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1217, file: !1139, line: 13, baseType: !1223, size: 256, offset: 128)
!1223 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1224, line: 37, size: 256, elements: !1225)
!1224 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!1225 = !{!1226, !1231, !1244, !1250, !1260, !1287, !1292}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1223, file: !1224, line: 42, baseType: !1227, size: 64)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1223, file: !1224, line: 39, size: 64, elements: !1228)
!1228 = !{!1229, !1230}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1227, file: !1224, line: 40, baseType: !975, size: 32)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1227, file: !1224, line: 41, baseType: !1160, size: 32, offset: 32)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1223, file: !1224, line: 50, baseType: !1232, size: 192)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1223, file: !1224, line: 45, size: 192, elements: !1233)
!1233 = !{!1234, !1236, !1237, !1243}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1232, file: !1224, line: 46, baseType: !1235, size: 32)
!1235 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !546, line: 95, baseType: !151)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1232, file: !1224, line: 47, baseType: !151, size: 32, offset: 32)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1232, file: !1224, line: 48, baseType: !1238, size: 64, offset: 64)
!1238 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1224, line: 11, baseType: !1239)
!1239 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1224, line: 8, size: 64, elements: !1240)
!1240 = !{!1241, !1242}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1239, file: !1224, line: 9, baseType: !151, size: 32)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1239, file: !1224, line: 10, baseType: !149, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1232, file: !1224, line: 49, baseType: !151, size: 32, offset: 128)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1223, file: !1224, line: 57, baseType: !1245, size: 128)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1223, file: !1224, line: 53, size: 128, elements: !1246)
!1246 = !{!1247, !1248, !1249}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1245, file: !1224, line: 54, baseType: !975, size: 32)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1245, file: !1224, line: 55, baseType: !1160, size: 32, offset: 32)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1245, file: !1224, line: 56, baseType: !1238, size: 64, offset: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1223, file: !1224, line: 66, baseType: !1251, size: 256)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1223, file: !1224, line: 60, size: 256, elements: !1252)
!1252 = !{!1253, !1254, !1255, !1256, !1259}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1251, file: !1224, line: 61, baseType: !975, size: 32)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1251, file: !1224, line: 62, baseType: !1160, size: 32, offset: 32)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1251, file: !1224, line: 63, baseType: !151, size: 32, offset: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1251, file: !1224, line: 64, baseType: !1257, size: 64, offset: 128)
!1257 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !546, line: 94, baseType: !1258)
!1258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !546, line: 15, baseType: !839)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1251, file: !1224, line: 65, baseType: !1257, size: 64, offset: 192)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1223, file: !1224, line: 105, baseType: !1261, size: 256)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1223, file: !1224, line: 69, size: 256, elements: !1262)
!1262 = !{!1263, !1264}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1261, file: !1224, line: 70, baseType: !149, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, scope: !1261, file: !1224, line: 79, baseType: !1265, size: 192, offset: 64)
!1265 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1261, file: !1224, line: 79, size: 192, elements: !1266)
!1266 = !{!1267, !1268, !1269, !1276, !1281}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !1265, file: !1224, line: 81, baseType: !151, size: 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1265, file: !1224, line: 86, baseType: !856, size: 16)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1265, file: !1224, line: 92, baseType: !1270, size: 192)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1265, file: !1224, line: 88, size: 192, elements: !1271)
!1271 = !{!1272, !1274, !1275}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1270, file: !1224, line: 89, baseType: !1273, size: 64)
!1273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 64, elements: !540)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1270, file: !1224, line: 90, baseType: !149, size: 64, offset: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1270, file: !1224, line: 91, baseType: !149, size: 64, offset: 128)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1265, file: !1224, line: 97, baseType: !1277, size: 96)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1265, file: !1224, line: 94, size: 96, elements: !1278)
!1278 = !{!1279, !1280}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1277, file: !1224, line: 95, baseType: !1273, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1277, file: !1224, line: 96, baseType: !176, size: 32, offset: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !1265, file: !1224, line: 103, baseType: !1282, size: 128)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1265, file: !1224, line: 99, size: 128, elements: !1283)
!1283 = !{!1284, !1285, !1286}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !1282, file: !1224, line: 100, baseType: !153, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !1282, file: !1224, line: 101, baseType: !176, size: 32, offset: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1282, file: !1224, line: 102, baseType: !176, size: 32, offset: 96)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1223, file: !1224, line: 111, baseType: !1288, size: 128)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1223, file: !1224, line: 108, size: 128, elements: !1289)
!1289 = !{!1290, !1291}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1288, file: !1224, line: 109, baseType: !839, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1288, file: !1224, line: 110, baseType: !151, size: 32, offset: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1223, file: !1224, line: 118, baseType: !1293, size: 128)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1223, file: !1224, line: 114, size: 128, elements: !1294)
!1294 = !{!1295, !1296, !1297}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1293, file: !1224, line: 115, baseType: !149, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1293, file: !1224, line: 116, baseType: !151, size: 32, offset: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1293, file: !1224, line: 117, baseType: !7, size: 32, offset: 96)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !325, file: !326, line: 1208, baseType: !1299, size: 448, offset: 17664)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1300, line: 12, size: 448, elements: !1301)
!1300 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1301 = !{!1302, !1303, !1304, !1305, !1306, !1307, !1308}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1299, file: !1300, line: 15, baseType: !398, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1299, file: !1300, line: 17, baseType: !398, size: 64, offset: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1299, file: !1300, line: 19, baseType: !398, size: 64, offset: 128)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1299, file: !1300, line: 21, baseType: !398, size: 64, offset: 192)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1299, file: !1300, line: 29, baseType: !398, size: 64, offset: 256)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1299, file: !1300, line: 35, baseType: !398, size: 64, offset: 320)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1299, file: !1300, line: 44, baseType: !398, size: 64, offset: 384)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !325, file: !326, line: 1215, baseType: !398, size: 64, offset: 18112)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !325, file: !326, line: 1217, baseType: !398, size: 64, offset: 18176)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !325, file: !326, line: 1219, baseType: !398, size: 64, offset: 18240)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !325, file: !326, line: 1223, baseType: !1313, size: 64, offset: 18304)
!1313 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !1314, line: 99, baseType: !1315)
!1314 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1314, line: 99, size: 64, elements: !1316)
!1316 = !{!1317}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1315, file: !1314, line: 99, baseType: !171, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !325, file: !326, line: 1225, baseType: !1319, size: 32, offset: 18368)
!1319 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !549, line: 275, baseType: !1320)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !549, line: 275, size: 32, elements: !1321)
!1321 = !{!1322}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1320, file: !549, line: 275, baseType: !553, size: 32)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !325, file: !326, line: 1226, baseType: !151, size: 32, offset: 18400)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !325, file: !326, line: 1227, baseType: !151, size: 32, offset: 18432)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !325, file: !326, line: 1231, baseType: !1326, size: 64, offset: 18496)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !326, line: 1231, flags: DIFlagFwdDecl)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !325, file: !326, line: 1233, baseType: !403, size: 128, offset: 18560)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !325, file: !326, line: 1240, baseType: !1330, size: 64, offset: 18688)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !326, line: 62, flags: DIFlagFwdDecl)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !325, file: !326, line: 1242, baseType: !1333, size: 64, offset: 18752)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !326, line: 1242, flags: DIFlagFwdDecl)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !325, file: !326, line: 1244, baseType: !403, size: 128, offset: 18816)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !325, file: !326, line: 1245, baseType: !1337, size: 64, offset: 18944)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !326, line: 51, flags: DIFlagFwdDecl)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !325, file: !326, line: 1246, baseType: !815, size: 256, offset: 19008)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !325, file: !326, line: 1247, baseType: !7, size: 32, offset: 19264)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !325, file: !326, line: 1250, baseType: !1342, size: 64, offset: 19328)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !326, line: 57, flags: DIFlagFwdDecl)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !325, file: !326, line: 1251, baseType: !815, size: 256, offset: 19392)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !325, file: !326, line: 1252, baseType: !403, size: 128, offset: 19648)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !325, file: !326, line: 1259, baseType: !1347, size: 64, offset: 19776)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !674, line: 717, flags: DIFlagFwdDecl)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !325, file: !326, line: 1260, baseType: !856, size: 16, offset: 19840)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !325, file: !326, line: 1261, baseType: !856, size: 16, offset: 19856)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !325, file: !326, line: 1314, baseType: !1352, size: 64, offset: 19904)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1354, line: 62, size: 256, align: 256, elements: !1355)
!1354 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!1355 = !{!1356, !1357, !1358, !1359, !1360, !1361, !1362}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1353, file: !1354, line: 75, baseType: !176, size: 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1353, file: !1354, line: 90, baseType: !176, size: 32, offset: 32)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1353, file: !1354, line: 112, baseType: !399, size: 64, offset: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1353, file: !1354, line: 132, baseType: !176, size: 32, offset: 128)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !1353, file: !1354, line: 140, baseType: !176, size: 32, offset: 160)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1353, file: !1354, line: 149, baseType: !176, size: 32, offset: 192)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1353, file: !1354, line: 154, baseType: !1363, offset: 224)
!1363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, elements: !892)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !325, file: !326, line: 1315, baseType: !174, size: 32, offset: 19968)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !325, file: !326, line: 1316, baseType: !174, size: 32, offset: 20000)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !325, file: !326, line: 1321, baseType: !153, size: 64, offset: 20032)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !325, file: !326, line: 1325, baseType: !151, size: 32, offset: 20096)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !325, file: !326, line: 1326, baseType: !151, size: 32, offset: 20128)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !325, file: !326, line: 1327, baseType: !151, size: 32, offset: 20160)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !325, file: !326, line: 1328, baseType: !151, size: 32, offset: 20192)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !325, file: !326, line: 1329, baseType: !1013, size: 128, align: 64, offset: 20224)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !325, file: !326, line: 1332, baseType: !1373, size: 128, offset: 20352)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1374, line: 51, size: 128, elements: !1375)
!1374 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!1375 = !{!1376, !1381, !1382}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1373, file: !1374, line: 60, baseType: !1377, size: 64)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1378, line: 7, size: 64, elements: !1379)
!1378 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!1379 = !{!1380}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1377, file: !1378, line: 12, baseType: !167, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1373, file: !1374, line: 63, baseType: !240, size: 8, offset: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1373, file: !1374, line: 70, baseType: !240, size: 8, offset: 72)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !325, file: !326, line: 1335, baseType: !1384, size: 64, offset: 20480)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !326, line: 59, flags: DIFlagFwdDecl)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !325, file: !326, line: 1337, baseType: !1387, size: 128, offset: 20544)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1374, line: 39, size: 128, elements: !1388)
!1388 = !{!1389, !1452, !1453}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1387, file: !1374, line: 40, baseType: !1390, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !674, line: 74, size: 512, align: 128, elements: !1392)
!1392 = !{!1393, !1394, !1446, !1451}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1391, file: !674, line: 75, baseType: !153, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, scope: !1391, file: !674, line: 83, baseType: !1395, size: 320, offset: 64)
!1395 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1391, file: !674, line: 83, size: 320, elements: !1396)
!1396 = !{!1397, !1420, !1434, !1438, !1445}
!1397 = !DIDerivedType(tag: DW_TAG_member, scope: !1395, file: !674, line: 84, baseType: !1398, size: 320)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1395, file: !674, line: 84, size: 320, elements: !1399)
!1399 = !{!1400, !1411, !1414, !1419}
!1400 = !DIDerivedType(tag: DW_TAG_member, scope: !1398, file: !674, line: 90, baseType: !1401, size: 128)
!1401 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1398, file: !674, line: 90, size: 128, elements: !1402)
!1402 = !{!1403, !1404, !1409, !1410}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1401, file: !674, line: 91, baseType: !403, size: 128)
!1404 = !DIDerivedType(tag: DW_TAG_member, scope: !1401, file: !674, line: 94, baseType: !1405, size: 128)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1401, file: !674, line: 94, size: 128, elements: !1406)
!1406 = !{!1407, !1408}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1405, file: !674, line: 96, baseType: !149, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1405, file: !674, line: 98, baseType: !7, size: 32, offset: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1401, file: !674, line: 102, baseType: !403, size: 128)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1401, file: !674, line: 103, baseType: !403, size: 128)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1398, file: !674, line: 106, baseType: !1412, size: 64, offset: 128)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !674, line: 32, flags: DIFlagFwdDecl)
!1414 = !DIDerivedType(tag: DW_TAG_member, scope: !1398, file: !674, line: 107, baseType: !1415, size: 64, offset: 192)
!1415 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1398, file: !674, line: 107, size: 64, elements: !1416)
!1416 = !{!1417, !1418}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1415, file: !674, line: 108, baseType: !153, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1415, file: !674, line: 109, baseType: !153, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1398, file: !674, line: 117, baseType: !153, size: 64, offset: 256)
!1420 = !DIDerivedType(tag: DW_TAG_member, scope: !1395, file: !674, line: 119, baseType: !1421, size: 320)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1395, file: !674, line: 119, size: 320, elements: !1422)
!1422 = !{!1423, !1424, !1427, !1428, !1429}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1421, file: !674, line: 124, baseType: !153, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1421, file: !674, line: 125, baseType: !1425, size: 64, offset: 64)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !674, line: 125, flags: DIFlagFwdDecl)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1421, file: !674, line: 126, baseType: !153, size: 64, offset: 128)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1421, file: !674, line: 127, baseType: !153, size: 64, offset: 192)
!1429 = !DIDerivedType(tag: DW_TAG_member, scope: !1421, file: !674, line: 128, baseType: !1430, size: 64, offset: 256)
!1430 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1421, file: !674, line: 128, size: 64, elements: !1431)
!1431 = !{!1432, !1433}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1430, file: !674, line: 133, baseType: !153, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1430, file: !674, line: 138, baseType: !735, size: 64)
!1434 = !DIDerivedType(tag: DW_TAG_member, scope: !1395, file: !674, line: 141, baseType: !1435, size: 64)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1395, file: !674, line: 141, size: 64, elements: !1436)
!1436 = !{!1437}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1435, file: !674, line: 142, baseType: !153, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, scope: !1395, file: !674, line: 144, baseType: !1439, size: 128)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1395, file: !674, line: 144, size: 128, elements: !1440)
!1440 = !{!1441, !1444}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1439, file: !674, line: 146, baseType: !1442, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !674, line: 146, flags: DIFlagFwdDecl)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1439, file: !674, line: 147, baseType: !149, size: 64, offset: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1395, file: !674, line: 161, baseType: !1013, size: 128, align: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, scope: !1391, file: !674, line: 164, baseType: !1447, size: 32, offset: 384)
!1447 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1391, file: !674, line: 164, size: 32, elements: !1448)
!1448 = !{!1449, !1450}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1447, file: !674, line: 169, baseType: !344, size: 32)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1447, file: !674, line: 177, baseType: !7, size: 32)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1391, file: !674, line: 181, baseType: !344, size: 32, offset: 416)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1387, file: !1374, line: 42, baseType: !176, size: 32, offset: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1387, file: !1374, line: 43, baseType: !176, size: 32, offset: 96)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !325, file: !326, line: 1340, baseType: !1455, size: 64, offset: 20672)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !326, line: 69, flags: DIFlagFwdDecl)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !325, file: !326, line: 1351, baseType: !151, size: 32, offset: 20736)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !325, file: !326, line: 1352, baseType: !151, size: 32, offset: 20768)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !325, file: !326, line: 1354, baseType: !153, size: 64, offset: 20800)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !325, file: !326, line: 1364, baseType: !398, size: 64, offset: 20864)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !325, file: !326, line: 1365, baseType: !398, size: 64, offset: 20928)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !325, file: !326, line: 1412, baseType: !153, size: 64, offset: 20992)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !325, file: !326, line: 1453, baseType: !1464, size: 64, offset: 21056)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !326, line: 1453, flags: DIFlagFwdDecl)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !325, file: !326, line: 1457, baseType: !1467, size: 64, offset: 21120)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !31, line: 61, size: 576, elements: !1469)
!1469 = !{!1470, !1471, !1490, !1493, !1494, !1527, !1537}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1468, file: !31, line: 62, baseType: !30, size: 32)
!1471 = !DIDerivedType(tag: DW_TAG_member, scope: !1468, file: !31, line: 64, baseType: !1472, size: 192, offset: 64)
!1472 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1468, file: !31, line: 64, size: 192, elements: !1473)
!1473 = !{!1474, !1485}
!1474 = !DIDerivedType(tag: DW_TAG_member, scope: !1472, file: !31, line: 65, baseType: !1475, size: 192)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1472, file: !31, line: 65, size: 192, elements: !1476)
!1476 = !{!1477, !1484}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !1475, file: !31, line: 66, baseType: !1478, size: 128)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !1479, line: 50, size: 128, elements: !1480)
!1479 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!1480 = !{!1481, !1482, !1483}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !1478, file: !1479, line: 52, baseType: !153, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !1478, file: !1479, line: 54, baseType: !7, size: 32, offset: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !1478, file: !1479, line: 55, baseType: !7, size: 32, offset: 96)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !1475, file: !31, line: 67, baseType: !153, size: 64, offset: 128)
!1485 = !DIDerivedType(tag: DW_TAG_member, scope: !1472, file: !31, line: 70, baseType: !1486, size: 192)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1472, file: !31, line: 70, size: 192, elements: !1487)
!1487 = !{!1488, !1489}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !1486, file: !31, line: 71, baseType: !1013, size: 128, align: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !1486, file: !31, line: 72, baseType: !153, size: 64, offset: 128)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !1468, file: !31, line: 76, baseType: !1491, size: 64, offset: 256)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !31, line: 76, flags: DIFlagFwdDecl)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !1468, file: !31, line: 77, baseType: !153, size: 64, offset: 320)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !1468, file: !31, line: 79, baseType: !1495, size: 64, offset: 384)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !1479, line: 25, size: 256, elements: !1497)
!1497 = !{!1498, !1504, !1508}
!1498 = !DIDerivedType(tag: DW_TAG_member, scope: !1496, file: !1479, line: 26, baseType: !1499, size: 128)
!1499 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1496, file: !1479, line: 26, size: 128, elements: !1500)
!1500 = !{!1501, !1503}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1499, file: !1479, line: 27, baseType: !1502, size: 128)
!1502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !513, size: 128, elements: !1094)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !1499, file: !1479, line: 28, baseType: !1502, size: 128)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1496, file: !1479, line: 31, baseType: !1505, size: 64, offset: 128)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1507)
!1507 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !1479, line: 23, flags: DIFlagFwdDecl)
!1508 = !DIDerivedType(tag: DW_TAG_member, scope: !1496, file: !1479, line: 33, baseType: !1509, size: 64, offset: 192)
!1509 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1496, file: !1479, line: 33, size: 64, elements: !1510)
!1510 = !{!1511, !1517, !1522}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !1509, file: !1479, line: 38, baseType: !1512, size: 64)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1509, file: !1479, line: 34, size: 64, elements: !1513)
!1513 = !{!1514, !1515, !1516}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !1512, file: !1479, line: 35, baseType: !794, size: 32)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1512, file: !1479, line: 36, baseType: !513, size: 8, offset: 32)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !1512, file: !1479, line: 37, baseType: !513, size: 8, offset: 40)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !1509, file: !1479, line: 42, baseType: !1518, size: 16)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1509, file: !1479, line: 39, size: 16, elements: !1519)
!1519 = !{!1520, !1521}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !1518, file: !1479, line: 40, baseType: !513, size: 8)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1518, file: !1479, line: 41, baseType: !513, size: 8, offset: 8)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !1509, file: !1479, line: 46, baseType: !1523, size: 16)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1509, file: !1479, line: 43, size: 16, elements: !1524)
!1524 = !{!1525, !1526}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !1523, file: !1479, line: 44, baseType: !513, size: 8)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1523, file: !1479, line: 45, baseType: !513, size: 8, offset: 8)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !1468, file: !31, line: 81, baseType: !1528, size: 64, offset: 448)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !31, line: 85, size: 384, elements: !1530)
!1530 = !{!1531, !1532, !1533, !1534, !1535, !1536}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !1529, file: !31, line: 86, baseType: !1491, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1529, file: !31, line: 87, baseType: !153, size: 64, offset: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1529, file: !31, line: 88, baseType: !153, size: 64, offset: 128)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !1529, file: !31, line: 89, baseType: !153, size: 64, offset: 192)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !1529, file: !31, line: 90, baseType: !240, size: 8, offset: 256)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1529, file: !31, line: 92, baseType: !1528, size: 64, offset: 320)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1468, file: !31, line: 82, baseType: !7, size: 32, offset: 512)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !325, file: !326, line: 1463, baseType: !1539, offset: 21184)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !326, line: 739, elements: !702)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !325, file: !326, line: 1470, baseType: !1013, size: 128, align: 64, offset: 21184)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !325, file: !326, line: 1471, baseType: !339, size: 32, offset: 21312)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !325, file: !326, line: 1472, baseType: !151, size: 32, offset: 21344)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !325, file: !326, line: 1474, baseType: !324, size: 64, offset: 21376)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !325, file: !326, line: 1475, baseType: !1545, size: 320, offset: 21440)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1546, line: 11, size: 320, elements: !1547)
!1546 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1547 = !{!1548, !1549, !1550, !1555}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1545, file: !1546, line: 16, baseType: !999, size: 128)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1545, file: !1546, line: 17, baseType: !153, size: 64, offset: 128)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1545, file: !1546, line: 18, baseType: !1551, size: 64, offset: 192)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{null, !1554}
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1545, file: !1546, line: 19, baseType: !174, size: 32, offset: 256)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !325, file: !326, line: 1478, baseType: !1557, size: 64, offset: 21760)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1559, line: 49, size: 512, elements: !1560)
!1559 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!1560 = !{!1561, !1562, !1563, !1564, !1565, !1567, !1568, !1569, !1571}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1558, file: !1559, line: 50, baseType: !1557, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1558, file: !1559, line: 51, baseType: !149, size: 64, offset: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1558, file: !1559, line: 52, baseType: !153, size: 64, offset: 128)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1558, file: !1559, line: 53, baseType: !153, size: 64, offset: 192)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1558, file: !1559, line: 54, baseType: !1566, size: 64, offset: 256)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !1558, file: !1559, line: 56, baseType: !7, size: 32, offset: 320)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1558, file: !1559, line: 58, baseType: !7, size: 32, offset: 352)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1558, file: !1559, line: 59, baseType: !1570, size: 64, offset: 384)
!1570 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !241, line: 159, baseType: !398)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1558, file: !1559, line: 60, baseType: !836, size: 64, offset: 448)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !325, file: !326, line: 1482, baseType: !339, size: 32, offset: 21824)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !325, file: !326, line: 1489, baseType: !149, size: 64, offset: 21888)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !325, file: !326, line: 1504, baseType: !149, size: 64, offset: 21952)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !325, file: !326, line: 1505, baseType: !399, size: 64, offset: 22016)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !325, file: !326, line: 1506, baseType: !398, size: 64, offset: 22080)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !325, file: !326, line: 1507, baseType: !399, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !325, file: !326, line: 1508, baseType: !399, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !325, file: !326, line: 1509, baseType: !399, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !325, file: !326, line: 1510, baseType: !1013, size: 128, align: 64, offset: 22208)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !325, file: !326, line: 1511, baseType: !151, size: 32, offset: 22336)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !325, file: !326, line: 1515, baseType: !1583, size: 64, offset: 22400)
!1583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !357, line: 56, size: 64, elements: !1584)
!1584 = !{!1585}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1583, file: !357, line: 57, baseType: !360, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !325, file: !326, line: 1518, baseType: !1583, size: 64, offset: 22464)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !325, file: !326, line: 1528, baseType: !1013, size: 128, align: 64, offset: 22528)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !325, file: !326, line: 1552, baseType: !1589, size: 35328, offset: 23040)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1590, line: 430, size: 35328, elements: !1591)
!1590 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!1591 = !{!1592, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1621, !1622, !1623, !1624, !1625, !1626, !1629, !1630, !1631, !1632}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1589, file: !1590, line: 432, baseType: !1593, size: 192)
!1593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1594, size: 192, elements: !1073)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1595, line: 16, size: 64, elements: !1596)
!1595 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!1596 = !{!1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1594, file: !1595, line: 17, baseType: !367, size: 16)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1594, file: !1595, line: 18, baseType: !367, size: 16, offset: 16)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1594, file: !1595, line: 19, baseType: !367, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1594, file: !1595, line: 19, baseType: !367, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1594, file: !1595, line: 19, baseType: !367, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1594, file: !1595, line: 19, baseType: !367, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1594, file: !1595, line: 19, baseType: !367, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1594, file: !1595, line: 20, baseType: !367, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1594, file: !1595, line: 20, baseType: !367, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1594, file: !1595, line: 20, baseType: !367, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1594, file: !1595, line: 20, baseType: !367, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1594, file: !1595, line: 20, baseType: !367, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1594, file: !1595, line: 20, baseType: !367, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1589, file: !1590, line: 436, baseType: !153, size: 64, offset: 192)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1589, file: !1590, line: 440, baseType: !369, size: 16, offset: 256)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1589, file: !1590, line: 441, baseType: !369, size: 16, offset: 272)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1589, file: !1590, line: 442, baseType: !369, size: 16, offset: 288)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1589, file: !1590, line: 443, baseType: !369, size: 16, offset: 304)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1589, file: !1590, line: 447, baseType: !153, size: 64, offset: 320)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1589, file: !1590, line: 448, baseType: !153, size: 64, offset: 384)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1589, file: !1590, line: 459, baseType: !1618, size: 256, offset: 448)
!1618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1619, size: 256, elements: !796)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1590, line: 428, flags: DIFlagFwdDecl)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1589, file: !1590, line: 461, baseType: !153, size: 64, offset: 704)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1589, file: !1590, line: 463, baseType: !153, size: 64, offset: 768)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1589, file: !1590, line: 465, baseType: !153, size: 64, offset: 832)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1589, file: !1590, line: 466, baseType: !153, size: 64, offset: 896)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1589, file: !1590, line: 467, baseType: !153, size: 64, offset: 960)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1589, file: !1590, line: 473, baseType: !1627, size: 64, offset: 1024)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1590, line: 10, flags: DIFlagFwdDecl)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1589, file: !1590, line: 480, baseType: !153, size: 64, offset: 1088)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !1589, file: !1590, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !1589, file: !1590, line: 491, baseType: !174, size: 32, offset: 1184)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1589, file: !1590, line: 501, baseType: !1633, size: 33792, offset: 1536)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1634, line: 448, size: 33792, elements: !1635)
!1634 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!1635 = !{!1636, !1637, !1638, !1806, !1807, !1813, !1814}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1633, file: !1634, line: 461, baseType: !7, size: 32)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1633, file: !1634, line: 468, baseType: !153, size: 64, offset: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !1633, file: !1634, line: 476, baseType: !1639, size: 64, offset: 128)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !1634, line: 356, size: 33280, align: 512, elements: !1641)
!1641 = !{!1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1640, file: !1634, line: 358, baseType: !7, size: 32)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !1640, file: !1634, line: 361, baseType: !7, size: 32, offset: 32)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1640, file: !1634, line: 364, baseType: !398, size: 64, offset: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !1640, file: !1634, line: 367, baseType: !398, size: 64, offset: 128)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !1640, file: !1634, line: 370, baseType: !398, size: 64, offset: 192)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !1640, file: !1634, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !1640, file: !1634, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !1640, file: !1634, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !1640, file: !1634, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1640, file: !1634, line: 397, baseType: !1652, size: 32768, offset: 512)
!1652 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1634, line: 348, size: 32768, elements: !1653)
!1653 = !{!1654, !1669, !1710, !1787, !1802}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1652, file: !1634, line: 349, baseType: !1655, size: 896)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1634, line: 12, size: 896, elements: !1656)
!1656 = !{!1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1668}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1655, file: !1634, line: 13, baseType: !174, size: 32)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1655, file: !1634, line: 14, baseType: !174, size: 32, offset: 32)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1655, file: !1634, line: 15, baseType: !174, size: 32, offset: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1655, file: !1634, line: 16, baseType: !174, size: 32, offset: 96)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1655, file: !1634, line: 17, baseType: !174, size: 32, offset: 128)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1655, file: !1634, line: 18, baseType: !174, size: 32, offset: 160)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1655, file: !1634, line: 19, baseType: !174, size: 32, offset: 192)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1655, file: !1634, line: 22, baseType: !1665, size: 640, offset: 224)
!1665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 640, elements: !1666)
!1666 = !{!1667}
!1667 = !DISubrange(count: 20)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1655, file: !1634, line: 25, baseType: !174, size: 32, offset: 864)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1652, file: !1634, line: 350, baseType: !1670, size: 4096, align: 128)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1634, line: 34, size: 4096, align: 128, elements: !1671)
!1671 = !{!1672, !1673, !1674, !1675, !1676, !1691, !1692, !1693, !1697, !1701, !1705}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1670, file: !1634, line: 35, baseType: !367, size: 16)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1670, file: !1634, line: 36, baseType: !367, size: 16, offset: 16)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1670, file: !1634, line: 37, baseType: !367, size: 16, offset: 32)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1670, file: !1634, line: 38, baseType: !367, size: 16, offset: 48)
!1676 = !DIDerivedType(tag: DW_TAG_member, scope: !1670, file: !1634, line: 39, baseType: !1677, size: 128, offset: 64)
!1677 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1670, file: !1634, line: 39, size: 128, elements: !1678)
!1678 = !{!1679, !1684}
!1679 = !DIDerivedType(tag: DW_TAG_member, scope: !1677, file: !1634, line: 40, baseType: !1680, size: 128)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1677, file: !1634, line: 40, size: 128, elements: !1681)
!1681 = !{!1682, !1683}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1680, file: !1634, line: 41, baseType: !398, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1680, file: !1634, line: 42, baseType: !398, size: 64, offset: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, scope: !1677, file: !1634, line: 44, baseType: !1685, size: 128)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1677, file: !1634, line: 44, size: 128, elements: !1686)
!1686 = !{!1687, !1688, !1689, !1690}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1685, file: !1634, line: 45, baseType: !174, size: 32)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1685, file: !1634, line: 46, baseType: !174, size: 32, offset: 32)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1685, file: !1634, line: 47, baseType: !174, size: 32, offset: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1685, file: !1634, line: 48, baseType: !174, size: 32, offset: 96)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1670, file: !1634, line: 51, baseType: !174, size: 32, offset: 192)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1670, file: !1634, line: 52, baseType: !174, size: 32, offset: 224)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1670, file: !1634, line: 55, baseType: !1694, size: 1024, offset: 256)
!1694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 1024, elements: !1695)
!1695 = !{!1696}
!1696 = !DISubrange(count: 32)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1670, file: !1634, line: 58, baseType: !1698, size: 2048, offset: 1280)
!1698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 2048, elements: !1699)
!1699 = !{!1700}
!1700 = !DISubrange(count: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1670, file: !1634, line: 60, baseType: !1702, size: 384, offset: 3328)
!1702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 384, elements: !1703)
!1703 = !{!1704}
!1704 = !DISubrange(count: 12)
!1705 = !DIDerivedType(tag: DW_TAG_member, scope: !1670, file: !1634, line: 62, baseType: !1706, size: 384, offset: 3712)
!1706 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1670, file: !1634, line: 62, size: 384, elements: !1707)
!1707 = !{!1708, !1709}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1706, file: !1634, line: 63, baseType: !1702, size: 384)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1706, file: !1634, line: 64, baseType: !1702, size: 384)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1652, file: !1634, line: 351, baseType: !1711, size: 1088)
!1711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1634, line: 79, size: 1088, elements: !1712)
!1712 = !{!1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1786}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1711, file: !1634, line: 80, baseType: !174, size: 32)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1711, file: !1634, line: 81, baseType: !174, size: 32, offset: 32)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1711, file: !1634, line: 82, baseType: !174, size: 32, offset: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1711, file: !1634, line: 83, baseType: !174, size: 32, offset: 96)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1711, file: !1634, line: 84, baseType: !174, size: 32, offset: 128)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1711, file: !1634, line: 85, baseType: !174, size: 32, offset: 160)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1711, file: !1634, line: 86, baseType: !174, size: 32, offset: 192)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1711, file: !1634, line: 88, baseType: !1665, size: 640, offset: 224)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1711, file: !1634, line: 89, baseType: !513, size: 8, offset: 864)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1711, file: !1634, line: 90, baseType: !513, size: 8, offset: 872)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1711, file: !1634, line: 91, baseType: !513, size: 8, offset: 880)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1711, file: !1634, line: 92, baseType: !513, size: 8, offset: 888)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1711, file: !1634, line: 93, baseType: !513, size: 8, offset: 896)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1711, file: !1634, line: 94, baseType: !513, size: 8, offset: 904)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1711, file: !1634, line: 95, baseType: !1728, size: 64, offset: 960)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1730, line: 11, size: 128, elements: !1731)
!1730 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!1731 = !{!1732, !1733}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1729, file: !1730, line: 12, baseType: !839, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1729, file: !1730, line: 13, baseType: !1734, size: 64, offset: 64)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1736, line: 103, size: 1344, elements: !1737)
!1736 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!1737 = !{!1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1766, !1767, !1768}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1735, file: !1736, line: 109, baseType: !153, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1735, file: !1736, line: 110, baseType: !153, size: 64, offset: 64)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1735, file: !1736, line: 111, baseType: !153, size: 64, offset: 128)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1735, file: !1736, line: 112, baseType: !153, size: 64, offset: 192)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1735, file: !1736, line: 113, baseType: !153, size: 64, offset: 256)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1735, file: !1736, line: 114, baseType: !153, size: 64, offset: 320)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1735, file: !1736, line: 117, baseType: !153, size: 64, offset: 384)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1735, file: !1736, line: 118, baseType: !153, size: 64, offset: 448)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1735, file: !1736, line: 119, baseType: !153, size: 64, offset: 512)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1735, file: !1736, line: 120, baseType: !153, size: 64, offset: 576)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1735, file: !1736, line: 121, baseType: !153, size: 64, offset: 640)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1735, file: !1736, line: 122, baseType: !153, size: 64, offset: 704)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1735, file: !1736, line: 123, baseType: !153, size: 64, offset: 768)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1735, file: !1736, line: 124, baseType: !153, size: 64, offset: 832)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1735, file: !1736, line: 125, baseType: !153, size: 64, offset: 896)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1735, file: !1736, line: 139, baseType: !153, size: 64, offset: 960)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1735, file: !1736, line: 142, baseType: !153, size: 64, offset: 1024)
!1755 = !DIDerivedType(tag: DW_TAG_member, scope: !1735, file: !1736, line: 144, baseType: !1756, size: 64, offset: 1088)
!1756 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1735, file: !1736, line: 144, size: 64, elements: !1757)
!1757 = !{!1758, !1759, !1760}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1756, file: !1736, line: 146, baseType: !367, size: 16)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !1756, file: !1736, line: 148, baseType: !398, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !1756, file: !1736, line: 150, baseType: !1761, size: 64)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !1736, line: 59, size: 64, elements: !1762)
!1762 = !{!1763, !1764, !1765}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1761, file: !1736, line: 61, baseType: !398, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !1761, file: !1736, line: 63, baseType: !398, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !1761, file: !1736, line: 65, baseType: !398, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1735, file: !1736, line: 153, baseType: !153, size: 64, offset: 1152)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1735, file: !1736, line: 154, baseType: !153, size: 64, offset: 1216)
!1768 = !DIDerivedType(tag: DW_TAG_member, scope: !1735, file: !1736, line: 156, baseType: !1769, size: 64, offset: 1280)
!1769 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1735, file: !1736, line: 156, size: 64, elements: !1770)
!1770 = !{!1771, !1772, !1773}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1769, file: !1736, line: 158, baseType: !367, size: 16)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !1769, file: !1736, line: 160, baseType: !398, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !1769, file: !1736, line: 162, baseType: !1774, size: 64)
!1774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !1736, line: 69, size: 64, elements: !1775)
!1775 = !{!1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1774, file: !1736, line: 71, baseType: !398, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !1774, file: !1736, line: 73, baseType: !398, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !1774, file: !1736, line: 75, baseType: !398, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !1774, file: !1736, line: 77, baseType: !398, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !1774, file: !1736, line: 80, baseType: !398, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1774, file: !1736, line: 83, baseType: !398, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !1774, file: !1736, line: 86, baseType: !398, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !1774, file: !1736, line: 88, baseType: !398, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !1774, file: !1736, line: 93, baseType: !398, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !1774, file: !1736, line: 100, baseType: !398, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1711, file: !1634, line: 96, baseType: !174, size: 32, offset: 1024)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1652, file: !1634, line: 352, baseType: !1788, size: 4608, align: 512)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1634, line: 333, size: 4608, align: 512, elements: !1789)
!1789 = !{!1790, !1791, !1800}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1788, file: !1634, line: 334, baseType: !1670, size: 4096, align: 128)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1788, file: !1634, line: 335, baseType: !1792, size: 512, offset: 4096)
!1792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1634, line: 312, size: 512, elements: !1793)
!1793 = !{!1794, !1795, !1796}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1792, file: !1634, line: 313, baseType: !398, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1792, file: !1634, line: 314, baseType: !398, size: 64, offset: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1792, file: !1634, line: 315, baseType: !1797, size: 384, offset: 128)
!1797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 384, elements: !1798)
!1798 = !{!1799}
!1799 = !DISubrange(count: 6)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1788, file: !1634, line: 336, baseType: !1801, offset: 4608)
!1801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !513, elements: !892)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1652, file: !1634, line: 353, baseType: !1803, size: 32768)
!1803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !513, size: 32768, elements: !1804)
!1804 = !{!1805}
!1805 = !DISubrange(count: 4096)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !1633, file: !1634, line: 484, baseType: !1639, size: 64, offset: 192)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1633, file: !1634, line: 491, baseType: !1808, size: 128, offset: 256)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !1634, line: 404, size: 128, elements: !1809)
!1809 = !{!1810, !1811, !1812}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !1808, file: !1634, line: 424, baseType: !398, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !1808, file: !1634, line: 432, baseType: !7, size: 32, offset: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !1808, file: !1634, line: 440, baseType: !7, size: 32, offset: 96)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !1633, file: !1634, line: 498, baseType: !1808, size: 128, offset: 384)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !1633, file: !1634, line: 508, baseType: !1640, size: 33280, align: 512, offset: 512)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !312, file: !6, line: 125, baseType: !311, size: 64, offset: 384)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !312, file: !6, line: 126, baseType: !7, size: 32, offset: 448)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !312, file: !6, line: 127, baseType: !7, size: 32, offset: 480)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "thread_flags", scope: !312, file: !6, line: 128, baseType: !153, size: 64, offset: 512)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "thread_mask", scope: !312, file: !6, line: 129, baseType: !153, size: 64, offset: 576)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !312, file: !6, line: 130, baseType: !217, size: 64, offset: 640)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !312, file: !6, line: 131, baseType: !1822, size: 64, offset: 704)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !189, line: 14, flags: DIFlagFwdDecl)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "status_use_accessors", scope: !188, file: !189, line: 61, baseType: !7, size: 32, offset: 960)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "core_internal_state__do_not_mess_with_it", scope: !188, file: !189, line: 62, baseType: !7, size: 32, offset: 992)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !188, file: !189, line: 63, baseType: !7, size: 32, offset: 1024)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "wake_depth", scope: !188, file: !189, line: 64, baseType: !7, size: 32, offset: 1056)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "tot_count", scope: !188, file: !189, line: 65, baseType: !7, size: 32, offset: 1088)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !188, file: !189, line: 66, baseType: !7, size: 32, offset: 1120)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "last_unhandled", scope: !188, file: !189, line: 67, baseType: !153, size: 64, offset: 1152)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_unhandled", scope: !188, file: !189, line: 68, baseType: !7, size: 32, offset: 1216)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled", scope: !188, file: !189, line: 69, baseType: !344, size: 32, offset: 1248)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled_last", scope: !188, file: !189, line: 70, baseType: !151, size: 32, offset: 1280)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !188, file: !189, line: 71, baseType: !496, size: 32, offset: 1312)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_enabled", scope: !188, file: !189, line: 72, baseType: !1836, size: 64, offset: 1344)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_affinity", scope: !188, file: !189, line: 73, baseType: !165, size: 64, offset: 1408)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "affinity_hint", scope: !188, file: !189, line: 75, baseType: !165, size: 64, offset: 1472)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "affinity_notify", scope: !188, file: !189, line: 76, baseType: !1840, size: 64, offset: 1536)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_affinity_notify", file: !6, line: 261, size: 448, elements: !1842)
!1842 = !{!1843, !1844, !1849, !1850, !1854}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !1841, file: !6, line: 262, baseType: !7, size: 32)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1841, file: !6, line: 263, baseType: !1845, size: 32, offset: 32)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1846, line: 19, size: 32, elements: !1847)
!1846 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1847 = !{!1848}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1845, file: !1846, line: 20, baseType: !339, size: 32)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1841, file: !6, line: 264, baseType: !879, size: 256, offset: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !1841, file: !6, line: 265, baseType: !1851, size: 64, offset: 320)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{null, !1840, !623}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1841, file: !6, line: 266, baseType: !1855, size: 64, offset: 384)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{null, !1858}
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "pending_mask", scope: !188, file: !189, line: 78, baseType: !201, size: 64, offset: 1600)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "threads_oneshot", scope: !188, file: !189, line: 81, baseType: !153, size: 64, offset: 1664)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "threads_active", scope: !188, file: !189, line: 82, baseType: !344, size: 32, offset: 1728)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_threads", scope: !188, file: !189, line: 83, baseType: !1006, size: 192, offset: 1792)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "nr_actions", scope: !188, file: !189, line: 85, baseType: !7, size: 32, offset: 1984)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "no_suspend_depth", scope: !188, file: !189, line: 86, baseType: !7, size: 32, offset: 2016)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "cond_suspend_depth", scope: !188, file: !189, line: 87, baseType: !7, size: 32, offset: 2048)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "force_resume_depth", scope: !188, file: !189, line: 88, baseType: !7, size: 32, offset: 2080)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !188, file: !189, line: 91, baseType: !1822, size: 64, offset: 2112)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !188, file: !189, line: 98, baseType: !1013, size: 128, align: 64, offset: 2176)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !188, file: !189, line: 99, baseType: !1870, size: 512, offset: 2304)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1871, line: 64, size: 512, elements: !1872)
!1871 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1872 = !{!1873, !1874, !1875, !1877, !1919, !2090, !2199, !2200, !2201, !2202, !2203, !2204}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1870, file: !1871, line: 65, baseType: !217, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1870, file: !1871, line: 66, baseType: !403, size: 128, offset: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1870, file: !1871, line: 67, baseType: !1876, size: 64, offset: 192)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1870, file: !1871, line: 68, baseType: !1878, size: 64, offset: 256)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1871, line: 168, size: 768, elements: !1880)
!1880 = !{!1881, !1882, !1883, !1884}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1879, file: !1871, line: 169, baseType: !403, size: 128)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1879, file: !1871, line: 170, baseType: !691, size: 32, offset: 128)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1879, file: !1871, line: 171, baseType: !1870, size: 512, offset: 192)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1879, file: !1871, line: 172, baseType: !1885, size: 64, offset: 704)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1887)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1871, line: 133, size: 192, elements: !1888)
!1888 = !{!1889, !1896, !1901}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1887, file: !1871, line: 134, baseType: !1890, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1891)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DISubroutineType(types: !1893)
!1893 = !{!151, !1894}
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1870)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1887, file: !1871, line: 135, baseType: !1897, size: 64, offset: 64)
!1897 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1898)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DISubroutineType(types: !1900)
!1900 = !{!217, !1894}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1887, file: !1871, line: 136, baseType: !1902, size: 64, offset: 128)
!1902 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1903)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DISubroutineType(types: !1905)
!1905 = !{!151, !1894, !1906}
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1871, line: 125, size: 20736, elements: !1908)
!1908 = !{!1909, !1911, !1913, !1914, !1918}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1907, file: !1871, line: 126, baseType: !1910, size: 192)
!1910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1176, size: 192, elements: !1073)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1907, file: !1871, line: 127, baseType: !1912, size: 4096, offset: 192)
!1912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1176, size: 4096, elements: !1699)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1907, file: !1871, line: 128, baseType: !151, size: 32, offset: 4288)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1907, file: !1871, line: 129, baseType: !1915, size: 16384, offset: 4320)
!1915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 16384, elements: !1916)
!1916 = !{!1917}
!1917 = !DISubrange(count: 2048)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1907, file: !1871, line: 130, baseType: !151, size: 32, offset: 20704)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1870, file: !1871, line: 69, baseType: !1920, size: 64, offset: 320)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1922)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1871, line: 116, size: 384, elements: !1923)
!1923 = !{!1924, !1928, !1950, !2043, !2074, !2078}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1922, file: !1871, line: 117, baseType: !1925, size: 64)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{null, !1876}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1922, file: !1871, line: 118, baseType: !1929, size: 64, offset: 64)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1931)
!1931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1932, line: 254, size: 128, elements: !1933)
!1932 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1933 = !{!1934, !1946}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1931, file: !1932, line: 255, baseType: !1935, size: 64)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{!1938, !1876, !1940, !1176}
!1938 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !241, line: 66, baseType: !1939)
!1939 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !546, line: 73, baseType: !1258)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1932, line: 30, size: 128, elements: !1942)
!1942 = !{!1943, !1944}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1941, file: !1932, line: 31, baseType: !217, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1941, file: !1932, line: 32, baseType: !1945, size: 16, offset: 64)
!1945 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !241, line: 24, baseType: !369)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1931, file: !1932, line: 256, baseType: !1947, size: 64, offset: 64)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!1938, !1876, !1940, !217, !1145}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1922, file: !1871, line: 119, baseType: !1951, size: 64, offset: 128)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1954)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1932, line: 84, size: 320, elements: !1955)
!1955 = !{!1956, !1957, !1961, !2039, !2041}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1954, file: !1932, line: 85, baseType: !217, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1954, file: !1932, line: 86, baseType: !1958, size: 64, offset: 64)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DISubroutineType(types: !1960)
!1960 = !{!1945, !1876, !1940, !151}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1954, file: !1932, line: 88, baseType: !1962, size: 64, offset: 128)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DISubroutineType(types: !1964)
!1964 = !{!1945, !1876, !1965, !151}
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1932, line: 175, size: 512, elements: !1967)
!1967 = !{!1968, !1969, !1970, !1971, !1975, !1981, !1982}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1966, file: !1932, line: 176, baseType: !1941, size: 128)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1966, file: !1932, line: 177, baseType: !1145, size: 64, offset: 128)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1966, file: !1932, line: 178, baseType: !149, size: 64, offset: 192)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1966, file: !1932, line: 179, baseType: !1972, size: 64, offset: 256)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{!1412}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1966, file: !1932, line: 180, baseType: !1976, size: 64, offset: 320)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{!1938, !709, !1876, !1965, !1176, !1979, !1145}
!1979 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !241, line: 52, baseType: !1980)
!1980 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !546, line: 88, baseType: !416)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1966, file: !1932, line: 182, baseType: !1976, size: 64, offset: 384)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1966, file: !1932, line: 184, baseType: !1983, size: 64, offset: 448)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!151, !709, !1876, !1965, !1986}
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !674, line: 625, size: 1344, elements: !1988)
!1988 = !{!1989, !1998, !1999, !2005, !2012, !2013, !2018, !2019, !2024, !2025, !2028, !2032, !2033, !2034, !2035, !2036, !2037}
!1989 = !DIDerivedType(tag: DW_TAG_member, scope: !1987, file: !674, line: 628, baseType: !1990, size: 128)
!1990 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1987, file: !674, line: 628, size: 128, elements: !1991)
!1991 = !{!1992, !1997}
!1992 = !DIDerivedType(tag: DW_TAG_member, scope: !1990, file: !674, line: 629, baseType: !1993, size: 128)
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1990, file: !674, line: 629, size: 128, elements: !1994)
!1994 = !{!1995, !1996}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1993, file: !674, line: 631, baseType: !153, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1993, file: !674, line: 632, baseType: !153, size: 64, offset: 64)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1990, file: !674, line: 635, baseType: !1013, size: 128, align: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1987, file: !674, line: 639, baseType: !672, size: 64, offset: 128)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1987, file: !674, line: 640, baseType: !2000, size: 64, offset: 192)
!2000 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !711, line: 297, baseType: !2001)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !711, line: 297, size: 64, elements: !2002)
!2002 = !{!2003}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2001, file: !711, line: 297, baseType: !2004, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !724, line: 19, baseType: !153)
!2005 = !DIDerivedType(tag: DW_TAG_member, scope: !1987, file: !674, line: 646, baseType: !2006, size: 64, offset: 256)
!2006 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1987, file: !674, line: 646, size: 64, elements: !2007)
!2007 = !{!2008, !2011}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2006, file: !674, line: 647, baseType: !2009, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2010)
!2010 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !674, line: 542, baseType: !153)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2006, file: !674, line: 648, baseType: !2010, size: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1987, file: !674, line: 666, baseType: !151, size: 32, offset: 320)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1987, file: !674, line: 667, baseType: !2014, size: 64, offset: 384)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !674, line: 579, size: 320, elements: !2016)
!2016 = !{!2017}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2015, file: !674, line: 580, baseType: !744, size: 320)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1987, file: !674, line: 670, baseType: !240, size: 8, offset: 448)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1987, file: !674, line: 681, baseType: !2020, size: 256, offset: 512)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1987, file: !674, line: 678, size: 256, elements: !2021)
!2021 = !{!2022, !2023}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2020, file: !674, line: 679, baseType: !390, size: 192, align: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2020, file: !674, line: 680, baseType: !153, size: 64, offset: 192)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1987, file: !674, line: 689, baseType: !403, size: 128, offset: 768)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1987, file: !674, line: 691, baseType: !2026, size: 64, offset: 896)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !674, line: 691, flags: DIFlagFwdDecl)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1987, file: !674, line: 694, baseType: !2029, size: 64, offset: 960)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2031)
!2031 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !674, line: 694, flags: DIFlagFwdDecl)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1987, file: !674, line: 697, baseType: !153, size: 64, offset: 1024)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1987, file: !674, line: 699, baseType: !709, size: 64, offset: 1088)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1987, file: !674, line: 700, baseType: !149, size: 64, offset: 1152)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1987, file: !674, line: 711, baseType: !735, size: 64, offset: 1216)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1987, file: !674, line: 717, baseType: !1347, size: 64, offset: 1280)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1987, file: !674, line: 722, baseType: !2038, offset: 1344)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !674, line: 570, elements: !702)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1954, file: !1932, line: 90, baseType: !2040, size: 64, offset: 192)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1954, file: !1932, line: 91, baseType: !2042, size: 64, offset: 256)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1922, file: !1871, line: 120, baseType: !2044, size: 64, offset: 192)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!2047, !1894}
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2049)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !38, line: 39, size: 384, elements: !2050)
!2050 = !{!2051, !2052, !2056, !2060, !2066, !2070}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2049, file: !38, line: 40, baseType: !37, size: 32)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2049, file: !38, line: 41, baseType: !2053, size: 64, offset: 64)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{!240}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2049, file: !38, line: 42, baseType: !2057, size: 64, offset: 128)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{!149}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2049, file: !38, line: 43, baseType: !2061, size: 64, offset: 192)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!836, !2064}
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !38, line: 19, flags: DIFlagFwdDecl)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2049, file: !38, line: 44, baseType: !2067, size: 64, offset: 256)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{!836}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2049, file: !38, line: 45, baseType: !2071, size: 64, offset: 320)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{null, !149}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1922, file: !1871, line: 121, baseType: !2075, size: 64, offset: 256)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{!836, !1894}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1922, file: !1871, line: 122, baseType: !2079, size: 64, offset: 320)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{null, !1894, !2082, !2083}
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1155, line: 28, baseType: !2085)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1155, line: 26, size: 32, elements: !2086)
!2086 = !{!2087}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2085, file: !1155, line: 27, baseType: !2088, size: 32)
!2088 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !241, line: 38, baseType: !2089)
!2089 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !546, line: 50, baseType: !7)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1870, file: !1871, line: 70, baseType: !2091, size: 64, offset: 384)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2093, line: 190, size: 1152, elements: !2094)
!2093 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!2094 = !{!2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2191, !2192, !2193, !2194, !2195, !2198}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2092, file: !2093, line: 191, baseType: !344, size: 32)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2092, file: !2093, line: 192, baseType: !344, size: 32, offset: 32)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2092, file: !2093, line: 202, baseType: !2091, size: 64, offset: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2092, file: !2093, line: 203, baseType: !217, size: 64, offset: 128)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2092, file: !2093, line: 205, baseType: !390, size: 192, align: 64, offset: 192)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2092, file: !2093, line: 207, baseType: !836, size: 64, offset: 384)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2092, file: !2093, line: 208, baseType: !7, size: 32, offset: 448)
!2102 = !DIDerivedType(tag: DW_TAG_member, scope: !2092, file: !2093, line: 209, baseType: !2103, size: 256, offset: 512)
!2103 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2092, file: !2093, line: 209, size: 256, elements: !2104)
!2104 = !{!2105, !2114, !2118}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2103, file: !2093, line: 210, baseType: !2106, size: 256)
!2106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2093, line: 153, size: 256, elements: !2107)
!2107 = !{!2108, !2109, !2110, !2113}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2106, file: !2093, line: 154, baseType: !153, size: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2106, file: !2093, line: 156, baseType: !565, size: 64, offset: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2106, file: !2093, line: 162, baseType: !2111, size: 64, offset: 128)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2093, line: 162, flags: DIFlagFwdDecl)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2106, file: !2093, line: 167, baseType: !153, size: 64, offset: 192)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2103, file: !2093, line: 211, baseType: !2115, size: 64)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2093, line: 170, size: 64, elements: !2116)
!2116 = !{!2117}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2115, file: !2093, line: 171, baseType: !2091, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2103, file: !2093, line: 212, baseType: !2119, size: 256)
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2093, line: 174, size: 256, elements: !2120)
!2120 = !{!2121, !2186, !2189, !2190}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2119, file: !2093, line: 175, baseType: !2122, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2124)
!2124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2093, line: 271, size: 768, elements: !2125)
!2125 = !{!2126, !2146, !2150, !2154, !2159, !2163, !2167, !2171, !2172, !2173, !2174, !2182}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2124, file: !2093, line: 276, baseType: !2127, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{!151, !2130}
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2093, line: 251, size: 1216, elements: !2132)
!2132 = !{!2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2131, file: !2093, line: 253, baseType: !2091, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2131, file: !2093, line: 254, baseType: !709, size: 64, offset: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2131, file: !2093, line: 255, baseType: !262, size: 64, offset: 128)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2131, file: !2093, line: 256, baseType: !149, size: 64, offset: 192)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2131, file: !2093, line: 259, baseType: !815, size: 256, offset: 256)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2131, file: !2093, line: 260, baseType: !815, size: 256, offset: 512)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2131, file: !2093, line: 261, baseType: !151, size: 32, offset: 768)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2131, file: !2093, line: 262, baseType: !403, size: 128, offset: 832)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2131, file: !2093, line: 263, baseType: !1176, size: 64, offset: 960)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2131, file: !2093, line: 265, baseType: !1145, size: 64, offset: 1024)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2131, file: !2093, line: 266, baseType: !240, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2131, file: !2093, line: 267, baseType: !240, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2131, file: !2093, line: 268, baseType: !2029, size: 64, offset: 1152)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2124, file: !2093, line: 277, baseType: !2147, size: 64, offset: 64)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{null, !2130}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2124, file: !2093, line: 290, baseType: !2151, size: 64, offset: 128)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!151, !262, !149}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2124, file: !2093, line: 292, baseType: !2155, size: 64, offset: 192)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = !DISubroutineType(types: !2157)
!2157 = !{!149, !262, !2158}
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2124, file: !2093, line: 293, baseType: !2160, size: 64, offset: 256)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{!149, !262, !149, !2158}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2124, file: !2093, line: 294, baseType: !2164, size: 64, offset: 320)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{null, !262, !149}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2124, file: !2093, line: 296, baseType: !2168, size: 64, offset: 384)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!1938, !2130, !1176, !1145, !1979}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2124, file: !2093, line: 306, baseType: !1145, size: 64, offset: 448)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2124, file: !2093, line: 313, baseType: !240, size: 8, offset: 512)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2124, file: !2093, line: 314, baseType: !2168, size: 64, offset: 576)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2124, file: !2093, line: 317, baseType: !2175, size: 64, offset: 640)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!2178, !2130, !2180}
!2178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2179, line: 59, baseType: !7)
!2179 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2093, line: 31, flags: DIFlagFwdDecl)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2124, file: !2093, line: 320, baseType: !2183, size: 64, offset: 704)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{!151, !2130, !1986}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2119, file: !2093, line: 176, baseType: !2187, size: 64, offset: 64)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2093, line: 35, flags: DIFlagFwdDecl)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2119, file: !2093, line: 177, baseType: !1979, size: 64, offset: 128)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2119, file: !2093, line: 178, baseType: !2091, size: 64, offset: 192)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2092, file: !2093, line: 215, baseType: !149, size: 64, offset: 768)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2092, file: !2093, line: 221, baseType: !398, size: 64, offset: 832)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2092, file: !2093, line: 223, baseType: !369, size: 16, offset: 896)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2092, file: !2093, line: 224, baseType: !1945, size: 16, offset: 912)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2092, file: !2093, line: 225, baseType: !2196, size: 64, offset: 960)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2093, line: 36, flags: DIFlagFwdDecl)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2092, file: !2093, line: 227, baseType: !1013, size: 128, align: 64, offset: 1024)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1870, file: !1871, line: 71, baseType: !1845, size: 32, offset: 448)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1870, file: !1871, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1870, file: !1871, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1870, file: !1871, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1870, file: !1871, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1870, file: !1871, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "request_mutex", scope: !188, file: !189, line: 101, baseType: !815, size: 256, offset: 2816)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "parent_irq", scope: !188, file: !189, line: 102, baseType: !151, size: 32, offset: 3072)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !188, file: !189, line: 103, baseType: !2208, size: 64, offset: 3136)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !44, line: 402, size: 9216, align: 512, elements: !2210)
!2210 = !{!2211, !2212, !2213, !2217, !2227, !2253, !2254, !2255, !2256, !2260, !2263, !2264, !2265, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2332, !2336, !2356, !2373, !2374, !2375, !2376, !2385, !2408, !2409, !2412, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2425, !2426, !2515, !2523, !2524, !2525, !2527, !2531, !2532, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2554, !2555, !2556, !2560}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2209, file: !44, line: 403, baseType: !43, size: 32)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2209, file: !44, line: 406, baseType: !403, size: 128, offset: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2209, file: !44, line: 409, baseType: !2214, size: 448, offset: 192)
!2214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 448, elements: !2215)
!2215 = !{!2216}
!2216 = !DISubrange(count: 56)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !2209, file: !44, line: 417, baseType: !2218, size: 768, offset: 640)
!2218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !44, line: 45, size: 768, elements: !2219)
!2219 = !{!2220, !2221, !2222, !2223, !2226}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2218, file: !44, line: 46, baseType: !1870, size: 512)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2218, file: !44, line: 47, baseType: !2208, size: 64, offset: 512)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !2218, file: !44, line: 48, baseType: !1876, size: 64, offset: 576)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !2218, file: !44, line: 49, baseType: !2224, size: 64, offset: 640)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !44, line: 49, flags: DIFlagFwdDecl)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !2218, file: !44, line: 50, baseType: !1034, size: 64, offset: 704)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !2209, file: !44, line: 418, baseType: !2228, size: 64, offset: 1408)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !44, line: 53, size: 448, elements: !2230)
!2230 = !{!2231, !2232, !2237, !2241, !2245, !2249}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2229, file: !44, line: 54, baseType: !1941, size: 128)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2229, file: !44, line: 55, baseType: !2233, size: 64, offset: 128)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = !DISubroutineType(types: !2235)
!2235 = !{!1938, !2228, !2236, !1176}
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2229, file: !44, line: 57, baseType: !2238, size: 64, offset: 192)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!1938, !2228, !2236, !217, !1145}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2229, file: !44, line: 59, baseType: !2242, size: 64, offset: 256)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{null, !2208, !217}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2229, file: !44, line: 60, baseType: !2246, size: 64, offset: 320)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DISubroutineType(types: !2248)
!2248 = !{!151, !2208}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2229, file: !44, line: 61, baseType: !2250, size: 64, offset: 384)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{null, !2208}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2209, file: !44, line: 419, baseType: !217, size: 64, offset: 1472)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !2209, file: !44, line: 420, baseType: !217, size: 64, offset: 1536)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !2209, file: !44, line: 421, baseType: !1876, size: 64, offset: 1600)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !2209, file: !44, line: 424, baseType: !2257, size: 64, offset: 1664)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2259)
!2259 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !44, line: 424, flags: DIFlagFwdDecl)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !2209, file: !44, line: 425, baseType: !2261, size: 64, offset: 1728)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !794)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !2209, file: !44, line: 426, baseType: !7, size: 32, offset: 1792)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !2209, file: !44, line: 435, baseType: !815, size: 256, offset: 1856)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !2209, file: !44, line: 437, baseType: !2266, size: 64, offset: 2112)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2268, line: 69, size: 320, elements: !2269)
!2268 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2269 = !{!2270, !2271, !2272, !2289, !2291, !2295, !2296}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2267, file: !2268, line: 70, baseType: !217, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2267, file: !2268, line: 71, baseType: !2208, size: 64, offset: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2267, file: !2268, line: 72, baseType: !2273, size: 64, offset: 128)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2275)
!2275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2268, line: 47, size: 256, elements: !2276)
!2276 = !{!2277, !2278, !2284, !2288}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2275, file: !2268, line: 49, baseType: !7, size: 32)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2275, file: !2268, line: 51, baseType: !2279, size: 64, offset: 64)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{!151, !217, !2282}
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2267)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2275, file: !2268, line: 53, baseType: !2285, size: 64, offset: 128)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = !DISubroutineType(types: !2287)
!2287 = !{!151, !1176, !2282}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2275, file: !2268, line: 55, baseType: !2071, size: 64, offset: 192)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2267, file: !2268, line: 73, baseType: !2290, size: 16, offset: 192)
!2290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !367)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2267, file: !2268, line: 74, baseType: !2292, size: 8, offset: 208)
!2292 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !175, line: 16, baseType: !2293)
!2293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !177, line: 20, baseType: !2294)
!2294 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2267, file: !2268, line: 75, baseType: !513, size: 8, offset: 216)
!2296 = !DIDerivedType(tag: DW_TAG_member, scope: !2267, file: !2268, line: 76, baseType: !2297, size: 64, offset: 256)
!2297 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2267, file: !2268, line: 76, size: 64, elements: !2298)
!2298 = !{!2299, !2300, !2307}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2297, file: !2268, line: 77, baseType: !149, size: 64)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2297, file: !2268, line: 78, baseType: !2301, size: 64)
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2303)
!2303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2268, line: 86, size: 128, elements: !2304)
!2304 = !{!2305, !2306}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2303, file: !2268, line: 87, baseType: !7, size: 32)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2303, file: !2268, line: 88, baseType: !1176, size: 64, offset: 64)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2297, file: !2268, line: 79, baseType: !2308, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2310)
!2310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2268, line: 92, size: 256, elements: !2311)
!2311 = !{!2312, !2313, !2314, !2315, !2316}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2310, file: !2268, line: 94, baseType: !7, size: 32)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2310, file: !2268, line: 95, baseType: !7, size: 32, offset: 32)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2310, file: !2268, line: 96, baseType: !150, size: 64, offset: 64)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2310, file: !2268, line: 97, baseType: !2273, size: 64, offset: 128)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2310, file: !2268, line: 98, baseType: !149, size: 64, offset: 192)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !2209, file: !44, line: 438, baseType: !7, size: 32, offset: 2176)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !2209, file: !44, line: 441, baseType: !7, size: 32, offset: 2208)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !2209, file: !44, line: 442, baseType: !2257, size: 64, offset: 2240)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !2209, file: !44, line: 443, baseType: !2261, size: 64, offset: 2304)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !2209, file: !44, line: 444, baseType: !240, size: 8, offset: 2368)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !2209, file: !44, line: 451, baseType: !240, size: 8, offset: 2376)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !2209, file: !44, line: 454, baseType: !7, size: 32, offset: 2400)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2209, file: !44, line: 455, baseType: !2325, size: 64, offset: 2432)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2327, line: 23, size: 96, elements: !2328)
!2327 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2328 = !{!2329, !2330, !2331}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2326, file: !2327, line: 24, baseType: !151, size: 32)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2326, file: !2327, line: 24, baseType: !151, size: 32, offset: 32)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2326, file: !2327, line: 24, baseType: !151, size: 32, offset: 64)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !2209, file: !44, line: 458, baseType: !2333, size: 64, offset: 2496)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{!151}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !2209, file: !44, line: 460, baseType: !2337, size: 4032, align: 512, offset: 2560)
!2337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2338, size: 4032, elements: !2354)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !44, line: 362, size: 576, elements: !2339)
!2339 = !{!2340, !2341, !2342}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2338, file: !44, line: 363, baseType: !149, size: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2338, file: !44, line: 364, baseType: !7, size: 32, offset: 64)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2338, file: !44, line: 367, baseType: !2343, size: 448, offset: 128)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !44, line: 319, size: 448, elements: !2344)
!2344 = !{!2345, !2346}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2343, file: !44, line: 320, baseType: !2208, size: 64)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2343, file: !44, line: 321, baseType: !2347, size: 384, offset: 64)
!2347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2348, line: 40, size: 384, elements: !2349)
!2348 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2349 = !{!2350}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2347, file: !2348, line: 41, baseType: !2351, size: 384, align: 64)
!2351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 384, align: 64, elements: !2352)
!2352 = !{!2353}
!2353 = !DISubrange(count: 2)
!2354 = !{!2355}
!2355 = !DISubrange(count: 7)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2209, file: !44, line: 463, baseType: !2357, size: 192, offset: 6592)
!2357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2358, line: 8, size: 192, elements: !2359)
!2358 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2359 = !{!2360, !2361, !2362}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2357, file: !2358, line: 10, baseType: !7, size: 32)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2357, file: !2358, line: 11, baseType: !154, size: 64, offset: 64)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2357, file: !2358, line: 12, baseType: !2363, size: 64, offset: 128)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2365, line: 59, size: 48, elements: !2366)
!2365 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2366 = !{!2367, !2368, !2369, !2370, !2371, !2372}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2364, file: !2365, line: 60, baseType: !854, size: 16)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2364, file: !2365, line: 61, baseType: !854, size: 16, offset: 16)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2364, file: !2365, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2364, file: !2365, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2364, file: !2365, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2364, file: !2365, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !2209, file: !44, line: 465, baseType: !153, size: 64, offset: 6784)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !2209, file: !44, line: 469, baseType: !7, size: 32, offset: 6848)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !2209, file: !44, line: 470, baseType: !403, size: 128, offset: 6912)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !2209, file: !44, line: 471, baseType: !2377, size: 64, offset: 7040)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2379, line: 33, size: 96, elements: !2380)
!2379 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2380 = !{!2381, !2382, !2383, !2384}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2378, file: !2379, line: 37, baseType: !151, size: 32)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2378, file: !2379, line: 43, baseType: !151, size: 32, offset: 32)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2378, file: !2379, line: 45, baseType: !369, size: 16, offset: 64)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2378, file: !2379, line: 47, baseType: !369, size: 16, offset: 80)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !2209, file: !44, line: 476, baseType: !2386, size: 64, offset: 7104)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !44, line: 378, size: 256, elements: !2388)
!2388 = !{!2389, !2405, !2406, !2407}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2387, file: !44, line: 379, baseType: !2390, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2392, line: 204, baseType: !2393)
!2392 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2392, line: 197, size: 192, elements: !2394)
!2394 = !{!2395, !2397, !2398, !2399, !2401, !2403}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2393, file: !2392, line: 198, baseType: !2396, size: 32)
!2396 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2392, line: 21, baseType: !176)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2393, file: !2392, line: 199, baseType: !515, size: 8, offset: 32)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2393, file: !2392, line: 200, baseType: !515, size: 8, offset: 40)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2393, file: !2392, line: 201, baseType: !2400, size: 16, offset: 48)
!2400 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2392, line: 17, baseType: !368)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2393, file: !2392, line: 202, baseType: !2402, size: 64, offset: 64)
!2402 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2392, line: 16, baseType: !399)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2393, file: !2392, line: 203, baseType: !2404, size: 64, offset: 128)
!2404 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2392, line: 22, baseType: !399)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2387, file: !44, line: 380, baseType: !7, size: 32, offset: 64)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2387, file: !44, line: 381, baseType: !1176, size: 64, offset: 128)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2387, file: !44, line: 382, baseType: !1176, size: 64, offset: 192)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !2209, file: !44, line: 477, baseType: !2387, size: 256, offset: 7168)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !2209, file: !44, line: 480, baseType: !2410, size: 64, offset: 7424)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !44, line: 480, flags: DIFlagFwdDecl)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !2209, file: !44, line: 483, baseType: !2413, size: 64, offset: 7488)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !44, line: 483, flags: DIFlagFwdDecl)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2209, file: !44, line: 488, baseType: !1176, size: 64, offset: 7552)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !2209, file: !44, line: 492, baseType: !149, size: 64, offset: 7616)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !2209, file: !44, line: 493, baseType: !7, size: 32, offset: 7680)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !2209, file: !44, line: 495, baseType: !149, size: 64, offset: 7744)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !2209, file: !44, line: 496, baseType: !7, size: 32, offset: 7808)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !2209, file: !44, line: 499, baseType: !7, size: 32, offset: 7840)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !2209, file: !44, line: 500, baseType: !2422, size: 64, offset: 7872)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !160, line: 45, baseType: !2424)
!2424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !2209, file: !44, line: 503, baseType: !7, size: 32, offset: 7936)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !2209, file: !44, line: 504, baseType: !2427, size: 64, offset: 8000)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2430, line: 96, size: 192, elements: !2431)
!2430 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2431 = !{!2432, !2433, !2476, !2479}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2429, file: !2430, line: 97, baseType: !7, size: 32)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2429, file: !2430, line: 98, baseType: !2434, size: 64, offset: 64)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2430, line: 24, size: 3072, elements: !2436)
!2436 = !{!2437, !2439, !2440, !2441, !2442, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2473, !2474, !2475}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2435, file: !2430, line: 26, baseType: !2438, size: 128)
!2438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !735, size: 128, elements: !2352)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2435, file: !2430, line: 27, baseType: !2438, size: 128, offset: 128)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2435, file: !2430, line: 28, baseType: !151, size: 32, offset: 256)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2435, file: !2430, line: 31, baseType: !691, size: 32, align: 512, offset: 512)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2435, file: !2430, line: 32, baseType: !2443, size: 960, offset: 576)
!2443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2444, line: 206, size: 960, elements: !2445)
!2444 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2445 = !{!2446, !2447, !2450, !2452, !2453, !2455}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2443, file: !2444, line: 207, baseType: !1016, size: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2443, file: !2444, line: 208, baseType: !2448, size: 256, offset: 64)
!2448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2449, size: 256, elements: !796)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2443, file: !2444, line: 209, baseType: !2451, size: 256, offset: 320)
!2451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 256, elements: !796)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2443, file: !2444, line: 213, baseType: !839, size: 64, offset: 576)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2443, file: !2444, line: 215, baseType: !2454, size: 256, offset: 640)
!2454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !839, size: 256, elements: !796)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2443, file: !2444, line: 216, baseType: !513, size: 8, offset: 896)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2435, file: !2430, line: 33, baseType: !153, size: 64, offset: 1536)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2435, file: !2430, line: 34, baseType: !153, size: 64, offset: 1600)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2435, file: !2430, line: 35, baseType: !240, size: 8, offset: 1664)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2435, file: !2430, line: 36, baseType: !1545, size: 320, offset: 1728)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2435, file: !2430, line: 37, baseType: !879, size: 256, offset: 2048)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2435, file: !2430, line: 38, baseType: !1013, size: 128, align: 64, offset: 2304)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2435, file: !2430, line: 39, baseType: !2463, size: 64, offset: 2432)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2430, line: 49, size: 768, elements: !2465)
!2465 = !{!2466, !2467, !2468, !2469, !2470, !2471, !2472}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2464, file: !2430, line: 50, baseType: !691, size: 32)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2464, file: !2430, line: 51, baseType: !2451, size: 256, offset: 64)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2464, file: !2430, line: 53, baseType: !2451, size: 256, offset: 320)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2464, file: !2430, line: 54, baseType: !153, size: 64, offset: 576)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2464, file: !2430, line: 55, baseType: !2463, size: 64, offset: 640)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2464, file: !2430, line: 56, baseType: !151, size: 32, offset: 704)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2464, file: !2430, line: 57, baseType: !151, size: 32, offset: 736)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2435, file: !2430, line: 40, baseType: !153, size: 64, offset: 2496)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2435, file: !2430, line: 42, baseType: !151, size: 32, offset: 2560)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2435, file: !2430, line: 43, baseType: !2428, size: 64, offset: 2624)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2429, file: !2430, line: 99, baseType: !2477, offset: 128)
!2477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2478, line: 211, elements: !702)
!2478 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2429, file: !2430, line: 100, baseType: !2480, size: 64, offset: 128)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2430, line: 63, size: 3008, elements: !2482)
!2482 = !{!2483, !2484, !2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2503, !2504, !2505, !2514}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2481, file: !2430, line: 64, baseType: !2463, size: 64)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2481, file: !2430, line: 65, baseType: !2485, size: 192, offset: 64)
!2485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2463, size: 192, elements: !1073)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2481, file: !2430, line: 67, baseType: !151, size: 32, offset: 256)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2481, file: !2430, line: 68, baseType: !815, size: 256, offset: 320)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2481, file: !2430, line: 69, baseType: !691, size: 32, offset: 576)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2481, file: !2430, line: 70, baseType: !815, size: 256, offset: 640)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2481, file: !2430, line: 71, baseType: !153, size: 64, offset: 896)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2481, file: !2430, line: 72, baseType: !153, size: 64, offset: 960)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2481, file: !2430, line: 73, baseType: !153, size: 64, offset: 1024)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2481, file: !2430, line: 74, baseType: !153, size: 64, offset: 1088)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2481, file: !2430, line: 75, baseType: !153, size: 64, offset: 1152)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2481, file: !2430, line: 76, baseType: !153, size: 64, offset: 1216)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2481, file: !2430, line: 77, baseType: !153, size: 64, offset: 1280)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2481, file: !2430, line: 78, baseType: !153, size: 64, offset: 1344)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2481, file: !2430, line: 79, baseType: !240, size: 8, offset: 1408)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2481, file: !2430, line: 80, baseType: !153, size: 64, offset: 1472)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2481, file: !2430, line: 81, baseType: !815, size: 256, offset: 1536)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2481, file: !2430, line: 82, baseType: !1035, size: 256, offset: 1792)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2481, file: !2430, line: 84, baseType: !344, size: 32, offset: 2048)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2481, file: !2430, line: 87, baseType: !153, size: 64, offset: 2112)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2481, file: !2430, line: 88, baseType: !153, size: 64, offset: 2176)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2481, file: !2430, line: 89, baseType: !2506, size: 704, offset: 2240)
!2506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !880, line: 111, size: 704, elements: !2507)
!2507 = !{!2508, !2509, !2510, !2513}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2506, file: !880, line: 112, baseType: !879, size: 256)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2506, file: !880, line: 113, baseType: !1545, size: 320, offset: 256)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2506, file: !880, line: 116, baseType: !2511, size: 64, offset: 576)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !880, line: 18, flags: DIFlagFwdDecl)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2506, file: !880, line: 117, baseType: !151, size: 32, offset: 640)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2481, file: !2430, line: 90, baseType: !2428, size: 64, offset: 2944)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !2209, file: !44, line: 515, baseType: !2516, size: 64, offset: 8064)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2518, line: 117, size: 128, elements: !2519)
!2518 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2519 = !{!2520, !2521, !2522}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2517, file: !2518, line: 118, baseType: !794, size: 32)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2517, file: !2518, line: 119, baseType: !794, size: 32, offset: 32)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2517, file: !2518, line: 120, baseType: !839, size: 64, offset: 64)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !2209, file: !44, line: 516, baseType: !7, size: 32, offset: 8128)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !2209, file: !44, line: 519, baseType: !7, size: 32, offset: 8160)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !2209, file: !44, line: 520, baseType: !2526, size: 64, offset: 8192)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !2209, file: !44, line: 523, baseType: !2528, size: 64, offset: 8256)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !44, line: 523, flags: DIFlagFwdDecl)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !2209, file: !44, line: 524, baseType: !7, size: 32, offset: 8320)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !2209, file: !44, line: 525, baseType: !2533, size: 64, offset: 8384)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !2536, line: 28, size: 192, elements: !2537)
!2536 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!2537 = !{!2538, !2539, !2540}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !2535, file: !2536, line: 29, baseType: !217, size: 64)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !2535, file: !2536, line: 30, baseType: !217, size: 64, offset: 64)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !2535, file: !2536, line: 31, baseType: !153, size: 64, offset: 128)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !2209, file: !44, line: 526, baseType: !7, size: 32, offset: 8448)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !2209, file: !44, line: 533, baseType: !149, size: 64, offset: 8512)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !2209, file: !44, line: 534, baseType: !7, size: 32, offset: 8576)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !2209, file: !44, line: 535, baseType: !152, size: 64, offset: 8640)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !2209, file: !44, line: 536, baseType: !7, size: 32, offset: 8704)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !2209, file: !44, line: 539, baseType: !151, size: 32, offset: 8736)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !2209, file: !44, line: 540, baseType: !2548, size: 64, offset: 8768)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2550, line: 32, size: 64, elements: !2551)
!2550 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2551 = !{!2552, !2553}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2549, file: !2550, line: 33, baseType: !794, size: 32)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2549, file: !2550, line: 34, baseType: !794, size: 32, offset: 32)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !2209, file: !44, line: 563, baseType: !403, size: 128, offset: 8832)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !2209, file: !44, line: 565, baseType: !403, size: 128, offset: 8960)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !2209, file: !44, line: 568, baseType: !2557, size: 64, offset: 9088)
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2558 = !DISubroutineType(types: !2559)
!2559 = !{null}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2209, file: !44, line: 570, baseType: !344, size: 32, offset: 9152)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !188, file: !189, line: 104, baseType: !217, size: 64, offset: 3200)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "resend_node", scope: !188, file: !189, line: 106, baseType: !999, size: 128, offset: 3264)
!2563 = !{!2564, !2565, !2566, !2567, !2568, !2572, !2575, !2577, !2580, !2581, !2584, !2585, !2588, !2589, !2591}
!2564 = !DILocalVariable(name: "desc", arg: 1, scope: !183, file: !3, line: 139, type: !187)
!2565 = !DILocalVariable(name: "retval", scope: !183, file: !3, line: 141, type: !186)
!2566 = !DILocalVariable(name: "irq", scope: !183, file: !3, line: 142, type: !7)
!2567 = !DILocalVariable(name: "action", scope: !183, file: !3, line: 143, type: !311)
!2568 = !DILocalVariable(name: "res", scope: !2569, file: !3, line: 148, type: !186)
!2569 = distinct !DILexicalBlock(scope: !2570, file: !3, line: 147, column: 40)
!2570 = distinct !DILexicalBlock(scope: !2571, file: !3, line: 147, column: 2)
!2571 = distinct !DILexicalBlock(scope: !183, file: !3, line: 147, column: 2)
!2572 = !DILocalVariable(name: "__ret_do_once", scope: !2573, file: !3, line: 161, type: !240)
!2573 = distinct !DILexicalBlock(scope: !2574, file: !3, line: 161, column: 7)
!2574 = distinct !DILexicalBlock(scope: !2569, file: !3, line: 161, column: 7)
!2575 = !DILocalVariable(name: "_flags", scope: !2576, file: !3, line: 161, type: !153)
!2576 = distinct !DILexicalBlock(scope: !2573, file: !3, line: 161, column: 7)
!2577 = !DILocalVariable(name: "__dummy", scope: !2578, file: !3, line: 161, type: !153)
!2578 = distinct !DILexicalBlock(scope: !2579, file: !3, line: 161, column: 7)
!2579 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 161, column: 7)
!2580 = !DILocalVariable(name: "__dummy2", scope: !2578, file: !3, line: 161, type: !153)
!2581 = !DILocalVariable(name: "__dummy", scope: !2582, file: !3, line: 161, type: !153)
!2582 = distinct !DILexicalBlock(scope: !2583, file: !3, line: 161, column: 7)
!2583 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 161, column: 7)
!2584 = !DILocalVariable(name: "__dummy2", scope: !2582, file: !3, line: 161, type: !153)
!2585 = !DILocalVariable(name: "__ret_cond", scope: !2586, file: !3, line: 161, type: !240)
!2586 = distinct !DILexicalBlock(scope: !2587, file: !3, line: 161, column: 7)
!2587 = distinct !DILexicalBlock(scope: !2573, file: !3, line: 161, column: 7)
!2588 = !DILocalVariable(name: "__ret_once", scope: !2586, file: !3, line: 161, type: !240)
!2589 = !DILocalVariable(name: "__ret_warn_on", scope: !2590, file: !3, line: 161, type: !151)
!2590 = distinct !DILexicalBlock(scope: !2587, file: !3, line: 161, column: 7)
!2591 = !DILocalVariable(name: "__flags", scope: !2592, file: !3, line: 161, type: !151)
!2592 = distinct !DILexicalBlock(scope: !2593, file: !3, line: 161, column: 7)
!2593 = distinct !DILexicalBlock(scope: !2594, file: !3, line: 161, column: 7)
!2594 = distinct !DILexicalBlock(scope: !2590, file: !3, line: 161, column: 7)
!2595 = !DIGlobalVariableExpression(var: !2596, expr: !DIExpression())
!2596 = distinct !DIGlobalVariable(scope: null, file: !3, line: 161, type: !2597, isLocal: true, isDefinition: true)
!2597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 312, elements: !2598)
!2598 = !{!2599}
!2599 = !DISubrange(count: 39)
!2600 = !DIGlobalVariableExpression(var: !2601, expr: !DIExpression())
!2601 = distinct !DIGlobalVariable(scope: null, file: !3, line: 161, type: !2602, isLocal: true, isDefinition: true)
!2602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 160, elements: !1666)
!2603 = !DIGlobalVariableExpression(var: !2604, expr: !DIExpression())
!2604 = distinct !DIGlobalVariable(name: "ratelimit", scope: !2605, file: !2606, line: 13, type: !2612, isLocal: true, isDefinition: true)
!2605 = distinct !DISubprogram(name: "print_irq_desc", scope: !2606, file: !2606, line: 11, type: !2607, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2609)
!2606 = !DIFile(filename: "kernel/irq/debug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9a3f1699e84aa9a56a08afe2e909d891")
!2607 = !DISubroutineType(types: !2608)
!2608 = !{null, !7, !187}
!2609 = !{!2610, !2611}
!2610 = !DILocalVariable(name: "irq", arg: 1, scope: !2605, file: !2606, line: 11, type: !7)
!2611 = !DILocalVariable(name: "desc", arg: 2, scope: !2605, file: !2606, line: 11, type: !187)
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2613, line: 15, size: 320, elements: !2614)
!2613 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!2614 = !{!2615, !2616, !2617, !2618, !2619, !2620, !2621}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2612, file: !2613, line: 16, baseType: !496, size: 32)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2612, file: !2613, line: 18, baseType: !151, size: 32, offset: 32)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2612, file: !2613, line: 19, baseType: !151, size: 32, offset: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2612, file: !2613, line: 20, baseType: !151, size: 32, offset: 96)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2612, file: !2613, line: 21, baseType: !151, size: 32, offset: 128)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2612, file: !2613, line: 22, baseType: !153, size: 64, offset: 192)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2612, file: !2613, line: 23, baseType: !153, size: 64, offset: 256)
!2622 = !DIGlobalVariableExpression(var: !2623, expr: !DIExpression())
!2623 = distinct !DIGlobalVariable(scope: null, file: !2606, line: 15, type: !2624, isLocal: true, isDefinition: true)
!2624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 120, elements: !2625)
!2625 = !{!2626}
!2626 = !DISubrange(count: 15)
!2627 = !DIGlobalVariableExpression(var: !2628, expr: !DIExpression())
!2628 = distinct !DIGlobalVariable(scope: null, file: !2606, line: 18, type: !2629, isLocal: true, isDefinition: true)
!2629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 440, elements: !2630)
!2630 = !{!2631}
!2631 = !DISubrange(count: 55)
!2632 = !DIGlobalVariableExpression(var: !2633, expr: !DIExpression())
!2633 = distinct !DIGlobalVariable(scope: null, file: !2606, line: 20, type: !2634, isLocal: true, isDefinition: true)
!2634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 208, elements: !2635)
!2635 = !{!2636}
!2636 = !DISubrange(count: 26)
!2637 = !DIGlobalVariableExpression(var: !2638, expr: !DIExpression())
!2638 = distinct !DIGlobalVariable(scope: null, file: !2606, line: 22, type: !2639, isLocal: true, isDefinition: true)
!2639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 224, elements: !2640)
!2640 = !{!2641}
!2641 = !DISubrange(count: 28)
!2642 = !DIGlobalVariableExpression(var: !2643, expr: !DIExpression())
!2643 = distinct !DIGlobalVariable(scope: null, file: !2606, line: 24, type: !1093, isLocal: true, isDefinition: true)
!2644 = !DIGlobalVariableExpression(var: !2645, expr: !DIExpression())
!2645 = distinct !DIGlobalVariable(scope: null, file: !2606, line: 26, type: !2646, isLocal: true, isDefinition: true)
!2646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 240, elements: !2647)
!2647 = !{!2648}
!2648 = !DISubrange(count: 30)
!2649 = !DIGlobalVariableExpression(var: !2650, expr: !DIExpression())
!2650 = distinct !DIGlobalVariable(scope: null, file: !2606, line: 30, type: !2651, isLocal: true, isDefinition: true)
!2651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 80, elements: !2652)
!2652 = !{!2653}
!2653 = !DISubrange(count: 10)
!2654 = !DIGlobalVariableExpression(var: !2655, expr: !DIExpression())
!2655 = distinct !DIGlobalVariable(scope: null, file: !2606, line: 30, type: !2651, isLocal: true, isDefinition: true)
!2656 = !DIGlobalVariableExpression(var: !2657, expr: !DIExpression())
!2657 = distinct !DIGlobalVariable(scope: null, file: !2606, line: 31, type: !2658, isLocal: true, isDefinition: true)
!2658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 96, elements: !1703)
!2659 = !DIGlobalVariableExpression(var: !2660, expr: !DIExpression())
!2660 = distinct !DIGlobalVariable(scope: null, file: !2606, line: 32, type: !2658, isLocal: true, isDefinition: true)
!2661 = !DIGlobalVariableExpression(var: !2662, expr: !DIExpression())
!2662 = distinct !DIGlobalVariable(scope: null, file: !2606, line: 33, type: !2663, isLocal: true, isDefinition: true)
!2663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 112, elements: !2664)
!2664 = !{!2665}
!2665 = !DISubrange(count: 14)
!2666 = !DIGlobalVariableExpression(var: !2667, expr: !DIExpression())
!2667 = distinct !DIGlobalVariable(scope: null, file: !2606, line: 34, type: !2668, isLocal: true, isDefinition: true)
!2668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 104, elements: !2669)
!2669 = !{!2670}
!2670 = !DISubrange(count: 13)
!2671 = !DIGlobalVariableExpression(var: !2672, expr: !DIExpression())
!2672 = distinct !DIGlobalVariable(scope: null, file: !2606, line: 35, type: !2668, isLocal: true, isDefinition: true)
!2673 = !DIGlobalVariableExpression(var: !2674, expr: !DIExpression())
!2674 = distinct !DIGlobalVariable(scope: null, file: !2606, line: 37, type: !1093, isLocal: true, isDefinition: true)
!2675 = !DIGlobalVariableExpression(var: !2676, expr: !DIExpression())
!2676 = distinct !DIGlobalVariable(scope: null, file: !2606, line: 38, type: !2658, isLocal: true, isDefinition: true)
!2677 = !DIGlobalVariableExpression(var: !2678, expr: !DIExpression())
!2678 = distinct !DIGlobalVariable(scope: null, file: !2606, line: 39, type: !2668, isLocal: true, isDefinition: true)
!2679 = !DIGlobalVariableExpression(var: !2680, expr: !DIExpression())
!2680 = distinct !DIGlobalVariable(scope: null, file: !2606, line: 40, type: !2668, isLocal: true, isDefinition: true)
!2681 = !DIGlobalVariableExpression(var: !2682, expr: !DIExpression())
!2682 = distinct !DIGlobalVariable(scope: null, file: !51, line: 261, type: !2683, isLocal: true, isDefinition: true)
!2683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 32, elements: !796)
!2684 = !DIGlobalVariableExpression(var: !2685, expr: !DIExpression())
!2685 = distinct !DIGlobalVariable(scope: null, file: !2686, line: 53, type: !2687, isLocal: true, isDefinition: true)
!2686 = !DIFile(filename: "./include/trace/events/irq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc5330d8163c44db4f705c6af4871c0f")
!2687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 216, elements: !2688)
!2688 = !{!2689}
!2689 = !DISubrange(count: 27)
!2690 = !DIGlobalVariableExpression(var: !2691, expr: !DIExpression())
!2691 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_irq_handler_entry207", scope: !2692, file: !2686, line: 53, type: !149, isLocal: true, isDefinition: true)
!2692 = distinct !DISubprogram(name: "trace_irq_handler_entry", scope: !2686, file: !2686, line: 53, type: !2693, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2695)
!2693 = !DISubroutineType(types: !2694)
!2694 = !{null, !151, !311}
!2695 = !{!2696, !2697, !2698, !2701, !2704, !2706, !2708, !2711, !2714, !2716, !2717}
!2696 = !DILocalVariable(name: "irq", arg: 1, scope: !2692, file: !2686, line: 53, type: !151)
!2697 = !DILocalVariable(name: "action", arg: 2, scope: !2692, file: !2686, line: 53, type: !311)
!2698 = !DILocalVariable(name: "__idx", scope: !2699, file: !2686, line: 53, type: !151)
!2699 = distinct !DILexicalBlock(scope: !2700, file: !2686, line: 53, column: 1)
!2700 = distinct !DILexicalBlock(scope: !2692, file: !2686, line: 53, column: 1)
!2701 = !DILocalVariable(name: "pscr_ret__", scope: !2702, file: !2686, line: 53, type: !151)
!2702 = distinct !DILexicalBlock(scope: !2703, file: !2686, line: 53, column: 1)
!2703 = distinct !DILexicalBlock(scope: !2699, file: !2686, line: 53, column: 1)
!2704 = !DILocalVariable(name: "__vpp_verify", scope: !2705, file: !2686, line: 53, type: !836)
!2705 = distinct !DILexicalBlock(scope: !2702, file: !2686, line: 53, column: 1)
!2706 = !DILocalVariable(name: "pfo_val__", scope: !2707, file: !2686, line: 53, type: !174)
!2707 = distinct !DILexicalBlock(scope: !2702, file: !2686, line: 53, column: 1)
!2708 = !DILocalVariable(name: "__ret_warn_on", scope: !2709, file: !2686, line: 53, type: !151)
!2709 = distinct !DILexicalBlock(scope: !2710, file: !2686, line: 53, column: 1)
!2710 = distinct !DILexicalBlock(scope: !2699, file: !2686, line: 53, column: 1)
!2711 = !DILocalVariable(name: "__flags", scope: !2712, file: !2686, line: 53, type: !151)
!2712 = distinct !DILexicalBlock(scope: !2713, file: !2686, line: 53, column: 1)
!2713 = distinct !DILexicalBlock(scope: !2709, file: !2686, line: 53, column: 1)
!2714 = !DILocalVariable(name: "it_func_ptr", scope: !2715, file: !2686, line: 53, type: !158)
!2715 = distinct !DILexicalBlock(scope: !2699, file: !2686, line: 53, column: 1)
!2716 = !DILocalVariable(name: "__data", scope: !2715, file: !2686, line: 53, type: !149)
!2717 = !DILocalVariable(name: "__UNIQUE_ID_rcu205", scope: !2718, file: !2686, line: 53, type: !158)
!2718 = distinct !DILexicalBlock(scope: !2715, file: !2686, line: 53, column: 1)
!2719 = !DIGlobalVariableExpression(var: !2720, expr: !DIExpression())
!2720 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace208", scope: !2692, file: !2686, line: 53, type: !149, isLocal: true, isDefinition: true)
!2721 = !DIGlobalVariableExpression(var: !2722, expr: !DIExpression())
!2722 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_irq_handler_exit215", scope: !2723, file: !2686, line: 83, type: !149, isLocal: true, isDefinition: true)
!2723 = distinct !DISubprogram(name: "trace_irq_handler_exit", scope: !2686, file: !2686, line: 83, type: !2724, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2726)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{null, !151, !311, !151}
!2726 = !{!2727, !2728, !2729, !2730, !2733, !2736, !2738, !2740, !2743, !2746, !2748, !2749}
!2727 = !DILocalVariable(name: "irq", arg: 1, scope: !2723, file: !2686, line: 83, type: !151)
!2728 = !DILocalVariable(name: "action", arg: 2, scope: !2723, file: !2686, line: 83, type: !311)
!2729 = !DILocalVariable(name: "ret", arg: 3, scope: !2723, file: !2686, line: 83, type: !151)
!2730 = !DILocalVariable(name: "__idx", scope: !2731, file: !2686, line: 83, type: !151)
!2731 = distinct !DILexicalBlock(scope: !2732, file: !2686, line: 83, column: 1)
!2732 = distinct !DILexicalBlock(scope: !2723, file: !2686, line: 83, column: 1)
!2733 = !DILocalVariable(name: "pscr_ret__", scope: !2734, file: !2686, line: 83, type: !151)
!2734 = distinct !DILexicalBlock(scope: !2735, file: !2686, line: 83, column: 1)
!2735 = distinct !DILexicalBlock(scope: !2731, file: !2686, line: 83, column: 1)
!2736 = !DILocalVariable(name: "__vpp_verify", scope: !2737, file: !2686, line: 83, type: !836)
!2737 = distinct !DILexicalBlock(scope: !2734, file: !2686, line: 83, column: 1)
!2738 = !DILocalVariable(name: "pfo_val__", scope: !2739, file: !2686, line: 83, type: !174)
!2739 = distinct !DILexicalBlock(scope: !2734, file: !2686, line: 83, column: 1)
!2740 = !DILocalVariable(name: "__ret_warn_on", scope: !2741, file: !2686, line: 83, type: !151)
!2741 = distinct !DILexicalBlock(scope: !2742, file: !2686, line: 83, column: 1)
!2742 = distinct !DILexicalBlock(scope: !2731, file: !2686, line: 83, column: 1)
!2743 = !DILocalVariable(name: "__flags", scope: !2744, file: !2686, line: 83, type: !151)
!2744 = distinct !DILexicalBlock(scope: !2745, file: !2686, line: 83, column: 1)
!2745 = distinct !DILexicalBlock(scope: !2741, file: !2686, line: 83, column: 1)
!2746 = !DILocalVariable(name: "it_func_ptr", scope: !2747, file: !2686, line: 83, type: !158)
!2747 = distinct !DILexicalBlock(scope: !2731, file: !2686, line: 83, column: 1)
!2748 = !DILocalVariable(name: "__data", scope: !2747, file: !2686, line: 83, type: !149)
!2749 = !DILocalVariable(name: "__UNIQUE_ID_rcu213", scope: !2750, file: !2686, line: 83, type: !158)
!2750 = distinct !DILexicalBlock(scope: !2747, file: !2686, line: 83, column: 1)
!2751 = !DIGlobalVariableExpression(var: !2752, expr: !DIExpression())
!2752 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace216", scope: !2723, file: !2686, line: 83, type: !149, isLocal: true, isDefinition: true)
!2753 = !DIGlobalVariableExpression(var: !2754, expr: !DIExpression())
!2754 = distinct !DIGlobalVariable(scope: null, file: !3, line: 57, type: !2755, isLocal: true, isDefinition: true)
!2755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 624, elements: !2756)
!2756 = !{!2757}
!2757 = !DISubrange(count: 78)
!2758 = !{!"rsp"}
!2759 = !{i32 7, !"Dwarf Version", i32 5}
!2760 = !{i32 2, !"Debug Info Version", i32 3}
!2761 = !{i32 1, !"wchar_size", i32 2}
!2762 = !{i32 8, !"cf-protection-branch", i32 1}
!2763 = !{i32 4, !"function_return_thunk_extern", i32 1}
!2764 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!2765 = !{i32 1, !"Code Model", i32 2}
!2766 = !{i32 1, !"override-stack-alignment", i32 8}
!2767 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!2768 = distinct !DISubprogram(name: "handle_bad_irq", scope: !3, file: !3, line: 33, type: !308, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2769)
!2769 = !{!2770, !2771}
!2770 = !DILocalVariable(name: "desc", arg: 1, scope: !2768, file: !3, line: 33, type: !187)
!2771 = !DILocalVariable(name: "irq", scope: !2768, file: !3, line: 35, type: !7)
!2772 = !DILocation(line: 33, column: 38, scope: !2768)
!2773 = !DILocation(line: 35, column: 2, scope: !2768)
!2774 = !DILocation(line: 35, column: 15, scope: !2768)
!2775 = !DILocation(line: 35, column: 38, scope: !2768)
!2776 = !DILocation(line: 35, column: 21, scope: !2768)
!2777 = !DILocation(line: 37, column: 17, scope: !2768)
!2778 = !DILocation(line: 37, column: 22, scope: !2768)
!2779 = !DILocation(line: 37, column: 2, scope: !2768)
!2780 = !DILocation(line: 38, column: 27, scope: !2768)
!2781 = !DILocation(line: 38, column: 2, scope: !2768)
!2782 = !DILocation(line: 39, column: 14, scope: !2768)
!2783 = !DILocation(line: 39, column: 2, scope: !2768)
!2784 = !DILocation(line: 40, column: 1, scope: !2768)
!2785 = distinct !DISubprogram(name: "irq_desc_get_irq", scope: !189, file: !189, line: 130, type: !2786, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2788)
!2786 = !DISubroutineType(types: !2787)
!2787 = !{!7, !187}
!2788 = !{!2789}
!2789 = !DILocalVariable(name: "desc", arg: 1, scope: !2785, file: !189, line: 130, type: !187)
!2790 = !DILocation(line: 130, column: 62, scope: !2785)
!2791 = !DILocation(line: 132, column: 9, scope: !2785)
!2792 = !DILocation(line: 132, column: 15, scope: !2785)
!2793 = !DILocation(line: 132, column: 24, scope: !2785)
!2794 = !DILocation(line: 132, column: 2, scope: !2785)
!2795 = !DILocation(line: 11, column: 48, scope: !2605)
!2796 = !DILocation(line: 11, column: 70, scope: !2605)
!2797 = !DILocation(line: 15, column: 7, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2605, file: !2606, line: 15, column: 6)
!2799 = !DILocation(line: 15, column: 6, scope: !2605)
!2800 = !DILocation(line: 16, column: 3, scope: !2798)
!2801 = !DILocation(line: 18, column: 2, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2605, file: !2606, line: 18, column: 2)
!2803 = !DILocation(line: 18, column: 2, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2802, file: !2606, line: 18, column: 2)
!2805 = !DILocation(line: 20, column: 2, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2605, file: !2606, line: 20, column: 2)
!2807 = !DILocation(line: 20, column: 2, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2806, file: !2606, line: 20, column: 2)
!2809 = !DILocation(line: 22, column: 2, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2605, file: !2606, line: 22, column: 2)
!2811 = !DILocation(line: 22, column: 2, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2810, file: !2606, line: 22, column: 2)
!2813 = !DILocation(line: 24, column: 2, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2605, file: !2606, line: 24, column: 2)
!2815 = !DILocation(line: 24, column: 2, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2814, file: !2606, line: 24, column: 2)
!2817 = !DILocation(line: 25, column: 6, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2605, file: !2606, line: 25, column: 6)
!2819 = !DILocation(line: 25, column: 12, scope: !2818)
!2820 = !DILocation(line: 25, column: 6, scope: !2605)
!2821 = !DILocation(line: 26, column: 3, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2823, file: !2606, line: 26, column: 3)
!2823 = distinct !DILexicalBlock(scope: !2818, file: !2606, line: 25, column: 20)
!2824 = !DILocation(line: 26, column: 3, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2822, file: !2606, line: 26, column: 3)
!2826 = !DILocation(line: 28, column: 2, scope: !2823)
!2827 = !DILocation(line: 30, column: 2, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2605, file: !2606, line: 30, column: 2)
!2829 = !DILocation(line: 30, column: 2, scope: !2605)
!2830 = !DILocation(line: 30, column: 2, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2828, file: !2606, line: 30, column: 2)
!2832 = !DILocation(line: 30, column: 2, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2831, file: !2606, line: 30, column: 2)
!2834 = !DILocation(line: 31, column: 2, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2605, file: !2606, line: 31, column: 2)
!2836 = !DILocation(line: 31, column: 2, scope: !2605)
!2837 = !DILocation(line: 31, column: 2, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2835, file: !2606, line: 31, column: 2)
!2839 = !DILocation(line: 31, column: 2, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2838, file: !2606, line: 31, column: 2)
!2841 = !DILocation(line: 32, column: 2, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2605, file: !2606, line: 32, column: 2)
!2843 = !DILocation(line: 32, column: 2, scope: !2605)
!2844 = !DILocation(line: 32, column: 2, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2842, file: !2606, line: 32, column: 2)
!2846 = !DILocation(line: 32, column: 2, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2845, file: !2606, line: 32, column: 2)
!2848 = !DILocation(line: 33, column: 2, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2605, file: !2606, line: 33, column: 2)
!2850 = !DILocation(line: 33, column: 2, scope: !2605)
!2851 = !DILocation(line: 33, column: 2, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2849, file: !2606, line: 33, column: 2)
!2853 = !DILocation(line: 33, column: 2, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2852, file: !2606, line: 33, column: 2)
!2855 = !DILocation(line: 34, column: 2, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2605, file: !2606, line: 34, column: 2)
!2857 = !DILocation(line: 34, column: 2, scope: !2605)
!2858 = !DILocation(line: 34, column: 2, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2856, file: !2606, line: 34, column: 2)
!2860 = !DILocation(line: 34, column: 2, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2859, file: !2606, line: 34, column: 2)
!2862 = !DILocation(line: 35, column: 2, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2605, file: !2606, line: 35, column: 2)
!2864 = !DILocation(line: 35, column: 2, scope: !2605)
!2865 = !DILocation(line: 35, column: 2, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2863, file: !2606, line: 35, column: 2)
!2867 = !DILocation(line: 35, column: 2, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2866, file: !2606, line: 35, column: 2)
!2869 = !DILocation(line: 37, column: 2, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2605, file: !2606, line: 37, column: 2)
!2871 = !DILocation(line: 37, column: 2, scope: !2605)
!2872 = !DILocation(line: 37, column: 2, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2870, file: !2606, line: 37, column: 2)
!2874 = !DILocation(line: 37, column: 2, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2873, file: !2606, line: 37, column: 2)
!2876 = !DILocation(line: 38, column: 2, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2605, file: !2606, line: 38, column: 2)
!2878 = !DILocation(line: 38, column: 2, scope: !2605)
!2879 = !DILocation(line: 38, column: 2, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2877, file: !2606, line: 38, column: 2)
!2881 = !DILocation(line: 38, column: 2, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2880, file: !2606, line: 38, column: 2)
!2883 = !DILocation(line: 39, column: 2, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2605, file: !2606, line: 39, column: 2)
!2885 = !DILocation(line: 39, column: 2, scope: !2605)
!2886 = !DILocation(line: 39, column: 2, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2884, file: !2606, line: 39, column: 2)
!2888 = !DILocation(line: 39, column: 2, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2887, file: !2606, line: 39, column: 2)
!2890 = !DILocation(line: 40, column: 2, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2605, file: !2606, line: 40, column: 2)
!2892 = !DILocation(line: 40, column: 2, scope: !2605)
!2893 = !DILocation(line: 40, column: 2, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2891, file: !2606, line: 40, column: 2)
!2895 = !DILocation(line: 40, column: 2, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2894, file: !2606, line: 40, column: 2)
!2897 = !DILocation(line: 42, column: 2, scope: !2605)
!2898 = !DILocation(line: 42, column: 2, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2605, file: !2606, line: 42, column: 2)
!2900 = !DILocation(line: 43, column: 2, scope: !2605)
!2901 = !DILocation(line: 43, column: 2, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2605, file: !2606, line: 43, column: 2)
!2903 = !DILocation(line: 44, column: 2, scope: !2605)
!2904 = !DILocation(line: 44, column: 2, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2605, file: !2606, line: 44, column: 2)
!2906 = !DILocation(line: 45, column: 1, scope: !2605)
!2907 = distinct !DISubprogram(name: "kstat_incr_irqs_this_cpu", scope: !51, file: !51, line: 265, type: !308, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2908)
!2908 = !{!2909}
!2909 = !DILocalVariable(name: "desc", arg: 1, scope: !2907, file: !51, line: 265, type: !187)
!2910 = !DILocation(line: 265, column: 62, scope: !2907)
!2911 = !DILocation(line: 267, column: 29, scope: !2907)
!2912 = !DILocation(line: 267, column: 2, scope: !2907)
!2913 = !DILocation(line: 268, column: 2, scope: !2907)
!2914 = !DILocation(line: 268, column: 8, scope: !2907)
!2915 = !DILocation(line: 268, column: 17, scope: !2907)
!2916 = !DILocation(line: 269, column: 1, scope: !2907)
!2917 = !DISubprogram(name: "ack_bad_irq", scope: !2918, file: !2918, line: 55, type: !2919, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2918 = !DIFile(filename: "./arch/x86/include/asm/hardirq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a5f78851d05626cb30000e7593c12009")
!2919 = !DISubroutineType(types: !2920)
!2920 = !{null, !7}
!2921 = distinct !DISubprogram(name: "no_action", scope: !3, file: !3, line: 46, type: !317, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2922)
!2922 = !{!2923, !2924}
!2923 = !DILocalVariable(name: "cpl", arg: 1, scope: !2921, file: !3, line: 46, type: !151)
!2924 = !DILocalVariable(name: "dev_id", arg: 2, scope: !2921, file: !3, line: 46, type: !149)
!2925 = !DILocation(line: 46, column: 27, scope: !2921)
!2926 = !DILocation(line: 46, column: 38, scope: !2921)
!2927 = !DILocation(line: 48, column: 2, scope: !2921)
!2928 = distinct !DISubprogram(name: "__irq_wake_thread", scope: !3, file: !3, line: 61, type: !2929, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2931)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{null, !187, !311}
!2931 = !{!2932, !2933}
!2932 = !DILocalVariable(name: "desc", arg: 1, scope: !2928, file: !3, line: 61, type: !187)
!2933 = !DILocalVariable(name: "action", arg: 2, scope: !2928, file: !3, line: 61, type: !311)
!2934 = !DILocation(line: 61, column: 41, scope: !2928)
!2935 = !DILocation(line: 61, column: 65, scope: !2928)
!2936 = !DILocation(line: 68, column: 6, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2928, file: !3, line: 68, column: 6)
!2938 = !DILocation(line: 68, column: 14, scope: !2937)
!2939 = !DILocation(line: 68, column: 22, scope: !2937)
!2940 = !DILocation(line: 68, column: 28, scope: !2937)
!2941 = !DILocation(line: 68, column: 6, scope: !2928)
!2942 = !DILocation(line: 69, column: 3, scope: !2937)
!2943 = !DILocation(line: 75, column: 41, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2928, file: !3, line: 75, column: 6)
!2945 = !DILocation(line: 75, column: 49, scope: !2944)
!2946 = !DILocation(line: 75, column: 6, scope: !2944)
!2947 = !DILocation(line: 75, column: 6, scope: !2928)
!2948 = !DILocation(line: 76, column: 3, scope: !2944)
!2949 = !DILocation(line: 123, column: 27, scope: !2928)
!2950 = !DILocation(line: 123, column: 35, scope: !2928)
!2951 = !DILocation(line: 123, column: 2, scope: !2928)
!2952 = !DILocation(line: 123, column: 8, scope: !2928)
!2953 = !DILocation(line: 123, column: 24, scope: !2928)
!2954 = !DILocation(line: 134, column: 14, scope: !2928)
!2955 = !DILocation(line: 134, column: 20, scope: !2928)
!2956 = !DILocation(line: 134, column: 2, scope: !2928)
!2957 = !DILocation(line: 136, column: 18, scope: !2928)
!2958 = !DILocation(line: 136, column: 26, scope: !2928)
!2959 = !DILocation(line: 136, column: 2, scope: !2928)
!2960 = !DILocation(line: 137, column: 1, scope: !2928)
!2961 = distinct !DISubprogram(name: "test_and_set_bit", scope: !2962, file: !2962, line: 68, type: !2963, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2967)
!2962 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!2963 = !DISubroutineType(types: !2964)
!2964 = !{!240, !839, !2965}
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !153)
!2967 = !{!2968, !2969}
!2968 = !DILocalVariable(name: "nr", arg: 1, scope: !2961, file: !2962, line: 68, type: !839)
!2969 = !DILocalVariable(name: "addr", arg: 2, scope: !2961, file: !2962, line: 68, type: !2965)
!2970 = !DILocation(line: 68, column: 51, scope: !2961)
!2971 = !DILocation(line: 68, column: 79, scope: !2961)
!2972 = !DILocation(line: 70, column: 2, scope: !2961)
!2973 = !DILocation(line: 70, column: 2, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2961, file: !2962, line: 70, column: 2)
!2975 = !DILocation(line: 71, column: 31, scope: !2961)
!2976 = !DILocation(line: 71, column: 38, scope: !2961)
!2977 = !DILocation(line: 71, column: 36, scope: !2961)
!2978 = !DILocation(line: 71, column: 2, scope: !2961)
!2979 = !DILocation(line: 72, column: 31, scope: !2961)
!2980 = !DILocation(line: 72, column: 35, scope: !2961)
!2981 = !DILocation(line: 72, column: 9, scope: !2961)
!2982 = !DILocation(line: 72, column: 2, scope: !2961)
!2983 = distinct !DISubprogram(name: "atomic_inc", scope: !2984, file: !2984, line: 433, type: !2985, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2988)
!2984 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!2985 = !DISubroutineType(types: !2986)
!2986 = !{null, !2987}
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!2988 = !{!2989}
!2989 = !DILocalVariable(name: "v", arg: 1, scope: !2983, file: !2984, line: 433, type: !2987)
!2990 = !DILocation(line: 433, column: 22, scope: !2983)
!2991 = !DILocation(line: 435, column: 31, scope: !2983)
!2992 = !DILocation(line: 435, column: 2, scope: !2983)
!2993 = !DILocation(line: 436, column: 17, scope: !2983)
!2994 = !DILocation(line: 436, column: 2, scope: !2983)
!2995 = !DILocation(line: 437, column: 1, scope: !2983)
!2996 = !DISubprogram(name: "wake_up_process", scope: !326, file: !326, line: 1998, type: !2997, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2997 = !DISubroutineType(types: !2998)
!2998 = !{!151, !324}
!2999 = !DILocation(line: 139, column: 56, scope: !183)
!3000 = !DILocation(line: 141, column: 2, scope: !183)
!3001 = !DILocation(line: 141, column: 14, scope: !183)
!3002 = !DILocation(line: 142, column: 2, scope: !183)
!3003 = !DILocation(line: 142, column: 15, scope: !183)
!3004 = !DILocation(line: 142, column: 21, scope: !183)
!3005 = !DILocation(line: 142, column: 27, scope: !183)
!3006 = !DILocation(line: 142, column: 36, scope: !183)
!3007 = !DILocation(line: 143, column: 2, scope: !183)
!3008 = !DILocation(line: 143, column: 20, scope: !183)
!3009 = !DILocation(line: 145, column: 18, scope: !183)
!3010 = !DILocation(line: 145, column: 2, scope: !183)
!3011 = !DILocation(line: 147, column: 2, scope: !2571)
!3012 = !DILocation(line: 147, column: 2, scope: !2570)
!3013 = !DILocation(line: 148, column: 3, scope: !2569)
!3014 = !DILocation(line: 148, column: 15, scope: !2569)
!3015 = !DILocation(line: 153, column: 31, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !2569, file: !3, line: 153, column: 7)
!3017 = !DILocation(line: 153, column: 7, scope: !3016)
!3018 = !DILocation(line: 153, column: 37, scope: !3016)
!3019 = !DILocation(line: 154, column: 9, scope: !3016)
!3020 = !DILocation(line: 154, column: 17, scope: !3016)
!3021 = !DILocation(line: 154, column: 23, scope: !3016)
!3022 = !DILocation(line: 153, column: 7, scope: !2569)
!3023 = !DILocation(line: 155, column: 4, scope: !3016)
!3024 = !DILocation(line: 155, column: 4, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !3016, file: !3, line: 155, column: 4)
!3026 = !DILocation(line: 157, column: 27, scope: !2569)
!3027 = !DILocation(line: 157, column: 32, scope: !2569)
!3028 = !DILocation(line: 157, column: 3, scope: !2569)
!3029 = !DILocation(line: 158, column: 9, scope: !2569)
!3030 = !DILocation(line: 158, column: 17, scope: !2569)
!3031 = !DILocation(line: 158, column: 25, scope: !2569)
!3032 = !DILocation(line: 158, column: 30, scope: !2569)
!3033 = !DILocation(line: 158, column: 38, scope: !2569)
!3034 = !DILocation(line: 158, column: 7, scope: !2569)
!3035 = !DILocation(line: 159, column: 26, scope: !2569)
!3036 = !DILocation(line: 159, column: 31, scope: !2569)
!3037 = !DILocation(line: 159, column: 39, scope: !2569)
!3038 = !DILocation(line: 159, column: 3, scope: !2569)
!3039 = !DILocation(line: 161, column: 7, scope: !2573)
!3040 = !DILocation(line: 161, column: 7, scope: !2576)
!3041 = !DILocation(line: 161, column: 7, scope: !2578)
!3042 = !DILocation(line: 161, column: 7, scope: !2579)
!3043 = !DILocation(line: 161, column: 7, scope: !2582)
!3044 = !DILocation(line: 161, column: 7, scope: !2583)
!3045 = !DILocation(line: 161, column: 7, scope: !2586)
!3046 = !{i8 0, i8 2}
!3047 = !DILocation(line: 161, column: 7, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !2586, file: !3, line: 161, column: 7)
!3049 = !DILocation(line: 0, scope: !3048)
!3050 = !DILocation(line: 161, column: 7, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !3048, file: !3, line: 161, column: 7)
!3052 = !DILocation(line: 161, column: 7, scope: !2587)
!3053 = !DILocation(line: 161, column: 7, scope: !2590)
!3054 = !DILocation(line: 161, column: 7, scope: !2594)
!3055 = !DILocation(line: 161, column: 7, scope: !2593)
!3056 = !DILocation(line: 161, column: 7, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !2593, file: !3, line: 161, column: 7)
!3058 = !DILocation(line: 161, column: 7, scope: !2592)
!3059 = !DILocation(line: 161, column: 7, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !2592, file: !3, line: 161, column: 7)
!3061 = !DILocation(line: 161, column: 7, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !2592, file: !3, line: 161, column: 7)
!3063 = !{i64 2153495503, i64 2153495532, i64 2153495578, i64 2153495636, i64 2153495690, i64 2153495744, i64 2153495799, i64 2153495830, i64 2153496138, i64 2153496144, i64 2153496191, i64 2153496214, i64 2153496240}
!3064 = !DILocation(line: 161, column: 7, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !2592, file: !3, line: 161, column: 7)
!3066 = !DILocation(line: 161, column: 7, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !2593, file: !3, line: 161, column: 7)
!3068 = !DILocation(line: 161, column: 7, scope: !2574)
!3069 = !DILocation(line: 161, column: 7, scope: !2569)
!3070 = !DILocation(line: 163, column: 4, scope: !2574)
!3071 = !DILocation(line: 163, column: 4, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !2574, file: !3, line: 163, column: 4)
!3073 = !DILocation(line: 165, column: 11, scope: !2569)
!3074 = !DILocation(line: 165, column: 3, scope: !2569)
!3075 = !DILocation(line: 171, column: 8, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3077, file: !3, line: 171, column: 8)
!3077 = distinct !DILexicalBlock(scope: !2569, file: !3, line: 165, column: 16)
!3078 = !DILocation(line: 171, column: 8, scope: !3077)
!3079 = !DILocation(line: 172, column: 20, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3076, file: !3, line: 171, column: 38)
!3081 = !DILocation(line: 172, column: 25, scope: !3080)
!3082 = !DILocation(line: 172, column: 5, scope: !3080)
!3083 = !DILocation(line: 173, column: 5, scope: !3080)
!3084 = !DILocation(line: 176, column: 22, scope: !3077)
!3085 = !DILocation(line: 176, column: 28, scope: !3077)
!3086 = !DILocation(line: 176, column: 4, scope: !3077)
!3087 = !DILocation(line: 177, column: 4, scope: !3077)
!3088 = !DILocation(line: 180, column: 4, scope: !3077)
!3089 = !DILocation(line: 183, column: 13, scope: !2569)
!3090 = !DILocation(line: 183, column: 10, scope: !2569)
!3091 = !DILocation(line: 184, column: 2, scope: !2570)
!3092 = !DILocation(line: 184, column: 2, scope: !2569)
!3093 = distinct !{!3093, !3011, !3094, !3095, !3096}
!3094 = !DILocation(line: 184, column: 2, scope: !2571)
!3095 = !{!"llvm.loop.mustprogress"}
!3096 = !{!"llvm.loop.unroll.disable"}
!3097 = !DILocation(line: 186, column: 9, scope: !183)
!3098 = !DILocation(line: 187, column: 1, scope: !183)
!3099 = !DILocation(line: 186, column: 2, scope: !183)
!3100 = distinct !DISubprogram(name: "record_irq_time", scope: !51, file: !51, line: 399, type: !308, scopeLine: 399, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3101)
!3101 = !{!3102}
!3102 = !DILocalVariable(name: "desc", arg: 1, scope: !3100, file: !51, line: 399, type: !187)
!3103 = !DILocation(line: 399, column: 53, scope: !3100)
!3104 = !DILocation(line: 399, column: 60, scope: !3100)
!3105 = distinct !DISubprogram(name: "irq_settings_can_thread", scope: !130, file: !130, line: 115, type: !3106, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3108)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!240, !187}
!3108 = !{!3109}
!3109 = !DILocalVariable(name: "desc", arg: 1, scope: !3105, file: !130, line: 115, type: !187)
!3110 = !DILocation(line: 115, column: 61, scope: !3105)
!3111 = !DILocation(line: 117, column: 11, scope: !3105)
!3112 = !DILocation(line: 117, column: 17, scope: !3105)
!3113 = !DILocation(line: 117, column: 38, scope: !3105)
!3114 = !DILocation(line: 117, column: 9, scope: !3105)
!3115 = !DILocation(line: 117, column: 2, scope: !3105)
!3116 = !DILocation(line: 53, column: 1, scope: !2692)
!3117 = !DILocation(line: 53, column: 1, scope: !2700)
!3118 = !DILocation(line: 53, column: 1, scope: !2699)
!3119 = !DILocation(line: 53, column: 1, scope: !2702)
!3120 = !DILocation(line: 53, column: 1, scope: !2705)
!3121 = !DILocation(line: 53, column: 1, scope: !2707)
!3122 = !{i64 2153074068}
!3123 = !DILocation(line: 53, column: 1, scope: !2703)
!3124 = !DILocation(line: 53, column: 1, scope: !2709)
!3125 = !DILocation(line: 53, column: 1, scope: !2713)
!3126 = !DILocation(line: 53, column: 1, scope: !2712)
!3127 = !DILocation(line: 53, column: 1, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !2712, file: !2686, line: 53, column: 1)
!3129 = !DILocation(line: 53, column: 1, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !2712, file: !2686, line: 53, column: 1)
!3131 = !{i64 2153075271, i64 2153075300, i64 2153075346, i64 2153075404, i64 2153075458, i64 2153075512, i64 2153075567, i64 2153075598, i64 2153075906, i64 2153075912, i64 2153075959, i64 2153075982, i64 2153076008}
!3132 = !DILocation(line: 53, column: 1, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !2712, file: !2686, line: 53, column: 1)
!3134 = !DILocation(line: 53, column: 1, scope: !2710)
!3135 = !DILocation(line: 53, column: 1, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !2699, file: !2686, line: 53, column: 1)
!3137 = !{i64 2153076358}
!3138 = !DILocation(line: 53, column: 1, scope: !2715)
!3139 = !DILocation(line: 53, column: 1, scope: !2718)
!3140 = !DILocation(line: 53, column: 1, scope: !3141)
!3141 = distinct !DILexicalBlock(scope: !2718, file: !2686, line: 53, column: 1)
!3142 = !DILocation(line: 53, column: 1, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3141, file: !2686, line: 53, column: 1)
!3144 = !DILocation(line: 53, column: 1, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !2715, file: !2686, line: 53, column: 1)
!3146 = !DILocation(line: 53, column: 1, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !3145, file: !2686, line: 53, column: 1)
!3148 = !DILocation(line: 53, column: 1, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3147, file: !2686, line: 53, column: 1)
!3150 = !DILocation(line: 53, column: 1, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !2699, file: !2686, line: 53, column: 1)
!3152 = !{i64 2153082904}
!3153 = !DILocation(line: 53, column: 1, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !3151, file: !2686, line: 53, column: 1)
!3155 = !DILocation(line: 53, column: 1, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3154, file: !2686, line: 53, column: 1)
!3157 = !{i64 2153083063}
!3158 = !DILocation(line: 83, column: 1, scope: !2723)
!3159 = !DILocation(line: 83, column: 1, scope: !2732)
!3160 = !DILocation(line: 83, column: 1, scope: !2731)
!3161 = !DILocation(line: 83, column: 1, scope: !2734)
!3162 = !DILocation(line: 83, column: 1, scope: !2737)
!3163 = !DILocation(line: 83, column: 1, scope: !2739)
!3164 = !{i64 2153124216}
!3165 = !DILocation(line: 83, column: 1, scope: !2735)
!3166 = !DILocation(line: 83, column: 1, scope: !2741)
!3167 = !DILocation(line: 83, column: 1, scope: !2745)
!3168 = !DILocation(line: 83, column: 1, scope: !2744)
!3169 = !DILocation(line: 83, column: 1, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !2744, file: !2686, line: 83, column: 1)
!3171 = !DILocation(line: 83, column: 1, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !2744, file: !2686, line: 83, column: 1)
!3173 = !{i64 2153125428, i64 2153125457, i64 2153125503, i64 2153125561, i64 2153125615, i64 2153125669, i64 2153125724, i64 2153125755, i64 2153126063, i64 2153126069, i64 2153126116, i64 2153126139, i64 2153126165}
!3174 = !DILocation(line: 83, column: 1, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !2744, file: !2686, line: 83, column: 1)
!3176 = !DILocation(line: 83, column: 1, scope: !2742)
!3177 = !DILocation(line: 83, column: 1, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !2731, file: !2686, line: 83, column: 1)
!3179 = !{i64 2153126516}
!3180 = !DILocation(line: 83, column: 1, scope: !2747)
!3181 = !DILocation(line: 83, column: 1, scope: !2750)
!3182 = !DILocation(line: 83, column: 1, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !2750, file: !2686, line: 83, column: 1)
!3184 = !DILocation(line: 83, column: 1, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !3183, file: !2686, line: 83, column: 1)
!3186 = !DILocation(line: 83, column: 1, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !2747, file: !2686, line: 83, column: 1)
!3188 = !DILocation(line: 83, column: 1, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !3187, file: !2686, line: 83, column: 1)
!3190 = !DILocation(line: 83, column: 1, scope: !3191)
!3191 = distinct !DILexicalBlock(scope: !3189, file: !2686, line: 83, column: 1)
!3192 = !DILocation(line: 83, column: 1, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !2731, file: !2686, line: 83, column: 1)
!3194 = !{i64 2153133011}
!3195 = !DILocation(line: 83, column: 1, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3193, file: !2686, line: 83, column: 1)
!3197 = !DILocation(line: 83, column: 1, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3196, file: !2686, line: 83, column: 1)
!3199 = !{i64 2153133170}
!3200 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !3201, file: !3201, line: 65, type: !3202, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3201 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!3202 = !DISubroutineType(types: !3203)
!3203 = !{!153}
!3204 = !DILocation(line: 67, column: 9, scope: !3200)
!3205 = !DILocation(line: 67, column: 2, scope: !3200)
!3206 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !3201, file: !3201, line: 120, type: !3207, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3209)
!3207 = !DISubroutineType(types: !3208)
!3208 = !{!151, !153}
!3209 = !{!3210}
!3210 = !DILocalVariable(name: "flags", arg: 1, scope: !3206, file: !3201, line: 120, type: !153)
!3211 = !DILocation(line: 120, column: 67, scope: !3206)
!3212 = !DILocation(line: 122, column: 11, scope: !3206)
!3213 = !DILocation(line: 122, column: 17, scope: !3206)
!3214 = !DILocation(line: 122, column: 9, scope: !3206)
!3215 = !DILocation(line: 122, column: 2, scope: !3206)
!3216 = !DISubprogram(name: "__warn_printk", scope: !2379, file: !2379, line: 93, type: !3217, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3217 = !DISubroutineType(types: !3218)
!3218 = !{null, !217, null}
!3219 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !3201, file: !3201, line: 70, type: !2558, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3220 = !DILocation(line: 72, column: 2, scope: !3219)
!3221 = !DILocation(line: 73, column: 1, scope: !3219)
!3222 = distinct !DISubprogram(name: "warn_no_thread", scope: !3, file: !3, line: 52, type: !3223, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3225)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{null, !7, !311}
!3225 = !{!3226, !3227}
!3226 = !DILocalVariable(name: "irq", arg: 1, scope: !3222, file: !3, line: 52, type: !7)
!3227 = !DILocalVariable(name: "action", arg: 2, scope: !3222, file: !3, line: 52, type: !311)
!3228 = !DILocation(line: 52, column: 41, scope: !3222)
!3229 = !DILocation(line: 52, column: 64, scope: !3222)
!3230 = !DILocation(line: 54, column: 38, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3222, file: !3, line: 54, column: 6)
!3232 = !DILocation(line: 54, column: 46, scope: !3231)
!3233 = !DILocation(line: 54, column: 6, scope: !3231)
!3234 = !DILocation(line: 54, column: 6, scope: !3222)
!3235 = !DILocation(line: 55, column: 3, scope: !3231)
!3236 = !DILocation(line: 57, column: 2, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !3222, file: !3, line: 57, column: 2)
!3238 = !DILocation(line: 57, column: 2, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3237, file: !3, line: 57, column: 2)
!3240 = !DILocation(line: 59, column: 1, scope: !3222)
!3241 = distinct !DISubprogram(name: "handle_irq_event_percpu", scope: !3, file: !3, line: 189, type: !184, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3242)
!3242 = !{!3243, !3244}
!3243 = !DILocalVariable(name: "desc", arg: 1, scope: !3241, file: !3, line: 189, type: !187)
!3244 = !DILocalVariable(name: "retval", scope: !3241, file: !3, line: 191, type: !186)
!3245 = !DILocation(line: 189, column: 54, scope: !3241)
!3246 = !DILocation(line: 191, column: 2, scope: !3241)
!3247 = !DILocation(line: 191, column: 14, scope: !3241)
!3248 = !DILocation(line: 193, column: 37, scope: !3241)
!3249 = !DILocation(line: 193, column: 11, scope: !3241)
!3250 = !DILocation(line: 193, column: 9, scope: !3241)
!3251 = !DILocation(line: 195, column: 27, scope: !3241)
!3252 = !DILocation(line: 195, column: 33, scope: !3241)
!3253 = !DILocation(line: 195, column: 42, scope: !3241)
!3254 = !DILocation(line: 195, column: 2, scope: !3241)
!3255 = !DILocation(line: 197, column: 29, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3241, file: !3, line: 197, column: 6)
!3257 = !DILocation(line: 197, column: 7, scope: !3256)
!3258 = !DILocation(line: 197, column: 6, scope: !3241)
!3259 = !DILocation(line: 198, column: 18, scope: !3256)
!3260 = !DILocation(line: 198, column: 24, scope: !3256)
!3261 = !DILocation(line: 198, column: 3, scope: !3256)
!3262 = !DILocation(line: 199, column: 9, scope: !3241)
!3263 = !DILocation(line: 200, column: 1, scope: !3241)
!3264 = !DILocation(line: 199, column: 2, scope: !3241)
!3265 = !DISubprogram(name: "add_interrupt_randomness", scope: !3266, file: !3266, line: 18, type: !3267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3266 = !DIFile(filename: "./include/linux/random.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1ff56c5c661379ff0da8775246644d01")
!3267 = !DISubroutineType(types: !3268)
!3268 = !{null, !151}
!3269 = distinct !DISubprogram(name: "irq_settings_no_debug", scope: !130, file: !130, line: 185, type: !3106, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3270)
!3270 = !{!3271}
!3271 = !DILocalVariable(name: "desc", arg: 1, scope: !3269, file: !130, line: 185, type: !187)
!3272 = !DILocation(line: 185, column: 59, scope: !3269)
!3273 = !DILocation(line: 187, column: 9, scope: !3269)
!3274 = !DILocation(line: 187, column: 15, scope: !3269)
!3275 = !DILocation(line: 187, column: 36, scope: !3269)
!3276 = !DILocation(line: 187, column: 2, scope: !3269)
!3277 = !DISubprogram(name: "note_interrupt", scope: !77, file: !77, line: 698, type: !3278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{null, !187, !186}
!3280 = distinct !DISubprogram(name: "handle_irq_event", scope: !3, file: !3, line: 202, type: !184, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3281)
!3281 = !{!3282, !3283}
!3282 = !DILocalVariable(name: "desc", arg: 1, scope: !3280, file: !3, line: 202, type: !187)
!3283 = !DILocalVariable(name: "ret", scope: !3280, file: !3, line: 204, type: !186)
!3284 = !DILocation(line: 202, column: 47, scope: !3280)
!3285 = !DILocation(line: 204, column: 2, scope: !3280)
!3286 = !DILocation(line: 204, column: 14, scope: !3280)
!3287 = !DILocation(line: 206, column: 2, scope: !3280)
!3288 = !DILocation(line: 206, column: 8, scope: !3280)
!3289 = !DILocation(line: 206, column: 15, scope: !3280)
!3290 = !DILocation(line: 207, column: 12, scope: !3280)
!3291 = !DILocation(line: 207, column: 18, scope: !3280)
!3292 = !DILocation(line: 207, column: 2, scope: !3280)
!3293 = !DILocation(line: 208, column: 2, scope: !3280)
!3294 = !DILocation(line: 210, column: 32, scope: !3280)
!3295 = !DILocation(line: 210, column: 8, scope: !3280)
!3296 = !DILocation(line: 210, column: 6, scope: !3280)
!3297 = !DILocation(line: 212, column: 2, scope: !3280)
!3298 = !DILocation(line: 213, column: 14, scope: !3280)
!3299 = !DILocation(line: 213, column: 20, scope: !3280)
!3300 = !DILocation(line: 213, column: 2, scope: !3280)
!3301 = !DILocation(line: 214, column: 9, scope: !3280)
!3302 = !DILocation(line: 215, column: 1, scope: !3280)
!3303 = !DILocation(line: 214, column: 2, scope: !3280)
!3304 = distinct !DISubprogram(name: "irqd_set", scope: !51, file: !51, line: 237, type: !288, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3305)
!3305 = !{!3306, !3307}
!3306 = !DILocalVariable(name: "d", arg: 1, scope: !3304, file: !51, line: 237, type: !224)
!3307 = !DILocalVariable(name: "mask", arg: 2, scope: !3304, file: !51, line: 237, type: !7)
!3308 = !DILocation(line: 237, column: 46, scope: !3304)
!3309 = !DILocation(line: 237, column: 62, scope: !3304)
!3310 = !DILocation(line: 239, column: 24, scope: !3304)
!3311 = !DILocation(line: 239, column: 2, scope: !3304)
!3312 = !DILocation(line: 239, column: 21, scope: !3304)
!3313 = !DILocation(line: 240, column: 1, scope: !3304)
!3314 = !DISubprogram(name: "_raw_spin_unlock", scope: !3315, file: !3315, line: 39, type: !3316, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3315 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!3316 = !DISubroutineType(types: !3317)
!3317 = !{null, !3318}
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!3319 = !DISubprogram(name: "_raw_spin_lock", scope: !3315, file: !3315, line: 22, type: !3316, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3320 = distinct !DISubprogram(name: "irqd_clear", scope: !51, file: !51, line: 232, type: !288, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3321)
!3321 = !{!3322, !3323}
!3322 = !DILocalVariable(name: "d", arg: 1, scope: !3320, file: !51, line: 232, type: !224)
!3323 = !DILocalVariable(name: "mask", arg: 2, scope: !3320, file: !51, line: 232, type: !7)
!3324 = !DILocation(line: 232, column: 48, scope: !3320)
!3325 = !DILocation(line: 232, column: 64, scope: !3320)
!3326 = !DILocation(line: 234, column: 25, scope: !3320)
!3327 = !DILocation(line: 234, column: 24, scope: !3320)
!3328 = !DILocation(line: 234, column: 2, scope: !3320)
!3329 = !DILocation(line: 234, column: 21, scope: !3320)
!3330 = !DILocation(line: 235, column: 1, scope: !3320)
!3331 = !DISubprogram(name: "___ratelimit", scope: !2613, file: !2613, line: 44, type: !3332, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{!151, !3334, !217}
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!3335 = !DISubprogram(name: "_printk", scope: !3336, file: !3336, line: 153, type: !3337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3336 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!3337 = !DISubroutineType(types: !3338)
!3338 = !{!151, !217, null}
!3339 = distinct !DISubprogram(name: "__kstat_incr_irqs_this_cpu", scope: !51, file: !51, line: 259, type: !308, scopeLine: 260, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3340)
!3340 = !{!3341, !3342, !3346, !3348, !3352}
!3341 = !DILocalVariable(name: "desc", arg: 1, scope: !3339, file: !51, line: 259, type: !187)
!3342 = !DILocalVariable(name: "__vpp_verify", scope: !3343, file: !51, line: 261, type: !836)
!3343 = distinct !DILexicalBlock(scope: !3344, file: !51, line: 261, column: 2)
!3344 = distinct !DILexicalBlock(scope: !3345, file: !51, line: 261, column: 2)
!3345 = distinct !DILexicalBlock(scope: !3339, file: !51, line: 261, column: 2)
!3346 = !DILocalVariable(name: "pao_ID__", scope: !3347, file: !51, line: 261, type: !2424)
!3347 = distinct !DILexicalBlock(scope: !3344, file: !51, line: 261, column: 2)
!3348 = !DILocalVariable(name: "__vpp_verify", scope: !3349, file: !51, line: 262, type: !836)
!3349 = distinct !DILexicalBlock(scope: !3350, file: !51, line: 262, column: 2)
!3350 = distinct !DILexicalBlock(scope: !3351, file: !51, line: 262, column: 2)
!3351 = distinct !DILexicalBlock(scope: !3339, file: !51, line: 262, column: 2)
!3352 = !DILocalVariable(name: "pao_ID__", scope: !3353, file: !51, line: 262, type: !2424)
!3353 = distinct !DILexicalBlock(scope: !3350, file: !51, line: 262, column: 2)
!3354 = !DILocation(line: 259, column: 64, scope: !3339)
!3355 = !DILocation(line: 261, column: 2, scope: !3345)
!3356 = !DILocation(line: 261, column: 2, scope: !3344)
!3357 = !DILocation(line: 261, column: 2, scope: !3343)
!3358 = !DILocation(line: 261, column: 2, scope: !3347)
!3359 = !DILocation(line: 261, column: 2, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !3361, file: !51, line: 261, column: 2)
!3361 = distinct !DILexicalBlock(scope: !3347, file: !51, line: 261, column: 2)
!3362 = !{i64 2153470055}
!3363 = !DILocation(line: 262, column: 2, scope: !3351)
!3364 = !DILocation(line: 262, column: 2, scope: !3350)
!3365 = !DILocation(line: 262, column: 2, scope: !3349)
!3366 = !DILocation(line: 262, column: 2, scope: !3353)
!3367 = !DILocation(line: 262, column: 2, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !3369, file: !51, line: 262, column: 2)
!3369 = distinct !DILexicalBlock(scope: !3353, file: !51, line: 262, column: 2)
!3370 = !{i64 2153480636}
!3371 = !DILocation(line: 263, column: 1, scope: !3339)
!3372 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !3373, file: !3373, line: 313, type: !3374, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3376)
!3373 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4abdb661814e650bde1057e21ae6f562")
!3374 = !DISubroutineType(types: !3375)
!3375 = !{null, !217}
!3376 = !{!3377}
!3377 = !DILocalVariable(name: "op", arg: 1, scope: !3372, file: !3373, line: 313, type: !217)
!3378 = !DILocation(line: 313, column: 66, scope: !3372)
!3379 = !DILocation(line: 313, column: 72, scope: !3372)
!3380 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !3381, file: !3381, line: 94, type: !3382, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3387)
!3381 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!3382 = !DISubroutineType(types: !3383)
!3383 = !{null, !3384, !1145}
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3386)
!3386 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!3387 = !{!3388, !3389}
!3388 = !DILocalVariable(name: "v", arg: 1, scope: !3380, file: !3381, line: 94, type: !3384)
!3389 = !DILocalVariable(name: "size", arg: 2, scope: !3380, file: !3381, line: 94, type: !1145)
!3390 = !DILocation(line: 94, column: 79, scope: !3380)
!3391 = !DILocation(line: 94, column: 89, scope: !3380)
!3392 = !DILocation(line: 96, column: 20, scope: !3380)
!3393 = !DILocation(line: 96, column: 23, scope: !3380)
!3394 = !DILocation(line: 96, column: 2, scope: !3380)
!3395 = !DILocation(line: 97, column: 2, scope: !3380)
!3396 = !DILocation(line: 98, column: 1, scope: !3380)
!3397 = distinct !DISubprogram(name: "arch_test_and_set_bit", scope: !3398, file: !3398, line: 136, type: !2963, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3399)
!3398 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!3399 = !{!3400, !3401, !3402}
!3400 = !DILocalVariable(name: "nr", arg: 1, scope: !3397, file: !3398, line: 136, type: !839)
!3401 = !DILocalVariable(name: "addr", arg: 2, scope: !3397, file: !3398, line: 136, type: !2965)
!3402 = !DILocalVariable(name: "c", scope: !3403, file: !3398, line: 138, type: !240)
!3403 = distinct !DILexicalBlock(scope: !3397, file: !3398, line: 138, column: 9)
!3404 = !DILocation(line: 136, column: 28, scope: !3397)
!3405 = !DILocation(line: 136, column: 56, scope: !3397)
!3406 = !DILocation(line: 138, column: 9, scope: !3403)
!3407 = !{i64 2148010057, i64 2148010096, i64 2148010117, i64 2148010154, i64 2148010177, i64 2148010186, i64 2148010289}
!3408 = !DILocation(line: 138, column: 9, scope: !3397)
!3409 = !DILocation(line: 138, column: 2, scope: !3397)
!3410 = distinct !DISubprogram(name: "kasan_check_write", scope: !3411, file: !3411, line: 44, type: !3412, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3414)
!3411 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!3412 = !DISubroutineType(types: !3413)
!3413 = !{!240, !3384, !7}
!3414 = !{!3415, !3416}
!3415 = !DILocalVariable(name: "p", arg: 1, scope: !3410, file: !3411, line: 44, type: !3384)
!3416 = !DILocalVariable(name: "size", arg: 2, scope: !3410, file: !3411, line: 44, type: !7)
!3417 = !DILocation(line: 44, column: 59, scope: !3410)
!3418 = !DILocation(line: 44, column: 75, scope: !3410)
!3419 = !DILocation(line: 46, column: 2, scope: !3410)
!3420 = distinct !DISubprogram(name: "kcsan_check_access", scope: !3421, file: !3421, line: 229, type: !3422, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3424)
!3421 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!3422 = !DISubroutineType(types: !3423)
!3423 = !{null, !3384, !1145, !151}
!3424 = !{!3425, !3426, !3427}
!3425 = !DILocalVariable(name: "ptr", arg: 1, scope: !3420, file: !3421, line: 229, type: !3384)
!3426 = !DILocalVariable(name: "size", arg: 2, scope: !3420, file: !3421, line: 229, type: !1145)
!3427 = !DILocalVariable(name: "type", arg: 3, scope: !3420, file: !3421, line: 230, type: !151)
!3428 = !DILocation(line: 229, column: 60, scope: !3420)
!3429 = !DILocation(line: 229, column: 72, scope: !3420)
!3430 = !DILocation(line: 230, column: 15, scope: !3420)
!3431 = !DILocation(line: 230, column: 23, scope: !3420)
!3432 = distinct !DISubprogram(name: "raw_atomic_inc", scope: !3433, file: !3433, line: 976, type: !2985, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3434)
!3433 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!3434 = !{!3435}
!3435 = !DILocalVariable(name: "v", arg: 1, scope: !3432, file: !3433, line: 976, type: !2987)
!3436 = !DILocation(line: 976, column: 26, scope: !3432)
!3437 = !DILocation(line: 979, column: 18, scope: !3432)
!3438 = !DILocation(line: 979, column: 2, scope: !3432)
!3439 = !DILocation(line: 983, column: 1, scope: !3432)
!3440 = distinct !DISubprogram(name: "arch_atomic_inc", scope: !3441, file: !3441, line: 51, type: !2985, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3442)
!3441 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!3442 = !{!3443}
!3443 = !DILocalVariable(name: "v", arg: 1, scope: !3440, file: !3441, line: 51, type: !2987)
!3444 = !DILocation(line: 51, column: 55, scope: !3440)
!3445 = !DILocation(line: 54, column: 16, scope: !3440)
!3446 = !DILocation(line: 54, column: 19, scope: !3440)
!3447 = !DILocation(line: 53, column: 2, scope: !3440)
!3448 = !{i64 2148848785, i64 2148848824, i64 2148848845, i64 2148848882, i64 2148848905, i64 2148848775}
!3449 = !DILocation(line: 55, column: 1, scope: !3440)
!3450 = distinct !DISubprogram(name: "static_key_false", scope: !2518, file: !2518, line: 205, type: !3451, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3465)
!3451 = !DISubroutineType(types: !3452)
!3452 = !{!240, !3453}
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3454, size: 64)
!3454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !2518, line: 85, size: 128, elements: !3455)
!3455 = !{!3456, !3457}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !3454, file: !2518, line: 86, baseType: !344, size: 32)
!3457 = !DIDerivedType(tag: DW_TAG_member, scope: !3454, file: !2518, line: 101, baseType: !3458, size: 64, offset: 64)
!3458 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3454, file: !2518, line: 101, size: 64, elements: !3459)
!3459 = !{!3460, !3461, !3462}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3458, file: !2518, line: 102, baseType: !153, size: 64)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !3458, file: !2518, line: 103, baseType: !2516, size: 64)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3458, file: !2518, line: 104, baseType: !3463, size: 64)
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !2518, line: 104, flags: DIFlagFwdDecl)
!3465 = !{!3466}
!3466 = !DILocalVariable(name: "key", arg: 1, scope: !3450, file: !2518, line: 205, type: !3453)
!3467 = !DILocation(line: 205, column: 65, scope: !3450)
!3468 = !DILocation(line: 207, column: 28, scope: !3450)
!3469 = !DILocation(line: 207, column: 9, scope: !3450)
!3470 = !DILocation(line: 207, column: 2, scope: !3450)
!3471 = distinct !DISubprogram(name: "cpu_online", scope: !168, file: !168, line: 1080, type: !3472, scopeLine: 1081, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3474)
!3472 = !DISubroutineType(types: !3473)
!3473 = !{!240, !7}
!3474 = !{!3475}
!3475 = !DILocalVariable(name: "cpu", arg: 1, scope: !3471, file: !168, line: 1080, type: !7)
!3476 = !DILocation(line: 1080, column: 44, scope: !3471)
!3477 = !DILocation(line: 1082, column: 26, scope: !3471)
!3478 = !DILocation(line: 1082, column: 9, scope: !3471)
!3479 = !DILocation(line: 1082, column: 2, scope: !3471)
!3480 = distinct !DISubprogram(name: "__preempt_count_add", scope: !3481, file: !3481, line: 78, type: !3267, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3482)
!3481 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!3482 = !{!3483, !3484, !3486}
!3483 = !DILocalVariable(name: "val", arg: 1, scope: !3480, file: !3481, line: 78, type: !151)
!3484 = !DILocalVariable(name: "pao_ID__", scope: !3485, file: !3481, line: 80, type: !2424)
!3485 = distinct !DILexicalBlock(scope: !3480, file: !3481, line: 80, column: 2)
!3486 = !DILocalVariable(name: "pto_val__", scope: !3487, file: !3481, line: 80, type: !174)
!3487 = distinct !DILexicalBlock(scope: !3488, file: !3481, line: 80, column: 2)
!3488 = distinct !DILexicalBlock(scope: !3489, file: !3481, line: 80, column: 2)
!3489 = distinct !DILexicalBlock(scope: !3485, file: !3481, line: 80, column: 2)
!3490 = !DILocation(line: 78, column: 53, scope: !3480)
!3491 = !DILocation(line: 80, column: 2, scope: !3480)
!3492 = !DILocation(line: 80, column: 2, scope: !3485)
!3493 = !DILocation(line: 80, column: 2, scope: !3489)
!3494 = !DILocation(line: 80, column: 2, scope: !3495)
!3495 = distinct !DILexicalBlock(scope: !3489, file: !3481, line: 80, column: 2)
!3496 = !{i64 2149497843}
!3497 = !DILocation(line: 80, column: 2, scope: !3488)
!3498 = !DILocation(line: 80, column: 2, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !3488, file: !3481, line: 80, column: 2)
!3500 = !{i64 2149498138}
!3501 = !DILocation(line: 80, column: 2, scope: !3487)
!3502 = !{i64 2149498843}
!3503 = !DILocation(line: 81, column: 1, scope: !3480)
!3504 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !3481, file: !3481, line: 93, type: !2054, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3505)
!3505 = !{!3506}
!3506 = !DILocalVariable(name: "c", scope: !3507, file: !3481, line: 95, type: !240)
!3507 = distinct !DILexicalBlock(scope: !3504, file: !3481, line: 95, column: 9)
!3508 = !DILocation(line: 95, column: 9, scope: !3507)
!3509 = !{i64 2149502199, i64 2149502292}
!3510 = !DILocation(line: 95, column: 9, scope: !3504)
!3511 = !DILocation(line: 95, column: 2, scope: !3504)
!3512 = distinct !DISubprogram(name: "arch_static_branch", scope: !3513, file: !3513, line: 25, type: !3514, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3516)
!3513 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!3514 = !DISubroutineType(types: !3515)
!3515 = !{!240, !3453, !240}
!3516 = !{!3517, !3518, !3519}
!3517 = !DILocalVariable(name: "key", arg: 1, scope: !3512, file: !3513, line: 25, type: !3453)
!3518 = !DILocalVariable(name: "branch", arg: 2, scope: !3512, file: !3513, line: 25, type: !240)
!3519 = !DILabel(scope: !3512, name: "l_yes", file: !3513, line: 33)
!3520 = !DILocation(line: 25, column: 67, scope: !3512)
!3521 = !DILocation(line: 25, column: 77, scope: !3512)
!3522 = !DILocation(line: 30, column: 13, scope: !3512)
!3523 = !DILocation(line: 30, column: 28, scope: !3512)
!3524 = !DILocation(line: 30, column: 26, scope: !3512)
!3525 = !DILocation(line: 27, column: 2, scope: !3512)
!3526 = !{i64 1089909, i64 1089953, i64 2148574636, i64 2148574657, i64 2148574683, i64 2148574716, i64 2148574750, i64 2148574774}
!3527 = !DILocation(line: 32, column: 2, scope: !3512)
!3528 = !DILocation(line: 33, column: 1, scope: !3512)
!3529 = !DILocation(line: 34, column: 2, scope: !3512)
!3530 = !DILocation(line: 35, column: 1, scope: !3512)
!3531 = distinct !DISubprogram(name: "cpumask_test_cpu", scope: !168, file: !168, line: 502, type: !3532, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3534)
!3532 = !DISubroutineType(types: !3533)
!3533 = !{!240, !151, !165}
!3534 = !{!3535, !3536}
!3535 = !DILocalVariable(name: "cpu", arg: 1, scope: !3531, file: !168, line: 502, type: !151)
!3536 = !DILocalVariable(name: "cpumask", arg: 2, scope: !3531, file: !168, line: 502, type: !165)
!3537 = !DILocation(line: 502, column: 50, scope: !3531)
!3538 = !DILocation(line: 502, column: 77, scope: !3531)
!3539 = !DILocation(line: 504, column: 9, scope: !3531)
!3540 = !DILocation(line: 504, column: 2, scope: !3531)
!3541 = distinct !DISubprogram(name: "_test_bit", scope: !3542, file: !3542, line: 139, type: !3543, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3547)
!3542 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!3543 = !DISubroutineType(types: !3544)
!3544 = !{!240, !153, !3545}
!3545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3546, size: 64)
!3546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2966)
!3547 = !{!3548, !3549}
!3548 = !DILocalVariable(name: "nr", arg: 1, scope: !3541, file: !3542, line: 139, type: !153)
!3549 = !DILocalVariable(name: "addr", arg: 2, scope: !3541, file: !3542, line: 139, type: !3545)
!3550 = !DILocation(line: 139, column: 25, scope: !3541)
!3551 = !DILocation(line: 139, column: 59, scope: !3541)
!3552 = !DILocation(line: 141, column: 25, scope: !3541)
!3553 = !DILocation(line: 141, column: 32, scope: !3541)
!3554 = !DILocation(line: 141, column: 30, scope: !3541)
!3555 = !DILocation(line: 141, column: 2, scope: !3541)
!3556 = !DILocation(line: 142, column: 23, scope: !3541)
!3557 = !DILocation(line: 142, column: 27, scope: !3541)
!3558 = !DILocation(line: 142, column: 9, scope: !3541)
!3559 = !DILocation(line: 142, column: 2, scope: !3541)
!3560 = distinct !DISubprogram(name: "cpumask_check", scope: !168, file: !168, line: 148, type: !3561, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3563)
!3561 = !DISubroutineType(types: !3562)
!3562 = !{!7, !7}
!3563 = !{!3564}
!3564 = !DILocalVariable(name: "cpu", arg: 1, scope: !3560, file: !168, line: 148, type: !7)
!3565 = !DILocation(line: 148, column: 64, scope: !3560)
!3566 = !DILocation(line: 150, column: 20, scope: !3560)
!3567 = !DILocation(line: 150, column: 2, scope: !3560)
!3568 = !DILocation(line: 151, column: 9, scope: !3560)
!3569 = !DILocation(line: 151, column: 2, scope: !3560)
!3570 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !3381, file: !3381, line: 66, type: !3382, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3571)
!3571 = !{!3572, !3573}
!3572 = !DILocalVariable(name: "v", arg: 1, scope: !3570, file: !3381, line: 66, type: !3384)
!3573 = !DILocalVariable(name: "size", arg: 2, scope: !3570, file: !3381, line: 66, type: !1145)
!3574 = !DILocation(line: 66, column: 73, scope: !3570)
!3575 = !DILocation(line: 66, column: 83, scope: !3570)
!3576 = !DILocation(line: 68, column: 19, scope: !3570)
!3577 = !DILocation(line: 68, column: 22, scope: !3570)
!3578 = !DILocation(line: 68, column: 2, scope: !3570)
!3579 = !DILocation(line: 69, column: 2, scope: !3570)
!3580 = !DILocation(line: 70, column: 1, scope: !3570)
!3581 = distinct !DISubprogram(name: "arch_test_bit", scope: !3398, file: !3398, line: 237, type: !3543, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3582)
!3582 = !{!3583, !3584}
!3583 = !DILocalVariable(name: "nr", arg: 1, scope: !3581, file: !3398, line: 237, type: !153)
!3584 = !DILocalVariable(name: "addr", arg: 2, scope: !3581, file: !3398, line: 237, type: !3545)
!3585 = !DILocation(line: 237, column: 29, scope: !3581)
!3586 = !DILocation(line: 237, column: 63, scope: !3581)
!3587 = !DILocation(line: 239, column: 30, scope: !3581)
!3588 = !DILocation(line: 239, column: 9, scope: !3581)
!3589 = !DILocation(line: 239, column: 54, scope: !3581)
!3590 = !DILocation(line: 239, column: 58, scope: !3581)
!3591 = !DILocation(line: 239, column: 36, scope: !3581)
!3592 = !DILocation(line: 240, column: 26, scope: !3581)
!3593 = !DILocation(line: 240, column: 30, scope: !3581)
!3594 = !DILocation(line: 240, column: 8, scope: !3581)
!3595 = !DILocation(line: 239, column: 2, scope: !3581)
!3596 = distinct !DISubprogram(name: "kasan_check_read", scope: !3411, file: !3411, line: 40, type: !3412, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3597)
!3597 = !{!3598, !3599}
!3598 = !DILocalVariable(name: "p", arg: 1, scope: !3596, file: !3411, line: 40, type: !3384)
!3599 = !DILocalVariable(name: "size", arg: 2, scope: !3596, file: !3411, line: 40, type: !7)
!3600 = !DILocation(line: 40, column: 58, scope: !3596)
!3601 = !DILocation(line: 40, column: 74, scope: !3596)
!3602 = !DILocation(line: 42, column: 2, scope: !3596)
!3603 = distinct !DISubprogram(name: "constant_test_bit", scope: !3398, file: !3398, line: 204, type: !3604, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3606)
!3604 = !DISubroutineType(types: !3605)
!3605 = !{!240, !839, !3545}
!3606 = !{!3607, !3608}
!3607 = !DILocalVariable(name: "nr", arg: 1, scope: !3603, file: !3398, line: 204, type: !839)
!3608 = !DILocalVariable(name: "addr", arg: 2, scope: !3603, file: !3398, line: 204, type: !3545)
!3609 = !DILocation(line: 204, column: 52, scope: !3603)
!3610 = !DILocation(line: 204, column: 86, scope: !3603)
!3611 = !DILocation(line: 206, column: 19, scope: !3603)
!3612 = !DILocation(line: 206, column: 22, scope: !3603)
!3613 = !DILocation(line: 206, column: 15, scope: !3603)
!3614 = !DILocation(line: 207, column: 4, scope: !3603)
!3615 = !DILocation(line: 207, column: 9, scope: !3603)
!3616 = !DILocation(line: 207, column: 12, scope: !3603)
!3617 = !DILocation(line: 206, column: 44, scope: !3603)
!3618 = !DILocation(line: 207, column: 37, scope: !3603)
!3619 = !DILocation(line: 206, column: 2, scope: !3603)
!3620 = distinct !DISubprogram(name: "variable_test_bit", scope: !3398, file: !3398, line: 224, type: !3604, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3621)
!3621 = !{!3622, !3623, !3624}
!3622 = !DILocalVariable(name: "nr", arg: 1, scope: !3620, file: !3398, line: 224, type: !839)
!3623 = !DILocalVariable(name: "addr", arg: 2, scope: !3620, file: !3398, line: 224, type: !3545)
!3624 = !DILocalVariable(name: "oldbit", scope: !3620, file: !3398, line: 226, type: !240)
!3625 = !DILocation(line: 224, column: 52, scope: !3620)
!3626 = !DILocation(line: 224, column: 86, scope: !3620)
!3627 = !DILocation(line: 226, column: 2, scope: !3620)
!3628 = !DILocation(line: 226, column: 7, scope: !3620)
!3629 = !DILocation(line: 231, column: 33, scope: !3620)
!3630 = !DILocation(line: 231, column: 46, scope: !3620)
!3631 = !DILocation(line: 228, column: 2, scope: !3620)
!3632 = !{i64 2148017218, i64 2148017292}
!3633 = !DILocation(line: 233, column: 9, scope: !3620)
!3634 = !DILocation(line: 234, column: 1, scope: !3620)
!3635 = !DILocation(line: 233, column: 2, scope: !3620)
!3636 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !168, file: !168, line: 140, type: !3637, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3639)
!3637 = !DISubroutineType(types: !3638)
!3638 = !{null, !7, !7}
!3639 = !{!3640, !3641}
!3640 = !DILocalVariable(name: "cpu", arg: 1, scope: !3636, file: !168, line: 140, type: !7)
!3641 = !DILocalVariable(name: "bits", arg: 2, scope: !3636, file: !168, line: 140, type: !7)
!3642 = !DILocation(line: 140, column: 60, scope: !3636)
!3643 = !DILocation(line: 140, column: 78, scope: !3636)
!3644 = !DILocation(line: 145, column: 1, scope: !3636)
!3645 = distinct !DISubprogram(name: "native_save_fl", scope: !3201, file: !3201, line: 17, type: !3202, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3646)
!3646 = !{!3647}
!3647 = !DILocalVariable(name: "flags", scope: !3645, file: !3201, line: 19, type: !153)
!3648 = !DILocation(line: 19, column: 2, scope: !3645)
!3649 = !DILocation(line: 19, column: 16, scope: !3645)
!3650 = !DILocation(line: 26, column: 2, scope: !3645)
!3651 = !{i64 1924765, i64 1924786}
!3652 = !DILocation(line: 32, column: 9, scope: !3645)
!3653 = !DILocation(line: 33, column: 1, scope: !3645)
!3654 = !DILocation(line: 32, column: 2, scope: !3645)
!3655 = distinct !DISubprogram(name: "native_irq_disable", scope: !3201, file: !3201, line: 35, type: !2558, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3656 = !DILocation(line: 37, column: 2, scope: !3655)
!3657 = !{i64 1924969}
!3658 = !DILocation(line: 38, column: 1, scope: !3655)
