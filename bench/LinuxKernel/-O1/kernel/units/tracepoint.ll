; ModuleID = 'kernel/tracepoint.c'
source_filename = "kernel/tracepoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_tracepoint_srcu: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad tracepoint_srcu ; .previous"
module asm ".section\09\22.initcall2.init..kmod_tracepoint__241_140_release_early_probes\22, \22a\22\09\09"
module asm "__initcall__kmod_tracepoint__241_140_release_early_probes2:\09\09\09"
module asm ".long\09__initstub__kmod_tracepoint__241_140_release_early_probes2 - .\09"
module asm ".previous\09\09\09\09\09"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_tracepoint_probe_register_prio_may_exist: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad tracepoint_probe_register_prio_may_exist ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_tracepoint_probe_register_prio: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad tracepoint_probe_register_prio ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_tracepoint_probe_register: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad tracepoint_probe_register ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_tracepoint_probe_unregister: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad tracepoint_probe_unregister ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_register_tracepoint_module_notifier: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad register_tracepoint_module_notifier ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_unregister_tracepoint_module_notifier: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad unregister_tracepoint_module_notifier ; .previous"
module asm ".section\09\22.initcall6.init..kmod_tracepoint__265_737_init_tracepoints\22, \22a\22\09\09"
module asm "__initcall__kmod_tracepoint__265_737_init_tracepoints6:\09\09\09"
module asm ".long\09__initstub__kmod_tracepoint__265_737_init_tracepoints6 - .\09"
module asm ".previous\09\09\09\09\09"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_for_each_kernel_tracepoint: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad for_each_kernel_tracepoint ; .previous"

%struct.srcu_data = type { [2 x %struct.atomic64_t], [2 x %struct.atomic64_t], i32, [28 x i8], %struct.spinlock, %struct.rcu_segcblist, i64, i64, i8, %struct.timer_list, %struct.work_struct, %struct.callback_head, ptr, i64, i32, ptr, [48 x i8] }
%struct.atomic64_t = type { i64 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.rcu_segcblist = type { ptr, [4 x ptr], [4 x i64], i64, [4 x i64], i8 }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.srcu_usage = type { ptr, [3 x ptr], i32, %struct.mutex, %struct.spinlock, %struct.mutex, i64, i64, i64, i64, i64, i64, i64, i64, i8, i64, %struct.mutex, %struct.completion, %struct.atomic_t, i64, i64, %struct.delayed_work, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.srcu_struct = type { i32, ptr, %struct.lockdep_map, ptr }
%struct.lockdep_map = type {}
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.13, %struct.qspinlock }
%union.anon.13 = type { %struct.atomic_t }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i64, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, ptr, [32 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, %union.rcu_special, %struct.list_head, ptr, i64, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i16, i64, %struct.restart_block, i32, i32, i64, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, ptr, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, %struct.task_io_accounting, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.mutex, i32, ptr, %struct.mutex, %struct.list_head, ptr, i16, i16, ptr, i32, i32, i64, i32, i32, i32, i32, %struct.callback_head, %struct.tlbflush_unmap_batch, ptr, %struct.page_frag, ptr, i32, i32, i64, i64, i64, i64, ptr, ptr, %struct.kmap_ctrl, %struct.callback_head, %struct.refcount_struct, i32, ptr, %struct.timer_list, ptr, %struct.refcount_struct, ptr, ptr, i64, i64, i64, %struct.callback_head, i32, %struct.llist_head, %struct.llist_head, %struct.callback_head, [48 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i64, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.2, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.2 = type { i32 }
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
%struct.restart_block = type { i64, ptr, %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tp_transition_snapshot = type { i64, i64, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.15 }
%union.anon.15 = type { i64 }
%struct.module = type { i32, %struct.list_head, [56 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [7 x %struct.module_memory], %struct.mod_arch_specific, i64, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.module_memory = type { ptr, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.mod_arch_specific = type { i32, ptr, ptr }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.tp_module = type { %struct.list_head, ptr }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i64, i64 }
%struct.pacct_struct = type { i32, i64, i64, i64, i64, i64, i64 }
%struct.tp_probes = type { %struct.callback_head, [0 x %struct.tracepoint_func] }

@tracepoint_srcu_srcu_data = internal global %struct.srcu_data zeroinitializer, section ".data..percpu", align 64, !dbg !0
@tracepoint_srcu_srcu_usage = internal global %struct.srcu_usage { ptr null, [3 x ptr] zeroinitializer, i32 0, %struct.mutex zeroinitializer, %struct.spinlock zeroinitializer, %struct.mutex zeroinitializer, i64 0, i64 -1, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i8 0, i64 0, %struct.mutex zeroinitializer, %struct.completion zeroinitializer, %struct.atomic_t zeroinitializer, i64 0, i64 0, %struct.delayed_work { %struct.work_struct { %struct.atomic64_t { i64 68719476704 }, %struct.list_head { ptr getelementptr (i8, ptr @tracepoint_srcu_srcu_usage, i64 288), ptr getelementptr (i8, ptr @tracepoint_srcu_srcu_usage, i64 288) }, ptr null }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i64 -2401263026318605568 to ptr), ptr null }, i64 0, ptr @delayed_work_timer_fn, i32 2097152 }, ptr null, i32 0 }, ptr null }, align 8, !dbg !2652
@tracepoint_srcu = hidden global %struct.srcu_struct { i32 0, ptr @tracepoint_srcu_srcu_data, %struct.lockdep_map zeroinitializer, ptr @tracepoint_srcu_srcu_usage }, align 8, !dbg !2628
@__UNIQUE_ID___addressable_tracepoint_srcu240 = internal global ptr @tracepoint_srcu, section ".discard.addressable", align 8, !dbg !2630
@__UNIQUE_ID___addressable___initstub__kmod_tracepoint__241_140_release_early_probes2242 = internal global ptr @__initstub__kmod_tracepoint__241_140_release_early_probes2, section ".discard.addressable", align 8, !dbg !2632
@tracepoints_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @tracepoints_mutex, i64 16), ptr getelementptr (i8, ptr @tracepoints_mutex, i64 16) } }, align 8, !dbg !2658
@__UNIQUE_ID___addressable_tracepoint_probe_register_prio_may_exist259 = internal global ptr @tracepoint_probe_register_prio_may_exist, section ".discard.addressable", align 8, !dbg !2634
@__UNIQUE_ID___addressable_tracepoint_probe_register_prio260 = internal global ptr @tracepoint_probe_register_prio, section ".discard.addressable", align 8, !dbg !2636
@__UNIQUE_ID___addressable_tracepoint_probe_register261 = internal global ptr @tracepoint_probe_register, section ".discard.addressable", align 8, !dbg !2638
@__UNIQUE_ID___addressable_tracepoint_probe_unregister262 = internal global ptr @tracepoint_probe_unregister, section ".discard.addressable", align 8, !dbg !2640
@tracepoint_module_list_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @tracepoint_module_list_mutex, i64 16), ptr getelementptr (i8, ptr @tracepoint_module_list_mutex, i64 16) } }, align 8, !dbg !2683
@tracepoint_notify_list = internal global %struct.blocking_notifier_head { %struct.rw_semaphore { %struct.atomic64_t zeroinitializer, %struct.atomic64_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @tracepoint_notify_list, i64 24), ptr getelementptr (i8, ptr @tracepoint_notify_list, i64 24) } }, ptr null }, align 8, !dbg !2685
@tracepoint_module_list = internal global %struct.list_head { ptr @tracepoint_module_list, ptr @tracepoint_module_list }, align 8, !dbg !2702
@__UNIQUE_ID___addressable_register_tracepoint_module_notifier263 = internal global ptr @register_tracepoint_module_notifier, section ".discard.addressable", align 8, !dbg !2642
@__UNIQUE_ID___addressable_unregister_tracepoint_module_notifier264 = internal global ptr @unregister_tracepoint_module_notifier, section ".discard.addressable", align 8, !dbg !2644
@__UNIQUE_ID___addressable___initstub__kmod_tracepoint__265_737_init_tracepoints6266 = internal global ptr @__initstub__kmod_tracepoint__265_737_init_tracepoints6, section ".discard.addressable", align 8, !dbg !2646
@__start___tracepoints_ptrs = external dso_local constant [0 x i32], align 4
@__stop___tracepoints_ptrs = external dso_local constant [0 x i32], align 4
@__UNIQUE_ID___addressable_for_each_kernel_tracepoint267 = internal global ptr @for_each_kernel_tracepoint, section ".discard.addressable", align 8, !dbg !2648
@sys_tracepoint_refcount = internal global i32 0, align 4, !dbg !2650
@tasklist_lock = external dso_local global %struct.rwlock_t, align 4
@init_task = external dso_local global %struct.task_struct, align 64
@ok_to_free_tracepoints = internal global i8 0, align 1, !dbg !2654
@early_probes = internal global ptr null, align 8, !dbg !2656
@.str = private unnamed_addr constant [20 x i8] c"kernel/tracepoint.c\00", align 1, !dbg !2660
@tracepoint_debug = internal constant i32 0, align 4, !dbg !2668
@.str.1 = private unnamed_addr constant [17 x i8] c"\017Probe %d : %p\0A\00", align 1, !dbg !2663
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !2670
@tp_transition_snapshot = internal global [2 x %struct.tp_transition_snapshot] zeroinitializer, align 16, !dbg !2675
@tracepoint_module_nb = internal global %struct.notifier_block { ptr @tracepoint_module_notify, ptr null, i32 0 }, align 8, !dbg !2709
@.str.3 = private unnamed_addr constant [55 x i8] c"\014Failed to register tracepoint module enter notifier\0A\00", align 1, !dbg !2704
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID___addressable_tracepoint_srcu240, ptr @__UNIQUE_ID___addressable___initstub__kmod_tracepoint__241_140_release_early_probes2242, ptr @__UNIQUE_ID___addressable_tracepoint_probe_register_prio_may_exist259, ptr @__UNIQUE_ID___addressable_tracepoint_probe_register_prio260, ptr @__UNIQUE_ID___addressable_tracepoint_probe_register261, ptr @__UNIQUE_ID___addressable_tracepoint_probe_unregister262, ptr @__UNIQUE_ID___addressable_register_tracepoint_module_notifier263, ptr @__UNIQUE_ID___addressable_unregister_tracepoint_module_notifier264, ptr @__UNIQUE_ID___addressable___initstub__kmod_tracepoint__265_737_init_tracepoints6266, ptr @__UNIQUE_ID___addressable_for_each_kernel_tracepoint267], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_tracepoint__241_140_release_early_probes2() #0 section ".init.text" align 16 !dbg !2720 {
entry:
  %call = call i32 @release_early_probes() #15, !dbg !2721
  ret i32 %call, !dbg !2721
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @release_early_probes() #0 section ".init.text" align 16 !dbg !2722 {
entry:
  %tmp = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #16, !dbg !2725
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !2724, metadata !DIExpression()), !dbg !2726
  store i8 1, ptr @ok_to_free_tracepoints, align 1, !dbg !2727
  br label %while.cond, !dbg !2728

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr @early_probes, align 8, !dbg !2729
  %tobool = icmp ne ptr %0, null, !dbg !2728
  br i1 %tobool, label %while.body, label %while.end, !dbg !2728

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr @early_probes, align 8, !dbg !2730
  store ptr %1, ptr %tmp, align 8, !dbg !2732
  %2 = load ptr, ptr %tmp, align 8, !dbg !2733
  %next = getelementptr inbounds %struct.callback_head, ptr %2, i32 0, i32 0, !dbg !2734
  %3 = load ptr, ptr %next, align 8, !dbg !2734
  store ptr %3, ptr @early_probes, align 8, !dbg !2735
  %4 = load ptr, ptr %tmp, align 8, !dbg !2736
  call void @call_rcu(ptr noundef %4, ptr noundef @rcu_free_old_probes) #17, !dbg !2737
  br label %while.cond, !dbg !2728, !llvm.loop !2738

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #16, !dbg !2742
  ret i32 0, !dbg !2743
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @tracepoint_probe_register_prio_may_exist(ptr noundef %tp, ptr noundef %probe, ptr noundef %data, i32 noundef %prio) #1 align 16 !dbg !2744 {
entry:
  %tp.addr = alloca ptr, align 8
  %probe.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %prio.addr = alloca i32, align 4
  %tp_func = alloca %struct.tracepoint_func, align 8
  %ret = alloca i32, align 4
  store ptr %tp, ptr %tp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tp.addr, metadata !2777, metadata !DIExpression()), !dbg !2783
  store ptr %probe, ptr %probe.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %probe.addr, metadata !2778, metadata !DIExpression()), !dbg !2784
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !2779, metadata !DIExpression()), !dbg !2785
  store i32 %prio, ptr %prio.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %prio.addr, metadata !2780, metadata !DIExpression()), !dbg !2786
  call void @llvm.lifetime.start.p0(i64 24, ptr %tp_func) #16, !dbg !2787
  call void @llvm.dbg.declare(metadata ptr %tp_func, metadata !2781, metadata !DIExpression()), !dbg !2788
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !2789
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2782, metadata !DIExpression()), !dbg !2790
  call void @mutex_lock(ptr noundef @tracepoints_mutex) #17, !dbg !2791
  %0 = load ptr, ptr %probe.addr, align 8, !dbg !2792
  %func = getelementptr inbounds %struct.tracepoint_func, ptr %tp_func, i32 0, i32 0, !dbg !2793
  store ptr %0, ptr %func, align 8, !dbg !2794
  %1 = load ptr, ptr %data.addr, align 8, !dbg !2795
  %data1 = getelementptr inbounds %struct.tracepoint_func, ptr %tp_func, i32 0, i32 1, !dbg !2796
  store ptr %1, ptr %data1, align 8, !dbg !2797
  %2 = load i32, ptr %prio.addr, align 4, !dbg !2798
  %prio2 = getelementptr inbounds %struct.tracepoint_func, ptr %tp_func, i32 0, i32 2, !dbg !2799
  store i32 %2, ptr %prio2, align 8, !dbg !2800
  %3 = load ptr, ptr %tp.addr, align 8, !dbg !2801
  %4 = load i32, ptr %prio.addr, align 4, !dbg !2802
  %call = call i32 @tracepoint_add_func(ptr noundef %3, ptr noundef %tp_func, i32 noundef %4, i1 noundef zeroext false) #17, !dbg !2803
  store i32 %call, ptr %ret, align 4, !dbg !2804
  call void @mutex_unlock(ptr noundef @tracepoints_mutex) #17, !dbg !2805
  %5 = load i32, ptr %ret, align 4, !dbg !2806
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !2807
  call void @llvm.lifetime.end.p0(i64 24, ptr %tp_func) #16, !dbg !2807
  ret i32 %5, !dbg !2808
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2809 dso_local void @mutex_lock(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @tracepoint_add_func(ptr noundef %tp, ptr noundef %func, i32 noundef %prio, i1 noundef zeroext %warn) #1 align 16 !dbg !2813 {
entry:
  %retval = alloca i32, align 4
  %tp.addr = alloca ptr, align 8
  %func.addr = alloca ptr, align 8
  %prio.addr = alloca i32, align 4
  %warn.addr = alloca i8, align 1
  %old = alloca ptr, align 8
  %tp_funcs = alloca ptr, align 8
  %ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp8 = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp39 = alloca i64, align 8
  %_r_a_p__v = alloca i64, align 8
  %_r_a_p__v95 = alloca i64, align 8
  %__ret_warn_on142 = alloca i32, align 4
  %__flags153 = alloca i32, align 4
  %tmp166 = alloca i64, align 8
  store ptr %tp, ptr %tp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tp.addr, metadata !2817, metadata !DIExpression()), !dbg !2841
  store ptr %func, ptr %func.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !2818, metadata !DIExpression()), !dbg !2842
  store i32 %prio, ptr %prio.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %prio.addr, metadata !2819, metadata !DIExpression()), !dbg !2843
  %frombool = zext i1 %warn to i8
  store i8 %frombool, ptr %warn.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %warn.addr, metadata !2820, metadata !DIExpression()), !dbg !2844
  call void @llvm.lifetime.start.p0(i64 8, ptr %old) #16, !dbg !2845
  call void @llvm.dbg.declare(metadata ptr %old, metadata !2821, metadata !DIExpression()), !dbg !2846
  call void @llvm.lifetime.start.p0(i64 8, ptr %tp_funcs) #16, !dbg !2845
  call void @llvm.dbg.declare(metadata ptr %tp_funcs, metadata !2822, metadata !DIExpression()), !dbg !2847
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !2848
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2823, metadata !DIExpression()), !dbg !2849
  %0 = load ptr, ptr %tp.addr, align 8, !dbg !2850
  %regfunc = getelementptr inbounds %struct.tracepoint, ptr %0, i32 0, i32 6, !dbg !2852
  %1 = load ptr, ptr %regfunc, align 8, !dbg !2852
  %tobool = icmp ne ptr %1, null, !dbg !2850
  br i1 %tobool, label %land.lhs.true, label %if.end7, !dbg !2853

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %tp.addr, align 8, !dbg !2854
  %key = getelementptr inbounds %struct.tracepoint, ptr %2, i32 0, i32 1, !dbg !2854
  %call = call i32 @static_key_count(ptr noundef %key) #17, !dbg !2854
  %cmp = icmp sgt i32 %call, 0, !dbg !2854
  %conv = zext i1 %cmp to i32, !dbg !2854
  store i32 %conv, ptr %tmp, align 4, !dbg !2856
  %3 = load i32, ptr %tmp, align 4, !dbg !2854
  %tobool1 = icmp ne i32 %3, 0, !dbg !2858
  br i1 %tobool1, label %if.end7, label %if.then, !dbg !2859

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %tp.addr, align 8, !dbg !2860
  %regfunc2 = getelementptr inbounds %struct.tracepoint, ptr %4, i32 0, i32 6, !dbg !2862
  %5 = load ptr, ptr %regfunc2, align 8, !dbg !2862
  %call3 = call i32 %5() #17, !dbg !2860
  store i32 %call3, ptr %ret, align 4, !dbg !2863
  %6 = load i32, ptr %ret, align 4, !dbg !2864
  %cmp4 = icmp slt i32 %6, 0, !dbg !2866
  br i1 %cmp4, label %if.then6, label %if.end, !dbg !2867

if.then6:                                         ; preds = %if.then
  %7 = load i32, ptr %ret, align 4, !dbg !2868
  store i32 %7, ptr %retval, align 4, !dbg !2869
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2869

if.end:                                           ; preds = %if.then
  br label %if.end7, !dbg !2870

if.end7:                                          ; preds = %if.end, %land.lhs.true, %entry
  br label %do.body, !dbg !2871

do.body:                                          ; preds = %if.end7
  br label %do.cond, !dbg !2873

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2873

do.end:                                           ; preds = %do.cond
  %8 = load ptr, ptr %tp.addr, align 8, !dbg !2871
  %funcs = getelementptr inbounds %struct.tracepoint, ptr %8, i32 0, i32 8, !dbg !2871
  %9 = load ptr, ptr %funcs, align 8, !dbg !2871
  store ptr %9, ptr %tmp8, align 8, !dbg !2873
  %10 = load ptr, ptr %tmp8, align 8, !dbg !2871
  store ptr %10, ptr %tp_funcs, align 8, !dbg !2875
  %11 = load ptr, ptr %func.addr, align 8, !dbg !2876
  %12 = load i32, ptr %prio.addr, align 4, !dbg !2877
  %call9 = call ptr @func_add(ptr noundef %tp_funcs, ptr noundef %11, i32 noundef %12) #17, !dbg !2878
  store ptr %call9, ptr %old, align 8, !dbg !2879
  %13 = load ptr, ptr %old, align 8, !dbg !2880
  %call10 = call zeroext i1 @IS_ERR(ptr noundef %13) #17, !dbg !2881
  br i1 %call10, label %if.then11, label %if.end49, !dbg !2882

if.then11:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !2883
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2824, metadata !DIExpression()), !dbg !2883
  %14 = load i8, ptr %warn.addr, align 1, !dbg !2883, !range !2884, !noundef !323
  %tobool12 = trunc i8 %14 to i1, !dbg !2883
  br i1 %tobool12, label %land.rhs, label %land.end, !dbg !2883

land.rhs:                                         ; preds = %if.then11
  %15 = load ptr, ptr %old, align 8, !dbg !2883
  %call14 = call i64 @PTR_ERR(ptr noundef %15) #17, !dbg !2883
  %cmp15 = icmp ne i64 %call14, -12, !dbg !2883
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then11
  %16 = phi i1 [ false, %if.then11 ], [ %cmp15, %land.rhs ], !dbg !2885
  %lnot = xor i1 %16, true, !dbg !2883
  %lnot17 = xor i1 %lnot, true, !dbg !2883
  %lnot.ext = zext i1 %lnot17 to i32, !dbg !2883
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !2883
  %17 = load i32, ptr %__ret_warn_on, align 4, !dbg !2886
  %tobool18 = icmp ne i32 %17, 0, !dbg !2886
  %lnot19 = xor i1 %tobool18, true, !dbg !2886
  %lnot21 = xor i1 %lnot19, true, !dbg !2886
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !2886
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !2886
  %expval = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !2886
  %tobool24 = icmp ne i64 %expval, 0, !dbg !2886
  br i1 %tobool24, label %if.then25, label %if.end38, !dbg !2883

if.then25:                                        ; preds = %land.end
  br label %do.body26, !dbg !2886

do.body26:                                        ; preds = %if.then25
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !2887
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !2828, metadata !DIExpression()), !dbg !2887
  store i32 2307, ptr %__flags, align 4, !dbg !2887
  br label %do.body27, !dbg !2887

do.body27:                                        ; preds = %do.body26
  br label %do.cond28, !dbg !2888

do.cond28:                                        ; preds = %do.body27
  br label %do.end29, !dbg !2888

do.end29:                                         ; preds = %do.cond28
  br label %do.body30, !dbg !2887

do.body30:                                        ; preds = %do.end29
  %18 = load i32, ptr %__flags, align 4, !dbg !2890
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 340, i32 %18, i64 12) #16, !dbg !2890, !srcloc !2892
  br label %do.cond31, !dbg !2890

do.cond31:                                        ; preds = %do.body30
  br label %do.end32, !dbg !2890

do.end32:                                         ; preds = %do.cond31
  br label %do.body33, !dbg !2887

do.body33:                                        ; preds = %do.end32
  br label %do.cond34, !dbg !2893

do.cond34:                                        ; preds = %do.body33
  br label %do.end35, !dbg !2893

do.end35:                                         ; preds = %do.cond34
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !2886
  br label %do.cond36, !dbg !2887

do.cond36:                                        ; preds = %do.end35
  br label %do.end37, !dbg !2887

do.end37:                                         ; preds = %do.cond36
  br label %if.end38, !dbg !2887

if.end38:                                         ; preds = %do.end37, %land.end
  %19 = load i32, ptr %__ret_warn_on, align 4, !dbg !2883
  %tobool40 = icmp ne i32 %19, 0, !dbg !2883
  %lnot41 = xor i1 %tobool40, true, !dbg !2883
  %lnot43 = xor i1 %lnot41, true, !dbg !2883
  %lnot.ext44 = zext i1 %lnot43 to i32, !dbg !2883
  %conv45 = sext i32 %lnot.ext44 to i64, !dbg !2883
  %expval46 = call i64 @llvm.expect.i64(i64 %conv45, i64 0), !dbg !2883
  store i64 %expval46, ptr %tmp39, align 8, !dbg !2886
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !2895
  %20 = load i64, ptr %tmp39, align 8, !dbg !2883
  %21 = load ptr, ptr %old, align 8, !dbg !2896
  %call47 = call i64 @PTR_ERR(ptr noundef %21) #17, !dbg !2897
  %conv48 = trunc i64 %call47 to i32, !dbg !2897
  store i32 %conv48, ptr %retval, align 4, !dbg !2898
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2898

if.end49:                                         ; preds = %do.end
  %22 = load ptr, ptr %tp_funcs, align 8, !dbg !2899
  %call50 = call i32 @nr_func_state(ptr noundef %22) #17, !dbg !2900
  switch i32 %call50, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb92
    i32 3, label %sw.bb93
  ], !dbg !2901

sw.bb:                                            ; preds = %if.end49
  call void @tp_rcu_cond_sync(i32 noundef 0) #17, !dbg !2902
  %23 = load ptr, ptr %tp.addr, align 8, !dbg !2903
  %24 = load ptr, ptr %tp_funcs, align 8, !dbg !2904
  call void @tracepoint_update_call(ptr noundef %23, ptr noundef %24) #17, !dbg !2905
  br label %do.body51, !dbg !2906

do.body51:                                        ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r_a_p__v) #16, !dbg !2907
  call void @llvm.dbg.declare(metadata ptr %_r_a_p__v, metadata !2831, metadata !DIExpression()), !dbg !2907
  %25 = load ptr, ptr %tp_funcs, align 8, !dbg !2907
  %26 = ptrtoint ptr %25 to i64, !dbg !2907
  store i64 %26, ptr %_r_a_p__v, align 8, !dbg !2907
  br i1 false, label %land.lhs.true52, label %if.else, !dbg !2908

land.lhs.true52:                                  ; preds = %do.body51
  %27 = load i64, ptr %_r_a_p__v, align 8, !dbg !2908
  %cmp53 = icmp eq i64 %27, 0, !dbg !2908
  br i1 %cmp53, label %if.then55, label %if.else, !dbg !2907

if.then55:                                        ; preds = %land.lhs.true52
  br label %do.body56, !dbg !2908

do.body56:                                        ; preds = %if.then55
  br label %do.body57, !dbg !2910

do.body57:                                        ; preds = %do.body56
  br label %do.cond58, !dbg !2912

do.cond58:                                        ; preds = %do.body57
  br label %do.end59, !dbg !2912

do.end59:                                         ; preds = %do.cond58
  br label %do.body60, !dbg !2910

do.body60:                                        ; preds = %do.end59
  %28 = load i64, ptr %_r_a_p__v, align 8, !dbg !2914
  %29 = inttoptr i64 %28 to ptr, !dbg !2914
  %30 = load ptr, ptr %tp.addr, align 8, !dbg !2914
  %funcs61 = getelementptr inbounds %struct.tracepoint, ptr %30, i32 0, i32 8, !dbg !2914
  store volatile ptr %29, ptr %funcs61, align 8, !dbg !2914
  br label %do.cond62, !dbg !2914

do.cond62:                                        ; preds = %do.body60
  br label %do.end63, !dbg !2914

do.end63:                                         ; preds = %do.cond62
  br label %do.cond64, !dbg !2910

do.cond64:                                        ; preds = %do.end63
  br label %do.end65, !dbg !2910

do.end65:                                         ; preds = %do.cond64
  br label %if.end88, !dbg !2910

if.else:                                          ; preds = %land.lhs.true52, %do.body51
  br label %do.body66, !dbg !2908

do.body66:                                        ; preds = %if.else
  br label %do.body67, !dbg !2916

do.body67:                                        ; preds = %do.body66
  br label %do.cond68, !dbg !2918

do.cond68:                                        ; preds = %do.body67
  br label %do.end69, !dbg !2918

do.end69:                                         ; preds = %do.cond68
  br label %do.body70, !dbg !2916

do.body70:                                        ; preds = %do.end69
  br label %do.body71, !dbg !2920

do.body71:                                        ; preds = %do.body70
  br label %do.cond72, !dbg !2922

do.cond72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !2922

do.end73:                                         ; preds = %do.cond72
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !2920, !srcloc !2924
  br label %do.body74, !dbg !2920

do.body74:                                        ; preds = %do.end73
  br label %do.body75, !dbg !2925

do.body75:                                        ; preds = %do.body74
  br label %do.cond76, !dbg !2927

do.cond76:                                        ; preds = %do.body75
  br label %do.end77, !dbg !2927

do.end77:                                         ; preds = %do.cond76
  br label %do.body78, !dbg !2925

do.body78:                                        ; preds = %do.end77
  %31 = load i64, ptr %_r_a_p__v, align 8, !dbg !2929
  %32 = inttoptr i64 %31 to ptr, !dbg !2929
  %33 = load ptr, ptr %tp.addr, align 8, !dbg !2929
  %funcs79 = getelementptr inbounds %struct.tracepoint, ptr %33, i32 0, i32 8, !dbg !2929
  store volatile ptr %32, ptr %funcs79, align 8, !dbg !2929
  br label %do.cond80, !dbg !2929

do.cond80:                                        ; preds = %do.body78
  br label %do.end81, !dbg !2929

do.end81:                                         ; preds = %do.cond80
  br label %do.cond82, !dbg !2925

do.cond82:                                        ; preds = %do.end81
  br label %do.end83, !dbg !2925

do.end83:                                         ; preds = %do.cond82
  br label %do.cond84, !dbg !2920

do.cond84:                                        ; preds = %do.end83
  br label %do.end85, !dbg !2920

do.end85:                                         ; preds = %do.cond84
  br label %do.cond86, !dbg !2916

do.cond86:                                        ; preds = %do.end85
  br label %do.end87, !dbg !2916

do.end87:                                         ; preds = %do.cond86
  br label %if.end88

if.end88:                                         ; preds = %do.end87, %do.end65
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r_a_p__v) #16, !dbg !2906
  br label %do.cond89, !dbg !2907

do.cond89:                                        ; preds = %if.end88
  br label %do.end90, !dbg !2907

do.end90:                                         ; preds = %do.cond89
  %34 = load ptr, ptr %tp.addr, align 8, !dbg !2931
  %key91 = getelementptr inbounds %struct.tracepoint, ptr %34, i32 0, i32 1, !dbg !2932
  call void @static_key_enable(ptr noundef %key91) #17, !dbg !2933
  br label %sw.epilog, !dbg !2934

sw.bb92:                                          ; preds = %if.end49
  %35 = load ptr, ptr %tp.addr, align 8, !dbg !2935
  %36 = load ptr, ptr %tp_funcs, align 8, !dbg !2936
  call void @tracepoint_update_call(ptr noundef %35, ptr noundef %36) #17, !dbg !2937
  br label %sw.bb93, !dbg !2937

sw.bb93:                                          ; preds = %if.end49, %sw.bb92
  br label %do.body94, !dbg !2938

do.body94:                                        ; preds = %sw.bb93
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r_a_p__v95) #16, !dbg !2939
  call void @llvm.dbg.declare(metadata ptr %_r_a_p__v95, metadata !2834, metadata !DIExpression()), !dbg !2939
  %37 = load ptr, ptr %tp_funcs, align 8, !dbg !2939
  %38 = ptrtoint ptr %37 to i64, !dbg !2939
  store i64 %38, ptr %_r_a_p__v95, align 8, !dbg !2939
  br i1 false, label %land.lhs.true96, label %if.else110, !dbg !2940

land.lhs.true96:                                  ; preds = %do.body94
  %39 = load i64, ptr %_r_a_p__v95, align 8, !dbg !2940
  %cmp97 = icmp eq i64 %39, 0, !dbg !2940
  br i1 %cmp97, label %if.then99, label %if.else110, !dbg !2939

if.then99:                                        ; preds = %land.lhs.true96
  br label %do.body100, !dbg !2940

do.body100:                                       ; preds = %if.then99
  br label %do.body101, !dbg !2942

do.body101:                                       ; preds = %do.body100
  br label %do.cond102, !dbg !2944

do.cond102:                                       ; preds = %do.body101
  br label %do.end103, !dbg !2944

do.end103:                                        ; preds = %do.cond102
  br label %do.body104, !dbg !2942

do.body104:                                       ; preds = %do.end103
  %40 = load i64, ptr %_r_a_p__v95, align 8, !dbg !2946
  %41 = inttoptr i64 %40 to ptr, !dbg !2946
  %42 = load ptr, ptr %tp.addr, align 8, !dbg !2946
  %funcs105 = getelementptr inbounds %struct.tracepoint, ptr %42, i32 0, i32 8, !dbg !2946
  store volatile ptr %41, ptr %funcs105, align 8, !dbg !2946
  br label %do.cond106, !dbg !2946

do.cond106:                                       ; preds = %do.body104
  br label %do.end107, !dbg !2946

do.end107:                                        ; preds = %do.cond106
  br label %do.cond108, !dbg !2942

do.cond108:                                       ; preds = %do.end107
  br label %do.end109, !dbg !2942

do.end109:                                        ; preds = %do.cond108
  br label %if.end133, !dbg !2942

if.else110:                                       ; preds = %land.lhs.true96, %do.body94
  br label %do.body111, !dbg !2940

do.body111:                                       ; preds = %if.else110
  br label %do.body112, !dbg !2948

do.body112:                                       ; preds = %do.body111
  br label %do.cond113, !dbg !2950

do.cond113:                                       ; preds = %do.body112
  br label %do.end114, !dbg !2950

do.end114:                                        ; preds = %do.cond113
  br label %do.body115, !dbg !2948

do.body115:                                       ; preds = %do.end114
  br label %do.body116, !dbg !2952

do.body116:                                       ; preds = %do.body115
  br label %do.cond117, !dbg !2954

do.cond117:                                       ; preds = %do.body116
  br label %do.end118, !dbg !2954

do.end118:                                        ; preds = %do.cond117
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !2952, !srcloc !2956
  br label %do.body119, !dbg !2952

do.body119:                                       ; preds = %do.end118
  br label %do.body120, !dbg !2957

do.body120:                                       ; preds = %do.body119
  br label %do.cond121, !dbg !2959

do.cond121:                                       ; preds = %do.body120
  br label %do.end122, !dbg !2959

do.end122:                                        ; preds = %do.cond121
  br label %do.body123, !dbg !2957

do.body123:                                       ; preds = %do.end122
  %43 = load i64, ptr %_r_a_p__v95, align 8, !dbg !2961
  %44 = inttoptr i64 %43 to ptr, !dbg !2961
  %45 = load ptr, ptr %tp.addr, align 8, !dbg !2961
  %funcs124 = getelementptr inbounds %struct.tracepoint, ptr %45, i32 0, i32 8, !dbg !2961
  store volatile ptr %44, ptr %funcs124, align 8, !dbg !2961
  br label %do.cond125, !dbg !2961

do.cond125:                                       ; preds = %do.body123
  br label %do.end126, !dbg !2961

do.end126:                                        ; preds = %do.cond125
  br label %do.cond127, !dbg !2957

do.cond127:                                       ; preds = %do.end126
  br label %do.end128, !dbg !2957

do.end128:                                        ; preds = %do.cond127
  br label %do.cond129, !dbg !2952

do.cond129:                                       ; preds = %do.end128
  br label %do.end130, !dbg !2952

do.end130:                                        ; preds = %do.cond129
  br label %do.cond131, !dbg !2948

do.cond131:                                       ; preds = %do.end130
  br label %do.end132, !dbg !2948

do.end132:                                        ; preds = %do.cond131
  br label %if.end133

if.end133:                                        ; preds = %do.end132, %do.end109
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r_a_p__v95) #16, !dbg !2938
  br label %do.cond134, !dbg !2939

do.cond134:                                       ; preds = %if.end133
  br label %do.end135, !dbg !2939

do.end135:                                        ; preds = %do.cond134
  %46 = load ptr, ptr %tp_funcs, align 8, !dbg !2963
  %arrayidx = getelementptr %struct.tracepoint_func, ptr %46, i64 0, !dbg !2963
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %arrayidx, i32 0, i32 1, !dbg !2965
  %47 = load ptr, ptr %data, align 8, !dbg !2965
  %48 = load ptr, ptr %old, align 8, !dbg !2966
  %arrayidx136 = getelementptr %struct.tracepoint_func, ptr %48, i64 0, !dbg !2966
  %data137 = getelementptr inbounds %struct.tracepoint_func, ptr %arrayidx136, i32 0, i32 1, !dbg !2967
  %49 = load ptr, ptr %data137, align 8, !dbg !2967
  %cmp138 = icmp ne ptr %47, %49, !dbg !2968
  br i1 %cmp138, label %if.then140, label %if.end141, !dbg !2969

if.then140:                                       ; preds = %do.end135
  call void @tp_rcu_get_state(i32 noundef 1) #17, !dbg !2970
  br label %if.end141, !dbg !2970

if.end141:                                        ; preds = %if.then140, %do.end135
  br label %sw.epilog, !dbg !2971

sw.default:                                       ; preds = %if.end49
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on142) #16, !dbg !2972
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on142, metadata !2836, metadata !DIExpression()), !dbg !2972
  store i32 1, ptr %__ret_warn_on142, align 4, !dbg !2972
  %50 = load i32, ptr %__ret_warn_on142, align 4, !dbg !2973
  %tobool143 = icmp ne i32 %50, 0, !dbg !2973
  %lnot144 = xor i1 %tobool143, true, !dbg !2973
  %lnot146 = xor i1 %lnot144, true, !dbg !2973
  %lnot.ext147 = zext i1 %lnot146 to i32, !dbg !2973
  %conv148 = sext i32 %lnot.ext147 to i64, !dbg !2973
  %expval149 = call i64 @llvm.expect.i64(i64 %conv148, i64 0), !dbg !2973
  %tobool150 = icmp ne i64 %expval149, 0, !dbg !2973
  br i1 %tobool150, label %if.then151, label %if.end165, !dbg !2972

if.then151:                                       ; preds = %sw.default
  br label %do.body152, !dbg !2973

do.body152:                                       ; preds = %if.then151
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags153) #16, !dbg !2974
  call void @llvm.dbg.declare(metadata ptr %__flags153, metadata !2838, metadata !DIExpression()), !dbg !2974
  store i32 2307, ptr %__flags153, align 4, !dbg !2974
  br label %do.body154, !dbg !2974

do.body154:                                       ; preds = %do.body152
  br label %do.cond155, !dbg !2975

do.cond155:                                       ; preds = %do.body154
  br label %do.end156, !dbg !2975

do.end156:                                        ; preds = %do.cond155
  br label %do.body157, !dbg !2974

do.body157:                                       ; preds = %do.end156
  %51 = load i32, ptr %__flags153, align 4, !dbg !2977
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 382, i32 %51, i64 12) #16, !dbg !2977, !srcloc !2979
  br label %do.cond158, !dbg !2977

do.cond158:                                       ; preds = %do.body157
  br label %do.end159, !dbg !2977

do.end159:                                        ; preds = %do.cond158
  br label %do.body160, !dbg !2974

do.body160:                                       ; preds = %do.end159
  br label %do.cond161, !dbg !2980

do.cond161:                                       ; preds = %do.body160
  br label %do.end162, !dbg !2980

do.end162:                                        ; preds = %do.cond161
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags153) #16, !dbg !2973
  br label %do.cond163, !dbg !2974

do.cond163:                                       ; preds = %do.end162
  br label %do.end164, !dbg !2974

do.end164:                                        ; preds = %do.cond163
  br label %if.end165, !dbg !2974

if.end165:                                        ; preds = %do.end164, %sw.default
  %52 = load i32, ptr %__ret_warn_on142, align 4, !dbg !2972
  %tobool167 = icmp ne i32 %52, 0, !dbg !2972
  %lnot168 = xor i1 %tobool167, true, !dbg !2972
  %lnot170 = xor i1 %lnot168, true, !dbg !2972
  %lnot.ext171 = zext i1 %lnot170 to i32, !dbg !2972
  %conv172 = sext i32 %lnot.ext171 to i64, !dbg !2972
  %expval173 = call i64 @llvm.expect.i64(i64 %conv172, i64 0), !dbg !2972
  store i64 %expval173, ptr %tmp166, align 8, !dbg !2973
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on142) #16, !dbg !2982
  %53 = load i64, ptr %tmp166, align 8, !dbg !2972
  br label %sw.epilog, !dbg !2983

sw.epilog:                                        ; preds = %if.end165, %if.end141, %do.end90
  %54 = load ptr, ptr %old, align 8, !dbg !2984
  call void @release_probes(ptr noundef %54) #17, !dbg !2985
  store i32 0, ptr %retval, align 4, !dbg !2986
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2986

cleanup:                                          ; preds = %sw.epilog, %if.end38, %if.then6
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !2987
  call void @llvm.lifetime.end.p0(i64 8, ptr %tp_funcs) #16, !dbg !2987
  call void @llvm.lifetime.end.p0(i64 8, ptr %old) #16, !dbg !2987
  %55 = load i32, ptr %retval, align 4, !dbg !2987
  ret i32 %55, !dbg !2987
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2988 dso_local void @mutex_unlock(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @tracepoint_probe_register_prio(ptr noundef %tp, ptr noundef %probe, ptr noundef %data, i32 noundef %prio) #1 align 16 !dbg !2989 {
entry:
  %tp.addr = alloca ptr, align 8
  %probe.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %prio.addr = alloca i32, align 4
  %tp_func = alloca %struct.tracepoint_func, align 8
  %ret = alloca i32, align 4
  store ptr %tp, ptr %tp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tp.addr, metadata !2991, metadata !DIExpression()), !dbg !2997
  store ptr %probe, ptr %probe.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %probe.addr, metadata !2992, metadata !DIExpression()), !dbg !2998
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !2993, metadata !DIExpression()), !dbg !2999
  store i32 %prio, ptr %prio.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %prio.addr, metadata !2994, metadata !DIExpression()), !dbg !3000
  call void @llvm.lifetime.start.p0(i64 24, ptr %tp_func) #16, !dbg !3001
  call void @llvm.dbg.declare(metadata ptr %tp_func, metadata !2995, metadata !DIExpression()), !dbg !3002
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !3003
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2996, metadata !DIExpression()), !dbg !3004
  call void @mutex_lock(ptr noundef @tracepoints_mutex) #17, !dbg !3005
  %0 = load ptr, ptr %probe.addr, align 8, !dbg !3006
  %func = getelementptr inbounds %struct.tracepoint_func, ptr %tp_func, i32 0, i32 0, !dbg !3007
  store ptr %0, ptr %func, align 8, !dbg !3008
  %1 = load ptr, ptr %data.addr, align 8, !dbg !3009
  %data1 = getelementptr inbounds %struct.tracepoint_func, ptr %tp_func, i32 0, i32 1, !dbg !3010
  store ptr %1, ptr %data1, align 8, !dbg !3011
  %2 = load i32, ptr %prio.addr, align 4, !dbg !3012
  %prio2 = getelementptr inbounds %struct.tracepoint_func, ptr %tp_func, i32 0, i32 2, !dbg !3013
  store i32 %2, ptr %prio2, align 8, !dbg !3014
  %3 = load ptr, ptr %tp.addr, align 8, !dbg !3015
  %4 = load i32, ptr %prio.addr, align 4, !dbg !3016
  %call = call i32 @tracepoint_add_func(ptr noundef %3, ptr noundef %tp_func, i32 noundef %4, i1 noundef zeroext true) #17, !dbg !3017
  store i32 %call, ptr %ret, align 4, !dbg !3018
  call void @mutex_unlock(ptr noundef @tracepoints_mutex) #17, !dbg !3019
  %5 = load i32, ptr %ret, align 4, !dbg !3020
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !3021
  call void @llvm.lifetime.end.p0(i64 24, ptr %tp_func) #16, !dbg !3021
  ret i32 %5, !dbg !3022
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @tracepoint_probe_register(ptr noundef %tp, ptr noundef %probe, ptr noundef %data) #1 align 16 !dbg !3023 {
entry:
  %tp.addr = alloca ptr, align 8
  %probe.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store ptr %tp, ptr %tp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tp.addr, metadata !3027, metadata !DIExpression()), !dbg !3030
  store ptr %probe, ptr %probe.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %probe.addr, metadata !3028, metadata !DIExpression()), !dbg !3031
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !3029, metadata !DIExpression()), !dbg !3032
  %0 = load ptr, ptr %tp.addr, align 8, !dbg !3033
  %1 = load ptr, ptr %probe.addr, align 8, !dbg !3034
  %2 = load ptr, ptr %data.addr, align 8, !dbg !3035
  %call = call i32 @tracepoint_probe_register_prio(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 10) #17, !dbg !3036
  ret i32 %call, !dbg !3037
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @tracepoint_probe_unregister(ptr noundef %tp, ptr noundef %probe, ptr noundef %data) #1 align 16 !dbg !3038 {
entry:
  %tp.addr = alloca ptr, align 8
  %probe.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %tp_func = alloca %struct.tracepoint_func, align 8
  %ret = alloca i32, align 4
  store ptr %tp, ptr %tp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tp.addr, metadata !3040, metadata !DIExpression()), !dbg !3045
  store ptr %probe, ptr %probe.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %probe.addr, metadata !3041, metadata !DIExpression()), !dbg !3046
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !3042, metadata !DIExpression()), !dbg !3047
  call void @llvm.lifetime.start.p0(i64 24, ptr %tp_func) #16, !dbg !3048
  call void @llvm.dbg.declare(metadata ptr %tp_func, metadata !3043, metadata !DIExpression()), !dbg !3049
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !3050
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3044, metadata !DIExpression()), !dbg !3051
  call void @mutex_lock(ptr noundef @tracepoints_mutex) #17, !dbg !3052
  %0 = load ptr, ptr %probe.addr, align 8, !dbg !3053
  %func = getelementptr inbounds %struct.tracepoint_func, ptr %tp_func, i32 0, i32 0, !dbg !3054
  store ptr %0, ptr %func, align 8, !dbg !3055
  %1 = load ptr, ptr %data.addr, align 8, !dbg !3056
  %data1 = getelementptr inbounds %struct.tracepoint_func, ptr %tp_func, i32 0, i32 1, !dbg !3057
  store ptr %1, ptr %data1, align 8, !dbg !3058
  %2 = load ptr, ptr %tp.addr, align 8, !dbg !3059
  %call = call i32 @tracepoint_remove_func(ptr noundef %2, ptr noundef %tp_func) #17, !dbg !3060
  store i32 %call, ptr %ret, align 4, !dbg !3061
  call void @mutex_unlock(ptr noundef @tracepoints_mutex) #17, !dbg !3062
  %3 = load i32, ptr %ret, align 4, !dbg !3063
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !3064
  call void @llvm.lifetime.end.p0(i64 24, ptr %tp_func) #16, !dbg !3064
  ret i32 %3, !dbg !3065
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @tracepoint_remove_func(ptr noundef %tp, ptr noundef %func) #1 align 16 !dbg !3066 {
entry:
  %retval = alloca i32, align 4
  %tp.addr = alloca ptr, align 8
  %func.addr = alloca ptr, align 8
  %old = alloca ptr, align 8
  %tp_funcs = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp20 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp38 = alloca i32, align 4
  %_r_a_p__v = alloca i64, align 8
  %_r_a_p__v88 = alloca i64, align 8
  %_r_a_p__v138 = alloca i64, align 8
  %__ret_warn_on187 = alloca i32, align 4
  %__flags198 = alloca i32, align 4
  %tmp211 = alloca i64, align 8
  store ptr %tp, ptr %tp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tp.addr, metadata !3070, metadata !DIExpression()), !dbg !3092
  store ptr %func, ptr %func.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !3071, metadata !DIExpression()), !dbg !3093
  call void @llvm.lifetime.start.p0(i64 8, ptr %old) #16, !dbg !3094
  call void @llvm.dbg.declare(metadata ptr %old, metadata !3072, metadata !DIExpression()), !dbg !3095
  call void @llvm.lifetime.start.p0(i64 8, ptr %tp_funcs) #16, !dbg !3094
  call void @llvm.dbg.declare(metadata ptr %tp_funcs, metadata !3073, metadata !DIExpression()), !dbg !3096
  br label %do.body, !dbg !3097

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !3099

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3099

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %tp.addr, align 8, !dbg !3097
  %funcs = getelementptr inbounds %struct.tracepoint, ptr %0, i32 0, i32 8, !dbg !3097
  %1 = load ptr, ptr %funcs, align 8, !dbg !3097
  store ptr %1, ptr %tmp, align 8, !dbg !3099
  %2 = load ptr, ptr %tmp, align 8, !dbg !3097
  store ptr %2, ptr %tp_funcs, align 8, !dbg !3101
  %3 = load ptr, ptr %func.addr, align 8, !dbg !3102
  %call = call ptr @func_remove(ptr noundef %tp_funcs, ptr noundef %3) #17, !dbg !3103
  store ptr %call, ptr %old, align 8, !dbg !3104
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !3105
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !3074, metadata !DIExpression()), !dbg !3105
  %4 = load ptr, ptr %old, align 8, !dbg !3105
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %4) #17, !dbg !3105
  %lnot = xor i1 %call1, true, !dbg !3105
  %lnot2 = xor i1 %lnot, true, !dbg !3105
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !3105
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !3105
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !3106
  %tobool = icmp ne i32 %5, 0, !dbg !3106
  %lnot3 = xor i1 %tobool, true, !dbg !3106
  %lnot5 = xor i1 %lnot3, true, !dbg !3106
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !3106
  %conv = sext i32 %lnot.ext6 to i64, !dbg !3106
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3106
  %tobool7 = icmp ne i64 %expval, 0, !dbg !3106
  br i1 %tobool7, label %if.then, label %if.end, !dbg !3105

if.then:                                          ; preds = %do.end
  br label %do.body8, !dbg !3106

do.body8:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !3107
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !3077, metadata !DIExpression()), !dbg !3107
  store i32 2307, ptr %__flags, align 4, !dbg !3107
  br label %do.body9, !dbg !3107

do.body9:                                         ; preds = %do.body8
  br label %do.cond10, !dbg !3108

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !3108

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !3107

do.body12:                                        ; preds = %do.end11
  %6 = load i32, ptr %__flags, align 4, !dbg !3110
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 404, i32 %6, i64 12) #16, !dbg !3110, !srcloc !3112
  br label %do.cond13, !dbg !3110

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !3110

do.end14:                                         ; preds = %do.cond13
  br label %do.body15, !dbg !3107

do.body15:                                        ; preds = %do.end14
  br label %do.cond16, !dbg !3113

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !3113

do.end17:                                         ; preds = %do.cond16
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !3106
  br label %do.cond18, !dbg !3107

do.cond18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !3107

do.end19:                                         ; preds = %do.cond18
  br label %if.end, !dbg !3107

if.end:                                           ; preds = %do.end19, %do.end
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !3105
  %tobool21 = icmp ne i32 %7, 0, !dbg !3105
  %lnot22 = xor i1 %tobool21, true, !dbg !3105
  %lnot24 = xor i1 %lnot22, true, !dbg !3105
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !3105
  %conv26 = sext i32 %lnot.ext25 to i64, !dbg !3105
  %expval27 = call i64 @llvm.expect.i64(i64 %conv26, i64 0), !dbg !3105
  store i64 %expval27, ptr %tmp20, align 8, !dbg !3106
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !3115
  %8 = load i64, ptr %tmp20, align 8, !dbg !3105
  %tobool28 = icmp ne i64 %8, 0, !dbg !3115
  br i1 %tobool28, label %if.then29, label %if.end32, !dbg !3116

if.then29:                                        ; preds = %if.end
  %9 = load ptr, ptr %old, align 8, !dbg !3117
  %call30 = call i64 @PTR_ERR(ptr noundef %9) #17, !dbg !3118
  %conv31 = trunc i64 %call30 to i32, !dbg !3118
  store i32 %conv31, ptr %retval, align 4, !dbg !3119
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3119

if.end32:                                         ; preds = %if.end
  %10 = load ptr, ptr %tp_funcs, align 8, !dbg !3120
  %11 = load ptr, ptr %old, align 8, !dbg !3122
  %cmp = icmp eq ptr %10, %11, !dbg !3123
  br i1 %cmp, label %if.then34, label %if.end35, !dbg !3124

if.then34:                                        ; preds = %if.end32
  store i32 0, ptr %retval, align 4, !dbg !3125
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3125

if.end35:                                         ; preds = %if.end32
  %12 = load ptr, ptr %tp_funcs, align 8, !dbg !3126
  %call36 = call i32 @nr_func_state(ptr noundef %12) #17, !dbg !3127
  switch i32 %call36, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb86
    i32 2, label %sw.bb135
    i32 3, label %sw.bb136
  ], !dbg !3128

sw.bb:                                            ; preds = %if.end35
  %13 = load ptr, ptr %tp.addr, align 8, !dbg !3129
  %unregfunc = getelementptr inbounds %struct.tracepoint, ptr %13, i32 0, i32 7, !dbg !3131
  %14 = load ptr, ptr %unregfunc, align 8, !dbg !3131
  %tobool37 = icmp ne ptr %14, null, !dbg !3129
  br i1 %tobool37, label %land.lhs.true, label %if.end45, !dbg !3132

land.lhs.true:                                    ; preds = %sw.bb
  %15 = load ptr, ptr %tp.addr, align 8, !dbg !3133
  %key = getelementptr inbounds %struct.tracepoint, ptr %15, i32 0, i32 1, !dbg !3133
  %call39 = call i32 @static_key_count(ptr noundef %key) #17, !dbg !3133
  %cmp40 = icmp sgt i32 %call39, 0, !dbg !3133
  %conv41 = zext i1 %cmp40 to i32, !dbg !3133
  store i32 %conv41, ptr %tmp38, align 4, !dbg !3135
  %16 = load i32, ptr %tmp38, align 4, !dbg !3133
  %tobool42 = icmp ne i32 %16, 0, !dbg !3137
  br i1 %tobool42, label %if.then43, label %if.end45, !dbg !3138

if.then43:                                        ; preds = %land.lhs.true
  %17 = load ptr, ptr %tp.addr, align 8, !dbg !3139
  %unregfunc44 = getelementptr inbounds %struct.tracepoint, ptr %17, i32 0, i32 7, !dbg !3140
  %18 = load ptr, ptr %unregfunc44, align 8, !dbg !3140
  call void %18() #17, !dbg !3139
  br label %if.end45, !dbg !3139

if.end45:                                         ; preds = %if.then43, %land.lhs.true, %sw.bb
  %19 = load ptr, ptr %tp.addr, align 8, !dbg !3141
  %key46 = getelementptr inbounds %struct.tracepoint, ptr %19, i32 0, i32 1, !dbg !3142
  call void @static_key_disable(ptr noundef %key46) #17, !dbg !3143
  %20 = load ptr, ptr %tp.addr, align 8, !dbg !3144
  %21 = load ptr, ptr %tp_funcs, align 8, !dbg !3145
  call void @tracepoint_update_call(ptr noundef %20, ptr noundef %21) #17, !dbg !3146
  br label %do.body47, !dbg !3147

do.body47:                                        ; preds = %if.end45
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r_a_p__v) #16, !dbg !3148
  call void @llvm.dbg.declare(metadata ptr %_r_a_p__v, metadata !3080, metadata !DIExpression()), !dbg !3148
  store i64 0, ptr %_r_a_p__v, align 8, !dbg !3148
  %22 = load i64, ptr %_r_a_p__v, align 8, !dbg !3149
  %cmp48 = icmp eq i64 %22, 0, !dbg !3149
  br i1 %cmp48, label %if.then50, label %if.else, !dbg !3148

if.then50:                                        ; preds = %do.body47
  br label %do.body51, !dbg !3149

do.body51:                                        ; preds = %if.then50
  br label %do.body52, !dbg !3151

do.body52:                                        ; preds = %do.body51
  br label %do.cond53, !dbg !3153

do.cond53:                                        ; preds = %do.body52
  br label %do.end54, !dbg !3153

do.end54:                                         ; preds = %do.cond53
  br label %do.body55, !dbg !3151

do.body55:                                        ; preds = %do.end54
  %23 = load i64, ptr %_r_a_p__v, align 8, !dbg !3155
  %24 = inttoptr i64 %23 to ptr, !dbg !3155
  %25 = load ptr, ptr %tp.addr, align 8, !dbg !3155
  %funcs56 = getelementptr inbounds %struct.tracepoint, ptr %25, i32 0, i32 8, !dbg !3155
  store volatile ptr %24, ptr %funcs56, align 8, !dbg !3155
  br label %do.cond57, !dbg !3155

do.cond57:                                        ; preds = %do.body55
  br label %do.end58, !dbg !3155

do.end58:                                         ; preds = %do.cond57
  br label %do.cond59, !dbg !3151

do.cond59:                                        ; preds = %do.end58
  br label %do.end60, !dbg !3151

do.end60:                                         ; preds = %do.cond59
  br label %if.end83, !dbg !3151

if.else:                                          ; preds = %do.body47
  br label %do.body61, !dbg !3149

do.body61:                                        ; preds = %if.else
  br label %do.body62, !dbg !3157

do.body62:                                        ; preds = %do.body61
  br label %do.cond63, !dbg !3159

do.cond63:                                        ; preds = %do.body62
  br label %do.end64, !dbg !3159

do.end64:                                         ; preds = %do.cond63
  br label %do.body65, !dbg !3157

do.body65:                                        ; preds = %do.end64
  br label %do.body66, !dbg !3161

do.body66:                                        ; preds = %do.body65
  br label %do.cond67, !dbg !3163

do.cond67:                                        ; preds = %do.body66
  br label %do.end68, !dbg !3163

do.end68:                                         ; preds = %do.cond67
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !3161, !srcloc !3165
  br label %do.body69, !dbg !3161

do.body69:                                        ; preds = %do.end68
  br label %do.body70, !dbg !3166

do.body70:                                        ; preds = %do.body69
  br label %do.cond71, !dbg !3168

do.cond71:                                        ; preds = %do.body70
  br label %do.end72, !dbg !3168

do.end72:                                         ; preds = %do.cond71
  br label %do.body73, !dbg !3166

do.body73:                                        ; preds = %do.end72
  %26 = load i64, ptr %_r_a_p__v, align 8, !dbg !3170
  %27 = inttoptr i64 %26 to ptr, !dbg !3170
  %28 = load ptr, ptr %tp.addr, align 8, !dbg !3170
  %funcs74 = getelementptr inbounds %struct.tracepoint, ptr %28, i32 0, i32 8, !dbg !3170
  store volatile ptr %27, ptr %funcs74, align 8, !dbg !3170
  br label %do.cond75, !dbg !3170

do.cond75:                                        ; preds = %do.body73
  br label %do.end76, !dbg !3170

do.end76:                                         ; preds = %do.cond75
  br label %do.cond77, !dbg !3166

do.cond77:                                        ; preds = %do.end76
  br label %do.end78, !dbg !3166

do.end78:                                         ; preds = %do.cond77
  br label %do.cond79, !dbg !3161

do.cond79:                                        ; preds = %do.end78
  br label %do.end80, !dbg !3161

do.end80:                                         ; preds = %do.cond79
  br label %do.cond81, !dbg !3157

do.cond81:                                        ; preds = %do.end80
  br label %do.end82, !dbg !3157

do.end82:                                         ; preds = %do.cond81
  br label %if.end83

if.end83:                                         ; preds = %do.end82, %do.end60
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r_a_p__v) #16, !dbg !3147
  br label %do.cond84, !dbg !3148

do.cond84:                                        ; preds = %if.end83
  br label %do.end85, !dbg !3148

do.end85:                                         ; preds = %do.cond84
  call void @tp_rcu_get_state(i32 noundef 0) #17, !dbg !3172
  br label %sw.epilog, !dbg !3173

sw.bb86:                                          ; preds = %if.end35
  br label %do.body87, !dbg !3174

do.body87:                                        ; preds = %sw.bb86
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r_a_p__v88) #16, !dbg !3175
  call void @llvm.dbg.declare(metadata ptr %_r_a_p__v88, metadata !3083, metadata !DIExpression()), !dbg !3175
  %29 = load ptr, ptr %tp_funcs, align 8, !dbg !3175
  %30 = ptrtoint ptr %29 to i64, !dbg !3175
  store i64 %30, ptr %_r_a_p__v88, align 8, !dbg !3175
  br i1 false, label %land.lhs.true89, label %if.else103, !dbg !3176

land.lhs.true89:                                  ; preds = %do.body87
  %31 = load i64, ptr %_r_a_p__v88, align 8, !dbg !3176
  %cmp90 = icmp eq i64 %31, 0, !dbg !3176
  br i1 %cmp90, label %if.then92, label %if.else103, !dbg !3175

if.then92:                                        ; preds = %land.lhs.true89
  br label %do.body93, !dbg !3176

do.body93:                                        ; preds = %if.then92
  br label %do.body94, !dbg !3178

do.body94:                                        ; preds = %do.body93
  br label %do.cond95, !dbg !3180

do.cond95:                                        ; preds = %do.body94
  br label %do.end96, !dbg !3180

do.end96:                                         ; preds = %do.cond95
  br label %do.body97, !dbg !3178

do.body97:                                        ; preds = %do.end96
  %32 = load i64, ptr %_r_a_p__v88, align 8, !dbg !3182
  %33 = inttoptr i64 %32 to ptr, !dbg !3182
  %34 = load ptr, ptr %tp.addr, align 8, !dbg !3182
  %funcs98 = getelementptr inbounds %struct.tracepoint, ptr %34, i32 0, i32 8, !dbg !3182
  store volatile ptr %33, ptr %funcs98, align 8, !dbg !3182
  br label %do.cond99, !dbg !3182

do.cond99:                                        ; preds = %do.body97
  br label %do.end100, !dbg !3182

do.end100:                                        ; preds = %do.cond99
  br label %do.cond101, !dbg !3178

do.cond101:                                       ; preds = %do.end100
  br label %do.end102, !dbg !3178

do.end102:                                        ; preds = %do.cond101
  br label %if.end126, !dbg !3178

if.else103:                                       ; preds = %land.lhs.true89, %do.body87
  br label %do.body104, !dbg !3176

do.body104:                                       ; preds = %if.else103
  br label %do.body105, !dbg !3184

do.body105:                                       ; preds = %do.body104
  br label %do.cond106, !dbg !3186

do.cond106:                                       ; preds = %do.body105
  br label %do.end107, !dbg !3186

do.end107:                                        ; preds = %do.cond106
  br label %do.body108, !dbg !3184

do.body108:                                       ; preds = %do.end107
  br label %do.body109, !dbg !3188

do.body109:                                       ; preds = %do.body108
  br label %do.cond110, !dbg !3190

do.cond110:                                       ; preds = %do.body109
  br label %do.end111, !dbg !3190

do.end111:                                        ; preds = %do.cond110
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !3188, !srcloc !3192
  br label %do.body112, !dbg !3188

do.body112:                                       ; preds = %do.end111
  br label %do.body113, !dbg !3193

do.body113:                                       ; preds = %do.body112
  br label %do.cond114, !dbg !3195

do.cond114:                                       ; preds = %do.body113
  br label %do.end115, !dbg !3195

do.end115:                                        ; preds = %do.cond114
  br label %do.body116, !dbg !3193

do.body116:                                       ; preds = %do.end115
  %35 = load i64, ptr %_r_a_p__v88, align 8, !dbg !3197
  %36 = inttoptr i64 %35 to ptr, !dbg !3197
  %37 = load ptr, ptr %tp.addr, align 8, !dbg !3197
  %funcs117 = getelementptr inbounds %struct.tracepoint, ptr %37, i32 0, i32 8, !dbg !3197
  store volatile ptr %36, ptr %funcs117, align 8, !dbg !3197
  br label %do.cond118, !dbg !3197

do.cond118:                                       ; preds = %do.body116
  br label %do.end119, !dbg !3197

do.end119:                                        ; preds = %do.cond118
  br label %do.cond120, !dbg !3193

do.cond120:                                       ; preds = %do.end119
  br label %do.end121, !dbg !3193

do.end121:                                        ; preds = %do.cond120
  br label %do.cond122, !dbg !3188

do.cond122:                                       ; preds = %do.end121
  br label %do.end123, !dbg !3188

do.end123:                                        ; preds = %do.cond122
  br label %do.cond124, !dbg !3184

do.cond124:                                       ; preds = %do.end123
  br label %do.end125, !dbg !3184

do.end125:                                        ; preds = %do.cond124
  br label %if.end126

if.end126:                                        ; preds = %do.end125, %do.end102
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r_a_p__v88) #16, !dbg !3174
  br label %do.cond127, !dbg !3175

do.cond127:                                       ; preds = %if.end126
  br label %do.end128, !dbg !3175

do.end128:                                        ; preds = %do.cond127
  %38 = load ptr, ptr %tp_funcs, align 8, !dbg !3199
  %arrayidx = getelementptr %struct.tracepoint_func, ptr %38, i64 0, !dbg !3199
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %arrayidx, i32 0, i32 1, !dbg !3201
  %39 = load ptr, ptr %data, align 8, !dbg !3201
  %40 = load ptr, ptr %old, align 8, !dbg !3202
  %arrayidx129 = getelementptr %struct.tracepoint_func, ptr %40, i64 0, !dbg !3202
  %data130 = getelementptr inbounds %struct.tracepoint_func, ptr %arrayidx129, i32 0, i32 1, !dbg !3203
  %41 = load ptr, ptr %data130, align 8, !dbg !3203
  %cmp131 = icmp ne ptr %39, %41, !dbg !3204
  br i1 %cmp131, label %if.then133, label %if.end134, !dbg !3205

if.then133:                                       ; preds = %do.end128
  call void @tp_rcu_get_state(i32 noundef 1) #17, !dbg !3206
  br label %if.end134, !dbg !3206

if.end134:                                        ; preds = %if.then133, %do.end128
  call void @tp_rcu_cond_sync(i32 noundef 1) #17, !dbg !3207
  %42 = load ptr, ptr %tp.addr, align 8, !dbg !3208
  %43 = load ptr, ptr %tp_funcs, align 8, !dbg !3209
  call void @tracepoint_update_call(ptr noundef %42, ptr noundef %43) #17, !dbg !3210
  br label %sw.epilog, !dbg !3211

sw.bb135:                                         ; preds = %if.end35
  br label %sw.bb136, !dbg !3211

sw.bb136:                                         ; preds = %if.end35, %sw.bb135
  br label %do.body137, !dbg !3212

do.body137:                                       ; preds = %sw.bb136
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r_a_p__v138) #16, !dbg !3213
  call void @llvm.dbg.declare(metadata ptr %_r_a_p__v138, metadata !3085, metadata !DIExpression()), !dbg !3213
  %44 = load ptr, ptr %tp_funcs, align 8, !dbg !3213
  %45 = ptrtoint ptr %44 to i64, !dbg !3213
  store i64 %45, ptr %_r_a_p__v138, align 8, !dbg !3213
  br i1 false, label %land.lhs.true139, label %if.else153, !dbg !3214

land.lhs.true139:                                 ; preds = %do.body137
  %46 = load i64, ptr %_r_a_p__v138, align 8, !dbg !3214
  %cmp140 = icmp eq i64 %46, 0, !dbg !3214
  br i1 %cmp140, label %if.then142, label %if.else153, !dbg !3213

if.then142:                                       ; preds = %land.lhs.true139
  br label %do.body143, !dbg !3214

do.body143:                                       ; preds = %if.then142
  br label %do.body144, !dbg !3216

do.body144:                                       ; preds = %do.body143
  br label %do.cond145, !dbg !3218

do.cond145:                                       ; preds = %do.body144
  br label %do.end146, !dbg !3218

do.end146:                                        ; preds = %do.cond145
  br label %do.body147, !dbg !3216

do.body147:                                       ; preds = %do.end146
  %47 = load i64, ptr %_r_a_p__v138, align 8, !dbg !3220
  %48 = inttoptr i64 %47 to ptr, !dbg !3220
  %49 = load ptr, ptr %tp.addr, align 8, !dbg !3220
  %funcs148 = getelementptr inbounds %struct.tracepoint, ptr %49, i32 0, i32 8, !dbg !3220
  store volatile ptr %48, ptr %funcs148, align 8, !dbg !3220
  br label %do.cond149, !dbg !3220

do.cond149:                                       ; preds = %do.body147
  br label %do.end150, !dbg !3220

do.end150:                                        ; preds = %do.cond149
  br label %do.cond151, !dbg !3216

do.cond151:                                       ; preds = %do.end150
  br label %do.end152, !dbg !3216

do.end152:                                        ; preds = %do.cond151
  br label %if.end176, !dbg !3216

if.else153:                                       ; preds = %land.lhs.true139, %do.body137
  br label %do.body154, !dbg !3214

do.body154:                                       ; preds = %if.else153
  br label %do.body155, !dbg !3222

do.body155:                                       ; preds = %do.body154
  br label %do.cond156, !dbg !3224

do.cond156:                                       ; preds = %do.body155
  br label %do.end157, !dbg !3224

do.end157:                                        ; preds = %do.cond156
  br label %do.body158, !dbg !3222

do.body158:                                       ; preds = %do.end157
  br label %do.body159, !dbg !3226

do.body159:                                       ; preds = %do.body158
  br label %do.cond160, !dbg !3228

do.cond160:                                       ; preds = %do.body159
  br label %do.end161, !dbg !3228

do.end161:                                        ; preds = %do.cond160
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !3226, !srcloc !3230
  br label %do.body162, !dbg !3226

do.body162:                                       ; preds = %do.end161
  br label %do.body163, !dbg !3231

do.body163:                                       ; preds = %do.body162
  br label %do.cond164, !dbg !3233

do.cond164:                                       ; preds = %do.body163
  br label %do.end165, !dbg !3233

do.end165:                                        ; preds = %do.cond164
  br label %do.body166, !dbg !3231

do.body166:                                       ; preds = %do.end165
  %50 = load i64, ptr %_r_a_p__v138, align 8, !dbg !3235
  %51 = inttoptr i64 %50 to ptr, !dbg !3235
  %52 = load ptr, ptr %tp.addr, align 8, !dbg !3235
  %funcs167 = getelementptr inbounds %struct.tracepoint, ptr %52, i32 0, i32 8, !dbg !3235
  store volatile ptr %51, ptr %funcs167, align 8, !dbg !3235
  br label %do.cond168, !dbg !3235

do.cond168:                                       ; preds = %do.body166
  br label %do.end169, !dbg !3235

do.end169:                                        ; preds = %do.cond168
  br label %do.cond170, !dbg !3231

do.cond170:                                       ; preds = %do.end169
  br label %do.end171, !dbg !3231

do.end171:                                        ; preds = %do.cond170
  br label %do.cond172, !dbg !3226

do.cond172:                                       ; preds = %do.end171
  br label %do.end173, !dbg !3226

do.end173:                                        ; preds = %do.cond172
  br label %do.cond174, !dbg !3222

do.cond174:                                       ; preds = %do.end173
  br label %do.end175, !dbg !3222

do.end175:                                        ; preds = %do.cond174
  br label %if.end176

if.end176:                                        ; preds = %do.end175, %do.end152
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r_a_p__v138) #16, !dbg !3212
  br label %do.cond177, !dbg !3213

do.cond177:                                       ; preds = %if.end176
  br label %do.end178, !dbg !3213

do.end178:                                        ; preds = %do.cond177
  %53 = load ptr, ptr %tp_funcs, align 8, !dbg !3237
  %arrayidx179 = getelementptr %struct.tracepoint_func, ptr %53, i64 0, !dbg !3237
  %data180 = getelementptr inbounds %struct.tracepoint_func, ptr %arrayidx179, i32 0, i32 1, !dbg !3239
  %54 = load ptr, ptr %data180, align 8, !dbg !3239
  %55 = load ptr, ptr %old, align 8, !dbg !3240
  %arrayidx181 = getelementptr %struct.tracepoint_func, ptr %55, i64 0, !dbg !3240
  %data182 = getelementptr inbounds %struct.tracepoint_func, ptr %arrayidx181, i32 0, i32 1, !dbg !3241
  %56 = load ptr, ptr %data182, align 8, !dbg !3241
  %cmp183 = icmp ne ptr %54, %56, !dbg !3242
  br i1 %cmp183, label %if.then185, label %if.end186, !dbg !3243

if.then185:                                       ; preds = %do.end178
  call void @tp_rcu_get_state(i32 noundef 1) #17, !dbg !3244
  br label %if.end186, !dbg !3244

if.end186:                                        ; preds = %if.then185, %do.end178
  br label %sw.epilog, !dbg !3245

sw.default:                                       ; preds = %if.end35
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on187) #16, !dbg !3246
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on187, metadata !3087, metadata !DIExpression()), !dbg !3246
  store i32 1, ptr %__ret_warn_on187, align 4, !dbg !3246
  %57 = load i32, ptr %__ret_warn_on187, align 4, !dbg !3247
  %tobool188 = icmp ne i32 %57, 0, !dbg !3247
  %lnot189 = xor i1 %tobool188, true, !dbg !3247
  %lnot191 = xor i1 %lnot189, true, !dbg !3247
  %lnot.ext192 = zext i1 %lnot191 to i32, !dbg !3247
  %conv193 = sext i32 %lnot.ext192 to i64, !dbg !3247
  %expval194 = call i64 @llvm.expect.i64(i64 %conv193, i64 0), !dbg !3247
  %tobool195 = icmp ne i64 %expval194, 0, !dbg !3247
  br i1 %tobool195, label %if.then196, label %if.end210, !dbg !3246

if.then196:                                       ; preds = %sw.default
  br label %do.body197, !dbg !3247

do.body197:                                       ; preds = %if.then196
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags198) #16, !dbg !3248
  call void @llvm.dbg.declare(metadata ptr %__flags198, metadata !3089, metadata !DIExpression()), !dbg !3248
  store i32 2307, ptr %__flags198, align 4, !dbg !3248
  br label %do.body199, !dbg !3248

do.body199:                                       ; preds = %do.body197
  br label %do.cond200, !dbg !3249

do.cond200:                                       ; preds = %do.body199
  br label %do.end201, !dbg !3249

do.end201:                                        ; preds = %do.cond200
  br label %do.body202, !dbg !3248

do.body202:                                       ; preds = %do.end201
  %58 = load i32, ptr %__flags198, align 4, !dbg !3251
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 455, i32 %58, i64 12) #16, !dbg !3251, !srcloc !3253
  br label %do.cond203, !dbg !3251

do.cond203:                                       ; preds = %do.body202
  br label %do.end204, !dbg !3251

do.end204:                                        ; preds = %do.cond203
  br label %do.body205, !dbg !3248

do.body205:                                       ; preds = %do.end204
  br label %do.cond206, !dbg !3254

do.cond206:                                       ; preds = %do.body205
  br label %do.end207, !dbg !3254

do.end207:                                        ; preds = %do.cond206
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags198) #16, !dbg !3247
  br label %do.cond208, !dbg !3248

do.cond208:                                       ; preds = %do.end207
  br label %do.end209, !dbg !3248

do.end209:                                        ; preds = %do.cond208
  br label %if.end210, !dbg !3248

if.end210:                                        ; preds = %do.end209, %sw.default
  %59 = load i32, ptr %__ret_warn_on187, align 4, !dbg !3246
  %tobool212 = icmp ne i32 %59, 0, !dbg !3246
  %lnot213 = xor i1 %tobool212, true, !dbg !3246
  %lnot215 = xor i1 %lnot213, true, !dbg !3246
  %lnot.ext216 = zext i1 %lnot215 to i32, !dbg !3246
  %conv217 = sext i32 %lnot.ext216 to i64, !dbg !3246
  %expval218 = call i64 @llvm.expect.i64(i64 %conv217, i64 0), !dbg !3246
  store i64 %expval218, ptr %tmp211, align 8, !dbg !3247
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on187) #16, !dbg !3256
  %60 = load i64, ptr %tmp211, align 8, !dbg !3246
  br label %sw.epilog, !dbg !3257

sw.epilog:                                        ; preds = %if.end210, %if.end186, %if.end134, %do.end85
  %61 = load ptr, ptr %old, align 8, !dbg !3258
  call void @release_probes(ptr noundef %61) #17, !dbg !3259
  store i32 0, ptr %retval, align 4, !dbg !3260
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3260

cleanup:                                          ; preds = %sw.epilog, %if.then34, %if.then29
  call void @llvm.lifetime.end.p0(i64 8, ptr %tp_funcs) #16, !dbg !3261
  call void @llvm.lifetime.end.p0(i64 8, ptr %old) #16, !dbg !3261
  %62 = load i32, ptr %retval, align 4, !dbg !3261
  ret i32 %62, !dbg !3261
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @trace_module_has_bad_taint(ptr noundef %mod) #1 align 16 !dbg !3262 {
entry:
  %mod.addr = alloca ptr, align 8
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !3266, metadata !DIExpression()), !dbg !3267
  %0 = load ptr, ptr %mod.addr, align 8, !dbg !3268
  %taints = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 24, !dbg !3269
  %1 = load i64, ptr %taints, align 16, !dbg !3269
  %and = and i64 %1, -308225, !dbg !3270
  %tobool = icmp ne i64 %and, 0, !dbg !3268
  ret i1 %tobool, !dbg !3271
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @register_tracepoint_module_notifier(ptr noundef %nb) #1 align 16 !dbg !3272 {
entry:
  %nb.addr = alloca ptr, align 8
  %tp_mod = alloca ptr, align 8
  %ret = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr2 = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  store ptr %nb, ptr %nb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nb.addr, metadata !3276, metadata !DIExpression()), !dbg !3286
  call void @llvm.lifetime.start.p0(i64 8, ptr %tp_mod) #16, !dbg !3287
  call void @llvm.dbg.declare(metadata ptr %tp_mod, metadata !3277, metadata !DIExpression()), !dbg !3288
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !3289
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3278, metadata !DIExpression()), !dbg !3290
  call void @mutex_lock(ptr noundef @tracepoint_module_list_mutex) #17, !dbg !3291
  %0 = load ptr, ptr %nb.addr, align 8, !dbg !3292
  %call = call i32 @blocking_notifier_chain_register(ptr noundef @tracepoint_notify_list, ptr noundef %0) #17, !dbg !3293
  store i32 %call, ptr %ret, align 4, !dbg !3294
  %1 = load i32, ptr %ret, align 4, !dbg !3295
  %tobool = icmp ne i32 %1, 0, !dbg !3295
  br i1 %tobool, label %if.then, label %if.end, !dbg !3297

if.then:                                          ; preds = %entry
  br label %end, !dbg !3298

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !3299
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3279, metadata !DIExpression()), !dbg !3299
  %2 = load ptr, ptr @tracepoint_module_list, align 8, !dbg !3299
  store ptr %2, ptr %__mptr, align 8, !dbg !3299
  %3 = load ptr, ptr %__mptr, align 8, !dbg !3299
  %add.ptr = getelementptr i8, ptr %3, i64 0, !dbg !3299
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3299
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !3300
  %4 = load ptr, ptr %tmp, align 8, !dbg !3299
  store ptr %4, ptr %tp_mod, align 8, !dbg !3300
  br label %for.cond, !dbg !3300

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load ptr, ptr %tp_mod, align 8, !dbg !3301
  %list = getelementptr inbounds %struct.tp_module, ptr %5, i32 0, i32 0, !dbg !3301
  %cmp = icmp eq ptr %list, @tracepoint_module_list, !dbg !3301
  %lnot = xor i1 %cmp, true, !dbg !3301
  br i1 %lnot, label %for.body, label %for.end, !dbg !3300

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %nb.addr, align 8, !dbg !3302
  %notifier_call = getelementptr inbounds %struct.notifier_block, ptr %6, i32 0, i32 0, !dbg !3303
  %7 = load ptr, ptr %notifier_call, align 8, !dbg !3303
  %8 = load ptr, ptr %nb.addr, align 8, !dbg !3304
  %9 = load ptr, ptr %tp_mod, align 8, !dbg !3305
  %call1 = call i32 %7(ptr noundef %8, i64 noundef 1, ptr noundef %9) #17, !dbg !3302
  br label %for.inc, !dbg !3306

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #16, !dbg !3307
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !3282, metadata !DIExpression()), !dbg !3307
  %10 = load ptr, ptr %tp_mod, align 8, !dbg !3307
  %list3 = getelementptr inbounds %struct.tp_module, ptr %10, i32 0, i32 0, !dbg !3307
  %next = getelementptr inbounds %struct.list_head, ptr %list3, i32 0, i32 0, !dbg !3307
  %11 = load ptr, ptr %next, align 8, !dbg !3307
  store ptr %11, ptr %__mptr2, align 8, !dbg !3307
  %12 = load ptr, ptr %__mptr2, align 8, !dbg !3307
  %add.ptr5 = getelementptr i8, ptr %12, i64 0, !dbg !3307
  store ptr %add.ptr5, ptr %tmp4, align 8, !dbg !3307
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #16, !dbg !3301
  %13 = load ptr, ptr %tmp4, align 8, !dbg !3307
  store ptr %13, ptr %tp_mod, align 8, !dbg !3301
  br label %for.cond, !dbg !3301, !llvm.loop !3308

for.end:                                          ; preds = %for.cond
  br label %end, !dbg !3309

end:                                              ; preds = %for.end, %if.then
  call void @llvm.dbg.label(metadata !3285), !dbg !3310
  call void @mutex_unlock(ptr noundef @tracepoint_module_list_mutex) #17, !dbg !3311
  %14 = load i32, ptr %ret, align 4, !dbg !3312
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !3313
  call void @llvm.lifetime.end.p0(i64 8, ptr %tp_mod) #16, !dbg !3313
  ret i32 %14, !dbg !3314
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3315 dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @unregister_tracepoint_module_notifier(ptr noundef %nb) #1 align 16 !dbg !3319 {
entry:
  %nb.addr = alloca ptr, align 8
  %tp_mod = alloca ptr, align 8
  %ret = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr2 = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  store ptr %nb, ptr %nb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nb.addr, metadata !3321, metadata !DIExpression()), !dbg !3331
  call void @llvm.lifetime.start.p0(i64 8, ptr %tp_mod) #16, !dbg !3332
  call void @llvm.dbg.declare(metadata ptr %tp_mod, metadata !3322, metadata !DIExpression()), !dbg !3333
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !3334
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3323, metadata !DIExpression()), !dbg !3335
  call void @mutex_lock(ptr noundef @tracepoint_module_list_mutex) #17, !dbg !3336
  %0 = load ptr, ptr %nb.addr, align 8, !dbg !3337
  %call = call i32 @blocking_notifier_chain_unregister(ptr noundef @tracepoint_notify_list, ptr noundef %0) #17, !dbg !3338
  store i32 %call, ptr %ret, align 4, !dbg !3339
  %1 = load i32, ptr %ret, align 4, !dbg !3340
  %tobool = icmp ne i32 %1, 0, !dbg !3340
  br i1 %tobool, label %if.then, label %if.end, !dbg !3342

if.then:                                          ; preds = %entry
  br label %end, !dbg !3343

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !3344
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3324, metadata !DIExpression()), !dbg !3344
  %2 = load ptr, ptr @tracepoint_module_list, align 8, !dbg !3344
  store ptr %2, ptr %__mptr, align 8, !dbg !3344
  %3 = load ptr, ptr %__mptr, align 8, !dbg !3344
  %add.ptr = getelementptr i8, ptr %3, i64 0, !dbg !3344
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3344
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !3345
  %4 = load ptr, ptr %tmp, align 8, !dbg !3344
  store ptr %4, ptr %tp_mod, align 8, !dbg !3345
  br label %for.cond, !dbg !3345

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load ptr, ptr %tp_mod, align 8, !dbg !3346
  %list = getelementptr inbounds %struct.tp_module, ptr %5, i32 0, i32 0, !dbg !3346
  %cmp = icmp eq ptr %list, @tracepoint_module_list, !dbg !3346
  %lnot = xor i1 %cmp, true, !dbg !3346
  br i1 %lnot, label %for.body, label %for.end, !dbg !3345

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %nb.addr, align 8, !dbg !3347
  %notifier_call = getelementptr inbounds %struct.notifier_block, ptr %6, i32 0, i32 0, !dbg !3348
  %7 = load ptr, ptr %notifier_call, align 8, !dbg !3348
  %8 = load ptr, ptr %nb.addr, align 8, !dbg !3349
  %9 = load ptr, ptr %tp_mod, align 8, !dbg !3350
  %call1 = call i32 %7(ptr noundef %8, i64 noundef 2, ptr noundef %9) #17, !dbg !3347
  br label %for.inc, !dbg !3351

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #16, !dbg !3352
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !3327, metadata !DIExpression()), !dbg !3352
  %10 = load ptr, ptr %tp_mod, align 8, !dbg !3352
  %list3 = getelementptr inbounds %struct.tp_module, ptr %10, i32 0, i32 0, !dbg !3352
  %next = getelementptr inbounds %struct.list_head, ptr %list3, i32 0, i32 0, !dbg !3352
  %11 = load ptr, ptr %next, align 8, !dbg !3352
  store ptr %11, ptr %__mptr2, align 8, !dbg !3352
  %12 = load ptr, ptr %__mptr2, align 8, !dbg !3352
  %add.ptr5 = getelementptr i8, ptr %12, i64 0, !dbg !3352
  store ptr %add.ptr5, ptr %tmp4, align 8, !dbg !3352
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #16, !dbg !3346
  %13 = load ptr, ptr %tmp4, align 8, !dbg !3352
  store ptr %13, ptr %tp_mod, align 8, !dbg !3346
  br label %for.cond, !dbg !3346, !llvm.loop !3353

for.end:                                          ; preds = %for.cond
  br label %end, !dbg !3354

end:                                              ; preds = %for.end, %if.then
  call void @llvm.dbg.label(metadata !3330), !dbg !3355
  call void @mutex_unlock(ptr noundef @tracepoint_module_list_mutex) #17, !dbg !3356
  %14 = load i32, ptr %ret, align 4, !dbg !3357
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !3358
  call void @llvm.lifetime.end.p0(i64 8, ptr %tp_mod) #16, !dbg !3358
  ret i32 %14, !dbg !3359
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3360 dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) #4

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_tracepoint__265_737_init_tracepoints6() #0 section ".init.text" align 16 !dbg !3361 {
entry:
  %call = call i32 @init_tracepoints() #15, !dbg !3362
  ret i32 %call, !dbg !3362
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @init_tracepoints() #0 section ".init.text" align 16 !dbg !3363 {
entry:
  %ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !3366
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3365, metadata !DIExpression()), !dbg !3367
  %call = call i32 @register_module_notifier(ptr noundef @tracepoint_module_nb) #17, !dbg !3368
  store i32 %call, ptr %ret, align 4, !dbg !3369
  %0 = load i32, ptr %ret, align 4, !dbg !3370
  %tobool = icmp ne i32 %0, 0, !dbg !3370
  br i1 %tobool, label %if.then, label %if.end, !dbg !3372

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !3373

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !3375

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3375

do.end:                                           ; preds = %do.cond
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3) #15, !dbg !3373
  store i32 %call1, ptr %tmp, align 4, !dbg !3375
  %1 = load i32, ptr %tmp, align 4, !dbg !3373
  br label %if.end, !dbg !3377

if.end:                                           ; preds = %do.end, %entry
  %2 = load i32, ptr %ret, align 4, !dbg !3378
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !3379
  ret i32 %2, !dbg !3380
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @for_each_kernel_tracepoint(ptr noundef %fct, ptr noundef %priv) #1 align 16 !dbg !3381 {
entry:
  %fct.addr = alloca ptr, align 8
  %priv.addr = alloca ptr, align 8
  store ptr %fct, ptr %fct.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fct.addr, metadata !3388, metadata !DIExpression()), !dbg !3390
  store ptr %priv, ptr %priv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %priv.addr, metadata !3389, metadata !DIExpression()), !dbg !3391
  %0 = load ptr, ptr %fct.addr, align 8, !dbg !3392
  %1 = load ptr, ptr %priv.addr, align 8, !dbg !3393
  call void @for_each_tracepoint_range(ptr noundef @__start___tracepoints_ptrs, ptr noundef @__stop___tracepoints_ptrs, ptr noundef %0, ptr noundef %1) #17, !dbg !3394
  ret void, !dbg !3395
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @for_each_tracepoint_range(ptr noundef %begin, ptr noundef %end, ptr noundef %fct, ptr noundef %priv) #1 align 16 !dbg !3396 {
entry:
  %begin.addr = alloca ptr, align 8
  %end.addr = alloca ptr, align 8
  %fct.addr = alloca ptr, align 8
  %priv.addr = alloca ptr, align 8
  %iter = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %begin, ptr %begin.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %begin.addr, metadata !3400, metadata !DIExpression()), !dbg !3405
  store ptr %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !3401, metadata !DIExpression()), !dbg !3406
  store ptr %fct, ptr %fct.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fct.addr, metadata !3402, metadata !DIExpression()), !dbg !3407
  store ptr %priv, ptr %priv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %priv.addr, metadata !3403, metadata !DIExpression()), !dbg !3408
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter) #16, !dbg !3409
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !3404, metadata !DIExpression()), !dbg !3410
  %0 = load ptr, ptr %begin.addr, align 8, !dbg !3411
  %tobool = icmp ne ptr %0, null, !dbg !3411
  br i1 %tobool, label %if.end, label %if.then, !dbg !3413

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3414

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %begin.addr, align 8, !dbg !3415
  store ptr %1, ptr %iter, align 8, !dbg !3417
  br label %for.cond, !dbg !3418

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load ptr, ptr %iter, align 8, !dbg !3419
  %3 = load ptr, ptr %end.addr, align 8, !dbg !3421
  %cmp = icmp ult ptr %2, %3, !dbg !3422
  br i1 %cmp, label %for.body, label %for.end, !dbg !3423

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %fct.addr, align 8, !dbg !3424
  %5 = load ptr, ptr %iter, align 8, !dbg !3425
  %call = call ptr @tracepoint_ptr_deref(ptr noundef %5) #17, !dbg !3426
  %6 = load ptr, ptr %priv.addr, align 8, !dbg !3427
  call void %4(ptr noundef %call, ptr noundef %6) #17, !dbg !3424
  br label %for.inc, !dbg !3424

for.inc:                                          ; preds = %for.body
  %7 = load ptr, ptr %iter, align 8, !dbg !3428
  %incdec.ptr = getelementptr i32, ptr %7, i32 1, !dbg !3428
  store ptr %incdec.ptr, ptr %iter, align 8, !dbg !3428
  br label %for.cond, !dbg !3429, !llvm.loop !3430

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3432
  br label %cleanup, !dbg !3432

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter) #16, !dbg !3432
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !3432

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @syscall_regfunc() #1 align 16 !dbg !3433 {
entry:
  %p = alloca ptr, align 8
  %t = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %__mptr2 = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  %tmp8 = alloca ptr, align 8
  %__mptr15 = alloca ptr, align 8
  %tmp19 = alloca ptr, align 8
  %tmp22 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !3449
  call void @llvm.dbg.declare(metadata ptr %p, metadata !3435, metadata !DIExpression()), !dbg !3450
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #16, !dbg !3449
  call void @llvm.dbg.declare(metadata ptr %t, metadata !3436, metadata !DIExpression()), !dbg !3451
  %0 = load i32, ptr @sys_tracepoint_refcount, align 4, !dbg !3452
  %tobool = icmp ne i32 %0, 0, !dbg !3452
  br i1 %tobool, label %if.end, label %if.then, !dbg !3453

if.then:                                          ; preds = %entry
  call void @_raw_read_lock(ptr noundef @tasklist_lock) #17, !dbg !3454
  store ptr @init_task, ptr %p, align 8, !dbg !3455
  br label %for.cond, !dbg !3455

for.cond:                                         ; preds = %for.end, %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !3456
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3437, metadata !DIExpression()), !dbg !3456
  br label %do.body, !dbg !3457

do.body:                                          ; preds = %for.cond
  br label %do.cond, !dbg !3459

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3459

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %p, align 8, !dbg !3457
  %tasks = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 46, !dbg !3457
  %next = getelementptr inbounds %struct.list_head, ptr %tasks, i32 0, i32 0, !dbg !3457
  %2 = load volatile ptr, ptr %next, align 16, !dbg !3457
  store ptr %2, ptr %tmp, align 8, !dbg !3459
  %3 = load ptr, ptr %tmp, align 8, !dbg !3457
  store ptr %3, ptr %__mptr, align 8, !dbg !3456
  %4 = load ptr, ptr %__mptr, align 8, !dbg !3456
  %add.ptr = getelementptr i8, ptr %4, i64 -1136, !dbg !3456
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !3456
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !3461
  %5 = load ptr, ptr %tmp1, align 8, !dbg !3456
  store ptr %5, ptr %p, align 8, !dbg !3461
  %cmp = icmp ne ptr %5, @init_task, !dbg !3461
  br i1 %cmp, label %for.body, label %for.end24, !dbg !3455

for.body:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #16, !dbg !3462
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !3443, metadata !DIExpression()), !dbg !3462
  br label %do.body3, !dbg !3463

do.body3:                                         ; preds = %for.body
  br label %do.cond4, !dbg !3465

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !3465

do.end5:                                          ; preds = %do.cond4
  %6 = load ptr, ptr %p, align 8, !dbg !3463
  %signal = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 104, !dbg !3463
  %7 = load ptr, ptr %signal, align 64, !dbg !3463
  %thread_head = getelementptr inbounds %struct.signal_struct, ptr %7, i32 0, i32 4, !dbg !3463
  %next7 = getelementptr inbounds %struct.list_head, ptr %thread_head, i32 0, i32 0, !dbg !3463
  %8 = load volatile ptr, ptr %next7, align 8, !dbg !3463
  store ptr %8, ptr %tmp6, align 8, !dbg !3465
  %9 = load ptr, ptr %tmp6, align 8, !dbg !3463
  store ptr %9, ptr %__mptr2, align 8, !dbg !3462
  %10 = load ptr, ptr %__mptr2, align 8, !dbg !3462
  %add.ptr9 = getelementptr i8, ptr %10, i64 -1528, !dbg !3462
  store ptr %add.ptr9, ptr %tmp8, align 8, !dbg !3462
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #16, !dbg !3467
  %11 = load ptr, ptr %tmp8, align 8, !dbg !3462
  store ptr %11, ptr %t, align 8, !dbg !3467
  br label %for.cond10, !dbg !3467

for.cond10:                                       ; preds = %do.end18, %do.end5
  %12 = load ptr, ptr %t, align 8, !dbg !3468
  %thread_node = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 75, !dbg !3468
  %13 = load ptr, ptr %p, align 8, !dbg !3468
  %signal11 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 104, !dbg !3468
  %14 = load ptr, ptr %signal11, align 64, !dbg !3468
  %thread_head12 = getelementptr inbounds %struct.signal_struct, ptr %14, i32 0, i32 4, !dbg !3468
  %cmp13 = icmp ne ptr %thread_node, %thread_head12, !dbg !3468
  br i1 %cmp13, label %for.body14, label %for.end, !dbg !3467

for.body14:                                       ; preds = %for.cond10
  %15 = load ptr, ptr %t, align 8, !dbg !3469
  %thread_info = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 0, !dbg !3469
  %syscall_work = getelementptr inbounds %struct.thread_info, ptr %thread_info, i32 0, i32 1, !dbg !3469
  call void @set_bit(i64 noundef 1, ptr noundef %syscall_work) #17, !dbg !3469
  br label %for.inc, !dbg !3471

for.inc:                                          ; preds = %for.body14
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr15) #16, !dbg !3472
  call void @llvm.dbg.declare(metadata ptr %__mptr15, metadata !3446, metadata !DIExpression()), !dbg !3472
  br label %do.body16, !dbg !3473

do.body16:                                        ; preds = %for.inc
  br label %do.cond17, !dbg !3475

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !3475

do.end18:                                         ; preds = %do.cond17
  %16 = load ptr, ptr %t, align 8, !dbg !3473
  %thread_node20 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 75, !dbg !3473
  %next21 = getelementptr inbounds %struct.list_head, ptr %thread_node20, i32 0, i32 0, !dbg !3473
  %17 = load volatile ptr, ptr %next21, align 8, !dbg !3473
  store ptr %17, ptr %tmp19, align 8, !dbg !3475
  %18 = load ptr, ptr %tmp19, align 8, !dbg !3473
  store ptr %18, ptr %__mptr15, align 8, !dbg !3472
  %19 = load ptr, ptr %__mptr15, align 8, !dbg !3472
  %add.ptr23 = getelementptr i8, ptr %19, i64 -1528, !dbg !3472
  store ptr %add.ptr23, ptr %tmp22, align 8, !dbg !3472
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr15) #16, !dbg !3468
  %20 = load ptr, ptr %tmp22, align 8, !dbg !3472
  store ptr %20, ptr %t, align 8, !dbg !3468
  br label %for.cond10, !dbg !3468, !llvm.loop !3477

for.end:                                          ; preds = %for.cond10
  br label %for.cond, !dbg !3461, !llvm.loop !3479

for.end24:                                        ; preds = %do.end
  call void @_raw_read_unlock(ptr noundef @tasklist_lock) #17, !dbg !3481
  br label %if.end, !dbg !3482

if.end:                                           ; preds = %for.end24, %entry
  %21 = load i32, ptr @sys_tracepoint_refcount, align 4, !dbg !3483
  %inc = add i32 %21, 1, !dbg !3483
  store i32 %inc, ptr @sys_tracepoint_refcount, align 4, !dbg !3483
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #16, !dbg !3484
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !3484
  ret i32 0, !dbg !3485
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3486 dso_local void @_raw_read_lock(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !3511 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3518, metadata !DIExpression()), !dbg !3520
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3519, metadata !DIExpression()), !dbg !3521
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3522
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3523
  %div = sdiv i64 %1, 64, !dbg !3523
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !3524
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !3525
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3526
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !3527
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !3528
  ret void, !dbg !3529
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3530 dso_local void @_raw_read_unlock(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @syscall_unregfunc() #1 align 16 !dbg !3531 {
entry:
  %p = alloca ptr, align 8
  %t = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %__mptr2 = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  %tmp8 = alloca ptr, align 8
  %__mptr15 = alloca ptr, align 8
  %tmp19 = alloca ptr, align 8
  %tmp22 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !3547
  call void @llvm.dbg.declare(metadata ptr %p, metadata !3533, metadata !DIExpression()), !dbg !3548
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #16, !dbg !3547
  call void @llvm.dbg.declare(metadata ptr %t, metadata !3534, metadata !DIExpression()), !dbg !3549
  %0 = load i32, ptr @sys_tracepoint_refcount, align 4, !dbg !3550
  %dec = add i32 %0, -1, !dbg !3550
  store i32 %dec, ptr @sys_tracepoint_refcount, align 4, !dbg !3550
  %1 = load i32, ptr @sys_tracepoint_refcount, align 4, !dbg !3551
  %tobool = icmp ne i32 %1, 0, !dbg !3551
  br i1 %tobool, label %if.end, label %if.then, !dbg !3552

if.then:                                          ; preds = %entry
  call void @_raw_read_lock(ptr noundef @tasklist_lock) #17, !dbg !3553
  store ptr @init_task, ptr %p, align 8, !dbg !3554
  br label %for.cond, !dbg !3554

for.cond:                                         ; preds = %for.end, %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !3555
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3535, metadata !DIExpression()), !dbg !3555
  br label %do.body, !dbg !3556

do.body:                                          ; preds = %for.cond
  br label %do.cond, !dbg !3558

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3558

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %p, align 8, !dbg !3556
  %tasks = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 46, !dbg !3556
  %next = getelementptr inbounds %struct.list_head, ptr %tasks, i32 0, i32 0, !dbg !3556
  %3 = load volatile ptr, ptr %next, align 16, !dbg !3556
  store ptr %3, ptr %tmp, align 8, !dbg !3558
  %4 = load ptr, ptr %tmp, align 8, !dbg !3556
  store ptr %4, ptr %__mptr, align 8, !dbg !3555
  %5 = load ptr, ptr %__mptr, align 8, !dbg !3555
  %add.ptr = getelementptr i8, ptr %5, i64 -1136, !dbg !3555
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !3555
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !3560
  %6 = load ptr, ptr %tmp1, align 8, !dbg !3555
  store ptr %6, ptr %p, align 8, !dbg !3560
  %cmp = icmp ne ptr %6, @init_task, !dbg !3560
  br i1 %cmp, label %for.body, label %for.end24, !dbg !3554

for.body:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #16, !dbg !3561
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !3541, metadata !DIExpression()), !dbg !3561
  br label %do.body3, !dbg !3562

do.body3:                                         ; preds = %for.body
  br label %do.cond4, !dbg !3564

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !3564

do.end5:                                          ; preds = %do.cond4
  %7 = load ptr, ptr %p, align 8, !dbg !3562
  %signal = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 104, !dbg !3562
  %8 = load ptr, ptr %signal, align 64, !dbg !3562
  %thread_head = getelementptr inbounds %struct.signal_struct, ptr %8, i32 0, i32 4, !dbg !3562
  %next7 = getelementptr inbounds %struct.list_head, ptr %thread_head, i32 0, i32 0, !dbg !3562
  %9 = load volatile ptr, ptr %next7, align 8, !dbg !3562
  store ptr %9, ptr %tmp6, align 8, !dbg !3564
  %10 = load ptr, ptr %tmp6, align 8, !dbg !3562
  store ptr %10, ptr %__mptr2, align 8, !dbg !3561
  %11 = load ptr, ptr %__mptr2, align 8, !dbg !3561
  %add.ptr9 = getelementptr i8, ptr %11, i64 -1528, !dbg !3561
  store ptr %add.ptr9, ptr %tmp8, align 8, !dbg !3561
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #16, !dbg !3566
  %12 = load ptr, ptr %tmp8, align 8, !dbg !3561
  store ptr %12, ptr %t, align 8, !dbg !3566
  br label %for.cond10, !dbg !3566

for.cond10:                                       ; preds = %do.end18, %do.end5
  %13 = load ptr, ptr %t, align 8, !dbg !3567
  %thread_node = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 75, !dbg !3567
  %14 = load ptr, ptr %p, align 8, !dbg !3567
  %signal11 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 104, !dbg !3567
  %15 = load ptr, ptr %signal11, align 64, !dbg !3567
  %thread_head12 = getelementptr inbounds %struct.signal_struct, ptr %15, i32 0, i32 4, !dbg !3567
  %cmp13 = icmp ne ptr %thread_node, %thread_head12, !dbg !3567
  br i1 %cmp13, label %for.body14, label %for.end, !dbg !3566

for.body14:                                       ; preds = %for.cond10
  %16 = load ptr, ptr %t, align 8, !dbg !3568
  %thread_info = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 0, !dbg !3568
  %syscall_work = getelementptr inbounds %struct.thread_info, ptr %thread_info, i32 0, i32 1, !dbg !3568
  call void @clear_bit(i64 noundef 1, ptr noundef %syscall_work) #17, !dbg !3568
  br label %for.inc, !dbg !3570

for.inc:                                          ; preds = %for.body14
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr15) #16, !dbg !3571
  call void @llvm.dbg.declare(metadata ptr %__mptr15, metadata !3544, metadata !DIExpression()), !dbg !3571
  br label %do.body16, !dbg !3572

do.body16:                                        ; preds = %for.inc
  br label %do.cond17, !dbg !3574

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !3574

do.end18:                                         ; preds = %do.cond17
  %17 = load ptr, ptr %t, align 8, !dbg !3572
  %thread_node20 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 75, !dbg !3572
  %next21 = getelementptr inbounds %struct.list_head, ptr %thread_node20, i32 0, i32 0, !dbg !3572
  %18 = load volatile ptr, ptr %next21, align 8, !dbg !3572
  store ptr %18, ptr %tmp19, align 8, !dbg !3574
  %19 = load ptr, ptr %tmp19, align 8, !dbg !3572
  store ptr %19, ptr %__mptr15, align 8, !dbg !3571
  %20 = load ptr, ptr %__mptr15, align 8, !dbg !3571
  %add.ptr23 = getelementptr i8, ptr %20, i64 -1528, !dbg !3571
  store ptr %add.ptr23, ptr %tmp22, align 8, !dbg !3571
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr15) #16, !dbg !3567
  %21 = load ptr, ptr %tmp22, align 8, !dbg !3571
  store ptr %21, ptr %t, align 8, !dbg !3567
  br label %for.cond10, !dbg !3567, !llvm.loop !3576

for.end:                                          ; preds = %for.cond10
  br label %for.cond, !dbg !3560, !llvm.loop !3578

for.end24:                                        ; preds = %do.end
  call void @_raw_read_unlock(ptr noundef @tasklist_lock) #17, !dbg !3580
  br label %if.end, !dbg !3581

if.end:                                           ; preds = %for.end24, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #16, !dbg !3582
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !3582
  ret void, !dbg !3582
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !3583 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3585, metadata !DIExpression()), !dbg !3587
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3586, metadata !DIExpression()), !dbg !3588
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3589
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3590
  %div = sdiv i64 %1, 64, !dbg !3590
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !3591
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !3592
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3593
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !3594
  call void @arch_clear_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !3595
  ret void, !dbg !3596
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3597 dso_local void @call_rcu(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_free_old_probes(ptr noundef %head) #1 align 16 !dbg !3602 {
entry:
  %head.addr = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !3604, metadata !DIExpression()), !dbg !3605
  %0 = load ptr, ptr %head.addr, align 8, !dbg !3606
  call void @call_srcu(ptr noundef @tracepoint_srcu, ptr noundef %0, ptr noundef @srcu_free_old_probes) #17, !dbg !3607
  ret void, !dbg !3608
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3609 dso_local void @call_srcu(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @srcu_free_old_probes(ptr noundef %head) #1 align 16 !dbg !3613 {
entry:
  %head.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !3615, metadata !DIExpression()), !dbg !3618
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !3619
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3616, metadata !DIExpression()), !dbg !3619
  %0 = load ptr, ptr %head.addr, align 8, !dbg !3619
  store ptr %0, ptr %__mptr, align 8, !dbg !3619
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3619
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !3619
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3619
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !3620
  %2 = load ptr, ptr %tmp, align 8, !dbg !3619
  call void @kfree(ptr noundef %2) #17, !dbg !3621
  ret void, !dbg !3622
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3623 dso_local void @kfree(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3626 dso_local i32 @static_key_count(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @func_add(ptr noundef %funcs, ptr noundef %tp_func, i32 noundef %prio) #1 align 16 !dbg !3629 {
entry:
  %retval = alloca ptr, align 8
  %funcs.addr = alloca ptr, align 8
  %tp_func.addr = alloca ptr, align 8
  %prio.addr = alloca i32, align 4
  %old = alloca ptr, align 8
  %new = alloca ptr, align 8
  %iter_probes = alloca i32, align 4
  %nr_probes = alloca i32, align 4
  %pos = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %funcs, ptr %funcs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %funcs.addr, metadata !3634, metadata !DIExpression()), !dbg !3648
  store ptr %tp_func, ptr %tp_func.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tp_func.addr, metadata !3635, metadata !DIExpression()), !dbg !3649
  store i32 %prio, ptr %prio.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %prio.addr, metadata !3636, metadata !DIExpression()), !dbg !3650
  call void @llvm.lifetime.start.p0(i64 8, ptr %old) #16, !dbg !3651
  call void @llvm.dbg.declare(metadata ptr %old, metadata !3637, metadata !DIExpression()), !dbg !3652
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #16, !dbg !3651
  call void @llvm.dbg.declare(metadata ptr %new, metadata !3638, metadata !DIExpression()), !dbg !3653
  call void @llvm.lifetime.start.p0(i64 4, ptr %iter_probes) #16, !dbg !3654
  call void @llvm.dbg.declare(metadata ptr %iter_probes, metadata !3639, metadata !DIExpression()), !dbg !3655
  call void @llvm.lifetime.start.p0(i64 4, ptr %nr_probes) #16, !dbg !3656
  call void @llvm.dbg.declare(metadata ptr %nr_probes, metadata !3640, metadata !DIExpression()), !dbg !3657
  store i32 0, ptr %nr_probes, align 4, !dbg !3657
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos) #16, !dbg !3658
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !3641, metadata !DIExpression()), !dbg !3659
  store i32 -1, ptr %pos, align 4, !dbg !3659
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !3660
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !3642, metadata !DIExpression()), !dbg !3660
  %0 = load ptr, ptr %tp_func.addr, align 8, !dbg !3660
  %func = getelementptr inbounds %struct.tracepoint_func, ptr %0, i32 0, i32 0, !dbg !3660
  %1 = load ptr, ptr %func, align 8, !dbg !3660
  %tobool = icmp ne ptr %1, null, !dbg !3660
  %lnot = xor i1 %tobool, true, !dbg !3660
  %lnot1 = xor i1 %lnot, true, !dbg !3660
  %lnot2 = xor i1 %lnot1, true, !dbg !3660
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !3660
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !3660
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !3661
  %tobool3 = icmp ne i32 %2, 0, !dbg !3661
  %lnot4 = xor i1 %tobool3, true, !dbg !3661
  %lnot6 = xor i1 %lnot4, true, !dbg !3661
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !3661
  %conv = sext i32 %lnot.ext7 to i64, !dbg !3661
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3661
  %tobool8 = icmp ne i64 %expval, 0, !dbg !3661
  br i1 %tobool8, label %if.then, label %if.end, !dbg !3660

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !3661

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !3662
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !3645, metadata !DIExpression()), !dbg !3662
  store i32 2305, ptr %__flags, align 4, !dbg !3662
  br label %do.body9, !dbg !3662

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !3663

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !3663

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !3662

do.body10:                                        ; preds = %do.end
  %3 = load i32, ptr %__flags, align 4, !dbg !3665
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 188, i32 %3, i64 12) #16, !dbg !3665, !srcloc !3667
  br label %do.cond11, !dbg !3665

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !3665

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !3662

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !3668

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !3668

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !3661
  br label %do.cond16, !dbg !3662

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !3662

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !3662

if.end:                                           ; preds = %do.end17, %entry
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !3660
  %tobool18 = icmp ne i32 %4, 0, !dbg !3660
  %lnot19 = xor i1 %tobool18, true, !dbg !3660
  %lnot21 = xor i1 %lnot19, true, !dbg !3660
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !3660
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !3660
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !3660
  store i64 %expval24, ptr %tmp, align 8, !dbg !3661
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !3670
  %5 = load i64, ptr %tmp, align 8, !dbg !3660
  %tobool25 = icmp ne i64 %5, 0, !dbg !3670
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !3671

if.then26:                                        ; preds = %if.end
  %call = call ptr @ERR_PTR(i64 noundef -22) #17, !dbg !3672
  store ptr %call, ptr %retval, align 8, !dbg !3673
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3673

if.end27:                                         ; preds = %if.end
  %6 = load ptr, ptr %funcs.addr, align 8, !dbg !3674
  %7 = load ptr, ptr %6, align 8, !dbg !3675
  call void @debug_print_probes(ptr noundef %7) #17, !dbg !3676
  %8 = load ptr, ptr %funcs.addr, align 8, !dbg !3677
  %9 = load ptr, ptr %8, align 8, !dbg !3678
  store ptr %9, ptr %old, align 8, !dbg !3679
  %10 = load ptr, ptr %old, align 8, !dbg !3680
  %tobool28 = icmp ne ptr %10, null, !dbg !3680
  br i1 %tobool28, label %if.then29, label %if.end53, !dbg !3682

if.then29:                                        ; preds = %if.end27
  store i32 0, ptr %iter_probes, align 4, !dbg !3683
  br label %for.cond, !dbg !3686

for.cond:                                         ; preds = %for.inc, %if.then29
  %11 = load ptr, ptr %old, align 8, !dbg !3687
  %12 = load i32, ptr %iter_probes, align 4, !dbg !3689
  %idxprom = sext i32 %12 to i64, !dbg !3687
  %arrayidx = getelementptr %struct.tracepoint_func, ptr %11, i64 %idxprom, !dbg !3687
  %func30 = getelementptr inbounds %struct.tracepoint_func, ptr %arrayidx, i32 0, i32 0, !dbg !3690
  %13 = load ptr, ptr %func30, align 8, !dbg !3690
  %tobool31 = icmp ne ptr %13, null, !dbg !3691
  br i1 %tobool31, label %for.body, label %for.end, !dbg !3691

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %old, align 8, !dbg !3692
  %15 = load i32, ptr %iter_probes, align 4, !dbg !3695
  %idxprom32 = sext i32 %15 to i64, !dbg !3692
  %arrayidx33 = getelementptr %struct.tracepoint_func, ptr %14, i64 %idxprom32, !dbg !3692
  %func34 = getelementptr inbounds %struct.tracepoint_func, ptr %arrayidx33, i32 0, i32 0, !dbg !3696
  %16 = load ptr, ptr %func34, align 8, !dbg !3696
  %cmp = icmp eq ptr %16, @tp_stub_func, !dbg !3697
  br i1 %cmp, label %if.then36, label %if.end37, !dbg !3698

if.then36:                                        ; preds = %for.body
  br label %for.inc, !dbg !3699

if.end37:                                         ; preds = %for.body
  %17 = load ptr, ptr %old, align 8, !dbg !3700
  %18 = load i32, ptr %iter_probes, align 4, !dbg !3702
  %idxprom38 = sext i32 %18 to i64, !dbg !3700
  %arrayidx39 = getelementptr %struct.tracepoint_func, ptr %17, i64 %idxprom38, !dbg !3700
  %func40 = getelementptr inbounds %struct.tracepoint_func, ptr %arrayidx39, i32 0, i32 0, !dbg !3703
  %19 = load ptr, ptr %func40, align 8, !dbg !3703
  %20 = load ptr, ptr %tp_func.addr, align 8, !dbg !3704
  %func41 = getelementptr inbounds %struct.tracepoint_func, ptr %20, i32 0, i32 0, !dbg !3705
  %21 = load ptr, ptr %func41, align 8, !dbg !3705
  %cmp42 = icmp eq ptr %19, %21, !dbg !3706
  br i1 %cmp42, label %land.lhs.true, label %if.end51, !dbg !3707

land.lhs.true:                                    ; preds = %if.end37
  %22 = load ptr, ptr %old, align 8, !dbg !3708
  %23 = load i32, ptr %iter_probes, align 4, !dbg !3709
  %idxprom44 = sext i32 %23 to i64, !dbg !3708
  %arrayidx45 = getelementptr %struct.tracepoint_func, ptr %22, i64 %idxprom44, !dbg !3708
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %arrayidx45, i32 0, i32 1, !dbg !3710
  %24 = load ptr, ptr %data, align 8, !dbg !3710
  %25 = load ptr, ptr %tp_func.addr, align 8, !dbg !3711
  %data46 = getelementptr inbounds %struct.tracepoint_func, ptr %25, i32 0, i32 1, !dbg !3712
  %26 = load ptr, ptr %data46, align 8, !dbg !3712
  %cmp47 = icmp eq ptr %24, %26, !dbg !3713
  br i1 %cmp47, label %if.then49, label %if.end51, !dbg !3714

if.then49:                                        ; preds = %land.lhs.true
  %call50 = call ptr @ERR_PTR(i64 noundef -17) #17, !dbg !3715
  store ptr %call50, ptr %retval, align 8, !dbg !3716
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3716

if.end51:                                         ; preds = %land.lhs.true, %if.end37
  %27 = load i32, ptr %nr_probes, align 4, !dbg !3717
  %inc = add i32 %27, 1, !dbg !3717
  store i32 %inc, ptr %nr_probes, align 4, !dbg !3717
  br label %for.inc, !dbg !3718

for.inc:                                          ; preds = %if.end51, %if.then36
  %28 = load i32, ptr %iter_probes, align 4, !dbg !3719
  %inc52 = add i32 %28, 1, !dbg !3719
  store i32 %inc52, ptr %iter_probes, align 4, !dbg !3719
  br label %for.cond, !dbg !3720, !llvm.loop !3721

for.end:                                          ; preds = %for.cond
  br label %if.end53, !dbg !3723

if.end53:                                         ; preds = %for.end, %if.end27
  %29 = load i32, ptr %nr_probes, align 4, !dbg !3724
  %add = add i32 %29, 2, !dbg !3725
  %call54 = call ptr @allocate_probes(i32 noundef %add) #17, !dbg !3726
  store ptr %call54, ptr %new, align 8, !dbg !3727
  %30 = load ptr, ptr %new, align 8, !dbg !3728
  %cmp55 = icmp eq ptr %30, null, !dbg !3730
  br i1 %cmp55, label %if.then57, label %if.end59, !dbg !3731

if.then57:                                        ; preds = %if.end53
  %call58 = call ptr @ERR_PTR(i64 noundef -12) #17, !dbg !3732
  store ptr %call58, ptr %retval, align 8, !dbg !3733
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3733

if.end59:                                         ; preds = %if.end53
  %31 = load ptr, ptr %old, align 8, !dbg !3734
  %tobool60 = icmp ne ptr %31, null, !dbg !3734
  br i1 %tobool60, label %if.then61, label %if.else, !dbg !3736

if.then61:                                        ; preds = %if.end59
  store i32 0, ptr %nr_probes, align 4, !dbg !3737
  store i32 0, ptr %iter_probes, align 4, !dbg !3739
  br label %for.cond62, !dbg !3741

for.cond62:                                       ; preds = %for.inc91, %if.then61
  %32 = load ptr, ptr %old, align 8, !dbg !3742
  %33 = load i32, ptr %iter_probes, align 4, !dbg !3744
  %idxprom63 = sext i32 %33 to i64, !dbg !3742
  %arrayidx64 = getelementptr %struct.tracepoint_func, ptr %32, i64 %idxprom63, !dbg !3742
  %func65 = getelementptr inbounds %struct.tracepoint_func, ptr %arrayidx64, i32 0, i32 0, !dbg !3745
  %34 = load ptr, ptr %func65, align 8, !dbg !3745
  %tobool66 = icmp ne ptr %34, null, !dbg !3746
  br i1 %tobool66, label %for.body67, label %for.end93, !dbg !3746

for.body67:                                       ; preds = %for.cond62
  %35 = load ptr, ptr %old, align 8, !dbg !3747
  %36 = load i32, ptr %iter_probes, align 4, !dbg !3750
  %idxprom68 = sext i32 %36 to i64, !dbg !3747
  %arrayidx69 = getelementptr %struct.tracepoint_func, ptr %35, i64 %idxprom68, !dbg !3747
  %func70 = getelementptr inbounds %struct.tracepoint_func, ptr %arrayidx69, i32 0, i32 0, !dbg !3751
  %37 = load ptr, ptr %func70, align 8, !dbg !3751
  %cmp71 = icmp eq ptr %37, @tp_stub_func, !dbg !3752
  br i1 %cmp71, label %if.then73, label %if.end74, !dbg !3753

if.then73:                                        ; preds = %for.body67
  br label %for.inc91, !dbg !3754

if.end74:                                         ; preds = %for.body67
  %38 = load i32, ptr %pos, align 4, !dbg !3755
  %cmp75 = icmp slt i32 %38, 0, !dbg !3757
  br i1 %cmp75, label %land.lhs.true77, label %if.end85, !dbg !3758

land.lhs.true77:                                  ; preds = %if.end74
  %39 = load ptr, ptr %old, align 8, !dbg !3759
  %40 = load i32, ptr %iter_probes, align 4, !dbg !3760
  %idxprom78 = sext i32 %40 to i64, !dbg !3759
  %arrayidx79 = getelementptr %struct.tracepoint_func, ptr %39, i64 %idxprom78, !dbg !3759
  %prio80 = getelementptr inbounds %struct.tracepoint_func, ptr %arrayidx79, i32 0, i32 2, !dbg !3761
  %41 = load i32, ptr %prio80, align 8, !dbg !3761
  %42 = load i32, ptr %prio.addr, align 4, !dbg !3762
  %cmp81 = icmp slt i32 %41, %42, !dbg !3763
  br i1 %cmp81, label %if.then83, label %if.end85, !dbg !3764

if.then83:                                        ; preds = %land.lhs.true77
  %43 = load i32, ptr %nr_probes, align 4, !dbg !3765
  %inc84 = add i32 %43, 1, !dbg !3765
  store i32 %inc84, ptr %nr_probes, align 4, !dbg !3765
  store i32 %43, ptr %pos, align 4, !dbg !3766
  br label %if.end85, !dbg !3767

if.end85:                                         ; preds = %if.then83, %land.lhs.true77, %if.end74
  %44 = load ptr, ptr %new, align 8, !dbg !3768
  %45 = load i32, ptr %nr_probes, align 4, !dbg !3769
  %inc86 = add i32 %45, 1, !dbg !3769
  store i32 %inc86, ptr %nr_probes, align 4, !dbg !3769
  %idxprom87 = sext i32 %45 to i64, !dbg !3768
  %arrayidx88 = getelementptr %struct.tracepoint_func, ptr %44, i64 %idxprom87, !dbg !3768
  %46 = load ptr, ptr %old, align 8, !dbg !3770
  %47 = load i32, ptr %iter_probes, align 4, !dbg !3771
  %idxprom89 = sext i32 %47 to i64, !dbg !3770
  %arrayidx90 = getelementptr %struct.tracepoint_func, ptr %46, i64 %idxprom89, !dbg !3770
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx88, ptr align 8 %arrayidx90, i64 24, i1 false), !dbg !3770
  br label %for.inc91, !dbg !3772

for.inc91:                                        ; preds = %if.end85, %if.then73
  %48 = load i32, ptr %iter_probes, align 4, !dbg !3773
  %inc92 = add i32 %48, 1, !dbg !3773
  store i32 %inc92, ptr %iter_probes, align 4, !dbg !3773
  br label %for.cond62, !dbg !3774, !llvm.loop !3775

for.end93:                                        ; preds = %for.cond62
  %49 = load i32, ptr %pos, align 4, !dbg !3777
  %cmp94 = icmp slt i32 %49, 0, !dbg !3779
  br i1 %cmp94, label %if.then96, label %if.end98, !dbg !3780

if.then96:                                        ; preds = %for.end93
  %50 = load i32, ptr %nr_probes, align 4, !dbg !3781
  %inc97 = add i32 %50, 1, !dbg !3781
  store i32 %inc97, ptr %nr_probes, align 4, !dbg !3781
  store i32 %50, ptr %pos, align 4, !dbg !3782
  br label %if.end98, !dbg !3783

if.end98:                                         ; preds = %if.then96, %for.end93
  br label %if.end99, !dbg !3784

if.else:                                          ; preds = %if.end59
  store i32 0, ptr %pos, align 4, !dbg !3785
  store i32 1, ptr %nr_probes, align 4, !dbg !3787
  br label %if.end99

if.end99:                                         ; preds = %if.else, %if.end98
  %51 = load ptr, ptr %new, align 8, !dbg !3788
  %52 = load i32, ptr %pos, align 4, !dbg !3789
  %idxprom100 = sext i32 %52 to i64, !dbg !3788
  %arrayidx101 = getelementptr %struct.tracepoint_func, ptr %51, i64 %idxprom100, !dbg !3788
  %53 = load ptr, ptr %tp_func.addr, align 8, !dbg !3790
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx101, ptr align 8 %53, i64 24, i1 false), !dbg !3791
  %54 = load ptr, ptr %new, align 8, !dbg !3792
  %55 = load i32, ptr %nr_probes, align 4, !dbg !3793
  %idxprom102 = sext i32 %55 to i64, !dbg !3792
  %arrayidx103 = getelementptr %struct.tracepoint_func, ptr %54, i64 %idxprom102, !dbg !3792
  %func104 = getelementptr inbounds %struct.tracepoint_func, ptr %arrayidx103, i32 0, i32 0, !dbg !3794
  store ptr null, ptr %func104, align 8, !dbg !3795
  %56 = load ptr, ptr %new, align 8, !dbg !3796
  %57 = load ptr, ptr %funcs.addr, align 8, !dbg !3797
  store ptr %56, ptr %57, align 8, !dbg !3798
  %58 = load ptr, ptr %funcs.addr, align 8, !dbg !3799
  %59 = load ptr, ptr %58, align 8, !dbg !3800
  call void @debug_print_probes(ptr noundef %59) #17, !dbg !3801
  %60 = load ptr, ptr %old, align 8, !dbg !3802
  store ptr %60, ptr %retval, align 8, !dbg !3803
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3803

cleanup:                                          ; preds = %if.end99, %if.then57, %if.then49, %if.then26
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos) #16, !dbg !3804
  call void @llvm.lifetime.end.p0(i64 4, ptr %nr_probes) #16, !dbg !3804
  call void @llvm.lifetime.end.p0(i64 4, ptr %iter_probes) #16, !dbg !3804
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #16, !dbg !3804
  call void @llvm.lifetime.end.p0(i64 8, ptr %old) #16, !dbg !3804
  %61 = load ptr, ptr %retval, align 8, !dbg !3804
  ret ptr %61, !dbg !3804
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #6 align 16 !dbg !3805 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !3810, metadata !DIExpression()), !dbg !3811
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !3812
  %1 = ptrtoint ptr %0 to i64, !dbg !3812
  %2 = inttoptr i64 %1 to ptr, !dbg !3812
  %3 = ptrtoint ptr %2 to i64, !dbg !3812
  %cmp = icmp uge i64 %3, -4095, !dbg !3812
  %lnot = xor i1 %cmp, true, !dbg !3812
  %lnot1 = xor i1 %lnot, true, !dbg !3812
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3812
  %conv = sext i32 %lnot.ext to i64, !dbg !3812
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3812
  %tobool = icmp ne i64 %expval, 0, !dbg !3812
  ret i1 %tobool, !dbg !3813
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #6 align 16 !dbg !3814 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !3818, metadata !DIExpression()), !dbg !3819
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !3820
  %1 = ptrtoint ptr %0 to i64, !dbg !3821
  ret i64 %1, !dbg !3822
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @nr_func_state(ptr noundef %tp_funcs) #1 align 16 !dbg !3823 {
entry:
  %retval = alloca i32, align 4
  %tp_funcs.addr = alloca ptr, align 8
  store ptr %tp_funcs, ptr %tp_funcs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tp_funcs.addr, metadata !3829, metadata !DIExpression()), !dbg !3830
  %0 = load ptr, ptr %tp_funcs.addr, align 8, !dbg !3831
  %tobool = icmp ne ptr %0, null, !dbg !3831
  br i1 %tobool, label %if.end, label %if.then, !dbg !3833

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3834
  br label %return, !dbg !3834

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %tp_funcs.addr, align 8, !dbg !3835
  %arrayidx = getelementptr %struct.tracepoint_func, ptr %1, i64 1, !dbg !3835
  %func = getelementptr inbounds %struct.tracepoint_func, ptr %arrayidx, i32 0, i32 0, !dbg !3837
  %2 = load ptr, ptr %func, align 8, !dbg !3837
  %tobool1 = icmp ne ptr %2, null, !dbg !3835
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !3838

if.then2:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !3839
  br label %return, !dbg !3839

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %tp_funcs.addr, align 8, !dbg !3840
  %arrayidx4 = getelementptr %struct.tracepoint_func, ptr %3, i64 2, !dbg !3840
  %func5 = getelementptr inbounds %struct.tracepoint_func, ptr %arrayidx4, i32 0, i32 0, !dbg !3842
  %4 = load ptr, ptr %func5, align 8, !dbg !3842
  %tobool6 = icmp ne ptr %4, null, !dbg !3840
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !3843

if.then7:                                         ; preds = %if.end3
  store i32 2, ptr %retval, align 4, !dbg !3844
  br label %return, !dbg !3844

if.end8:                                          ; preds = %if.end3
  store i32 3, ptr %retval, align 4, !dbg !3845
  br label %return, !dbg !3845

return:                                           ; preds = %if.end8, %if.then7, %if.then2, %if.then
  %5 = load i32, ptr %retval, align 4, !dbg !3846
  ret i32 %5, !dbg !3846
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tp_rcu_cond_sync(i32 noundef %sync) #1 align 16 !dbg !3847 {
entry:
  %sync.addr = alloca i32, align 4
  %snapshot = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %sync, ptr %sync.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %sync.addr, metadata !3851, metadata !DIExpression()), !dbg !3854
  call void @llvm.lifetime.start.p0(i64 8, ptr %snapshot) #16, !dbg !3855
  call void @llvm.dbg.declare(metadata ptr %snapshot, metadata !3852, metadata !DIExpression()), !dbg !3856
  %0 = load i32, ptr %sync.addr, align 4, !dbg !3857
  %idxprom = zext i32 %0 to i64, !dbg !3858
  %arrayidx = getelementptr [2 x %struct.tp_transition_snapshot], ptr @tp_transition_snapshot, i64 0, i64 %idxprom, !dbg !3858
  store ptr %arrayidx, ptr %snapshot, align 8, !dbg !3856
  %1 = load ptr, ptr %snapshot, align 8, !dbg !3859
  %ongoing = getelementptr inbounds %struct.tp_transition_snapshot, ptr %1, i32 0, i32 2, !dbg !3861
  %2 = load i8, ptr %ongoing, align 8, !dbg !3861, !range !2884, !noundef !323
  %tobool = trunc i8 %2 to i1, !dbg !3861
  br i1 %tobool, label %if.end, label %if.then, !dbg !3862

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3863

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %snapshot, align 8, !dbg !3864
  %rcu = getelementptr inbounds %struct.tp_transition_snapshot, ptr %3, i32 0, i32 0, !dbg !3865
  %4 = load i64, ptr %rcu, align 8, !dbg !3865
  call void @cond_synchronize_rcu(i64 noundef %4) #17, !dbg !3866
  %5 = load ptr, ptr %snapshot, align 8, !dbg !3867
  %srcu = getelementptr inbounds %struct.tp_transition_snapshot, ptr %5, i32 0, i32 1, !dbg !3869
  %6 = load i64, ptr %srcu, align 8, !dbg !3869
  %call = call zeroext i1 @poll_state_synchronize_srcu(ptr noundef @tracepoint_srcu, i64 noundef %6) #17, !dbg !3870
  br i1 %call, label %if.end2, label %if.then1, !dbg !3871

if.then1:                                         ; preds = %if.end
  call void @synchronize_srcu(ptr noundef @tracepoint_srcu) #17, !dbg !3872
  br label %if.end2, !dbg !3872

if.end2:                                          ; preds = %if.then1, %if.end
  %7 = load ptr, ptr %snapshot, align 8, !dbg !3873
  %ongoing3 = getelementptr inbounds %struct.tp_transition_snapshot, ptr %7, i32 0, i32 2, !dbg !3874
  store i8 0, ptr %ongoing3, align 8, !dbg !3875
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3876
  br label %cleanup, !dbg !3876

cleanup:                                          ; preds = %if.end2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %snapshot) #16, !dbg !3876
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !3876

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tracepoint_update_call(ptr noundef %tp, ptr noundef %tp_funcs) #1 align 16 !dbg !3877 {
entry:
  %tp.addr = alloca ptr, align 8
  %tp_funcs.addr = alloca ptr, align 8
  %func = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tp, ptr %tp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tp.addr, metadata !3881, metadata !DIExpression()), !dbg !3884
  store ptr %tp_funcs, ptr %tp_funcs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tp_funcs.addr, metadata !3882, metadata !DIExpression()), !dbg !3885
  call void @llvm.lifetime.start.p0(i64 8, ptr %func) #16, !dbg !3886
  call void @llvm.dbg.declare(metadata ptr %func, metadata !3883, metadata !DIExpression()), !dbg !3887
  %0 = load ptr, ptr %tp.addr, align 8, !dbg !3888
  %iterator = getelementptr inbounds %struct.tracepoint, ptr %0, i32 0, i32 4, !dbg !3889
  %1 = load ptr, ptr %iterator, align 8, !dbg !3889
  store ptr %1, ptr %func, align 8, !dbg !3887
  %2 = load ptr, ptr %tp.addr, align 8, !dbg !3890
  %static_call_key = getelementptr inbounds %struct.tracepoint, ptr %2, i32 0, i32 2, !dbg !3892
  %3 = load ptr, ptr %static_call_key, align 8, !dbg !3892
  %tobool = icmp ne ptr %3, null, !dbg !3890
  br i1 %tobool, label %if.end, label %if.then, !dbg !3893

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3894

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %tp_funcs.addr, align 8, !dbg !3895
  %call = call i32 @nr_func_state(ptr noundef %4) #17, !dbg !3897
  %cmp = icmp eq i32 %call, 1, !dbg !3898
  br i1 %cmp, label %if.then1, label %if.end3, !dbg !3899

if.then1:                                         ; preds = %if.end
  %5 = load ptr, ptr %tp_funcs.addr, align 8, !dbg !3900
  %arrayidx = getelementptr %struct.tracepoint_func, ptr %5, i64 0, !dbg !3900
  %func2 = getelementptr inbounds %struct.tracepoint_func, ptr %arrayidx, i32 0, i32 0, !dbg !3901
  %6 = load ptr, ptr %func2, align 8, !dbg !3901
  store ptr %6, ptr %func, align 8, !dbg !3902
  br label %if.end3, !dbg !3903

if.end3:                                          ; preds = %if.then1, %if.end
  %7 = load ptr, ptr %tp.addr, align 8, !dbg !3904
  %static_call_key4 = getelementptr inbounds %struct.tracepoint, ptr %7, i32 0, i32 2, !dbg !3905
  %8 = load ptr, ptr %static_call_key4, align 8, !dbg !3905
  %9 = load ptr, ptr %tp.addr, align 8, !dbg !3906
  %static_call_tramp = getelementptr inbounds %struct.tracepoint, ptr %9, i32 0, i32 3, !dbg !3907
  %10 = load ptr, ptr %static_call_tramp, align 8, !dbg !3907
  %11 = load ptr, ptr %func, align 8, !dbg !3908
  call void @__static_call_update(ptr noundef %8, ptr noundef %10, ptr noundef %11) #17, !dbg !3909
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3910
  br label %cleanup, !dbg !3910

cleanup:                                          ; preds = %if.end3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %func) #16, !dbg !3910
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !3910

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3911 dso_local void @static_key_enable(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tp_rcu_get_state(i32 noundef %sync) #1 align 16 !dbg !3914 {
entry:
  %sync.addr = alloca i32, align 4
  %snapshot = alloca ptr, align 8
  store i32 %sync, ptr %sync.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %sync.addr, metadata !3916, metadata !DIExpression()), !dbg !3918
  call void @llvm.lifetime.start.p0(i64 8, ptr %snapshot) #16, !dbg !3919
  call void @llvm.dbg.declare(metadata ptr %snapshot, metadata !3917, metadata !DIExpression()), !dbg !3920
  %0 = load i32, ptr %sync.addr, align 4, !dbg !3921
  %idxprom = zext i32 %0 to i64, !dbg !3922
  %arrayidx = getelementptr [2 x %struct.tp_transition_snapshot], ptr @tp_transition_snapshot, i64 0, i64 %idxprom, !dbg !3922
  store ptr %arrayidx, ptr %snapshot, align 8, !dbg !3920
  %call = call i64 @get_state_synchronize_rcu() #17, !dbg !3923
  %1 = load ptr, ptr %snapshot, align 8, !dbg !3924
  %rcu = getelementptr inbounds %struct.tp_transition_snapshot, ptr %1, i32 0, i32 0, !dbg !3925
  store i64 %call, ptr %rcu, align 8, !dbg !3926
  %call1 = call i64 @start_poll_synchronize_srcu(ptr noundef @tracepoint_srcu) #17, !dbg !3927
  %2 = load ptr, ptr %snapshot, align 8, !dbg !3928
  %srcu = getelementptr inbounds %struct.tp_transition_snapshot, ptr %2, i32 0, i32 1, !dbg !3929
  store i64 %call1, ptr %srcu, align 8, !dbg !3930
  %3 = load ptr, ptr %snapshot, align 8, !dbg !3931
  %ongoing = getelementptr inbounds %struct.tp_transition_snapshot, ptr %3, i32 0, i32 2, !dbg !3932
  store i8 1, ptr %ongoing, align 8, !dbg !3933
  call void @llvm.lifetime.end.p0(i64 8, ptr %snapshot) #16, !dbg !3934
  ret void, !dbg !3934
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @release_probes(ptr noundef %old) #6 align 16 !dbg !3935 {
entry:
  %old.addr = alloca ptr, align 8
  %tp_probes = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !3939, metadata !DIExpression()), !dbg !3945
  %0 = load ptr, ptr %old.addr, align 8, !dbg !3946
  %tobool = icmp ne ptr %0, null, !dbg !3946
  br i1 %tobool, label %if.then, label %if.end8, !dbg !3947

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %tp_probes) #16, !dbg !3948
  call void @llvm.dbg.declare(metadata ptr %tp_probes, metadata !3940, metadata !DIExpression()), !dbg !3949
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !3950
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3943, metadata !DIExpression()), !dbg !3950
  %1 = load ptr, ptr %old.addr, align 8, !dbg !3950
  store ptr %1, ptr %__mptr, align 8, !dbg !3950
  %2 = load ptr, ptr %__mptr, align 8, !dbg !3950
  %add.ptr = getelementptr i8, ptr %2, i64 -16, !dbg !3950
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3950
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !3951
  %3 = load ptr, ptr %tmp, align 8, !dbg !3950
  store ptr %3, ptr %tp_probes, align 8, !dbg !3949
  %4 = load i8, ptr @ok_to_free_tracepoints, align 1, !dbg !3952, !range !2884, !noundef !323
  %tobool1 = trunc i8 %4 to i1, !dbg !3952
  %lnot = xor i1 %tobool1, true, !dbg !3952
  %lnot2 = xor i1 %lnot, true, !dbg !3952
  %lnot3 = xor i1 %lnot2, true, !dbg !3952
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !3952
  %conv = sext i32 %lnot.ext to i64, !dbg !3952
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3952
  %tobool4 = icmp ne i64 %expval, 0, !dbg !3952
  br i1 %tobool4, label %if.then5, label %if.end, !dbg !3954

if.then5:                                         ; preds = %if.then
  %5 = load ptr, ptr @early_probes, align 8, !dbg !3955
  %6 = load ptr, ptr %tp_probes, align 8, !dbg !3957
  %rcu = getelementptr inbounds %struct.tp_probes, ptr %6, i32 0, i32 0, !dbg !3958
  %next = getelementptr inbounds %struct.callback_head, ptr %rcu, i32 0, i32 0, !dbg !3959
  store ptr %5, ptr %next, align 8, !dbg !3960
  %7 = load ptr, ptr %tp_probes, align 8, !dbg !3961
  %rcu6 = getelementptr inbounds %struct.tp_probes, ptr %7, i32 0, i32 0, !dbg !3962
  store ptr %rcu6, ptr @early_probes, align 8, !dbg !3963
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3964

if.end:                                           ; preds = %if.then
  %8 = load ptr, ptr %tp_probes, align 8, !dbg !3965
  %rcu7 = getelementptr inbounds %struct.tp_probes, ptr %8, i32 0, i32 0, !dbg !3966
  call void @call_rcu(ptr noundef %rcu7, ptr noundef @rcu_free_old_probes) #17, !dbg !3967
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3968
  br label %cleanup, !dbg !3968

cleanup:                                          ; preds = %if.end, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tp_probes) #16, !dbg !3968
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end8
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end8, !dbg !3969

if.end8:                                          ; preds = %cleanup, %cleanup.cont, %entry
  ret void, !dbg !3970

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #6 align 16 !dbg !3971 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !3975, metadata !DIExpression()), !dbg !3976
  %0 = load i64, ptr %error.addr, align 8, !dbg !3977
  %1 = inttoptr i64 %0 to ptr, !dbg !3978
  ret ptr %1, !dbg !3979
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @debug_print_probes(ptr noundef %funcs) #1 align 16 !dbg !3980 {
entry:
  %funcs.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %funcs, ptr %funcs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %funcs.addr, metadata !3982, metadata !DIExpression()), !dbg !3984
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !3985
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3983, metadata !DIExpression()), !dbg !3986
  %0 = load i32, ptr @tracepoint_debug, align 4, !dbg !3987
  %tobool = icmp ne i32 %0, 0, !dbg !3987
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3989

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %funcs.addr, align 8, !dbg !3990
  %tobool1 = icmp ne ptr %1, null, !dbg !3990
  br i1 %tobool1, label %if.end, label %if.then, !dbg !3991

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3992

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, ptr %i, align 4, !dbg !3993
  br label %for.cond, !dbg !3995

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load ptr, ptr %funcs.addr, align 8, !dbg !3996
  %3 = load i32, ptr %i, align 4, !dbg !3998
  %idxprom = sext i32 %3 to i64, !dbg !3996
  %arrayidx = getelementptr %struct.tracepoint_func, ptr %2, i64 %idxprom, !dbg !3996
  %func = getelementptr inbounds %struct.tracepoint_func, ptr %arrayidx, i32 0, i32 0, !dbg !3999
  %4 = load ptr, ptr %func, align 8, !dbg !3999
  %tobool2 = icmp ne ptr %4, null, !dbg !4000
  br i1 %tobool2, label %for.body, label %for.end, !dbg !4000

for.body:                                         ; preds = %for.cond
  br label %do.body, !dbg !4001

do.body:                                          ; preds = %for.body
  br label %do.cond, !dbg !4003

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4003

do.end:                                           ; preds = %do.cond
  %5 = load i32, ptr %i, align 4, !dbg !4001
  %6 = load ptr, ptr %funcs.addr, align 8, !dbg !4001
  %7 = load i32, ptr %i, align 4, !dbg !4001
  %idxprom3 = sext i32 %7 to i64, !dbg !4001
  %arrayidx4 = getelementptr %struct.tracepoint_func, ptr %6, i64 %idxprom3, !dbg !4001
  %func5 = getelementptr inbounds %struct.tracepoint_func, ptr %arrayidx4, i32 0, i32 0, !dbg !4001
  %8 = load ptr, ptr %func5, align 8, !dbg !4001
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, i32 noundef %5, ptr noundef %8) #15, !dbg !4001
  store i32 %call, ptr %tmp, align 4, !dbg !4003
  %9 = load i32, ptr %tmp, align 4, !dbg !4001
  br label %for.inc, !dbg !4005

for.inc:                                          ; preds = %do.end
  %10 = load i32, ptr %i, align 4, !dbg !4006
  %inc = add i32 %10, 1, !dbg !4006
  store i32 %inc, ptr %i, align 4, !dbg !4006
  br label %for.cond, !dbg !4007, !llvm.loop !4008

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4010
  br label %cleanup, !dbg !4010

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !4010
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4010

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tp_stub_func() #1 align 16 !dbg !4011 {
entry:
  ret void, !dbg !4012
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @allocate_probes(i32 noundef %count) #6 align 16 !dbg !4013 {
entry:
  %count.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !4017, metadata !DIExpression()), !dbg !4019
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !4020
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4018, metadata !DIExpression()), !dbg !4021
  %0 = load i32, ptr %count.addr, align 4, !dbg !4022
  %conv = sext i32 %0 to i64, !dbg !4022
  %call = call i64 @size_mul(i64 noundef %conv, i64 noundef 24) #17, !dbg !4022
  %call1 = call i64 @size_add(i64 noundef 16, i64 noundef %call) #17, !dbg !4022
  %call2 = call noalias ptr @kmalloc(i64 noundef %call1, i32 noundef 3264) #18, !dbg !4023
  store ptr %call2, ptr %p, align 8, !dbg !4021
  %1 = load ptr, ptr %p, align 8, !dbg !4024
  %cmp = icmp eq ptr %1, null, !dbg !4025
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !4024

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !4024

cond.false:                                       ; preds = %entry
  %2 = load ptr, ptr %p, align 8, !dbg !4026
  %probes = getelementptr inbounds %struct.tp_probes, ptr %2, i32 0, i32 1, !dbg !4027
  %arraydecay = getelementptr inbounds [0 x %struct.tracepoint_func], ptr %probes, i64 0, i64 0, !dbg !4026
  br label %cond.end, !dbg !4024

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ null, %cond.true ], [ %arraydecay, %cond.false ], !dbg !4024
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !4028
  ret ptr %cond, !dbg !4029
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !4030 dso_local i32 @_printk(ptr noundef, ...) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #10 align 16 !dbg !4034 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4038, metadata !DIExpression()), !dbg !4043
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4039, metadata !DIExpression()), !dbg !4044
  %0 = load i64, ptr %size.addr, align 8, !dbg !4045
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4046
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !4047

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !4048
  %tobool = icmp ne i64 %2, 0, !dbg !4048
  br i1 %tobool, label %if.then, label %if.end7, !dbg !4049

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !4050
  call void @llvm.dbg.declare(metadata ptr %index, metadata !4040, metadata !DIExpression()), !dbg !4051
  %3 = load i64, ptr %size.addr, align 8, !dbg !4052
  %cmp = icmp ugt i64 %3, 8192, !dbg !4054
  br i1 %cmp, label %if.then1, label %if.end, !dbg !4055

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !4056
  %5 = load i32, ptr %flags.addr, align 4, !dbg !4057
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #18, !dbg !4058
  store ptr %call, ptr %retval, align 8, !dbg !4059
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4059

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !4060
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !4060
  store i32 %call2, ptr %index, align 4, !dbg !4061
  %7 = load i32, ptr %flags.addr, align 4, !dbg !4062
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !4063
  %9 = ptrtoint ptr %8 to i64, !dbg !4063
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !4064
  %idxprom = zext i32 %call3 to i64, !dbg !4065
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !4065
  %10 = load i32, ptr %index, align 4, !dbg !4066
  %idxprom4 = zext i32 %10 to i64, !dbg !4065
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !4065
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !4065
  %12 = load i32, ptr %flags.addr, align 4, !dbg !4067
  %13 = load i64, ptr %size.addr, align 8, !dbg !4068
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #19, !dbg !4069
  store ptr %call6, ptr %retval, align 8, !dbg !4070
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4070

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !4071
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !4072
  %15 = load i32, ptr %flags.addr, align 4, !dbg !4073
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #18, !dbg !4074
  store ptr %call8, ptr %retval, align 8, !dbg !4075
  br label %return, !dbg !4075

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !4076
  ret ptr %16, !dbg !4076
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @size_add(i64 noundef %addend1, i64 noundef %addend2) #6 align 16 !dbg !4077 {
entry:
  %retval = alloca i64, align 8
  %addend1.addr = alloca i64, align 8
  %addend2.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %addend1, ptr %addend1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addend1.addr, metadata !4082, metadata !DIExpression()), !dbg !4085
  store i64 %addend2, ptr %addend2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addend2.addr, metadata !4083, metadata !DIExpression()), !dbg !4086
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #16, !dbg !4087
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !4084, metadata !DIExpression()), !dbg !4088
  %0 = load i64, ptr %addend1.addr, align 8, !dbg !4089
  %1 = load i64, ptr %addend2.addr, align 8, !dbg !4089
  %2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %0, i64 %1), !dbg !4089
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !4089
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !4089
  store i64 %4, ptr %bytes, align 8, !dbg !4089
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #17, !dbg !4089
  br i1 %call, label %if.then, label %if.end, !dbg !4091

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !4092
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4092

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %bytes, align 8, !dbg !4093
  store i64 %5, ptr %retval, align 8, !dbg !4094
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4094

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #16, !dbg !4095
  %6 = load i64, ptr %retval, align 8, !dbg !4095
  ret i64 %6, !dbg !4095
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @size_mul(i64 noundef %factor1, i64 noundef %factor2) #6 align 16 !dbg !4096 {
entry:
  %retval = alloca i64, align 8
  %factor1.addr = alloca i64, align 8
  %factor2.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %factor1, ptr %factor1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %factor1.addr, metadata !4098, metadata !DIExpression()), !dbg !4101
  store i64 %factor2, ptr %factor2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %factor2.addr, metadata !4099, metadata !DIExpression()), !dbg !4102
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #16, !dbg !4103
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !4100, metadata !DIExpression()), !dbg !4104
  %0 = load i64, ptr %factor1.addr, align 8, !dbg !4105
  %1 = load i64, ptr %factor2.addr, align 8, !dbg !4105
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !4105
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !4105
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !4105
  store i64 %4, ptr %bytes, align 8, !dbg !4105
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #17, !dbg !4105
  br i1 %call, label %if.then, label %if.end, !dbg !4107

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !4108
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4108

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %bytes, align 8, !dbg !4109
  store i64 %5, ptr %retval, align 8, !dbg !4110
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4110

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #16, !dbg !4111
  %6 = load i64, ptr %retval, align 8, !dbg !4111
  ret i64 %6, !dbg !4111
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4112 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #5 align 16 !dbg !4113 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4117, metadata !DIExpression()), !dbg !4119
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !4118, metadata !DIExpression()), !dbg !4120
  %0 = load i64, ptr %size.addr, align 8, !dbg !4121
  %tobool = icmp ne i64 %0, 0, !dbg !4121
  br i1 %tobool, label %if.end, label %if.then, !dbg !4123

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4124
  br label %return, !dbg !4124

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !4125
  %cmp = icmp ule i64 %1, 8, !dbg !4127
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !4128

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !4129
  br label %return, !dbg !4129

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !4130
  %cmp3 = icmp ugt i64 %2, 64, !dbg !4132
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !4133

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !4134
  %cmp4 = icmp ule i64 %3, 96, !dbg !4135
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !4136

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !4137
  br label %return, !dbg !4137

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !4138
  %cmp7 = icmp ugt i64 %4, 128, !dbg !4140
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !4141

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !4142
  %cmp9 = icmp ule i64 %5, 192, !dbg !4143
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !4144

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !4145
  br label %return, !dbg !4145

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !4146
  %cmp12 = icmp ule i64 %6, 8, !dbg !4148
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !4149

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !4150
  br label %return, !dbg !4150

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !4151
  %cmp15 = icmp ule i64 %7, 16, !dbg !4153
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !4154

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !4155
  br label %return, !dbg !4155

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !4156
  %cmp18 = icmp ule i64 %8, 32, !dbg !4158
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !4159

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !4160
  br label %return, !dbg !4160

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !4161
  %cmp21 = icmp ule i64 %9, 64, !dbg !4163
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !4164

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !4165
  br label %return, !dbg !4165

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !4166
  %cmp24 = icmp ule i64 %10, 128, !dbg !4168
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !4169

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !4170
  br label %return, !dbg !4170

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !4171
  %cmp27 = icmp ule i64 %11, 256, !dbg !4173
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !4174

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !4175
  br label %return, !dbg !4175

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !4176
  %cmp30 = icmp ule i64 %12, 512, !dbg !4178
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !4179

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !4180
  br label %return, !dbg !4180

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !4181
  %cmp33 = icmp ule i64 %13, 1024, !dbg !4183
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !4184

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !4185
  br label %return, !dbg !4185

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !4186
  %cmp36 = icmp ule i64 %14, 2048, !dbg !4188
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !4189

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !4190
  br label %return, !dbg !4190

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !4191
  %cmp39 = icmp ule i64 %15, 4096, !dbg !4193
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !4194

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !4195
  br label %return, !dbg !4195

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !4196
  %cmp42 = icmp ule i64 %16, 8192, !dbg !4198
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !4199

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !4200
  br label %return, !dbg !4200

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !4201
  %cmp45 = icmp ule i64 %17, 16384, !dbg !4203
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !4204

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !4205
  br label %return, !dbg !4205

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !4206
  %cmp48 = icmp ule i64 %18, 32768, !dbg !4208
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !4209

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !4210
  br label %return, !dbg !4210

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !4211
  %cmp51 = icmp ule i64 %19, 65536, !dbg !4213
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !4214

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !4215
  br label %return, !dbg !4215

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !4216
  %cmp54 = icmp ule i64 %20, 131072, !dbg !4218
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !4219

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !4220
  br label %return, !dbg !4220

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !4221
  %cmp57 = icmp ule i64 %21, 262144, !dbg !4223
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !4224

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !4225
  br label %return, !dbg !4225

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !4226
  %cmp60 = icmp ule i64 %22, 524288, !dbg !4228
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !4229

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !4230
  br label %return, !dbg !4230

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !4231
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !4233
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !4234

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !4235
  br label %return, !dbg !4235

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !4236
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !4238
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !4239

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !4240
  br label %return, !dbg !4240

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !4241, !range !2884, !noundef !323
  %tobool69 = trunc i8 %25 to i1, !dbg !4241
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !4243

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !4244

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_204() #20, !dbg !4245, !srcloc !4248
  unreachable, !dbg !4245

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !4249

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !4250

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !4251

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !4253

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !4251

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 480, i32 0, i64 12) #16, !dbg !4255, !srcloc !4257
  br label %do.end75, !dbg !4255

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !4251

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !4258
  br label %return, !dbg !4258

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !4259
  ret i32 %26, !dbg !4259
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !4260 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #5 align 16 !dbg !4266 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4270, metadata !DIExpression()), !dbg !4272
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !4271, metadata !DIExpression()), !dbg !4273
  %0 = load i32, ptr %flags.addr, align 4, !dbg !4274
  %and = and i32 %0, 17, !dbg !4274
  %cmp = icmp eq i32 %and, 0, !dbg !4274
  %lnot = xor i1 %cmp, true, !dbg !4274
  %lnot1 = xor i1 %lnot, true, !dbg !4274
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4274
  %conv = sext i32 %lnot.ext to i64, !dbg !4274
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !4274
  %tobool = icmp ne i64 %expval, 0, !dbg !4274
  br i1 %tobool, label %if.then, label %if.end, !dbg !4276

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4277
  br label %return, !dbg !4277

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4278
  %and2 = and i32 %1, 1, !dbg !4280
  %tobool3 = icmp ne i32 %and2, 0, !dbg !4280
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4281

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !4282
  br label %return, !dbg !4282

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !4283
  br label %return, !dbg !4283

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !4285
  ret i32 %2, !dbg !4285
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4286 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #12

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !4287 dso_local void @__compiletime_assert_204() #14

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #6 align 16 !dbg !4288 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !4292, metadata !DIExpression()), !dbg !4293
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !4294, !range !2884, !noundef !323
  %tobool = trunc i8 %0 to i1, !dbg !4294
  %lnot = xor i1 %tobool, true, !dbg !4294
  %lnot1 = xor i1 %lnot, true, !dbg !4294
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4294
  %conv = sext i32 %lnot.ext to i64, !dbg !4294
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4294
  %tobool2 = icmp ne i64 %expval, 0, !dbg !4294
  ret i1 %tobool2, !dbg !4295
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4296 dso_local void @cond_synchronize_rcu(i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4300 dso_local zeroext i1 @poll_state_synchronize_srcu(ptr noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4303 dso_local void @synchronize_srcu(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4306 dso_local void @__static_call_update(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4309 dso_local i64 @get_state_synchronize_rcu() #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4312 dso_local i64 @start_poll_synchronize_srcu(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @func_remove(ptr noundef %funcs, ptr noundef %tp_func) #1 align 16 !dbg !4315 {
entry:
  %retval = alloca ptr, align 8
  %funcs.addr = alloca ptr, align 8
  %tp_func.addr = alloca ptr, align 8
  %nr_probes = alloca i32, align 4
  %nr_del = alloca i32, align 4
  %i = alloca i32, align 4
  %old = alloca ptr, align 8
  %new = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %funcs, ptr %funcs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %funcs.addr, metadata !4319, metadata !DIExpression()), !dbg !4329
  store ptr %tp_func, ptr %tp_func.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tp_func.addr, metadata !4320, metadata !DIExpression()), !dbg !4330
  call void @llvm.lifetime.start.p0(i64 4, ptr %nr_probes) #16, !dbg !4331
  call void @llvm.dbg.declare(metadata ptr %nr_probes, metadata !4321, metadata !DIExpression()), !dbg !4332
  store i32 0, ptr %nr_probes, align 4, !dbg !4332
  call void @llvm.lifetime.start.p0(i64 4, ptr %nr_del) #16, !dbg !4331
  call void @llvm.dbg.declare(metadata ptr %nr_del, metadata !4322, metadata !DIExpression()), !dbg !4333
  store i32 0, ptr %nr_del, align 4, !dbg !4333
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !4331
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4323, metadata !DIExpression()), !dbg !4334
  call void @llvm.lifetime.start.p0(i64 8, ptr %old) #16, !dbg !4335
  call void @llvm.dbg.declare(metadata ptr %old, metadata !4324, metadata !DIExpression()), !dbg !4336
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #16, !dbg !4335
  call void @llvm.dbg.declare(metadata ptr %new, metadata !4325, metadata !DIExpression()), !dbg !4337
  %0 = load ptr, ptr %funcs.addr, align 8, !dbg !4338
  %1 = load ptr, ptr %0, align 8, !dbg !4339
  store ptr %1, ptr %old, align 8, !dbg !4340
  %2 = load ptr, ptr %old, align 8, !dbg !4341
  %tobool = icmp ne ptr %2, null, !dbg !4341
  br i1 %tobool, label %if.end, label %if.then, !dbg !4343

if.then:                                          ; preds = %entry
  %call = call ptr @ERR_PTR(i64 noundef -2) #17, !dbg !4344
  store ptr %call, ptr %retval, align 8, !dbg !4345
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4345

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %funcs.addr, align 8, !dbg !4346
  %4 = load ptr, ptr %3, align 8, !dbg !4347
  call void @debug_print_probes(ptr noundef %4) #17, !dbg !4348
  %5 = load ptr, ptr %tp_func.addr, align 8, !dbg !4349
  %func = getelementptr inbounds %struct.tracepoint_func, ptr %5, i32 0, i32 0, !dbg !4351
  %6 = load ptr, ptr %func, align 8, !dbg !4351
  %tobool1 = icmp ne ptr %6, null, !dbg !4349
  br i1 %tobool1, label %if.then2, label %if.end20, !dbg !4352

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %nr_probes, align 4, !dbg !4353
  br label %for.cond, !dbg !4356

for.cond:                                         ; preds = %for.inc, %if.then2
  %7 = load ptr, ptr %old, align 8, !dbg !4357
  %8 = load i32, ptr %nr_probes, align 4, !dbg !4359
  %idxprom = sext i32 %8 to i64, !dbg !4357
  %arrayidx = getelementptr %struct.tracepoint_func, ptr %7, i64 %idxprom, !dbg !4357
  %func3 = getelementptr inbounds %struct.tracepoint_func, ptr %arrayidx, i32 0, i32 0, !dbg !4360
  %9 = load ptr, ptr %func3, align 8, !dbg !4360
  %tobool4 = icmp ne ptr %9, null, !dbg !4361
  br i1 %tobool4, label %for.body, label %for.end, !dbg !4361

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %old, align 8, !dbg !4362
  %11 = load i32, ptr %nr_probes, align 4, !dbg !4365
  %idxprom5 = sext i32 %11 to i64, !dbg !4362
  %arrayidx6 = getelementptr %struct.tracepoint_func, ptr %10, i64 %idxprom5, !dbg !4362
  %func7 = getelementptr inbounds %struct.tracepoint_func, ptr %arrayidx6, i32 0, i32 0, !dbg !4366
  %12 = load ptr, ptr %func7, align 8, !dbg !4366
  %13 = load ptr, ptr %tp_func.addr, align 8, !dbg !4367
  %func8 = getelementptr inbounds %struct.tracepoint_func, ptr %13, i32 0, i32 0, !dbg !4368
  %14 = load ptr, ptr %func8, align 8, !dbg !4368
  %cmp = icmp eq ptr %12, %14, !dbg !4369
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !4370

land.lhs.true:                                    ; preds = %for.body
  %15 = load ptr, ptr %old, align 8, !dbg !4371
  %16 = load i32, ptr %nr_probes, align 4, !dbg !4372
  %idxprom9 = sext i32 %16 to i64, !dbg !4371
  %arrayidx10 = getelementptr %struct.tracepoint_func, ptr %15, i64 %idxprom9, !dbg !4371
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %arrayidx10, i32 0, i32 1, !dbg !4373
  %17 = load ptr, ptr %data, align 8, !dbg !4373
  %18 = load ptr, ptr %tp_func.addr, align 8, !dbg !4374
  %data11 = getelementptr inbounds %struct.tracepoint_func, ptr %18, i32 0, i32 1, !dbg !4375
  %19 = load ptr, ptr %data11, align 8, !dbg !4375
  %cmp12 = icmp eq ptr %17, %19, !dbg !4376
  br i1 %cmp12, label %if.then17, label %lor.lhs.false, !dbg !4377

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body
  %20 = load ptr, ptr %old, align 8, !dbg !4378
  %21 = load i32, ptr %nr_probes, align 4, !dbg !4379
  %idxprom13 = sext i32 %21 to i64, !dbg !4378
  %arrayidx14 = getelementptr %struct.tracepoint_func, ptr %20, i64 %idxprom13, !dbg !4378
  %func15 = getelementptr inbounds %struct.tracepoint_func, ptr %arrayidx14, i32 0, i32 0, !dbg !4380
  %22 = load ptr, ptr %func15, align 8, !dbg !4380
  %cmp16 = icmp eq ptr %22, @tp_stub_func, !dbg !4381
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !4382

if.then17:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %23 = load i32, ptr %nr_del, align 4, !dbg !4383
  %inc = add i32 %23, 1, !dbg !4383
  store i32 %inc, ptr %nr_del, align 4, !dbg !4383
  br label %if.end18, !dbg !4384

if.end18:                                         ; preds = %if.then17, %lor.lhs.false
  br label %for.inc, !dbg !4385

for.inc:                                          ; preds = %if.end18
  %24 = load i32, ptr %nr_probes, align 4, !dbg !4386
  %inc19 = add i32 %24, 1, !dbg !4386
  store i32 %inc19, ptr %nr_probes, align 4, !dbg !4386
  br label %for.cond, !dbg !4387, !llvm.loop !4388

for.end:                                          ; preds = %for.cond
  br label %if.end20, !dbg !4390

if.end20:                                         ; preds = %for.end, %if.end
  %25 = load i32, ptr %nr_probes, align 4, !dbg !4391
  %26 = load i32, ptr %nr_del, align 4, !dbg !4392
  %sub = sub i32 %25, %26, !dbg !4393
  %cmp21 = icmp eq i32 %sub, 0, !dbg !4394
  br i1 %cmp21, label %if.then22, label %if.else, !dbg !4395

if.then22:                                        ; preds = %if.end20
  %27 = load ptr, ptr %funcs.addr, align 8, !dbg !4396
  store ptr null, ptr %27, align 8, !dbg !4398
  %28 = load ptr, ptr %funcs.addr, align 8, !dbg !4399
  %29 = load ptr, ptr %28, align 8, !dbg !4400
  call void @debug_print_probes(ptr noundef %29) #17, !dbg !4401
  %30 = load ptr, ptr %old, align 8, !dbg !4402
  store ptr %30, ptr %retval, align 8, !dbg !4403
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4403

if.else:                                          ; preds = %if.end20
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #16, !dbg !4404
  call void @llvm.dbg.declare(metadata ptr %j, metadata !4326, metadata !DIExpression()), !dbg !4405
  store i32 0, ptr %j, align 4, !dbg !4405
  %31 = load i32, ptr %nr_probes, align 4, !dbg !4406
  %32 = load i32, ptr %nr_del, align 4, !dbg !4407
  %sub23 = sub i32 %31, %32, !dbg !4408
  %add = add i32 %sub23, 1, !dbg !4409
  %call24 = call ptr @allocate_probes(i32 noundef %add) #17, !dbg !4410
  store ptr %call24, ptr %new, align 8, !dbg !4411
  %33 = load ptr, ptr %new, align 8, !dbg !4412
  %tobool25 = icmp ne ptr %33, null, !dbg !4412
  br i1 %tobool25, label %if.then26, label %if.else63, !dbg !4414

if.then26:                                        ; preds = %if.else
  store i32 0, ptr %i, align 4, !dbg !4415
  br label %for.cond27, !dbg !4418

for.cond27:                                       ; preds = %for.inc56, %if.then26
  %34 = load ptr, ptr %old, align 8, !dbg !4419
  %35 = load i32, ptr %i, align 4, !dbg !4421
  %idxprom28 = sext i32 %35 to i64, !dbg !4419
  %arrayidx29 = getelementptr %struct.tracepoint_func, ptr %34, i64 %idxprom28, !dbg !4419
  %func30 = getelementptr inbounds %struct.tracepoint_func, ptr %arrayidx29, i32 0, i32 0, !dbg !4422
  %36 = load ptr, ptr %func30, align 8, !dbg !4422
  %tobool31 = icmp ne ptr %36, null, !dbg !4423
  br i1 %tobool31, label %for.body32, label %for.end58, !dbg !4423

for.body32:                                       ; preds = %for.cond27
  %37 = load ptr, ptr %old, align 8, !dbg !4424
  %38 = load i32, ptr %i, align 4, !dbg !4427
  %idxprom33 = sext i32 %38 to i64, !dbg !4424
  %arrayidx34 = getelementptr %struct.tracepoint_func, ptr %37, i64 %idxprom33, !dbg !4424
  %func35 = getelementptr inbounds %struct.tracepoint_func, ptr %arrayidx34, i32 0, i32 0, !dbg !4428
  %39 = load ptr, ptr %func35, align 8, !dbg !4428
  %40 = load ptr, ptr %tp_func.addr, align 8, !dbg !4429
  %func36 = getelementptr inbounds %struct.tracepoint_func, ptr %40, i32 0, i32 0, !dbg !4430
  %41 = load ptr, ptr %func36, align 8, !dbg !4430
  %cmp37 = icmp ne ptr %39, %41, !dbg !4431
  br i1 %cmp37, label %land.lhs.true44, label %lor.lhs.false38, !dbg !4432

lor.lhs.false38:                                  ; preds = %for.body32
  %42 = load ptr, ptr %old, align 8, !dbg !4433
  %43 = load i32, ptr %i, align 4, !dbg !4434
  %idxprom39 = sext i32 %43 to i64, !dbg !4433
  %arrayidx40 = getelementptr %struct.tracepoint_func, ptr %42, i64 %idxprom39, !dbg !4433
  %data41 = getelementptr inbounds %struct.tracepoint_func, ptr %arrayidx40, i32 0, i32 1, !dbg !4435
  %44 = load ptr, ptr %data41, align 8, !dbg !4435
  %45 = load ptr, ptr %tp_func.addr, align 8, !dbg !4436
  %data42 = getelementptr inbounds %struct.tracepoint_func, ptr %45, i32 0, i32 1, !dbg !4437
  %46 = load ptr, ptr %data42, align 8, !dbg !4437
  %cmp43 = icmp ne ptr %44, %46, !dbg !4438
  br i1 %cmp43, label %land.lhs.true44, label %if.end55, !dbg !4439

land.lhs.true44:                                  ; preds = %lor.lhs.false38, %for.body32
  %47 = load ptr, ptr %old, align 8, !dbg !4440
  %48 = load i32, ptr %i, align 4, !dbg !4441
  %idxprom45 = sext i32 %48 to i64, !dbg !4440
  %arrayidx46 = getelementptr %struct.tracepoint_func, ptr %47, i64 %idxprom45, !dbg !4440
  %func47 = getelementptr inbounds %struct.tracepoint_func, ptr %arrayidx46, i32 0, i32 0, !dbg !4442
  %49 = load ptr, ptr %func47, align 8, !dbg !4442
  %cmp48 = icmp ne ptr %49, @tp_stub_func, !dbg !4443
  br i1 %cmp48, label %if.then49, label %if.end55, !dbg !4444

if.then49:                                        ; preds = %land.lhs.true44
  %50 = load ptr, ptr %new, align 8, !dbg !4445
  %51 = load i32, ptr %j, align 4, !dbg !4446
  %inc50 = add i32 %51, 1, !dbg !4446
  store i32 %inc50, ptr %j, align 4, !dbg !4446
  %idxprom51 = sext i32 %51 to i64, !dbg !4445
  %arrayidx52 = getelementptr %struct.tracepoint_func, ptr %50, i64 %idxprom51, !dbg !4445
  %52 = load ptr, ptr %old, align 8, !dbg !4447
  %53 = load i32, ptr %i, align 4, !dbg !4448
  %idxprom53 = sext i32 %53 to i64, !dbg !4447
  %arrayidx54 = getelementptr %struct.tracepoint_func, ptr %52, i64 %idxprom53, !dbg !4447
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx52, ptr align 8 %arrayidx54, i64 24, i1 false), !dbg !4447
  br label %if.end55, !dbg !4445

if.end55:                                         ; preds = %if.then49, %land.lhs.true44, %lor.lhs.false38
  br label %for.inc56, !dbg !4449

for.inc56:                                        ; preds = %if.end55
  %54 = load i32, ptr %i, align 4, !dbg !4450
  %inc57 = add i32 %54, 1, !dbg !4450
  store i32 %inc57, ptr %i, align 4, !dbg !4450
  br label %for.cond27, !dbg !4451, !llvm.loop !4452

for.end58:                                        ; preds = %for.cond27
  %55 = load ptr, ptr %new, align 8, !dbg !4454
  %56 = load i32, ptr %nr_probes, align 4, !dbg !4455
  %57 = load i32, ptr %nr_del, align 4, !dbg !4456
  %sub59 = sub i32 %56, %57, !dbg !4457
  %idxprom60 = sext i32 %sub59 to i64, !dbg !4454
  %arrayidx61 = getelementptr %struct.tracepoint_func, ptr %55, i64 %idxprom60, !dbg !4454
  %func62 = getelementptr inbounds %struct.tracepoint_func, ptr %arrayidx61, i32 0, i32 0, !dbg !4458
  store ptr null, ptr %func62, align 8, !dbg !4459
  %58 = load ptr, ptr %new, align 8, !dbg !4460
  %59 = load ptr, ptr %funcs.addr, align 8, !dbg !4461
  store ptr %58, ptr %59, align 8, !dbg !4462
  br label %if.end95, !dbg !4463

if.else63:                                        ; preds = %if.else
  store i32 0, ptr %i, align 4, !dbg !4464
  br label %for.cond64, !dbg !4467

for.cond64:                                       ; preds = %for.inc92, %if.else63
  %60 = load ptr, ptr %old, align 8, !dbg !4468
  %61 = load i32, ptr %i, align 4, !dbg !4470
  %idxprom65 = sext i32 %61 to i64, !dbg !4468
  %arrayidx66 = getelementptr %struct.tracepoint_func, ptr %60, i64 %idxprom65, !dbg !4468
  %func67 = getelementptr inbounds %struct.tracepoint_func, ptr %arrayidx66, i32 0, i32 0, !dbg !4471
  %62 = load ptr, ptr %func67, align 8, !dbg !4471
  %tobool68 = icmp ne ptr %62, null, !dbg !4472
  br i1 %tobool68, label %for.body69, label %for.end94, !dbg !4472

for.body69:                                       ; preds = %for.cond64
  %63 = load ptr, ptr %old, align 8, !dbg !4473
  %64 = load i32, ptr %i, align 4, !dbg !4476
  %idxprom70 = sext i32 %64 to i64, !dbg !4473
  %arrayidx71 = getelementptr %struct.tracepoint_func, ptr %63, i64 %idxprom70, !dbg !4473
  %func72 = getelementptr inbounds %struct.tracepoint_func, ptr %arrayidx71, i32 0, i32 0, !dbg !4477
  %65 = load ptr, ptr %func72, align 8, !dbg !4477
  %66 = load ptr, ptr %tp_func.addr, align 8, !dbg !4478
  %func73 = getelementptr inbounds %struct.tracepoint_func, ptr %66, i32 0, i32 0, !dbg !4479
  %67 = load ptr, ptr %func73, align 8, !dbg !4479
  %cmp74 = icmp eq ptr %65, %67, !dbg !4480
  br i1 %cmp74, label %land.lhs.true75, label %if.end91, !dbg !4481

land.lhs.true75:                                  ; preds = %for.body69
  %68 = load ptr, ptr %old, align 8, !dbg !4482
  %69 = load i32, ptr %i, align 4, !dbg !4483
  %idxprom76 = sext i32 %69 to i64, !dbg !4482
  %arrayidx77 = getelementptr %struct.tracepoint_func, ptr %68, i64 %idxprom76, !dbg !4482
  %data78 = getelementptr inbounds %struct.tracepoint_func, ptr %arrayidx77, i32 0, i32 1, !dbg !4484
  %70 = load ptr, ptr %data78, align 8, !dbg !4484
  %71 = load ptr, ptr %tp_func.addr, align 8, !dbg !4485
  %data79 = getelementptr inbounds %struct.tracepoint_func, ptr %71, i32 0, i32 1, !dbg !4486
  %72 = load ptr, ptr %data79, align 8, !dbg !4486
  %cmp80 = icmp eq ptr %70, %72, !dbg !4487
  br i1 %cmp80, label %if.then81, label %if.end91, !dbg !4488

if.then81:                                        ; preds = %land.lhs.true75
  br label %do.body, !dbg !4489

do.body:                                          ; preds = %if.then81
  br label %do.body82, !dbg !4490

do.body82:                                        ; preds = %do.body
  br label %do.cond, !dbg !4492

do.cond:                                          ; preds = %do.body82
  br label %do.end, !dbg !4492

do.end:                                           ; preds = %do.cond
  br label %do.body83, !dbg !4490

do.body83:                                        ; preds = %do.end
  %73 = load ptr, ptr %old, align 8, !dbg !4494
  %74 = load i32, ptr %i, align 4, !dbg !4494
  %idxprom84 = sext i32 %74 to i64, !dbg !4494
  %arrayidx85 = getelementptr %struct.tracepoint_func, ptr %73, i64 %idxprom84, !dbg !4494
  %func86 = getelementptr inbounds %struct.tracepoint_func, ptr %arrayidx85, i32 0, i32 0, !dbg !4494
  store volatile ptr @tp_stub_func, ptr %func86, align 8, !dbg !4494
  br label %do.cond87, !dbg !4494

do.cond87:                                        ; preds = %do.body83
  br label %do.end88, !dbg !4494

do.end88:                                         ; preds = %do.cond87
  br label %do.cond89, !dbg !4490

do.cond89:                                        ; preds = %do.end88
  br label %do.end90, !dbg !4490

do.end90:                                         ; preds = %do.cond89
  br label %if.end91, !dbg !4490

if.end91:                                         ; preds = %do.end90, %land.lhs.true75, %for.body69
  br label %for.inc92, !dbg !4496

for.inc92:                                        ; preds = %if.end91
  %75 = load i32, ptr %i, align 4, !dbg !4497
  %inc93 = add i32 %75, 1, !dbg !4497
  store i32 %inc93, ptr %i, align 4, !dbg !4497
  br label %for.cond64, !dbg !4498, !llvm.loop !4499

for.end94:                                        ; preds = %for.cond64
  %76 = load ptr, ptr %old, align 8, !dbg !4501
  %77 = load ptr, ptr %funcs.addr, align 8, !dbg !4502
  store ptr %76, ptr %77, align 8, !dbg !4503
  br label %if.end95

if.end95:                                         ; preds = %for.end94, %for.end58
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #16, !dbg !4504
  br label %if.end96

if.end96:                                         ; preds = %if.end95
  %78 = load ptr, ptr %funcs.addr, align 8, !dbg !4505
  %79 = load ptr, ptr %78, align 8, !dbg !4506
  call void @debug_print_probes(ptr noundef %79) #17, !dbg !4507
  %80 = load ptr, ptr %old, align 8, !dbg !4508
  store ptr %80, ptr %retval, align 8, !dbg !4509
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4509

cleanup:                                          ; preds = %if.end96, %if.then22, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #16, !dbg !4510
  call void @llvm.lifetime.end.p0(i64 8, ptr %old) #16, !dbg !4510
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !4510
  call void @llvm.lifetime.end.p0(i64 4, ptr %nr_del) #16, !dbg !4510
  call void @llvm.lifetime.end.p0(i64 4, ptr %nr_probes) #16, !dbg !4510
  %81 = load ptr, ptr %retval, align 8, !dbg !4510
  ret ptr %81, !dbg !4510
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4511 dso_local void @static_key_disable(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4512 dso_local i32 @register_module_notifier(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @tracepoint_module_notify(ptr noundef %self, i64 noundef %val, ptr noundef %data) #1 align 16 !dbg !4513 {
entry:
  %self.addr = alloca ptr, align 8
  %val.addr = alloca i64, align 8
  %data.addr = alloca ptr, align 8
  %mod = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %self, ptr %self.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %self.addr, metadata !4515, metadata !DIExpression()), !dbg !4520
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !4516, metadata !DIExpression()), !dbg !4521
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !4517, metadata !DIExpression()), !dbg !4522
  call void @llvm.lifetime.start.p0(i64 8, ptr %mod) #16, !dbg !4523
  call void @llvm.dbg.declare(metadata ptr %mod, metadata !4518, metadata !DIExpression()), !dbg !4524
  %0 = load ptr, ptr %data.addr, align 8, !dbg !4525
  store ptr %0, ptr %mod, align 8, !dbg !4524
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !4526
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4519, metadata !DIExpression()), !dbg !4527
  store i32 0, ptr %ret, align 4, !dbg !4527
  %1 = load i64, ptr %val.addr, align 8, !dbg !4528
  switch i64 %1, label %sw.epilog [
    i64 1, label %sw.bb
    i64 0, label %sw.epilog
    i64 2, label %sw.bb1
    i64 3, label %sw.epilog
  ], !dbg !4529

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %mod, align 8, !dbg !4530
  %call = call i32 @tracepoint_module_coming(ptr noundef %2) #17, !dbg !4532
  store i32 %call, ptr %ret, align 4, !dbg !4533
  br label %sw.epilog, !dbg !4534

sw.bb1:                                           ; preds = %entry
  %3 = load ptr, ptr %mod, align 8, !dbg !4535
  call void @tracepoint_module_going(ptr noundef %3) #17, !dbg !4536
  br label %sw.epilog, !dbg !4537

sw.epilog:                                        ; preds = %entry, %entry, %sw.bb1, %entry, %sw.bb
  %4 = load i32, ptr %ret, align 4, !dbg !4538
  %call2 = call i32 @notifier_from_errno(i32 noundef %4) #17, !dbg !4539
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !4540
  call void @llvm.lifetime.end.p0(i64 8, ptr %mod) #16, !dbg !4540
  ret i32 %call2, !dbg !4541
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @tracepoint_module_coming(ptr noundef %mod) #1 align 16 !dbg !4542 {
entry:
  %retval = alloca i32, align 4
  %mod.addr = alloca ptr, align 8
  %tp_mod = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !4544, metadata !DIExpression()), !dbg !4546
  call void @llvm.lifetime.start.p0(i64 8, ptr %tp_mod) #16, !dbg !4547
  call void @llvm.dbg.declare(metadata ptr %tp_mod, metadata !4545, metadata !DIExpression()), !dbg !4548
  %0 = load ptr, ptr %mod.addr, align 8, !dbg !4549
  %num_tracepoints = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 37, !dbg !4551
  %1 = load i32, ptr %num_tracepoints, align 4, !dbg !4551
  %tobool = icmp ne i32 %1, 0, !dbg !4549
  br i1 %tobool, label %if.end, label %if.then, !dbg !4552

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4553
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4553

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %mod.addr, align 8, !dbg !4554
  %call = call zeroext i1 @trace_module_has_bad_taint(ptr noundef %2) #17, !dbg !4556
  br i1 %call, label %if.then1, label %if.end2, !dbg !4557

if.then1:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !4558
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4558

if.end2:                                          ; preds = %if.end
  %call3 = call noalias ptr @kmalloc(i64 noundef 24, i32 noundef 3264) #18, !dbg !4559
  store ptr %call3, ptr %tp_mod, align 8, !dbg !4560
  %3 = load ptr, ptr %tp_mod, align 8, !dbg !4561
  %tobool4 = icmp ne ptr %3, null, !dbg !4561
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !4563

if.then5:                                         ; preds = %if.end2
  store i32 -12, ptr %retval, align 4, !dbg !4564
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4564

if.end6:                                          ; preds = %if.end2
  %4 = load ptr, ptr %mod.addr, align 8, !dbg !4565
  %5 = load ptr, ptr %tp_mod, align 8, !dbg !4566
  %mod7 = getelementptr inbounds %struct.tp_module, ptr %5, i32 0, i32 1, !dbg !4567
  store ptr %4, ptr %mod7, align 8, !dbg !4568
  call void @mutex_lock(ptr noundef @tracepoint_module_list_mutex) #17, !dbg !4569
  %6 = load ptr, ptr %tp_mod, align 8, !dbg !4570
  %list = getelementptr inbounds %struct.tp_module, ptr %6, i32 0, i32 0, !dbg !4571
  call void @list_add_tail(ptr noundef %list, ptr noundef @tracepoint_module_list) #17, !dbg !4572
  %7 = load ptr, ptr %tp_mod, align 8, !dbg !4573
  %call8 = call i32 @blocking_notifier_call_chain(ptr noundef @tracepoint_notify_list, i64 noundef 1, ptr noundef %7) #17, !dbg !4574
  call void @mutex_unlock(ptr noundef @tracepoint_module_list_mutex) #17, !dbg !4575
  store i32 0, ptr %retval, align 4, !dbg !4576
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4576

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tp_mod) #16, !dbg !4577
  %8 = load i32, ptr %retval, align 4, !dbg !4577
  ret i32 %8, !dbg !4577
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tracepoint_module_going(ptr noundef %mod) #1 align 16 !dbg !4578 {
entry:
  %mod.addr = alloca ptr, align 8
  %tp_mod = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr9 = alloca ptr, align 8
  %tmp11 = alloca ptr, align 8
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !4580, metadata !DIExpression()), !dbg !4588
  call void @llvm.lifetime.start.p0(i64 8, ptr %tp_mod) #16, !dbg !4589
  call void @llvm.dbg.declare(metadata ptr %tp_mod, metadata !4581, metadata !DIExpression()), !dbg !4590
  %0 = load ptr, ptr %mod.addr, align 8, !dbg !4591
  %num_tracepoints = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 37, !dbg !4593
  %1 = load i32, ptr %num_tracepoints, align 4, !dbg !4593
  %tobool = icmp ne i32 %1, 0, !dbg !4591
  br i1 %tobool, label %if.end, label %if.then, !dbg !4594

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4595

if.end:                                           ; preds = %entry
  call void @mutex_lock(ptr noundef @tracepoint_module_list_mutex) #17, !dbg !4596
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !4597
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4582, metadata !DIExpression()), !dbg !4597
  %2 = load ptr, ptr @tracepoint_module_list, align 8, !dbg !4597
  store ptr %2, ptr %__mptr, align 8, !dbg !4597
  %3 = load ptr, ptr %__mptr, align 8, !dbg !4597
  %add.ptr = getelementptr i8, ptr %3, i64 0, !dbg !4597
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4597
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !4598
  %4 = load ptr, ptr %tmp, align 8, !dbg !4597
  store ptr %4, ptr %tp_mod, align 8, !dbg !4598
  br label %for.cond, !dbg !4598

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load ptr, ptr %tp_mod, align 8, !dbg !4599
  %list = getelementptr inbounds %struct.tp_module, ptr %5, i32 0, i32 0, !dbg !4599
  %cmp = icmp eq ptr %list, @tracepoint_module_list, !dbg !4599
  %lnot = xor i1 %cmp, true, !dbg !4599
  br i1 %lnot, label %for.body, label %for.end, !dbg !4598

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %tp_mod, align 8, !dbg !4600
  %mod1 = getelementptr inbounds %struct.tp_module, ptr %6, i32 0, i32 1, !dbg !4603
  %7 = load ptr, ptr %mod1, align 8, !dbg !4603
  %8 = load ptr, ptr %mod.addr, align 8, !dbg !4604
  %cmp2 = icmp eq ptr %7, %8, !dbg !4605
  br i1 %cmp2, label %if.then3, label %if.end8, !dbg !4606

if.then3:                                         ; preds = %for.body
  %9 = load ptr, ptr %tp_mod, align 8, !dbg !4607
  %call = call i32 @blocking_notifier_call_chain(ptr noundef @tracepoint_notify_list, i64 noundef 2, ptr noundef %9) #17, !dbg !4609
  %10 = load ptr, ptr %tp_mod, align 8, !dbg !4610
  %list4 = getelementptr inbounds %struct.tp_module, ptr %10, i32 0, i32 0, !dbg !4611
  call void @list_del(ptr noundef %list4) #17, !dbg !4612
  %11 = load ptr, ptr %tp_mod, align 8, !dbg !4613
  call void @kfree(ptr noundef %11) #17, !dbg !4614
  %12 = load ptr, ptr %mod.addr, align 8, !dbg !4615
  %tracepoints_ptrs = getelementptr inbounds %struct.module, ptr %12, i32 0, i32 38, !dbg !4616
  %13 = load ptr, ptr %tracepoints_ptrs, align 8, !dbg !4616
  %14 = load ptr, ptr %mod.addr, align 8, !dbg !4617
  %tracepoints_ptrs5 = getelementptr inbounds %struct.module, ptr %14, i32 0, i32 38, !dbg !4618
  %15 = load ptr, ptr %tracepoints_ptrs5, align 8, !dbg !4618
  %16 = load ptr, ptr %mod.addr, align 8, !dbg !4619
  %num_tracepoints6 = getelementptr inbounds %struct.module, ptr %16, i32 0, i32 37, !dbg !4620
  %17 = load i32, ptr %num_tracepoints6, align 4, !dbg !4620
  %idx.ext = zext i32 %17 to i64, !dbg !4621
  %add.ptr7 = getelementptr i32, ptr %15, i64 %idx.ext, !dbg !4621
  call void @for_each_tracepoint_range(ptr noundef %13, ptr noundef %add.ptr7, ptr noundef @tp_module_going_check_quiescent, ptr noundef null) #17, !dbg !4622
  br label %for.end, !dbg !4623

if.end8:                                          ; preds = %for.body
  br label %for.inc, !dbg !4624

for.inc:                                          ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr9) #16, !dbg !4625
  call void @llvm.dbg.declare(metadata ptr %__mptr9, metadata !4585, metadata !DIExpression()), !dbg !4625
  %18 = load ptr, ptr %tp_mod, align 8, !dbg !4625
  %list10 = getelementptr inbounds %struct.tp_module, ptr %18, i32 0, i32 0, !dbg !4625
  %next = getelementptr inbounds %struct.list_head, ptr %list10, i32 0, i32 0, !dbg !4625
  %19 = load ptr, ptr %next, align 8, !dbg !4625
  store ptr %19, ptr %__mptr9, align 8, !dbg !4625
  %20 = load ptr, ptr %__mptr9, align 8, !dbg !4625
  %add.ptr12 = getelementptr i8, ptr %20, i64 0, !dbg !4625
  store ptr %add.ptr12, ptr %tmp11, align 8, !dbg !4625
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr9) #16, !dbg !4599
  %21 = load ptr, ptr %tmp11, align 8, !dbg !4625
  store ptr %21, ptr %tp_mod, align 8, !dbg !4599
  br label %for.cond, !dbg !4599, !llvm.loop !4626

for.end:                                          ; preds = %if.then3, %for.cond
  call void @mutex_unlock(ptr noundef @tracepoint_module_list_mutex) #17, !dbg !4628
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4629
  br label %cleanup, !dbg !4629

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tp_mod) #16, !dbg !4629
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4629

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @notifier_from_errno(i32 noundef %err) #6 align 16 !dbg !4630 {
entry:
  %retval = alloca i32, align 4
  %err.addr = alloca i32, align 4
  store i32 %err, ptr %err.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !4634, metadata !DIExpression()), !dbg !4635
  %0 = load i32, ptr %err.addr, align 4, !dbg !4636
  %tobool = icmp ne i32 %0, 0, !dbg !4636
  br i1 %tobool, label %if.then, label %if.end, !dbg !4638

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %err.addr, align 4, !dbg !4639
  %sub = sub i32 1, %1, !dbg !4640
  %or = or i32 32768, %sub, !dbg !4641
  store i32 %or, ptr %retval, align 4, !dbg !4642
  br label %return, !dbg !4642

if.end:                                           ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !4643
  br label %return, !dbg !4643

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !4644
  ret i32 %2, !dbg !4644
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #6 align 16 !dbg !4645 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4650, metadata !DIExpression()), !dbg !4652
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !4651, metadata !DIExpression()), !dbg !4653
  %0 = load ptr, ptr %new.addr, align 8, !dbg !4654
  %1 = load ptr, ptr %head.addr, align 8, !dbg !4655
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !4656
  %2 = load ptr, ptr %prev, align 8, !dbg !4656
  %3 = load ptr, ptr %head.addr, align 8, !dbg !4657
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #17, !dbg !4658
  ret void, !dbg !4659
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4660 dso_local i32 @blocking_notifier_call_chain(ptr noundef, i64 noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #6 align 16 !dbg !4663 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4667, metadata !DIExpression()), !dbg !4670
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !4668, metadata !DIExpression()), !dbg !4671
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !4669, metadata !DIExpression()), !dbg !4672
  %0 = load ptr, ptr %new.addr, align 8, !dbg !4673
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !4675
  %2 = load ptr, ptr %next.addr, align 8, !dbg !4676
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17, !dbg !4677
  br i1 %call, label %if.end, label %if.then, !dbg !4678

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !4679

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !4680
  %4 = load ptr, ptr %next.addr, align 8, !dbg !4681
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !4682
  store ptr %3, ptr %prev1, align 8, !dbg !4683
  %5 = load ptr, ptr %next.addr, align 8, !dbg !4684
  %6 = load ptr, ptr %new.addr, align 8, !dbg !4685
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !4686
  store ptr %5, ptr %next2, align 8, !dbg !4687
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !4688
  %8 = load ptr, ptr %new.addr, align 8, !dbg !4689
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !4690
  store ptr %7, ptr %prev3, align 8, !dbg !4691
  br label %do.body, !dbg !4692

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !4693

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !4695

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !4693

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !4697
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !4697
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !4697
  store volatile ptr %9, ptr %next6, align 8, !dbg !4697
  br label %do.end7, !dbg !4697

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !4693

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !4699
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #6 align 16 !dbg !4700 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4704, metadata !DIExpression()), !dbg !4707
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !4705, metadata !DIExpression()), !dbg !4708
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !4706, metadata !DIExpression()), !dbg !4709
  ret i1 true, !dbg !4710
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #6 align 16 !dbg !4711 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4715, metadata !DIExpression()), !dbg !4716
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !4717
  call void @__list_del_entry(ptr noundef %0) #17, !dbg !4718
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !4719
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !4720
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !4721
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !4722
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !4723
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !4724
  ret void, !dbg !4725
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tp_module_going_check_quiescent(ptr noundef %tp, ptr noundef %priv) #1 align 16 !dbg !4726 {
entry:
  %tp.addr = alloca ptr, align 8
  %priv.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %tp, ptr %tp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tp.addr, metadata !4728, metadata !DIExpression()), !dbg !4735
  store ptr %priv, ptr %priv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %priv.addr, metadata !4729, metadata !DIExpression()), !dbg !4736
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !4737
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4730, metadata !DIExpression()), !dbg !4737
  %0 = load ptr, ptr %tp.addr, align 8, !dbg !4737
  %funcs = getelementptr inbounds %struct.tracepoint, ptr %0, i32 0, i32 8, !dbg !4737
  %1 = load ptr, ptr %funcs, align 8, !dbg !4737
  %tobool = icmp ne ptr %1, null, !dbg !4737
  %lnot = xor i1 %tobool, true, !dbg !4737
  %lnot1 = xor i1 %lnot, true, !dbg !4737
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4737
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4737
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !4738
  %tobool2 = icmp ne i32 %2, 0, !dbg !4738
  %lnot3 = xor i1 %tobool2, true, !dbg !4738
  %lnot5 = xor i1 %lnot3, true, !dbg !4738
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !4738
  %conv = sext i32 %lnot.ext6 to i64, !dbg !4738
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4738
  %tobool7 = icmp ne i64 %expval, 0, !dbg !4738
  br i1 %tobool7, label %if.then, label %if.end, !dbg !4737

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4738

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !4739
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4732, metadata !DIExpression()), !dbg !4739
  store i32 2307, ptr %__flags, align 4, !dbg !4739
  br label %do.body8, !dbg !4739

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !4740

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !4740

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !4739

do.body9:                                         ; preds = %do.end
  %3 = load i32, ptr %__flags, align 4, !dbg !4742
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 637, i32 %3, i64 12) #16, !dbg !4742, !srcloc !4744
  br label %do.cond10, !dbg !4742

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !4742

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !4739

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !4745

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !4745

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !4738
  br label %do.cond15, !dbg !4739

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !4739

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !4739

if.end:                                           ; preds = %do.end16, %entry
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !4737
  %tobool17 = icmp ne i32 %4, 0, !dbg !4737
  %lnot18 = xor i1 %tobool17, true, !dbg !4737
  %lnot20 = xor i1 %lnot18, true, !dbg !4737
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !4737
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !4737
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !4737
  store i64 %expval23, ptr %tmp, align 8, !dbg !4738
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !4747
  %5 = load i64, ptr %tmp, align 8, !dbg !4737
  ret void, !dbg !4748
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #6 align 16 !dbg !4749 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4751, metadata !DIExpression()), !dbg !4752
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !4753
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #17, !dbg !4755
  br i1 %call, label %if.end, label %if.then, !dbg !4756

if.then:                                          ; preds = %entry
  br label %return, !dbg !4757

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !4758
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !4759
  %2 = load ptr, ptr %prev, align 8, !dbg !4759
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !4760
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !4761
  %4 = load ptr, ptr %next, align 8, !dbg !4761
  call void @__list_del(ptr noundef %2, ptr noundef %4) #17, !dbg !4762
  br label %return, !dbg !4763

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4763
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #6 align 16 !dbg !4764 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4768, metadata !DIExpression()), !dbg !4769
  ret i1 true, !dbg !4770
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #6 align 16 !dbg !4771 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !4773, metadata !DIExpression()), !dbg !4775
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !4774, metadata !DIExpression()), !dbg !4776
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !4777
  %1 = load ptr, ptr %next.addr, align 8, !dbg !4778
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !4779
  store ptr %0, ptr %prev1, align 8, !dbg !4780
  br label %do.body, !dbg !4781

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !4782

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !4784

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !4782

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !4786
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !4786
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !4786
  store volatile ptr %2, ptr %next4, align 8, !dbg !4786
  br label %do.end5, !dbg !4786

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !4782

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !4788
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @tracepoint_ptr_deref(ptr noundef %p) #6 align 16 !dbg !4789 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4793, metadata !DIExpression()), !dbg !4794
  %0 = load ptr, ptr %p.addr, align 8, !dbg !4795
  %call = call ptr @offset_to_ptr(ptr noundef %0) #17, !dbg !4796
  ret ptr %call, !dbg !4797
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @offset_to_ptr(ptr noundef %off) #6 align 16 !dbg !4798 {
entry:
  %off.addr = alloca ptr, align 8
  store ptr %off, ptr %off.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %off.addr, metadata !4804, metadata !DIExpression()), !dbg !4805
  %0 = load ptr, ptr %off.addr, align 8, !dbg !4806
  %1 = ptrtoint ptr %0 to i64, !dbg !4807
  %2 = load ptr, ptr %off.addr, align 8, !dbg !4808
  %3 = load i32, ptr %2, align 4, !dbg !4809
  %conv = sext i32 %3 to i64, !dbg !4809
  %add = add i64 %1, %conv, !dbg !4810
  %4 = inttoptr i64 %add to ptr, !dbg !4811
  ret ptr %4, !dbg !4812
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !4813 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4821, metadata !DIExpression()), !dbg !4823
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4822, metadata !DIExpression()), !dbg !4824
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4825
  %1 = load i64, ptr %size.addr, align 8, !dbg !4826
  %conv = trunc i64 %1 to i32, !dbg !4826
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !4827
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4828
  %3 = load i64, ptr %size.addr, align 8, !dbg !4828
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #17, !dbg !4828
  ret void, !dbg !4829
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !4830 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4833, metadata !DIExpression()), !dbg !4835
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4834, metadata !DIExpression()), !dbg !4836
  %0 = load i64, ptr %nr.addr, align 8, !dbg !4837
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4839
  br i1 %1, label %if.then, label %if.else, !dbg !4840

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !4841
  %3 = load i64, ptr %nr.addr, align 8, !dbg !4841
  %shr = ashr i64 %3, 3, !dbg !4841
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !4841
  %4 = load i64, ptr %nr.addr, align 8, !dbg !4843
  %and = and i64 %4, 7, !dbg !4843
  %sh_prom = trunc i64 %and to i32, !dbg !4843
  %shl = shl i32 1, %sh_prom, !dbg !4843
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #16, !dbg !4844, !srcloc !4845
  br label %if.end, !dbg !4846

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !4847
  %6 = load i64, ptr %nr.addr, align 8, !dbg !4849
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #16, !dbg !4850, !srcloc !4851
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !4852
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !4853 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4858, metadata !DIExpression()), !dbg !4860
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4859, metadata !DIExpression()), !dbg !4861
  ret i1 true, !dbg !4862
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #6 align 16 !dbg !4863 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4868, metadata !DIExpression()), !dbg !4871
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4869, metadata !DIExpression()), !dbg !4872
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4870, metadata !DIExpression()), !dbg !4873
  ret void, !dbg !4874
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_clear_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !4875 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4877, metadata !DIExpression()), !dbg !4879
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4878, metadata !DIExpression()), !dbg !4880
  %0 = load i64, ptr %nr.addr, align 8, !dbg !4881
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4883
  br i1 %1, label %if.then, label %if.else, !dbg !4884

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !4885
  %3 = load i64, ptr %nr.addr, align 8, !dbg !4885
  %shr = ashr i64 %3, 3, !dbg !4885
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !4885
  %4 = load i64, ptr %nr.addr, align 8, !dbg !4887
  %and = and i64 %4, 7, !dbg !4887
  %sh_prom = trunc i64 %and to i32, !dbg !4887
  %shl = shl i32 1, %sh_prom, !dbg !4887
  %not = xor i32 %shl, -1, !dbg !4888
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %not, ptr elementtype(i8) %add.ptr) #16, !dbg !4889, !srcloc !4890
  br label %if.end, !dbg !4891

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !4892
  %6 = load i64, ptr %nr.addr, align 8, !dbg !4894
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #16, !dbg !4895, !srcloc !4896
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !4897
}

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { cold noredzone }
attributes #16 = { nounwind }
attributes #17 = { noredzone }
attributes #18 = { noredzone allocsize(0) }
attributes #19 = { noredzone allocsize(2) }
attributes #20 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718}
!llvm.ident = !{!2719}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "tracepoint_srcu_srcu_data", scope: !2, file: !3, line: 28, type: !990, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/.tracepoint.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/tracepoint\22 -D KBUILD_BASENAME=\22tracepoint\22 -D KBUILD_MODNAME=\22tracepoint\22 -D __KBUILD_MODNAME=kmod_tracepoint -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/tracepoint.ll kernel/tracepoint.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !73, globals: !2627, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "kernel/tracepoint.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a0954f60504c06c163fb3ad3d10a2f37")
!4 = !{!5, !13, !19, !24, !29, !35, !42, !52, !58, !63}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !6, line: 312, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!10 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!11 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!12 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !14, line: 26, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!15 = !{!16, !17, !18}
!16 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!17 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!18 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 10, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!21 = !{!22, !23}
!22 = !DIEnumerator(name: "false", value: 0)
!23 = !DIEnumerator(name: "true", value: 1)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !25, line: 65, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!26 = !{!27, !28}
!27 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!28 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !30, line: 16, baseType: !7, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!31 = !{!32, !33, !34}
!32 = !DIEnumerator(name: "TT_NONE", value: 0)
!33 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!34 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !36, line: 51, baseType: !7, size: 32, elements: !37)
!36 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!37 = !{!38, !39, !40, !41}
!38 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!39 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!40 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!41 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "syscall_work_bit", file: !43, line: 41, baseType: !7, size: 32, elements: !44)
!43 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!44 = !{!45, !46, !47, !48, !49, !50, !51}
!45 = !DIEnumerator(name: "SYSCALL_WORK_BIT_SECCOMP", value: 0)
!46 = !DIEnumerator(name: "SYSCALL_WORK_BIT_SYSCALL_TRACEPOINT", value: 1)
!47 = !DIEnumerator(name: "SYSCALL_WORK_BIT_SYSCALL_TRACE", value: 2)
!48 = !DIEnumerator(name: "SYSCALL_WORK_BIT_SYSCALL_EMU", value: 3)
!49 = !DIEnumerator(name: "SYSCALL_WORK_BIT_SYSCALL_AUDIT", value: 4)
!50 = !DIEnumerator(name: "SYSCALL_WORK_BIT_SYSCALL_USER_DISPATCH", value: 5)
!51 = !DIEnumerator(name: "SYSCALL_WORK_BIT_SYSCALL_EXIT_TRAP", value: 6)
!52 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tp_func_state", file: !3, line: 18, baseType: !7, size: 32, elements: !53)
!53 = !{!54, !55, !56, !57}
!54 = !DIEnumerator(name: "TP_FUNC_0", value: 0)
!55 = !DIEnumerator(name: "TP_FUNC_1", value: 1)
!56 = !DIEnumerator(name: "TP_FUNC_2", value: 2)
!57 = !DIEnumerator(name: "TP_FUNC_N", value: 3)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tp_transition_sync", file: !3, line: 31, baseType: !7, size: 32, elements: !59)
!59 = !{!60, !61, !62}
!60 = !DIEnumerator(name: "TP_TRANSITION_SYNC_1_0_1", value: 0)
!61 = !DIEnumerator(name: "TP_TRANSITION_SYNC_N_2_1", value: 1)
!62 = !DIEnumerator(name: "_NR_TP_TRANSITION_SYNC", value: 2)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !64, line: 364, baseType: !7, size: 32, elements: !65)
!64 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!65 = !{!66, !67, !68, !69, !70, !71, !72}
!66 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!67 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!68 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!69 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!70 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!71 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!72 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!73 = !{!74, !75, !1134, !1137, !237, !2592, !2603, !2615, !2616, !2617, !140, !2619, !234, !223, !2620, !2622, !2623, !2625}
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tp_module", file: !77, line: 60, size: 192, elements: !78)
!77 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!78 = !{!79, !86}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !76, file: !77, line: 61, baseType: !80, size: 128)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !81, line: 190, size: 128, elements: !82)
!81 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!82 = !{!83, !85}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !80, file: !81, line: 191, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !80, file: !81, line: 191, baseType: !84, size: 64, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !76, file: !77, line: 62, baseType: !87, size: 64, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !89)
!89 = !{!90, !91, !92, !97, !778, !804, !805, !806, !807, !811, !814, !815, !816, !869, !870, !871, !872, !873, !874, !875, !876, !884, !888, !908, !926, !927, !928, !929, !938, !962, !963, !966, !969, !970, !971, !972, !973, !974, !975, !980, !981, !1088, !1096, !1097, !1098, !1100, !1104, !1105, !1113, !1114, !1115, !1116, !1118, !1119, !1120, !1127, !1128, !1129, !1133}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !88, file: !6, line: 403, baseType: !5, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !88, file: !6, line: 406, baseType: !80, size: 128, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !88, file: !6, line: 409, baseType: !93, size: 448, offset: 192)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 448, elements: !95)
!94 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!95 = !{!96}
!96 = !DISubrange(count: 56)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !88, file: !6, line: 417, baseType: !98, size: 768, offset: 640)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !99)
!99 = !{!100, !761, !762, !763, !766}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !98, file: !6, line: 46, baseType: !101, size: 512)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !102, line: 64, size: 512, elements: !103)
!102 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!103 = !{!104, !107, !108, !110, !200, !631, !746, !756, !757, !758, !759, !760}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !101, file: !102, line: 65, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !101, file: !102, line: 66, baseType: !80, size: 128, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !101, file: !102, line: 67, baseType: !109, size: 64, offset: 192)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !101, file: !102, line: 68, baseType: !111, size: 64, offset: 256)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !102, line: 168, size: 768, elements: !113)
!113 = !{!114, !115, !159, !160}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !112, file: !102, line: 169, baseType: !80, size: 128)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !112, file: !102, line: 170, baseType: !116, size: 32, offset: 128)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !117, line: 29, baseType: !118)
!117 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !117, line: 17, size: 32, elements: !119)
!119 = !{!120}
!120 = !DIDerivedType(tag: DW_TAG_member, scope: !118, file: !117, line: 18, baseType: !121, size: 32)
!121 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !118, file: !117, line: 18, size: 32, elements: !122)
!122 = !{!123}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !121, file: !117, line: 19, baseType: !124, size: 32)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !125, line: 14, size: 32, elements: !126)
!125 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!126 = !{!127}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !124, file: !125, line: 15, baseType: !128, size: 32)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !129, line: 44, baseType: !130)
!129 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !129, line: 14, size: 32, elements: !131)
!131 = !{!132}
!132 = !DIDerivedType(tag: DW_TAG_member, scope: !130, file: !129, line: 15, baseType: !133, size: 32)
!133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !130, file: !129, line: 15, size: 32, elements: !134)
!134 = !{!135, !141, !151}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !133, file: !129, line: 16, baseType: !136, size: 32)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !81, line: 174, baseType: !137)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !81, line: 172, size: 32, elements: !138)
!138 = !{!139}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !137, file: !81, line: 173, baseType: !140, size: 32)
!140 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!141 = !DIDerivedType(tag: DW_TAG_member, scope: !133, file: !129, line: 24, baseType: !142, size: 16)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !133, file: !129, line: 24, size: 16, elements: !143)
!143 = !{!144, !150}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !142, file: !129, line: 25, baseType: !145, size: 8)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !146, line: 17, baseType: !147)
!146 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !148, line: 21, baseType: !149)
!148 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!149 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !142, file: !129, line: 26, baseType: !145, size: 8, offset: 8)
!151 = !DIDerivedType(tag: DW_TAG_member, scope: !133, file: !129, line: 28, baseType: !152, size: 32)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !133, file: !129, line: 28, size: 32, elements: !153)
!153 = !{!154, !158}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !152, file: !129, line: 29, baseType: !155, size: 16)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !146, line: 19, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !148, line: 24, baseType: !157)
!157 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !152, file: !129, line: 30, baseType: !155, size: 16, offset: 16)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !112, file: !102, line: 171, baseType: !101, size: 512, offset: 192)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !112, file: !102, line: 172, baseType: !161, size: 64, offset: 704)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !102, line: 133, size: 192, elements: !164)
!164 = !{!165, !172, !177}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !163, file: !102, line: 134, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DISubroutineType(types: !169)
!169 = !{!140, !170}
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !163, file: !102, line: 135, baseType: !173, size: 64, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DISubroutineType(types: !176)
!176 = !{!105, !170}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !163, file: !102, line: 136, baseType: !178, size: 64, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DISubroutineType(types: !181)
!181 = !{!140, !170, !182}
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !102, line: 125, size: 20736, elements: !184)
!184 = !{!185, !190, !194, !195, !199}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !183, file: !102, line: 126, baseType: !186, size: 192)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 192, elements: !188)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!188 = !{!189}
!189 = !DISubrange(count: 3)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !183, file: !102, line: 127, baseType: !191, size: 4096, offset: 192)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 4096, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !183, file: !102, line: 128, baseType: !140, size: 32, offset: 4288)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !183, file: !102, line: 129, baseType: !196, size: 16384, offset: 4320)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 16384, elements: !197)
!197 = !{!198}
!198 = !DISubrange(count: 2048)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !183, file: !102, line: 130, baseType: !140, size: 32, offset: 20704)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !101, file: !102, line: 69, baseType: !201, size: 64, offset: 320)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !203)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !102, line: 116, size: 384, elements: !204)
!204 = !{!205, !209, !238, !578, !609, !613}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !203, file: !102, line: 117, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{null, !109}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !203, file: !102, line: 118, baseType: !210, size: 64, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !212)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !213, line: 254, size: 128, elements: !214)
!213 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!214 = !{!215, !230}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !212, file: !213, line: 255, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{!219, !109, !224, !187}
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !81, line: 66, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !221, line: 73, baseType: !222)
!221 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !221, line: 15, baseType: !223)
!223 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !213, line: 30, size: 128, elements: !226)
!226 = !{!227, !228}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !225, file: !213, line: 31, baseType: !105, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !225, file: !213, line: 32, baseType: !229, size: 16, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !81, line: 24, baseType: !157)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !212, file: !213, line: 256, baseType: !231, size: 64, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DISubroutineType(types: !233)
!233 = !{!219, !109, !224, !105, !234}
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !81, line: 61, baseType: !235)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !221, line: 72, baseType: !236)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !221, line: 16, baseType: !237)
!237 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !203, file: !102, line: 119, baseType: !239, size: 64, offset: 128)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !242)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !213, line: 84, size: 320, elements: !243)
!243 = !{!244, !245, !249, !574, !576}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !242, file: !213, line: 85, baseType: !105, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !242, file: !213, line: 86, baseType: !246, size: 64, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{!229, !109, !224, !140}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !242, file: !213, line: 88, baseType: !250, size: 64, offset: 128)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DISubroutineType(types: !252)
!252 = !{!229, !109, !253, !140}
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !213, line: 175, size: 512, elements: !255)
!255 = !{!256, !257, !258, !259, !266, !276, !277}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !254, file: !213, line: 176, baseType: !225, size: 128)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !254, file: !213, line: 177, baseType: !234, size: 64, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !254, file: !213, line: 178, baseType: !74, size: 64, offset: 192)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !254, file: !213, line: 179, baseType: !260, size: 64, offset: 256)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!263}
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !265, line: 32, flags: DIFlagFwdDecl)
!265 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!266 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !254, file: !213, line: 180, baseType: !267, size: 64, offset: 320)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{!219, !270, !109, !253, !187, !273, !234}
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !272, line: 537, flags: DIFlagFwdDecl)
!272 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !81, line: 52, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !221, line: 88, baseType: !275)
!275 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !254, file: !213, line: 182, baseType: !267, size: 64, offset: 384)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !254, file: !213, line: 184, baseType: !278, size: 64, offset: 448)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{!140, !270, !109, !253, !281}
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !265, line: 625, size: 1344, elements: !283)
!283 = !{!284, !301, !523, !529, !536, !537, !542, !545, !557, !558, !561, !565, !566, !567, !568, !569, !572}
!284 = !DIDerivedType(tag: DW_TAG_member, scope: !282, file: !265, line: 628, baseType: !285, size: 128)
!285 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !282, file: !265, line: 628, size: 128, elements: !286)
!286 = !{!287, !292}
!287 = !DIDerivedType(tag: DW_TAG_member, scope: !285, file: !265, line: 629, baseType: !288, size: 128)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !285, file: !265, line: 629, size: 128, elements: !289)
!289 = !{!290, !291}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !288, file: !265, line: 631, baseType: !237, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !288, file: !265, line: 632, baseType: !237, size: 64, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !285, file: !265, line: 635, baseType: !293, size: 128, align: 64)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !81, line: 232, size: 128, align: 64, elements: !294)
!294 = !{!295, !297}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !293, file: !81, line: 233, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !293, file: !81, line: 234, baseType: !298, size: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{null, !296}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !282, file: !265, line: 639, baseType: !302, size: 64, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !265, line: 733, size: 10240, elements: !304)
!304 = !{!305, !519}
!305 = !DIDerivedType(tag: DW_TAG_member, scope: !303, file: !265, line: 734, baseType: !306, size: 10240)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !303, file: !265, line: 734, size: 10240, elements: !307)
!307 = !{!308, !312, !326, !330, !331, !332, !333, !334, !335, !343, !344, !345, !354, !355, !364, !365, !366, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !413, !427, !430, !485, !486, !487, !490, !494, !495, !498, !499, !500, !506, !507}
!308 = !DIDerivedType(tag: DW_TAG_member, scope: !306, file: !265, line: 739, baseType: !309, size: 512, align: 512)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !306, file: !265, line: 739, size: 512, align: 512, elements: !310)
!310 = !{!311}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !309, file: !265, line: 747, baseType: !136, size: 32)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !306, file: !265, line: 750, baseType: !313, size: 128, offset: 512)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !314, line: 218, size: 128, elements: !315)
!314 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!315 = !{!316, !324, !325}
!316 = !DIDerivedType(tag: DW_TAG_member, scope: !313, file: !314, line: 219, baseType: !317, size: 32)
!317 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !313, file: !314, line: 219, size: 32, elements: !318)
!318 = !{!319, !320}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !317, file: !314, line: 220, baseType: !116, size: 32)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !317, file: !314, line: 221, baseType: !321)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !314, line: 197, baseType: !322)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !314, line: 197, elements: !323)
!323 = !{}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !313, file: !314, line: 223, baseType: !7, size: 32, offset: 32)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !313, file: !314, line: 224, baseType: !74, size: 64, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !306, file: !265, line: 752, baseType: !327, size: 64, offset: 640)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!237, !270, !237, !237, !237, !237}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !306, file: !265, line: 756, baseType: !237, size: 64, offset: 704)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !306, file: !265, line: 757, baseType: !237, size: 64, offset: 768)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !306, file: !265, line: 760, baseType: !237, size: 64, offset: 832)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !306, file: !265, line: 761, baseType: !237, size: 64, offset: 896)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !306, file: !265, line: 763, baseType: !237, size: 64, offset: 960)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !306, file: !265, line: 764, baseType: !336, size: 64, offset: 1024)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !272, line: 299, baseType: !338)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !272, line: 299, size: 64, elements: !339)
!339 = !{!340}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !338, file: !272, line: 299, baseType: !341, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !342, line: 18, baseType: !237)
!342 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!343 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !306, file: !265, line: 773, baseType: !136, size: 32, offset: 1088)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !306, file: !265, line: 785, baseType: !136, size: 32, offset: 1120)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !306, file: !265, line: 795, baseType: !346, size: 64, offset: 1152)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !265, line: 726, size: 128, elements: !348)
!348 = !{!349, !353}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !347, file: !265, line: 727, baseType: !350, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !146, line: 23, baseType: !351)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !148, line: 31, baseType: !352)
!352 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !347, file: !265, line: 728, baseType: !140, size: 32, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !306, file: !265, line: 801, baseType: !237, size: 64, offset: 1216)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !306, file: !265, line: 804, baseType: !356, size: 64, offset: 1280)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !357, line: 13, baseType: !358)
!357 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !81, line: 181, baseType: !359)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !81, line: 179, size: 64, elements: !360)
!360 = !{!361}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !359, file: !81, line: 180, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !146, line: 22, baseType: !363)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !148, line: 30, baseType: !275)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !306, file: !265, line: 806, baseType: !140, size: 32, offset: 1344)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !306, file: !265, line: 808, baseType: !116, size: 32, offset: 1376)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !306, file: !265, line: 823, baseType: !367, size: 320, offset: 1408)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !368, line: 48, size: 320, elements: !369)
!368 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!369 = !{!370, !371, !372, !377, !379}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !367, file: !368, line: 49, baseType: !356, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !367, file: !368, line: 55, baseType: !356, size: 64, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !367, file: !368, line: 57, baseType: !373, size: 32, offset: 128)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !374, line: 15, size: 32, elements: !375)
!374 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!375 = !{!376}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !373, file: !374, line: 20, baseType: !136, size: 32)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !367, file: !368, line: 59, baseType: !378, size: 32, offset: 160)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !125, line: 23, baseType: !124)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !367, file: !368, line: 60, baseType: !80, size: 128, offset: 192)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !306, file: !265, line: 825, baseType: !80, size: 128, offset: 1728)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !306, file: !265, line: 845, baseType: !140, size: 32, offset: 1856)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !306, file: !265, line: 849, baseType: !237, size: 64, offset: 1920)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !306, file: !265, line: 850, baseType: !237, size: 64, offset: 1984)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !306, file: !265, line: 852, baseType: !237, size: 64, offset: 2048)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !306, file: !265, line: 853, baseType: !237, size: 64, offset: 2112)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !306, file: !265, line: 854, baseType: !358, size: 64, offset: 2176)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !306, file: !265, line: 855, baseType: !237, size: 64, offset: 2240)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !306, file: !265, line: 856, baseType: !237, size: 64, offset: 2304)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !306, file: !265, line: 857, baseType: !237, size: 64, offset: 2368)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !306, file: !265, line: 858, baseType: !237, size: 64, offset: 2432)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !306, file: !265, line: 865, baseType: !392, size: 32, offset: 2496)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !393, line: 69, baseType: !394)
!393 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !393, line: 64, size: 32, elements: !395)
!395 = !{!396}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !394, file: !393, line: 65, baseType: !7, size: 32)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !306, file: !265, line: 867, baseType: !116, size: 32, offset: 2528)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !306, file: !265, line: 869, baseType: !237, size: 64, offset: 2560)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !306, file: !265, line: 869, baseType: !237, size: 64, offset: 2624)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !306, file: !265, line: 869, baseType: !237, size: 64, offset: 2688)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !306, file: !265, line: 869, baseType: !237, size: 64, offset: 2752)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !306, file: !265, line: 870, baseType: !237, size: 64, offset: 2816)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !306, file: !265, line: 870, baseType: !237, size: 64, offset: 2880)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !306, file: !265, line: 870, baseType: !237, size: 64, offset: 2944)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !306, file: !265, line: 871, baseType: !237, size: 64, offset: 3008)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !306, file: !265, line: 871, baseType: !237, size: 64, offset: 3072)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !306, file: !265, line: 871, baseType: !237, size: 64, offset: 3136)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !306, file: !265, line: 871, baseType: !237, size: 64, offset: 3200)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !306, file: !265, line: 873, baseType: !410, size: 3328, offset: 3264)
!410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 3328, elements: !411)
!411 = !{!412}
!412 = !DISubrange(count: 52)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !306, file: !265, line: 875, baseType: !414, size: 1280, offset: 6592)
!414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !415, size: 1280, elements: !425)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !416, line: 22, size: 320, elements: !417)
!416 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!417 = !{!418, !419, !420, !421}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !415, file: !416, line: 23, baseType: !378, size: 32)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !415, file: !416, line: 24, baseType: !362, size: 64, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !415, file: !416, line: 26, baseType: !80, size: 128, offset: 128)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !415, file: !416, line: 28, baseType: !422, size: 64, offset: 256)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !146, line: 20, baseType: !424)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !148, line: 26, baseType: !140)
!425 = !{!426}
!426 = !DISubrange(count: 4)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !306, file: !265, line: 877, baseType: !428, size: 64, offset: 7872)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !265, line: 877, flags: DIFlagFwdDecl)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !306, file: !265, line: 880, baseType: !431, size: 1088, offset: 7936)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !432, line: 72, baseType: !433)
!432 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !432, line: 23, size: 1088, elements: !434)
!434 = !{!435, !436, !437, !438, !439, !442, !443, !451, !452, !479, !480, !481}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !433, file: !432, line: 28, baseType: !350, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !433, file: !432, line: 38, baseType: !358, size: 64, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !433, file: !432, line: 40, baseType: !237, size: 64, offset: 128)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !433, file: !432, line: 43, baseType: !367, size: 320, offset: 192)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !433, file: !432, line: 44, baseType: !440, size: 64, offset: 512)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !432, line: 44, flags: DIFlagFwdDecl)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !433, file: !432, line: 48, baseType: !237, size: 64, offset: 576)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !433, file: !432, line: 59, baseType: !444, size: 256, offset: 640)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !445, line: 66, size: 256, elements: !446)
!445 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!446 = !{!447, !448, !449, !450}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !444, file: !445, line: 67, baseType: !356, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !444, file: !445, line: 68, baseType: !378, size: 32, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !444, file: !445, line: 70, baseType: !373, size: 32, offset: 96)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !444, file: !445, line: 72, baseType: !80, size: 128, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !433, file: !432, line: 60, baseType: !74, size: 64, offset: 896)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !433, file: !432, line: 61, baseType: !453, size: 64, offset: 960)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !455)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !456, line: 13, size: 1216, elements: !457)
!456 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!457 = !{!458, !459, !460, !461, !462, !463, !464, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !455, file: !456, line: 14, baseType: !74, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !455, file: !456, line: 15, baseType: !237, size: 64, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !455, file: !456, line: 17, baseType: !237, size: 64, offset: 128)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !455, file: !456, line: 17, baseType: !237, size: 64, offset: 192)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !455, file: !456, line: 18, baseType: !237, size: 64, offset: 256)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !455, file: !456, line: 18, baseType: !237, size: 64, offset: 320)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !455, file: !456, line: 19, baseType: !465, size: 64, offset: 384)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !455, file: !456, line: 21, baseType: !223, size: 64, offset: 448)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !455, file: !456, line: 23, baseType: !223, size: 64, offset: 512)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !455, file: !456, line: 24, baseType: !223, size: 64, offset: 576)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !455, file: !456, line: 25, baseType: !223, size: 64, offset: 640)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !455, file: !456, line: 26, baseType: !223, size: 64, offset: 704)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !455, file: !456, line: 27, baseType: !223, size: 64, offset: 768)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !455, file: !456, line: 28, baseType: !223, size: 64, offset: 832)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !455, file: !456, line: 29, baseType: !223, size: 64, offset: 896)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !455, file: !456, line: 30, baseType: !223, size: 64, offset: 960)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !455, file: !456, line: 31, baseType: !223, size: 64, offset: 1024)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !455, file: !456, line: 32, baseType: !223, size: 64, offset: 1088)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !455, file: !456, line: 33, baseType: !223, size: 64, offset: 1152)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !433, file: !432, line: 63, baseType: !136, size: 32, offset: 1024)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !433, file: !432, line: 69, baseType: !155, size: 16, offset: 1056)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !433, file: !432, line: 70, baseType: !482, size: 16, offset: 1072)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !146, line: 18, baseType: !483)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !148, line: 23, baseType: !484)
!484 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !306, file: !265, line: 882, baseType: !237, size: 64, offset: 9024)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !306, file: !265, line: 885, baseType: !116, size: 32, offset: 9088)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !306, file: !265, line: 886, baseType: !488, size: 64, offset: 9152)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !265, line: 732, flags: DIFlagFwdDecl)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !306, file: !265, line: 901, baseType: !491, size: 64, offset: 9216)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !493, line: 18, flags: DIFlagFwdDecl)
!493 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!494 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !306, file: !265, line: 904, baseType: !270, size: 64, offset: 9280)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !306, file: !265, line: 906, baseType: !496, size: 64, offset: 9344)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !265, line: 906, flags: DIFlagFwdDecl)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !306, file: !265, line: 930, baseType: !136, size: 32, offset: 9408)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !306, file: !265, line: 933, baseType: !136, size: 32, offset: 9440)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !306, file: !265, line: 935, baseType: !501, size: 64, offset: 9472)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !36, line: 103, size: 64, elements: !502)
!502 = !{!503}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !501, file: !36, line: 104, baseType: !504, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !36, line: 101, flags: DIFlagFwdDecl)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !306, file: !265, line: 940, baseType: !356, size: 64, offset: 9536)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !306, file: !265, line: 942, baseType: !508, size: 256, offset: 9600)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !509, line: 98, size: 256, elements: !510)
!509 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!510 = !{!511, !512, !513}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !508, file: !509, line: 99, baseType: !356, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !508, file: !509, line: 100, baseType: !80, size: 128, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !508, file: !509, line: 101, baseType: !514, size: 64, offset: 192)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !509, line: 21, baseType: !515)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DISubroutineType(types: !517)
!517 = !{null, !518}
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !303, file: !265, line: 986, baseType: !520, offset: 10240)
!520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, elements: !521)
!521 = !{!522}
!522 = !DISubrange(count: -1)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !282, file: !265, line: 640, baseType: !524, size: 64, offset: 192)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !272, line: 297, baseType: !525)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !272, line: 297, size: 64, elements: !526)
!526 = !{!527}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !525, file: !272, line: 297, baseType: !528, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !342, line: 19, baseType: !237)
!529 = !DIDerivedType(tag: DW_TAG_member, scope: !282, file: !265, line: 646, baseType: !530, size: 64, offset: 256)
!530 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !282, file: !265, line: 646, size: 64, elements: !531)
!531 = !{!532, !535}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !530, file: !265, line: 647, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !534)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !265, line: 542, baseType: !237)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !530, file: !265, line: 648, baseType: !534, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !282, file: !265, line: 666, baseType: !140, size: 32, offset: 320)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !282, file: !265, line: 667, baseType: !538, size: 64, offset: 384)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !265, line: 579, size: 320, elements: !540)
!540 = !{!541}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !539, file: !265, line: 580, baseType: !367, size: 320)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !282, file: !265, line: 670, baseType: !543, size: 8, offset: 448)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !81, line: 35, baseType: !544)
!544 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !282, file: !265, line: 681, baseType: !546, size: 256, offset: 512)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !282, file: !265, line: 678, size: 256, elements: !547)
!547 = !{!548, !556}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !546, file: !265, line: 679, baseType: !549, size: 192, align: 64)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !550, line: 5, size: 192, align: 64, elements: !551)
!550 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!551 = !{!552, !553, !555}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !549, file: !550, line: 6, baseType: !237, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !549, file: !550, line: 7, baseType: !554, size: 64, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !549, file: !550, line: 8, baseType: !554, size: 64, offset: 128)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !546, file: !265, line: 680, baseType: !237, size: 64, offset: 192)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !282, file: !265, line: 689, baseType: !80, size: 128, offset: 768)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !282, file: !265, line: 691, baseType: !559, size: 64, offset: 896)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !265, line: 691, flags: DIFlagFwdDecl)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !282, file: !265, line: 694, baseType: !562, size: 64, offset: 960)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !564)
!564 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !265, line: 694, flags: DIFlagFwdDecl)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !282, file: !265, line: 697, baseType: !237, size: 64, offset: 1024)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !282, file: !265, line: 699, baseType: !270, size: 64, offset: 1088)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !282, file: !265, line: 700, baseType: !74, size: 64, offset: 1152)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !282, file: !265, line: 711, baseType: !356, size: 64, offset: 1216)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !282, file: !265, line: 717, baseType: !570, size: 64, offset: 1280)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !265, line: 717, flags: DIFlagFwdDecl)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !282, file: !265, line: 722, baseType: !573, offset: 1344)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !265, line: 570, elements: !323)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !242, file: !213, line: 90, baseType: !575, size: 64, offset: 192)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !242, file: !213, line: 91, baseType: !577, size: 64, offset: 256)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !203, file: !102, line: 120, baseType: !579, size: 64, offset: 192)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DISubroutineType(types: !581)
!581 = !{!582, !170}
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !584)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !14, line: 39, size: 384, elements: !585)
!585 = !{!586, !587, !591, !595, !601, !605}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !584, file: !14, line: 40, baseType: !13, size: 32)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !584, file: !14, line: 41, baseType: !588, size: 64, offset: 64)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DISubroutineType(types: !590)
!590 = !{!543}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !584, file: !14, line: 42, baseType: !592, size: 64, offset: 128)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DISubroutineType(types: !594)
!594 = !{!74}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !584, file: !14, line: 43, baseType: !596, size: 64, offset: 192)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DISubroutineType(types: !598)
!598 = !{!465, !599}
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !14, line: 19, flags: DIFlagFwdDecl)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !584, file: !14, line: 44, baseType: !602, size: 64, offset: 256)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DISubroutineType(types: !604)
!604 = !{!465}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !584, file: !14, line: 45, baseType: !606, size: 64, offset: 320)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DISubroutineType(types: !608)
!608 = !{null, !74}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !203, file: !102, line: 121, baseType: !610, size: 64, offset: 256)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DISubroutineType(types: !612)
!612 = !{!465, !170}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !203, file: !102, line: 122, baseType: !614, size: 64, offset: 320)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DISubroutineType(types: !616)
!616 = !{null, !170, !617, !624}
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !493, line: 23, baseType: !619)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !493, line: 21, size: 32, elements: !620)
!620 = !{!621}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !619, file: !493, line: 22, baseType: !622, size: 32)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !81, line: 37, baseType: !623)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !221, line: 49, baseType: !7)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !493, line: 28, baseType: !626)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !493, line: 26, size: 32, elements: !627)
!627 = !{!628}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !626, file: !493, line: 27, baseType: !629, size: 32)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !81, line: 38, baseType: !630)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !221, line: 50, baseType: !7)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !101, file: !102, line: 70, baseType: !632, size: 64, offset: 384)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !634, line: 190, size: 1152, elements: !635)
!634 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!635 = !{!636, !637, !638, !639, !640, !641, !642, !643, !738, !739, !740, !741, !742, !745}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !633, file: !634, line: 191, baseType: !136, size: 32)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !633, file: !634, line: 192, baseType: !136, size: 32, offset: 32)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !633, file: !634, line: 202, baseType: !632, size: 64, offset: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !633, file: !634, line: 203, baseType: !105, size: 64, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !633, file: !634, line: 205, baseType: !549, size: 192, align: 64, offset: 192)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !633, file: !634, line: 207, baseType: !465, size: 64, offset: 384)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !633, file: !634, line: 208, baseType: !7, size: 32, offset: 448)
!643 = !DIDerivedType(tag: DW_TAG_member, scope: !633, file: !634, line: 209, baseType: !644, size: 256, offset: 512)
!644 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !633, file: !634, line: 209, size: 256, elements: !645)
!645 = !{!646, !658, !662}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !644, file: !634, line: 210, baseType: !647, size: 256)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !634, line: 153, size: 256, elements: !648)
!648 = !{!649, !650, !654, !657}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !647, file: !634, line: 154, baseType: !237, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !647, file: !634, line: 156, baseType: !651, size: 64, offset: 64)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !550, line: 12, size: 64, elements: !652)
!652 = !{!653}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !651, file: !550, line: 13, baseType: !554, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !647, file: !634, line: 162, baseType: !655, size: 64, offset: 128)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !634, line: 162, flags: DIFlagFwdDecl)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !647, file: !634, line: 167, baseType: !237, size: 64, offset: 192)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !644, file: !634, line: 211, baseType: !659, size: 64)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !634, line: 170, size: 64, elements: !660)
!660 = !{!661}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !659, file: !634, line: 171, baseType: !632, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !644, file: !634, line: 212, baseType: !663, size: 256)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !634, line: 174, size: 256, elements: !664)
!664 = !{!665, !733, !736, !737}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !663, file: !634, line: 175, baseType: !666, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !668)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !634, line: 271, size: 768, elements: !669)
!669 = !{!670, !693, !697, !701, !706, !710, !714, !718, !719, !720, !721, !729}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !668, file: !634, line: 276, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DISubroutineType(types: !673)
!673 = !{!140, !674}
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !634, line: 251, size: 1216, elements: !676)
!676 = !{!677, !678, !679, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !675, file: !634, line: 253, baseType: !632, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !675, file: !634, line: 254, baseType: !270, size: 64, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !675, file: !634, line: 255, baseType: !680, size: 64, offset: 128)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !682, line: 66, flags: DIFlagFwdDecl)
!682 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!683 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !675, file: !634, line: 256, baseType: !74, size: 64, offset: 192)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !675, file: !634, line: 259, baseType: !444, size: 256, offset: 256)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !675, file: !634, line: 260, baseType: !444, size: 256, offset: 512)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !675, file: !634, line: 261, baseType: !140, size: 32, offset: 768)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !675, file: !634, line: 262, baseType: !80, size: 128, offset: 832)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !675, file: !634, line: 263, baseType: !187, size: 64, offset: 960)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !675, file: !634, line: 265, baseType: !234, size: 64, offset: 1024)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !675, file: !634, line: 266, baseType: !543, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !675, file: !634, line: 267, baseType: !543, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !675, file: !634, line: 268, baseType: !562, size: 64, offset: 1152)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !668, file: !634, line: 277, baseType: !694, size: 64, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DISubroutineType(types: !696)
!696 = !{null, !674}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !668, file: !634, line: 290, baseType: !698, size: 64, offset: 128)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DISubroutineType(types: !700)
!700 = !{!140, !680, !74}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !668, file: !634, line: 292, baseType: !702, size: 64, offset: 192)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DISubroutineType(types: !704)
!704 = !{!74, !680, !705}
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !668, file: !634, line: 293, baseType: !707, size: 64, offset: 256)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DISubroutineType(types: !709)
!709 = !{!74, !680, !74, !705}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !668, file: !634, line: 294, baseType: !711, size: 64, offset: 320)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DISubroutineType(types: !713)
!713 = !{null, !680, !74}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !668, file: !634, line: 296, baseType: !715, size: 64, offset: 384)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DISubroutineType(types: !717)
!717 = !{!219, !674, !187, !234, !273}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !668, file: !634, line: 306, baseType: !234, size: 64, offset: 448)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !668, file: !634, line: 313, baseType: !543, size: 8, offset: 512)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !668, file: !634, line: 314, baseType: !715, size: 64, offset: 576)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !668, file: !634, line: 317, baseType: !722, size: 64, offset: 640)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DISubroutineType(types: !724)
!724 = !{!725, !674, !727}
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !726, line: 59, baseType: !7)
!726 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !634, line: 31, flags: DIFlagFwdDecl)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !668, file: !634, line: 320, baseType: !730, size: 64, offset: 704)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DISubroutineType(types: !732)
!732 = !{!140, !674, !281}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !663, file: !634, line: 176, baseType: !734, size: 64, offset: 64)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !634, line: 35, flags: DIFlagFwdDecl)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !663, file: !634, line: 177, baseType: !273, size: 64, offset: 128)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !663, file: !634, line: 178, baseType: !632, size: 64, offset: 192)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !633, file: !634, line: 215, baseType: !74, size: 64, offset: 768)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !633, file: !634, line: 221, baseType: !350, size: 64, offset: 832)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !633, file: !634, line: 223, baseType: !157, size: 16, offset: 896)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !633, file: !634, line: 224, baseType: !229, size: 16, offset: 912)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !633, file: !634, line: 225, baseType: !743, size: 64, offset: 960)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !634, line: 36, flags: DIFlagFwdDecl)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !633, file: !634, line: 227, baseType: !293, size: 128, align: 64, offset: 1024)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !101, file: !102, line: 71, baseType: !747, size: 32, offset: 448)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !748, line: 19, size: 32, elements: !749)
!748 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!749 = !{!750}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !747, file: !748, line: 20, baseType: !751, size: 32)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !752, line: 113, baseType: !753)
!752 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !752, line: 111, size: 32, elements: !754)
!754 = !{!755}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !753, file: !752, line: 112, baseType: !136, size: 32)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !101, file: !102, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !101, file: !102, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !101, file: !102, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !101, file: !102, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !101, file: !102, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !98, file: !6, line: 47, baseType: !87, size: 64, offset: 512)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !98, file: !6, line: 48, baseType: !109, size: 64, offset: 576)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !98, file: !6, line: 49, baseType: !764, size: 64, offset: 640)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !98, file: !6, line: 50, baseType: !767, size: 64, offset: 704)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !769, line: 26, size: 256, elements: !770)
!769 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!770 = !{!771, !772}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !768, file: !769, line: 27, baseType: !7, size: 32)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !768, file: !769, line: 28, baseType: !773, size: 192, offset: 64)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !774, line: 43, size: 192, elements: !775)
!774 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!775 = !{!776, !777}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !773, file: !774, line: 44, baseType: !378, size: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !773, file: !774, line: 45, baseType: !80, size: 128, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !88, file: !6, line: 418, baseType: !779, size: 64, offset: 1408)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !781)
!781 = !{!782, !783, !788, !792, !796, !800}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !780, file: !6, line: 54, baseType: !225, size: 128)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !780, file: !6, line: 55, baseType: !784, size: 64, offset: 128)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DISubroutineType(types: !786)
!786 = !{!219, !779, !787, !187}
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !780, file: !6, line: 57, baseType: !789, size: 64, offset: 192)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DISubroutineType(types: !791)
!791 = !{!219, !779, !787, !105, !234}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !780, file: !6, line: 59, baseType: !793, size: 64, offset: 256)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DISubroutineType(types: !795)
!795 = !{null, !87, !105}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !780, file: !6, line: 60, baseType: !797, size: 64, offset: 320)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DISubroutineType(types: !799)
!799 = !{!140, !87}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !780, file: !6, line: 61, baseType: !801, size: 64, offset: 384)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{null, !87}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !88, file: !6, line: 419, baseType: !105, size: 64, offset: 1472)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !88, file: !6, line: 420, baseType: !105, size: 64, offset: 1536)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !88, file: !6, line: 421, baseType: !109, size: 64, offset: 1600)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !88, file: !6, line: 424, baseType: !808, size: 64, offset: 1664)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !810)
!810 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !88, file: !6, line: 425, baseType: !812, size: 64, offset: 1728)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !423)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !88, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !88, file: !6, line: 435, baseType: !444, size: 256, offset: 1856)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !88, file: !6, line: 437, baseType: !817, size: 64, offset: 2112)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !819, line: 69, size: 320, elements: !820)
!819 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!820 = !{!821, !822, !823, !840, !842, !846, !847}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !818, file: !819, line: 70, baseType: !105, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !818, file: !819, line: 71, baseType: !87, size: 64, offset: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !818, file: !819, line: 72, baseType: !824, size: 64, offset: 128)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !826)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !819, line: 47, size: 256, elements: !827)
!827 = !{!828, !829, !835, !839}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !826, file: !819, line: 49, baseType: !7, size: 32)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !826, file: !819, line: 51, baseType: !830, size: 64, offset: 64)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{!140, !105, !833}
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !818)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !826, file: !819, line: 53, baseType: !836, size: 64, offset: 128)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{!140, !187, !833}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !826, file: !819, line: 55, baseType: !606, size: 64, offset: 192)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !818, file: !819, line: 73, baseType: !841, size: 16, offset: 192)
!841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !155)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !818, file: !819, line: 74, baseType: !843, size: 8, offset: 208)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !146, line: 16, baseType: !844)
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !148, line: 20, baseType: !845)
!845 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !818, file: !819, line: 75, baseType: !145, size: 8, offset: 216)
!847 = !DIDerivedType(tag: DW_TAG_member, scope: !818, file: !819, line: 76, baseType: !848, size: 64, offset: 256)
!848 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !818, file: !819, line: 76, size: 64, elements: !849)
!849 = !{!850, !851, !858}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !848, file: !819, line: 77, baseType: !74, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !848, file: !819, line: 78, baseType: !852, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !854)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !819, line: 86, size: 128, elements: !855)
!855 = !{!856, !857}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !854, file: !819, line: 87, baseType: !7, size: 32)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !854, file: !819, line: 88, baseType: !187, size: 64, offset: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !848, file: !819, line: 79, baseType: !859, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !861)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !819, line: 92, size: 256, elements: !862)
!862 = !{!863, !864, !865, !867, !868}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !861, file: !819, line: 94, baseType: !7, size: 32)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !861, file: !819, line: 95, baseType: !7, size: 32, offset: 32)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !861, file: !819, line: 96, baseType: !866, size: 64, offset: 64)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !861, file: !819, line: 97, baseType: !824, size: 64, offset: 128)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !861, file: !819, line: 98, baseType: !74, size: 64, offset: 192)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !88, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !88, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !88, file: !6, line: 442, baseType: !808, size: 64, offset: 2240)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !88, file: !6, line: 443, baseType: !812, size: 64, offset: 2304)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !88, file: !6, line: 444, baseType: !543, size: 8, offset: 2368)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !88, file: !6, line: 451, baseType: !543, size: 8, offset: 2376)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !88, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !88, file: !6, line: 455, baseType: !877, size: 64, offset: 2432)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !879, line: 23, size: 96, elements: !880)
!879 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!880 = !{!881, !882, !883}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !878, file: !879, line: 24, baseType: !140, size: 32)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !878, file: !879, line: 24, baseType: !140, size: 32, offset: 32)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !878, file: !879, line: 24, baseType: !140, size: 32, offset: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !88, file: !6, line: 458, baseType: !885, size: 64, offset: 2496)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DISubroutineType(types: !887)
!887 = !{!140}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !88, file: !6, line: 460, baseType: !889, size: 4032, align: 512, offset: 2560)
!889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !890, size: 4032, elements: !906)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !891)
!891 = !{!892, !893, !894}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !890, file: !6, line: 363, baseType: !74, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !890, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !890, file: !6, line: 367, baseType: !895, size: 448, offset: 128)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !896)
!896 = !{!897, !898}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !895, file: !6, line: 320, baseType: !87, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !895, file: !6, line: 321, baseType: !899, size: 384, offset: 64)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !900, line: 40, size: 384, elements: !901)
!900 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!901 = !{!902}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !899, file: !900, line: 41, baseType: !903, size: 384, align: 64)
!903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !549, size: 384, align: 64, elements: !904)
!904 = !{!905}
!905 = !DISubrange(count: 2)
!906 = !{!907}
!907 = !DISubrange(count: 7)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !88, file: !6, line: 463, baseType: !909, size: 192, offset: 6592)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !910, line: 8, size: 192, elements: !911)
!910 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!911 = !{!912, !913, !915}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !909, file: !910, line: 10, baseType: !7, size: 32)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !909, file: !910, line: 11, baseType: !914, size: 64, offset: 64)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !909, file: !910, line: 12, baseType: !916, size: 64, offset: 128)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !918, line: 59, size: 48, elements: !919)
!918 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!919 = !{!920, !921, !922, !923, !924, !925}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !917, file: !918, line: 60, baseType: !482, size: 16)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !917, file: !918, line: 61, baseType: !482, size: 16, offset: 16)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !917, file: !918, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !917, file: !918, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !917, file: !918, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !917, file: !918, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !88, file: !6, line: 465, baseType: !237, size: 64, offset: 6784)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !88, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !88, file: !6, line: 470, baseType: !80, size: 128, offset: 6912)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !88, file: !6, line: 471, baseType: !930, size: 64, offset: 7040)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !932, line: 33, size: 96, elements: !933)
!932 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!933 = !{!934, !935, !936, !937}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !931, file: !932, line: 37, baseType: !140, size: 32)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !931, file: !932, line: 43, baseType: !140, size: 32, offset: 32)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !931, file: !932, line: 45, baseType: !157, size: 16, offset: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !931, file: !932, line: 47, baseType: !157, size: 16, offset: 80)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !88, file: !6, line: 476, baseType: !939, size: 64, offset: 7104)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !941)
!941 = !{!942, !959, !960, !961}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !940, file: !6, line: 379, baseType: !943, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !945, line: 204, baseType: !946)
!945 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !945, line: 197, size: 192, elements: !947)
!947 = !{!948, !951, !952, !953, !955, !957}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !946, file: !945, line: 198, baseType: !949, size: 32)
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !945, line: 21, baseType: !950)
!950 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !148, line: 27, baseType: !7)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !946, file: !945, line: 199, baseType: !149, size: 8, offset: 32)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !946, file: !945, line: 200, baseType: !149, size: 8, offset: 40)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !946, file: !945, line: 201, baseType: !954, size: 16, offset: 48)
!954 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !945, line: 17, baseType: !156)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !946, file: !945, line: 202, baseType: !956, size: 64, offset: 64)
!956 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !945, line: 16, baseType: !351)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !946, file: !945, line: 203, baseType: !958, size: 64, offset: 128)
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !945, line: 22, baseType: !351)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !940, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !940, file: !6, line: 381, baseType: !187, size: 64, offset: 128)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !940, file: !6, line: 382, baseType: !187, size: 64, offset: 192)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !88, file: !6, line: 477, baseType: !940, size: 256, offset: 7168)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !88, file: !6, line: 480, baseType: !964, size: 64, offset: 7424)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !88, file: !6, line: 483, baseType: !967, size: 64, offset: 7488)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !88, file: !6, line: 488, baseType: !187, size: 64, offset: 7552)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !88, file: !6, line: 492, baseType: !74, size: 64, offset: 7616)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !88, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !88, file: !6, line: 495, baseType: !74, size: 64, offset: 7744)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !88, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !88, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !88, file: !6, line: 500, baseType: !976, size: 64, offset: 7872)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !978, line: 45, baseType: !979)
!978 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!979 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !88, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !88, file: !6, line: 504, baseType: !982, size: 64, offset: 8000)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !985, line: 96, size: 192, elements: !986)
!985 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!986 = !{!987, !988, !1049, !1052}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !984, file: !985, line: 97, baseType: !7, size: 32)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !984, file: !985, line: 98, baseType: !989, size: 64, offset: 64)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !985, line: 24, size: 3072, elements: !991)
!991 = !{!992, !994, !995, !996, !997, !1011, !1012, !1013, !1014, !1033, !1034, !1035, !1046, !1047, !1048}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !990, file: !985, line: 26, baseType: !993, size: 128)
!993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 128, elements: !904)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !990, file: !985, line: 27, baseType: !993, size: 128, offset: 128)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !990, file: !985, line: 28, baseType: !140, size: 32, offset: 256)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !990, file: !985, line: 31, baseType: !116, size: 32, align: 512, offset: 512)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !990, file: !985, line: 32, baseType: !998, size: 960, offset: 576)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !999, line: 206, size: 960, elements: !1000)
!999 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1000 = !{!1001, !1002, !1005, !1007, !1008, !1010}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !998, file: !999, line: 207, baseType: !296, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !998, file: !999, line: 208, baseType: !1003, size: 256, offset: 64)
!1003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1004, size: 256, elements: !425)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !998, file: !999, line: 209, baseType: !1006, size: 256, offset: 320)
!1006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 256, elements: !425)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !998, file: !999, line: 213, baseType: !223, size: 64, offset: 576)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !998, file: !999, line: 215, baseType: !1009, size: 256, offset: 640)
!1009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 256, elements: !425)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !998, file: !999, line: 216, baseType: !145, size: 8, offset: 896)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !990, file: !985, line: 33, baseType: !237, size: 64, offset: 1536)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !990, file: !985, line: 34, baseType: !237, size: 64, offset: 1600)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !990, file: !985, line: 35, baseType: !543, size: 8, offset: 1664)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !990, file: !985, line: 36, baseType: !1015, size: 320, offset: 1728)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1016, line: 11, size: 320, elements: !1017)
!1016 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1017 = !{!1018, !1025, !1026, !1031}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1015, file: !1016, line: 16, baseType: !1019, size: 128)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !81, line: 198, size: 128, elements: !1020)
!1020 = !{!1021, !1023}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1019, file: !81, line: 199, baseType: !1022, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1019, file: !81, line: 199, baseType: !1024, size: 64, offset: 64)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1015, file: !1016, line: 17, baseType: !237, size: 64, offset: 128)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1015, file: !1016, line: 18, baseType: !1027, size: 64, offset: 192)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{null, !1030}
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1015, file: !1016, line: 19, baseType: !1032, size: 32, offset: 256)
!1032 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !146, line: 21, baseType: !950)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !990, file: !985, line: 37, baseType: !508, size: 256, offset: 2048)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !990, file: !985, line: 38, baseType: !293, size: 128, align: 64, offset: 2304)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !990, file: !985, line: 39, baseType: !1036, size: 64, offset: 2432)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !985, line: 49, size: 768, elements: !1038)
!1038 = !{!1039, !1040, !1041, !1042, !1043, !1044, !1045}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1037, file: !985, line: 50, baseType: !116, size: 32)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1037, file: !985, line: 51, baseType: !1006, size: 256, offset: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1037, file: !985, line: 53, baseType: !1006, size: 256, offset: 320)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1037, file: !985, line: 54, baseType: !237, size: 64, offset: 576)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1037, file: !985, line: 55, baseType: !1036, size: 64, offset: 640)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1037, file: !985, line: 56, baseType: !140, size: 32, offset: 704)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1037, file: !985, line: 57, baseType: !140, size: 32, offset: 736)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !990, file: !985, line: 40, baseType: !237, size: 64, offset: 2496)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !990, file: !985, line: 42, baseType: !140, size: 32, offset: 2560)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !990, file: !985, line: 43, baseType: !983, size: 64, offset: 2624)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !984, file: !985, line: 99, baseType: !1050, offset: 128)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1051, line: 211, elements: !323)
!1051 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !984, file: !985, line: 100, baseType: !1053, size: 64, offset: 128)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !985, line: 63, size: 3008, elements: !1055)
!1055 = !{!1056, !1057, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1087}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1054, file: !985, line: 64, baseType: !1036, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1054, file: !985, line: 65, baseType: !1058, size: 192, offset: 64)
!1058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1036, size: 192, elements: !188)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1054, file: !985, line: 67, baseType: !140, size: 32, offset: 256)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1054, file: !985, line: 68, baseType: !444, size: 256, offset: 320)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1054, file: !985, line: 69, baseType: !116, size: 32, offset: 576)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1054, file: !985, line: 70, baseType: !444, size: 256, offset: 640)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1054, file: !985, line: 71, baseType: !237, size: 64, offset: 896)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1054, file: !985, line: 72, baseType: !237, size: 64, offset: 960)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1054, file: !985, line: 73, baseType: !237, size: 64, offset: 1024)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1054, file: !985, line: 74, baseType: !237, size: 64, offset: 1088)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1054, file: !985, line: 75, baseType: !237, size: 64, offset: 1152)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1054, file: !985, line: 76, baseType: !237, size: 64, offset: 1216)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1054, file: !985, line: 77, baseType: !237, size: 64, offset: 1280)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1054, file: !985, line: 78, baseType: !237, size: 64, offset: 1344)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1054, file: !985, line: 79, baseType: !543, size: 8, offset: 1408)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1054, file: !985, line: 80, baseType: !237, size: 64, offset: 1472)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1054, file: !985, line: 81, baseType: !444, size: 256, offset: 1536)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1054, file: !985, line: 82, baseType: !768, size: 256, offset: 1792)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1054, file: !985, line: 84, baseType: !136, size: 32, offset: 2048)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1054, file: !985, line: 87, baseType: !237, size: 64, offset: 2112)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1054, file: !985, line: 88, baseType: !237, size: 64, offset: 2176)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1054, file: !985, line: 89, baseType: !1079, size: 704, offset: 2240)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !509, line: 111, size: 704, elements: !1080)
!1080 = !{!1081, !1082, !1083, !1086}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1079, file: !509, line: 112, baseType: !508, size: 256)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1079, file: !509, line: 113, baseType: !1015, size: 320, offset: 256)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1079, file: !509, line: 116, baseType: !1084, size: 64, offset: 576)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !509, line: 18, flags: DIFlagFwdDecl)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1079, file: !509, line: 117, baseType: !140, size: 32, offset: 640)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1054, file: !985, line: 90, baseType: !983, size: 64, offset: 2944)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !88, file: !6, line: 515, baseType: !1089, size: 64, offset: 8064)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1091, line: 117, size: 128, elements: !1092)
!1091 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1092 = !{!1093, !1094, !1095}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1090, file: !1091, line: 118, baseType: !423, size: 32)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1090, file: !1091, line: 119, baseType: !423, size: 32, offset: 32)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1090, file: !1091, line: 120, baseType: !223, size: 64, offset: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !88, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !88, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !88, file: !6, line: 520, baseType: !1099, size: 64, offset: 8192)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !88, file: !6, line: 523, baseType: !1101, size: 64, offset: 8256)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !88, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !88, file: !6, line: 525, baseType: !1106, size: 64, offset: 8384)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !77, line: 28, size: 192, elements: !1109)
!1109 = !{!1110, !1111, !1112}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !1108, file: !77, line: 29, baseType: !105, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !1108, file: !77, line: 30, baseType: !105, size: 64, offset: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !1108, file: !77, line: 31, baseType: !237, size: 64, offset: 128)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !88, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !88, file: !6, line: 533, baseType: !74, size: 64, offset: 8512)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !88, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !88, file: !6, line: 535, baseType: !1117, size: 64, offset: 8640)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !88, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !88, file: !6, line: 539, baseType: !140, size: 32, offset: 8736)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !88, file: !6, line: 540, baseType: !1121, size: 64, offset: 8768)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1123, line: 32, size: 64, elements: !1124)
!1123 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1124 = !{!1125, !1126}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1122, file: !1123, line: 33, baseType: !423, size: 32)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1122, file: !1123, line: 34, baseType: !423, size: 32, offset: 32)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !88, file: !6, line: 563, baseType: !80, size: 128, offset: 8832)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !88, file: !6, line: 565, baseType: !80, size: 128, offset: 8960)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !88, file: !6, line: 568, baseType: !1130, size: 64, offset: 9088)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{null}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !88, file: !6, line: 570, baseType: !136, size: 32, offset: 9152)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1136)
!1136 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !84)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !682, line: 746, size: 58368, elements: !1139)
!1139 = !{!1140, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1225, !1236, !1328, !1332, !1335, !1366, !1367, !1368, !1369, !1380, !1382, !1383, !1384, !1385, !1386, !1387, !1398, !1399, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1416, !1417, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1505, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1547, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1582, !1588, !1770, !1771, !1772, !1773, !1777, !1780, !1787, !1792, !1795, !1798, !1801, !1805, !1947, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1985, !1986, !1987, !1996, !2004, !2005, !2006, !2007, !2008, !2013, !2014, !2015, !2018, !2019, !2022, !2025, !2028, !2031, !2034, !2035, !2121, !2122, !2123, !2124, !2125, !2131, !2132, !2133, !2134, !2137, !2138, !2141, !2144, !2145, !2148, !2149, !2150, !2153, !2154, !2155, !2156, !2157, !2158, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2190, !2193, !2259, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2271, !2343, !2345, !2346, !2347, !2348, !2349, !2350, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2367, !2368, !2369}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1138, file: !682, line: 752, baseType: !1141, size: 192)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1142, line: 56, size: 192, elements: !1143)
!1142 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1143 = !{!1144, !1145, !1146, !1147}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1141, file: !1142, line: 57, baseType: !237, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1141, file: !1142, line: 58, baseType: !237, size: 64, offset: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1141, file: !1142, line: 59, baseType: !1032, size: 32, offset: 128)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1141, file: !1142, line: 61, baseType: !1032, size: 32, offset: 160)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1138, file: !682, line: 754, baseType: !7, size: 32, offset: 192)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1138, file: !682, line: 767, baseType: !74, size: 64, offset: 256)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1138, file: !682, line: 768, baseType: !751, size: 32, offset: 320)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1138, file: !682, line: 770, baseType: !7, size: 32, offset: 352)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1138, file: !682, line: 771, baseType: !7, size: 32, offset: 384)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1138, file: !682, line: 774, baseType: !140, size: 32, offset: 416)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1138, file: !682, line: 775, baseType: !1155, size: 128, offset: 448)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1156, line: 58, size: 128, elements: !1157)
!1156 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1157 = !{!1158, !1164, !1169, !1170}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1155, file: !1156, line: 59, baseType: !1159, size: 64)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1160, line: 60, size: 64, elements: !1161)
!1160 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1161 = !{!1162}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1159, file: !1160, line: 61, baseType: !1163, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, scope: !1155, file: !1156, line: 60, baseType: !1165, size: 32, offset: 64)
!1165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1155, file: !1156, line: 60, size: 32, elements: !1166)
!1166 = !{!1167, !1168}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1165, file: !1156, line: 61, baseType: !7, size: 32)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1165, file: !1156, line: 62, baseType: !136, size: 32)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1155, file: !1156, line: 65, baseType: !155, size: 16, offset: 96)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1155, file: !1156, line: 65, baseType: !155, size: 16, offset: 112)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1138, file: !682, line: 776, baseType: !7, size: 32, offset: 576)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1138, file: !682, line: 777, baseType: !237, size: 64, offset: 640)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1138, file: !682, line: 778, baseType: !1137, size: 64, offset: 704)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1138, file: !682, line: 787, baseType: !140, size: 32, offset: 768)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1138, file: !682, line: 788, baseType: !140, size: 32, offset: 800)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1138, file: !682, line: 790, baseType: !140, size: 32, offset: 832)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1138, file: !682, line: 792, baseType: !140, size: 32, offset: 864)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1138, file: !682, line: 793, baseType: !140, size: 32, offset: 896)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1138, file: !682, line: 794, baseType: !140, size: 32, offset: 928)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1138, file: !682, line: 795, baseType: !7, size: 32, offset: 960)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1138, file: !682, line: 797, baseType: !1182, size: 2048, offset: 1024)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !682, line: 551, size: 2048, elements: !1183)
!1183 = !{!1184, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1204, !1207, !1208, !1209}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1182, file: !682, line: 553, baseType: !1185, size: 128)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !682, line: 411, size: 128, elements: !1186)
!1186 = !{!1187, !1188}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1185, file: !682, line: 412, baseType: !237, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1185, file: !682, line: 413, baseType: !1032, size: 32, offset: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1182, file: !682, line: 554, baseType: !549, size: 192, align: 64, offset: 128)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1182, file: !682, line: 555, baseType: !350, size: 64, offset: 320)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1182, file: !682, line: 556, baseType: !350, size: 64, offset: 384)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1182, file: !682, line: 558, baseType: !80, size: 128, offset: 448)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1182, file: !682, line: 559, baseType: !7, size: 32, offset: 576)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1182, file: !682, line: 561, baseType: !350, size: 64, offset: 640)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1182, file: !682, line: 562, baseType: !350, size: 64, offset: 704)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1182, file: !682, line: 563, baseType: !350, size: 64, offset: 768)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1182, file: !682, line: 564, baseType: !350, size: 64, offset: 832)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1182, file: !682, line: 565, baseType: !362, size: 64, offset: 896)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1182, file: !682, line: 566, baseType: !350, size: 64, offset: 960)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1182, file: !682, line: 568, baseType: !350, size: 64, offset: 1024)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1182, file: !682, line: 571, baseType: !140, size: 32, offset: 1088)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1182, file: !682, line: 572, baseType: !1203, size: 64, offset: 1152)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1182, file: !682, line: 574, baseType: !1205, size: 64, offset: 1216)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !682, line: 49, flags: DIFlagFwdDecl)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1182, file: !682, line: 576, baseType: !1205, size: 64, offset: 1280)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1182, file: !682, line: 578, baseType: !237, size: 64, offset: 1344)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1182, file: !682, line: 588, baseType: !1210, size: 512, align: 512, offset: 1536)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !682, line: 497, size: 512, align: 512, elements: !1211)
!1211 = !{!1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1210, file: !682, line: 498, baseType: !350, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1210, file: !682, line: 499, baseType: !350, size: 64, offset: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1210, file: !682, line: 500, baseType: !350, size: 64, offset: 128)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1210, file: !682, line: 501, baseType: !1032, size: 32, offset: 192)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1210, file: !682, line: 502, baseType: !1032, size: 32, offset: 224)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1210, file: !682, line: 503, baseType: !237, size: 64, offset: 256)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1210, file: !682, line: 504, baseType: !237, size: 64, offset: 320)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1210, file: !682, line: 505, baseType: !237, size: 64, offset: 384)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1210, file: !682, line: 506, baseType: !1221, size: 64, align: 64, offset: 448)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !682, line: 445, size: 64, align: 64, elements: !1222)
!1222 = !{!1223, !1224}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1221, file: !682, line: 446, baseType: !7, size: 32)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1221, file: !682, line: 447, baseType: !7, size: 32, offset: 32)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1138, file: !682, line: 798, baseType: !1226, size: 384, offset: 3072)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !682, line: 592, size: 384, elements: !1227)
!1227 = !{!1228, !1229, !1230, !1231, !1232, !1233, !1234}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1226, file: !682, line: 593, baseType: !80, size: 128)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1226, file: !682, line: 594, baseType: !237, size: 64, offset: 128)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1226, file: !682, line: 595, baseType: !237, size: 64, offset: 192)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1226, file: !682, line: 596, baseType: !7, size: 32, offset: 256)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1226, file: !682, line: 597, baseType: !157, size: 16, offset: 288)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1226, file: !682, line: 598, baseType: !157, size: 16, offset: 304)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1226, file: !682, line: 600, baseType: !1235, size: 64, offset: 320)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1138, file: !682, line: 799, baseType: !1237, size: 1792, offset: 3456)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !682, line: 610, size: 1792, elements: !1238)
!1238 = !{!1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1325, !1326}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1237, file: !682, line: 611, baseType: !549, size: 192, align: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1237, file: !682, line: 618, baseType: !350, size: 64, offset: 192)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1237, file: !682, line: 619, baseType: !350, size: 64, offset: 256)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1237, file: !682, line: 620, baseType: !350, size: 64, offset: 320)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1237, file: !682, line: 621, baseType: !350, size: 64, offset: 384)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1237, file: !682, line: 622, baseType: !350, size: 64, offset: 448)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1237, file: !682, line: 629, baseType: !362, size: 64, offset: 512)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1237, file: !682, line: 630, baseType: !350, size: 64, offset: 576)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1237, file: !682, line: 631, baseType: !7, size: 32, offset: 640)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1237, file: !682, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1237, file: !682, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1237, file: !682, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1237, file: !682, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1237, file: !682, line: 662, baseType: !1253, size: 512, offset: 704)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !25, line: 118, size: 512, elements: !1254)
!1254 = !{!1255, !1263, !1264, !1269, !1321, !1322, !1323, !1324}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1253, file: !25, line: 119, baseType: !1256, size: 256)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1257, line: 9, size: 256, elements: !1258)
!1257 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1258 = !{!1259, !1260}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1256, file: !1257, line: 10, baseType: !549, size: 192, align: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1256, file: !1257, line: 11, baseType: !1261, size: 64, offset: 192)
!1261 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1262, line: 29, baseType: !362)
!1262 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1253, file: !25, line: 120, baseType: !1261, size: 64, offset: 256)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1253, file: !25, line: 121, baseType: !1265, size: 64, offset: 320)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{!24, !1268}
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1253, file: !25, line: 122, baseType: !1270, size: 64, offset: 384)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !25, line: 159, size: 512, align: 512, elements: !1272)
!1272 = !{!1273, !1298, !1299, !1302, !1307, !1308, !1316, !1320}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1271, file: !25, line: 160, baseType: !1274, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !25, line: 215, size: 4608, align: 512, elements: !1276)
!1276 = !{!1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1275, file: !25, line: 216, baseType: !378, size: 32)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1275, file: !25, line: 217, baseType: !7, size: 32, offset: 32)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1275, file: !25, line: 218, baseType: !7, size: 32, offset: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1275, file: !25, line: 219, baseType: !7, size: 32, offset: 96)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1275, file: !25, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1275, file: !25, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1275, file: !25, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1275, file: !25, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1275, file: !25, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1275, file: !25, line: 226, baseType: !7, size: 32, offset: 160)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1275, file: !25, line: 227, baseType: !157, size: 16, offset: 192)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1275, file: !25, line: 228, baseType: !157, size: 16, offset: 208)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1275, file: !25, line: 229, baseType: !7, size: 32, offset: 224)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1275, file: !25, line: 235, baseType: !1261, size: 64, offset: 256)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1275, file: !25, line: 236, baseType: !1268, size: 64, offset: 320)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1275, file: !25, line: 237, baseType: !1261, size: 64, offset: 384)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1275, file: !25, line: 238, baseType: !1268, size: 64, offset: 448)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1275, file: !25, line: 239, baseType: !1295, size: 4096, align: 512, offset: 512)
!1295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1271, size: 4096, align: 512, elements: !1296)
!1296 = !{!1297}
!1297 = !DISubrange(count: 8)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1271, file: !25, line: 161, baseType: !7, size: 32, offset: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1271, file: !25, line: 162, baseType: !1300, size: 32, offset: 96)
!1300 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !81, line: 32, baseType: !1301)
!1301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !221, line: 96, baseType: !140)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1271, file: !25, line: 163, baseType: !1303, size: 32, offset: 128)
!1303 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !393, line: 274, baseType: !1304)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !393, line: 274, size: 32, elements: !1305)
!1305 = !{!1306}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1304, file: !393, line: 274, baseType: !392, size: 32)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1271, file: !25, line: 164, baseType: !1268, size: 64, offset: 192)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1271, file: !25, line: 165, baseType: !1309, size: 128, offset: 256)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1257, line: 14, size: 128, elements: !1310)
!1310 = !{!1311}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1309, file: !1257, line: 15, baseType: !1312, size: 128)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !550, line: 26, size: 128, elements: !1313)
!1313 = !{!1314, !1315}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1312, file: !550, line: 27, baseType: !651, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1312, file: !550, line: 28, baseType: !554, size: 64, offset: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1271, file: !25, line: 166, baseType: !1317, size: 64, offset: 384)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DISubroutineType(types: !1319)
!1319 = !{!1261}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1271, file: !25, line: 167, baseType: !1261, size: 64, offset: 448)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1253, file: !25, line: 123, baseType: !145, size: 8, offset: 448)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1253, file: !25, line: 124, baseType: !145, size: 8, offset: 456)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1253, file: !25, line: 125, baseType: !145, size: 8, offset: 464)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1253, file: !25, line: 126, baseType: !145, size: 8, offset: 472)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1237, file: !682, line: 671, baseType: !1253, size: 512, offset: 1216)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1237, file: !682, line: 679, baseType: !1327, size: 64, offset: 1728)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1138, file: !682, line: 800, baseType: !1329, size: 64, offset: 5248)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1331)
!1331 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !682, line: 800, flags: DIFlagFwdDecl)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1138, file: !682, line: 809, baseType: !1333, size: 64, offset: 5312)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !682, line: 70, flags: DIFlagFwdDecl)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1138, file: !682, line: 825, baseType: !1336, size: 2048, align: 512, offset: 5632)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !682, line: 509, size: 2048, align: 512, elements: !1337)
!1337 = !{!1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1336, file: !682, line: 511, baseType: !350, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1336, file: !682, line: 512, baseType: !350, size: 64, offset: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1336, file: !682, line: 513, baseType: !350, size: 64, offset: 128)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1336, file: !682, line: 514, baseType: !350, size: 64, offset: 192)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1336, file: !682, line: 515, baseType: !350, size: 64, offset: 256)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1336, file: !682, line: 516, baseType: !350, size: 64, offset: 320)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1336, file: !682, line: 518, baseType: !350, size: 64, offset: 384)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1336, file: !682, line: 519, baseType: !350, size: 64, offset: 448)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1336, file: !682, line: 520, baseType: !362, size: 64, offset: 512)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1336, file: !682, line: 522, baseType: !350, size: 64, offset: 576)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1336, file: !682, line: 523, baseType: !350, size: 64, offset: 640)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1336, file: !682, line: 524, baseType: !362, size: 64, offset: 704)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1336, file: !682, line: 526, baseType: !362, size: 64, offset: 768)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1336, file: !682, line: 527, baseType: !350, size: 64, offset: 832)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1336, file: !682, line: 529, baseType: !350, size: 64, offset: 896)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1336, file: !682, line: 530, baseType: !350, size: 64, offset: 960)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1336, file: !682, line: 531, baseType: !350, size: 64, offset: 1024)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1336, file: !682, line: 532, baseType: !350, size: 64, offset: 1088)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1336, file: !682, line: 533, baseType: !350, size: 64, offset: 1152)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1336, file: !682, line: 535, baseType: !350, size: 64, offset: 1216)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1336, file: !682, line: 536, baseType: !350, size: 64, offset: 1280)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1336, file: !682, line: 537, baseType: !350, size: 64, offset: 1344)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1336, file: !682, line: 538, baseType: !350, size: 64, offset: 1408)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1336, file: !682, line: 539, baseType: !350, size: 64, offset: 1472)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1336, file: !682, line: 540, baseType: !350, size: 64, offset: 1536)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1336, file: !682, line: 541, baseType: !350, size: 64, offset: 1600)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1336, file: !682, line: 542, baseType: !350, size: 64, offset: 1664)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1336, file: !682, line: 543, baseType: !350, size: 64, offset: 1728)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1138, file: !682, line: 833, baseType: !7, size: 32, offset: 7680)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1138, file: !682, line: 836, baseType: !7, size: 32, offset: 7712)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1138, file: !682, line: 837, baseType: !140, size: 32, offset: 7744)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1138, file: !682, line: 838, baseType: !1370, size: 64, offset: 7808)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1372)
!1372 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1373, line: 19, baseType: !1374)
!1373 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1373, line: 19, size: 64, elements: !1375)
!1375 = !{!1376}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1374, file: !1373, line: 19, baseType: !1377, size: 64)
!1377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 64, elements: !1378)
!1378 = !{!1379}
!1379 = !DISubrange(count: 1)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1138, file: !682, line: 839, baseType: !1381, size: 64, offset: 7872)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1138, file: !682, line: 840, baseType: !1372, size: 64, offset: 7936)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1138, file: !682, line: 841, baseType: !74, size: 64, offset: 8000)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1138, file: !682, line: 843, baseType: !157, size: 16, offset: 8064)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1138, file: !682, line: 845, baseType: !157, size: 16, offset: 8080)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1138, file: !682, line: 848, baseType: !140, size: 32, offset: 8096)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1138, file: !682, line: 849, baseType: !1388, size: 32, offset: 8128)
!1388 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !682, line: 718, size: 32, elements: !1389)
!1389 = !{!1390, !1397}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1388, file: !682, line: 724, baseType: !1391, size: 32)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1388, file: !682, line: 719, size: 32, elements: !1392)
!1392 = !{!1393, !1394, !1395, !1396}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1391, file: !682, line: 720, baseType: !145, size: 8)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1391, file: !682, line: 721, baseType: !145, size: 8, offset: 8)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1391, file: !682, line: 722, baseType: !145, size: 8, offset: 16)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1391, file: !682, line: 723, baseType: !145, size: 8, offset: 24)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1388, file: !682, line: 725, baseType: !1032, size: 32)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1138, file: !682, line: 850, baseType: !80, size: 128, offset: 8192)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1138, file: !682, line: 851, baseType: !1400, size: 64, offset: 8320)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !682, line: 60, flags: DIFlagFwdDecl)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1138, file: !682, line: 855, baseType: !237, size: 64, offset: 8384)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1138, file: !682, line: 856, baseType: !145, size: 8, offset: 8448)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1138, file: !682, line: 857, baseType: !145, size: 8, offset: 8456)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1138, file: !682, line: 858, baseType: !140, size: 32, offset: 8480)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1138, file: !682, line: 859, baseType: !80, size: 128, offset: 8512)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1138, file: !682, line: 860, baseType: !140, size: 32, offset: 8640)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1138, file: !682, line: 861, baseType: !80, size: 128, offset: 8704)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1138, file: !682, line: 873, baseType: !1410, size: 256, offset: 8832)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !682, line: 376, size: 256, elements: !1411)
!1411 = !{!1412, !1413, !1414, !1415}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1410, file: !682, line: 381, baseType: !237, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1410, file: !682, line: 384, baseType: !352, size: 64, offset: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1410, file: !682, line: 389, baseType: !352, size: 64, offset: 128)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1410, file: !682, line: 392, baseType: !352, size: 64, offset: 192)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1138, file: !682, line: 875, baseType: !80, size: 128, offset: 9088)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1138, file: !682, line: 877, baseType: !1418, size: 320, offset: 9216)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1419, line: 86, size: 320, elements: !1420)
!1419 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1420 = !{!1421, !1422, !1423}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1418, file: !1419, line: 87, baseType: !140, size: 32)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1418, file: !1419, line: 88, baseType: !80, size: 128, offset: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1418, file: !1419, line: 89, baseType: !80, size: 128, offset: 192)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1138, file: !682, line: 878, baseType: !549, size: 192, align: 64, offset: 9536)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1138, file: !682, line: 881, baseType: !302, size: 64, offset: 9728)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1138, file: !682, line: 882, baseType: !302, size: 64, offset: 9792)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1138, file: !682, line: 884, baseType: !140, size: 32, offset: 9856)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1138, file: !682, line: 885, baseType: !140, size: 32, offset: 9888)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1138, file: !682, line: 886, baseType: !140, size: 32, offset: 9920)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1138, file: !682, line: 888, baseType: !140, size: 32, offset: 9952)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1138, file: !682, line: 890, baseType: !237, size: 64, offset: 9984)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1138, file: !682, line: 893, baseType: !7, size: 32, offset: 10048)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1138, file: !682, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1138, file: !682, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1138, file: !682, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1138, file: !682, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1138, file: !682, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1138, file: !682, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1138, file: !682, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1138, file: !682, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1138, file: !682, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1138, file: !682, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1138, file: !682, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1138, file: !682, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1138, file: !682, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1138, file: !682, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1138, file: !682, line: 969, baseType: !237, size: 64, offset: 10176)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1138, file: !682, line: 971, baseType: !1449, size: 448, offset: 10240)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !30, line: 25, size: 448, elements: !1450)
!1450 = !{!1451, !1452, !1457}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1449, file: !30, line: 26, baseType: !237, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1449, file: !30, line: 27, baseType: !1453, size: 64, offset: 64)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{!223, !1456}
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, scope: !1449, file: !30, line: 28, baseType: !1458, size: 320, offset: 128)
!1458 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1449, file: !30, line: 28, size: 320, elements: !1459)
!1459 = !{!1460, !1470, !1495}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1458, file: !30, line: 37, baseType: !1461, size: 320)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1458, file: !30, line: 30, size: 320, elements: !1462)
!1462 = !{!1463, !1465, !1466, !1467, !1468, !1469}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1461, file: !30, line: 31, baseType: !1464, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1461, file: !30, line: 32, baseType: !1032, size: 32, offset: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1461, file: !30, line: 33, baseType: !1032, size: 32, offset: 96)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1461, file: !30, line: 34, baseType: !1032, size: 32, offset: 128)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1461, file: !30, line: 35, baseType: !350, size: 64, offset: 192)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1461, file: !30, line: 36, baseType: !1464, size: 64, offset: 256)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1458, file: !30, line: 47, baseType: !1471, size: 192)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1458, file: !30, line: 39, size: 192, elements: !1472)
!1472 = !{!1473, !1474, !1475, !1494}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1471, file: !30, line: 40, baseType: !1300, size: 32)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1471, file: !30, line: 41, baseType: !29, size: 32, offset: 32)
!1475 = !DIDerivedType(tag: DW_TAG_member, scope: !1471, file: !30, line: 42, baseType: !1476, size: 64, offset: 64)
!1476 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1471, file: !30, line: 42, size: 64, elements: !1477)
!1477 = !{!1478, !1486}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1476, file: !30, line: 43, baseType: !1479, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1481, line: 7, size: 128, elements: !1482)
!1481 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1482 = !{!1483, !1485}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1480, file: !1481, line: 8, baseType: !1484, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !221, line: 93, baseType: !275)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1480, file: !1481, line: 9, baseType: !275, size: 64, offset: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1476, file: !30, line: 44, baseType: !1487, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1489, line: 7, size: 64, elements: !1490)
!1489 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1490 = !{!1491, !1493}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1488, file: !1489, line: 8, baseType: !1492, size: 32)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1489, line: 5, baseType: !423)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1488, file: !1489, line: 9, baseType: !423, size: 32, offset: 32)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1471, file: !30, line: 46, baseType: !350, size: 64, offset: 128)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1458, file: !30, line: 55, baseType: !1496, size: 256)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1458, file: !30, line: 49, size: 256, elements: !1497)
!1497 = !{!1498, !1501, !1502, !1503, !1504}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1496, file: !30, line: 50, baseType: !1499, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !30, line: 14, flags: DIFlagFwdDecl)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1496, file: !30, line: 51, baseType: !140, size: 32, offset: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1496, file: !30, line: 52, baseType: !140, size: 32, offset: 96)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1496, file: !30, line: 53, baseType: !237, size: 64, offset: 128)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1496, file: !30, line: 54, baseType: !237, size: 64, offset: 192)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1138, file: !682, line: 973, baseType: !1506, size: 32, offset: 10688)
!1506 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !81, line: 27, baseType: !1507)
!1507 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !221, line: 28, baseType: !140)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1138, file: !682, line: 974, baseType: !1506, size: 32, offset: 10720)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1138, file: !682, line: 978, baseType: !237, size: 64, offset: 10752)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1138, file: !682, line: 987, baseType: !1137, size: 64, offset: 10816)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1138, file: !682, line: 990, baseType: !1137, size: 64, offset: 10880)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1138, file: !682, line: 995, baseType: !80, size: 128, offset: 10944)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1138, file: !682, line: 996, baseType: !80, size: 128, offset: 11072)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1138, file: !682, line: 997, baseType: !1137, size: 64, offset: 11200)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1138, file: !682, line: 1005, baseType: !80, size: 128, offset: 11264)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1138, file: !682, line: 1006, baseType: !80, size: 128, offset: 11392)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1138, file: !682, line: 1009, baseType: !1518, size: 64, offset: 11520)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !1520, line: 59, size: 768, elements: !1521)
!1520 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!1521 = !{!1522, !1523, !1524, !1525, !1530, !1531, !1538, !1539}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1519, file: !1520, line: 61, baseType: !751, size: 32)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1519, file: !1520, line: 62, baseType: !7, size: 32, offset: 32)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1519, file: !1520, line: 63, baseType: !116, size: 32, offset: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1519, file: !1520, line: 65, baseType: !1526, size: 256, offset: 128)
!1526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1527, size: 256, elements: !425)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !81, line: 194, size: 64, elements: !1528)
!1528 = !{!1529}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1527, file: !81, line: 195, baseType: !1022, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1519, file: !1520, line: 66, baseType: !1527, size: 64, offset: 384)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1519, file: !1520, line: 68, baseType: !1532, size: 192, offset: 448)
!1532 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1533, line: 41, baseType: !1534)
!1533 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1533, line: 37, size: 192, elements: !1535)
!1535 = !{!1536, !1537}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1534, file: !1533, line: 38, baseType: !116, size: 32)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1534, file: !1533, line: 39, baseType: !80, size: 128, offset: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1519, file: !1520, line: 69, baseType: !293, size: 128, align: 64, offset: 640)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1519, file: !1520, line: 70, baseType: !1540, offset: 768)
!1540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1541, elements: !521)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !1520, line: 54, size: 128, elements: !1542)
!1542 = !{!1543, !1544}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1541, file: !1520, line: 55, baseType: !140, size: 32)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1541, file: !1520, line: 56, baseType: !1545, size: 64, offset: 64)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1520, line: 56, flags: DIFlagFwdDecl)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1138, file: !682, line: 1010, baseType: !1548, size: 512, offset: 11584)
!1548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1019, size: 512, elements: !425)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1138, file: !682, line: 1011, baseType: !80, size: 128, offset: 12096)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1138, file: !682, line: 1012, baseType: !80, size: 128, offset: 12224)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1138, file: !682, line: 1014, baseType: !767, size: 64, offset: 12352)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1138, file: !682, line: 1017, baseType: !914, size: 64, offset: 12416)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1138, file: !682, line: 1020, baseType: !914, size: 64, offset: 12480)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1138, file: !682, line: 1023, baseType: !74, size: 64, offset: 12544)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1138, file: !682, line: 1025, baseType: !350, size: 64, offset: 12608)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1138, file: !682, line: 1026, baseType: !350, size: 64, offset: 12672)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1138, file: !682, line: 1031, baseType: !350, size: 64, offset: 12736)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1138, file: !682, line: 1032, baseType: !1559, size: 192, offset: 12800)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !682, line: 324, size: 192, elements: !1560)
!1560 = !{!1561, !1562, !1563}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1559, file: !682, line: 326, baseType: !350, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1559, file: !682, line: 327, baseType: !350, size: 64, offset: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1559, file: !682, line: 328, baseType: !378, size: 32, offset: 128)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1138, file: !682, line: 1041, baseType: !237, size: 64, offset: 12992)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1138, file: !682, line: 1042, baseType: !237, size: 64, offset: 13056)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1138, file: !682, line: 1045, baseType: !350, size: 64, offset: 13120)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1138, file: !682, line: 1048, baseType: !350, size: 64, offset: 13184)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1138, file: !682, line: 1051, baseType: !237, size: 64, offset: 13248)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1138, file: !682, line: 1052, baseType: !237, size: 64, offset: 13312)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1138, file: !682, line: 1055, baseType: !1571, size: 640, offset: 13376)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1572, line: 132, size: 640, elements: !1573)
!1572 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1573 = !{!1574, !1580, !1581}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1571, file: !1572, line: 133, baseType: !1575, size: 576)
!1575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1576, size: 576, elements: !188)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1572, line: 117, size: 192, elements: !1577)
!1577 = !{!1578, !1579}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1576, file: !1572, line: 118, baseType: !350, size: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1576, file: !1572, line: 119, baseType: !1309, size: 128, offset: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1571, file: !1572, line: 134, baseType: !7, size: 32, offset: 576)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1571, file: !1572, line: 135, baseType: !7, size: 32, offset: 608)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1138, file: !682, line: 1058, baseType: !1583, size: 448, offset: 14016)
!1583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1572, line: 144, size: 448, elements: !1584)
!1584 = !{!1585, !1586, !1587}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1583, file: !1572, line: 145, baseType: !293, size: 128, align: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1583, file: !1572, line: 146, baseType: !444, size: 256, offset: 128)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1583, file: !1572, line: 147, baseType: !7, size: 32, offset: 384)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1138, file: !682, line: 1064, baseType: !1589, size: 64, offset: 14464)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1591)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1592, line: 110, size: 1472, elements: !1593)
!1592 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1593 = !{!1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1610, !1611, !1612, !1613, !1614, !1615, !1725, !1726, !1727, !1728, !1729, !1752, !1753, !1757, !1765}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1591, file: !1592, line: 111, baseType: !356, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1591, file: !1592, line: 112, baseType: !618, size: 32, offset: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1591, file: !1592, line: 113, baseType: !625, size: 32, offset: 96)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1591, file: !1592, line: 114, baseType: !618, size: 32, offset: 128)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1591, file: !1592, line: 115, baseType: !625, size: 32, offset: 160)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1591, file: !1592, line: 116, baseType: !618, size: 32, offset: 192)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1591, file: !1592, line: 117, baseType: !625, size: 32, offset: 224)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1591, file: !1592, line: 118, baseType: !618, size: 32, offset: 256)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1591, file: !1592, line: 119, baseType: !625, size: 32, offset: 288)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1591, file: !1592, line: 120, baseType: !7, size: 32, offset: 320)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1591, file: !1592, line: 121, baseType: !1605, size: 64, offset: 384)
!1605 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1606, line: 24, baseType: !1607)
!1606 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1606, line: 24, size: 64, elements: !1608)
!1608 = !{!1609}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1607, file: !1606, line: 24, baseType: !350, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1591, file: !1592, line: 122, baseType: !1605, size: 64, offset: 448)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1591, file: !1592, line: 123, baseType: !1605, size: 64, offset: 512)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1591, file: !1592, line: 124, baseType: !1605, size: 64, offset: 576)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1591, file: !1592, line: 125, baseType: !1605, size: 64, offset: 640)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1591, file: !1592, line: 127, baseType: !149, size: 8, offset: 704)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1591, file: !1592, line: 129, baseType: !1616, size: 64, offset: 768)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1618, line: 195, size: 1728, elements: !1619)
!1618 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1619 = !{!1620, !1621, !1624, !1629, !1630, !1633, !1634, !1641, !1642, !1643, !1644, !1647, !1648, !1649, !1650, !1651, !1689, !1710}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1617, file: !1618, line: 196, baseType: !751, size: 32)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1617, file: !1618, line: 197, baseType: !1622, size: 32, offset: 32)
!1622 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1618, line: 28, baseType: !1623)
!1623 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !81, line: 104, baseType: !423)
!1624 = !DIDerivedType(tag: DW_TAG_member, scope: !1617, file: !1618, line: 198, baseType: !1625, size: 192, offset: 64)
!1625 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1617, file: !1618, line: 198, size: 192, elements: !1626)
!1626 = !{!1627, !1628}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1625, file: !1618, line: 199, baseType: !80, size: 128)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1625, file: !1618, line: 200, baseType: !549, size: 192, align: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1617, file: !1618, line: 205, baseType: !367, size: 320, offset: 256)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1617, file: !1618, line: 206, baseType: !1631, size: 64, offset: 576)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1618, line: 206, flags: DIFlagFwdDecl)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1617, file: !1618, line: 207, baseType: !74, size: 64, offset: 640)
!1634 = !DIDerivedType(tag: DW_TAG_member, scope: !1617, file: !1618, line: 208, baseType: !1635, size: 64, offset: 704)
!1635 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1617, file: !1618, line: 208, size: 64, elements: !1636)
!1636 = !{!1637, !1640}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1635, file: !1618, line: 209, baseType: !1638, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1639, line: 8, baseType: !363)
!1639 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1635, file: !1618, line: 210, baseType: !1638, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1617, file: !1618, line: 212, baseType: !1638, size: 64, offset: 768)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1617, file: !1618, line: 213, baseType: !618, size: 32, offset: 832)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1617, file: !1618, line: 214, baseType: !625, size: 32, offset: 864)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1617, file: !1618, line: 215, baseType: !1645, size: 32, offset: 896)
!1645 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1618, line: 31, baseType: !1646)
!1646 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !81, line: 110, baseType: !1032)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1617, file: !1618, line: 216, baseType: !157, size: 16, offset: 928)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1617, file: !1618, line: 217, baseType: !157, size: 16, offset: 944)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1617, file: !1618, line: 221, baseType: !484, size: 16, offset: 960)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1617, file: !1618, line: 228, baseType: !237, size: 64, offset: 1024)
!1651 = !DIDerivedType(tag: DW_TAG_member, scope: !1617, file: !1618, line: 245, baseType: !1652, size: 320, offset: 1088)
!1652 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1617, file: !1618, line: 245, size: 320, elements: !1653)
!1653 = !{!1654, !1681}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1652, file: !1618, line: 246, baseType: !1655, size: 320)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1618, line: 114, size: 320, elements: !1656)
!1656 = !{!1657, !1658, !1670, !1673, !1680}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1655, file: !1618, line: 116, baseType: !237, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, scope: !1655, file: !1618, line: 117, baseType: !1659, size: 64, offset: 64)
!1659 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1655, file: !1618, line: 117, size: 64, elements: !1660)
!1660 = !{!1661, !1669}
!1661 = !DIDerivedType(tag: DW_TAG_member, scope: !1659, file: !1618, line: 118, baseType: !1662, size: 64)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1659, file: !1618, line: 118, size: 64, elements: !1663)
!1663 = !{!1664, !1665}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1662, file: !1618, line: 120, baseType: !155, size: 16)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1662, file: !1618, line: 121, baseType: !1666, size: 48, offset: 16)
!1666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 48, elements: !1667)
!1667 = !{!1668}
!1668 = !DISubrange(count: 6)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1659, file: !1618, line: 127, baseType: !237, size: 64)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1655, file: !1618, line: 129, baseType: !1671, size: 64, offset: 128)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1618, line: 102, flags: DIFlagFwdDecl)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1655, file: !1618, line: 130, baseType: !1674, size: 64, offset: 192)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1618, line: 108, size: 192, elements: !1676)
!1676 = !{!1677, !1678, !1679}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1675, file: !1618, line: 109, baseType: !293, size: 128, align: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1675, file: !1618, line: 110, baseType: !751, size: 32, offset: 128)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1675, file: !1618, line: 111, baseType: !543, size: 8, offset: 160)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1655, file: !1618, line: 131, baseType: !105, size: 64, offset: 256)
!1681 = !DIDerivedType(tag: DW_TAG_member, scope: !1652, file: !1618, line: 247, baseType: !1682, size: 320)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1652, file: !1618, line: 247, size: 320, elements: !1683)
!1683 = !{!1684, !1685, !1686, !1687, !1688}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1682, file: !1618, line: 248, baseType: !237, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1682, file: !1618, line: 249, baseType: !237, size: 64, offset: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1682, file: !1618, line: 250, baseType: !1671, size: 64, offset: 128)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1682, file: !1618, line: 251, baseType: !1674, size: 64, offset: 192)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1682, file: !1618, line: 252, baseType: !187, size: 64, offset: 256)
!1689 = !DIDerivedType(tag: DW_TAG_member, scope: !1617, file: !1618, line: 260, baseType: !1690, size: 256, offset: 1408)
!1690 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1617, file: !1618, line: 260, size: 256, elements: !1691)
!1691 = !{!1692, !1698}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1690, file: !1618, line: 261, baseType: !1693, size: 256)
!1693 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1618, line: 134, size: 256, elements: !1694)
!1694 = !{!1695, !1696}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1693, file: !1618, line: 135, baseType: !74, size: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1693, file: !1618, line: 136, baseType: !1697, size: 256)
!1697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 256, elements: !425)
!1698 = !DIDerivedType(tag: DW_TAG_member, scope: !1690, file: !1618, line: 262, baseType: !1699, size: 256)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1690, file: !1618, line: 262, size: 256, elements: !1700)
!1700 = !{!1701, !1702}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1699, file: !1618, line: 264, baseType: !80, size: 128)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1699, file: !1618, line: 265, baseType: !1703, size: 128, offset: 128)
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1704, line: 22, size: 128, elements: !1705)
!1704 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1705 = !{!1706, !1709}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1703, file: !1704, line: 23, baseType: !1707, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1704, line: 23, flags: DIFlagFwdDecl)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1703, file: !1704, line: 24, baseType: !237, size: 64, offset: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1617, file: !1618, line: 280, baseType: !1711, size: 64, offset: 1664)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1618, line: 176, size: 192, elements: !1713)
!1713 = !{!1714, !1723, !1724}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1712, file: !1618, line: 177, baseType: !1715, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1618, line: 171, baseType: !1716)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!140, !1616, !1719, !1721, !1616}
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1672)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1693)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1712, file: !1618, line: 178, baseType: !1616, size: 64, offset: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1712, file: !1618, line: 179, baseType: !1671, size: 64, offset: 128)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1591, file: !1592, line: 130, baseType: !1616, size: 64, offset: 832)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1591, file: !1592, line: 131, baseType: !1616, size: 64, offset: 896)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1591, file: !1592, line: 132, baseType: !1616, size: 64, offset: 960)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1591, file: !1592, line: 135, baseType: !74, size: 64, offset: 1024)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1591, file: !1592, line: 137, baseType: !1730, size: 64, offset: 1088)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1732, line: 14, size: 1088, elements: !1733)
!1732 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1733 = !{!1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1731, file: !1732, line: 15, baseType: !751, size: 32)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1731, file: !1732, line: 17, baseType: !415, size: 320, offset: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1731, file: !1732, line: 19, baseType: !237, size: 64, offset: 384)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1731, file: !1732, line: 20, baseType: !356, size: 64, offset: 448)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1731, file: !1732, line: 23, baseType: !1019, size: 128, offset: 512)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1731, file: !1732, line: 24, baseType: !618, size: 32, offset: 640)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1731, file: !1732, line: 29, baseType: !356, size: 64, offset: 704)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1731, file: !1732, line: 36, baseType: !1742, size: 320, offset: 768)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1743, line: 15, size: 320, elements: !1744)
!1743 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1744 = !{!1745, !1746, !1747, !1748, !1749, !1750, !1751}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1742, file: !1743, line: 16, baseType: !378, size: 32)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1742, file: !1743, line: 18, baseType: !140, size: 32, offset: 32)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1742, file: !1743, line: 19, baseType: !140, size: 32, offset: 64)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1742, file: !1743, line: 20, baseType: !140, size: 32, offset: 96)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1742, file: !1743, line: 21, baseType: !140, size: 32, offset: 128)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1742, file: !1743, line: 22, baseType: !237, size: 64, offset: 192)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1742, file: !1743, line: 23, baseType: !237, size: 64, offset: 256)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1591, file: !1592, line: 138, baseType: !491, size: 64, offset: 1152)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1591, file: !1592, line: 139, baseType: !1754, size: 64, offset: 1216)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1756, line: 16, flags: DIFlagFwdDecl)
!1756 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1591, file: !1592, line: 140, baseType: !1758, size: 64, offset: 1280)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1592, line: 25, size: 64, elements: !1760)
!1760 = !{!1761, !1762, !1763}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1759, file: !1592, line: 26, baseType: !136, size: 32)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1759, file: !1592, line: 27, baseType: !140, size: 32, offset: 32)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1759, file: !1592, line: 28, baseType: !1764, offset: 64)
!1764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !625, elements: !521)
!1765 = !DIDerivedType(tag: DW_TAG_member, scope: !1591, file: !1592, line: 142, baseType: !1766, size: 128, offset: 1344)
!1766 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1591, file: !1592, line: 142, size: 128, elements: !1767)
!1767 = !{!1768, !1769}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1766, file: !1592, line: 143, baseType: !140, size: 32)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1766, file: !1592, line: 144, baseType: !293, size: 128, align: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1138, file: !682, line: 1067, baseType: !1589, size: 64, offset: 14528)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1138, file: !682, line: 1070, baseType: !1589, size: 64, offset: 14592)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1138, file: !682, line: 1074, baseType: !1616, size: 64, offset: 14656)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1138, file: !682, line: 1084, baseType: !1774, size: 128, offset: 14720)
!1774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 128, elements: !1775)
!1775 = !{!1776}
!1776 = !DISubrange(count: 16)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1138, file: !682, line: 1086, baseType: !1778, size: 64, offset: 14848)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !682, line: 55, flags: DIFlagFwdDecl)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1138, file: !682, line: 1089, baseType: !1781, size: 64, offset: 14912)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1782, line: 12, size: 64, elements: !1783)
!1782 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1783 = !{!1784}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1781, file: !1782, line: 13, baseType: !1785, size: 64)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1782, line: 8, flags: DIFlagFwdDecl)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1138, file: !682, line: 1090, baseType: !1788, size: 128, offset: 14976)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1789, line: 13, size: 128, elements: !1790)
!1789 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1790 = !{!1791}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1788, file: !1789, line: 14, baseType: !80, size: 128)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1138, file: !682, line: 1097, baseType: !1793, size: 64, offset: 15104)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !682, line: 50, flags: DIFlagFwdDecl)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1138, file: !682, line: 1100, baseType: !1796, size: 64, offset: 15168)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !682, line: 1100, flags: DIFlagFwdDecl)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1138, file: !682, line: 1103, baseType: !1799, size: 64, offset: 15232)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !682, line: 53, flags: DIFlagFwdDecl)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1138, file: !682, line: 1107, baseType: !1802, size: 64, offset: 15296)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1804, line: 35, flags: DIFlagFwdDecl)
!1804 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1138, file: !682, line: 1110, baseType: !1806, size: 64, offset: 15360)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1808, line: 93, size: 8768, elements: !1809)
!1808 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!1809 = !{!1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1857, !1866, !1867, !1869, !1870, !1871, !1874, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1916, !1917, !1924, !1934, !1937, !1938, !1941, !1942, !1943, !1944, !1945, !1946}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1807, file: !1808, line: 94, baseType: !751, size: 32)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1807, file: !1808, line: 95, baseType: !136, size: 32, offset: 32)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1807, file: !1808, line: 96, baseType: !140, size: 32, offset: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !1807, file: !1808, line: 97, baseType: !140, size: 32, offset: 96)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1807, file: !1808, line: 98, baseType: !80, size: 128, offset: 128)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1807, file: !1808, line: 100, baseType: !1532, size: 192, offset: 256)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1807, file: !1808, line: 103, baseType: !1137, size: 64, offset: 448)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1807, file: !1808, line: 106, baseType: !1818, size: 192, offset: 512)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1756, line: 32, size: 192, elements: !1819)
!1819 = !{!1820, !1821}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1818, file: !1756, line: 33, baseType: !80, size: 128)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1818, file: !1756, line: 34, baseType: !1822, size: 64, offset: 128)
!1822 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1823, line: 25, baseType: !1824)
!1823 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1823, line: 23, size: 64, elements: !1825)
!1825 = !{!1826}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1824, file: !1823, line: 24, baseType: !1377, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1807, file: !1808, line: 109, baseType: !1527, size: 64, offset: 704)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1807, file: !1808, line: 112, baseType: !140, size: 32, offset: 768)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1807, file: !1808, line: 114, baseType: !140, size: 32, offset: 800)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !1807, file: !1808, line: 115, baseType: !1137, size: 64, offset: 832)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1807, file: !1808, line: 118, baseType: !140, size: 32, offset: 896)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1807, file: !1808, line: 119, baseType: !7, size: 32, offset: 928)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1807, file: !1808, line: 121, baseType: !1834, size: 64, offset: 960)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1808, line: 80, size: 448, elements: !1836)
!1836 = !{!1837, !1838, !1844}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1835, file: !1808, line: 81, baseType: !136, size: 32)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1835, file: !1808, line: 82, baseType: !1839, size: 128, offset: 64)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1808, line: 75, size: 128, elements: !1840)
!1840 = !{!1841, !1842}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1839, file: !1808, line: 76, baseType: !1137, size: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1839, file: !1808, line: 77, baseType: !1843, size: 64, offset: 64)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1835, file: !1808, line: 83, baseType: !768, size: 256, offset: 192)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1807, file: !1808, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1807, file: !1808, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !1807, file: !1808, line: 138, baseType: !7, size: 32, offset: 1056)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1807, file: !1808, line: 139, baseType: !80, size: 128, offset: 1088)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1807, file: !1808, line: 142, baseType: !1253, size: 512, offset: 1216)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1807, file: !1808, line: 143, baseType: !1261, size: 64, offset: 1728)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1807, file: !1808, line: 150, baseType: !1852, size: 256, offset: 1792)
!1852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1853, size: 256, elements: !904)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1808, line: 38, size: 128, elements: !1854)
!1854 = !{!1855, !1856}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1853, file: !1808, line: 39, baseType: !350, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1853, file: !1808, line: 40, baseType: !350, size: 64, offset: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1807, file: !1808, line: 156, baseType: !1858, size: 192, offset: 2048)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1808, line: 66, size: 192, elements: !1859)
!1859 = !{!1860}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1858, file: !1808, line: 67, baseType: !1861, size: 192)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1808, line: 47, size: 192, elements: !1862)
!1862 = !{!1863, !1864, !1865}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1861, file: !1808, line: 48, baseType: !358, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1861, file: !1808, line: 49, baseType: !358, size: 64, offset: 64)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1861, file: !1808, line: 50, baseType: !358, size: 64, offset: 128)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1807, file: !1808, line: 160, baseType: !1571, size: 640, offset: 2240)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1807, file: !1808, line: 163, baseType: !1868, size: 256, offset: 2880)
!1868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1518, size: 256, elements: !425)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1807, file: !1808, line: 169, baseType: !1518, size: 64, offset: 3136)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1807, file: !1808, line: 172, baseType: !140, size: 32, offset: 3200)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1807, file: !1808, line: 174, baseType: !1872, size: 64, offset: 3264)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1808, line: 174, flags: DIFlagFwdDecl)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1807, file: !1808, line: 185, baseType: !1875, size: 64, offset: 3328)
!1875 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !393, line: 860, baseType: !1876)
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !393, line: 853, size: 64, elements: !1877)
!1877 = !{!1878, !1883}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1876, file: !393, line: 858, baseType: !1879, size: 32)
!1879 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !393, line: 275, baseType: !1880)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !393, line: 275, size: 32, elements: !1881)
!1881 = !{!1882}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1880, file: !393, line: 275, baseType: !392, size: 32)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1876, file: !393, line: 859, baseType: !116, size: 32, offset: 32)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1807, file: !1808, line: 186, baseType: !350, size: 64, offset: 3392)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1807, file: !1808, line: 186, baseType: !350, size: 64, offset: 3456)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1807, file: !1808, line: 186, baseType: !350, size: 64, offset: 3520)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1807, file: !1808, line: 186, baseType: !350, size: 64, offset: 3584)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1807, file: !1808, line: 187, baseType: !350, size: 64, offset: 3648)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1807, file: !1808, line: 188, baseType: !350, size: 64, offset: 3712)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1807, file: !1808, line: 189, baseType: !1559, size: 192, offset: 3776)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1807, file: !1808, line: 190, baseType: !237, size: 64, offset: 3968)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1807, file: !1808, line: 190, baseType: !237, size: 64, offset: 4032)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1807, file: !1808, line: 190, baseType: !237, size: 64, offset: 4096)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1807, file: !1808, line: 190, baseType: !237, size: 64, offset: 4160)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1807, file: !1808, line: 191, baseType: !237, size: 64, offset: 4224)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1807, file: !1808, line: 191, baseType: !237, size: 64, offset: 4288)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1807, file: !1808, line: 191, baseType: !237, size: 64, offset: 4352)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1807, file: !1808, line: 191, baseType: !237, size: 64, offset: 4416)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1807, file: !1808, line: 192, baseType: !237, size: 64, offset: 4480)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1807, file: !1808, line: 192, baseType: !237, size: 64, offset: 4544)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1807, file: !1808, line: 192, baseType: !237, size: 64, offset: 4608)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1807, file: !1808, line: 192, baseType: !237, size: 64, offset: 4672)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1807, file: !1808, line: 193, baseType: !237, size: 64, offset: 4736)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1807, file: !1808, line: 193, baseType: !237, size: 64, offset: 4800)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1807, file: !1808, line: 194, baseType: !1906, size: 448, offset: 4864)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1907, line: 12, size: 448, elements: !1908)
!1907 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1908 = !{!1909, !1910, !1911, !1912, !1913, !1914, !1915}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1906, file: !1907, line: 15, baseType: !350, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1906, file: !1907, line: 17, baseType: !350, size: 64, offset: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1906, file: !1907, line: 19, baseType: !350, size: 64, offset: 128)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1906, file: !1907, line: 21, baseType: !350, size: 64, offset: 192)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1906, file: !1907, line: 29, baseType: !350, size: 64, offset: 256)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1906, file: !1907, line: 35, baseType: !350, size: 64, offset: 320)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1906, file: !1907, line: 44, baseType: !350, size: 64, offset: 384)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1807, file: !1808, line: 202, baseType: !352, size: 64, offset: 5312)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1807, file: !1808, line: 213, baseType: !1918, size: 2048, offset: 5376)
!1918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1919, size: 2048, elements: !1775)
!1919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1920, line: 43, size: 128, elements: !1921)
!1920 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!1921 = !{!1922, !1923}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1919, file: !1920, line: 44, baseType: !236, size: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1919, file: !1920, line: 45, baseType: !236, size: 64, offset: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !1807, file: !1808, line: 216, baseType: !1925, size: 448, offset: 7424)
!1925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !1808, line: 30, size: 448, elements: !1926)
!1926 = !{!1927, !1928, !1929, !1930, !1931, !1932, !1933}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !1925, file: !1808, line: 31, baseType: !140, size: 32)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !1925, file: !1808, line: 32, baseType: !223, size: 64, offset: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !1925, file: !1808, line: 33, baseType: !237, size: 64, offset: 128)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !1925, file: !1808, line: 34, baseType: !350, size: 64, offset: 192)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !1925, file: !1808, line: 34, baseType: !350, size: 64, offset: 256)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !1925, file: !1808, line: 35, baseType: !237, size: 64, offset: 320)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !1925, file: !1808, line: 35, baseType: !237, size: 64, offset: 384)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1807, file: !1808, line: 219, baseType: !1935, size: 64, offset: 7872)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !1808, line: 219, flags: DIFlagFwdDecl)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !1807, file: !1808, line: 222, baseType: !7, size: 32, offset: 7936)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !1807, file: !1808, line: 223, baseType: !1939, size: 64, offset: 8000)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !1808, line: 223, flags: DIFlagFwdDecl)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1807, file: !1808, line: 230, baseType: !543, size: 8, offset: 8064)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1807, file: !1808, line: 231, baseType: !484, size: 16, offset: 8080)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1807, file: !1808, line: 232, baseType: !484, size: 16, offset: 8096)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1807, file: !1808, line: 234, baseType: !302, size: 64, offset: 8128)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1807, file: !1808, line: 237, baseType: !444, size: 256, offset: 8192)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !1807, file: !1808, line: 243, baseType: !367, size: 320, offset: 8448)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1138, file: !682, line: 1111, baseType: !1948, size: 64, offset: 15424)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1808, line: 20, size: 16640, elements: !1950)
!1950 = !{!1951, !1952, !1953, !1954}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1949, file: !1808, line: 21, baseType: !116, size: 32)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1949, file: !1808, line: 22, baseType: !751, size: 32, offset: 32)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1949, file: !1808, line: 23, baseType: !1532, size: 192, offset: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1949, file: !1808, line: 24, baseType: !1955, size: 16384, offset: 256)
!1955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1956, size: 16384, elements: !192)
!1956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1756, line: 51, size: 256, elements: !1957)
!1957 = !{!1958}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1956, file: !1756, line: 52, baseType: !1959, size: 256)
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1756, line: 37, size: 256, elements: !1960)
!1960 = !{!1961, !1968, !1969, !1973}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1959, file: !1756, line: 39, baseType: !1962, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1963, line: 83, baseType: !1964)
!1963 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1963, line: 82, baseType: !1966)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{null, !140}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1959, file: !1756, line: 40, baseType: !237, size: 64, offset: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1959, file: !1756, line: 46, baseType: !1970, size: 64, offset: 128)
!1970 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1963, line: 86, baseType: !1971)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1963, line: 85, baseType: !1131)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1959, file: !1756, line: 48, baseType: !1822, size: 64, offset: 192)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1138, file: !682, line: 1112, baseType: !1822, size: 64, offset: 15488)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1138, file: !682, line: 1113, baseType: !1822, size: 64, offset: 15552)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1138, file: !682, line: 1115, baseType: !1822, size: 64, offset: 15616)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1138, file: !682, line: 1116, baseType: !1818, size: 192, offset: 15680)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1138, file: !682, line: 1117, baseType: !237, size: 64, offset: 15872)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1138, file: !682, line: 1118, baseType: !234, size: 64, offset: 15936)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1138, file: !682, line: 1119, baseType: !7, size: 32, offset: 16000)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1138, file: !682, line: 1121, baseType: !296, size: 64, offset: 16064)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1138, file: !682, line: 1125, baseType: !1983, size: 64, offset: 16128)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !682, line: 43, flags: DIFlagFwdDecl)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1138, file: !682, line: 1127, baseType: !618, size: 32, offset: 16192)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1138, file: !682, line: 1128, baseType: !7, size: 32, offset: 16224)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1138, file: !682, line: 1130, baseType: !1988, size: 128, offset: 16256)
!1988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1989, line: 37, size: 128, elements: !1990)
!1989 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!1990 = !{!1991, !1992, !1993}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1988, file: !1989, line: 38, baseType: !140, size: 32)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1988, file: !1989, line: 39, baseType: !136, size: 32, offset: 32)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1988, file: !1989, line: 40, baseType: !1994, size: 64, offset: 64)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1989, line: 24, flags: DIFlagFwdDecl)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1138, file: !682, line: 1131, baseType: !1997, size: 256, offset: 16384)
!1997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !1998, line: 12, size: 256, elements: !1999)
!1998 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!1999 = !{!2000, !2001, !2002, !2003}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !1997, file: !1998, line: 13, baseType: !187, size: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1997, file: !1998, line: 14, baseType: !237, size: 64, offset: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1997, file: !1998, line: 15, baseType: !237, size: 64, offset: 128)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !1997, file: !1998, line: 16, baseType: !543, size: 8, offset: 192)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1138, file: !682, line: 1134, baseType: !350, size: 64, offset: 16640)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1138, file: !682, line: 1135, baseType: !350, size: 64, offset: 16704)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1138, file: !682, line: 1138, baseType: !116, size: 32, offset: 16768)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1138, file: !682, line: 1141, baseType: !378, size: 32, offset: 16800)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1138, file: !682, line: 1143, baseType: !2009, size: 64, offset: 16832)
!2009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !682, line: 735, size: 64, elements: !2010)
!2010 = !{!2011}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2009, file: !682, line: 736, baseType: !2012, size: 64)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1138, file: !682, line: 1147, baseType: !1312, size: 128, offset: 16896)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1138, file: !682, line: 1149, baseType: !1137, size: 64, offset: 17024)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1138, file: !682, line: 1151, baseType: !2016, size: 64, offset: 17088)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !682, line: 1151, flags: DIFlagFwdDecl)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1138, file: !682, line: 1188, baseType: !74, size: 64, offset: 17152)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1138, file: !682, line: 1191, baseType: !2020, size: 64, offset: 17216)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !682, line: 44, flags: DIFlagFwdDecl)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1138, file: !682, line: 1194, baseType: !2023, size: 64, offset: 17280)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !682, line: 45, flags: DIFlagFwdDecl)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1138, file: !682, line: 1197, baseType: !2026, size: 64, offset: 17344)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !682, line: 61, flags: DIFlagFwdDecl)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1138, file: !682, line: 1199, baseType: !2029, size: 64, offset: 17408)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !682, line: 52, flags: DIFlagFwdDecl)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1138, file: !682, line: 1202, baseType: !2032, size: 64, offset: 17472)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !682, line: 48, flags: DIFlagFwdDecl)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1138, file: !682, line: 1205, baseType: !237, size: 64, offset: 17536)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1138, file: !682, line: 1206, baseType: !2036, size: 64, offset: 17600)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1756, line: 14, baseType: !2038)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1756, line: 12, size: 384, elements: !2039)
!2039 = !{!2040}
!2040 = !DIDerivedType(tag: DW_TAG_member, scope: !2038, file: !1756, line: 13, baseType: !2041, size: 384)
!2041 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2038, file: !1756, line: 13, size: 384, elements: !2042)
!2042 = !{!2043, !2044, !2045, !2046}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2041, file: !1756, line: 13, baseType: !140, size: 32)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2041, file: !1756, line: 13, baseType: !140, size: 32, offset: 32)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2041, file: !1756, line: 13, baseType: !140, size: 32, offset: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2041, file: !1756, line: 13, baseType: !2047, size: 256, offset: 128)
!2047 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2048, line: 37, size: 256, elements: !2049)
!2048 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2049 = !{!2050, !2055, !2068, !2074, !2083, !2110, !2115}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2047, file: !2048, line: 42, baseType: !2051, size: 64)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2047, file: !2048, line: 39, size: 64, elements: !2052)
!2052 = !{!2053, !2054}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2051, file: !2048, line: 40, baseType: !1507, size: 32)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2051, file: !2048, line: 41, baseType: !623, size: 32, offset: 32)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2047, file: !2048, line: 50, baseType: !2056, size: 192)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2047, file: !2048, line: 45, size: 192, elements: !2057)
!2057 = !{!2058, !2060, !2061, !2067}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2056, file: !2048, line: 46, baseType: !2059, size: 32)
!2059 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !221, line: 95, baseType: !140)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2056, file: !2048, line: 47, baseType: !140, size: 32, offset: 32)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2056, file: !2048, line: 48, baseType: !2062, size: 64, offset: 64)
!2062 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2048, line: 11, baseType: !2063)
!2063 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2048, line: 8, size: 64, elements: !2064)
!2064 = !{!2065, !2066}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2063, file: !2048, line: 9, baseType: !140, size: 32)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2063, file: !2048, line: 10, baseType: !74, size: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2056, file: !2048, line: 49, baseType: !140, size: 32, offset: 128)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2047, file: !2048, line: 57, baseType: !2069, size: 128)
!2069 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2047, file: !2048, line: 53, size: 128, elements: !2070)
!2070 = !{!2071, !2072, !2073}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2069, file: !2048, line: 54, baseType: !1507, size: 32)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2069, file: !2048, line: 55, baseType: !623, size: 32, offset: 32)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2069, file: !2048, line: 56, baseType: !2062, size: 64, offset: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2047, file: !2048, line: 66, baseType: !2075, size: 256)
!2075 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2047, file: !2048, line: 60, size: 256, elements: !2076)
!2076 = !{!2077, !2078, !2079, !2080, !2082}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2075, file: !2048, line: 61, baseType: !1507, size: 32)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2075, file: !2048, line: 62, baseType: !623, size: 32, offset: 32)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2075, file: !2048, line: 63, baseType: !140, size: 32, offset: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2075, file: !2048, line: 64, baseType: !2081, size: 64, offset: 128)
!2081 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !221, line: 94, baseType: !222)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2075, file: !2048, line: 65, baseType: !2081, size: 64, offset: 192)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2047, file: !2048, line: 105, baseType: !2084, size: 256)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2047, file: !2048, line: 69, size: 256, elements: !2085)
!2085 = !{!2086, !2087}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2084, file: !2048, line: 70, baseType: !74, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, scope: !2084, file: !2048, line: 79, baseType: !2088, size: 192, offset: 64)
!2088 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2084, file: !2048, line: 79, size: 192, elements: !2089)
!2089 = !{!2090, !2091, !2092, !2099, !2104}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2088, file: !2048, line: 81, baseType: !140, size: 32)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2088, file: !2048, line: 86, baseType: !484, size: 16)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2088, file: !2048, line: 92, baseType: !2093, size: 192)
!2093 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2088, file: !2048, line: 88, size: 192, elements: !2094)
!2094 = !{!2095, !2097, !2098}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2093, file: !2048, line: 89, baseType: !2096, size: 64)
!2096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 64, elements: !1296)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2093, file: !2048, line: 90, baseType: !74, size: 64, offset: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2093, file: !2048, line: 91, baseType: !74, size: 64, offset: 128)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2088, file: !2048, line: 97, baseType: !2100, size: 96)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2088, file: !2048, line: 94, size: 96, elements: !2101)
!2101 = !{!2102, !2103}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2100, file: !2048, line: 95, baseType: !2096, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2100, file: !2048, line: 96, baseType: !950, size: 32, offset: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2088, file: !2048, line: 103, baseType: !2105, size: 128)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2088, file: !2048, line: 99, size: 128, elements: !2106)
!2106 = !{!2107, !2108, !2109}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2105, file: !2048, line: 100, baseType: !237, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2105, file: !2048, line: 101, baseType: !950, size: 32, offset: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2105, file: !2048, line: 102, baseType: !950, size: 32, offset: 96)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2047, file: !2048, line: 111, baseType: !2111, size: 128)
!2111 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2047, file: !2048, line: 108, size: 128, elements: !2112)
!2112 = !{!2113, !2114}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2111, file: !2048, line: 109, baseType: !223, size: 64)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2111, file: !2048, line: 110, baseType: !140, size: 32, offset: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2047, file: !2048, line: 118, baseType: !2116, size: 128)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2047, file: !2048, line: 114, size: 128, elements: !2117)
!2117 = !{!2118, !2119, !2120}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2116, file: !2048, line: 115, baseType: !74, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2116, file: !2048, line: 116, baseType: !140, size: 32, offset: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2116, file: !2048, line: 117, baseType: !7, size: 32, offset: 96)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1138, file: !682, line: 1208, baseType: !1906, size: 448, offset: 17664)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1138, file: !682, line: 1215, baseType: !350, size: 64, offset: 18112)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1138, file: !682, line: 1217, baseType: !350, size: 64, offset: 18176)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1138, file: !682, line: 1219, baseType: !350, size: 64, offset: 18240)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1138, file: !682, line: 1223, baseType: !2126, size: 64, offset: 18304)
!2126 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2127, line: 99, baseType: !2128)
!2127 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2128 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2127, line: 99, size: 64, elements: !2129)
!2129 = !{!2130}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2128, file: !2127, line: 99, baseType: !1377, size: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1138, file: !682, line: 1225, baseType: !1879, size: 32, offset: 18368)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1138, file: !682, line: 1226, baseType: !140, size: 32, offset: 18400)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1138, file: !682, line: 1227, baseType: !140, size: 32, offset: 18432)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1138, file: !682, line: 1231, baseType: !2135, size: 64, offset: 18496)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !682, line: 1231, flags: DIFlagFwdDecl)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1138, file: !682, line: 1233, baseType: !80, size: 128, offset: 18560)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1138, file: !682, line: 1240, baseType: !2139, size: 64, offset: 18688)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !682, line: 62, flags: DIFlagFwdDecl)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1138, file: !682, line: 1242, baseType: !2142, size: 64, offset: 18752)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !682, line: 1242, flags: DIFlagFwdDecl)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1138, file: !682, line: 1244, baseType: !80, size: 128, offset: 18816)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1138, file: !682, line: 1245, baseType: !2146, size: 64, offset: 18944)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !682, line: 51, flags: DIFlagFwdDecl)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1138, file: !682, line: 1246, baseType: !444, size: 256, offset: 19008)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1138, file: !682, line: 1247, baseType: !7, size: 32, offset: 19264)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1138, file: !682, line: 1250, baseType: !2151, size: 64, offset: 19328)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !682, line: 57, flags: DIFlagFwdDecl)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1138, file: !682, line: 1251, baseType: !444, size: 256, offset: 19392)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1138, file: !682, line: 1252, baseType: !80, size: 128, offset: 19648)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1138, file: !682, line: 1259, baseType: !570, size: 64, offset: 19776)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1138, file: !682, line: 1260, baseType: !484, size: 16, offset: 19840)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1138, file: !682, line: 1261, baseType: !484, size: 16, offset: 19856)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1138, file: !682, line: 1314, baseType: !2159, size: 64, offset: 19904)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2161, line: 62, size: 256, align: 256, elements: !2162)
!2161 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2162 = !{!2163, !2164, !2165, !2166, !2167, !2168, !2169}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2160, file: !2161, line: 75, baseType: !950, size: 32)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2160, file: !2161, line: 90, baseType: !950, size: 32, offset: 32)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2160, file: !2161, line: 112, baseType: !351, size: 64, offset: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2160, file: !2161, line: 132, baseType: !950, size: 32, offset: 128)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2160, file: !2161, line: 140, baseType: !950, size: 32, offset: 160)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2160, file: !2161, line: 149, baseType: !950, size: 32, offset: 192)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2160, file: !2161, line: 154, baseType: !2170, offset: 224)
!2170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, elements: !521)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1138, file: !682, line: 1315, baseType: !1032, size: 32, offset: 19968)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1138, file: !682, line: 1316, baseType: !1032, size: 32, offset: 20000)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1138, file: !682, line: 1321, baseType: !237, size: 64, offset: 20032)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1138, file: !682, line: 1325, baseType: !140, size: 32, offset: 20096)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1138, file: !682, line: 1326, baseType: !140, size: 32, offset: 20128)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1138, file: !682, line: 1327, baseType: !140, size: 32, offset: 20160)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1138, file: !682, line: 1328, baseType: !140, size: 32, offset: 20192)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1138, file: !682, line: 1329, baseType: !293, size: 128, align: 64, offset: 20224)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1138, file: !682, line: 1332, baseType: !2180, size: 128, offset: 20352)
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2181, line: 51, size: 128, elements: !2182)
!2181 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2182 = !{!2183, !2188, !2189}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2180, file: !2181, line: 60, baseType: !2184, size: 64)
!2184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2185, line: 7, size: 64, elements: !2186)
!2185 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2186 = !{!2187}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2184, file: !2185, line: 12, baseType: !1374, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2180, file: !2181, line: 63, baseType: !543, size: 8, offset: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2180, file: !2181, line: 70, baseType: !543, size: 8, offset: 72)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1138, file: !682, line: 1335, baseType: !2191, size: 64, offset: 20480)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !682, line: 59, flags: DIFlagFwdDecl)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1138, file: !682, line: 1337, baseType: !2194, size: 128, offset: 20544)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2181, line: 39, size: 128, elements: !2195)
!2195 = !{!2196, !2257, !2258}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2194, file: !2181, line: 40, baseType: !2197, size: 64)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !265, line: 74, size: 512, align: 128, elements: !2199)
!2199 = !{!2200, !2201, !2251, !2256}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2198, file: !265, line: 75, baseType: !237, size: 64)
!2201 = !DIDerivedType(tag: DW_TAG_member, scope: !2198, file: !265, line: 83, baseType: !2202, size: 320, offset: 64)
!2202 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2198, file: !265, line: 83, size: 320, elements: !2203)
!2203 = !{!2204, !2225, !2239, !2243, !2250}
!2204 = !DIDerivedType(tag: DW_TAG_member, scope: !2202, file: !265, line: 84, baseType: !2205, size: 320)
!2205 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2202, file: !265, line: 84, size: 320, elements: !2206)
!2206 = !{!2207, !2218, !2219, !2224}
!2207 = !DIDerivedType(tag: DW_TAG_member, scope: !2205, file: !265, line: 90, baseType: !2208, size: 128)
!2208 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2205, file: !265, line: 90, size: 128, elements: !2209)
!2209 = !{!2210, !2211, !2216, !2217}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2208, file: !265, line: 91, baseType: !80, size: 128)
!2211 = !DIDerivedType(tag: DW_TAG_member, scope: !2208, file: !265, line: 94, baseType: !2212, size: 128)
!2212 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2208, file: !265, line: 94, size: 128, elements: !2213)
!2213 = !{!2214, !2215}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2212, file: !265, line: 96, baseType: !74, size: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2212, file: !265, line: 98, baseType: !7, size: 32, offset: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2208, file: !265, line: 102, baseType: !80, size: 128)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2208, file: !265, line: 103, baseType: !80, size: 128)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2205, file: !265, line: 106, baseType: !263, size: 64, offset: 128)
!2219 = !DIDerivedType(tag: DW_TAG_member, scope: !2205, file: !265, line: 107, baseType: !2220, size: 64, offset: 192)
!2220 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2205, file: !265, line: 107, size: 64, elements: !2221)
!2221 = !{!2222, !2223}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2220, file: !265, line: 108, baseType: !237, size: 64)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2220, file: !265, line: 109, baseType: !237, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2205, file: !265, line: 117, baseType: !237, size: 64, offset: 256)
!2225 = !DIDerivedType(tag: DW_TAG_member, scope: !2202, file: !265, line: 119, baseType: !2226, size: 320)
!2226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2202, file: !265, line: 119, size: 320, elements: !2227)
!2227 = !{!2228, !2229, !2232, !2233, !2234}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2226, file: !265, line: 124, baseType: !237, size: 64)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2226, file: !265, line: 125, baseType: !2230, size: 64, offset: 64)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !265, line: 125, flags: DIFlagFwdDecl)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2226, file: !265, line: 126, baseType: !237, size: 64, offset: 128)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2226, file: !265, line: 127, baseType: !237, size: 64, offset: 192)
!2234 = !DIDerivedType(tag: DW_TAG_member, scope: !2226, file: !265, line: 128, baseType: !2235, size: 64, offset: 256)
!2235 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2226, file: !265, line: 128, size: 64, elements: !2236)
!2236 = !{!2237, !2238}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2235, file: !265, line: 133, baseType: !237, size: 64)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2235, file: !265, line: 138, baseType: !356, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, scope: !2202, file: !265, line: 141, baseType: !2240, size: 64)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2202, file: !265, line: 141, size: 64, elements: !2241)
!2241 = !{!2242}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2240, file: !265, line: 142, baseType: !237, size: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, scope: !2202, file: !265, line: 144, baseType: !2244, size: 128)
!2244 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2202, file: !265, line: 144, size: 128, elements: !2245)
!2245 = !{!2246, !2249}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2244, file: !265, line: 146, baseType: !2247, size: 64)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !265, line: 146, flags: DIFlagFwdDecl)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2244, file: !265, line: 147, baseType: !74, size: 64, offset: 64)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2202, file: !265, line: 161, baseType: !293, size: 128, align: 64)
!2251 = !DIDerivedType(tag: DW_TAG_member, scope: !2198, file: !265, line: 164, baseType: !2252, size: 32, offset: 384)
!2252 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2198, file: !265, line: 164, size: 32, elements: !2253)
!2253 = !{!2254, !2255}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2252, file: !265, line: 169, baseType: !136, size: 32)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2252, file: !265, line: 177, baseType: !7, size: 32)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2198, file: !265, line: 181, baseType: !136, size: 32, offset: 416)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2194, file: !2181, line: 42, baseType: !950, size: 32, offset: 64)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2194, file: !2181, line: 43, baseType: !950, size: 32, offset: 96)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1138, file: !682, line: 1340, baseType: !2260, size: 64, offset: 20672)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !682, line: 69, flags: DIFlagFwdDecl)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1138, file: !682, line: 1351, baseType: !140, size: 32, offset: 20736)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1138, file: !682, line: 1352, baseType: !140, size: 32, offset: 20768)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1138, file: !682, line: 1354, baseType: !237, size: 64, offset: 20800)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1138, file: !682, line: 1364, baseType: !350, size: 64, offset: 20864)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1138, file: !682, line: 1365, baseType: !350, size: 64, offset: 20928)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1138, file: !682, line: 1412, baseType: !237, size: 64, offset: 20992)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1138, file: !682, line: 1453, baseType: !2269, size: 64, offset: 21056)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !682, line: 1453, flags: DIFlagFwdDecl)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1138, file: !682, line: 1457, baseType: !2272, size: 64, offset: 21120)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !36, line: 61, size: 576, elements: !2274)
!2274 = !{!2275, !2276, !2295, !2298, !2299, !2332, !2342}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2273, file: !36, line: 62, baseType: !35, size: 32)
!2276 = !DIDerivedType(tag: DW_TAG_member, scope: !2273, file: !36, line: 64, baseType: !2277, size: 192, offset: 64)
!2277 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2273, file: !36, line: 64, size: 192, elements: !2278)
!2278 = !{!2279, !2290}
!2279 = !DIDerivedType(tag: DW_TAG_member, scope: !2277, file: !36, line: 65, baseType: !2280, size: 192)
!2280 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2277, file: !36, line: 65, size: 192, elements: !2281)
!2281 = !{!2282, !2289}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2280, file: !36, line: 66, baseType: !2283, size: 128)
!2283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2284, line: 50, size: 128, elements: !2285)
!2284 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2285 = !{!2286, !2287, !2288}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2283, file: !2284, line: 52, baseType: !237, size: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2283, file: !2284, line: 54, baseType: !7, size: 32, offset: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2283, file: !2284, line: 55, baseType: !7, size: 32, offset: 96)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2280, file: !36, line: 67, baseType: !237, size: 64, offset: 128)
!2290 = !DIDerivedType(tag: DW_TAG_member, scope: !2277, file: !36, line: 70, baseType: !2291, size: 192)
!2291 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2277, file: !36, line: 70, size: 192, elements: !2292)
!2292 = !{!2293, !2294}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2291, file: !36, line: 71, baseType: !293, size: 128, align: 64)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2291, file: !36, line: 72, baseType: !237, size: 64, offset: 128)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2273, file: !36, line: 76, baseType: !2296, size: 64, offset: 256)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !36, line: 76, flags: DIFlagFwdDecl)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2273, file: !36, line: 77, baseType: !237, size: 64, offset: 320)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2273, file: !36, line: 79, baseType: !2300, size: 64, offset: 384)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2284, line: 25, size: 256, elements: !2302)
!2302 = !{!2303, !2309, !2313}
!2303 = !DIDerivedType(tag: DW_TAG_member, scope: !2301, file: !2284, line: 26, baseType: !2304, size: 128)
!2304 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2301, file: !2284, line: 26, size: 128, elements: !2305)
!2305 = !{!2306, !2308}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2304, file: !2284, line: 27, baseType: !2307, size: 128)
!2307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 128, elements: !1775)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2304, file: !2284, line: 28, baseType: !2307, size: 128)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2301, file: !2284, line: 31, baseType: !2310, size: 64, offset: 128)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2312)
!2312 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2284, line: 23, flags: DIFlagFwdDecl)
!2313 = !DIDerivedType(tag: DW_TAG_member, scope: !2301, file: !2284, line: 33, baseType: !2314, size: 64, offset: 192)
!2314 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2301, file: !2284, line: 33, size: 64, elements: !2315)
!2315 = !{!2316, !2322, !2327}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2314, file: !2284, line: 38, baseType: !2317, size: 64)
!2317 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2314, file: !2284, line: 34, size: 64, elements: !2318)
!2318 = !{!2319, !2320, !2321}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2317, file: !2284, line: 35, baseType: !423, size: 32)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2317, file: !2284, line: 36, baseType: !145, size: 8, offset: 32)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2317, file: !2284, line: 37, baseType: !145, size: 8, offset: 40)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2314, file: !2284, line: 42, baseType: !2323, size: 16)
!2323 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2314, file: !2284, line: 39, size: 16, elements: !2324)
!2324 = !{!2325, !2326}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2323, file: !2284, line: 40, baseType: !145, size: 8)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2323, file: !2284, line: 41, baseType: !145, size: 8, offset: 8)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2314, file: !2284, line: 46, baseType: !2328, size: 16)
!2328 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2314, file: !2284, line: 43, size: 16, elements: !2329)
!2329 = !{!2330, !2331}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2328, file: !2284, line: 44, baseType: !145, size: 8)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2328, file: !2284, line: 45, baseType: !145, size: 8, offset: 8)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2273, file: !36, line: 81, baseType: !2333, size: 64, offset: 448)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !36, line: 85, size: 384, elements: !2335)
!2335 = !{!2336, !2337, !2338, !2339, !2340, !2341}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2334, file: !36, line: 86, baseType: !2296, size: 64)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2334, file: !36, line: 87, baseType: !237, size: 64, offset: 64)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2334, file: !36, line: 88, baseType: !237, size: 64, offset: 128)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2334, file: !36, line: 89, baseType: !237, size: 64, offset: 192)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2334, file: !36, line: 90, baseType: !543, size: 8, offset: 256)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2334, file: !36, line: 92, baseType: !2333, size: 64, offset: 320)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2273, file: !36, line: 82, baseType: !7, size: 32, offset: 512)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1138, file: !682, line: 1463, baseType: !2344, offset: 21184)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !682, line: 739, elements: !323)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1138, file: !682, line: 1470, baseType: !293, size: 128, align: 64, offset: 21184)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1138, file: !682, line: 1471, baseType: !751, size: 32, offset: 21312)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1138, file: !682, line: 1472, baseType: !140, size: 32, offset: 21344)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1138, file: !682, line: 1474, baseType: !1137, size: 64, offset: 21376)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1138, file: !682, line: 1475, baseType: !1015, size: 320, offset: 21440)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1138, file: !682, line: 1478, baseType: !2351, size: 64, offset: 21760)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !682, line: 1478, flags: DIFlagFwdDecl)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1138, file: !682, line: 1482, baseType: !751, size: 32, offset: 21824)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1138, file: !682, line: 1489, baseType: !74, size: 64, offset: 21888)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1138, file: !682, line: 1504, baseType: !74, size: 64, offset: 21952)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1138, file: !682, line: 1505, baseType: !351, size: 64, offset: 22016)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1138, file: !682, line: 1506, baseType: !350, size: 64, offset: 22080)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1138, file: !682, line: 1507, baseType: !351, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1138, file: !682, line: 1508, baseType: !351, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1138, file: !682, line: 1509, baseType: !351, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1138, file: !682, line: 1510, baseType: !293, size: 128, align: 64, offset: 22208)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1138, file: !682, line: 1511, baseType: !140, size: 32, offset: 22336)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1138, file: !682, line: 1515, baseType: !2364, size: 64, offset: 22400)
!2364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1160, line: 56, size: 64, elements: !2365)
!2365 = !{!2366}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2364, file: !1160, line: 57, baseType: !1163, size: 64)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1138, file: !682, line: 1518, baseType: !2364, size: 64, offset: 22464)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1138, file: !682, line: 1528, baseType: !293, size: 128, align: 64, offset: 22528)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1138, file: !682, line: 1552, baseType: !2370, size: 35328, offset: 23040)
!2370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2371, line: 430, size: 35328, elements: !2372)
!2371 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2372 = !{!2373, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2402, !2403, !2404, !2405, !2406, !2407, !2410, !2411, !2412, !2413}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2370, file: !2371, line: 432, baseType: !2374, size: 192)
!2374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2375, size: 192, elements: !188)
!2375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2376, line: 16, size: 64, elements: !2377)
!2376 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2377 = !{!2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2375, file: !2376, line: 17, baseType: !155, size: 16)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2375, file: !2376, line: 18, baseType: !155, size: 16, offset: 16)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2375, file: !2376, line: 19, baseType: !155, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2375, file: !2376, line: 19, baseType: !155, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2375, file: !2376, line: 19, baseType: !155, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2375, file: !2376, line: 19, baseType: !155, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2375, file: !2376, line: 19, baseType: !155, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2375, file: !2376, line: 20, baseType: !155, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2375, file: !2376, line: 20, baseType: !155, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2375, file: !2376, line: 20, baseType: !155, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2375, file: !2376, line: 20, baseType: !155, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2375, file: !2376, line: 20, baseType: !155, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2375, file: !2376, line: 20, baseType: !155, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2370, file: !2371, line: 436, baseType: !237, size: 64, offset: 192)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2370, file: !2371, line: 440, baseType: !157, size: 16, offset: 256)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2370, file: !2371, line: 441, baseType: !157, size: 16, offset: 272)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2370, file: !2371, line: 442, baseType: !157, size: 16, offset: 288)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2370, file: !2371, line: 443, baseType: !157, size: 16, offset: 304)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2370, file: !2371, line: 447, baseType: !237, size: 64, offset: 320)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2370, file: !2371, line: 448, baseType: !237, size: 64, offset: 384)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2370, file: !2371, line: 459, baseType: !2399, size: 256, offset: 448)
!2399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2400, size: 256, elements: !425)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2371, line: 428, flags: DIFlagFwdDecl)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2370, file: !2371, line: 461, baseType: !237, size: 64, offset: 704)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2370, file: !2371, line: 463, baseType: !237, size: 64, offset: 768)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2370, file: !2371, line: 465, baseType: !237, size: 64, offset: 832)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2370, file: !2371, line: 466, baseType: !237, size: 64, offset: 896)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2370, file: !2371, line: 467, baseType: !237, size: 64, offset: 960)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2370, file: !2371, line: 473, baseType: !2408, size: 64, offset: 1024)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2371, line: 10, flags: DIFlagFwdDecl)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2370, file: !2371, line: 480, baseType: !237, size: 64, offset: 1088)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2370, file: !2371, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2370, file: !2371, line: 491, baseType: !1032, size: 32, offset: 1184)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2370, file: !2371, line: 501, baseType: !2414, size: 33792, offset: 1536)
!2414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2415, line: 448, size: 33792, elements: !2416)
!2415 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2416 = !{!2417, !2418, !2419, !2583, !2584, !2590, !2591}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2414, file: !2415, line: 461, baseType: !7, size: 32)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2414, file: !2415, line: 468, baseType: !237, size: 64, offset: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2414, file: !2415, line: 476, baseType: !2420, size: 64, offset: 128)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2415, line: 356, size: 33280, align: 512, elements: !2422)
!2422 = !{!2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2421, file: !2415, line: 358, baseType: !7, size: 32)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2421, file: !2415, line: 361, baseType: !7, size: 32, offset: 32)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2421, file: !2415, line: 364, baseType: !350, size: 64, offset: 64)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2421, file: !2415, line: 367, baseType: !350, size: 64, offset: 128)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2421, file: !2415, line: 370, baseType: !350, size: 64, offset: 192)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2421, file: !2415, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2421, file: !2415, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2421, file: !2415, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2421, file: !2415, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2421, file: !2415, line: 397, baseType: !2433, size: 32768, offset: 512)
!2433 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2415, line: 348, size: 32768, elements: !2434)
!2434 = !{!2435, !2450, !2489, !2566, !2579}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2433, file: !2415, line: 349, baseType: !2436, size: 896)
!2436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2415, line: 12, size: 896, elements: !2437)
!2437 = !{!2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2449}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2436, file: !2415, line: 13, baseType: !1032, size: 32)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2436, file: !2415, line: 14, baseType: !1032, size: 32, offset: 32)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2436, file: !2415, line: 15, baseType: !1032, size: 32, offset: 64)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2436, file: !2415, line: 16, baseType: !1032, size: 32, offset: 96)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2436, file: !2415, line: 17, baseType: !1032, size: 32, offset: 128)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2436, file: !2415, line: 18, baseType: !1032, size: 32, offset: 160)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2436, file: !2415, line: 19, baseType: !1032, size: 32, offset: 192)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2436, file: !2415, line: 22, baseType: !2446, size: 640, offset: 224)
!2446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1032, size: 640, elements: !2447)
!2447 = !{!2448}
!2448 = !DISubrange(count: 20)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2436, file: !2415, line: 25, baseType: !1032, size: 32, offset: 864)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2433, file: !2415, line: 350, baseType: !2451, size: 4096, align: 128)
!2451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2415, line: 34, size: 4096, align: 128, elements: !2452)
!2452 = !{!2453, !2454, !2455, !2456, !2457, !2472, !2473, !2474, !2478, !2480, !2484}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2451, file: !2415, line: 35, baseType: !155, size: 16)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2451, file: !2415, line: 36, baseType: !155, size: 16, offset: 16)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2451, file: !2415, line: 37, baseType: !155, size: 16, offset: 32)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2451, file: !2415, line: 38, baseType: !155, size: 16, offset: 48)
!2457 = !DIDerivedType(tag: DW_TAG_member, scope: !2451, file: !2415, line: 39, baseType: !2458, size: 128, offset: 64)
!2458 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2451, file: !2415, line: 39, size: 128, elements: !2459)
!2459 = !{!2460, !2465}
!2460 = !DIDerivedType(tag: DW_TAG_member, scope: !2458, file: !2415, line: 40, baseType: !2461, size: 128)
!2461 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2458, file: !2415, line: 40, size: 128, elements: !2462)
!2462 = !{!2463, !2464}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2461, file: !2415, line: 41, baseType: !350, size: 64)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2461, file: !2415, line: 42, baseType: !350, size: 64, offset: 64)
!2465 = !DIDerivedType(tag: DW_TAG_member, scope: !2458, file: !2415, line: 44, baseType: !2466, size: 128)
!2466 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2458, file: !2415, line: 44, size: 128, elements: !2467)
!2467 = !{!2468, !2469, !2470, !2471}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2466, file: !2415, line: 45, baseType: !1032, size: 32)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2466, file: !2415, line: 46, baseType: !1032, size: 32, offset: 32)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2466, file: !2415, line: 47, baseType: !1032, size: 32, offset: 64)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2466, file: !2415, line: 48, baseType: !1032, size: 32, offset: 96)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2451, file: !2415, line: 51, baseType: !1032, size: 32, offset: 192)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2451, file: !2415, line: 52, baseType: !1032, size: 32, offset: 224)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2451, file: !2415, line: 55, baseType: !2475, size: 1024, offset: 256)
!2475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1032, size: 1024, elements: !2476)
!2476 = !{!2477}
!2477 = !DISubrange(count: 32)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2451, file: !2415, line: 58, baseType: !2479, size: 2048, offset: 1280)
!2479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1032, size: 2048, elements: !192)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2451, file: !2415, line: 60, baseType: !2481, size: 384, offset: 3328)
!2481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1032, size: 384, elements: !2482)
!2482 = !{!2483}
!2483 = !DISubrange(count: 12)
!2484 = !DIDerivedType(tag: DW_TAG_member, scope: !2451, file: !2415, line: 62, baseType: !2485, size: 384, offset: 3712)
!2485 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2451, file: !2415, line: 62, size: 384, elements: !2486)
!2486 = !{!2487, !2488}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2485, file: !2415, line: 63, baseType: !2481, size: 384)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2485, file: !2415, line: 64, baseType: !2481, size: 384)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2433, file: !2415, line: 351, baseType: !2490, size: 1088)
!2490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2415, line: 79, size: 1088, elements: !2491)
!2491 = !{!2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2565}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2490, file: !2415, line: 80, baseType: !1032, size: 32)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2490, file: !2415, line: 81, baseType: !1032, size: 32, offset: 32)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2490, file: !2415, line: 82, baseType: !1032, size: 32, offset: 64)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2490, file: !2415, line: 83, baseType: !1032, size: 32, offset: 96)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2490, file: !2415, line: 84, baseType: !1032, size: 32, offset: 128)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2490, file: !2415, line: 85, baseType: !1032, size: 32, offset: 160)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2490, file: !2415, line: 86, baseType: !1032, size: 32, offset: 192)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2490, file: !2415, line: 88, baseType: !2446, size: 640, offset: 224)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2490, file: !2415, line: 89, baseType: !145, size: 8, offset: 864)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2490, file: !2415, line: 90, baseType: !145, size: 8, offset: 872)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2490, file: !2415, line: 91, baseType: !145, size: 8, offset: 880)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2490, file: !2415, line: 92, baseType: !145, size: 8, offset: 888)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2490, file: !2415, line: 93, baseType: !145, size: 8, offset: 896)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2490, file: !2415, line: 94, baseType: !145, size: 8, offset: 904)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2490, file: !2415, line: 95, baseType: !2507, size: 64, offset: 960)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2509, line: 11, size: 128, elements: !2510)
!2509 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!2510 = !{!2511, !2512}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2508, file: !2509, line: 12, baseType: !223, size: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2508, file: !2509, line: 13, baseType: !2513, size: 64, offset: 64)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2515, line: 103, size: 1344, elements: !2516)
!2515 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!2516 = !{!2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2545, !2546, !2547}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2514, file: !2515, line: 109, baseType: !237, size: 64)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2514, file: !2515, line: 110, baseType: !237, size: 64, offset: 64)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2514, file: !2515, line: 111, baseType: !237, size: 64, offset: 128)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2514, file: !2515, line: 112, baseType: !237, size: 64, offset: 192)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2514, file: !2515, line: 113, baseType: !237, size: 64, offset: 256)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2514, file: !2515, line: 114, baseType: !237, size: 64, offset: 320)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2514, file: !2515, line: 117, baseType: !237, size: 64, offset: 384)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2514, file: !2515, line: 118, baseType: !237, size: 64, offset: 448)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2514, file: !2515, line: 119, baseType: !237, size: 64, offset: 512)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2514, file: !2515, line: 120, baseType: !237, size: 64, offset: 576)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2514, file: !2515, line: 121, baseType: !237, size: 64, offset: 640)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2514, file: !2515, line: 122, baseType: !237, size: 64, offset: 704)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2514, file: !2515, line: 123, baseType: !237, size: 64, offset: 768)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2514, file: !2515, line: 124, baseType: !237, size: 64, offset: 832)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2514, file: !2515, line: 125, baseType: !237, size: 64, offset: 896)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2514, file: !2515, line: 139, baseType: !237, size: 64, offset: 960)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2514, file: !2515, line: 142, baseType: !237, size: 64, offset: 1024)
!2534 = !DIDerivedType(tag: DW_TAG_member, scope: !2514, file: !2515, line: 144, baseType: !2535, size: 64, offset: 1088)
!2535 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2514, file: !2515, line: 144, size: 64, elements: !2536)
!2536 = !{!2537, !2538, !2539}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2535, file: !2515, line: 146, baseType: !155, size: 16)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !2535, file: !2515, line: 148, baseType: !350, size: 64)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !2535, file: !2515, line: 150, baseType: !2540, size: 64)
!2540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !2515, line: 59, size: 64, elements: !2541)
!2541 = !{!2542, !2543, !2544}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2540, file: !2515, line: 61, baseType: !350, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !2540, file: !2515, line: 63, baseType: !350, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !2540, file: !2515, line: 65, baseType: !350, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2514, file: !2515, line: 153, baseType: !237, size: 64, offset: 1152)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2514, file: !2515, line: 154, baseType: !237, size: 64, offset: 1216)
!2547 = !DIDerivedType(tag: DW_TAG_member, scope: !2514, file: !2515, line: 156, baseType: !2548, size: 64, offset: 1280)
!2548 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2514, file: !2515, line: 156, size: 64, elements: !2549)
!2549 = !{!2550, !2551, !2552}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2548, file: !2515, line: 158, baseType: !155, size: 16)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !2548, file: !2515, line: 160, baseType: !350, size: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !2548, file: !2515, line: 162, baseType: !2553, size: 64)
!2553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !2515, line: 69, size: 64, elements: !2554)
!2554 = !{!2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2553, file: !2515, line: 71, baseType: !350, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !2553, file: !2515, line: 73, baseType: !350, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !2553, file: !2515, line: 75, baseType: !350, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !2553, file: !2515, line: 77, baseType: !350, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !2553, file: !2515, line: 80, baseType: !350, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2553, file: !2515, line: 83, baseType: !350, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !2553, file: !2515, line: 86, baseType: !350, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !2553, file: !2515, line: 88, baseType: !350, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2553, file: !2515, line: 93, baseType: !350, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !2553, file: !2515, line: 100, baseType: !350, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2490, file: !2415, line: 96, baseType: !1032, size: 32, offset: 1024)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2433, file: !2415, line: 352, baseType: !2567, size: 4608, align: 512)
!2567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2415, line: 333, size: 4608, align: 512, elements: !2568)
!2568 = !{!2569, !2570, !2577}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2567, file: !2415, line: 334, baseType: !2451, size: 4096, align: 128)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2567, file: !2415, line: 335, baseType: !2571, size: 512, offset: 4096)
!2571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2415, line: 312, size: 512, elements: !2572)
!2572 = !{!2573, !2574, !2575}
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2571, file: !2415, line: 313, baseType: !350, size: 64)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2571, file: !2415, line: 314, baseType: !350, size: 64, offset: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2571, file: !2415, line: 315, baseType: !2576, size: 384, offset: 128)
!2576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !350, size: 384, elements: !1667)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2567, file: !2415, line: 336, baseType: !2578, offset: 4608)
!2578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, elements: !521)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2433, file: !2415, line: 353, baseType: !2580, size: 32768)
!2580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 32768, elements: !2581)
!2581 = !{!2582}
!2582 = !DISubrange(count: 4096)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2414, file: !2415, line: 484, baseType: !2420, size: 64, offset: 192)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2414, file: !2415, line: 491, baseType: !2585, size: 128, offset: 256)
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2415, line: 404, size: 128, elements: !2586)
!2586 = !{!2587, !2588, !2589}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !2585, file: !2415, line: 424, baseType: !350, size: 64)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !2585, file: !2415, line: 432, baseType: !7, size: 32, offset: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !2585, file: !2415, line: 440, baseType: !7, size: 32, offset: 96)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2414, file: !2415, line: 498, baseType: !2585, size: 128, offset: 384)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2414, file: !2415, line: 508, baseType: !2421, size: 33280, align: 512, offset: 512)
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tp_probes", file: !3, line: 96, size: 128, elements: !2594)
!2594 = !{!2595, !2596}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2593, file: !3, line: 97, baseType: !293, size: 128, align: 64)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "probes", scope: !2593, file: !3, line: 98, baseType: !2597, offset: 128)
!2597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2598, elements: !521)
!2598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !978, line: 26, size: 192, elements: !2599)
!2599 = !{!2600, !2601, !2602}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2598, file: !978, line: 27, baseType: !74, size: 64)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2598, file: !978, line: 28, baseType: !74, size: 64, offset: 64)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2598, file: !978, line: 29, baseType: !140, size: 32, offset: 128)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !1091, line: 85, size: 128, elements: !2605)
!2605 = !{!2606, !2607}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2604, file: !1091, line: 86, baseType: !136, size: 32)
!2607 = !DIDerivedType(tag: DW_TAG_member, scope: !2604, file: !1091, line: 101, baseType: !2608, size: 64, offset: 64)
!2608 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2604, file: !1091, line: 101, size: 64, elements: !2609)
!2609 = !{!2610, !2611, !2612}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2608, file: !1091, line: 102, baseType: !237, size: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !2608, file: !1091, line: 103, baseType: !1089, size: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2608, file: !1091, line: 104, baseType: !2613, size: 64)
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2614 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !1091, line: 104, flags: DIFlagFwdDecl)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2616 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !81, line: 42, baseType: !237)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !2615)
!2619 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !81, line: 154, baseType: !7)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !74)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !94)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !223)
!2627 = !{!2628, !2630, !2632, !2634, !2636, !2638, !2640, !2642, !2644, !2646, !2648, !0, !2650, !2652, !2654, !2656, !2658, !2660, !2663, !2668, !2670, !2675, !2683, !2685, !2702, !2704, !2709}
!2628 = !DIGlobalVariableExpression(var: !2629, expr: !DIExpression())
!2629 = distinct !DIGlobalVariable(name: "tracepoint_srcu", scope: !2, file: !3, line: 28, type: !984, isLocal: false, isDefinition: true)
!2630 = !DIGlobalVariableExpression(var: !2631, expr: !DIExpression())
!2631 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_tracepoint_srcu240", scope: !2, file: !3, line: 29, type: !74, isLocal: true, isDefinition: true)
!2632 = !DIGlobalVariableExpression(var: !2633, expr: !DIExpression())
!2633 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_tracepoint__241_140_release_early_probes2242", scope: !2, file: !3, line: 140, type: !74, isLocal: true, isDefinition: true)
!2634 = !DIGlobalVariableExpression(var: !2635, expr: !DIExpression())
!2635 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_tracepoint_probe_register_prio_may_exist259", scope: !2, file: !3, line: 486, type: !74, isLocal: true, isDefinition: true)
!2636 = !DIGlobalVariableExpression(var: !2637, expr: !DIExpression())
!2637 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_tracepoint_probe_register_prio260", scope: !2, file: !3, line: 515, type: !74, isLocal: true, isDefinition: true)
!2638 = !DIGlobalVariableExpression(var: !2639, expr: !DIExpression())
!2639 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_tracepoint_probe_register261", scope: !2, file: !3, line: 533, type: !74, isLocal: true, isDefinition: true)
!2640 = !DIGlobalVariableExpression(var: !2641, expr: !DIExpression())
!2641 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_tracepoint_probe_unregister262", scope: !2, file: !3, line: 555, type: !74, isLocal: true, isDefinition: true)
!2642 = !DIGlobalVariableExpression(var: !2643, expr: !DIExpression())
!2643 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_register_tracepoint_module_notifier263", scope: !2, file: !3, line: 604, type: !74, isLocal: true, isDefinition: true)
!2644 = !DIGlobalVariableExpression(var: !2645, expr: !DIExpression())
!2645 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_unregister_tracepoint_module_notifier264", scope: !2, file: !3, line: 629, type: !74, isLocal: true, isDefinition: true)
!2646 = !DIGlobalVariableExpression(var: !2647, expr: !DIExpression())
!2647 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_tracepoint__265_737_init_tracepoints6266", scope: !2, file: !3, line: 737, type: !74, isLocal: true, isDefinition: true)
!2648 = !DIGlobalVariableExpression(var: !2649, expr: !DIExpression())
!2649 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_for_each_kernel_tracepoint267", scope: !2, file: !3, line: 751, type: !74, isLocal: true, isDefinition: true)
!2650 = !DIGlobalVariableExpression(var: !2651, expr: !DIExpression())
!2651 = distinct !DIGlobalVariable(name: "sys_tracepoint_refcount", scope: !2, file: !3, line: 756, type: !140, isLocal: true, isDefinition: true)
!2652 = !DIGlobalVariableExpression(var: !2653, expr: !DIExpression())
!2653 = distinct !DIGlobalVariable(name: "tracepoint_srcu_srcu_usage", scope: !2, file: !3, line: 28, type: !1054, isLocal: true, isDefinition: true)
!2654 = !DIGlobalVariableExpression(var: !2655, expr: !DIExpression())
!2655 = distinct !DIGlobalVariable(name: "ok_to_free_tracepoints", scope: !2, file: !3, line: 89, type: !543, isLocal: true, isDefinition: true)
!2656 = !DIGlobalVariableExpression(var: !2657, expr: !DIExpression())
!2657 = distinct !DIGlobalVariable(name: "early_probes", scope: !2, file: !3, line: 88, type: !296, isLocal: true, isDefinition: true)
!2658 = !DIGlobalVariableExpression(var: !2659, expr: !DIExpression())
!2659 = distinct !DIGlobalVariable(name: "tracepoints_mutex", scope: !2, file: !3, line: 86, type: !444, isLocal: true, isDefinition: true)
!2660 = !DIGlobalVariableExpression(var: !2661, expr: !DIExpression())
!2661 = distinct !DIGlobalVariable(scope: null, file: !3, line: 340, type: !2662, isLocal: true, isDefinition: true)
!2662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 160, elements: !2447)
!2663 = !DIGlobalVariableExpression(var: !2664, expr: !DIExpression())
!2664 = distinct !DIGlobalVariable(scope: null, file: !3, line: 176, type: !2665, isLocal: true, isDefinition: true)
!2665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 136, elements: !2666)
!2666 = !{!2667}
!2667 = !DISubrange(count: 17)
!2668 = !DIGlobalVariableExpression(var: !2669, expr: !DIExpression())
!2669 = distinct !DIGlobalVariable(name: "tracepoint_debug", scope: !2, file: !3, line: 70, type: !979, isLocal: true, isDefinition: true)
!2670 = !DIGlobalVariableExpression(var: !2671, expr: !DIExpression())
!2671 = distinct !DIGlobalVariable(scope: null, file: !64, line: 480, type: !2672, isLocal: true, isDefinition: true)
!2672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 168, elements: !2673)
!2673 = !{!2674}
!2674 = !DISubrange(count: 21)
!2675 = !DIGlobalVariableExpression(var: !2676, expr: !DIExpression())
!2676 = distinct !DIGlobalVariable(name: "tp_transition_snapshot", scope: !2, file: !3, line: 45, type: !2677, isLocal: true, isDefinition: true)
!2677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2678, size: 384, elements: !904)
!2678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tp_transition_snapshot", file: !3, line: 38, size: 192, elements: !2679)
!2679 = !{!2680, !2681, !2682}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2678, file: !3, line: 39, baseType: !237, size: 64)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "srcu", scope: !2678, file: !3, line: 40, baseType: !237, size: 64, offset: 64)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "ongoing", scope: !2678, file: !3, line: 41, baseType: !543, size: 8, offset: 128)
!2683 = !DIGlobalVariableExpression(var: !2684, expr: !DIExpression())
!2684 = distinct !DIGlobalVariable(name: "tracepoint_module_list_mutex", scope: !2, file: !3, line: 76, type: !444, isLocal: true, isDefinition: true)
!2685 = !DIGlobalVariableExpression(var: !2686, expr: !DIExpression())
!2686 = distinct !DIGlobalVariable(name: "tracepoint_notify_list", scope: !2, file: !3, line: 578, type: !2687, isLocal: true, isDefinition: true)
!2687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !2688, line: 65, size: 384, elements: !2689)
!2688 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!2689 = !{!2690, !2691}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !2687, file: !2688, line: 66, baseType: !367, size: 320)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2687, file: !2688, line: 67, baseType: !2692, size: 64, offset: 320)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !2688, line: 54, size: 192, elements: !2694)
!2694 = !{!2695, !2700, !2701}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !2693, file: !2688, line: 55, baseType: !2696, size: 64)
!2696 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !2688, line: 51, baseType: !2697)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!140, !2692, !237, !74}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2693, file: !2688, line: 56, baseType: !2692, size: 64, offset: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !2693, file: !2688, line: 57, baseType: !140, size: 32, offset: 128)
!2702 = !DIGlobalVariableExpression(var: !2703, expr: !DIExpression())
!2703 = distinct !DIGlobalVariable(name: "tracepoint_module_list", scope: !2, file: !3, line: 79, type: !80, isLocal: true, isDefinition: true)
!2704 = !DIGlobalVariableExpression(var: !2705, expr: !DIExpression())
!2705 = distinct !DIGlobalVariable(scope: null, file: !3, line: 733, type: !2706, isLocal: true, isDefinition: true)
!2706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 440, elements: !2707)
!2707 = !{!2708}
!2708 = !DISubrange(count: 55)
!2709 = !DIGlobalVariableExpression(var: !2710, expr: !DIExpression())
!2710 = distinct !DIGlobalVariable(name: "tracepoint_module_nb", scope: !2, file: !3, line: 722, type: !2693, isLocal: true, isDefinition: true)
!2711 = !{i32 7, !"Dwarf Version", i32 5}
!2712 = !{i32 2, !"Debug Info Version", i32 3}
!2713 = !{i32 1, !"wchar_size", i32 2}
!2714 = !{i32 8, !"cf-protection-branch", i32 1}
!2715 = !{i32 4, !"function_return_thunk_extern", i32 1}
!2716 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!2717 = !{i32 1, !"Code Model", i32 2}
!2718 = !{i32 1, !"override-stack-alignment", i32 8}
!2719 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!2720 = distinct !DISubprogram(name: "__initstub__kmod_tracepoint__241_140_release_early_probes2", scope: !3, file: !3, line: 140, type: !886, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2721 = !DILocation(line: 140, column: 1, scope: !2720)
!2722 = distinct !DISubprogram(name: "release_early_probes", scope: !3, file: !3, line: 124, type: !886, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2723)
!2723 = !{!2724}
!2724 = !DILocalVariable(name: "tmp", scope: !2722, file: !3, line: 126, type: !296)
!2725 = !DILocation(line: 126, column: 2, scope: !2722)
!2726 = !DILocation(line: 126, column: 19, scope: !2722)
!2727 = !DILocation(line: 128, column: 25, scope: !2722)
!2728 = !DILocation(line: 130, column: 2, scope: !2722)
!2729 = !DILocation(line: 130, column: 9, scope: !2722)
!2730 = !DILocation(line: 131, column: 9, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2722, file: !3, line: 130, column: 23)
!2732 = !DILocation(line: 131, column: 7, scope: !2731)
!2733 = !DILocation(line: 132, column: 18, scope: !2731)
!2734 = !DILocation(line: 132, column: 23, scope: !2731)
!2735 = !DILocation(line: 132, column: 16, scope: !2731)
!2736 = !DILocation(line: 133, column: 12, scope: !2731)
!2737 = !DILocation(line: 133, column: 3, scope: !2731)
!2738 = distinct !{!2738, !2728, !2739, !2740, !2741}
!2739 = !DILocation(line: 134, column: 2, scope: !2722)
!2740 = !{!"llvm.loop.mustprogress"}
!2741 = !{!"llvm.loop.unroll.disable"}
!2742 = !DILocation(line: 137, column: 1, scope: !2722)
!2743 = !DILocation(line: 136, column: 2, scope: !2722)
!2744 = distinct !DISubprogram(name: "tracepoint_probe_register_prio_may_exist", scope: !3, file: !3, line: 472, type: !2745, scopeLine: 474, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2776)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{!140, !2747, !74, !74, !140}
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint", file: !978, line: 32, size: 640, elements: !2749)
!2749 = !{!2750, !2751, !2752, !2770, !2771, !2772, !2773, !2774, !2775}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2748, file: !978, line: 33, baseType: !105, size: 64)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2748, file: !978, line: 34, baseType: !2604, size: 128, offset: 64)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_key", scope: !2748, file: !978, line: 35, baseType: !2753, size: 64, offset: 192)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_key", file: !1123, line: 61, size: 128, elements: !2755)
!2755 = !{!2756, !2757}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2754, file: !1123, line: 62, baseType: !74, size: 64)
!2757 = !DIDerivedType(tag: DW_TAG_member, scope: !2754, file: !1123, line: 63, baseType: !2758, size: 64, offset: 64)
!2758 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2754, file: !1123, line: 63, size: 64, elements: !2759)
!2759 = !{!2760, !2761, !2769}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2758, file: !1123, line: 65, baseType: !237, size: 64)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "mods", scope: !2758, file: !1123, line: 66, baseType: !2762, size: 64)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_mod", file: !2764, line: 169, size: 192, elements: !2765)
!2764 = !DIFile(filename: "./include/linux/static_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4f20b8b91766caa416ca409c84dcc807")
!2765 = !{!2766, !2767, !2768}
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2763, file: !2764, line: 170, baseType: !2762, size: 64)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2763, file: !2764, line: 171, baseType: !87, size: 64, offset: 64)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !2763, file: !2764, line: 172, baseType: !1121, size: 64, offset: 128)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !2758, file: !1123, line: 67, baseType: !1121, size: 64)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_tramp", scope: !2748, file: !978, line: 36, baseType: !74, size: 64, offset: 256)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "iterator", scope: !2748, file: !978, line: 37, baseType: !74, size: 64, offset: 320)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "probestub", scope: !2748, file: !978, line: 38, baseType: !74, size: 64, offset: 384)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "regfunc", scope: !2748, file: !978, line: 39, baseType: !885, size: 64, offset: 448)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "unregfunc", scope: !2748, file: !978, line: 40, baseType: !1130, size: 64, offset: 512)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !2748, file: !978, line: 41, baseType: !2615, size: 64, offset: 576)
!2776 = !{!2777, !2778, !2779, !2780, !2781, !2782}
!2777 = !DILocalVariable(name: "tp", arg: 1, scope: !2744, file: !3, line: 472, type: !2747)
!2778 = !DILocalVariable(name: "probe", arg: 2, scope: !2744, file: !3, line: 472, type: !74)
!2779 = !DILocalVariable(name: "data", arg: 3, scope: !2744, file: !3, line: 473, type: !74)
!2780 = !DILocalVariable(name: "prio", arg: 4, scope: !2744, file: !3, line: 473, type: !140)
!2781 = !DILocalVariable(name: "tp_func", scope: !2744, file: !3, line: 475, type: !2598)
!2782 = !DILocalVariable(name: "ret", scope: !2744, file: !3, line: 476, type: !140)
!2783 = !DILocation(line: 472, column: 65, scope: !2744)
!2784 = !DILocation(line: 472, column: 75, scope: !2744)
!2785 = !DILocation(line: 473, column: 17, scope: !2744)
!2786 = !DILocation(line: 473, column: 27, scope: !2744)
!2787 = !DILocation(line: 475, column: 2, scope: !2744)
!2788 = !DILocation(line: 475, column: 25, scope: !2744)
!2789 = !DILocation(line: 476, column: 2, scope: !2744)
!2790 = !DILocation(line: 476, column: 6, scope: !2744)
!2791 = !DILocation(line: 478, column: 2, scope: !2744)
!2792 = !DILocation(line: 479, column: 17, scope: !2744)
!2793 = !DILocation(line: 479, column: 10, scope: !2744)
!2794 = !DILocation(line: 479, column: 15, scope: !2744)
!2795 = !DILocation(line: 480, column: 17, scope: !2744)
!2796 = !DILocation(line: 480, column: 10, scope: !2744)
!2797 = !DILocation(line: 480, column: 15, scope: !2744)
!2798 = !DILocation(line: 481, column: 17, scope: !2744)
!2799 = !DILocation(line: 481, column: 10, scope: !2744)
!2800 = !DILocation(line: 481, column: 15, scope: !2744)
!2801 = !DILocation(line: 482, column: 28, scope: !2744)
!2802 = !DILocation(line: 482, column: 42, scope: !2744)
!2803 = !DILocation(line: 482, column: 8, scope: !2744)
!2804 = !DILocation(line: 482, column: 6, scope: !2744)
!2805 = !DILocation(line: 483, column: 2, scope: !2744)
!2806 = !DILocation(line: 484, column: 9, scope: !2744)
!2807 = !DILocation(line: 485, column: 1, scope: !2744)
!2808 = !DILocation(line: 484, column: 2, scope: !2744)
!2809 = !DISubprogram(name: "mutex_lock", scope: !445, file: !445, line: 227, type: !2810, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{null, !2812}
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!2813 = distinct !DISubprogram(name: "tracepoint_add_func", scope: !3, file: !3, line: 323, type: !2814, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2816)
!2814 = !DISubroutineType(types: !2815)
!2815 = !{!140, !2747, !2615, !140, !543}
!2816 = !{!2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2828, !2831, !2834, !2836, !2838}
!2817 = !DILocalVariable(name: "tp", arg: 1, scope: !2813, file: !3, line: 323, type: !2747)
!2818 = !DILocalVariable(name: "func", arg: 2, scope: !2813, file: !3, line: 324, type: !2615)
!2819 = !DILocalVariable(name: "prio", arg: 3, scope: !2813, file: !3, line: 324, type: !140)
!2820 = !DILocalVariable(name: "warn", arg: 4, scope: !2813, file: !3, line: 325, type: !543)
!2821 = !DILocalVariable(name: "old", scope: !2813, file: !3, line: 327, type: !2615)
!2822 = !DILocalVariable(name: "tp_funcs", scope: !2813, file: !3, line: 327, type: !2615)
!2823 = !DILocalVariable(name: "ret", scope: !2813, file: !3, line: 328, type: !140)
!2824 = !DILocalVariable(name: "__ret_warn_on", scope: !2825, file: !3, line: 340, type: !140)
!2825 = distinct !DILexicalBlock(scope: !2826, file: !3, line: 340, column: 3)
!2826 = distinct !DILexicalBlock(scope: !2827, file: !3, line: 339, column: 19)
!2827 = distinct !DILexicalBlock(scope: !2813, file: !3, line: 339, column: 6)
!2828 = !DILocalVariable(name: "__flags", scope: !2829, file: !3, line: 340, type: !140)
!2829 = distinct !DILexicalBlock(scope: !2830, file: !3, line: 340, column: 3)
!2830 = distinct !DILexicalBlock(scope: !2825, file: !3, line: 340, column: 3)
!2831 = !DILocalVariable(name: "_r_a_p__v", scope: !2832, file: !3, line: 360, type: !2616)
!2832 = distinct !DILexicalBlock(scope: !2833, file: !3, line: 360, column: 3)
!2833 = distinct !DILexicalBlock(scope: !2813, file: !3, line: 350, column: 35)
!2834 = !DILocalVariable(name: "_r_a_p__v", scope: !2835, file: !3, line: 373, type: !2616)
!2835 = distinct !DILexicalBlock(scope: !2833, file: !3, line: 373, column: 3)
!2836 = !DILocalVariable(name: "__ret_warn_on", scope: !2837, file: !3, line: 382, type: !140)
!2837 = distinct !DILexicalBlock(scope: !2833, file: !3, line: 382, column: 3)
!2838 = !DILocalVariable(name: "__flags", scope: !2839, file: !3, line: 382, type: !140)
!2839 = distinct !DILexicalBlock(scope: !2840, file: !3, line: 382, column: 3)
!2840 = distinct !DILexicalBlock(scope: !2837, file: !3, line: 382, column: 3)
!2841 = !DILocation(line: 323, column: 51, scope: !2813)
!2842 = !DILocation(line: 324, column: 35, scope: !2813)
!2843 = !DILocation(line: 324, column: 45, scope: !2813)
!2844 = !DILocation(line: 325, column: 16, scope: !2813)
!2845 = !DILocation(line: 327, column: 2, scope: !2813)
!2846 = !DILocation(line: 327, column: 26, scope: !2813)
!2847 = !DILocation(line: 327, column: 32, scope: !2813)
!2848 = !DILocation(line: 328, column: 2, scope: !2813)
!2849 = !DILocation(line: 328, column: 6, scope: !2813)
!2850 = !DILocation(line: 330, column: 6, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2813, file: !3, line: 330, column: 6)
!2852 = !DILocation(line: 330, column: 10, scope: !2851)
!2853 = !DILocation(line: 330, column: 18, scope: !2851)
!2854 = !DILocation(line: 330, column: 22, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2851, file: !3, line: 330, column: 22)
!2856 = !DILocation(line: 330, column: 22, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2855, file: !3, line: 330, column: 22)
!2858 = !DILocation(line: 330, column: 22, scope: !2851)
!2859 = !DILocation(line: 330, column: 6, scope: !2813)
!2860 = !DILocation(line: 331, column: 9, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2851, file: !3, line: 330, column: 52)
!2862 = !DILocation(line: 331, column: 13, scope: !2861)
!2863 = !DILocation(line: 331, column: 7, scope: !2861)
!2864 = !DILocation(line: 332, column: 7, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2861, file: !3, line: 332, column: 7)
!2866 = !DILocation(line: 332, column: 11, scope: !2865)
!2867 = !DILocation(line: 332, column: 7, scope: !2861)
!2868 = !DILocation(line: 333, column: 11, scope: !2865)
!2869 = !DILocation(line: 333, column: 4, scope: !2865)
!2870 = !DILocation(line: 334, column: 2, scope: !2861)
!2871 = !DILocation(line: 336, column: 13, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2813, file: !3, line: 336, column: 13)
!2873 = !DILocation(line: 336, column: 13, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2872, file: !3, line: 336, column: 13)
!2875 = !DILocation(line: 336, column: 11, scope: !2813)
!2876 = !DILocation(line: 338, column: 28, scope: !2813)
!2877 = !DILocation(line: 338, column: 34, scope: !2813)
!2878 = !DILocation(line: 338, column: 8, scope: !2813)
!2879 = !DILocation(line: 338, column: 6, scope: !2813)
!2880 = !DILocation(line: 339, column: 13, scope: !2827)
!2881 = !DILocation(line: 339, column: 6, scope: !2827)
!2882 = !DILocation(line: 339, column: 6, scope: !2813)
!2883 = !DILocation(line: 340, column: 3, scope: !2825)
!2884 = !{i8 0, i8 2}
!2885 = !DILocation(line: 0, scope: !2825)
!2886 = !DILocation(line: 340, column: 3, scope: !2830)
!2887 = !DILocation(line: 340, column: 3, scope: !2829)
!2888 = !DILocation(line: 340, column: 3, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2829, file: !3, line: 340, column: 3)
!2890 = !DILocation(line: 340, column: 3, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2829, file: !3, line: 340, column: 3)
!2892 = !{i64 2153545870, i64 2153545899, i64 2153545945, i64 2153546003, i64 2153546057, i64 2153546111, i64 2153546166, i64 2153546197, i64 2153546505, i64 2153546511, i64 2153546558, i64 2153546581, i64 2153546607}
!2893 = !DILocation(line: 340, column: 3, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2829, file: !3, line: 340, column: 3)
!2895 = !DILocation(line: 340, column: 3, scope: !2826)
!2896 = !DILocation(line: 341, column: 18, scope: !2826)
!2897 = !DILocation(line: 341, column: 10, scope: !2826)
!2898 = !DILocation(line: 341, column: 3, scope: !2826)
!2899 = !DILocation(line: 350, column: 24, scope: !2813)
!2900 = !DILocation(line: 350, column: 10, scope: !2813)
!2901 = !DILocation(line: 350, column: 2, scope: !2813)
!2902 = !DILocation(line: 356, column: 3, scope: !2833)
!2903 = !DILocation(line: 358, column: 26, scope: !2833)
!2904 = !DILocation(line: 358, column: 30, scope: !2833)
!2905 = !DILocation(line: 358, column: 3, scope: !2833)
!2906 = !DILocation(line: 360, column: 3, scope: !2833)
!2907 = !DILocation(line: 360, column: 3, scope: !2832)
!2908 = !DILocation(line: 360, column: 3, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2832, file: !3, line: 360, column: 3)
!2910 = !DILocation(line: 360, column: 3, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2909, file: !3, line: 360, column: 3)
!2912 = !DILocation(line: 360, column: 3, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2911, file: !3, line: 360, column: 3)
!2914 = !DILocation(line: 360, column: 3, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2911, file: !3, line: 360, column: 3)
!2916 = !DILocation(line: 360, column: 3, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2909, file: !3, line: 360, column: 3)
!2918 = !DILocation(line: 360, column: 3, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2917, file: !3, line: 360, column: 3)
!2920 = !DILocation(line: 360, column: 3, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2917, file: !3, line: 360, column: 3)
!2922 = !DILocation(line: 360, column: 3, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2921, file: !3, line: 360, column: 3)
!2924 = !{i64 2153551716}
!2925 = !DILocation(line: 360, column: 3, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2921, file: !3, line: 360, column: 3)
!2927 = !DILocation(line: 360, column: 3, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2926, file: !3, line: 360, column: 3)
!2929 = !DILocation(line: 360, column: 3, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2926, file: !3, line: 360, column: 3)
!2931 = !DILocation(line: 361, column: 22, scope: !2833)
!2932 = !DILocation(line: 361, column: 26, scope: !2833)
!2933 = !DILocation(line: 361, column: 3, scope: !2833)
!2934 = !DILocation(line: 362, column: 3, scope: !2833)
!2935 = !DILocation(line: 365, column: 26, scope: !2833)
!2936 = !DILocation(line: 365, column: 30, scope: !2833)
!2937 = !DILocation(line: 365, column: 3, scope: !2833)
!2938 = !DILocation(line: 373, column: 3, scope: !2833)
!2939 = !DILocation(line: 373, column: 3, scope: !2835)
!2940 = !DILocation(line: 373, column: 3, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2835, file: !3, line: 373, column: 3)
!2942 = !DILocation(line: 373, column: 3, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2941, file: !3, line: 373, column: 3)
!2944 = !DILocation(line: 373, column: 3, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2943, file: !3, line: 373, column: 3)
!2946 = !DILocation(line: 373, column: 3, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2943, file: !3, line: 373, column: 3)
!2948 = !DILocation(line: 373, column: 3, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2941, file: !3, line: 373, column: 3)
!2950 = !DILocation(line: 373, column: 3, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2949, file: !3, line: 373, column: 3)
!2952 = !DILocation(line: 373, column: 3, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !2949, file: !3, line: 373, column: 3)
!2954 = !DILocation(line: 373, column: 3, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2953, file: !3, line: 373, column: 3)
!2956 = !{i64 2153558937}
!2957 = !DILocation(line: 373, column: 3, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2953, file: !3, line: 373, column: 3)
!2959 = !DILocation(line: 373, column: 3, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2958, file: !3, line: 373, column: 3)
!2961 = !DILocation(line: 373, column: 3, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2958, file: !3, line: 373, column: 3)
!2963 = !DILocation(line: 378, column: 7, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2833, file: !3, line: 378, column: 7)
!2965 = !DILocation(line: 378, column: 19, scope: !2964)
!2966 = !DILocation(line: 378, column: 27, scope: !2964)
!2967 = !DILocation(line: 378, column: 34, scope: !2964)
!2968 = !DILocation(line: 378, column: 24, scope: !2964)
!2969 = !DILocation(line: 378, column: 7, scope: !2833)
!2970 = !DILocation(line: 379, column: 4, scope: !2964)
!2971 = !DILocation(line: 380, column: 3, scope: !2833)
!2972 = !DILocation(line: 382, column: 3, scope: !2837)
!2973 = !DILocation(line: 382, column: 3, scope: !2840)
!2974 = !DILocation(line: 382, column: 3, scope: !2839)
!2975 = !DILocation(line: 382, column: 3, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2839, file: !3, line: 382, column: 3)
!2977 = !DILocation(line: 382, column: 3, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2839, file: !3, line: 382, column: 3)
!2979 = !{i64 2153561791, i64 2153561820, i64 2153561866, i64 2153561924, i64 2153561978, i64 2153562032, i64 2153562087, i64 2153562118, i64 2153562426, i64 2153562432, i64 2153562479, i64 2153562502, i64 2153562528}
!2980 = !DILocation(line: 382, column: 3, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2839, file: !3, line: 382, column: 3)
!2982 = !DILocation(line: 382, column: 3, scope: !2833)
!2983 = !DILocation(line: 383, column: 3, scope: !2833)
!2984 = !DILocation(line: 386, column: 17, scope: !2813)
!2985 = !DILocation(line: 386, column: 2, scope: !2813)
!2986 = !DILocation(line: 387, column: 2, scope: !2813)
!2987 = !DILocation(line: 388, column: 1, scope: !2813)
!2988 = !DISubprogram(name: "mutex_unlock", scope: !445, file: !445, line: 246, type: !2810, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2989 = distinct !DISubprogram(name: "tracepoint_probe_register_prio", scope: !3, file: !3, line: 501, type: !2745, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2990)
!2990 = !{!2991, !2992, !2993, !2994, !2995, !2996}
!2991 = !DILocalVariable(name: "tp", arg: 1, scope: !2989, file: !3, line: 501, type: !2747)
!2992 = !DILocalVariable(name: "probe", arg: 2, scope: !2989, file: !3, line: 501, type: !74)
!2993 = !DILocalVariable(name: "data", arg: 3, scope: !2989, file: !3, line: 502, type: !74)
!2994 = !DILocalVariable(name: "prio", arg: 4, scope: !2989, file: !3, line: 502, type: !140)
!2995 = !DILocalVariable(name: "tp_func", scope: !2989, file: !3, line: 504, type: !2598)
!2996 = !DILocalVariable(name: "ret", scope: !2989, file: !3, line: 505, type: !140)
!2997 = !DILocation(line: 501, column: 55, scope: !2989)
!2998 = !DILocation(line: 501, column: 65, scope: !2989)
!2999 = !DILocation(line: 502, column: 14, scope: !2989)
!3000 = !DILocation(line: 502, column: 24, scope: !2989)
!3001 = !DILocation(line: 504, column: 2, scope: !2989)
!3002 = !DILocation(line: 504, column: 25, scope: !2989)
!3003 = !DILocation(line: 505, column: 2, scope: !2989)
!3004 = !DILocation(line: 505, column: 6, scope: !2989)
!3005 = !DILocation(line: 507, column: 2, scope: !2989)
!3006 = !DILocation(line: 508, column: 17, scope: !2989)
!3007 = !DILocation(line: 508, column: 10, scope: !2989)
!3008 = !DILocation(line: 508, column: 15, scope: !2989)
!3009 = !DILocation(line: 509, column: 17, scope: !2989)
!3010 = !DILocation(line: 509, column: 10, scope: !2989)
!3011 = !DILocation(line: 509, column: 15, scope: !2989)
!3012 = !DILocation(line: 510, column: 17, scope: !2989)
!3013 = !DILocation(line: 510, column: 10, scope: !2989)
!3014 = !DILocation(line: 510, column: 15, scope: !2989)
!3015 = !DILocation(line: 511, column: 28, scope: !2989)
!3016 = !DILocation(line: 511, column: 42, scope: !2989)
!3017 = !DILocation(line: 511, column: 8, scope: !2989)
!3018 = !DILocation(line: 511, column: 6, scope: !2989)
!3019 = !DILocation(line: 512, column: 2, scope: !2989)
!3020 = !DILocation(line: 513, column: 9, scope: !2989)
!3021 = !DILocation(line: 514, column: 1, scope: !2989)
!3022 = !DILocation(line: 513, column: 2, scope: !2989)
!3023 = distinct !DISubprogram(name: "tracepoint_probe_register", scope: !3, file: !3, line: 529, type: !3024, scopeLine: 530, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3026)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{!140, !2747, !74, !74}
!3026 = !{!3027, !3028, !3029}
!3027 = !DILocalVariable(name: "tp", arg: 1, scope: !3023, file: !3, line: 529, type: !2747)
!3028 = !DILocalVariable(name: "probe", arg: 2, scope: !3023, file: !3, line: 529, type: !74)
!3029 = !DILocalVariable(name: "data", arg: 3, scope: !3023, file: !3, line: 529, type: !74)
!3030 = !DILocation(line: 529, column: 50, scope: !3023)
!3031 = !DILocation(line: 529, column: 60, scope: !3023)
!3032 = !DILocation(line: 529, column: 73, scope: !3023)
!3033 = !DILocation(line: 531, column: 40, scope: !3023)
!3034 = !DILocation(line: 531, column: 44, scope: !3023)
!3035 = !DILocation(line: 531, column: 51, scope: !3023)
!3036 = !DILocation(line: 531, column: 9, scope: !3023)
!3037 = !DILocation(line: 531, column: 2, scope: !3023)
!3038 = distinct !DISubprogram(name: "tracepoint_probe_unregister", scope: !3, file: !3, line: 543, type: !3024, scopeLine: 544, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3039)
!3039 = !{!3040, !3041, !3042, !3043, !3044}
!3040 = !DILocalVariable(name: "tp", arg: 1, scope: !3038, file: !3, line: 543, type: !2747)
!3041 = !DILocalVariable(name: "probe", arg: 2, scope: !3038, file: !3, line: 543, type: !74)
!3042 = !DILocalVariable(name: "data", arg: 3, scope: !3038, file: !3, line: 543, type: !74)
!3043 = !DILocalVariable(name: "tp_func", scope: !3038, file: !3, line: 545, type: !2598)
!3044 = !DILocalVariable(name: "ret", scope: !3038, file: !3, line: 546, type: !140)
!3045 = !DILocation(line: 543, column: 52, scope: !3038)
!3046 = !DILocation(line: 543, column: 62, scope: !3038)
!3047 = !DILocation(line: 543, column: 75, scope: !3038)
!3048 = !DILocation(line: 545, column: 2, scope: !3038)
!3049 = !DILocation(line: 545, column: 25, scope: !3038)
!3050 = !DILocation(line: 546, column: 2, scope: !3038)
!3051 = !DILocation(line: 546, column: 6, scope: !3038)
!3052 = !DILocation(line: 548, column: 2, scope: !3038)
!3053 = !DILocation(line: 549, column: 17, scope: !3038)
!3054 = !DILocation(line: 549, column: 10, scope: !3038)
!3055 = !DILocation(line: 549, column: 15, scope: !3038)
!3056 = !DILocation(line: 550, column: 17, scope: !3038)
!3057 = !DILocation(line: 550, column: 10, scope: !3038)
!3058 = !DILocation(line: 550, column: 15, scope: !3038)
!3059 = !DILocation(line: 551, column: 31, scope: !3038)
!3060 = !DILocation(line: 551, column: 8, scope: !3038)
!3061 = !DILocation(line: 551, column: 6, scope: !3038)
!3062 = !DILocation(line: 552, column: 2, scope: !3038)
!3063 = !DILocation(line: 553, column: 9, scope: !3038)
!3064 = !DILocation(line: 554, column: 1, scope: !3038)
!3065 = !DILocation(line: 553, column: 2, scope: !3038)
!3066 = distinct !DISubprogram(name: "tracepoint_remove_func", scope: !3, file: !3, line: 396, type: !3067, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3069)
!3067 = !DISubroutineType(types: !3068)
!3068 = !{!140, !2747, !2615}
!3069 = !{!3070, !3071, !3072, !3073, !3074, !3077, !3080, !3083, !3085, !3087, !3089}
!3070 = !DILocalVariable(name: "tp", arg: 1, scope: !3066, file: !3, line: 396, type: !2747)
!3071 = !DILocalVariable(name: "func", arg: 2, scope: !3066, file: !3, line: 397, type: !2615)
!3072 = !DILocalVariable(name: "old", scope: !3066, file: !3, line: 399, type: !2615)
!3073 = !DILocalVariable(name: "tp_funcs", scope: !3066, file: !3, line: 399, type: !2615)
!3074 = !DILocalVariable(name: "__ret_warn_on", scope: !3075, file: !3, line: 404, type: !140)
!3075 = distinct !DILexicalBlock(scope: !3076, file: !3, line: 404, column: 6)
!3076 = distinct !DILexicalBlock(scope: !3066, file: !3, line: 404, column: 6)
!3077 = !DILocalVariable(name: "__flags", scope: !3078, file: !3, line: 404, type: !140)
!3078 = distinct !DILexicalBlock(scope: !3079, file: !3, line: 404, column: 6)
!3079 = distinct !DILexicalBlock(scope: !3075, file: !3, line: 404, column: 6)
!3080 = !DILocalVariable(name: "_r_a_p__v", scope: !3081, file: !3, line: 421, type: !2616)
!3081 = distinct !DILexicalBlock(scope: !3082, file: !3, line: 421, column: 3)
!3082 = distinct !DILexicalBlock(scope: !3066, file: !3, line: 411, column: 35)
!3083 = !DILocalVariable(name: "_r_a_p__v", scope: !3084, file: !3, line: 429, type: !2616)
!3084 = distinct !DILexicalBlock(scope: !3082, file: !3, line: 429, column: 3)
!3085 = !DILocalVariable(name: "_r_a_p__v", scope: !3086, file: !3, line: 446, type: !2616)
!3086 = distinct !DILexicalBlock(scope: !3082, file: !3, line: 446, column: 3)
!3087 = !DILocalVariable(name: "__ret_warn_on", scope: !3088, file: !3, line: 455, type: !140)
!3088 = distinct !DILexicalBlock(scope: !3082, file: !3, line: 455, column: 3)
!3089 = !DILocalVariable(name: "__flags", scope: !3090, file: !3, line: 455, type: !140)
!3090 = distinct !DILexicalBlock(scope: !3091, file: !3, line: 455, column: 3)
!3091 = distinct !DILexicalBlock(scope: !3088, file: !3, line: 455, column: 3)
!3092 = !DILocation(line: 396, column: 54, scope: !3066)
!3093 = !DILocation(line: 397, column: 27, scope: !3066)
!3094 = !DILocation(line: 399, column: 2, scope: !3066)
!3095 = !DILocation(line: 399, column: 26, scope: !3066)
!3096 = !DILocation(line: 399, column: 32, scope: !3066)
!3097 = !DILocation(line: 401, column: 13, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3066, file: !3, line: 401, column: 13)
!3099 = !DILocation(line: 401, column: 13, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3098, file: !3, line: 401, column: 13)
!3101 = !DILocation(line: 401, column: 11, scope: !3066)
!3102 = !DILocation(line: 403, column: 31, scope: !3066)
!3103 = !DILocation(line: 403, column: 8, scope: !3066)
!3104 = !DILocation(line: 403, column: 6, scope: !3066)
!3105 = !DILocation(line: 404, column: 6, scope: !3075)
!3106 = !DILocation(line: 404, column: 6, scope: !3079)
!3107 = !DILocation(line: 404, column: 6, scope: !3078)
!3108 = !DILocation(line: 404, column: 6, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3078, file: !3, line: 404, column: 6)
!3110 = !DILocation(line: 404, column: 6, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3078, file: !3, line: 404, column: 6)
!3112 = !{i64 2153563748, i64 2153563777, i64 2153563823, i64 2153563881, i64 2153563935, i64 2153563989, i64 2153564044, i64 2153564075, i64 2153564383, i64 2153564389, i64 2153564436, i64 2153564459, i64 2153564485}
!3113 = !DILocation(line: 404, column: 6, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3078, file: !3, line: 404, column: 6)
!3115 = !DILocation(line: 404, column: 6, scope: !3076)
!3116 = !DILocation(line: 404, column: 6, scope: !3066)
!3117 = !DILocation(line: 405, column: 18, scope: !3076)
!3118 = !DILocation(line: 405, column: 10, scope: !3076)
!3119 = !DILocation(line: 405, column: 3, scope: !3076)
!3120 = !DILocation(line: 407, column: 6, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !3066, file: !3, line: 407, column: 6)
!3122 = !DILocation(line: 407, column: 18, scope: !3121)
!3123 = !DILocation(line: 407, column: 15, scope: !3121)
!3124 = !DILocation(line: 407, column: 6, scope: !3066)
!3125 = !DILocation(line: 409, column: 3, scope: !3121)
!3126 = !DILocation(line: 411, column: 24, scope: !3066)
!3127 = !DILocation(line: 411, column: 10, scope: !3066)
!3128 = !DILocation(line: 411, column: 2, scope: !3066)
!3129 = !DILocation(line: 414, column: 7, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !3082, file: !3, line: 414, column: 7)
!3131 = !DILocation(line: 414, column: 11, scope: !3130)
!3132 = !DILocation(line: 414, column: 21, scope: !3130)
!3133 = !DILocation(line: 414, column: 24, scope: !3134)
!3134 = distinct !DILexicalBlock(scope: !3130, file: !3, line: 414, column: 24)
!3135 = !DILocation(line: 414, column: 24, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !3134, file: !3, line: 414, column: 24)
!3137 = !DILocation(line: 414, column: 24, scope: !3130)
!3138 = !DILocation(line: 414, column: 7, scope: !3082)
!3139 = !DILocation(line: 415, column: 4, scope: !3130)
!3140 = !DILocation(line: 415, column: 8, scope: !3130)
!3141 = !DILocation(line: 417, column: 23, scope: !3082)
!3142 = !DILocation(line: 417, column: 27, scope: !3082)
!3143 = !DILocation(line: 417, column: 3, scope: !3082)
!3144 = !DILocation(line: 419, column: 26, scope: !3082)
!3145 = !DILocation(line: 419, column: 30, scope: !3082)
!3146 = !DILocation(line: 419, column: 3, scope: !3082)
!3147 = !DILocation(line: 421, column: 3, scope: !3082)
!3148 = !DILocation(line: 421, column: 3, scope: !3081)
!3149 = !DILocation(line: 421, column: 3, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3081, file: !3, line: 421, column: 3)
!3151 = !DILocation(line: 421, column: 3, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3150, file: !3, line: 421, column: 3)
!3153 = !DILocation(line: 421, column: 3, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !3152, file: !3, line: 421, column: 3)
!3155 = !DILocation(line: 421, column: 3, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3152, file: !3, line: 421, column: 3)
!3157 = !DILocation(line: 421, column: 3, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !3150, file: !3, line: 421, column: 3)
!3159 = !DILocation(line: 421, column: 3, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3158, file: !3, line: 421, column: 3)
!3161 = !DILocation(line: 421, column: 3, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !3158, file: !3, line: 421, column: 3)
!3163 = !DILocation(line: 421, column: 3, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3162, file: !3, line: 421, column: 3)
!3165 = !{i64 2153569974}
!3166 = !DILocation(line: 421, column: 3, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !3162, file: !3, line: 421, column: 3)
!3168 = !DILocation(line: 421, column: 3, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !3167, file: !3, line: 421, column: 3)
!3170 = !DILocation(line: 421, column: 3, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3167, file: !3, line: 421, column: 3)
!3172 = !DILocation(line: 426, column: 3, scope: !3082)
!3173 = !DILocation(line: 427, column: 3, scope: !3082)
!3174 = !DILocation(line: 429, column: 3, scope: !3082)
!3175 = !DILocation(line: 429, column: 3, scope: !3084)
!3176 = !DILocation(line: 429, column: 3, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3084, file: !3, line: 429, column: 3)
!3178 = !DILocation(line: 429, column: 3, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3177, file: !3, line: 429, column: 3)
!3180 = !DILocation(line: 429, column: 3, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3179, file: !3, line: 429, column: 3)
!3182 = !DILocation(line: 429, column: 3, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3179, file: !3, line: 429, column: 3)
!3184 = !DILocation(line: 429, column: 3, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !3177, file: !3, line: 429, column: 3)
!3186 = !DILocation(line: 429, column: 3, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3185, file: !3, line: 429, column: 3)
!3188 = !DILocation(line: 429, column: 3, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !3185, file: !3, line: 429, column: 3)
!3190 = !DILocation(line: 429, column: 3, scope: !3191)
!3191 = distinct !DILexicalBlock(scope: !3189, file: !3, line: 429, column: 3)
!3192 = !{i64 2153577162}
!3193 = !DILocation(line: 429, column: 3, scope: !3194)
!3194 = distinct !DILexicalBlock(scope: !3189, file: !3, line: 429, column: 3)
!3195 = !DILocation(line: 429, column: 3, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3194, file: !3, line: 429, column: 3)
!3197 = !DILocation(line: 429, column: 3, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3194, file: !3, line: 429, column: 3)
!3199 = !DILocation(line: 437, column: 7, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !3082, file: !3, line: 437, column: 7)
!3201 = !DILocation(line: 437, column: 19, scope: !3200)
!3202 = !DILocation(line: 437, column: 27, scope: !3200)
!3203 = !DILocation(line: 437, column: 34, scope: !3200)
!3204 = !DILocation(line: 437, column: 24, scope: !3200)
!3205 = !DILocation(line: 437, column: 7, scope: !3082)
!3206 = !DILocation(line: 438, column: 4, scope: !3200)
!3207 = !DILocation(line: 439, column: 3, scope: !3082)
!3208 = !DILocation(line: 441, column: 26, scope: !3082)
!3209 = !DILocation(line: 441, column: 30, scope: !3082)
!3210 = !DILocation(line: 441, column: 3, scope: !3082)
!3211 = !DILocation(line: 442, column: 3, scope: !3082)
!3212 = !DILocation(line: 446, column: 3, scope: !3082)
!3213 = !DILocation(line: 446, column: 3, scope: !3086)
!3214 = !DILocation(line: 446, column: 3, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !3086, file: !3, line: 446, column: 3)
!3216 = !DILocation(line: 446, column: 3, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3215, file: !3, line: 446, column: 3)
!3218 = !DILocation(line: 446, column: 3, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !3217, file: !3, line: 446, column: 3)
!3220 = !DILocation(line: 446, column: 3, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3217, file: !3, line: 446, column: 3)
!3222 = !DILocation(line: 446, column: 3, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !3215, file: !3, line: 446, column: 3)
!3224 = !DILocation(line: 446, column: 3, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !3223, file: !3, line: 446, column: 3)
!3226 = !DILocation(line: 446, column: 3, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !3223, file: !3, line: 446, column: 3)
!3228 = !DILocation(line: 446, column: 3, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3227, file: !3, line: 446, column: 3)
!3230 = !{i64 2153584383}
!3231 = !DILocation(line: 446, column: 3, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3227, file: !3, line: 446, column: 3)
!3233 = !DILocation(line: 446, column: 3, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !3232, file: !3, line: 446, column: 3)
!3235 = !DILocation(line: 446, column: 3, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3232, file: !3, line: 446, column: 3)
!3237 = !DILocation(line: 451, column: 7, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3082, file: !3, line: 451, column: 7)
!3239 = !DILocation(line: 451, column: 19, scope: !3238)
!3240 = !DILocation(line: 451, column: 27, scope: !3238)
!3241 = !DILocation(line: 451, column: 34, scope: !3238)
!3242 = !DILocation(line: 451, column: 24, scope: !3238)
!3243 = !DILocation(line: 451, column: 7, scope: !3082)
!3244 = !DILocation(line: 452, column: 4, scope: !3238)
!3245 = !DILocation(line: 453, column: 3, scope: !3082)
!3246 = !DILocation(line: 455, column: 3, scope: !3088)
!3247 = !DILocation(line: 455, column: 3, scope: !3091)
!3248 = !DILocation(line: 455, column: 3, scope: !3090)
!3249 = !DILocation(line: 455, column: 3, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3090, file: !3, line: 455, column: 3)
!3251 = !DILocation(line: 455, column: 3, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3090, file: !3, line: 455, column: 3)
!3253 = !{i64 2153587237, i64 2153587266, i64 2153587312, i64 2153587370, i64 2153587424, i64 2153587478, i64 2153587533, i64 2153587564, i64 2153587872, i64 2153587878, i64 2153587925, i64 2153587948, i64 2153587974}
!3254 = !DILocation(line: 455, column: 3, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3090, file: !3, line: 455, column: 3)
!3256 = !DILocation(line: 455, column: 3, scope: !3082)
!3257 = !DILocation(line: 456, column: 3, scope: !3082)
!3258 = !DILocation(line: 458, column: 17, scope: !3066)
!3259 = !DILocation(line: 458, column: 2, scope: !3066)
!3260 = !DILocation(line: 459, column: 2, scope: !3066)
!3261 = !DILocation(line: 460, column: 1, scope: !3066)
!3262 = distinct !DISubprogram(name: "trace_module_has_bad_taint", scope: !3, file: !3, line: 571, type: !3263, scopeLine: 572, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3265)
!3263 = !DISubroutineType(types: !3264)
!3264 = !{!543, !87}
!3265 = !{!3266}
!3266 = !DILocalVariable(name: "mod", arg: 1, scope: !3262, file: !3, line: 571, type: !87)
!3267 = !DILocation(line: 571, column: 48, scope: !3262)
!3268 = !DILocation(line: 573, column: 9, scope: !3262)
!3269 = !DILocation(line: 573, column: 14, scope: !3262)
!3270 = !DILocation(line: 573, column: 21, scope: !3262)
!3271 = !DILocation(line: 573, column: 2, scope: !3262)
!3272 = distinct !DISubprogram(name: "register_tracepoint_module_notifier", scope: !3, file: !3, line: 589, type: !3273, scopeLine: 590, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3275)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{!140, !2692}
!3275 = !{!3276, !3277, !3278, !3279, !3282, !3285}
!3276 = !DILocalVariable(name: "nb", arg: 1, scope: !3272, file: !3, line: 589, type: !2692)
!3277 = !DILocalVariable(name: "tp_mod", scope: !3272, file: !3, line: 591, type: !75)
!3278 = !DILocalVariable(name: "ret", scope: !3272, file: !3, line: 592, type: !140)
!3279 = !DILocalVariable(name: "__mptr", scope: !3280, file: !3, line: 598, type: !74)
!3280 = distinct !DILexicalBlock(scope: !3281, file: !3, line: 598, column: 2)
!3281 = distinct !DILexicalBlock(scope: !3272, file: !3, line: 598, column: 2)
!3282 = !DILocalVariable(name: "__mptr", scope: !3283, file: !3, line: 598, type: !74)
!3283 = distinct !DILexicalBlock(scope: !3284, file: !3, line: 598, column: 2)
!3284 = distinct !DILexicalBlock(scope: !3281, file: !3, line: 598, column: 2)
!3285 = !DILabel(scope: !3272, name: "end", file: !3, line: 600)
!3286 = !DILocation(line: 589, column: 64, scope: !3272)
!3287 = !DILocation(line: 591, column: 2, scope: !3272)
!3288 = !DILocation(line: 591, column: 20, scope: !3272)
!3289 = !DILocation(line: 592, column: 2, scope: !3272)
!3290 = !DILocation(line: 592, column: 6, scope: !3272)
!3291 = !DILocation(line: 594, column: 2, scope: !3272)
!3292 = !DILocation(line: 595, column: 66, scope: !3272)
!3293 = !DILocation(line: 595, column: 8, scope: !3272)
!3294 = !DILocation(line: 595, column: 6, scope: !3272)
!3295 = !DILocation(line: 596, column: 6, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3272, file: !3, line: 596, column: 6)
!3297 = !DILocation(line: 596, column: 6, scope: !3272)
!3298 = !DILocation(line: 597, column: 3, scope: !3296)
!3299 = !DILocation(line: 598, column: 2, scope: !3280)
!3300 = !DILocation(line: 598, column: 2, scope: !3281)
!3301 = !DILocation(line: 598, column: 2, scope: !3284)
!3302 = !DILocation(line: 599, column: 10, scope: !3284)
!3303 = !DILocation(line: 599, column: 14, scope: !3284)
!3304 = !DILocation(line: 599, column: 28, scope: !3284)
!3305 = !DILocation(line: 599, column: 53, scope: !3284)
!3306 = !DILocation(line: 599, column: 3, scope: !3284)
!3307 = !DILocation(line: 598, column: 2, scope: !3283)
!3308 = distinct !{!3308, !3300, !3309, !2740, !2741}
!3309 = !DILocation(line: 599, column: 59, scope: !3281)
!3310 = !DILocation(line: 600, column: 1, scope: !3272)
!3311 = !DILocation(line: 601, column: 2, scope: !3272)
!3312 = !DILocation(line: 602, column: 9, scope: !3272)
!3313 = !DILocation(line: 603, column: 1, scope: !3272)
!3314 = !DILocation(line: 602, column: 2, scope: !3272)
!3315 = !DISubprogram(name: "blocking_notifier_chain_register", scope: !2688, file: !2688, line: 148, type: !3316, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{!140, !3318, !2692}
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!3319 = distinct !DISubprogram(name: "unregister_tracepoint_module_notifier", scope: !3, file: !3, line: 613, type: !3273, scopeLine: 614, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3320)
!3320 = !{!3321, !3322, !3323, !3324, !3327, !3330}
!3321 = !DILocalVariable(name: "nb", arg: 1, scope: !3319, file: !3, line: 613, type: !2692)
!3322 = !DILocalVariable(name: "tp_mod", scope: !3319, file: !3, line: 615, type: !75)
!3323 = !DILocalVariable(name: "ret", scope: !3319, file: !3, line: 616, type: !140)
!3324 = !DILocalVariable(name: "__mptr", scope: !3325, file: !3, line: 622, type: !74)
!3325 = distinct !DILexicalBlock(scope: !3326, file: !3, line: 622, column: 2)
!3326 = distinct !DILexicalBlock(scope: !3319, file: !3, line: 622, column: 2)
!3327 = !DILocalVariable(name: "__mptr", scope: !3328, file: !3, line: 622, type: !74)
!3328 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 622, column: 2)
!3329 = distinct !DILexicalBlock(scope: !3326, file: !3, line: 622, column: 2)
!3330 = !DILabel(scope: !3319, name: "end", file: !3, line: 624)
!3331 = !DILocation(line: 613, column: 66, scope: !3319)
!3332 = !DILocation(line: 615, column: 2, scope: !3319)
!3333 = !DILocation(line: 615, column: 20, scope: !3319)
!3334 = !DILocation(line: 616, column: 2, scope: !3319)
!3335 = !DILocation(line: 616, column: 6, scope: !3319)
!3336 = !DILocation(line: 618, column: 2, scope: !3319)
!3337 = !DILocation(line: 619, column: 68, scope: !3319)
!3338 = !DILocation(line: 619, column: 8, scope: !3319)
!3339 = !DILocation(line: 619, column: 6, scope: !3319)
!3340 = !DILocation(line: 620, column: 6, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3319, file: !3, line: 620, column: 6)
!3342 = !DILocation(line: 620, column: 6, scope: !3319)
!3343 = !DILocation(line: 621, column: 3, scope: !3341)
!3344 = !DILocation(line: 622, column: 2, scope: !3325)
!3345 = !DILocation(line: 622, column: 2, scope: !3326)
!3346 = !DILocation(line: 622, column: 2, scope: !3329)
!3347 = !DILocation(line: 623, column: 10, scope: !3329)
!3348 = !DILocation(line: 623, column: 14, scope: !3329)
!3349 = !DILocation(line: 623, column: 28, scope: !3329)
!3350 = !DILocation(line: 623, column: 52, scope: !3329)
!3351 = !DILocation(line: 623, column: 3, scope: !3329)
!3352 = !DILocation(line: 622, column: 2, scope: !3328)
!3353 = distinct !{!3353, !3345, !3354, !2740, !2741}
!3354 = !DILocation(line: 623, column: 58, scope: !3326)
!3355 = !DILocation(line: 624, column: 1, scope: !3319)
!3356 = !DILocation(line: 625, column: 2, scope: !3319)
!3357 = !DILocation(line: 626, column: 9, scope: !3319)
!3358 = !DILocation(line: 628, column: 1, scope: !3319)
!3359 = !DILocation(line: 626, column: 2, scope: !3319)
!3360 = !DISubprogram(name: "blocking_notifier_chain_unregister", scope: !2688, file: !2688, line: 162, type: !3316, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3361 = distinct !DISubprogram(name: "__initstub__kmod_tracepoint__265_737_init_tracepoints6", scope: !3, file: !3, line: 737, type: !886, scopeLine: 737, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3362 = !DILocation(line: 737, column: 1, scope: !3361)
!3363 = distinct !DISubprogram(name: "init_tracepoints", scope: !3, file: !3, line: 727, type: !886, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3364)
!3364 = !{!3365}
!3365 = !DILocalVariable(name: "ret", scope: !3363, file: !3, line: 729, type: !140)
!3366 = !DILocation(line: 729, column: 2, scope: !3363)
!3367 = !DILocation(line: 729, column: 6, scope: !3363)
!3368 = !DILocation(line: 731, column: 8, scope: !3363)
!3369 = !DILocation(line: 731, column: 6, scope: !3363)
!3370 = !DILocation(line: 732, column: 6, scope: !3371)
!3371 = distinct !DILexicalBlock(scope: !3363, file: !3, line: 732, column: 6)
!3372 = !DILocation(line: 732, column: 6, scope: !3363)
!3373 = !DILocation(line: 733, column: 3, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !3371, file: !3, line: 733, column: 3)
!3375 = !DILocation(line: 733, column: 3, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !3374, file: !3, line: 733, column: 3)
!3377 = !DILocation(line: 733, column: 3, scope: !3371)
!3378 = !DILocation(line: 735, column: 9, scope: !3363)
!3379 = !DILocation(line: 736, column: 1, scope: !3363)
!3380 = !DILocation(line: 735, column: 2, scope: !3363)
!3381 = distinct !DISubprogram(name: "for_each_kernel_tracepoint", scope: !3, file: !3, line: 745, type: !3382, scopeLine: 747, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3387)
!3382 = !DISubroutineType(types: !3383)
!3383 = !{null, !3384, !74}
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = !DISubroutineType(types: !3386)
!3386 = !{null, !2747, !74}
!3387 = !{!3388, !3389}
!3388 = !DILocalVariable(name: "fct", arg: 1, scope: !3381, file: !3, line: 745, type: !3384)
!3389 = !DILocalVariable(name: "priv", arg: 2, scope: !3381, file: !3, line: 746, type: !74)
!3390 = !DILocation(line: 745, column: 40, scope: !3381)
!3391 = !DILocation(line: 746, column: 9, scope: !3381)
!3392 = !DILocation(line: 749, column: 30, scope: !3381)
!3393 = !DILocation(line: 749, column: 35, scope: !3381)
!3394 = !DILocation(line: 748, column: 2, scope: !3381)
!3395 = !DILocation(line: 750, column: 1, scope: !3381)
!3396 = distinct !DISubprogram(name: "for_each_tracepoint_range", scope: !3, file: !3, line: 557, type: !3397, scopeLine: 561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3399)
!3397 = !DISubroutineType(types: !3398)
!3398 = !{null, !976, !976, !3384, !74}
!3399 = !{!3400, !3401, !3402, !3403, !3404}
!3400 = !DILocalVariable(name: "begin", arg: 1, scope: !3396, file: !3, line: 558, type: !976)
!3401 = !DILocalVariable(name: "end", arg: 2, scope: !3396, file: !3, line: 558, type: !976)
!3402 = !DILocalVariable(name: "fct", arg: 3, scope: !3396, file: !3, line: 559, type: !3384)
!3403 = !DILocalVariable(name: "priv", arg: 4, scope: !3396, file: !3, line: 560, type: !74)
!3404 = !DILocalVariable(name: "iter", scope: !3396, file: !3, line: 562, type: !976)
!3405 = !DILocation(line: 558, column: 21, scope: !3396)
!3406 = !DILocation(line: 558, column: 46, scope: !3396)
!3407 = !DILocation(line: 559, column: 10, scope: !3396)
!3408 = !DILocation(line: 560, column: 9, scope: !3396)
!3409 = !DILocation(line: 562, column: 2, scope: !3396)
!3410 = !DILocation(line: 562, column: 20, scope: !3396)
!3411 = !DILocation(line: 564, column: 7, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3396, file: !3, line: 564, column: 6)
!3413 = !DILocation(line: 564, column: 6, scope: !3396)
!3414 = !DILocation(line: 565, column: 3, scope: !3412)
!3415 = !DILocation(line: 566, column: 14, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !3396, file: !3, line: 566, column: 2)
!3417 = !DILocation(line: 566, column: 12, scope: !3416)
!3418 = !DILocation(line: 566, column: 7, scope: !3416)
!3419 = !DILocation(line: 566, column: 21, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !3416, file: !3, line: 566, column: 2)
!3421 = !DILocation(line: 566, column: 28, scope: !3420)
!3422 = !DILocation(line: 566, column: 26, scope: !3420)
!3423 = !DILocation(line: 566, column: 2, scope: !3416)
!3424 = !DILocation(line: 567, column: 3, scope: !3420)
!3425 = !DILocation(line: 567, column: 28, scope: !3420)
!3426 = !DILocation(line: 567, column: 7, scope: !3420)
!3427 = !DILocation(line: 567, column: 35, scope: !3420)
!3428 = !DILocation(line: 566, column: 37, scope: !3420)
!3429 = !DILocation(line: 566, column: 2, scope: !3420)
!3430 = distinct !{!3430, !3423, !3431, !2740, !2741}
!3431 = !DILocation(line: 567, column: 39, scope: !3416)
!3432 = !DILocation(line: 568, column: 1, scope: !3396)
!3433 = distinct !DISubprogram(name: "syscall_regfunc", scope: !3, file: !3, line: 758, type: !886, scopeLine: 759, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3434)
!3434 = !{!3435, !3436, !3437, !3443, !3446}
!3435 = !DILocalVariable(name: "p", scope: !3433, file: !3, line: 760, type: !1137)
!3436 = !DILocalVariable(name: "t", scope: !3433, file: !3, line: 760, type: !1137)
!3437 = !DILocalVariable(name: "__mptr", scope: !3438, file: !3, line: 764, type: !74)
!3438 = distinct !DILexicalBlock(scope: !3439, file: !3, line: 764, column: 3)
!3439 = distinct !DILexicalBlock(scope: !3440, file: !3, line: 764, column: 3)
!3440 = distinct !DILexicalBlock(scope: !3441, file: !3, line: 764, column: 3)
!3441 = distinct !DILexicalBlock(scope: !3442, file: !3, line: 762, column: 32)
!3442 = distinct !DILexicalBlock(scope: !3433, file: !3, line: 762, column: 6)
!3443 = !DILocalVariable(name: "__mptr", scope: !3444, file: !3, line: 764, type: !74)
!3444 = distinct !DILexicalBlock(scope: !3445, file: !3, line: 764, column: 3)
!3445 = distinct !DILexicalBlock(scope: !3439, file: !3, line: 764, column: 3)
!3446 = !DILocalVariable(name: "__mptr", scope: !3447, file: !3, line: 764, type: !74)
!3447 = distinct !DILexicalBlock(scope: !3448, file: !3, line: 764, column: 3)
!3448 = distinct !DILexicalBlock(scope: !3445, file: !3, line: 764, column: 3)
!3449 = !DILocation(line: 760, column: 2, scope: !3433)
!3450 = !DILocation(line: 760, column: 22, scope: !3433)
!3451 = !DILocation(line: 760, column: 26, scope: !3433)
!3452 = !DILocation(line: 762, column: 7, scope: !3442)
!3453 = !DILocation(line: 762, column: 6, scope: !3433)
!3454 = !DILocation(line: 763, column: 3, scope: !3441)
!3455 = !DILocation(line: 764, column: 3, scope: !3440)
!3456 = !DILocation(line: 764, column: 3, scope: !3438)
!3457 = !DILocation(line: 764, column: 3, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3438, file: !3, line: 764, column: 3)
!3459 = !DILocation(line: 764, column: 3, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3458, file: !3, line: 764, column: 3)
!3461 = !DILocation(line: 764, column: 3, scope: !3439)
!3462 = !DILocation(line: 764, column: 3, scope: !3444)
!3463 = !DILocation(line: 764, column: 3, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3444, file: !3, line: 764, column: 3)
!3465 = !DILocation(line: 764, column: 3, scope: !3466)
!3466 = distinct !DILexicalBlock(scope: !3464, file: !3, line: 764, column: 3)
!3467 = !DILocation(line: 764, column: 3, scope: !3445)
!3468 = !DILocation(line: 764, column: 3, scope: !3448)
!3469 = !DILocation(line: 765, column: 4, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3448, file: !3, line: 764, column: 33)
!3471 = !DILocation(line: 766, column: 3, scope: !3470)
!3472 = !DILocation(line: 764, column: 3, scope: !3447)
!3473 = !DILocation(line: 764, column: 3, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !3447, file: !3, line: 764, column: 3)
!3475 = !DILocation(line: 764, column: 3, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !3474, file: !3, line: 764, column: 3)
!3477 = distinct !{!3477, !3467, !3478, !2740, !2741}
!3478 = !DILocation(line: 766, column: 3, scope: !3445)
!3479 = distinct !{!3479, !3455, !3480, !2740, !2741}
!3480 = !DILocation(line: 766, column: 3, scope: !3440)
!3481 = !DILocation(line: 767, column: 3, scope: !3441)
!3482 = !DILocation(line: 768, column: 2, scope: !3441)
!3483 = !DILocation(line: 769, column: 25, scope: !3433)
!3484 = !DILocation(line: 772, column: 1, scope: !3433)
!3485 = !DILocation(line: 771, column: 2, scope: !3433)
!3486 = !DISubprogram(name: "_raw_read_lock", scope: !3487, file: !3487, line: 18, type: !3488, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3487 = !DIFile(filename: "./include/linux/rwlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "752e3ce6205f1debb08c34677b6a0cdd")
!3488 = !DISubroutineType(types: !3489)
!3489 = !{null, !3490}
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3491, size: 64)
!3491 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3492, line: 34, baseType: !3493)
!3492 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!3493 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3492, line: 25, size: 64, elements: !3494)
!3494 = !{!3495}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3493, file: !3492, line: 26, baseType: !3496, size: 64)
!3496 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !3497, line: 27, baseType: !3498)
!3497 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!3498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !3497, line: 13, size: 64, elements: !3499)
!3499 = !{!3500, !3510}
!3500 = !DIDerivedType(tag: DW_TAG_member, scope: !3498, file: !3497, line: 14, baseType: !3501, size: 32)
!3501 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3498, file: !3497, line: 14, size: 32, elements: !3502)
!3502 = !{!3503, !3504}
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !3501, file: !3497, line: 15, baseType: !136, size: 32)
!3504 = !DIDerivedType(tag: DW_TAG_member, scope: !3501, file: !3497, line: 16, baseType: !3505, size: 32)
!3505 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3501, file: !3497, line: 16, size: 32, elements: !3506)
!3506 = !{!3507, !3508}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !3505, file: !3497, line: 18, baseType: !145, size: 8)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !3505, file: !3497, line: 19, baseType: !3509, size: 24, offset: 8)
!3509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 24, elements: !188)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !3498, file: !3497, line: 26, baseType: !128, size: 32, offset: 32)
!3511 = distinct !DISubprogram(name: "set_bit", scope: !3512, file: !3512, line: 26, type: !3513, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3517)
!3512 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!3513 = !DISubroutineType(types: !3514)
!3514 = !{null, !223, !3515}
!3515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3516, size: 64)
!3516 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !237)
!3517 = !{!3518, !3519}
!3518 = !DILocalVariable(name: "nr", arg: 1, scope: !3511, file: !3512, line: 26, type: !223)
!3519 = !DILocalVariable(name: "addr", arg: 2, scope: !3511, file: !3512, line: 26, type: !3515)
!3520 = !DILocation(line: 26, column: 42, scope: !3511)
!3521 = !DILocation(line: 26, column: 70, scope: !3511)
!3522 = !DILocation(line: 28, column: 26, scope: !3511)
!3523 = !DILocation(line: 28, column: 33, scope: !3511)
!3524 = !DILocation(line: 28, column: 31, scope: !3511)
!3525 = !DILocation(line: 28, column: 2, scope: !3511)
!3526 = !DILocation(line: 29, column: 15, scope: !3511)
!3527 = !DILocation(line: 29, column: 19, scope: !3511)
!3528 = !DILocation(line: 29, column: 2, scope: !3511)
!3529 = !DILocation(line: 30, column: 1, scope: !3511)
!3530 = !DISubprogram(name: "_raw_read_unlock", scope: !3487, file: !3487, line: 31, type: !3488, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3531 = distinct !DISubprogram(name: "syscall_unregfunc", scope: !3, file: !3, line: 774, type: !1131, scopeLine: 775, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3532)
!3532 = !{!3533, !3534, !3535, !3541, !3544}
!3533 = !DILocalVariable(name: "p", scope: !3531, file: !3, line: 776, type: !1137)
!3534 = !DILocalVariable(name: "t", scope: !3531, file: !3, line: 776, type: !1137)
!3535 = !DILocalVariable(name: "__mptr", scope: !3536, file: !3, line: 781, type: !74)
!3536 = distinct !DILexicalBlock(scope: !3537, file: !3, line: 781, column: 3)
!3537 = distinct !DILexicalBlock(scope: !3538, file: !3, line: 781, column: 3)
!3538 = distinct !DILexicalBlock(scope: !3539, file: !3, line: 781, column: 3)
!3539 = distinct !DILexicalBlock(scope: !3540, file: !3, line: 779, column: 32)
!3540 = distinct !DILexicalBlock(scope: !3531, file: !3, line: 779, column: 6)
!3541 = !DILocalVariable(name: "__mptr", scope: !3542, file: !3, line: 781, type: !74)
!3542 = distinct !DILexicalBlock(scope: !3543, file: !3, line: 781, column: 3)
!3543 = distinct !DILexicalBlock(scope: !3537, file: !3, line: 781, column: 3)
!3544 = !DILocalVariable(name: "__mptr", scope: !3545, file: !3, line: 781, type: !74)
!3545 = distinct !DILexicalBlock(scope: !3546, file: !3, line: 781, column: 3)
!3546 = distinct !DILexicalBlock(scope: !3543, file: !3, line: 781, column: 3)
!3547 = !DILocation(line: 776, column: 2, scope: !3531)
!3548 = !DILocation(line: 776, column: 22, scope: !3531)
!3549 = !DILocation(line: 776, column: 26, scope: !3531)
!3550 = !DILocation(line: 778, column: 25, scope: !3531)
!3551 = !DILocation(line: 779, column: 7, scope: !3540)
!3552 = !DILocation(line: 779, column: 6, scope: !3531)
!3553 = !DILocation(line: 780, column: 3, scope: !3539)
!3554 = !DILocation(line: 781, column: 3, scope: !3538)
!3555 = !DILocation(line: 781, column: 3, scope: !3536)
!3556 = !DILocation(line: 781, column: 3, scope: !3557)
!3557 = distinct !DILexicalBlock(scope: !3536, file: !3, line: 781, column: 3)
!3558 = !DILocation(line: 781, column: 3, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !3557, file: !3, line: 781, column: 3)
!3560 = !DILocation(line: 781, column: 3, scope: !3537)
!3561 = !DILocation(line: 781, column: 3, scope: !3542)
!3562 = !DILocation(line: 781, column: 3, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3542, file: !3, line: 781, column: 3)
!3564 = !DILocation(line: 781, column: 3, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3563, file: !3, line: 781, column: 3)
!3566 = !DILocation(line: 781, column: 3, scope: !3543)
!3567 = !DILocation(line: 781, column: 3, scope: !3546)
!3568 = !DILocation(line: 782, column: 4, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !3546, file: !3, line: 781, column: 33)
!3570 = !DILocation(line: 783, column: 3, scope: !3569)
!3571 = !DILocation(line: 781, column: 3, scope: !3545)
!3572 = !DILocation(line: 781, column: 3, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3545, file: !3, line: 781, column: 3)
!3574 = !DILocation(line: 781, column: 3, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3573, file: !3, line: 781, column: 3)
!3576 = distinct !{!3576, !3566, !3577, !2740, !2741}
!3577 = !DILocation(line: 783, column: 3, scope: !3543)
!3578 = distinct !{!3578, !3554, !3579, !2740, !2741}
!3579 = !DILocation(line: 783, column: 3, scope: !3538)
!3580 = !DILocation(line: 784, column: 3, scope: !3539)
!3581 = !DILocation(line: 785, column: 2, scope: !3539)
!3582 = !DILocation(line: 786, column: 1, scope: !3531)
!3583 = distinct !DISubprogram(name: "clear_bit", scope: !3512, file: !3512, line: 39, type: !3513, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3584)
!3584 = !{!3585, !3586}
!3585 = !DILocalVariable(name: "nr", arg: 1, scope: !3583, file: !3512, line: 39, type: !223)
!3586 = !DILocalVariable(name: "addr", arg: 2, scope: !3583, file: !3512, line: 39, type: !3515)
!3587 = !DILocation(line: 39, column: 44, scope: !3583)
!3588 = !DILocation(line: 39, column: 72, scope: !3583)
!3589 = !DILocation(line: 41, column: 26, scope: !3583)
!3590 = !DILocation(line: 41, column: 33, scope: !3583)
!3591 = !DILocation(line: 41, column: 31, scope: !3583)
!3592 = !DILocation(line: 41, column: 2, scope: !3583)
!3593 = !DILocation(line: 42, column: 17, scope: !3583)
!3594 = !DILocation(line: 42, column: 21, scope: !3583)
!3595 = !DILocation(line: 42, column: 2, scope: !3583)
!3596 = !DILocation(line: 43, column: 1, scope: !3583)
!3597 = !DISubprogram(name: "call_rcu", scope: !3598, file: !3598, line: 42, type: !3599, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3598 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!3599 = !DISubroutineType(types: !3600)
!3600 = !{null, !296, !3601}
!3601 = !DIDerivedType(tag: DW_TAG_typedef, name: "rcu_callback_t", file: !81, line: 238, baseType: !298)
!3602 = distinct !DISubprogram(name: "rcu_free_old_probes", scope: !3, file: !3, line: 119, type: !299, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3603)
!3603 = !{!3604}
!3604 = !DILocalVariable(name: "head", arg: 1, scope: !3602, file: !3, line: 119, type: !296)
!3605 = !DILocation(line: 119, column: 50, scope: !3602)
!3606 = !DILocation(line: 121, column: 30, scope: !3602)
!3607 = !DILocation(line: 121, column: 2, scope: !3602)
!3608 = !DILocation(line: 122, column: 1, scope: !3602)
!3609 = !DISubprogram(name: "call_srcu", scope: !3610, file: !3610, line: 54, type: !3611, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3610 = !DIFile(filename: "./include/linux/srcu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f3855d969f2ce3ac707545b2791ec624")
!3611 = !DISubroutineType(types: !3612)
!3612 = !{null, !983, !296, !298}
!3613 = distinct !DISubprogram(name: "srcu_free_old_probes", scope: !3, file: !3, line: 114, type: !299, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3614)
!3614 = !{!3615, !3616}
!3615 = !DILocalVariable(name: "head", arg: 1, scope: !3613, file: !3, line: 114, type: !296)
!3616 = !DILocalVariable(name: "__mptr", scope: !3617, file: !3, line: 116, type: !74)
!3617 = distinct !DILexicalBlock(scope: !3613, file: !3, line: 116, column: 8)
!3618 = !DILocation(line: 114, column: 51, scope: !3613)
!3619 = !DILocation(line: 116, column: 8, scope: !3617)
!3620 = !DILocation(line: 116, column: 8, scope: !3613)
!3621 = !DILocation(line: 116, column: 2, scope: !3613)
!3622 = !DILocation(line: 117, column: 1, scope: !3613)
!3623 = !DISubprogram(name: "kfree", scope: !64, file: !64, line: 227, type: !3624, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3624 = !DISubroutineType(types: !3625)
!3625 = !{null, !465}
!3626 = !DISubprogram(name: "static_key_count", scope: !1091, file: !1091, line: 232, type: !3627, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3627 = !DISubroutineType(types: !3628)
!3628 = !{!140, !2603}
!3629 = distinct !DISubprogram(name: "func_add", scope: !3, file: !3, line: 180, type: !3630, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3633)
!3630 = !DISubroutineType(types: !3631)
!3631 = !{!2615, !3632, !2615, !140}
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!3633 = !{!3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3645}
!3634 = !DILocalVariable(name: "funcs", arg: 1, scope: !3629, file: !3, line: 180, type: !3632)
!3635 = !DILocalVariable(name: "tp_func", arg: 2, scope: !3629, file: !3, line: 180, type: !2615)
!3636 = !DILocalVariable(name: "prio", arg: 3, scope: !3629, file: !3, line: 181, type: !140)
!3637 = !DILocalVariable(name: "old", scope: !3629, file: !3, line: 183, type: !2615)
!3638 = !DILocalVariable(name: "new", scope: !3629, file: !3, line: 183, type: !2615)
!3639 = !DILocalVariable(name: "iter_probes", scope: !3629, file: !3, line: 184, type: !140)
!3640 = !DILocalVariable(name: "nr_probes", scope: !3629, file: !3, line: 185, type: !140)
!3641 = !DILocalVariable(name: "pos", scope: !3629, file: !3, line: 186, type: !140)
!3642 = !DILocalVariable(name: "__ret_warn_on", scope: !3643, file: !3, line: 188, type: !140)
!3643 = distinct !DILexicalBlock(scope: !3644, file: !3, line: 188, column: 6)
!3644 = distinct !DILexicalBlock(scope: !3629, file: !3, line: 188, column: 6)
!3645 = !DILocalVariable(name: "__flags", scope: !3646, file: !3, line: 188, type: !140)
!3646 = distinct !DILexicalBlock(scope: !3647, file: !3, line: 188, column: 6)
!3647 = distinct !DILexicalBlock(scope: !3643, file: !3, line: 188, column: 6)
!3648 = !DILocation(line: 180, column: 35, scope: !3629)
!3649 = !DILocation(line: 180, column: 66, scope: !3629)
!3650 = !DILocation(line: 181, column: 7, scope: !3629)
!3651 = !DILocation(line: 183, column: 2, scope: !3629)
!3652 = !DILocation(line: 183, column: 26, scope: !3629)
!3653 = !DILocation(line: 183, column: 32, scope: !3629)
!3654 = !DILocation(line: 184, column: 2, scope: !3629)
!3655 = !DILocation(line: 184, column: 6, scope: !3629)
!3656 = !DILocation(line: 185, column: 2, scope: !3629)
!3657 = !DILocation(line: 185, column: 6, scope: !3629)
!3658 = !DILocation(line: 186, column: 2, scope: !3629)
!3659 = !DILocation(line: 186, column: 6, scope: !3629)
!3660 = !DILocation(line: 188, column: 6, scope: !3643)
!3661 = !DILocation(line: 188, column: 6, scope: !3647)
!3662 = !DILocation(line: 188, column: 6, scope: !3646)
!3663 = !DILocation(line: 188, column: 6, scope: !3664)
!3664 = distinct !DILexicalBlock(scope: !3646, file: !3, line: 188, column: 6)
!3665 = !DILocation(line: 188, column: 6, scope: !3666)
!3666 = distinct !DILexicalBlock(scope: !3646, file: !3, line: 188, column: 6)
!3667 = !{i64 2153541387, i64 2153541416, i64 2153541462, i64 2153541520, i64 2153541574, i64 2153541628, i64 2153541683, i64 2153541714, i64 2153542022, i64 2153542028, i64 2153542075, i64 2153542098, i64 2153542124}
!3668 = !DILocation(line: 188, column: 6, scope: !3669)
!3669 = distinct !DILexicalBlock(scope: !3646, file: !3, line: 188, column: 6)
!3670 = !DILocation(line: 188, column: 6, scope: !3644)
!3671 = !DILocation(line: 188, column: 6, scope: !3629)
!3672 = !DILocation(line: 189, column: 10, scope: !3644)
!3673 = !DILocation(line: 189, column: 3, scope: !3644)
!3674 = !DILocation(line: 191, column: 22, scope: !3629)
!3675 = !DILocation(line: 191, column: 21, scope: !3629)
!3676 = !DILocation(line: 191, column: 2, scope: !3629)
!3677 = !DILocation(line: 192, column: 9, scope: !3629)
!3678 = !DILocation(line: 192, column: 8, scope: !3629)
!3679 = !DILocation(line: 192, column: 6, scope: !3629)
!3680 = !DILocation(line: 193, column: 6, scope: !3681)
!3681 = distinct !DILexicalBlock(scope: !3629, file: !3, line: 193, column: 6)
!3682 = !DILocation(line: 193, column: 6, scope: !3629)
!3683 = !DILocation(line: 195, column: 20, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !3685, file: !3, line: 195, column: 3)
!3685 = distinct !DILexicalBlock(scope: !3681, file: !3, line: 193, column: 11)
!3686 = !DILocation(line: 195, column: 8, scope: !3684)
!3687 = !DILocation(line: 195, column: 25, scope: !3688)
!3688 = distinct !DILexicalBlock(scope: !3684, file: !3, line: 195, column: 3)
!3689 = !DILocation(line: 195, column: 29, scope: !3688)
!3690 = !DILocation(line: 195, column: 42, scope: !3688)
!3691 = !DILocation(line: 195, column: 3, scope: !3684)
!3692 = !DILocation(line: 196, column: 8, scope: !3693)
!3693 = distinct !DILexicalBlock(scope: !3694, file: !3, line: 196, column: 8)
!3694 = distinct !DILexicalBlock(scope: !3688, file: !3, line: 195, column: 63)
!3695 = !DILocation(line: 196, column: 12, scope: !3693)
!3696 = !DILocation(line: 196, column: 25, scope: !3693)
!3697 = !DILocation(line: 196, column: 30, scope: !3693)
!3698 = !DILocation(line: 196, column: 8, scope: !3694)
!3699 = !DILocation(line: 197, column: 5, scope: !3693)
!3700 = !DILocation(line: 198, column: 8, scope: !3701)
!3701 = distinct !DILexicalBlock(scope: !3694, file: !3, line: 198, column: 8)
!3702 = !DILocation(line: 198, column: 12, scope: !3701)
!3703 = !DILocation(line: 198, column: 25, scope: !3701)
!3704 = !DILocation(line: 198, column: 33, scope: !3701)
!3705 = !DILocation(line: 198, column: 42, scope: !3701)
!3706 = !DILocation(line: 198, column: 30, scope: !3701)
!3707 = !DILocation(line: 198, column: 47, scope: !3701)
!3708 = !DILocation(line: 199, column: 8, scope: !3701)
!3709 = !DILocation(line: 199, column: 12, scope: !3701)
!3710 = !DILocation(line: 199, column: 25, scope: !3701)
!3711 = !DILocation(line: 199, column: 33, scope: !3701)
!3712 = !DILocation(line: 199, column: 42, scope: !3701)
!3713 = !DILocation(line: 199, column: 30, scope: !3701)
!3714 = !DILocation(line: 198, column: 8, scope: !3694)
!3715 = !DILocation(line: 200, column: 12, scope: !3701)
!3716 = !DILocation(line: 200, column: 5, scope: !3701)
!3717 = !DILocation(line: 201, column: 13, scope: !3694)
!3718 = !DILocation(line: 202, column: 3, scope: !3694)
!3719 = !DILocation(line: 195, column: 59, scope: !3688)
!3720 = !DILocation(line: 195, column: 3, scope: !3688)
!3721 = distinct !{!3721, !3691, !3722, !2740, !2741}
!3722 = !DILocation(line: 202, column: 3, scope: !3684)
!3723 = !DILocation(line: 203, column: 2, scope: !3685)
!3724 = !DILocation(line: 205, column: 24, scope: !3629)
!3725 = !DILocation(line: 205, column: 34, scope: !3629)
!3726 = !DILocation(line: 205, column: 8, scope: !3629)
!3727 = !DILocation(line: 205, column: 6, scope: !3629)
!3728 = !DILocation(line: 206, column: 6, scope: !3729)
!3729 = distinct !DILexicalBlock(scope: !3629, file: !3, line: 206, column: 6)
!3730 = !DILocation(line: 206, column: 10, scope: !3729)
!3731 = !DILocation(line: 206, column: 6, scope: !3629)
!3732 = !DILocation(line: 207, column: 10, scope: !3729)
!3733 = !DILocation(line: 207, column: 3, scope: !3729)
!3734 = !DILocation(line: 208, column: 6, scope: !3735)
!3735 = distinct !DILexicalBlock(scope: !3629, file: !3, line: 208, column: 6)
!3736 = !DILocation(line: 208, column: 6, scope: !3629)
!3737 = !DILocation(line: 209, column: 13, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3735, file: !3, line: 208, column: 11)
!3739 = !DILocation(line: 210, column: 20, scope: !3740)
!3740 = distinct !DILexicalBlock(scope: !3738, file: !3, line: 210, column: 3)
!3741 = !DILocation(line: 210, column: 8, scope: !3740)
!3742 = !DILocation(line: 210, column: 25, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !3740, file: !3, line: 210, column: 3)
!3744 = !DILocation(line: 210, column: 29, scope: !3743)
!3745 = !DILocation(line: 210, column: 42, scope: !3743)
!3746 = !DILocation(line: 210, column: 3, scope: !3740)
!3747 = !DILocation(line: 211, column: 8, scope: !3748)
!3748 = distinct !DILexicalBlock(scope: !3749, file: !3, line: 211, column: 8)
!3749 = distinct !DILexicalBlock(scope: !3743, file: !3, line: 210, column: 63)
!3750 = !DILocation(line: 211, column: 12, scope: !3748)
!3751 = !DILocation(line: 211, column: 25, scope: !3748)
!3752 = !DILocation(line: 211, column: 30, scope: !3748)
!3753 = !DILocation(line: 211, column: 8, scope: !3749)
!3754 = !DILocation(line: 212, column: 5, scope: !3748)
!3755 = !DILocation(line: 214, column: 8, scope: !3756)
!3756 = distinct !DILexicalBlock(scope: !3749, file: !3, line: 214, column: 8)
!3757 = !DILocation(line: 214, column: 12, scope: !3756)
!3758 = !DILocation(line: 214, column: 16, scope: !3756)
!3759 = !DILocation(line: 214, column: 19, scope: !3756)
!3760 = !DILocation(line: 214, column: 23, scope: !3756)
!3761 = !DILocation(line: 214, column: 36, scope: !3756)
!3762 = !DILocation(line: 214, column: 43, scope: !3756)
!3763 = !DILocation(line: 214, column: 41, scope: !3756)
!3764 = !DILocation(line: 214, column: 8, scope: !3749)
!3765 = !DILocation(line: 215, column: 20, scope: !3756)
!3766 = !DILocation(line: 215, column: 9, scope: !3756)
!3767 = !DILocation(line: 215, column: 5, scope: !3756)
!3768 = !DILocation(line: 216, column: 4, scope: !3749)
!3769 = !DILocation(line: 216, column: 17, scope: !3749)
!3770 = !DILocation(line: 216, column: 23, scope: !3749)
!3771 = !DILocation(line: 216, column: 27, scope: !3749)
!3772 = !DILocation(line: 217, column: 3, scope: !3749)
!3773 = !DILocation(line: 210, column: 59, scope: !3743)
!3774 = !DILocation(line: 210, column: 3, scope: !3743)
!3775 = distinct !{!3775, !3746, !3776, !2740, !2741}
!3776 = !DILocation(line: 217, column: 3, scope: !3740)
!3777 = !DILocation(line: 218, column: 7, scope: !3778)
!3778 = distinct !DILexicalBlock(scope: !3738, file: !3, line: 218, column: 7)
!3779 = !DILocation(line: 218, column: 11, scope: !3778)
!3780 = !DILocation(line: 218, column: 7, scope: !3738)
!3781 = !DILocation(line: 219, column: 19, scope: !3778)
!3782 = !DILocation(line: 219, column: 8, scope: !3778)
!3783 = !DILocation(line: 219, column: 4, scope: !3778)
!3784 = !DILocation(line: 221, column: 2, scope: !3738)
!3785 = !DILocation(line: 222, column: 7, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3735, file: !3, line: 221, column: 9)
!3787 = !DILocation(line: 223, column: 13, scope: !3786)
!3788 = !DILocation(line: 225, column: 2, scope: !3629)
!3789 = !DILocation(line: 225, column: 6, scope: !3629)
!3790 = !DILocation(line: 225, column: 14, scope: !3629)
!3791 = !DILocation(line: 225, column: 13, scope: !3629)
!3792 = !DILocation(line: 226, column: 2, scope: !3629)
!3793 = !DILocation(line: 226, column: 6, scope: !3629)
!3794 = !DILocation(line: 226, column: 17, scope: !3629)
!3795 = !DILocation(line: 226, column: 22, scope: !3629)
!3796 = !DILocation(line: 227, column: 11, scope: !3629)
!3797 = !DILocation(line: 227, column: 3, scope: !3629)
!3798 = !DILocation(line: 227, column: 9, scope: !3629)
!3799 = !DILocation(line: 228, column: 22, scope: !3629)
!3800 = !DILocation(line: 228, column: 21, scope: !3629)
!3801 = !DILocation(line: 228, column: 2, scope: !3629)
!3802 = !DILocation(line: 229, column: 9, scope: !3629)
!3803 = !DILocation(line: 229, column: 2, scope: !3629)
!3804 = !DILocation(line: 230, column: 1, scope: !3629)
!3805 = distinct !DISubprogram(name: "IS_ERR", scope: !3806, file: !3806, line: 59, type: !3807, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3809)
!3806 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!543, !465}
!3809 = !{!3810}
!3810 = !DILocalVariable(name: "ptr", arg: 1, scope: !3805, file: !3806, line: 59, type: !465)
!3811 = !DILocation(line: 59, column: 60, scope: !3805)
!3812 = !DILocation(line: 61, column: 9, scope: !3805)
!3813 = !DILocation(line: 61, column: 2, scope: !3805)
!3814 = distinct !DISubprogram(name: "PTR_ERR", scope: !3806, file: !3806, line: 49, type: !3815, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3817)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{!223, !465}
!3817 = !{!3818}
!3818 = !DILocalVariable(name: "ptr", arg: 1, scope: !3814, file: !3806, line: 49, type: !465)
!3819 = !DILocation(line: 49, column: 61, scope: !3814)
!3820 = !DILocation(line: 51, column: 16, scope: !3814)
!3821 = !DILocation(line: 51, column: 9, scope: !3814)
!3822 = !DILocation(line: 51, column: 2, scope: !3814)
!3823 = distinct !DISubprogram(name: "nr_func_state", scope: !3, file: !3, line: 297, type: !3824, scopeLine: 298, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3828)
!3824 = !DISubroutineType(types: !3825)
!3825 = !{!52, !3826}
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2598)
!3828 = !{!3829}
!3829 = !DILocalVariable(name: "tp_funcs", arg: 1, scope: !3823, file: !3, line: 297, type: !3826)
!3830 = !DILocation(line: 297, column: 71, scope: !3823)
!3831 = !DILocation(line: 299, column: 7, scope: !3832)
!3832 = distinct !DILexicalBlock(scope: !3823, file: !3, line: 299, column: 6)
!3833 = !DILocation(line: 299, column: 6, scope: !3823)
!3834 = !DILocation(line: 300, column: 3, scope: !3832)
!3835 = !DILocation(line: 301, column: 7, scope: !3836)
!3836 = distinct !DILexicalBlock(scope: !3823, file: !3, line: 301, column: 6)
!3837 = !DILocation(line: 301, column: 19, scope: !3836)
!3838 = !DILocation(line: 301, column: 6, scope: !3823)
!3839 = !DILocation(line: 302, column: 3, scope: !3836)
!3840 = !DILocation(line: 303, column: 7, scope: !3841)
!3841 = distinct !DILexicalBlock(scope: !3823, file: !3, line: 303, column: 6)
!3842 = !DILocation(line: 303, column: 19, scope: !3841)
!3843 = !DILocation(line: 303, column: 6, scope: !3823)
!3844 = !DILocation(line: 304, column: 3, scope: !3841)
!3845 = !DILocation(line: 305, column: 2, scope: !3823)
!3846 = !DILocation(line: 306, column: 1, scope: !3823)
!3847 = distinct !DISubprogram(name: "tp_rcu_cond_sync", scope: !3, file: !3, line: 57, type: !3848, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3850)
!3848 = !DISubroutineType(types: !3849)
!3849 = !{null, !58}
!3850 = !{!3851, !3852}
!3851 = !DILocalVariable(name: "sync", arg: 1, scope: !3847, file: !3, line: 57, type: !58)
!3852 = !DILocalVariable(name: "snapshot", scope: !3847, file: !3, line: 59, type: !3853)
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!3854 = !DILocation(line: 57, column: 54, scope: !3847)
!3855 = !DILocation(line: 59, column: 2, scope: !3847)
!3856 = !DILocation(line: 59, column: 33, scope: !3847)
!3857 = !DILocation(line: 59, column: 68, scope: !3847)
!3858 = !DILocation(line: 59, column: 45, scope: !3847)
!3859 = !DILocation(line: 61, column: 7, scope: !3860)
!3860 = distinct !DILexicalBlock(scope: !3847, file: !3, line: 61, column: 6)
!3861 = !DILocation(line: 61, column: 17, scope: !3860)
!3862 = !DILocation(line: 61, column: 6, scope: !3847)
!3863 = !DILocation(line: 62, column: 3, scope: !3860)
!3864 = !DILocation(line: 63, column: 23, scope: !3847)
!3865 = !DILocation(line: 63, column: 33, scope: !3847)
!3866 = !DILocation(line: 63, column: 2, scope: !3847)
!3867 = !DILocation(line: 64, column: 53, scope: !3868)
!3868 = distinct !DILexicalBlock(scope: !3847, file: !3, line: 64, column: 6)
!3869 = !DILocation(line: 64, column: 63, scope: !3868)
!3870 = !DILocation(line: 64, column: 7, scope: !3868)
!3871 = !DILocation(line: 64, column: 6, scope: !3847)
!3872 = !DILocation(line: 65, column: 3, scope: !3868)
!3873 = !DILocation(line: 66, column: 2, scope: !3847)
!3874 = !DILocation(line: 66, column: 12, scope: !3847)
!3875 = !DILocation(line: 66, column: 20, scope: !3847)
!3876 = !DILocation(line: 67, column: 1, scope: !3847)
!3877 = distinct !DISubprogram(name: "tracepoint_update_call", scope: !3, file: !3, line: 308, type: !3878, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3880)
!3878 = !DISubroutineType(types: !3879)
!3879 = !{null, !2747, !2615}
!3880 = !{!3881, !3882, !3883}
!3881 = !DILocalVariable(name: "tp", arg: 1, scope: !3877, file: !3, line: 308, type: !2747)
!3882 = !DILocalVariable(name: "tp_funcs", arg: 2, scope: !3877, file: !3, line: 308, type: !2615)
!3883 = !DILocalVariable(name: "func", scope: !3877, file: !3, line: 310, type: !74)
!3884 = !DILocation(line: 308, column: 55, scope: !3877)
!3885 = !DILocation(line: 308, column: 83, scope: !3877)
!3886 = !DILocation(line: 310, column: 2, scope: !3877)
!3887 = !DILocation(line: 310, column: 8, scope: !3877)
!3888 = !DILocation(line: 310, column: 15, scope: !3877)
!3889 = !DILocation(line: 310, column: 19, scope: !3877)
!3890 = !DILocation(line: 313, column: 7, scope: !3891)
!3891 = distinct !DILexicalBlock(scope: !3877, file: !3, line: 313, column: 6)
!3892 = !DILocation(line: 313, column: 11, scope: !3891)
!3893 = !DILocation(line: 313, column: 6, scope: !3877)
!3894 = !DILocation(line: 314, column: 3, scope: !3891)
!3895 = !DILocation(line: 315, column: 20, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3877, file: !3, line: 315, column: 6)
!3897 = !DILocation(line: 315, column: 6, scope: !3896)
!3898 = !DILocation(line: 315, column: 30, scope: !3896)
!3899 = !DILocation(line: 315, column: 6, scope: !3877)
!3900 = !DILocation(line: 316, column: 10, scope: !3896)
!3901 = !DILocation(line: 316, column: 22, scope: !3896)
!3902 = !DILocation(line: 316, column: 8, scope: !3896)
!3903 = !DILocation(line: 316, column: 3, scope: !3896)
!3904 = !DILocation(line: 317, column: 23, scope: !3877)
!3905 = !DILocation(line: 317, column: 27, scope: !3877)
!3906 = !DILocation(line: 317, column: 44, scope: !3877)
!3907 = !DILocation(line: 317, column: 48, scope: !3877)
!3908 = !DILocation(line: 317, column: 67, scope: !3877)
!3909 = !DILocation(line: 317, column: 2, scope: !3877)
!3910 = !DILocation(line: 318, column: 1, scope: !3877)
!3911 = !DISubprogram(name: "static_key_enable", scope: !1091, file: !1091, line: 233, type: !3912, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3912 = !DISubroutineType(types: !3913)
!3913 = !{null, !2603}
!3914 = distinct !DISubprogram(name: "tp_rcu_get_state", scope: !3, file: !3, line: 47, type: !3848, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3915)
!3915 = !{!3916, !3917}
!3916 = !DILocalVariable(name: "sync", arg: 1, scope: !3914, file: !3, line: 47, type: !58)
!3917 = !DILocalVariable(name: "snapshot", scope: !3914, file: !3, line: 49, type: !3853)
!3918 = !DILocation(line: 47, column: 54, scope: !3914)
!3919 = !DILocation(line: 49, column: 2, scope: !3914)
!3920 = !DILocation(line: 49, column: 33, scope: !3914)
!3921 = !DILocation(line: 49, column: 68, scope: !3914)
!3922 = !DILocation(line: 49, column: 45, scope: !3914)
!3923 = !DILocation(line: 52, column: 18, scope: !3914)
!3924 = !DILocation(line: 52, column: 2, scope: !3914)
!3925 = !DILocation(line: 52, column: 12, scope: !3914)
!3926 = !DILocation(line: 52, column: 16, scope: !3914)
!3927 = !DILocation(line: 53, column: 19, scope: !3914)
!3928 = !DILocation(line: 53, column: 2, scope: !3914)
!3929 = !DILocation(line: 53, column: 12, scope: !3914)
!3930 = !DILocation(line: 53, column: 17, scope: !3914)
!3931 = !DILocation(line: 54, column: 2, scope: !3914)
!3932 = !DILocation(line: 54, column: 12, scope: !3914)
!3933 = !DILocation(line: 54, column: 20, scope: !3914)
!3934 = !DILocation(line: 55, column: 1, scope: !3914)
!3935 = distinct !DISubprogram(name: "release_probes", scope: !3, file: !3, line: 142, type: !3936, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3938)
!3936 = !DISubroutineType(types: !3937)
!3937 = !{null, !2615}
!3938 = !{!3939, !3940, !3943}
!3939 = !DILocalVariable(name: "old", arg: 1, scope: !3935, file: !3, line: 142, type: !2615)
!3940 = !DILocalVariable(name: "tp_probes", scope: !3941, file: !3, line: 145, type: !2592)
!3941 = distinct !DILexicalBlock(scope: !3942, file: !3, line: 144, column: 11)
!3942 = distinct !DILexicalBlock(scope: !3935, file: !3, line: 144, column: 6)
!3943 = !DILocalVariable(name: "__mptr", scope: !3944, file: !3, line: 145, type: !74)
!3944 = distinct !DILexicalBlock(scope: !3941, file: !3, line: 145, column: 33)
!3945 = !DILocation(line: 142, column: 59, scope: !3935)
!3946 = !DILocation(line: 144, column: 6, scope: !3942)
!3947 = !DILocation(line: 144, column: 6, scope: !3935)
!3948 = !DILocation(line: 145, column: 3, scope: !3941)
!3949 = !DILocation(line: 145, column: 21, scope: !3941)
!3950 = !DILocation(line: 145, column: 33, scope: !3944)
!3951 = !DILocation(line: 145, column: 33, scope: !3941)
!3952 = !DILocation(line: 152, column: 7, scope: !3953)
!3953 = distinct !DILexicalBlock(scope: !3941, file: !3, line: 152, column: 7)
!3954 = !DILocation(line: 152, column: 7, scope: !3941)
!3955 = !DILocation(line: 153, column: 26, scope: !3956)
!3956 = distinct !DILexicalBlock(scope: !3953, file: !3, line: 152, column: 42)
!3957 = !DILocation(line: 153, column: 4, scope: !3956)
!3958 = !DILocation(line: 153, column: 15, scope: !3956)
!3959 = !DILocation(line: 153, column: 19, scope: !3956)
!3960 = !DILocation(line: 153, column: 24, scope: !3956)
!3961 = !DILocation(line: 154, column: 20, scope: !3956)
!3962 = !DILocation(line: 154, column: 31, scope: !3956)
!3963 = !DILocation(line: 154, column: 17, scope: !3956)
!3964 = !DILocation(line: 155, column: 4, scope: !3956)
!3965 = !DILocation(line: 164, column: 13, scope: !3941)
!3966 = !DILocation(line: 164, column: 24, scope: !3941)
!3967 = !DILocation(line: 164, column: 3, scope: !3941)
!3968 = !DILocation(line: 165, column: 2, scope: !3942)
!3969 = !DILocation(line: 165, column: 2, scope: !3941)
!3970 = !DILocation(line: 166, column: 1, scope: !3935)
!3971 = distinct !DISubprogram(name: "ERR_PTR", scope: !3806, file: !3806, line: 39, type: !3972, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3974)
!3972 = !DISubroutineType(types: !3973)
!3973 = !{!74, !223}
!3974 = !{!3975}
!3975 = !DILocalVariable(name: "error", arg: 1, scope: !3971, file: !3806, line: 39, type: !223)
!3976 = !DILocation(line: 39, column: 48, scope: !3971)
!3977 = !DILocation(line: 41, column: 18, scope: !3971)
!3978 = !DILocation(line: 41, column: 9, scope: !3971)
!3979 = !DILocation(line: 41, column: 2, scope: !3971)
!3980 = distinct !DISubprogram(name: "debug_print_probes", scope: !3, file: !3, line: 168, type: !3936, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3981)
!3981 = !{!3982, !3983}
!3982 = !DILocalVariable(name: "funcs", arg: 1, scope: !3980, file: !3, line: 168, type: !2615)
!3983 = !DILocalVariable(name: "i", scope: !3980, file: !3, line: 170, type: !140)
!3984 = !DILocation(line: 168, column: 56, scope: !3980)
!3985 = !DILocation(line: 170, column: 2, scope: !3980)
!3986 = !DILocation(line: 170, column: 6, scope: !3980)
!3987 = !DILocation(line: 172, column: 7, scope: !3988)
!3988 = distinct !DILexicalBlock(scope: !3980, file: !3, line: 172, column: 6)
!3989 = !DILocation(line: 172, column: 24, scope: !3988)
!3990 = !DILocation(line: 172, column: 28, scope: !3988)
!3991 = !DILocation(line: 172, column: 6, scope: !3980)
!3992 = !DILocation(line: 173, column: 3, scope: !3988)
!3993 = !DILocation(line: 175, column: 9, scope: !3994)
!3994 = distinct !DILexicalBlock(scope: !3980, file: !3, line: 175, column: 2)
!3995 = !DILocation(line: 175, column: 7, scope: !3994)
!3996 = !DILocation(line: 175, column: 14, scope: !3997)
!3997 = distinct !DILexicalBlock(scope: !3994, file: !3, line: 175, column: 2)
!3998 = !DILocation(line: 175, column: 20, scope: !3997)
!3999 = !DILocation(line: 175, column: 23, scope: !3997)
!4000 = !DILocation(line: 175, column: 2, scope: !3994)
!4001 = !DILocation(line: 176, column: 3, scope: !4002)
!4002 = distinct !DILexicalBlock(scope: !3997, file: !3, line: 176, column: 3)
!4003 = !DILocation(line: 176, column: 3, scope: !4004)
!4004 = distinct !DILexicalBlock(scope: !4002, file: !3, line: 176, column: 3)
!4005 = !DILocation(line: 176, column: 3, scope: !3997)
!4006 = !DILocation(line: 175, column: 30, scope: !3997)
!4007 = !DILocation(line: 175, column: 2, scope: !3997)
!4008 = distinct !{!4008, !4000, !4009, !2740, !2741}
!4009 = !DILocation(line: 176, column: 3, scope: !3994)
!4010 = !DILocation(line: 177, column: 1, scope: !3980)
!4011 = distinct !DISubprogram(name: "tp_stub_func", scope: !3, file: !3, line: 102, type: !1131, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4012 = !DILocation(line: 104, column: 2, scope: !4011)
!4013 = distinct !DISubprogram(name: "allocate_probes", scope: !3, file: !3, line: 107, type: !4014, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4016)
!4014 = !DISubroutineType(types: !4015)
!4015 = !{!74, !140}
!4016 = !{!4017, !4018}
!4017 = !DILocalVariable(name: "count", arg: 1, scope: !4013, file: !3, line: 107, type: !140)
!4018 = !DILocalVariable(name: "p", scope: !4013, file: !3, line: 109, type: !2592)
!4019 = !DILocation(line: 107, column: 41, scope: !4013)
!4020 = !DILocation(line: 109, column: 2, scope: !4013)
!4021 = !DILocation(line: 109, column: 20, scope: !4013)
!4022 = !DILocation(line: 109, column: 33, scope: !4013)
!4023 = !DILocation(line: 109, column: 25, scope: !4013)
!4024 = !DILocation(line: 111, column: 9, scope: !4013)
!4025 = !DILocation(line: 111, column: 11, scope: !4013)
!4026 = !DILocation(line: 111, column: 28, scope: !4013)
!4027 = !DILocation(line: 111, column: 31, scope: !4013)
!4028 = !DILocation(line: 112, column: 1, scope: !4013)
!4029 = !DILocation(line: 111, column: 2, scope: !4013)
!4030 = !DISubprogram(name: "_printk", scope: !4031, file: !4031, line: 153, type: !4032, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4031 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!4032 = !DISubroutineType(types: !4033)
!4033 = !{!140, !105, null}
!4034 = distinct !DISubprogram(name: "kmalloc", scope: !64, file: !64, line: 591, type: !4035, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4037)
!4035 = !DISubroutineType(types: !4036)
!4036 = !{!74, !234, !2619}
!4037 = !{!4038, !4039, !4040}
!4038 = !DILocalVariable(name: "size", arg: 1, scope: !4034, file: !64, line: 591, type: !234)
!4039 = !DILocalVariable(name: "flags", arg: 2, scope: !4034, file: !64, line: 591, type: !2619)
!4040 = !DILocalVariable(name: "index", scope: !4041, file: !64, line: 594, type: !7)
!4041 = distinct !DILexicalBlock(scope: !4042, file: !64, line: 593, column: 42)
!4042 = distinct !DILexicalBlock(scope: !4034, file: !64, line: 593, column: 6)
!4043 = !DILocation(line: 591, column: 61, scope: !4034)
!4044 = !DILocation(line: 591, column: 73, scope: !4034)
!4045 = !DILocation(line: 593, column: 27, scope: !4042)
!4046 = !DILocation(line: 593, column: 6, scope: !4042)
!4047 = !DILocation(line: 593, column: 33, scope: !4042)
!4048 = !DILocation(line: 593, column: 36, scope: !4042)
!4049 = !DILocation(line: 593, column: 6, scope: !4034)
!4050 = !DILocation(line: 594, column: 3, scope: !4041)
!4051 = !DILocation(line: 594, column: 16, scope: !4041)
!4052 = !DILocation(line: 596, column: 7, scope: !4053)
!4053 = distinct !DILexicalBlock(scope: !4041, file: !64, line: 596, column: 7)
!4054 = !DILocation(line: 596, column: 12, scope: !4053)
!4055 = !DILocation(line: 596, column: 7, scope: !4041)
!4056 = !DILocation(line: 597, column: 25, scope: !4053)
!4057 = !DILocation(line: 597, column: 31, scope: !4053)
!4058 = !DILocation(line: 597, column: 11, scope: !4053)
!4059 = !DILocation(line: 597, column: 4, scope: !4053)
!4060 = !DILocation(line: 599, column: 11, scope: !4041)
!4061 = !DILocation(line: 599, column: 9, scope: !4041)
!4062 = !DILocation(line: 601, column: 33, scope: !4041)
!4063 = !DILocation(line: 601, column: 40, scope: !4041)
!4064 = !DILocation(line: 601, column: 20, scope: !4041)
!4065 = !DILocation(line: 601, column: 5, scope: !4041)
!4066 = !DILocation(line: 601, column: 51, scope: !4041)
!4067 = !DILocation(line: 602, column: 5, scope: !4041)
!4068 = !DILocation(line: 602, column: 12, scope: !4041)
!4069 = !DILocation(line: 600, column: 10, scope: !4041)
!4070 = !DILocation(line: 600, column: 3, scope: !4041)
!4071 = !DILocation(line: 603, column: 2, scope: !4042)
!4072 = !DILocation(line: 604, column: 19, scope: !4034)
!4073 = !DILocation(line: 604, column: 25, scope: !4034)
!4074 = !DILocation(line: 604, column: 9, scope: !4034)
!4075 = !DILocation(line: 604, column: 2, scope: !4034)
!4076 = !DILocation(line: 605, column: 1, scope: !4034)
!4077 = distinct !DISubprogram(name: "size_add", scope: !4078, file: !4078, line: 208, type: !4079, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4081)
!4078 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!4079 = !DISubroutineType(types: !4080)
!4080 = !{!234, !234, !234}
!4081 = !{!4082, !4083, !4084}
!4082 = !DILocalVariable(name: "addend1", arg: 1, scope: !4077, file: !4078, line: 208, type: !234)
!4083 = !DILocalVariable(name: "addend2", arg: 2, scope: !4077, file: !4078, line: 208, type: !234)
!4084 = !DILocalVariable(name: "bytes", scope: !4077, file: !4078, line: 210, type: !234)
!4085 = !DILocation(line: 208, column: 51, scope: !4077)
!4086 = !DILocation(line: 208, column: 67, scope: !4077)
!4087 = !DILocation(line: 210, column: 2, scope: !4077)
!4088 = !DILocation(line: 210, column: 9, scope: !4077)
!4089 = !DILocation(line: 212, column: 6, scope: !4090)
!4090 = distinct !DILexicalBlock(scope: !4077, file: !4078, line: 212, column: 6)
!4091 = !DILocation(line: 212, column: 6, scope: !4077)
!4092 = !DILocation(line: 213, column: 3, scope: !4090)
!4093 = !DILocation(line: 215, column: 9, scope: !4077)
!4094 = !DILocation(line: 215, column: 2, scope: !4077)
!4095 = !DILocation(line: 216, column: 1, scope: !4077)
!4096 = distinct !DISubprogram(name: "size_mul", scope: !4078, file: !4078, line: 189, type: !4079, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4097)
!4097 = !{!4098, !4099, !4100}
!4098 = !DILocalVariable(name: "factor1", arg: 1, scope: !4096, file: !4078, line: 189, type: !234)
!4099 = !DILocalVariable(name: "factor2", arg: 2, scope: !4096, file: !4078, line: 189, type: !234)
!4100 = !DILocalVariable(name: "bytes", scope: !4096, file: !4078, line: 191, type: !234)
!4101 = !DILocation(line: 189, column: 51, scope: !4096)
!4102 = !DILocation(line: 189, column: 67, scope: !4096)
!4103 = !DILocation(line: 191, column: 2, scope: !4096)
!4104 = !DILocation(line: 191, column: 9, scope: !4096)
!4105 = !DILocation(line: 193, column: 6, scope: !4106)
!4106 = distinct !DILexicalBlock(scope: !4096, file: !4078, line: 193, column: 6)
!4107 = !DILocation(line: 193, column: 6, scope: !4096)
!4108 = !DILocation(line: 194, column: 3, scope: !4106)
!4109 = !DILocation(line: 196, column: 9, scope: !4096)
!4110 = !DILocation(line: 196, column: 2, scope: !4096)
!4111 = !DILocation(line: 197, column: 1, scope: !4096)
!4112 = !DISubprogram(name: "kmalloc_large", scope: !64, file: !64, line: 531, type: !4035, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4113 = distinct !DISubprogram(name: "__kmalloc_index", scope: !64, file: !64, line: 444, type: !4114, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4116)
!4114 = !DISubroutineType(types: !4115)
!4115 = !{!7, !234, !543}
!4116 = !{!4117, !4118}
!4117 = !DILocalVariable(name: "size", arg: 1, scope: !4113, file: !64, line: 444, type: !234)
!4118 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !4113, file: !64, line: 445, type: !543)
!4119 = !DILocation(line: 444, column: 60, scope: !4113)
!4120 = !DILocation(line: 445, column: 16, scope: !4113)
!4121 = !DILocation(line: 447, column: 7, scope: !4122)
!4122 = distinct !DILexicalBlock(scope: !4113, file: !64, line: 447, column: 6)
!4123 = !DILocation(line: 447, column: 6, scope: !4113)
!4124 = !DILocation(line: 448, column: 3, scope: !4122)
!4125 = !DILocation(line: 450, column: 6, scope: !4126)
!4126 = distinct !DILexicalBlock(scope: !4113, file: !64, line: 450, column: 6)
!4127 = !DILocation(line: 450, column: 11, scope: !4126)
!4128 = !DILocation(line: 450, column: 6, scope: !4113)
!4129 = !DILocation(line: 451, column: 3, scope: !4126)
!4130 = !DILocation(line: 453, column: 32, scope: !4131)
!4131 = distinct !DILexicalBlock(scope: !4113, file: !64, line: 453, column: 6)
!4132 = !DILocation(line: 453, column: 37, scope: !4131)
!4133 = !DILocation(line: 453, column: 42, scope: !4131)
!4134 = !DILocation(line: 453, column: 45, scope: !4131)
!4135 = !DILocation(line: 453, column: 50, scope: !4131)
!4136 = !DILocation(line: 453, column: 6, scope: !4113)
!4137 = !DILocation(line: 454, column: 3, scope: !4131)
!4138 = !DILocation(line: 455, column: 32, scope: !4139)
!4139 = distinct !DILexicalBlock(scope: !4113, file: !64, line: 455, column: 6)
!4140 = !DILocation(line: 455, column: 37, scope: !4139)
!4141 = !DILocation(line: 455, column: 43, scope: !4139)
!4142 = !DILocation(line: 455, column: 46, scope: !4139)
!4143 = !DILocation(line: 455, column: 51, scope: !4139)
!4144 = !DILocation(line: 455, column: 6, scope: !4113)
!4145 = !DILocation(line: 456, column: 3, scope: !4139)
!4146 = !DILocation(line: 457, column: 6, scope: !4147)
!4147 = distinct !DILexicalBlock(scope: !4113, file: !64, line: 457, column: 6)
!4148 = !DILocation(line: 457, column: 11, scope: !4147)
!4149 = !DILocation(line: 457, column: 6, scope: !4113)
!4150 = !DILocation(line: 457, column: 26, scope: !4147)
!4151 = !DILocation(line: 458, column: 6, scope: !4152)
!4152 = distinct !DILexicalBlock(scope: !4113, file: !64, line: 458, column: 6)
!4153 = !DILocation(line: 458, column: 11, scope: !4152)
!4154 = !DILocation(line: 458, column: 6, scope: !4113)
!4155 = !DILocation(line: 458, column: 26, scope: !4152)
!4156 = !DILocation(line: 459, column: 6, scope: !4157)
!4157 = distinct !DILexicalBlock(scope: !4113, file: !64, line: 459, column: 6)
!4158 = !DILocation(line: 459, column: 11, scope: !4157)
!4159 = !DILocation(line: 459, column: 6, scope: !4113)
!4160 = !DILocation(line: 459, column: 26, scope: !4157)
!4161 = !DILocation(line: 460, column: 6, scope: !4162)
!4162 = distinct !DILexicalBlock(scope: !4113, file: !64, line: 460, column: 6)
!4163 = !DILocation(line: 460, column: 11, scope: !4162)
!4164 = !DILocation(line: 460, column: 6, scope: !4113)
!4165 = !DILocation(line: 460, column: 26, scope: !4162)
!4166 = !DILocation(line: 461, column: 6, scope: !4167)
!4167 = distinct !DILexicalBlock(scope: !4113, file: !64, line: 461, column: 6)
!4168 = !DILocation(line: 461, column: 11, scope: !4167)
!4169 = !DILocation(line: 461, column: 6, scope: !4113)
!4170 = !DILocation(line: 461, column: 26, scope: !4167)
!4171 = !DILocation(line: 462, column: 6, scope: !4172)
!4172 = distinct !DILexicalBlock(scope: !4113, file: !64, line: 462, column: 6)
!4173 = !DILocation(line: 462, column: 11, scope: !4172)
!4174 = !DILocation(line: 462, column: 6, scope: !4113)
!4175 = !DILocation(line: 462, column: 26, scope: !4172)
!4176 = !DILocation(line: 463, column: 6, scope: !4177)
!4177 = distinct !DILexicalBlock(scope: !4113, file: !64, line: 463, column: 6)
!4178 = !DILocation(line: 463, column: 11, scope: !4177)
!4179 = !DILocation(line: 463, column: 6, scope: !4113)
!4180 = !DILocation(line: 463, column: 26, scope: !4177)
!4181 = !DILocation(line: 464, column: 6, scope: !4182)
!4182 = distinct !DILexicalBlock(scope: !4113, file: !64, line: 464, column: 6)
!4183 = !DILocation(line: 464, column: 11, scope: !4182)
!4184 = !DILocation(line: 464, column: 6, scope: !4113)
!4185 = !DILocation(line: 464, column: 26, scope: !4182)
!4186 = !DILocation(line: 465, column: 6, scope: !4187)
!4187 = distinct !DILexicalBlock(scope: !4113, file: !64, line: 465, column: 6)
!4188 = !DILocation(line: 465, column: 11, scope: !4187)
!4189 = !DILocation(line: 465, column: 6, scope: !4113)
!4190 = !DILocation(line: 465, column: 26, scope: !4187)
!4191 = !DILocation(line: 466, column: 6, scope: !4192)
!4192 = distinct !DILexicalBlock(scope: !4113, file: !64, line: 466, column: 6)
!4193 = !DILocation(line: 466, column: 11, scope: !4192)
!4194 = !DILocation(line: 466, column: 6, scope: !4113)
!4195 = !DILocation(line: 466, column: 26, scope: !4192)
!4196 = !DILocation(line: 467, column: 6, scope: !4197)
!4197 = distinct !DILexicalBlock(scope: !4113, file: !64, line: 467, column: 6)
!4198 = !DILocation(line: 467, column: 11, scope: !4197)
!4199 = !DILocation(line: 467, column: 6, scope: !4113)
!4200 = !DILocation(line: 467, column: 26, scope: !4197)
!4201 = !DILocation(line: 468, column: 6, scope: !4202)
!4202 = distinct !DILexicalBlock(scope: !4113, file: !64, line: 468, column: 6)
!4203 = !DILocation(line: 468, column: 11, scope: !4202)
!4204 = !DILocation(line: 468, column: 6, scope: !4113)
!4205 = !DILocation(line: 468, column: 26, scope: !4202)
!4206 = !DILocation(line: 469, column: 6, scope: !4207)
!4207 = distinct !DILexicalBlock(scope: !4113, file: !64, line: 469, column: 6)
!4208 = !DILocation(line: 469, column: 11, scope: !4207)
!4209 = !DILocation(line: 469, column: 6, scope: !4113)
!4210 = !DILocation(line: 469, column: 26, scope: !4207)
!4211 = !DILocation(line: 470, column: 6, scope: !4212)
!4212 = distinct !DILexicalBlock(scope: !4113, file: !64, line: 470, column: 6)
!4213 = !DILocation(line: 470, column: 11, scope: !4212)
!4214 = !DILocation(line: 470, column: 6, scope: !4113)
!4215 = !DILocation(line: 470, column: 26, scope: !4212)
!4216 = !DILocation(line: 471, column: 6, scope: !4217)
!4217 = distinct !DILexicalBlock(scope: !4113, file: !64, line: 471, column: 6)
!4218 = !DILocation(line: 471, column: 11, scope: !4217)
!4219 = !DILocation(line: 471, column: 6, scope: !4113)
!4220 = !DILocation(line: 471, column: 26, scope: !4217)
!4221 = !DILocation(line: 472, column: 6, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !4113, file: !64, line: 472, column: 6)
!4223 = !DILocation(line: 472, column: 11, scope: !4222)
!4224 = !DILocation(line: 472, column: 6, scope: !4113)
!4225 = !DILocation(line: 472, column: 26, scope: !4222)
!4226 = !DILocation(line: 473, column: 6, scope: !4227)
!4227 = distinct !DILexicalBlock(scope: !4113, file: !64, line: 473, column: 6)
!4228 = !DILocation(line: 473, column: 11, scope: !4227)
!4229 = !DILocation(line: 473, column: 6, scope: !4113)
!4230 = !DILocation(line: 473, column: 26, scope: !4227)
!4231 = !DILocation(line: 474, column: 6, scope: !4232)
!4232 = distinct !DILexicalBlock(scope: !4113, file: !64, line: 474, column: 6)
!4233 = !DILocation(line: 474, column: 11, scope: !4232)
!4234 = !DILocation(line: 474, column: 6, scope: !4113)
!4235 = !DILocation(line: 474, column: 27, scope: !4232)
!4236 = !DILocation(line: 475, column: 6, scope: !4237)
!4237 = distinct !DILexicalBlock(scope: !4113, file: !64, line: 475, column: 6)
!4238 = !DILocation(line: 475, column: 11, scope: !4237)
!4239 = !DILocation(line: 475, column: 6, scope: !4113)
!4240 = !DILocation(line: 475, column: 32, scope: !4237)
!4241 = !DILocation(line: 477, column: 50, scope: !4242)
!4242 = distinct !DILexicalBlock(scope: !4113, file: !64, line: 477, column: 6)
!4243 = !DILocation(line: 477, column: 6, scope: !4113)
!4244 = !DILocation(line: 478, column: 3, scope: !4242)
!4245 = !DILocation(line: 478, column: 3, scope: !4246)
!4246 = distinct !DILexicalBlock(scope: !4247, file: !64, line: 478, column: 3)
!4247 = distinct !DILexicalBlock(scope: !4242, file: !64, line: 478, column: 3)
!4248 = !{i32 -2142211073}
!4249 = !DILocation(line: 478, column: 3, scope: !4247)
!4250 = !DILocation(line: 480, column: 3, scope: !4242)
!4251 = !DILocation(line: 480, column: 3, scope: !4252)
!4252 = distinct !DILexicalBlock(scope: !4242, file: !64, line: 480, column: 3)
!4253 = !DILocation(line: 480, column: 3, scope: !4254)
!4254 = distinct !DILexicalBlock(scope: !4252, file: !64, line: 480, column: 3)
!4255 = !DILocation(line: 480, column: 3, scope: !4256)
!4256 = distinct !DILexicalBlock(scope: !4252, file: !64, line: 480, column: 3)
!4257 = !{i64 2152756426, i64 2152756455, i64 2152756501, i64 2152756559, i64 2152756613, i64 2152756667, i64 2152756722, i64 2152756753}
!4258 = !DILocation(line: 483, column: 2, scope: !4113)
!4259 = !DILocation(line: 484, column: 1, scope: !4113)
!4260 = !DISubprogram(name: "kmalloc_trace", scope: !64, file: !64, line: 525, type: !4261, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4261 = !DISubroutineType(types: !4262)
!4262 = !{!74, !4263, !2619, !234}
!4263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4264, size: 64)
!4264 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !4265, line: 11, flags: DIFlagFwdDecl)
!4265 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!4266 = distinct !DISubprogram(name: "kmalloc_type", scope: !64, file: !64, line: 401, type: !4267, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4269)
!4267 = !DISubroutineType(types: !4268)
!4268 = !{!63, !2619, !237}
!4269 = !{!4270, !4271}
!4270 = !DILocalVariable(name: "flags", arg: 1, scope: !4266, file: !64, line: 401, type: !2619)
!4271 = !DILocalVariable(name: "caller", arg: 2, scope: !4266, file: !64, line: 401, type: !237)
!4272 = !DILocation(line: 401, column: 67, scope: !4266)
!4273 = !DILocation(line: 401, column: 88, scope: !4266)
!4274 = !DILocation(line: 407, column: 6, scope: !4275)
!4275 = distinct !DILexicalBlock(scope: !4266, file: !64, line: 407, column: 6)
!4276 = !DILocation(line: 407, column: 6, scope: !4266)
!4277 = !DILocation(line: 413, column: 3, scope: !4275)
!4278 = !DILocation(line: 423, column: 38, scope: !4279)
!4279 = distinct !DILexicalBlock(scope: !4266, file: !64, line: 423, column: 6)
!4280 = !DILocation(line: 423, column: 44, scope: !4279)
!4281 = !DILocation(line: 423, column: 6, scope: !4266)
!4282 = !DILocation(line: 424, column: 3, scope: !4279)
!4283 = !DILocation(line: 426, column: 3, scope: !4284)
!4284 = distinct !DILexicalBlock(scope: !4266, file: !64, line: 425, column: 6)
!4285 = !DILocation(line: 429, column: 1, scope: !4266)
!4286 = !DISubprogram(name: "__kmalloc", scope: !64, file: !64, line: 488, type: !4035, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4287 = !DISubprogram(name: "__compiletime_assert_204", scope: !64, file: !64, line: 478, type: !1131, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!4288 = distinct !DISubprogram(name: "__must_check_overflow", scope: !4078, file: !4078, line: 51, type: !4289, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4291)
!4289 = !DISubroutineType(types: !4290)
!4290 = !{!543, !543}
!4291 = !{!4292}
!4292 = !DILocalVariable(name: "overflow", arg: 1, scope: !4288, file: !4078, line: 51, type: !543)
!4293 = !DILocation(line: 51, column: 60, scope: !4288)
!4294 = !DILocation(line: 53, column: 9, scope: !4288)
!4295 = !DILocation(line: 53, column: 2, scope: !4288)
!4296 = !DISubprogram(name: "cond_synchronize_rcu", scope: !4297, file: !4297, line: 88, type: !4298, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4297 = !DIFile(filename: "./include/linux/rcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ba1a11a02717ea844631ceb399131463")
!4298 = !DISubroutineType(types: !4299)
!4299 = !{null, !237}
!4300 = !DISubprogram(name: "poll_state_synchronize_srcu", scope: !3610, file: !3610, line: 62, type: !4301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4301 = !DISubroutineType(types: !4302)
!4302 = !{!543, !983, !237}
!4303 = !DISubprogram(name: "synchronize_srcu", scope: !3610, file: !3610, line: 59, type: !4304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4304 = !DISubroutineType(types: !4305)
!4305 = !{null, !983}
!4306 = !DISubprogram(name: "__static_call_update", scope: !2764, file: !2764, line: 181, type: !4307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4307 = !DISubroutineType(types: !4308)
!4308 = !{null, !2753, !74, !74}
!4309 = !DISubprogram(name: "get_state_synchronize_rcu", scope: !4297, file: !4297, line: 82, type: !4310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4310 = !DISubroutineType(types: !4311)
!4311 = !{!237}
!4312 = !DISubprogram(name: "start_poll_synchronize_srcu", scope: !3610, file: !3610, line: 61, type: !4313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4313 = !DISubroutineType(types: !4314)
!4314 = !{!237, !983}
!4315 = distinct !DISubprogram(name: "func_remove", scope: !3, file: !3, line: 232, type: !4316, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4318)
!4316 = !DISubroutineType(types: !4317)
!4317 = !{!74, !3632, !2615}
!4318 = !{!4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326}
!4319 = !DILocalVariable(name: "funcs", arg: 1, scope: !4315, file: !3, line: 232, type: !3632)
!4320 = !DILocalVariable(name: "tp_func", arg: 2, scope: !4315, file: !3, line: 233, type: !2615)
!4321 = !DILocalVariable(name: "nr_probes", scope: !4315, file: !3, line: 235, type: !140)
!4322 = !DILocalVariable(name: "nr_del", scope: !4315, file: !3, line: 235, type: !140)
!4323 = !DILocalVariable(name: "i", scope: !4315, file: !3, line: 235, type: !140)
!4324 = !DILocalVariable(name: "old", scope: !4315, file: !3, line: 236, type: !2615)
!4325 = !DILocalVariable(name: "new", scope: !4315, file: !3, line: 236, type: !2615)
!4326 = !DILocalVariable(name: "j", scope: !4327, file: !3, line: 264, type: !140)
!4327 = distinct !DILexicalBlock(scope: !4328, file: !3, line: 263, column: 9)
!4328 = distinct !DILexicalBlock(scope: !4315, file: !3, line: 258, column: 6)
!4329 = !DILocation(line: 232, column: 51, scope: !4315)
!4330 = !DILocation(line: 233, column: 27, scope: !4315)
!4331 = !DILocation(line: 235, column: 2, scope: !4315)
!4332 = !DILocation(line: 235, column: 6, scope: !4315)
!4333 = !DILocation(line: 235, column: 21, scope: !4315)
!4334 = !DILocation(line: 235, column: 33, scope: !4315)
!4335 = !DILocation(line: 236, column: 2, scope: !4315)
!4336 = !DILocation(line: 236, column: 26, scope: !4315)
!4337 = !DILocation(line: 236, column: 32, scope: !4315)
!4338 = !DILocation(line: 238, column: 9, scope: !4315)
!4339 = !DILocation(line: 238, column: 8, scope: !4315)
!4340 = !DILocation(line: 238, column: 6, scope: !4315)
!4341 = !DILocation(line: 240, column: 7, scope: !4342)
!4342 = distinct !DILexicalBlock(scope: !4315, file: !3, line: 240, column: 6)
!4343 = !DILocation(line: 240, column: 6, scope: !4315)
!4344 = !DILocation(line: 241, column: 10, scope: !4342)
!4345 = !DILocation(line: 241, column: 3, scope: !4342)
!4346 = !DILocation(line: 243, column: 22, scope: !4315)
!4347 = !DILocation(line: 243, column: 21, scope: !4315)
!4348 = !DILocation(line: 243, column: 2, scope: !4315)
!4349 = !DILocation(line: 245, column: 6, scope: !4350)
!4350 = distinct !DILexicalBlock(scope: !4315, file: !3, line: 245, column: 6)
!4351 = !DILocation(line: 245, column: 15, scope: !4350)
!4352 = !DILocation(line: 245, column: 6, scope: !4315)
!4353 = !DILocation(line: 246, column: 18, scope: !4354)
!4354 = distinct !DILexicalBlock(scope: !4355, file: !3, line: 246, column: 3)
!4355 = distinct !DILexicalBlock(scope: !4350, file: !3, line: 245, column: 21)
!4356 = !DILocation(line: 246, column: 8, scope: !4354)
!4357 = !DILocation(line: 246, column: 23, scope: !4358)
!4358 = distinct !DILexicalBlock(scope: !4354, file: !3, line: 246, column: 3)
!4359 = !DILocation(line: 246, column: 27, scope: !4358)
!4360 = !DILocation(line: 246, column: 38, scope: !4358)
!4361 = !DILocation(line: 246, column: 3, scope: !4354)
!4362 = !DILocation(line: 247, column: 9, scope: !4363)
!4363 = distinct !DILexicalBlock(scope: !4364, file: !3, line: 247, column: 8)
!4364 = distinct !DILexicalBlock(scope: !4358, file: !3, line: 246, column: 57)
!4365 = !DILocation(line: 247, column: 13, scope: !4363)
!4366 = !DILocation(line: 247, column: 24, scope: !4363)
!4367 = !DILocation(line: 247, column: 32, scope: !4363)
!4368 = !DILocation(line: 247, column: 41, scope: !4363)
!4369 = !DILocation(line: 247, column: 29, scope: !4363)
!4370 = !DILocation(line: 247, column: 46, scope: !4363)
!4371 = !DILocation(line: 248, column: 9, scope: !4363)
!4372 = !DILocation(line: 248, column: 13, scope: !4363)
!4373 = !DILocation(line: 248, column: 24, scope: !4363)
!4374 = !DILocation(line: 248, column: 32, scope: !4363)
!4375 = !DILocation(line: 248, column: 41, scope: !4363)
!4376 = !DILocation(line: 248, column: 29, scope: !4363)
!4377 = !DILocation(line: 248, column: 47, scope: !4363)
!4378 = !DILocation(line: 249, column: 8, scope: !4363)
!4379 = !DILocation(line: 249, column: 12, scope: !4363)
!4380 = !DILocation(line: 249, column: 23, scope: !4363)
!4381 = !DILocation(line: 249, column: 28, scope: !4363)
!4382 = !DILocation(line: 247, column: 8, scope: !4364)
!4383 = !DILocation(line: 250, column: 11, scope: !4363)
!4384 = !DILocation(line: 250, column: 5, scope: !4363)
!4385 = !DILocation(line: 251, column: 3, scope: !4364)
!4386 = !DILocation(line: 246, column: 53, scope: !4358)
!4387 = !DILocation(line: 246, column: 3, scope: !4358)
!4388 = distinct !{!4388, !4361, !4389, !2740, !2741}
!4389 = !DILocation(line: 251, column: 3, scope: !4354)
!4390 = !DILocation(line: 252, column: 2, scope: !4355)
!4391 = !DILocation(line: 258, column: 6, scope: !4328)
!4392 = !DILocation(line: 258, column: 18, scope: !4328)
!4393 = !DILocation(line: 258, column: 16, scope: !4328)
!4394 = !DILocation(line: 258, column: 25, scope: !4328)
!4395 = !DILocation(line: 258, column: 6, scope: !4315)
!4396 = !DILocation(line: 260, column: 4, scope: !4397)
!4397 = distinct !DILexicalBlock(scope: !4328, file: !3, line: 258, column: 31)
!4398 = !DILocation(line: 260, column: 10, scope: !4397)
!4399 = !DILocation(line: 261, column: 23, scope: !4397)
!4400 = !DILocation(line: 261, column: 22, scope: !4397)
!4401 = !DILocation(line: 261, column: 3, scope: !4397)
!4402 = !DILocation(line: 262, column: 10, scope: !4397)
!4403 = !DILocation(line: 262, column: 3, scope: !4397)
!4404 = !DILocation(line: 264, column: 3, scope: !4327)
!4405 = !DILocation(line: 264, column: 7, scope: !4327)
!4406 = !DILocation(line: 267, column: 25, scope: !4327)
!4407 = !DILocation(line: 267, column: 37, scope: !4327)
!4408 = !DILocation(line: 267, column: 35, scope: !4327)
!4409 = !DILocation(line: 267, column: 44, scope: !4327)
!4410 = !DILocation(line: 267, column: 9, scope: !4327)
!4411 = !DILocation(line: 267, column: 7, scope: !4327)
!4412 = !DILocation(line: 268, column: 7, scope: !4413)
!4413 = distinct !DILexicalBlock(scope: !4327, file: !3, line: 268, column: 7)
!4414 = !DILocation(line: 268, column: 7, scope: !4327)
!4415 = !DILocation(line: 269, column: 11, scope: !4416)
!4416 = distinct !DILexicalBlock(scope: !4417, file: !3, line: 269, column: 4)
!4417 = distinct !DILexicalBlock(scope: !4413, file: !3, line: 268, column: 12)
!4418 = !DILocation(line: 269, column: 9, scope: !4416)
!4419 = !DILocation(line: 269, column: 16, scope: !4420)
!4420 = distinct !DILexicalBlock(scope: !4416, file: !3, line: 269, column: 4)
!4421 = !DILocation(line: 269, column: 20, scope: !4420)
!4422 = !DILocation(line: 269, column: 23, scope: !4420)
!4423 = !DILocation(line: 269, column: 4, scope: !4416)
!4424 = !DILocation(line: 270, column: 10, scope: !4425)
!4425 = distinct !DILexicalBlock(scope: !4426, file: !3, line: 270, column: 9)
!4426 = distinct !DILexicalBlock(scope: !4420, file: !3, line: 269, column: 34)
!4427 = !DILocation(line: 270, column: 14, scope: !4425)
!4428 = !DILocation(line: 270, column: 17, scope: !4425)
!4429 = !DILocation(line: 270, column: 25, scope: !4425)
!4430 = !DILocation(line: 270, column: 34, scope: !4425)
!4431 = !DILocation(line: 270, column: 22, scope: !4425)
!4432 = !DILocation(line: 270, column: 39, scope: !4425)
!4433 = !DILocation(line: 271, column: 10, scope: !4425)
!4434 = !DILocation(line: 271, column: 14, scope: !4425)
!4435 = !DILocation(line: 271, column: 17, scope: !4425)
!4436 = !DILocation(line: 271, column: 25, scope: !4425)
!4437 = !DILocation(line: 271, column: 34, scope: !4425)
!4438 = !DILocation(line: 271, column: 22, scope: !4425)
!4439 = !DILocation(line: 271, column: 40, scope: !4425)
!4440 = !DILocation(line: 272, column: 9, scope: !4425)
!4441 = !DILocation(line: 272, column: 13, scope: !4425)
!4442 = !DILocation(line: 272, column: 16, scope: !4425)
!4443 = !DILocation(line: 272, column: 21, scope: !4425)
!4444 = !DILocation(line: 270, column: 9, scope: !4426)
!4445 = !DILocation(line: 273, column: 6, scope: !4425)
!4446 = !DILocation(line: 273, column: 11, scope: !4425)
!4447 = !DILocation(line: 273, column: 17, scope: !4425)
!4448 = !DILocation(line: 273, column: 21, scope: !4425)
!4449 = !DILocation(line: 274, column: 4, scope: !4426)
!4450 = !DILocation(line: 269, column: 30, scope: !4420)
!4451 = !DILocation(line: 269, column: 4, scope: !4420)
!4452 = distinct !{!4452, !4423, !4453, !2740, !2741}
!4453 = !DILocation(line: 274, column: 4, scope: !4416)
!4454 = !DILocation(line: 275, column: 4, scope: !4417)
!4455 = !DILocation(line: 275, column: 8, scope: !4417)
!4456 = !DILocation(line: 275, column: 20, scope: !4417)
!4457 = !DILocation(line: 275, column: 18, scope: !4417)
!4458 = !DILocation(line: 275, column: 28, scope: !4417)
!4459 = !DILocation(line: 275, column: 33, scope: !4417)
!4460 = !DILocation(line: 276, column: 13, scope: !4417)
!4461 = !DILocation(line: 276, column: 5, scope: !4417)
!4462 = !DILocation(line: 276, column: 11, scope: !4417)
!4463 = !DILocation(line: 277, column: 3, scope: !4417)
!4464 = !DILocation(line: 282, column: 11, scope: !4465)
!4465 = distinct !DILexicalBlock(scope: !4466, file: !3, line: 282, column: 4)
!4466 = distinct !DILexicalBlock(scope: !4413, file: !3, line: 277, column: 10)
!4467 = !DILocation(line: 282, column: 9, scope: !4465)
!4468 = !DILocation(line: 282, column: 16, scope: !4469)
!4469 = distinct !DILexicalBlock(scope: !4465, file: !3, line: 282, column: 4)
!4470 = !DILocation(line: 282, column: 20, scope: !4469)
!4471 = !DILocation(line: 282, column: 23, scope: !4469)
!4472 = !DILocation(line: 282, column: 4, scope: !4465)
!4473 = !DILocation(line: 283, column: 9, scope: !4474)
!4474 = distinct !DILexicalBlock(scope: !4475, file: !3, line: 283, column: 9)
!4475 = distinct !DILexicalBlock(scope: !4469, file: !3, line: 282, column: 34)
!4476 = !DILocation(line: 283, column: 13, scope: !4474)
!4477 = !DILocation(line: 283, column: 16, scope: !4474)
!4478 = !DILocation(line: 283, column: 24, scope: !4474)
!4479 = !DILocation(line: 283, column: 33, scope: !4474)
!4480 = !DILocation(line: 283, column: 21, scope: !4474)
!4481 = !DILocation(line: 283, column: 38, scope: !4474)
!4482 = !DILocation(line: 284, column: 9, scope: !4474)
!4483 = !DILocation(line: 284, column: 13, scope: !4474)
!4484 = !DILocation(line: 284, column: 16, scope: !4474)
!4485 = !DILocation(line: 284, column: 24, scope: !4474)
!4486 = !DILocation(line: 284, column: 33, scope: !4474)
!4487 = !DILocation(line: 284, column: 21, scope: !4474)
!4488 = !DILocation(line: 283, column: 9, scope: !4475)
!4489 = !DILocation(line: 285, column: 6, scope: !4474)
!4490 = !DILocation(line: 285, column: 6, scope: !4491)
!4491 = distinct !DILexicalBlock(scope: !4474, file: !3, line: 285, column: 6)
!4492 = !DILocation(line: 285, column: 6, scope: !4493)
!4493 = distinct !DILexicalBlock(scope: !4491, file: !3, line: 285, column: 6)
!4494 = !DILocation(line: 285, column: 6, scope: !4495)
!4495 = distinct !DILexicalBlock(scope: !4491, file: !3, line: 285, column: 6)
!4496 = !DILocation(line: 286, column: 4, scope: !4475)
!4497 = !DILocation(line: 282, column: 30, scope: !4469)
!4498 = !DILocation(line: 282, column: 4, scope: !4469)
!4499 = distinct !{!4499, !4472, !4500, !2740, !2741}
!4500 = !DILocation(line: 286, column: 4, scope: !4465)
!4501 = !DILocation(line: 287, column: 13, scope: !4466)
!4502 = !DILocation(line: 287, column: 5, scope: !4466)
!4503 = !DILocation(line: 287, column: 11, scope: !4466)
!4504 = !DILocation(line: 289, column: 2, scope: !4328)
!4505 = !DILocation(line: 290, column: 22, scope: !4315)
!4506 = !DILocation(line: 290, column: 21, scope: !4315)
!4507 = !DILocation(line: 290, column: 2, scope: !4315)
!4508 = !DILocation(line: 291, column: 9, scope: !4315)
!4509 = !DILocation(line: 291, column: 2, scope: !4315)
!4510 = !DILocation(line: 292, column: 1, scope: !4315)
!4511 = !DISubprogram(name: "static_key_disable", scope: !1091, file: !1091, line: 234, type: !3912, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4512 = !DISubprogram(name: "register_module_notifier", scope: !6, file: !6, line: 734, type: !3273, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4513 = distinct !DISubprogram(name: "tracepoint_module_notify", scope: !3, file: !3, line: 701, type: !2698, scopeLine: 703, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4514)
!4514 = !{!4515, !4516, !4517, !4518, !4519}
!4515 = !DILocalVariable(name: "self", arg: 1, scope: !4513, file: !3, line: 701, type: !2692)
!4516 = !DILocalVariable(name: "val", arg: 2, scope: !4513, file: !3, line: 702, type: !237)
!4517 = !DILocalVariable(name: "data", arg: 3, scope: !4513, file: !3, line: 702, type: !74)
!4518 = !DILocalVariable(name: "mod", scope: !4513, file: !3, line: 704, type: !87)
!4519 = !DILocalVariable(name: "ret", scope: !4513, file: !3, line: 705, type: !140)
!4520 = !DILocation(line: 701, column: 60, scope: !4513)
!4521 = !DILocation(line: 702, column: 17, scope: !4513)
!4522 = !DILocation(line: 702, column: 28, scope: !4513)
!4523 = !DILocation(line: 704, column: 2, scope: !4513)
!4524 = !DILocation(line: 704, column: 17, scope: !4513)
!4525 = !DILocation(line: 704, column: 23, scope: !4513)
!4526 = !DILocation(line: 705, column: 2, scope: !4513)
!4527 = !DILocation(line: 705, column: 6, scope: !4513)
!4528 = !DILocation(line: 707, column: 10, scope: !4513)
!4529 = !DILocation(line: 707, column: 2, scope: !4513)
!4530 = !DILocation(line: 709, column: 34, scope: !4531)
!4531 = distinct !DILexicalBlock(scope: !4513, file: !3, line: 707, column: 15)
!4532 = !DILocation(line: 709, column: 9, scope: !4531)
!4533 = !DILocation(line: 709, column: 7, scope: !4531)
!4534 = !DILocation(line: 710, column: 3, scope: !4531)
!4535 = !DILocation(line: 714, column: 27, scope: !4531)
!4536 = !DILocation(line: 714, column: 3, scope: !4531)
!4537 = !DILocation(line: 715, column: 3, scope: !4531)
!4538 = !DILocation(line: 719, column: 29, scope: !4513)
!4539 = !DILocation(line: 719, column: 9, scope: !4513)
!4540 = !DILocation(line: 720, column: 1, scope: !4513)
!4541 = !DILocation(line: 719, column: 2, scope: !4513)
!4542 = distinct !DISubprogram(name: "tracepoint_module_coming", scope: !3, file: !3, line: 640, type: !798, scopeLine: 641, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4543)
!4543 = !{!4544, !4545}
!4544 = !DILocalVariable(name: "mod", arg: 1, scope: !4542, file: !3, line: 640, type: !87)
!4545 = !DILocalVariable(name: "tp_mod", scope: !4542, file: !3, line: 642, type: !75)
!4546 = !DILocation(line: 640, column: 52, scope: !4542)
!4547 = !DILocation(line: 642, column: 2, scope: !4542)
!4548 = !DILocation(line: 642, column: 20, scope: !4542)
!4549 = !DILocation(line: 644, column: 7, scope: !4550)
!4550 = distinct !DILexicalBlock(scope: !4542, file: !3, line: 644, column: 6)
!4551 = !DILocation(line: 644, column: 12, scope: !4550)
!4552 = !DILocation(line: 644, column: 6, scope: !4542)
!4553 = !DILocation(line: 645, column: 3, scope: !4550)
!4554 = !DILocation(line: 652, column: 33, scope: !4555)
!4555 = distinct !DILexicalBlock(scope: !4542, file: !3, line: 652, column: 6)
!4556 = !DILocation(line: 652, column: 6, scope: !4555)
!4557 = !DILocation(line: 652, column: 6, scope: !4542)
!4558 = !DILocation(line: 653, column: 3, scope: !4555)
!4559 = !DILocation(line: 655, column: 11, scope: !4542)
!4560 = !DILocation(line: 655, column: 9, scope: !4542)
!4561 = !DILocation(line: 656, column: 7, scope: !4562)
!4562 = distinct !DILexicalBlock(scope: !4542, file: !3, line: 656, column: 6)
!4563 = !DILocation(line: 656, column: 6, scope: !4542)
!4564 = !DILocation(line: 657, column: 3, scope: !4562)
!4565 = !DILocation(line: 658, column: 16, scope: !4542)
!4566 = !DILocation(line: 658, column: 2, scope: !4542)
!4567 = !DILocation(line: 658, column: 10, scope: !4542)
!4568 = !DILocation(line: 658, column: 14, scope: !4542)
!4569 = !DILocation(line: 660, column: 2, scope: !4542)
!4570 = !DILocation(line: 661, column: 17, scope: !4542)
!4571 = !DILocation(line: 661, column: 25, scope: !4542)
!4572 = !DILocation(line: 661, column: 2, scope: !4542)
!4573 = !DILocation(line: 663, column: 25, scope: !4542)
!4574 = !DILocation(line: 662, column: 2, scope: !4542)
!4575 = !DILocation(line: 664, column: 2, scope: !4542)
!4576 = !DILocation(line: 665, column: 2, scope: !4542)
!4577 = !DILocation(line: 666, column: 1, scope: !4542)
!4578 = distinct !DISubprogram(name: "tracepoint_module_going", scope: !3, file: !3, line: 668, type: !802, scopeLine: 669, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4579)
!4579 = !{!4580, !4581, !4582, !4585}
!4580 = !DILocalVariable(name: "mod", arg: 1, scope: !4578, file: !3, line: 668, type: !87)
!4581 = !DILocalVariable(name: "tp_mod", scope: !4578, file: !3, line: 670, type: !75)
!4582 = !DILocalVariable(name: "__mptr", scope: !4583, file: !3, line: 676, type: !74)
!4583 = distinct !DILexicalBlock(scope: !4584, file: !3, line: 676, column: 2)
!4584 = distinct !DILexicalBlock(scope: !4578, file: !3, line: 676, column: 2)
!4585 = !DILocalVariable(name: "__mptr", scope: !4586, file: !3, line: 676, type: !74)
!4586 = distinct !DILexicalBlock(scope: !4587, file: !3, line: 676, column: 2)
!4587 = distinct !DILexicalBlock(scope: !4584, file: !3, line: 676, column: 2)
!4588 = !DILocation(line: 668, column: 52, scope: !4578)
!4589 = !DILocation(line: 670, column: 2, scope: !4578)
!4590 = !DILocation(line: 670, column: 20, scope: !4578)
!4591 = !DILocation(line: 672, column: 7, scope: !4592)
!4592 = distinct !DILexicalBlock(scope: !4578, file: !3, line: 672, column: 6)
!4593 = !DILocation(line: 672, column: 12, scope: !4592)
!4594 = !DILocation(line: 672, column: 6, scope: !4578)
!4595 = !DILocation(line: 673, column: 3, scope: !4592)
!4596 = !DILocation(line: 675, column: 2, scope: !4578)
!4597 = !DILocation(line: 676, column: 2, scope: !4583)
!4598 = !DILocation(line: 676, column: 2, scope: !4584)
!4599 = !DILocation(line: 676, column: 2, scope: !4587)
!4600 = !DILocation(line: 677, column: 7, scope: !4601)
!4601 = distinct !DILexicalBlock(scope: !4602, file: !3, line: 677, column: 7)
!4602 = distinct !DILexicalBlock(scope: !4587, file: !3, line: 676, column: 61)
!4603 = !DILocation(line: 677, column: 15, scope: !4601)
!4604 = !DILocation(line: 677, column: 22, scope: !4601)
!4605 = !DILocation(line: 677, column: 19, scope: !4601)
!4606 = !DILocation(line: 677, column: 7, scope: !4602)
!4607 = !DILocation(line: 679, column: 26, scope: !4608)
!4608 = distinct !DILexicalBlock(scope: !4601, file: !3, line: 677, column: 27)
!4609 = !DILocation(line: 678, column: 4, scope: !4608)
!4610 = !DILocation(line: 680, column: 14, scope: !4608)
!4611 = !DILocation(line: 680, column: 22, scope: !4608)
!4612 = !DILocation(line: 680, column: 4, scope: !4608)
!4613 = !DILocation(line: 681, column: 10, scope: !4608)
!4614 = !DILocation(line: 681, column: 4, scope: !4608)
!4615 = !DILocation(line: 686, column: 30, scope: !4608)
!4616 = !DILocation(line: 686, column: 35, scope: !4608)
!4617 = !DILocation(line: 687, column: 5, scope: !4608)
!4618 = !DILocation(line: 687, column: 10, scope: !4608)
!4619 = !DILocation(line: 687, column: 29, scope: !4608)
!4620 = !DILocation(line: 687, column: 34, scope: !4608)
!4621 = !DILocation(line: 687, column: 27, scope: !4608)
!4622 = !DILocation(line: 686, column: 4, scope: !4608)
!4623 = !DILocation(line: 689, column: 4, scope: !4608)
!4624 = !DILocation(line: 691, column: 2, scope: !4602)
!4625 = !DILocation(line: 676, column: 2, scope: !4586)
!4626 = distinct !{!4626, !4598, !4627, !2740, !2741}
!4627 = !DILocation(line: 691, column: 2, scope: !4584)
!4628 = !DILocation(line: 698, column: 2, scope: !4578)
!4629 = !DILocation(line: 699, column: 1, scope: !4578)
!4630 = distinct !DISubprogram(name: "notifier_from_errno", scope: !2688, file: !2688, line: 196, type: !4631, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4633)
!4631 = !DISubroutineType(types: !4632)
!4632 = !{!140, !140}
!4633 = !{!4634}
!4634 = !DILocalVariable(name: "err", arg: 1, scope: !4630, file: !2688, line: 196, type: !140)
!4635 = !DILocation(line: 196, column: 43, scope: !4630)
!4636 = !DILocation(line: 198, column: 6, scope: !4637)
!4637 = distinct !DILexicalBlock(scope: !4630, file: !2688, line: 198, column: 6)
!4638 = !DILocation(line: 198, column: 6, scope: !4630)
!4639 = !DILocation(line: 199, column: 42, scope: !4637)
!4640 = !DILocation(line: 199, column: 40, scope: !4637)
!4641 = !DILocation(line: 199, column: 27, scope: !4637)
!4642 = !DILocation(line: 199, column: 3, scope: !4637)
!4643 = !DILocation(line: 201, column: 2, scope: !4630)
!4644 = !DILocation(line: 202, column: 1, scope: !4630)
!4645 = distinct !DISubprogram(name: "list_add_tail", scope: !4646, file: !4646, line: 181, type: !4647, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4649)
!4646 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!4647 = !DISubroutineType(types: !4648)
!4648 = !{null, !84, !84}
!4649 = !{!4650, !4651}
!4650 = !DILocalVariable(name: "new", arg: 1, scope: !4645, file: !4646, line: 181, type: !84)
!4651 = !DILocalVariable(name: "head", arg: 2, scope: !4645, file: !4646, line: 181, type: !84)
!4652 = !DILocation(line: 181, column: 52, scope: !4645)
!4653 = !DILocation(line: 181, column: 75, scope: !4645)
!4654 = !DILocation(line: 183, column: 13, scope: !4645)
!4655 = !DILocation(line: 183, column: 18, scope: !4645)
!4656 = !DILocation(line: 183, column: 24, scope: !4645)
!4657 = !DILocation(line: 183, column: 30, scope: !4645)
!4658 = !DILocation(line: 183, column: 2, scope: !4645)
!4659 = !DILocation(line: 184, column: 1, scope: !4645)
!4660 = !DISubprogram(name: "blocking_notifier_call_chain", scope: !2688, file: !2688, line: 171, type: !4661, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4661 = !DISubroutineType(types: !4662)
!4662 = !{!140, !3318, !237, !74}
!4663 = distinct !DISubprogram(name: "__list_add", scope: !4646, file: !4646, line: 146, type: !4664, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4666)
!4664 = !DISubroutineType(types: !4665)
!4665 = !{null, !84, !84, !84}
!4666 = !{!4667, !4668, !4669}
!4667 = !DILocalVariable(name: "new", arg: 1, scope: !4663, file: !4646, line: 146, type: !84)
!4668 = !DILocalVariable(name: "prev", arg: 2, scope: !4663, file: !4646, line: 147, type: !84)
!4669 = !DILocalVariable(name: "next", arg: 3, scope: !4663, file: !4646, line: 148, type: !84)
!4670 = !DILocation(line: 146, column: 49, scope: !4663)
!4671 = !DILocation(line: 147, column: 28, scope: !4663)
!4672 = !DILocation(line: 148, column: 28, scope: !4663)
!4673 = !DILocation(line: 150, column: 24, scope: !4674)
!4674 = distinct !DILexicalBlock(scope: !4663, file: !4646, line: 150, column: 6)
!4675 = !DILocation(line: 150, column: 29, scope: !4674)
!4676 = !DILocation(line: 150, column: 35, scope: !4674)
!4677 = !DILocation(line: 150, column: 7, scope: !4674)
!4678 = !DILocation(line: 150, column: 6, scope: !4663)
!4679 = !DILocation(line: 151, column: 3, scope: !4674)
!4680 = !DILocation(line: 153, column: 15, scope: !4663)
!4681 = !DILocation(line: 153, column: 2, scope: !4663)
!4682 = !DILocation(line: 153, column: 8, scope: !4663)
!4683 = !DILocation(line: 153, column: 13, scope: !4663)
!4684 = !DILocation(line: 154, column: 14, scope: !4663)
!4685 = !DILocation(line: 154, column: 2, scope: !4663)
!4686 = !DILocation(line: 154, column: 7, scope: !4663)
!4687 = !DILocation(line: 154, column: 12, scope: !4663)
!4688 = !DILocation(line: 155, column: 14, scope: !4663)
!4689 = !DILocation(line: 155, column: 2, scope: !4663)
!4690 = !DILocation(line: 155, column: 7, scope: !4663)
!4691 = !DILocation(line: 155, column: 12, scope: !4663)
!4692 = !DILocation(line: 156, column: 2, scope: !4663)
!4693 = !DILocation(line: 156, column: 2, scope: !4694)
!4694 = distinct !DILexicalBlock(scope: !4663, file: !4646, line: 156, column: 2)
!4695 = !DILocation(line: 156, column: 2, scope: !4696)
!4696 = distinct !DILexicalBlock(scope: !4694, file: !4646, line: 156, column: 2)
!4697 = !DILocation(line: 156, column: 2, scope: !4698)
!4698 = distinct !DILexicalBlock(scope: !4694, file: !4646, line: 156, column: 2)
!4699 = !DILocation(line: 157, column: 1, scope: !4663)
!4700 = distinct !DISubprogram(name: "__list_add_valid", scope: !4646, file: !4646, line: 128, type: !4701, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4703)
!4701 = !DISubroutineType(types: !4702)
!4702 = !{!543, !84, !84, !84}
!4703 = !{!4704, !4705, !4706}
!4704 = !DILocalVariable(name: "new", arg: 1, scope: !4700, file: !4646, line: 128, type: !84)
!4705 = !DILocalVariable(name: "prev", arg: 2, scope: !4700, file: !4646, line: 129, type: !84)
!4706 = !DILocalVariable(name: "next", arg: 3, scope: !4700, file: !4646, line: 130, type: !84)
!4707 = !DILocation(line: 128, column: 55, scope: !4700)
!4708 = !DILocation(line: 129, column: 23, scope: !4700)
!4709 = !DILocation(line: 130, column: 23, scope: !4700)
!4710 = !DILocation(line: 132, column: 2, scope: !4700)
!4711 = distinct !DISubprogram(name: "list_del", scope: !4646, file: !4646, line: 227, type: !4712, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4714)
!4712 = !DISubroutineType(types: !4713)
!4713 = !{null, !84}
!4714 = !{!4715}
!4715 = !DILocalVariable(name: "entry", arg: 1, scope: !4711, file: !4646, line: 227, type: !84)
!4716 = !DILocation(line: 227, column: 47, scope: !4711)
!4717 = !DILocation(line: 229, column: 19, scope: !4711)
!4718 = !DILocation(line: 229, column: 2, scope: !4711)
!4719 = !DILocation(line: 230, column: 2, scope: !4711)
!4720 = !DILocation(line: 230, column: 9, scope: !4711)
!4721 = !DILocation(line: 230, column: 14, scope: !4711)
!4722 = !DILocation(line: 231, column: 2, scope: !4711)
!4723 = !DILocation(line: 231, column: 9, scope: !4711)
!4724 = !DILocation(line: 231, column: 14, scope: !4711)
!4725 = !DILocation(line: 232, column: 1, scope: !4711)
!4726 = distinct !DISubprogram(name: "tp_module_going_check_quiescent", scope: !3, file: !3, line: 635, type: !3385, scopeLine: 636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4727)
!4727 = !{!4728, !4729, !4730, !4732}
!4728 = !DILocalVariable(name: "tp", arg: 1, scope: !4726, file: !3, line: 635, type: !2747)
!4729 = !DILocalVariable(name: "priv", arg: 2, scope: !4726, file: !3, line: 635, type: !74)
!4730 = !DILocalVariable(name: "__ret_warn_on", scope: !4731, file: !3, line: 637, type: !140)
!4731 = distinct !DILexicalBlock(scope: !4726, file: !3, line: 637, column: 2)
!4732 = !DILocalVariable(name: "__flags", scope: !4733, file: !3, line: 637, type: !140)
!4733 = distinct !DILexicalBlock(scope: !4734, file: !3, line: 637, column: 2)
!4734 = distinct !DILexicalBlock(scope: !4731, file: !3, line: 637, column: 2)
!4735 = !DILocation(line: 635, column: 64, scope: !4726)
!4736 = !DILocation(line: 635, column: 74, scope: !4726)
!4737 = !DILocation(line: 637, column: 2, scope: !4731)
!4738 = !DILocation(line: 637, column: 2, scope: !4734)
!4739 = !DILocation(line: 637, column: 2, scope: !4733)
!4740 = !DILocation(line: 637, column: 2, scope: !4741)
!4741 = distinct !DILexicalBlock(scope: !4733, file: !3, line: 637, column: 2)
!4742 = !DILocation(line: 637, column: 2, scope: !4743)
!4743 = distinct !DILexicalBlock(scope: !4733, file: !3, line: 637, column: 2)
!4744 = !{i64 2153614208, i64 2153614237, i64 2153614283, i64 2153614341, i64 2153614395, i64 2153614449, i64 2153614504, i64 2153614535, i64 2153614843, i64 2153614849, i64 2153614896, i64 2153614919, i64 2153614945}
!4745 = !DILocation(line: 637, column: 2, scope: !4746)
!4746 = distinct !DILexicalBlock(scope: !4733, file: !3, line: 637, column: 2)
!4747 = !DILocation(line: 637, column: 2, scope: !4726)
!4748 = !DILocation(line: 638, column: 1, scope: !4726)
!4749 = distinct !DISubprogram(name: "__list_del_entry", scope: !4646, file: !4646, line: 213, type: !4712, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4750)
!4750 = !{!4751}
!4751 = !DILocalVariable(name: "entry", arg: 1, scope: !4749, file: !4646, line: 213, type: !84)
!4752 = !DILocation(line: 213, column: 55, scope: !4749)
!4753 = !DILocation(line: 215, column: 30, scope: !4754)
!4754 = distinct !DILexicalBlock(scope: !4749, file: !4646, line: 215, column: 6)
!4755 = !DILocation(line: 215, column: 7, scope: !4754)
!4756 = !DILocation(line: 215, column: 6, scope: !4749)
!4757 = !DILocation(line: 216, column: 3, scope: !4754)
!4758 = !DILocation(line: 218, column: 13, scope: !4749)
!4759 = !DILocation(line: 218, column: 20, scope: !4749)
!4760 = !DILocation(line: 218, column: 26, scope: !4749)
!4761 = !DILocation(line: 218, column: 33, scope: !4749)
!4762 = !DILocation(line: 218, column: 2, scope: !4749)
!4763 = !DILocation(line: 219, column: 1, scope: !4749)
!4764 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !4646, file: !4646, line: 134, type: !4765, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4767)
!4765 = !DISubroutineType(types: !4766)
!4766 = !{!543, !84}
!4767 = !{!4768}
!4768 = !DILocalVariable(name: "entry", arg: 1, scope: !4764, file: !4646, line: 134, type: !84)
!4769 = !DILocation(line: 134, column: 61, scope: !4764)
!4770 = !DILocation(line: 136, column: 2, scope: !4764)
!4771 = distinct !DISubprogram(name: "__list_del", scope: !4646, file: !4646, line: 193, type: !4647, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4772)
!4772 = !{!4773, !4774}
!4773 = !DILocalVariable(name: "prev", arg: 1, scope: !4771, file: !4646, line: 193, type: !84)
!4774 = !DILocalVariable(name: "next", arg: 2, scope: !4771, file: !4646, line: 193, type: !84)
!4775 = !DILocation(line: 193, column: 50, scope: !4771)
!4776 = !DILocation(line: 193, column: 75, scope: !4771)
!4777 = !DILocation(line: 195, column: 15, scope: !4771)
!4778 = !DILocation(line: 195, column: 2, scope: !4771)
!4779 = !DILocation(line: 195, column: 8, scope: !4771)
!4780 = !DILocation(line: 195, column: 13, scope: !4771)
!4781 = !DILocation(line: 196, column: 2, scope: !4771)
!4782 = !DILocation(line: 196, column: 2, scope: !4783)
!4783 = distinct !DILexicalBlock(scope: !4771, file: !4646, line: 196, column: 2)
!4784 = !DILocation(line: 196, column: 2, scope: !4785)
!4785 = distinct !DILexicalBlock(scope: !4783, file: !4646, line: 196, column: 2)
!4786 = !DILocation(line: 196, column: 2, scope: !4787)
!4787 = distinct !DILexicalBlock(scope: !4783, file: !4646, line: 196, column: 2)
!4788 = !DILocation(line: 197, column: 1, scope: !4771)
!4789 = distinct !DISubprogram(name: "tracepoint_ptr_deref", scope: !77, file: !77, line: 114, type: !4790, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4792)
!4790 = !DISubroutineType(types: !4791)
!4791 = !{!2747, !976}
!4792 = !{!4793}
!4793 = !DILocalVariable(name: "p", arg: 1, scope: !4789, file: !77, line: 114, type: !976)
!4794 = !DILocation(line: 114, column: 73, scope: !4789)
!4795 = !DILocation(line: 116, column: 23, scope: !4789)
!4796 = !DILocation(line: 116, column: 9, scope: !4789)
!4797 = !DILocation(line: 116, column: 2, scope: !4789)
!4798 = distinct !DISubprogram(name: "offset_to_ptr", scope: !4799, file: !4799, line: 211, type: !4800, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4803)
!4799 = !DIFile(filename: "./include/linux/compiler.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2f04abb963d4806925887def212f010")
!4800 = !DISubroutineType(types: !4801)
!4801 = !{!74, !4802}
!4802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!4803 = !{!4804}
!4804 = !DILocalVariable(name: "off", arg: 1, scope: !4798, file: !4799, line: 211, type: !4802)
!4805 = !DILocation(line: 211, column: 46, scope: !4798)
!4806 = !DILocation(line: 213, column: 33, scope: !4798)
!4807 = !DILocation(line: 213, column: 18, scope: !4798)
!4808 = !DILocation(line: 213, column: 40, scope: !4798)
!4809 = !DILocation(line: 213, column: 39, scope: !4798)
!4810 = !DILocation(line: 213, column: 37, scope: !4798)
!4811 = !DILocation(line: 213, column: 9, scope: !4798)
!4812 = !DILocation(line: 213, column: 2, scope: !4798)
!4813 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !4814, file: !4814, line: 80, type: !4815, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4820)
!4814 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!4815 = !DISubroutineType(types: !4816)
!4816 = !{null, !4817, !234}
!4817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4818, size: 64)
!4818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4819)
!4819 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4820 = !{!4821, !4822}
!4821 = !DILocalVariable(name: "v", arg: 1, scope: !4813, file: !4814, line: 80, type: !4817)
!4822 = !DILocalVariable(name: "size", arg: 2, scope: !4813, file: !4814, line: 80, type: !234)
!4823 = !DILocation(line: 80, column: 74, scope: !4813)
!4824 = !DILocation(line: 80, column: 84, scope: !4813)
!4825 = !DILocation(line: 82, column: 20, scope: !4813)
!4826 = !DILocation(line: 82, column: 23, scope: !4813)
!4827 = !DILocation(line: 82, column: 2, scope: !4813)
!4828 = !DILocation(line: 83, column: 2, scope: !4813)
!4829 = !DILocation(line: 84, column: 1, scope: !4813)
!4830 = distinct !DISubprogram(name: "arch_set_bit", scope: !4831, file: !4831, line: 52, type: !3513, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4832)
!4831 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!4832 = !{!4833, !4834}
!4833 = !DILocalVariable(name: "nr", arg: 1, scope: !4830, file: !4831, line: 52, type: !223)
!4834 = !DILocalVariable(name: "addr", arg: 2, scope: !4830, file: !4831, line: 52, type: !3515)
!4835 = !DILocation(line: 52, column: 19, scope: !4830)
!4836 = !DILocation(line: 52, column: 47, scope: !4830)
!4837 = !DILocation(line: 54, column: 27, scope: !4838)
!4838 = distinct !DILexicalBlock(scope: !4830, file: !4831, line: 54, column: 6)
!4839 = !DILocation(line: 54, column: 6, scope: !4838)
!4840 = !DILocation(line: 54, column: 6, scope: !4830)
!4841 = !DILocation(line: 56, column: 6, scope: !4842)
!4842 = distinct !DILexicalBlock(scope: !4838, file: !4831, line: 54, column: 32)
!4843 = !DILocation(line: 57, column: 12, scope: !4842)
!4844 = !DILocation(line: 55, column: 3, scope: !4842)
!4845 = !{i64 2148347649, i64 2148347688, i64 2148347709, i64 2148347746, i64 2148347769, i64 2148347639}
!4846 = !DILocation(line: 59, column: 2, scope: !4842)
!4847 = !DILocation(line: 61, column: 8, scope: !4848)
!4848 = distinct !DILexicalBlock(scope: !4838, file: !4831, line: 59, column: 9)
!4849 = !DILocation(line: 61, column: 32, scope: !4848)
!4850 = !DILocation(line: 60, column: 3, scope: !4848)
!4851 = !{i64 2148347934, i64 2148347973, i64 2148347994, i64 2148348031, i64 2148348054, i64 2148347924}
!4852 = !DILocation(line: 63, column: 1, scope: !4830)
!4853 = distinct !DISubprogram(name: "kasan_check_write", scope: !4854, file: !4854, line: 44, type: !4855, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4857)
!4854 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!4855 = !DISubroutineType(types: !4856)
!4856 = !{!543, !4817, !7}
!4857 = !{!4858, !4859}
!4858 = !DILocalVariable(name: "p", arg: 1, scope: !4853, file: !4854, line: 44, type: !4817)
!4859 = !DILocalVariable(name: "size", arg: 2, scope: !4853, file: !4854, line: 44, type: !7)
!4860 = !DILocation(line: 44, column: 59, scope: !4853)
!4861 = !DILocation(line: 44, column: 75, scope: !4853)
!4862 = !DILocation(line: 46, column: 2, scope: !4853)
!4863 = distinct !DISubprogram(name: "kcsan_check_access", scope: !4864, file: !4864, line: 229, type: !4865, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4867)
!4864 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!4865 = !DISubroutineType(types: !4866)
!4866 = !{null, !4817, !234, !140}
!4867 = !{!4868, !4869, !4870}
!4868 = !DILocalVariable(name: "ptr", arg: 1, scope: !4863, file: !4864, line: 229, type: !4817)
!4869 = !DILocalVariable(name: "size", arg: 2, scope: !4863, file: !4864, line: 229, type: !234)
!4870 = !DILocalVariable(name: "type", arg: 3, scope: !4863, file: !4864, line: 230, type: !140)
!4871 = !DILocation(line: 229, column: 60, scope: !4863)
!4872 = !DILocation(line: 229, column: 72, scope: !4863)
!4873 = !DILocation(line: 230, column: 15, scope: !4863)
!4874 = !DILocation(line: 230, column: 23, scope: !4863)
!4875 = distinct !DISubprogram(name: "arch_clear_bit", scope: !4831, file: !4831, line: 72, type: !3513, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4876)
!4876 = !{!4877, !4878}
!4877 = !DILocalVariable(name: "nr", arg: 1, scope: !4875, file: !4831, line: 72, type: !223)
!4878 = !DILocalVariable(name: "addr", arg: 2, scope: !4875, file: !4831, line: 72, type: !3515)
!4879 = !DILocation(line: 72, column: 21, scope: !4875)
!4880 = !DILocation(line: 72, column: 49, scope: !4875)
!4881 = !DILocation(line: 74, column: 27, scope: !4882)
!4882 = distinct !DILexicalBlock(scope: !4875, file: !4831, line: 74, column: 6)
!4883 = !DILocation(line: 74, column: 6, scope: !4882)
!4884 = !DILocation(line: 74, column: 6, scope: !4875)
!4885 = !DILocation(line: 76, column: 6, scope: !4886)
!4886 = distinct !DILexicalBlock(scope: !4882, file: !4831, line: 74, column: 32)
!4887 = !DILocation(line: 77, column: 13, scope: !4886)
!4888 = !DILocation(line: 77, column: 12, scope: !4886)
!4889 = !DILocation(line: 75, column: 3, scope: !4886)
!4890 = !{i64 2148348937, i64 2148348976, i64 2148348997, i64 2148349034, i64 2148349057, i64 2148348927}
!4891 = !DILocation(line: 78, column: 2, scope: !4886)
!4892 = !DILocation(line: 80, column: 8, scope: !4893)
!4893 = distinct !DILexicalBlock(scope: !4882, file: !4831, line: 78, column: 9)
!4894 = !DILocation(line: 80, column: 32, scope: !4893)
!4895 = !DILocation(line: 79, column: 3, scope: !4893)
!4896 = !{i64 2148349222, i64 2148349261, i64 2148349282, i64 2148349319, i64 2148349342, i64 2148349212}
!4897 = !DILocation(line: 82, column: 1, scope: !4875)
