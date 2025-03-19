; ModuleID = 'arch/x86/entry/vsyscall/vsyscall_64.c'
source_filename = "arch/x86/entry/vsyscall/vsyscall_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm "\09.section \22__tracepoints_ptrs\22, \22a\22\09\09"
module asm "\09.balign 4\09\09\09\09\09"
module asm "\09.long \09__tracepoint_emulate_vsyscall - .\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm ".pushsection .static_call.text, \22ax\22\09\09"
module asm ".align 4\09\09\09\09\09\09"
module asm ".globl __SCT__tp_func_emulate_vsyscall\09\09"
module asm "__SCT__tp_func_emulate_vsyscall:\09\09\09"
module asm "986: "
module asm "\09.pushsection .discard.noendbr"
module asm "\09.long 986b"
module asm "\09.popsection"
module asm "\09.byte 0xe9; .long __traceiter_emulate_vsyscall - (. + 4)\09\09\09\09\09\09"
module asm ".byte 0x0f, 0xb9, 0xcc\09\09\09\09"
module asm ".type __SCT__tp_func_emulate_vsyscall, @function\09"
module asm ".size __SCT__tp_func_emulate_vsyscall, . - __SCT__tp_func_emulate_vsyscall "
module asm ".popsection\09\09\09\09\09"

%struct.static_call_key = type { ptr, %union.anon.0 }
%union.anon.0 = type { i64 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon }
%struct.atomic_t = type { i32 }
%union.anon = type { i64 }
%struct.trace_event_fields = type { ptr, %union.anon.21 }
%union.anon.21 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i8, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.22, %struct.trace_event, ptr, ptr, %union.anon.23, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.22 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.23 = type { ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.vm_area_struct = type { %union.anon.29, ptr, %struct.pgprot, %union.anon.31, i32, ptr, i8, %struct.anon.32, %struct.list_head, ptr, ptr, i64, ptr, ptr, %struct.atomic64_t, ptr, %struct.vm_userfaultfd_ctx }
%union.anon.29 = type { %struct.anon.30 }
%struct.anon.30 = type { i64, i64 }
%struct.pgprot = type { i64 }
%union.anon.31 = type { i64 }
%struct.anon.32 = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.pgd_t = type { i64 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.atomic_t }
%struct.pcpu_hot = type { %union.anon.33 }
%union.anon.33 = type { %struct.anon.34, [16 x i8] }
%struct.anon.34 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.cpumask = type { [1 x i64] }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpuinfo_x86 = type { %union.anon.35, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.37, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.35 = type { i32 }
%union.anon.37 = type { i64, [88 x i8] }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_data_offsets_emulate_vsyscall = type {}
%struct.trace_event_raw_emulate_vsyscall = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon.24, i64, i64, %union.anon.25 }
%union.anon.24 = type { i64 }
%union.anon.25 = type { i64 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i64, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, ptr, [32 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, %union.rcu_special, %struct.list_head, ptr, i64, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i16, i64, %struct.restart_block, i32, i32, i64, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, ptr, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, %struct.task_io_accounting, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.mutex, i32, ptr, %struct.mutex, %struct.list_head, ptr, i16, i16, ptr, i32, i32, i64, i32, i32, i32, i32, %struct.callback_head, %struct.tlbflush_unmap_batch, ptr, %struct.page_frag, ptr, i32, i32, i64, i64, i64, i64, ptr, ptr, %struct.kmap_ctrl, %struct.callback_head, %struct.refcount_struct, i32, ptr, %struct.timer_list, ptr, %struct.refcount_struct, ptr, ptr, i64, i64, i64, %struct.callback_head, i32, %struct.llist_head, %struct.llist_head, %struct.callback_head, [48 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i64, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.3, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.3 = type { i32 }
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
%struct.restart_block = type { i64, ptr, %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i64] }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.11, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.14 }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { i64, i64 }
%union.anon.14 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.mm_struct = type { %struct.anon.26, [0 x i64] }
%struct.anon.26 = type { %struct.anon.27, %struct.maple_tree, ptr, i64, i64, i64, i64, i64, ptr, %struct.atomic_t, %struct.atomic_t, ptr, i64, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [52 x i64], [4 x %struct.percpu_counter], ptr, %struct.mm_context_t, i64, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, %struct.uprobes_state, %struct.atomic64_t, %struct.work_struct, [48 x i8] }
%struct.anon.27 = type { %struct.atomic_t, [60 x i8] }
%struct.maple_tree = type { %union.anon.28, i32, ptr }
%union.anon.28 = type { %struct.spinlock }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.mm_context_t = type { i64, %struct.atomic64_t, i64, %struct.rw_semaphore, ptr, i64, %struct.mutex, ptr, ptr, %struct.atomic_t, i16, i16 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.p4d_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.pmd_t = type { i64 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i64, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i64, ptr, i32, ptr, i32, i64, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i64, i32, i32, i32, i64, i64, i64 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i64, i32 }
%struct.seq_buf = type { ptr, i64, i64 }
%struct.hlist_head = type { ptr }

@__tpstrtab_emulate_vsyscall = internal constant [17 x i8] c"emulate_vsyscall\00", section "__tracepoints_strings", align 16, !dbg !0
@__SCK__tp_func_emulate_vsyscall = hidden global %struct.static_call_key { ptr @__traceiter_emulate_vsyscall, %union.anon.0 { i64 1 } }, align 8, !dbg !5892
@__tracepoint_emulate_vsyscall = hidden global %struct.tracepoint { ptr @__tpstrtab_emulate_vsyscall, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_emulate_vsyscall, ptr @__SCT__tp_func_emulate_vsyscall, ptr @__traceiter_emulate_vsyscall, ptr @__probestub_emulate_vsyscall, ptr null, ptr null, ptr null }, section "__tracepoints", align 8, !dbg !5890
@str__vsyscall__trace_system_name = internal constant [9 x i8] c"vsyscall\00", align 1, !dbg !5950
@trace_event_fields_emulate_vsyscall = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.10, %union.anon.21 { %struct.anon.20 { ptr @.str.11, i32 4, i32 4, i8 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 16, !dbg !5961
@event_class_emulate_vsyscall = internal global %struct.trace_event_class { ptr @str__vsyscall__trace_system_name, ptr @trace_event_raw_event_emulate_vsyscall, ptr @perf_trace_emulate_vsyscall, ptr @trace_event_reg, ptr @trace_event_fields_emulate_vsyscall, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_emulate_vsyscall, i64 48), ptr getelementptr (i8, ptr @event_class_emulate_vsyscall, i64 48) }, ptr @trace_event_raw_init }, section ".ref.data", align 8, !dbg !5894
@trace_event_type_funcs_emulate_vsyscall = internal global %struct.trace_event_functions { ptr @trace_raw_output_emulate_vsyscall, ptr null, ptr null, ptr null }, align 8, !dbg !5964
@print_fmt_emulate_vsyscall = internal global [19 x i8] c"\22nr = %d\22, REC->nr\00", align 16, !dbg !5969
@event_emulate_vsyscall = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_emulate_vsyscall, %union.anon.22 { ptr @__tracepoint_emulate_vsyscall }, %struct.trace_event { %struct.hlist_node zeroinitializer, i32 0, ptr @trace_event_type_funcs_emulate_vsyscall }, ptr @print_fmt_emulate_vsyscall, ptr null, %union.anon.23 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4, !dbg !5896
@__event_emulate_vsyscall = internal global ptr @event_emulate_vsyscall, section "_ftrace_events", align 8, !dbg !5898
@__setup_str_vsyscall_setup = internal constant [9 x i8] c"vsyscall\00", section ".init.rodata", align 1, !dbg !5974
@__setup_vsyscall_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_vsyscall_setup, ptr @vsyscall_setup, i32 1 }, section ".init.setup", align 8, !dbg !5900
@vsyscall_mode = internal global i32 1, section ".data..ro_after_init", align 4, !dbg !5983
@.str = private unnamed_addr constant [3 x i8] c"\016\00", align 1, !dbg !5911
@.str.1 = private unnamed_addr constant [95 x i8] c"vsyscall read attempt denied -- look up the vsyscall kernel parameter if you need a workaround\00", align 1, !dbg !5914
@.str.2 = private unnamed_addr constant [38 x i8] c"arch/x86/entry/vsyscall/vsyscall_64.c\00", align 1, !dbg !5919
@.str.3 = private unnamed_addr constant [38 x i8] c"vsyscall attempted with vsyscall=none\00", align 1, !dbg !5924
@.str.4 = private unnamed_addr constant [3 x i8] c"\014\00", align 1, !dbg !5926
@.str.5 = private unnamed_addr constant [121 x i8] c"misaligned vsyscall (exploit attempt or buggy program) -- look up the vsyscall kernel parameter if you need a workaround\00", align 1, !dbg !5928
@.str.6 = private unnamed_addr constant [43 x i8] c"vsyscall with bad stack (exploit attempt?)\00", align 1, !dbg !5933
@.str.7 = private unnamed_addr constant [3 x i8] c"\017\00", align 1, !dbg !5938
@.str.8 = private unnamed_addr constant [41 x i8] c"seccomp tried to change syscall nr or ip\00", align 1, !dbg !5940
@.str.9 = private unnamed_addr constant [34 x i8] c"vsyscall fault (exploit attempt?)\00", align 1, !dbg !5945
@gate_vma = internal global %struct.vm_area_struct { %union.anon.29 { %struct.anon.30 { i64 -10485760, i64 -10481664 } }, ptr null, %struct.pgprot { i64 37 }, %union.anon.31 { i64 5 }, i32 0, ptr null, i8 0, %struct.anon.32 zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr @gate_vma_ops, i64 0, ptr null, ptr null, %struct.atomic64_t zeroinitializer, ptr null, %struct.vm_userfaultfd_ctx zeroinitializer }, section ".data..ro_after_init", align 8, !dbg !6034
@__vsyscall_page = external dso_local global i8, align 1
@phys_base = external dso_local global i64, align 8
@__default_kernel_pte_mask = external dso_local global i64, align 8
@init_top_pgt = external dso_local global [0 x %struct.pgd_t], align 8
@.str.10 = private unnamed_addr constant [4 x i8] c"int\00", align 1, !dbg !5956
@.str.11 = private unnamed_addr constant [3 x i8] c"nr\00", align 1, !dbg !5959
@.str.12 = private unnamed_addr constant [9 x i8] c"nr = %d\0A\00", align 1, !dbg !5966
@this_cpu_off = external dso_local global i64, section ".data..percpu..read_mostly", align 8
@.str.13 = private unnamed_addr constant [8 x i8] c"emulate\00", align 1, !dbg !5976
@.str.14 = private unnamed_addr constant [6 x i8] c"xonly\00", align 1, !dbg !5978
@.str.15 = private unnamed_addr constant [5 x i8] c"none\00", align 1, !dbg !5980
@show_unhandled_signals = external dso_local global i32, align 4
@warn_bad_vsyscall._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 5000, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8, !dbg !5985
@__func__.warn_bad_vsyscall = private unnamed_addr constant [18 x i8] c"warn_bad_vsyscall\00", align 1, !dbg !5994
@.str.16 = private unnamed_addr constant [54 x i8] c"%s%s[%d] %s ip:%lx cs:%x sp:%lx ax:%lx si:%lx di:%lx\0A\00", align 1, !dbg !5999
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str.17 = private unnamed_addr constant [41 x i8] c"arch/x86/entry/vsyscall/vsyscall_trace.h\00", align 1, !dbg !6004
@trace_emulate_vsyscall.__UNIQUE_ID___addressable___SCK__tp_func_emulate_vsyscall323 = internal global ptr @__SCK__tp_func_emulate_vsyscall, section ".discard.addressable", align 8, !dbg !6006
@trace_emulate_vsyscall.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace324 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !6032
@__SCK__preempt_schedule_notrace = external dso_local global %struct.static_call_key, align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@gate_vma_ops = internal constant %struct.vm_operations_struct { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gate_vma_name, ptr null, ptr null, ptr null }, align 8, !dbg !6036
@.str.18 = private unnamed_addr constant [11 x i8] c"[vsyscall]\00", align 1, !dbg !6038
@pgdir_shift = external dso_local global i32, align 4
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@page_offset_base = external dso_local global i64, align 8
@ptrs_per_p4d = external dso_local global i32, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__tracepoint_emulate_vsyscall, ptr @event_class_emulate_vsyscall, ptr @event_emulate_vsyscall, ptr @__event_emulate_vsyscall, ptr @__setup_vsyscall_setup, ptr @trace_emulate_vsyscall.__UNIQUE_ID___addressable___SCK__tp_func_emulate_vsyscall323, ptr @trace_emulate_vsyscall.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace324], section "llvm.metadata"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_emulate_vsyscall(ptr noundef, i32 noundef) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__traceiter_emulate_vsyscall(ptr noundef %__data, i32 noundef %nr) #1 align 16 !dbg !6056 {
entry:
  %__data.addr = alloca ptr, align 8
  %nr.addr = alloca i32, align 4
  %it_func_ptr = alloca ptr, align 8
  %it_func = alloca ptr, align 8
  %__UNIQUE_ID_rcu329 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  store ptr %__data, ptr %__data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__data.addr, metadata !6060, metadata !DIExpression()), !dbg !6066
  store i32 %nr, ptr %nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6061, metadata !DIExpression()), !dbg !6066
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #14, !dbg !6066
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !6062, metadata !DIExpression()), !dbg !6066
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func) #14, !dbg !6066
  call void @llvm.dbg.declare(metadata ptr %it_func, metadata !6063, metadata !DIExpression()), !dbg !6066
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu329) #14, !dbg !6067
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu329, metadata !6064, metadata !DIExpression()), !dbg !6067
  br label %do.body, !dbg !6068

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6070

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6070

do.end:                                           ; preds = %do.cond
  %0 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_emulate_vsyscall, i32 0, i32 8), align 8, !dbg !6068
  store ptr %0, ptr %tmp, align 8, !dbg !6070
  %1 = load ptr, ptr %tmp, align 8, !dbg !6068
  store ptr %1, ptr %__UNIQUE_ID_rcu329, align 8, !dbg !6067
  %2 = load ptr, ptr %__UNIQUE_ID_rcu329, align 8, !dbg !6067
  store ptr %2, ptr %tmp1, align 8, !dbg !6067
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu329) #14, !dbg !6066
  %3 = load ptr, ptr %tmp1, align 8, !dbg !6067
  store ptr %3, ptr %it_func_ptr, align 8, !dbg !6066
  %4 = load ptr, ptr %it_func_ptr, align 8, !dbg !6072
  %tobool = icmp ne ptr %4, null, !dbg !6072
  br i1 %tobool, label %if.then, label %if.end, !dbg !6066

if.then:                                          ; preds = %do.end
  br label %do.body2, !dbg !6074

do.body2:                                         ; preds = %do.cond7, %if.then
  br label %do.body3, !dbg !6076

do.body3:                                         ; preds = %do.body2
  br label %do.cond4, !dbg !6079

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !6079

do.end5:                                          ; preds = %do.cond4
  %5 = load ptr, ptr %it_func_ptr, align 8, !dbg !6076
  %func = getelementptr inbounds %struct.tracepoint_func, ptr %5, i32 0, i32 0, !dbg !6076
  %6 = load volatile ptr, ptr %func, align 8, !dbg !6076
  store ptr %6, ptr %tmp6, align 8, !dbg !6079
  %7 = load ptr, ptr %tmp6, align 8, !dbg !6076
  store ptr %7, ptr %it_func, align 8, !dbg !6081
  %8 = load ptr, ptr %it_func_ptr, align 8, !dbg !6081
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1, !dbg !6081
  %9 = load ptr, ptr %data, align 8, !dbg !6081
  store ptr %9, ptr %__data.addr, align 8, !dbg !6081
  %10 = load ptr, ptr %it_func, align 8, !dbg !6081
  %11 = load ptr, ptr %__data.addr, align 8, !dbg !6081
  %12 = load i32, ptr %nr.addr, align 4, !dbg !6081
  call void %10(ptr noundef %11, i32 noundef %12) #15, !dbg !6081
  br label %do.cond7, !dbg !6081

do.cond7:                                         ; preds = %do.end5
  %13 = load ptr, ptr %it_func_ptr, align 8, !dbg !6074
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %13, i32 1, !dbg !6074
  store ptr %incdec.ptr, ptr %it_func_ptr, align 8, !dbg !6074
  %func8 = getelementptr inbounds %struct.tracepoint_func, ptr %incdec.ptr, i32 0, i32 0, !dbg !6074
  %14 = load ptr, ptr %func8, align 8, !dbg !6074
  %tobool9 = icmp ne ptr %14, null, !dbg !6081
  br i1 %tobool9, label %do.body2, label %do.end10, !dbg !6081, !llvm.loop !6082

do.end10:                                         ; preds = %do.cond7
  br label %if.end, !dbg !6074

if.end:                                           ; preds = %do.end10, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func) #14, !dbg !6066
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #14, !dbg !6066
  ret i32 0, !dbg !6066
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__probestub_emulate_vsyscall(ptr noundef %__data, i32 noundef %nr) #1 align 16 !dbg !6085 {
entry:
  %__data.addr = alloca ptr, align 8
  %nr.addr = alloca i32, align 4
  store ptr %__data, ptr %__data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__data.addr, metadata !6087, metadata !DIExpression()), !dbg !6089
  store i32 %nr, ptr %nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6088, metadata !DIExpression()), !dbg !6089
  ret void, !dbg !6089
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_event_raw_event_emulate_vsyscall(ptr noundef %__data, i32 noundef %nr) #1 align 16 !dbg !6090 {
entry:
  %__data.addr = alloca ptr, align 8
  %nr.addr = alloca i32, align 4
  store ptr %__data, ptr %__data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__data.addr, metadata !6092, metadata !DIExpression()), !dbg !6094
  store i32 %nr, ptr %nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6093, metadata !DIExpression()), !dbg !6094
  %0 = load ptr, ptr %__data.addr, align 8, !dbg !6094
  %1 = load i32, ptr %nr.addr, align 4, !dbg !6094
  call void @do_trace_event_raw_event_emulate_vsyscall(ptr noundef %0, i32 noundef %1) #15, !dbg !6094
  ret void, !dbg !6094
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @perf_trace_emulate_vsyscall(ptr noundef %__data, i32 noundef %nr) #1 align 16 !dbg !6095 {
entry:
  %__data.addr = alloca ptr, align 8
  %nr.addr = alloca i32, align 4
  %event_call = alloca ptr, align 8
  %__data_offsets = alloca %struct.trace_event_data_offsets_emulate_vsyscall, align 1
  %entry1 = alloca ptr, align 8
  %__regs = alloca ptr, align 8
  %__count = alloca i64, align 8
  %__task = alloca ptr, align 8
  %head = alloca ptr, align 8
  %__entry_size = alloca i32, align 4
  %__data_size = alloca i32, align 4
  %rctx = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp2 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %__data, ptr %__data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__data.addr, metadata !6097, metadata !DIExpression()), !dbg !6115
  store i32 %nr, ptr %nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6098, metadata !DIExpression()), !dbg !6115
  call void @llvm.lifetime.start.p0(i64 8, ptr %event_call) #14, !dbg !6115
  call void @llvm.dbg.declare(metadata ptr %event_call, metadata !6099, metadata !DIExpression()), !dbg !6115
  %0 = load ptr, ptr %__data.addr, align 8, !dbg !6115
  store ptr %0, ptr %event_call, align 8, !dbg !6115
  call void @llvm.lifetime.start.p0(i64 0, ptr %__data_offsets) #14, !dbg !6115
  call void @llvm.dbg.declare(metadata ptr %__data_offsets, metadata !6100, metadata !DIExpression()), !dbg !6115
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #14, !dbg !6115
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !6102, metadata !DIExpression()), !dbg !6115
  call void @llvm.lifetime.start.p0(i64 8, ptr %__regs) #14, !dbg !6115
  call void @llvm.dbg.declare(metadata ptr %__regs, metadata !6103, metadata !DIExpression()), !dbg !6115
  call void @llvm.lifetime.start.p0(i64 8, ptr %__count) #14, !dbg !6115
  call void @llvm.dbg.declare(metadata ptr %__count, metadata !6104, metadata !DIExpression()), !dbg !6115
  store i64 1, ptr %__count, align 8, !dbg !6115
  call void @llvm.lifetime.start.p0(i64 8, ptr %__task) #14, !dbg !6115
  call void @llvm.dbg.declare(metadata ptr %__task, metadata !6105, metadata !DIExpression()), !dbg !6115
  store ptr null, ptr %__task, align 8, !dbg !6115
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #14, !dbg !6115
  call void @llvm.dbg.declare(metadata ptr %head, metadata !6106, metadata !DIExpression()), !dbg !6115
  call void @llvm.lifetime.start.p0(i64 4, ptr %__entry_size) #14, !dbg !6115
  call void @llvm.dbg.declare(metadata ptr %__entry_size, metadata !6107, metadata !DIExpression()), !dbg !6115
  call void @llvm.lifetime.start.p0(i64 4, ptr %__data_size) #14, !dbg !6115
  call void @llvm.dbg.declare(metadata ptr %__data_size, metadata !6108, metadata !DIExpression()), !dbg !6115
  call void @llvm.lifetime.start.p0(i64 4, ptr %rctx) #14, !dbg !6115
  call void @llvm.dbg.declare(metadata ptr %rctx, metadata !6109, metadata !DIExpression()), !dbg !6115
  %1 = load i32, ptr %nr.addr, align 4, !dbg !6115
  %call = call i32 @trace_event_get_offsets_emulate_vsyscall(ptr noundef %__data_offsets, i32 noundef %1) #15, !dbg !6115
  store i32 %call, ptr %__data_size, align 4, !dbg !6115
  br label %do.body, !dbg !6116

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !6117
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6110, metadata !DIExpression()), !dbg !6117
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6117
  %2 = load ptr, ptr %__vpp_verify, align 8, !dbg !6117
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !6116
  br label %do.cond, !dbg !6117

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6117

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #14, !dbg !6118
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !6113, metadata !DIExpression()), !dbg !6118
  %3 = load ptr, ptr %event_call, align 8, !dbg !6118
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %3, i32 0, i32 10, !dbg !6118
  %4 = load ptr, ptr %perf_events, align 8, !dbg !6118
  %5 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr %4) #16, !dbg !6118, !srcloc !6119
  store i64 %5, ptr %tcp_ptr__, align 8, !dbg !6118
  %6 = load i64, ptr %tcp_ptr__, align 8, !dbg !6118
  %7 = inttoptr i64 %6 to ptr, !dbg !6118
  store ptr %7, ptr %tmp2, align 8, !dbg !6118
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #14, !dbg !6116
  %8 = load ptr, ptr %tmp2, align 8, !dbg !6118
  store ptr %8, ptr %tmp, align 8, !dbg !6117
  %9 = load ptr, ptr %tmp, align 8, !dbg !6116
  store ptr %9, ptr %head, align 8, !dbg !6115
  %10 = load ptr, ptr %event_call, align 8, !dbg !6120
  %call3 = call zeroext i1 @bpf_prog_array_valid(ptr noundef %10) #15, !dbg !6120
  br i1 %call3, label %if.end, label %land.lhs.true, !dbg !6120

land.lhs.true:                                    ; preds = %do.end
  %11 = load ptr, ptr %__task, align 8, !dbg !6120
  %tobool = icmp ne ptr %11, null, !dbg !6120
  %lnot = xor i1 %tobool, true, !dbg !6120
  %lnot.ext = zext i1 %lnot to i32, !dbg !6120
  %12 = call i1 @llvm.is.constant.i32(i32 %lnot.ext), !dbg !6120
  br i1 %12, label %land.lhs.true4, label %if.end, !dbg !6120

land.lhs.true4:                                   ; preds = %land.lhs.true
  %13 = load ptr, ptr %__task, align 8, !dbg !6120
  %tobool5 = icmp ne ptr %13, null, !dbg !6120
  br i1 %tobool5, label %if.end, label %land.lhs.true6, !dbg !6120

land.lhs.true6:                                   ; preds = %land.lhs.true4
  %14 = load ptr, ptr %head, align 8, !dbg !6120
  %call7 = call i32 @hlist_empty(ptr noundef %14) #15, !dbg !6120
  %tobool8 = icmp ne i32 %call7, 0, !dbg !6120
  br i1 %tobool8, label %if.then, label %if.end, !dbg !6115

if.then:                                          ; preds = %land.lhs.true6
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6120

if.end:                                           ; preds = %land.lhs.true6, %land.lhs.true4, %land.lhs.true, %do.end
  %15 = load i32, ptr %__data_size, align 4, !dbg !6115
  %conv = sext i32 %15 to i64, !dbg !6115
  %add = add i64 %conv, 12, !dbg !6115
  %add9 = add i64 %add, 4, !dbg !6115
  %add10 = add i64 %add9, 7, !dbg !6115
  %and = and i64 %add10, -8, !dbg !6115
  %conv11 = trunc i64 %and to i32, !dbg !6115
  store i32 %conv11, ptr %__entry_size, align 4, !dbg !6115
  %16 = load i32, ptr %__entry_size, align 4, !dbg !6115
  %conv12 = sext i32 %16 to i64, !dbg !6115
  %sub = sub i64 %conv12, 4, !dbg !6115
  %conv13 = trunc i64 %sub to i32, !dbg !6115
  store i32 %conv13, ptr %__entry_size, align 4, !dbg !6115
  %17 = load i32, ptr %__entry_size, align 4, !dbg !6115
  %call14 = call ptr @perf_trace_buf_alloc(i32 noundef %17, ptr noundef %__regs, ptr noundef %rctx) #15, !dbg !6115
  store ptr %call14, ptr %entry1, align 8, !dbg !6115
  %18 = load ptr, ptr %entry1, align 8, !dbg !6122
  %tobool15 = icmp ne ptr %18, null, !dbg !6122
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !6115

if.then16:                                        ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6122

if.end17:                                         ; preds = %if.end
  %19 = load ptr, ptr %__regs, align 8, !dbg !6115
  call void @perf_fetch_caller_regs(ptr noundef %19) #15, !dbg !6115
  %20 = load i32, ptr %nr.addr, align 4, !dbg !6124
  %21 = load ptr, ptr %entry1, align 8, !dbg !6124
  %nr18 = getelementptr inbounds %struct.trace_event_raw_emulate_vsyscall, ptr %21, i32 0, i32 1, !dbg !6124
  store i32 %20, ptr %nr18, align 4, !dbg !6124
  %22 = load ptr, ptr %entry1, align 8, !dbg !6115
  %23 = load i32, ptr %__entry_size, align 4, !dbg !6115
  %24 = load i32, ptr %rctx, align 4, !dbg !6115
  %25 = load ptr, ptr %event_call, align 8, !dbg !6115
  %26 = load i64, ptr %__count, align 8, !dbg !6115
  %27 = load ptr, ptr %__regs, align 8, !dbg !6115
  %28 = load ptr, ptr %head, align 8, !dbg !6115
  %29 = load ptr, ptr %__task, align 8, !dbg !6115
  call void @perf_trace_run_bpf_submit(ptr noundef %22, i32 noundef %23, i32 noundef %24, ptr noundef %25, i64 noundef %26, ptr noundef %27, ptr noundef %28, ptr noundef %29) #15, !dbg !6115
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6115
  br label %cleanup, !dbg !6115

cleanup:                                          ; preds = %if.end17, %if.then16, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rctx) #14, !dbg !6115
  call void @llvm.lifetime.end.p0(i64 4, ptr %__data_size) #14, !dbg !6115
  call void @llvm.lifetime.end.p0(i64 4, ptr %__entry_size) #14, !dbg !6115
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #14, !dbg !6115
  call void @llvm.lifetime.end.p0(i64 8, ptr %__task) #14, !dbg !6115
  call void @llvm.lifetime.end.p0(i64 8, ptr %__count) #14, !dbg !6115
  call void @llvm.lifetime.end.p0(i64 8, ptr %__regs) #14, !dbg !6115
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #14, !dbg !6115
  call void @llvm.lifetime.end.p0(i64 0, ptr %__data_offsets) #14, !dbg !6115
  call void @llvm.lifetime.end.p0(i64 8, ptr %event_call) #14, !dbg !6115
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6115

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #0

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @vsyscall_setup(ptr noundef %str) #4 section ".init.text" align 16 !dbg !6126 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !6128, metadata !DIExpression()), !dbg !6129
  %0 = load ptr, ptr %str.addr, align 8, !dbg !6130
  %tobool = icmp ne ptr %0, null, !dbg !6130
  br i1 %tobool, label %if.then, label %if.end13, !dbg !6132

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %str.addr, align 8, !dbg !6133
  %call = call i32 @strcmp(ptr noundef @.str.13, ptr noundef %1) #15, !dbg !6136
  %tobool1 = icmp ne i32 %call, 0, !dbg !6136
  br i1 %tobool1, label %if.else, label %if.then2, !dbg !6137

if.then2:                                         ; preds = %if.then
  store i32 0, ptr @vsyscall_mode, align 4, !dbg !6138
  br label %if.end12, !dbg !6139

if.else:                                          ; preds = %if.then
  %2 = load ptr, ptr %str.addr, align 8, !dbg !6140
  %call3 = call i32 @strcmp(ptr noundef @.str.14, ptr noundef %2) #15, !dbg !6142
  %tobool4 = icmp ne i32 %call3, 0, !dbg !6142
  br i1 %tobool4, label %if.else6, label %if.then5, !dbg !6143

if.then5:                                         ; preds = %if.else
  store i32 1, ptr @vsyscall_mode, align 4, !dbg !6144
  br label %if.end11, !dbg !6145

if.else6:                                         ; preds = %if.else
  %3 = load ptr, ptr %str.addr, align 8, !dbg !6146
  %call7 = call i32 @strcmp(ptr noundef @.str.15, ptr noundef %3) #15, !dbg !6148
  %tobool8 = icmp ne i32 %call7, 0, !dbg !6148
  br i1 %tobool8, label %if.else10, label %if.then9, !dbg !6149

if.then9:                                         ; preds = %if.else6
  store i32 2, ptr @vsyscall_mode, align 4, !dbg !6150
  br label %if.end, !dbg !6151

if.else10:                                        ; preds = %if.else6
  store i32 -22, ptr %retval, align 4, !dbg !6152
  br label %return, !dbg !6152

if.end:                                           ; preds = %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then5
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.then2
  store i32 0, ptr %retval, align 4, !dbg !6153
  br label %return, !dbg !6153

if.end13:                                         ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !6154
  br label %return, !dbg !6154

return:                                           ; preds = %if.end13, %if.end12, %if.else10
  %4 = load i32, ptr %retval, align 4, !dbg !6155
  ret i32 %4, !dbg !6155
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @emulate_vsyscall(i64 noundef %error_code, ptr noundef %regs, i64 noundef %address) #1 align 16 !dbg !6156 {
entry:
  %retval = alloca i1, align 1
  %error_code.addr = alloca i64, align 8
  %regs.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  %caller = alloca i64, align 8
  %vsyscall_nr = alloca i32, align 4
  %syscall_nr = alloca i32, align 4
  %tmp = alloca i32, align 4
  %ret = alloca i64, align 8
  %orig_dx = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp26 = alloca i64, align 8
  %tmp42 = alloca i64, align 8
  %__ret_gu = alloca i32, align 4
  %__val_gu = alloca i64, align 8
  %__tmp = alloca i64, align 8
  %tmp45 = alloca i64, align 8
  %tmp46 = alloca i64, align 8
  store i64 %error_code, ptr %error_code.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error_code.addr, metadata !6160, metadata !DIExpression()), !dbg !6184
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6161, metadata !DIExpression()), !dbg !6185
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !6162, metadata !DIExpression()), !dbg !6186
  call void @llvm.lifetime.start.p0(i64 8, ptr %caller) #14, !dbg !6187
  call void @llvm.dbg.declare(metadata ptr %caller, metadata !6163, metadata !DIExpression()), !dbg !6188
  call void @llvm.lifetime.start.p0(i64 4, ptr %vsyscall_nr) #14, !dbg !6189
  call void @llvm.dbg.declare(metadata ptr %vsyscall_nr, metadata !6164, metadata !DIExpression()), !dbg !6190
  call void @llvm.lifetime.start.p0(i64 4, ptr %syscall_nr) #14, !dbg !6189
  call void @llvm.dbg.declare(metadata ptr %syscall_nr, metadata !6165, metadata !DIExpression()), !dbg !6191
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #14, !dbg !6189
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !6166, metadata !DIExpression()), !dbg !6192
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #14, !dbg !6193
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6167, metadata !DIExpression()), !dbg !6194
  call void @llvm.lifetime.start.p0(i64 8, ptr %orig_dx) #14, !dbg !6195
  call void @llvm.dbg.declare(metadata ptr %orig_dx, metadata !6168, metadata !DIExpression()), !dbg !6196
  %0 = load i64, ptr %error_code.addr, align 8, !dbg !6197
  %and = and i64 %0, 6, !dbg !6199
  %cmp = icmp ne i64 %and, 4, !dbg !6200
  br i1 %cmp, label %if.then, label %if.end, !dbg !6201

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !6202
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6202

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %error_code.addr, align 8, !dbg !6203
  %and1 = and i64 %1, 16, !dbg !6205
  %tobool = icmp ne i64 %and1, 0, !dbg !6205
  br i1 %tobool, label %if.end6, label %if.then2, !dbg !6206

if.then2:                                         ; preds = %if.end
  %2 = load i32, ptr @vsyscall_mode, align 4, !dbg !6207
  %cmp3 = icmp eq i32 %2, 0, !dbg !6210
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !6211

if.then4:                                         ; preds = %if.then2
  store i1 false, ptr %retval, align 1, !dbg !6212
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6212

if.end5:                                          ; preds = %if.then2
  %3 = load ptr, ptr %regs.addr, align 8, !dbg !6213
  call void @warn_bad_vsyscall(ptr noundef @.str, ptr noundef %3, ptr noundef @.str.1) #15, !dbg !6214
  store i1 false, ptr %retval, align 1, !dbg !6215
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6215

if.end6:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !6216
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6169, metadata !DIExpression()), !dbg !6216
  %4 = load i64, ptr %address.addr, align 8, !dbg !6216
  %5 = load ptr, ptr %regs.addr, align 8, !dbg !6216
  %ip = getelementptr inbounds %struct.pt_regs, ptr %5, i32 0, i32 16, !dbg !6216
  %6 = load i64, ptr %ip, align 8, !dbg !6216
  %cmp7 = icmp ne i64 %4, %6, !dbg !6216
  %lnot = xor i1 %cmp7, true, !dbg !6216
  %lnot8 = xor i1 %lnot, true, !dbg !6216
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !6216
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6216
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !6217
  %tobool9 = icmp ne i32 %7, 0, !dbg !6217
  %lnot10 = xor i1 %tobool9, true, !dbg !6217
  %lnot12 = xor i1 %lnot10, true, !dbg !6217
  %lnot.ext13 = zext i1 %lnot12 to i32, !dbg !6217
  %conv = sext i32 %lnot.ext13 to i64, !dbg !6217
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6217
  %tobool14 = icmp ne i64 %expval, 0, !dbg !6217
  br i1 %tobool14, label %if.then15, label %if.end25, !dbg !6216

if.then15:                                        ; preds = %if.end6
  br label %do.body, !dbg !6217

do.body:                                          ; preds = %if.then15
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !6218
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6171, metadata !DIExpression()), !dbg !6218
  store i32 2307, ptr %__flags, align 4, !dbg !6218
  br label %do.body16, !dbg !6218

do.body16:                                        ; preds = %do.body
  br label %do.cond, !dbg !6219

do.cond:                                          ; preds = %do.body16
  br label %do.end, !dbg !6219

do.end:                                           ; preds = %do.cond
  br label %do.body17, !dbg !6218

do.body17:                                        ; preds = %do.end
  %8 = load i32, ptr %__flags, align 4, !dbg !6221
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 144, i32 %8, i64 12) #14, !dbg !6221, !srcloc !6223
  br label %do.cond18, !dbg !6221

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !6221

do.end19:                                         ; preds = %do.cond18
  br label %do.body20, !dbg !6218

do.body20:                                        ; preds = %do.end19
  br label %do.cond21, !dbg !6224

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !6224

do.end22:                                         ; preds = %do.cond21
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !6217
  br label %do.cond23, !dbg !6218

do.cond23:                                        ; preds = %do.end22
  br label %do.end24, !dbg !6218

do.end24:                                         ; preds = %do.cond23
  br label %if.end25, !dbg !6218

if.end25:                                         ; preds = %do.end24, %if.end6
  %9 = load i32, ptr %__ret_warn_on, align 4, !dbg !6216
  %tobool27 = icmp ne i32 %9, 0, !dbg !6216
  %lnot28 = xor i1 %tobool27, true, !dbg !6216
  %lnot30 = xor i1 %lnot28, true, !dbg !6216
  %lnot.ext31 = zext i1 %lnot30 to i32, !dbg !6216
  %conv32 = sext i32 %lnot.ext31 to i64, !dbg !6216
  %expval33 = call i64 @llvm.expect.i64(i64 %conv32, i64 0), !dbg !6216
  store i64 %expval33, ptr %tmp26, align 8, !dbg !6217
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !6226
  %10 = load i64, ptr %tmp26, align 8, !dbg !6216
  %11 = load i32, ptr @vsyscall_mode, align 4, !dbg !6227
  %cmp34 = icmp eq i32 %11, 2, !dbg !6229
  br i1 %cmp34, label %if.then36, label %if.end37, !dbg !6230

if.then36:                                        ; preds = %if.end25
  %12 = load ptr, ptr %regs.addr, align 8, !dbg !6231
  call void @warn_bad_vsyscall(ptr noundef @.str, ptr noundef %12, ptr noundef @.str.3) #15, !dbg !6233
  store i1 false, ptr %retval, align 1, !dbg !6234
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6234

if.end37:                                         ; preds = %if.end25
  %13 = load i64, ptr %address.addr, align 8, !dbg !6235
  %call = call i32 @addr_to_vsyscall_nr(i64 noundef %13) #15, !dbg !6236
  store i32 %call, ptr %vsyscall_nr, align 4, !dbg !6237
  %14 = load i32, ptr %vsyscall_nr, align 4, !dbg !6238
  call void @trace_emulate_vsyscall(i32 noundef %14) #15, !dbg !6239
  %15 = load i32, ptr %vsyscall_nr, align 4, !dbg !6240
  %cmp38 = icmp slt i32 %15, 0, !dbg !6242
  br i1 %cmp38, label %if.then40, label %if.end41, !dbg !6243

if.then40:                                        ; preds = %if.end37
  %16 = load ptr, ptr %regs.addr, align 8, !dbg !6244
  call void @warn_bad_vsyscall(ptr noundef @.str.4, ptr noundef %16, ptr noundef @.str.5) #15, !dbg !6246
  br label %sigsegv, !dbg !6247

if.end41:                                         ; preds = %if.end37
  call void @might_fault() #15, !dbg !6248
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_gu) #14, !dbg !6249
  call void @llvm.dbg.declare(metadata ptr %__ret_gu, metadata !6174, metadata !DIExpression()), !dbg !6249
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val_gu) #14, !dbg !6249
  call void @llvm.dbg.declare(metadata ptr %__val_gu, metadata !6178, metadata !DIExpression()), !dbg !6249
  %17 = call i64 @llvm.read_register.i64(metadata !6046), !dbg !6249
  %18 = load ptr, ptr %regs.addr, align 8, !dbg !6249
  %sp = getelementptr inbounds %struct.pt_regs, ptr %18, i32 0, i32 19, !dbg !6249
  %19 = load i64, ptr %sp, align 8, !dbg !6249
  %20 = inttoptr i64 %19 to ptr, !dbg !6249
  %21 = call { ptr, i64, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %20, i64 8, i64 %17) #14, !dbg !6249, !srcloc !6250
  %asmresult = extractvalue { ptr, i64, i64 } %21, 0, !dbg !6249
  %asmresult43 = extractvalue { ptr, i64, i64 } %21, 1, !dbg !6249
  %asmresult44 = extractvalue { ptr, i64, i64 } %21, 2, !dbg !6249
  %22 = ptrtoint ptr %asmresult to i64, !dbg !6249
  %23 = trunc i64 %22 to i32, !dbg !6249
  store i32 %23, ptr %__ret_gu, align 4, !dbg !6249
  store i64 %asmresult43, ptr %__val_gu, align 8, !dbg !6249
  call void @llvm.write_register.i64(metadata !6046, i64 %asmresult44), !dbg !6249
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp) #14, !dbg !6251
  call void @llvm.dbg.declare(metadata ptr %__tmp, metadata !6179, metadata !DIExpression()), !dbg !6251
  %24 = load i64, ptr %__val_gu, align 8, !dbg !6251
  store i64 %24, ptr %__tmp, align 8, !dbg !6251
  call void @kmsan_unpoison_memory(ptr noundef %__tmp, i64 noundef 8) #15, !dbg !6251
  %25 = load i64, ptr %__tmp, align 8, !dbg !6251
  store i64 %25, ptr %__val_gu, align 8, !dbg !6251
  store i64 %25, ptr %tmp45, align 8, !dbg !6251
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp) #14, !dbg !6249
  %26 = load i64, ptr %tmp45, align 8, !dbg !6251
  %27 = load i64, ptr %__val_gu, align 8, !dbg !6249
  store i64 %27, ptr %caller, align 8, !dbg !6249
  %28 = load i32, ptr %__ret_gu, align 4, !dbg !6249
  %conv47 = sext i32 %28 to i64, !dbg !6249
  %expval48 = call i64 @llvm.expect.i64(i64 %conv47, i64 0), !dbg !6249
  store i64 %expval48, ptr %tmp46, align 8, !dbg !6249
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val_gu) #14, !dbg !6248
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_gu) #14, !dbg !6248
  %29 = load i64, ptr %tmp46, align 8, !dbg !6249
  store i64 %29, ptr %tmp42, align 8, !dbg !6248
  %30 = load i64, ptr %tmp42, align 8, !dbg !6248
  %cmp49 = icmp ne i64 %30, 0, !dbg !6252
  br i1 %cmp49, label %if.then51, label %if.end52, !dbg !6253

if.then51:                                        ; preds = %if.end41
  %31 = load ptr, ptr %regs.addr, align 8, !dbg !6254
  call void @warn_bad_vsyscall(ptr noundef @.str.4, ptr noundef %31, ptr noundef @.str.6) #15, !dbg !6256
  br label %sigsegv, !dbg !6257

if.end52:                                         ; preds = %if.end41
  %32 = load i32, ptr %vsyscall_nr, align 4, !dbg !6258
  switch i32 %32, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb57
    i32 2, label %sw.bb62
  ], !dbg !6259

sw.bb:                                            ; preds = %if.end52
  %33 = load ptr, ptr %regs.addr, align 8, !dbg !6260
  %di = getelementptr inbounds %struct.pt_regs, ptr %33, i32 0, i32 14, !dbg !6263
  %34 = load i64, ptr %di, align 8, !dbg !6263
  %call53 = call zeroext i1 @write_ok_or_segv(i64 noundef %34, i64 noundef 16) #15, !dbg !6264
  br i1 %call53, label %lor.lhs.false, label %if.then55, !dbg !6265

lor.lhs.false:                                    ; preds = %sw.bb
  %35 = load ptr, ptr %regs.addr, align 8, !dbg !6266
  %si = getelementptr inbounds %struct.pt_regs, ptr %35, i32 0, i32 13, !dbg !6267
  %36 = load i64, ptr %si, align 8, !dbg !6267
  %call54 = call zeroext i1 @write_ok_or_segv(i64 noundef %36, i64 noundef 8) #15, !dbg !6268
  br i1 %call54, label %if.end56, label %if.then55, !dbg !6269

if.then55:                                        ; preds = %lor.lhs.false, %sw.bb
  store i64 -14, ptr %ret, align 8, !dbg !6270
  br label %check_fault, !dbg !6272

if.end56:                                         ; preds = %lor.lhs.false
  store i32 96, ptr %syscall_nr, align 4, !dbg !6273
  br label %sw.epilog, !dbg !6274

sw.bb57:                                          ; preds = %if.end52
  %37 = load ptr, ptr %regs.addr, align 8, !dbg !6275
  %di58 = getelementptr inbounds %struct.pt_regs, ptr %37, i32 0, i32 14, !dbg !6277
  %38 = load i64, ptr %di58, align 8, !dbg !6277
  %call59 = call zeroext i1 @write_ok_or_segv(i64 noundef %38, i64 noundef 8) #15, !dbg !6278
  br i1 %call59, label %if.end61, label %if.then60, !dbg !6279

if.then60:                                        ; preds = %sw.bb57
  store i64 -14, ptr %ret, align 8, !dbg !6280
  br label %check_fault, !dbg !6282

if.end61:                                         ; preds = %sw.bb57
  store i32 201, ptr %syscall_nr, align 4, !dbg !6283
  br label %sw.epilog, !dbg !6284

sw.bb62:                                          ; preds = %if.end52
  %39 = load ptr, ptr %regs.addr, align 8, !dbg !6285
  %di63 = getelementptr inbounds %struct.pt_regs, ptr %39, i32 0, i32 14, !dbg !6287
  %40 = load i64, ptr %di63, align 8, !dbg !6287
  %call64 = call zeroext i1 @write_ok_or_segv(i64 noundef %40, i64 noundef 4) #15, !dbg !6288
  br i1 %call64, label %lor.lhs.false65, label %if.then68, !dbg !6289

lor.lhs.false65:                                  ; preds = %sw.bb62
  %41 = load ptr, ptr %regs.addr, align 8, !dbg !6290
  %si66 = getelementptr inbounds %struct.pt_regs, ptr %41, i32 0, i32 13, !dbg !6291
  %42 = load i64, ptr %si66, align 8, !dbg !6291
  %call67 = call zeroext i1 @write_ok_or_segv(i64 noundef %42, i64 noundef 4) #15, !dbg !6292
  br i1 %call67, label %if.end69, label %if.then68, !dbg !6293

if.then68:                                        ; preds = %lor.lhs.false65, %sw.bb62
  store i64 -14, ptr %ret, align 8, !dbg !6294
  br label %check_fault, !dbg !6296

if.end69:                                         ; preds = %lor.lhs.false65
  store i32 309, ptr %syscall_nr, align 4, !dbg !6297
  br label %sw.epilog, !dbg !6298

sw.epilog:                                        ; preds = %if.end52, %if.end69, %if.end61, %if.end56
  %43 = load i32, ptr %syscall_nr, align 4, !dbg !6299
  %conv70 = sext i32 %43 to i64, !dbg !6299
  %44 = load ptr, ptr %regs.addr, align 8, !dbg !6300
  %orig_ax = getelementptr inbounds %struct.pt_regs, ptr %44, i32 0, i32 15, !dbg !6301
  store i64 %conv70, ptr %orig_ax, align 8, !dbg !6302
  %45 = load ptr, ptr %regs.addr, align 8, !dbg !6303
  %ax = getelementptr inbounds %struct.pt_regs, ptr %45, i32 0, i32 10, !dbg !6304
  store i64 -38, ptr %ax, align 8, !dbg !6305
  %call71 = call i32 @secure_computing() #15, !dbg !6306
  store i32 %call71, ptr %tmp, align 4, !dbg !6307
  %46 = load i32, ptr %tmp, align 4, !dbg !6308
  %tobool72 = icmp ne i32 %46, 0, !dbg !6308
  br i1 %tobool72, label %lor.lhs.false77, label %land.lhs.true, !dbg !6310

land.lhs.true:                                    ; preds = %sw.epilog
  %47 = load ptr, ptr %regs.addr, align 8, !dbg !6311
  %orig_ax73 = getelementptr inbounds %struct.pt_regs, ptr %47, i32 0, i32 15, !dbg !6312
  %48 = load i64, ptr %orig_ax73, align 8, !dbg !6312
  %49 = load i32, ptr %syscall_nr, align 4, !dbg !6313
  %conv74 = sext i32 %49 to i64, !dbg !6313
  %cmp75 = icmp ne i64 %48, %conv74, !dbg !6314
  br i1 %cmp75, label %if.then81, label %lor.lhs.false77, !dbg !6315

lor.lhs.false77:                                  ; preds = %land.lhs.true, %sw.epilog
  %50 = load ptr, ptr %regs.addr, align 8, !dbg !6316
  %ip78 = getelementptr inbounds %struct.pt_regs, ptr %50, i32 0, i32 16, !dbg !6317
  %51 = load i64, ptr %ip78, align 8, !dbg !6317
  %52 = load i64, ptr %address.addr, align 8, !dbg !6318
  %cmp79 = icmp ne i64 %51, %52, !dbg !6319
  br i1 %cmp79, label %if.then81, label %if.end82, !dbg !6320

if.then81:                                        ; preds = %lor.lhs.false77, %land.lhs.true
  %53 = load ptr, ptr %regs.addr, align 8, !dbg !6321
  call void @warn_bad_vsyscall(ptr noundef @.str.7, ptr noundef %53, ptr noundef @.str.8) #15, !dbg !6323
  call void @force_exit_sig(i32 noundef 31) #15, !dbg !6324
  store i1 true, ptr %retval, align 1, !dbg !6325
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6325

if.end82:                                         ; preds = %lor.lhs.false77
  %54 = load ptr, ptr %regs.addr, align 8, !dbg !6326
  %orig_ax83 = getelementptr inbounds %struct.pt_regs, ptr %54, i32 0, i32 15, !dbg !6327
  store i64 -1, ptr %orig_ax83, align 8, !dbg !6328
  %55 = load i32, ptr %tmp, align 4, !dbg !6329
  %tobool84 = icmp ne i32 %55, 0, !dbg !6329
  br i1 %tobool84, label %if.then85, label %if.end86, !dbg !6331

if.then85:                                        ; preds = %if.end82
  br label %do_ret, !dbg !6332

if.end86:                                         ; preds = %if.end82
  store i64 -14, ptr %ret, align 8, !dbg !6333
  %56 = load i32, ptr %vsyscall_nr, align 4, !dbg !6334
  switch i32 %56, label %sw.epilog95 [
    i32 0, label %sw.bb87
    i32 1, label %sw.bb89
    i32 2, label %sw.bb91
  ], !dbg !6335

sw.bb87:                                          ; preds = %if.end86
  %57 = load ptr, ptr %regs.addr, align 8, !dbg !6336
  %call88 = call i64 @__x64_sys_gettimeofday(ptr noundef %57) #15, !dbg !6338
  store i64 %call88, ptr %ret, align 8, !dbg !6339
  br label %sw.epilog95, !dbg !6340

sw.bb89:                                          ; preds = %if.end86
  %58 = load ptr, ptr %regs.addr, align 8, !dbg !6341
  %call90 = call i64 @__x64_sys_time(ptr noundef %58) #15, !dbg !6342
  store i64 %call90, ptr %ret, align 8, !dbg !6343
  br label %sw.epilog95, !dbg !6344

sw.bb91:                                          ; preds = %if.end86
  %59 = load ptr, ptr %regs.addr, align 8, !dbg !6345
  %dx = getelementptr inbounds %struct.pt_regs, ptr %59, i32 0, i32 12, !dbg !6346
  %60 = load i64, ptr %dx, align 8, !dbg !6346
  store i64 %60, ptr %orig_dx, align 8, !dbg !6347
  %61 = load ptr, ptr %regs.addr, align 8, !dbg !6348
  %dx92 = getelementptr inbounds %struct.pt_regs, ptr %61, i32 0, i32 12, !dbg !6349
  store i64 0, ptr %dx92, align 8, !dbg !6350
  %62 = load ptr, ptr %regs.addr, align 8, !dbg !6351
  %call93 = call i64 @__x64_sys_getcpu(ptr noundef %62) #15, !dbg !6352
  store i64 %call93, ptr %ret, align 8, !dbg !6353
  %63 = load i64, ptr %orig_dx, align 8, !dbg !6354
  %64 = load ptr, ptr %regs.addr, align 8, !dbg !6355
  %dx94 = getelementptr inbounds %struct.pt_regs, ptr %64, i32 0, i32 12, !dbg !6356
  store i64 %63, ptr %dx94, align 8, !dbg !6357
  br label %sw.epilog95, !dbg !6358

sw.epilog95:                                      ; preds = %if.end86, %sw.bb91, %sw.bb89, %sw.bb87
  br label %check_fault, !dbg !6359

check_fault:                                      ; preds = %sw.epilog95, %if.then68, %if.then60, %if.then55
  call void @llvm.dbg.label(metadata !6181), !dbg !6360
  %65 = load i64, ptr %ret, align 8, !dbg !6361
  %cmp96 = icmp eq i64 %65, -14, !dbg !6363
  br i1 %cmp96, label %if.then98, label %if.end99, !dbg !6364

if.then98:                                        ; preds = %check_fault
  %66 = load ptr, ptr %regs.addr, align 8, !dbg !6365
  call void @warn_bad_vsyscall(ptr noundef @.str, ptr noundef %66, ptr noundef @.str.9) #15, !dbg !6367
  br label %sigsegv, !dbg !6368

if.end99:                                         ; preds = %check_fault
  %67 = load i64, ptr %ret, align 8, !dbg !6369
  %68 = load ptr, ptr %regs.addr, align 8, !dbg !6370
  %ax100 = getelementptr inbounds %struct.pt_regs, ptr %68, i32 0, i32 10, !dbg !6371
  store i64 %67, ptr %ax100, align 8, !dbg !6372
  br label %do_ret, !dbg !6370

do_ret:                                           ; preds = %if.end99, %if.then85
  call void @llvm.dbg.label(metadata !6182), !dbg !6373
  %69 = load i64, ptr %caller, align 8, !dbg !6374
  %70 = load ptr, ptr %regs.addr, align 8, !dbg !6375
  %ip101 = getelementptr inbounds %struct.pt_regs, ptr %70, i32 0, i32 16, !dbg !6376
  store i64 %69, ptr %ip101, align 8, !dbg !6377
  %71 = load ptr, ptr %regs.addr, align 8, !dbg !6378
  %sp102 = getelementptr inbounds %struct.pt_regs, ptr %71, i32 0, i32 19, !dbg !6379
  %72 = load i64, ptr %sp102, align 8, !dbg !6380
  %add = add i64 %72, 8, !dbg !6380
  store i64 %add, ptr %sp102, align 8, !dbg !6380
  store i1 true, ptr %retval, align 1, !dbg !6381
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6381

sigsegv:                                          ; preds = %if.then98, %if.then51, %if.then40
  call void @llvm.dbg.label(metadata !6183), !dbg !6382
  call void @force_sig(i32 noundef 11) #15, !dbg !6383
  store i1 true, ptr %retval, align 1, !dbg !6384
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6384

cleanup:                                          ; preds = %sigsegv, %do_ret, %if.then81, %if.then36, %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %orig_dx) #14, !dbg !6385
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #14, !dbg !6385
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #14, !dbg !6385
  call void @llvm.lifetime.end.p0(i64 4, ptr %syscall_nr) #14, !dbg !6385
  call void @llvm.lifetime.end.p0(i64 4, ptr %vsyscall_nr) #14, !dbg !6385
  call void @llvm.lifetime.end.p0(i64 8, ptr %caller) #14, !dbg !6385
  %73 = load i1, ptr %retval, align 1, !dbg !6385
  ret i1 %73, !dbg !6385
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @warn_bad_vsyscall(ptr noundef %level, ptr noundef %regs, ptr noundef %message) #1 align 16 !dbg !5987 {
entry:
  %level.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %message.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %level, ptr %level.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %level.addr, metadata !5991, metadata !DIExpression()), !dbg !6386
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5992, metadata !DIExpression()), !dbg !6387
  store ptr %message, ptr %message.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %message.addr, metadata !5993, metadata !DIExpression()), !dbg !6388
  %0 = load i32, ptr @show_unhandled_signals, align 4, !dbg !6389
  %tobool = icmp ne i32 %0, 0, !dbg !6389
  br i1 %tobool, label %if.end, label %if.then, !dbg !6391

if.then:                                          ; preds = %entry
  br label %if.end7, !dbg !6392

if.end:                                           ; preds = %entry
  %call = call i32 @___ratelimit(ptr noundef @warn_bad_vsyscall._rs, ptr noundef @__func__.warn_bad_vsyscall) #15, !dbg !6393
  %tobool1 = icmp ne i32 %call, 0, !dbg !6393
  br i1 %tobool1, label %if.then2, label %if.end7, !dbg !6396

if.then2:                                         ; preds = %if.end
  br label %do.body, !dbg !6397

do.body:                                          ; preds = %if.then2
  br label %do.end, !dbg !6399

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr %level.addr, align 8, !dbg !6397
  %call3 = call ptr @get_current() #15, !dbg !6397
  %comm = getelementptr inbounds %struct.task_struct, ptr %call3, i32 0, i32 96, !dbg !6397
  %arraydecay = getelementptr inbounds [16 x i8], ptr %comm, i64 0, i64 0, !dbg !6397
  %call4 = call ptr @get_current() #15, !dbg !6397
  %call5 = call i32 @task_pid_nr(ptr noundef %call4) #15, !dbg !6397
  %2 = load ptr, ptr %message.addr, align 8, !dbg !6397
  %3 = load ptr, ptr %regs.addr, align 8, !dbg !6397
  %ip = getelementptr inbounds %struct.pt_regs, ptr %3, i32 0, i32 16, !dbg !6397
  %4 = load i64, ptr %ip, align 8, !dbg !6397
  %5 = load ptr, ptr %regs.addr, align 8, !dbg !6397
  %6 = getelementptr inbounds %struct.pt_regs, ptr %5, i32 0, i32 17, !dbg !6397
  %7 = load i16, ptr %6, align 8, !dbg !6397
  %conv = zext i16 %7 to i32, !dbg !6397
  %8 = load ptr, ptr %regs.addr, align 8, !dbg !6397
  %sp = getelementptr inbounds %struct.pt_regs, ptr %8, i32 0, i32 19, !dbg !6397
  %9 = load i64, ptr %sp, align 8, !dbg !6397
  %10 = load ptr, ptr %regs.addr, align 8, !dbg !6397
  %ax = getelementptr inbounds %struct.pt_regs, ptr %10, i32 0, i32 10, !dbg !6397
  %11 = load i64, ptr %ax, align 8, !dbg !6397
  %12 = load ptr, ptr %regs.addr, align 8, !dbg !6397
  %si = getelementptr inbounds %struct.pt_regs, ptr %12, i32 0, i32 13, !dbg !6397
  %13 = load i64, ptr %si, align 8, !dbg !6397
  %14 = load ptr, ptr %regs.addr, align 8, !dbg !6397
  %di = getelementptr inbounds %struct.pt_regs, ptr %14, i32 0, i32 14, !dbg !6397
  %15 = load i64, ptr %di, align 8, !dbg !6397
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef @.str.16, ptr noundef %1, ptr noundef %arraydecay, i32 noundef %call5, ptr noundef %2, i64 noundef %4, i32 noundef %conv, i64 noundef %9, i64 noundef %11, i64 noundef %13, i64 noundef %15) #17, !dbg !6397
  store i32 %call6, ptr %tmp, align 4, !dbg !6399
  %16 = load i32, ptr %tmp, align 4, !dbg !6397
  br label %if.end7, !dbg !6393

if.end7:                                          ; preds = %if.then, %do.end, %if.end
  ret void, !dbg !6401
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @addr_to_vsyscall_nr(i64 noundef %addr) #1 align 16 !dbg !6402 {
entry:
  %retval = alloca i32, align 4
  %addr.addr = alloca i64, align 8
  %nr = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6406, metadata !DIExpression()), !dbg !6408
  call void @llvm.lifetime.start.p0(i64 4, ptr %nr) #14, !dbg !6409
  call void @llvm.dbg.declare(metadata ptr %nr, metadata !6407, metadata !DIExpression()), !dbg !6410
  %0 = load i64, ptr %addr.addr, align 8, !dbg !6411
  %and = and i64 %0, -3073, !dbg !6413
  %cmp = icmp ne i64 %and, -10485760, !dbg !6414
  br i1 %cmp, label %if.then, label %if.end, !dbg !6415

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !6416
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6416

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %addr.addr, align 8, !dbg !6417
  %and1 = and i64 %1, 3072, !dbg !6418
  %shr = lshr i64 %and1, 10, !dbg !6419
  %conv = trunc i64 %shr to i32, !dbg !6420
  store i32 %conv, ptr %nr, align 4, !dbg !6421
  %2 = load i32, ptr %nr, align 4, !dbg !6422
  %cmp2 = icmp sge i32 %2, 3, !dbg !6424
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !6425

if.then4:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !6426
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6426

if.end5:                                          ; preds = %if.end
  %3 = load i32, ptr %nr, align 4, !dbg !6427
  store i32 %3, ptr %retval, align 4, !dbg !6428
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6428

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %nr) #14, !dbg !6429
  %4 = load i32, ptr %retval, align 4, !dbg !6429
  ret i32 %4, !dbg !6429
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_emulate_vsyscall(i32 noundef %nr) #6 align 16 !dbg !6008 {
entry:
  %nr.addr = alloca i32, align 4
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
  %__UNIQUE_ID_rcu321 = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %tmp45 = alloca ptr, align 8
  store i32 %nr, ptr %nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6010, metadata !DIExpression()), !dbg !6430
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_emulate_vsyscall, i32 0, i32 1)) #15, !dbg !6431
  br i1 %call, label %if.then, label %if.end68, !dbg !6430

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6431

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__idx) #14, !dbg !6432
  call void @llvm.dbg.declare(metadata ptr %__idx, metadata !6011, metadata !DIExpression()), !dbg !6432
  store i32 0, ptr %__idx, align 4, !dbg !6432
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #14, !dbg !6433
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6014, metadata !DIExpression()), !dbg !6433
  br label %do.body1, !dbg !6433

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !6434
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6017, metadata !DIExpression()), !dbg !6434
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6434
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6434
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !6433
  br label %do.cond, !dbg !6434

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !6434

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #14, !dbg !6435
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6019, metadata !DIExpression()), !dbg !6435
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.34, ptr @pcpu_hot, i32 0, i32 2)) #14, !dbg !6435, !srcloc !6436
  store i32 %1, ptr %pfo_val__, align 4, !dbg !6435
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !6435
  %conv = zext i32 %2 to i64, !dbg !6435
  %conv2 = trunc i64 %conv to i32, !dbg !6435
  store i32 %conv2, ptr %tmp, align 4, !dbg !6435
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #14, !dbg !6433
  %3 = load i32, ptr %tmp, align 4, !dbg !6435
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !6433
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !6433
  store i32 %4, ptr %tmp3, align 4, !dbg !6433
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #14, !dbg !6437
  %5 = load i32, ptr %tmp3, align 4, !dbg !6433
  %call4 = call zeroext i1 @cpu_online(i32 noundef %5) #15, !dbg !6437
  br i1 %call4, label %if.end, label %if.then5, !dbg !6432

if.then5:                                         ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6437

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !6438
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6021, metadata !DIExpression()), !dbg !6438
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !6438
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !6439
  %tobool = icmp ne i32 %6, 0, !dbg !6439
  %lnot = xor i1 %tobool, true, !dbg !6439
  %lnot6 = xor i1 %lnot, true, !dbg !6439
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !6439
  %conv7 = sext i32 %lnot.ext to i64, !dbg !6439
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !6439
  %tobool8 = icmp ne i64 %expval, 0, !dbg !6439
  br i1 %tobool8, label %if.then9, label %if.end22, !dbg !6438

if.then9:                                         ; preds = %if.end
  br label %do.body10, !dbg !6439

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !6440
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6024, metadata !DIExpression()), !dbg !6440
  store i32 2307, ptr %__flags, align 4, !dbg !6440
  br label %do.body11, !dbg !6440

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !6441

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !6441

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !6440

do.body14:                                        ; preds = %do.end13
  %7 = load i32, ptr %__flags, align 4, !dbg !6443
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.17, i32 23, i32 %7, i64 12) #14, !dbg !6443, !srcloc !6445
  br label %do.cond15, !dbg !6443

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !6443

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !6440

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !6446

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !6446

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !6439
  br label %do.cond20, !dbg !6440

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !6440

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !6440

if.end22:                                         ; preds = %do.end21, %if.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !6438
  %tobool24 = icmp ne i32 %8, 0, !dbg !6438
  %lnot25 = xor i1 %tobool24, true, !dbg !6438
  %lnot27 = xor i1 %lnot25, true, !dbg !6438
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !6438
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !6438
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !6438
  store i64 %expval30, ptr %tmp23, align 8, !dbg !6439
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !6448
  %9 = load i64, ptr %tmp23, align 8, !dbg !6438
  %tobool31 = icmp ne i64 %9, 0, !dbg !6448
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !6432

if.then32:                                        ; preds = %if.end22
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6448

if.end33:                                         ; preds = %if.end22
  br label %do.body34, !dbg !6432

do.body34:                                        ; preds = %if.end33
  call void @__preempt_count_add(i32 noundef 1) #15, !dbg !6449
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !6449, !srcloc !6451
  br label %do.cond35, !dbg !6449

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !6449

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !6432

do.body37:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #14, !dbg !6452
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !6027, metadata !DIExpression()), !dbg !6452
  call void @llvm.lifetime.start.p0(i64 8, ptr %__data) #14, !dbg !6452
  call void @llvm.dbg.declare(metadata ptr %__data, metadata !6029, metadata !DIExpression()), !dbg !6452
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu321) #14, !dbg !6453
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu321, metadata !6030, metadata !DIExpression()), !dbg !6453
  br label %do.body38, !dbg !6454

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !6456

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !6456

do.end40:                                         ; preds = %do.cond39
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_emulate_vsyscall, i32 0, i32 8), align 8, !dbg !6454
  store ptr %10, ptr %tmp41, align 8, !dbg !6456
  %11 = load ptr, ptr %tmp41, align 8, !dbg !6454
  store ptr %11, ptr %__UNIQUE_ID_rcu321, align 8, !dbg !6453
  %12 = load ptr, ptr %__UNIQUE_ID_rcu321, align 8, !dbg !6453
  store ptr %12, ptr %tmp42, align 8, !dbg !6453
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu321) #14, !dbg !6452
  %13 = load ptr, ptr %tmp42, align 8, !dbg !6453
  store ptr %13, ptr %it_func_ptr, align 8, !dbg !6452
  %14 = load ptr, ptr %it_func_ptr, align 8, !dbg !6458
  %tobool43 = icmp ne ptr %14, null, !dbg !6458
  br i1 %tobool43, label %if.then44, label %if.end47, !dbg !6452

if.then44:                                        ; preds = %do.end40
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !6460
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %15, i32 0, i32 1, !dbg !6460
  %16 = load ptr, ptr %data, align 8, !dbg !6460
  store ptr %16, ptr %__data, align 8, !dbg !6460
  store ptr @__SCT__tp_func_emulate_vsyscall, ptr %tmp45, align 8, !dbg !6462
  %17 = load ptr, ptr %tmp45, align 8, !dbg !6462
  %18 = load ptr, ptr %__data, align 8, !dbg !6460
  %19 = load i32, ptr %nr.addr, align 4, !dbg !6460
  %call46 = call i32 %17(ptr noundef %18, i32 noundef %19) #15, !dbg !6460
  br label %if.end47, !dbg !6460

if.end47:                                         ; preds = %if.then44, %do.end40
  call void @llvm.lifetime.end.p0(i64 8, ptr %__data) #14, !dbg !6432
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #14, !dbg !6432
  br label %do.cond48, !dbg !6452

do.cond48:                                        ; preds = %if.end47
  br label %do.end49, !dbg !6452

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !6432

do.body50:                                        ; preds = %do.end49
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !6464, !srcloc !6466
  %call51 = call zeroext i1 @__preempt_count_dec_and_test() #15, !dbg !6467
  %lnot52 = xor i1 %call51, true, !dbg !6467
  %lnot54 = xor i1 %lnot52, true, !dbg !6467
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !6467
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !6467
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !6467
  %tobool58 = icmp ne i64 %expval57, 0, !dbg !6467
  br i1 %tobool58, label %if.then59, label %if.end63, !dbg !6464

if.then59:                                        ; preds = %do.body50
  br label %do.body60, !dbg !6467

do.body60:                                        ; preds = %if.then59
  %20 = call i64 @llvm.read_register.i64(metadata !6046), !dbg !6469
  %21 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %20) #14, !dbg !6469, !srcloc !6471
  call void @llvm.write_register.i64(metadata !6046, i64 %21), !dbg !6469
  br label %do.cond61, !dbg !6469

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !6469

do.end62:                                         ; preds = %do.cond61
  br label %if.end63, !dbg !6469

if.end63:                                         ; preds = %do.end62, %do.body50
  br label %do.cond64, !dbg !6464

do.cond64:                                        ; preds = %if.end63
  br label %do.end65, !dbg !6464

do.end65:                                         ; preds = %do.cond64
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6431
  br label %cleanup, !dbg !6431

cleanup:                                          ; preds = %do.end65, %if.then32, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__idx) #14, !dbg !6431
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end68
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end67, !dbg !6432

do.end67:                                         ; preds = %cleanup.cont
  br label %if.end68, !dbg !6432

if.end68:                                         ; preds = %cleanup, %do.end67, %entry
  ret void, !dbg !6430

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_fault() #6 align 16 !dbg !6472 {
entry:
  ret void, !dbg !6474
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #7

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_unpoison_memory(ptr noundef %address, i64 noundef %size) #6 align 16 !dbg !6475 {
entry:
  %address.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !6480, metadata !DIExpression()), !dbg !6482
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6481, metadata !DIExpression()), !dbg !6483
  ret void, !dbg !6484
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @write_ok_or_segv(i64 noundef %ptr, i64 noundef %size) #1 align 16 !dbg !6485 {
entry:
  %retval = alloca i1, align 1
  %ptr.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %thread = alloca ptr, align 8
  store i64 %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6489, metadata !DIExpression()), !dbg !6495
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6490, metadata !DIExpression()), !dbg !6496
  %0 = load i64, ptr %ptr.addr, align 8, !dbg !6497
  %1 = inttoptr i64 %0 to ptr, !dbg !6497
  %2 = load i64, ptr %size.addr, align 8, !dbg !6497
  %call = call zeroext i1 @__access_ok(ptr noundef %1, i64 noundef %2) #15, !dbg !6497
  %lnot = xor i1 %call, true, !dbg !6497
  %lnot1 = xor i1 %lnot, true, !dbg !6497
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6497
  %conv = sext i32 %lnot.ext to i64, !dbg !6497
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6497
  %tobool = icmp ne i64 %expval, 0, !dbg !6497
  br i1 %tobool, label %if.else, label %if.then, !dbg !6498

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %thread) #14, !dbg !6499
  call void @llvm.dbg.declare(metadata ptr %thread, metadata !6491, metadata !DIExpression()), !dbg !6500
  %call2 = call ptr @get_current() #15, !dbg !6501
  %thread3 = getelementptr inbounds %struct.task_struct, ptr %call2, i32 0, i32 197, !dbg !6502
  store ptr %thread3, ptr %thread, align 8, !dbg !6500
  %3 = load ptr, ptr %thread, align 8, !dbg !6503
  %error_code = getelementptr inbounds %struct.thread_struct, ptr %3, i32 0, i32 13, !dbg !6504
  store i64 6, ptr %error_code, align 8, !dbg !6505
  %4 = load i64, ptr %ptr.addr, align 8, !dbg !6506
  %5 = load ptr, ptr %thread, align 8, !dbg !6507
  %cr2 = getelementptr inbounds %struct.thread_struct, ptr %5, i32 0, i32 11, !dbg !6508
  store i64 %4, ptr %cr2, align 8, !dbg !6509
  %6 = load ptr, ptr %thread, align 8, !dbg !6510
  %trap_nr = getelementptr inbounds %struct.thread_struct, ptr %6, i32 0, i32 12, !dbg !6511
  store i64 14, ptr %trap_nr, align 16, !dbg !6512
  %7 = load i64, ptr %ptr.addr, align 8, !dbg !6513
  %8 = inttoptr i64 %7 to ptr, !dbg !6514
  %call4 = call i32 @force_sig_fault(i32 noundef 11, i32 noundef 1, ptr noundef %8) #15, !dbg !6515
  store i1 false, ptr %retval, align 1, !dbg !6516
  call void @llvm.lifetime.end.p0(i64 8, ptr %thread) #14, !dbg !6517
  br label %return

if.else:                                          ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !6518
  br label %return, !dbg !6518

return:                                           ; preds = %if.else, %if.then
  %9 = load i1, ptr %retval, align 1, !dbg !6520
  ret i1 %9, !dbg !6520
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @secure_computing() #6 align 16 !dbg !6521 {
entry:
  %retval = alloca i32, align 4
  %call = call ptr @get_current() #15, !dbg !6522
  %syscall_work = getelementptr inbounds %struct.thread_info, ptr %call, i32 0, i32 1, !dbg !6522
  %call1 = call zeroext i1 @_test_bit(i64 noundef 0, ptr noundef %syscall_work) #15, !dbg !6522
  %lnot = xor i1 %call1, true, !dbg !6522
  %lnot2 = xor i1 %lnot, true, !dbg !6522
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !6522
  %conv = sext i32 %lnot.ext to i64, !dbg !6522
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6522
  %tobool = icmp ne i64 %expval, 0, !dbg !6522
  br i1 %tobool, label %if.then, label %if.end, !dbg !6524

if.then:                                          ; preds = %entry
  %call3 = call i32 @__secure_computing(ptr noundef null) #15, !dbg !6525
  store i32 %call3, ptr %retval, align 4, !dbg !6526
  br label %return, !dbg !6526

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6527
  br label %return, !dbg !6527

return:                                           ; preds = %if.end, %if.then
  %0 = load i32, ptr %retval, align 4, !dbg !6528
  ret i32 %0, !dbg !6528
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6529 dso_local void @force_exit_sig(i32 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6530 dso_local i64 @__x64_sys_gettimeofday(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6536 dso_local i64 @__x64_sys_time(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6537 dso_local i64 @__x64_sys_getcpu(ptr noundef) #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6538 dso_local void @force_sig(i32 noundef) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @get_gate_vma(ptr noundef %mm) #1 align 16 !dbg !6539 {
entry:
  %retval = alloca ptr, align 8
  %mm.addr = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !6543, metadata !DIExpression()), !dbg !6544
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !6545
  %tobool = icmp ne ptr %0, null, !dbg !6545
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !6547

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %mm.addr, align 8, !dbg !6548
  %2 = getelementptr inbounds %struct.mm_struct, ptr %1, i32 0, i32 0, !dbg !6548
  %context = getelementptr inbounds %struct.anon.26, ptr %2, i32 0, i32 44, !dbg !6548
  %flags = getelementptr inbounds %struct.mm_context_t, ptr %context, i32 0, i32 5, !dbg !6548
  %3 = ptrtoint ptr %flags to i64, !dbg !6548
  %cmp = icmp ne i64 %3, 0, !dbg !6548
  %conv = zext i1 %cmp to i32, !dbg !6548
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !6548
  br i1 %4, label %land.lhs.true, label %cond.false, !dbg !6548

land.lhs.true:                                    ; preds = %lor.lhs.false
  %5 = load ptr, ptr %mm.addr, align 8, !dbg !6548
  %6 = getelementptr inbounds %struct.mm_struct, ptr %5, i32 0, i32 0, !dbg !6548
  %context1 = getelementptr inbounds %struct.anon.26, ptr %6, i32 0, i32 44, !dbg !6548
  %flags2 = getelementptr inbounds %struct.mm_context_t, ptr %context1, i32 0, i32 5, !dbg !6548
  %7 = ptrtoint ptr %flags2 to i64, !dbg !6548
  %cmp3 = icmp ne i64 %7, 0, !dbg !6548
  br i1 %cmp3, label %land.lhs.true5, label %cond.false, !dbg !6548

land.lhs.true5:                                   ; preds = %land.lhs.true
  %8 = load ptr, ptr %mm.addr, align 8, !dbg !6548
  %9 = getelementptr inbounds %struct.mm_struct, ptr %8, i32 0, i32 0, !dbg !6548
  %context6 = getelementptr inbounds %struct.anon.26, ptr %9, i32 0, i32 44, !dbg !6548
  %flags7 = getelementptr inbounds %struct.mm_context_t, ptr %context6, i32 0, i32 5, !dbg !6548
  %10 = load i64, ptr %flags7, align 8, !dbg !6548
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !6548
  br i1 %11, label %cond.true, label %cond.false, !dbg !6549

cond.true:                                        ; preds = %land.lhs.true5
  %12 = load ptr, ptr %mm.addr, align 8, !dbg !6548
  %13 = getelementptr inbounds %struct.mm_struct, ptr %12, i32 0, i32 0, !dbg !6548
  %context8 = getelementptr inbounds %struct.anon.26, ptr %13, i32 0, i32 44, !dbg !6548
  %flags9 = getelementptr inbounds %struct.mm_context_t, ptr %context8, i32 0, i32 5, !dbg !6548
  %call = call zeroext i1 @const_test_bit(i64 noundef 1, ptr noundef %flags9) #15, !dbg !6548
  br i1 %call, label %if.end, label %if.then, !dbg !6548

cond.false:                                       ; preds = %land.lhs.true5, %land.lhs.true, %lor.lhs.false
  %14 = load ptr, ptr %mm.addr, align 8, !dbg !6548
  %15 = getelementptr inbounds %struct.mm_struct, ptr %14, i32 0, i32 0, !dbg !6548
  %context11 = getelementptr inbounds %struct.anon.26, ptr %15, i32 0, i32 44, !dbg !6548
  %flags12 = getelementptr inbounds %struct.mm_context_t, ptr %context11, i32 0, i32 5, !dbg !6548
  %call13 = call zeroext i1 @_test_bit(i64 noundef 1, ptr noundef %flags12) #15, !dbg !6548
  br i1 %call13, label %if.end, label %if.then, !dbg !6549

if.then:                                          ; preds = %cond.false, %cond.true, %entry
  store ptr null, ptr %retval, align 8, !dbg !6550
  br label %return, !dbg !6550

if.end:                                           ; preds = %cond.false, %cond.true
  %16 = load i32, ptr @vsyscall_mode, align 4, !dbg !6551
  %cmp15 = icmp eq i32 %16, 2, !dbg !6553
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !6554

if.then17:                                        ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !6555
  br label %return, !dbg !6555

if.end18:                                         ; preds = %if.end
  store ptr @gate_vma, ptr %retval, align 8, !dbg !6556
  br label %return, !dbg !6556

return:                                           ; preds = %if.end18, %if.then17, %if.then
  %17 = load ptr, ptr %retval, align 8, !dbg !6557
  ret ptr %17, !dbg !6557
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #9

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #10 align 16 !dbg !6558 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6566, metadata !DIExpression()), !dbg !6571
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6567, metadata !DIExpression()), !dbg !6572
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #14, !dbg !6573
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6568, metadata !DIExpression()), !dbg !6574
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6575
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6576
  %div = udiv i64 %1, 64, !dbg !6576
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6577
  store ptr %add.ptr, ptr %p, align 8, !dbg !6574
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #14, !dbg !6578
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6569, metadata !DIExpression()), !dbg !6579
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6580
  %rem = urem i64 %2, 64, !dbg !6580
  %shl = shl i64 1, %rem, !dbg !6580
  store i64 %shl, ptr %mask, align 8, !dbg !6579
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #14, !dbg !6581
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6570, metadata !DIExpression()), !dbg !6582
  %3 = load ptr, ptr %p, align 8, !dbg !6583
  %4 = load i64, ptr %3, align 8, !dbg !6584
  store i64 %4, ptr %val, align 8, !dbg !6582
  %5 = load i64, ptr %val, align 8, !dbg !6585
  %6 = load i64, ptr %mask, align 8, !dbg !6586
  %and = and i64 %5, %6, !dbg !6587
  %tobool = icmp ne i64 %and, 0, !dbg !6588
  %lnot = xor i1 %tobool, true, !dbg !6588
  %lnot1 = xor i1 %lnot, true, !dbg !6589
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #14, !dbg !6590
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #14, !dbg !6590
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #14, !dbg !6590
  ret i1 %lnot1, !dbg !6591
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #10 align 16 !dbg !6592 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6595, metadata !DIExpression()), !dbg !6597
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6596, metadata !DIExpression()), !dbg !6598
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6599
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6600
  %div = udiv i64 %1, 64, !dbg !6600
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6601
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #15, !dbg !6602
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6603
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6604
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #15, !dbg !6605
  ret i1 %call, !dbg !6606
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @in_gate_area(ptr noundef %mm, i64 noundef %addr) #1 align 16 !dbg !6607 {
entry:
  %retval = alloca i32, align 4
  %mm.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %vma = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !6611, metadata !DIExpression()), !dbg !6614
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6612, metadata !DIExpression()), !dbg !6615
  call void @llvm.lifetime.start.p0(i64 8, ptr %vma) #14, !dbg !6616
  call void @llvm.dbg.declare(metadata ptr %vma, metadata !6613, metadata !DIExpression()), !dbg !6617
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !6618
  %call = call ptr @get_gate_vma(ptr noundef %0) #15, !dbg !6619
  store ptr %call, ptr %vma, align 8, !dbg !6617
  %1 = load ptr, ptr %vma, align 8, !dbg !6620
  %tobool = icmp ne ptr %1, null, !dbg !6620
  br i1 %tobool, label %if.end, label %if.then, !dbg !6622

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6623
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6623

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %addr.addr, align 8, !dbg !6624
  %3 = load ptr, ptr %vma, align 8, !dbg !6625
  %4 = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 0, !dbg !6626
  %vm_start = getelementptr inbounds %struct.anon.30, ptr %4, i32 0, i32 0, !dbg !6626
  %5 = load i64, ptr %vm_start, align 8, !dbg !6626
  %cmp = icmp uge i64 %2, %5, !dbg !6627
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !6628

land.rhs:                                         ; preds = %if.end
  %6 = load i64, ptr %addr.addr, align 8, !dbg !6629
  %7 = load ptr, ptr %vma, align 8, !dbg !6630
  %8 = getelementptr inbounds %struct.vm_area_struct, ptr %7, i32 0, i32 0, !dbg !6631
  %vm_end = getelementptr inbounds %struct.anon.30, ptr %8, i32 0, i32 1, !dbg !6631
  %9 = load i64, ptr %vm_end, align 8, !dbg !6631
  %cmp1 = icmp ult i64 %6, %9, !dbg !6632
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %10 = phi i1 [ false, %if.end ], [ %cmp1, %land.rhs ], !dbg !6633
  %land.ext = zext i1 %10 to i32, !dbg !6628
  store i32 %land.ext, ptr %retval, align 4, !dbg !6634
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6634

cleanup:                                          ; preds = %land.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %vma) #14, !dbg !6635
  %11 = load i32, ptr %retval, align 4, !dbg !6635
  ret i32 %11, !dbg !6635
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @in_gate_area_no_mm(i64 noundef %addr) #1 align 16 !dbg !6636 {
entry:
  %addr.addr = alloca i64, align 8
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6638, metadata !DIExpression()), !dbg !6639
  %0 = load i32, ptr @vsyscall_mode, align 4, !dbg !6640
  %cmp = icmp ne i32 %0, 2, !dbg !6641
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !6642

land.rhs:                                         ; preds = %entry
  %1 = load i64, ptr %addr.addr, align 8, !dbg !6643
  %and = and i64 %1, -4096, !dbg !6644
  %cmp1 = icmp eq i64 %and, -10485760, !dbg !6645
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !6646
  %land.ext = zext i1 %2 to i32, !dbg !6642
  ret i32 %land.ext, !dbg !6647
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @set_vsyscall_pgtable_user_bits(ptr noundef %root) #4 section ".init.text" align 16 !dbg !6648 {
entry:
  %root.addr = alloca ptr, align 8
  %pgd = alloca ptr, align 8
  %p4d = alloca ptr, align 8
  %pud = alloca ptr, align 8
  %pmd = alloca ptr, align 8
  %agg.tmp = alloca %struct.pgd_t, align 8
  %agg.tmp6 = alloca %struct.p4d_t, align 8
  %agg.tmp14 = alloca %struct.pud_t, align 8
  %agg.tmp22 = alloca %struct.pmd_t, align 8
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !6652, metadata !DIExpression()), !dbg !6657
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgd) #14, !dbg !6658
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !6653, metadata !DIExpression()), !dbg !6659
  call void @llvm.lifetime.start.p0(i64 8, ptr %p4d) #14, !dbg !6660
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !6654, metadata !DIExpression()), !dbg !6661
  call void @llvm.lifetime.start.p0(i64 8, ptr %pud) #14, !dbg !6662
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !6655, metadata !DIExpression()), !dbg !6663
  call void @llvm.lifetime.start.p0(i64 8, ptr %pmd) #14, !dbg !6664
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !6656, metadata !DIExpression()), !dbg !6665
  %0 = load ptr, ptr %root.addr, align 8, !dbg !6666
  %call = call ptr @pgd_offset_pgd(ptr noundef %0, i64 noundef -10485760) #15, !dbg !6667
  store ptr %call, ptr %pgd, align 8, !dbg !6668
  %1 = load ptr, ptr %pgd, align 8, !dbg !6669
  %2 = load ptr, ptr %pgd, align 8, !dbg !6669
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %2, i32 0, i32 0, !dbg !6669
  %3 = load i64, ptr %coerce.dive, align 8, !dbg !6669
  %call1 = call i64 @native_pgd_val(i64 %3) #15, !dbg !6669
  %or = or i64 %call1, 4, !dbg !6669
  %call2 = call i64 @native_make_pgd(i64 noundef %or) #15, !dbg !6669
  %coerce.dive3 = getelementptr inbounds %struct.pgd_t, ptr %agg.tmp, i32 0, i32 0, !dbg !6669
  store i64 %call2, ptr %coerce.dive3, align 8, !dbg !6669
  %coerce.dive4 = getelementptr inbounds %struct.pgd_t, ptr %agg.tmp, i32 0, i32 0, !dbg !6669
  %4 = load i64, ptr %coerce.dive4, align 8, !dbg !6669
  call void @native_set_pgd(ptr noundef %1, i64 %4) #15, !dbg !6669
  %5 = load ptr, ptr %pgd, align 8, !dbg !6670
  %call5 = call ptr @p4d_offset(ptr noundef %5, i64 noundef -10485760) #15, !dbg !6671
  store ptr %call5, ptr %p4d, align 8, !dbg !6672
  %6 = load ptr, ptr %p4d, align 8, !dbg !6673
  %7 = load ptr, ptr %p4d, align 8, !dbg !6673
  %coerce.dive7 = getelementptr inbounds %struct.p4d_t, ptr %7, i32 0, i32 0, !dbg !6673
  %8 = load i64, ptr %coerce.dive7, align 8, !dbg !6673
  %call8 = call i64 @native_p4d_val(i64 %8) #15, !dbg !6673
  %or9 = or i64 %call8, 4, !dbg !6673
  %call10 = call i64 @native_make_p4d(i64 noundef %or9) #15, !dbg !6673
  %coerce.dive11 = getelementptr inbounds %struct.p4d_t, ptr %agg.tmp6, i32 0, i32 0, !dbg !6673
  store i64 %call10, ptr %coerce.dive11, align 8, !dbg !6673
  %coerce.dive12 = getelementptr inbounds %struct.p4d_t, ptr %agg.tmp6, i32 0, i32 0, !dbg !6673
  %9 = load i64, ptr %coerce.dive12, align 8, !dbg !6673
  call void @native_set_p4d(ptr noundef %6, i64 %9) #15, !dbg !6673
  %10 = load ptr, ptr %p4d, align 8, !dbg !6674
  %call13 = call ptr @pud_offset(ptr noundef %10, i64 noundef -10485760) #15, !dbg !6675
  store ptr %call13, ptr %pud, align 8, !dbg !6676
  %11 = load ptr, ptr %pud, align 8, !dbg !6677
  %12 = load ptr, ptr %pud, align 8, !dbg !6677
  %coerce.dive15 = getelementptr inbounds %struct.pud_t, ptr %12, i32 0, i32 0, !dbg !6677
  %13 = load i64, ptr %coerce.dive15, align 8, !dbg !6677
  %call16 = call i64 @native_pud_val(i64 %13) #15, !dbg !6677
  %or17 = or i64 %call16, 4, !dbg !6677
  %call18 = call i64 @native_make_pud(i64 noundef %or17) #15, !dbg !6677
  %coerce.dive19 = getelementptr inbounds %struct.pud_t, ptr %agg.tmp14, i32 0, i32 0, !dbg !6677
  store i64 %call18, ptr %coerce.dive19, align 8, !dbg !6677
  %coerce.dive20 = getelementptr inbounds %struct.pud_t, ptr %agg.tmp14, i32 0, i32 0, !dbg !6677
  %14 = load i64, ptr %coerce.dive20, align 8, !dbg !6677
  call void @native_set_pud(ptr noundef %11, i64 %14) #15, !dbg !6677
  %15 = load ptr, ptr %pud, align 8, !dbg !6678
  %call21 = call ptr @pmd_offset(ptr noundef %15, i64 noundef -10485760) #15, !dbg !6679
  store ptr %call21, ptr %pmd, align 8, !dbg !6680
  %16 = load ptr, ptr %pmd, align 8, !dbg !6681
  %17 = load ptr, ptr %pmd, align 8, !dbg !6681
  %coerce.dive23 = getelementptr inbounds %struct.pmd_t, ptr %17, i32 0, i32 0, !dbg !6681
  %18 = load i64, ptr %coerce.dive23, align 8, !dbg !6681
  %call24 = call i64 @native_pmd_val(i64 %18) #15, !dbg !6681
  %or25 = or i64 %call24, 4, !dbg !6681
  %call26 = call i64 @native_make_pmd(i64 noundef %or25) #15, !dbg !6681
  %coerce.dive27 = getelementptr inbounds %struct.pmd_t, ptr %agg.tmp22, i32 0, i32 0, !dbg !6681
  store i64 %call26, ptr %coerce.dive27, align 8, !dbg !6681
  %coerce.dive28 = getelementptr inbounds %struct.pmd_t, ptr %agg.tmp22, i32 0, i32 0, !dbg !6681
  %19 = load i64, ptr %coerce.dive28, align 8, !dbg !6681
  call void @native_set_pmd(ptr noundef %16, i64 %19) #15, !dbg !6681
  call void @llvm.lifetime.end.p0(i64 8, ptr %pmd) #14, !dbg !6682
  call void @llvm.lifetime.end.p0(i64 8, ptr %pud) #14, !dbg !6682
  call void @llvm.lifetime.end.p0(i64 8, ptr %p4d) #14, !dbg !6682
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgd) #14, !dbg !6682
  ret void, !dbg !6682
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pgd_offset_pgd(ptr noundef %pgd, i64 noundef %address) #6 align 16 !dbg !6683 {
entry:
  %pgd.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  store ptr %pgd, ptr %pgd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd.addr, metadata !6688, metadata !DIExpression()), !dbg !6690
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !6689, metadata !DIExpression()), !dbg !6691
  %0 = load ptr, ptr %pgd.addr, align 8, !dbg !6692
  %1 = load i64, ptr %address.addr, align 8, !dbg !6693
  %2 = load i32, ptr @pgdir_shift, align 4, !dbg !6693
  %sh_prom = zext i32 %2 to i64, !dbg !6693
  %shr = lshr i64 %1, %sh_prom, !dbg !6693
  %and = and i64 %shr, 511, !dbg !6693
  %add.ptr = getelementptr %struct.pgd_t, ptr %0, i64 %and, !dbg !6694
  ret ptr %add.ptr, !dbg !6695
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_set_pgd(ptr noundef %pgdp, i64 %pgd.coerce) #6 align 16 !dbg !6696 {
entry:
  %pgd = alloca %struct.pgd_t, align 8
  %pgdp.addr = alloca ptr, align 8
  %tmp = alloca %struct.pgd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0
  store i64 %pgd.coerce, ptr %coerce.dive, align 8
  store ptr %pgdp, ptr %pgdp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgdp.addr, metadata !6701, metadata !DIExpression()), !dbg !6703
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !6702, metadata !DIExpression()), !dbg !6704
  br label %do.body, !dbg !6705

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6706

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !6708

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !6706

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %pgdp.addr, align 8, !dbg !6710
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #14, !dbg !6710
  %1 = load ptr, ptr %pgdp.addr, align 8, !dbg !6710
  %coerce.dive3 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !6710
  %2 = load i64, ptr %coerce.dive3, align 8, !dbg !6710
  %call = call i64 @pti_set_user_pgtbl(ptr noundef %1, i64 %2) #15, !dbg !6710
  %coerce.dive4 = getelementptr inbounds %struct.pgd_t, ptr %tmp, i32 0, i32 0, !dbg !6710
  store volatile i64 %call, ptr %coerce.dive4, align 8, !dbg !6710
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %tmp, i64 8, i1 true), !dbg !6710
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #14, !dbg !6710
  br label %do.end5, !dbg !6710

do.end5:                                          ; preds = %do.body2
  br label %do.end6, !dbg !6706

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6712
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_make_pgd(i64 noundef %val) #6 align 16 !dbg !6713 {
entry:
  %retval = alloca %struct.pgd_t, align 8
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6717, metadata !DIExpression()), !dbg !6718
  %pgd = getelementptr inbounds %struct.pgd_t, ptr %retval, i32 0, i32 0, !dbg !6719
  %0 = load i64, ptr %val.addr, align 8, !dbg !6720
  %and = and i64 %0, -1, !dbg !6721
  store i64 %and, ptr %pgd, align 8, !dbg !6719
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %retval, i32 0, i32 0, !dbg !6722
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !6722
  ret i64 %1, !dbg !6722
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_pgd_val(i64 %pgd.coerce) #6 align 16 !dbg !6723 {
entry:
  %pgd = alloca %struct.pgd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0
  store i64 %pgd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !6727, metadata !DIExpression()), !dbg !6728
  %pgd1 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !6729
  %0 = load i64, ptr %pgd1, align 8, !dbg !6729
  %and = and i64 %0, -1, !dbg !6730
  ret i64 %and, !dbg !6731
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @p4d_offset(ptr noundef %pgd, i64 noundef %address) #6 align 16 !dbg !6732 {
entry:
  %retval = alloca ptr, align 8
  %pgd.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  store ptr %pgd, ptr %pgd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd.addr, metadata !6737, metadata !DIExpression()), !dbg !6739
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !6738, metadata !DIExpression()), !dbg !6740
  br i1 false, label %cond.true, label %cond.false, !dbg !6741

cond.true:                                        ; preds = %entry
  br i1 false, label %if.end, label %if.then, !dbg !6742

cond.false:                                       ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false4, !dbg !6741

cond.true1:                                       ; preds = %cond.false
  br i1 false, label %cond.true2, label %cond.false3, !dbg !6742

cond.true2:                                       ; preds = %cond.true1
  br i1 true, label %if.end, label %if.then, !dbg !6742

cond.false3:                                      ; preds = %cond.true1
  %call = call zeroext i1 @arch_test_bit(i64 noundef 528, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #15, !dbg !6742
  br i1 %call, label %if.end, label %if.then, !dbg !6742

cond.false4:                                      ; preds = %cond.false
  %call5 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 528) #15, !dbg !6742
  br i1 %call5, label %if.end, label %if.then, !dbg !6741

if.then:                                          ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  %0 = load ptr, ptr %pgd.addr, align 8, !dbg !6744
  store ptr %0, ptr %retval, align 8, !dbg !6745
  br label %return, !dbg !6745

if.end:                                           ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  %1 = load ptr, ptr %pgd.addr, align 8, !dbg !6746
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %1, i32 0, i32 0, !dbg !6747
  %2 = load i64, ptr %coerce.dive, align 8, !dbg !6747
  %call6 = call i64 @pgd_page_vaddr(i64 %2) #15, !dbg !6747
  %3 = inttoptr i64 %call6 to ptr, !dbg !6748
  %4 = load i64, ptr %address.addr, align 8, !dbg !6749
  %call7 = call i64 @p4d_index(i64 noundef %4) #15, !dbg !6750
  %add.ptr = getelementptr %struct.p4d_t, ptr %3, i64 %call7, !dbg !6751
  store ptr %add.ptr, ptr %retval, align 8, !dbg !6752
  br label %return, !dbg !6752

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !6753
  ret ptr %5, !dbg !6753
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_set_p4d(ptr noundef %p4dp, i64 %p4d.coerce) #6 align 16 !dbg !6754 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %p4dp.addr = alloca ptr, align 8
  %pgd = alloca %struct.pgd_t, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca %struct.pgd_t, align 8
  %tmp16 = alloca %struct.pgd_t, align 8
  %tmp25 = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  store ptr %p4dp, ptr %p4dp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p4dp.addr, metadata !6758, metadata !DIExpression()), !dbg !6761
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !6759, metadata !DIExpression()), !dbg !6762
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgd) #14, !dbg !6763
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !6760, metadata !DIExpression()), !dbg !6764
  br i1 false, label %cond.true, label %cond.false, !dbg !6765

cond.true:                                        ; preds = %entry
  br i1 false, label %if.then, label %if.end, !dbg !6766

cond.false:                                       ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false4, !dbg !6765

cond.true1:                                       ; preds = %cond.false
  br i1 false, label %cond.true2, label %cond.false3, !dbg !6766

cond.true2:                                       ; preds = %cond.true1
  br i1 true, label %if.then, label %if.end, !dbg !6766

cond.false3:                                      ; preds = %cond.true1
  %call = call zeroext i1 @arch_test_bit(i64 noundef 528, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #15, !dbg !6766
  br i1 %call, label %if.then, label %if.end, !dbg !6766

cond.false4:                                      ; preds = %cond.false
  %call5 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 528) #15, !dbg !6766
  br i1 %call5, label %if.then, label %if.end, !dbg !6765

if.then:                                          ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  br label %do.body, !dbg !6768

do.body:                                          ; preds = %if.then
  br label %do.body6, !dbg !6770

do.body6:                                         ; preds = %do.body
  br label %do.cond, !dbg !6772

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !6772

do.end:                                           ; preds = %do.cond
  br label %do.body7, !dbg !6770

do.body7:                                         ; preds = %do.end
  %0 = load ptr, ptr %p4dp.addr, align 8, !dbg !6774
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %p4d, i64 8, i1 true), !dbg !6774
  br label %do.cond8, !dbg !6774

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !6774

do.end9:                                          ; preds = %do.cond8
  br label %do.cond10, !dbg !6770

do.cond10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !6770

do.end11:                                         ; preds = %do.cond10
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6776

if.end:                                           ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #14, !dbg !6777
  %coerce.dive12 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !6778
  %1 = load i64, ptr %coerce.dive12, align 8, !dbg !6778
  %call13 = call i64 @native_p4d_val(i64 %1) #15, !dbg !6778
  %call14 = call i64 @native_make_pgd(i64 noundef %call13) #15, !dbg !6777
  %coerce.dive15 = getelementptr inbounds %struct.pgd_t, ptr %tmp, i32 0, i32 0, !dbg !6777
  store i64 %call14, ptr %coerce.dive15, align 8, !dbg !6777
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pgd, ptr align 8 %tmp, i64 8, i1 false), !dbg !6777
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #14, !dbg !6777
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp16) #14, !dbg !6779
  %2 = load ptr, ptr %p4dp.addr, align 8, !dbg !6780
  %coerce.dive17 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !6779
  %3 = load i64, ptr %coerce.dive17, align 8, !dbg !6779
  %call18 = call i64 @pti_set_user_pgtbl(ptr noundef %2, i64 %3) #15, !dbg !6779
  %coerce.dive19 = getelementptr inbounds %struct.pgd_t, ptr %tmp16, i32 0, i32 0, !dbg !6779
  store i64 %call18, ptr %coerce.dive19, align 8, !dbg !6779
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pgd, ptr align 8 %tmp16, i64 8, i1 false), !dbg !6779
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp16) #14, !dbg !6779
  br label %do.body20, !dbg !6781

do.body20:                                        ; preds = %if.end
  br label %do.body21, !dbg !6782

do.body21:                                        ; preds = %do.body20
  br label %do.cond22, !dbg !6784

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !6784

do.end23:                                         ; preds = %do.cond22
  br label %do.body24, !dbg !6782

do.body24:                                        ; preds = %do.end23
  %4 = load ptr, ptr %p4dp.addr, align 8, !dbg !6786
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp25) #14, !dbg !6786
  %coerce.dive26 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !6786
  %5 = load i64, ptr %coerce.dive26, align 8, !dbg !6786
  %call27 = call i64 @native_pgd_val(i64 %5) #15, !dbg !6786
  %call28 = call i64 @native_make_p4d(i64 noundef %call27) #15, !dbg !6786
  %coerce.dive29 = getelementptr inbounds %struct.p4d_t, ptr %tmp25, i32 0, i32 0, !dbg !6786
  store volatile i64 %call28, ptr %coerce.dive29, align 8, !dbg !6786
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %4, ptr align 8 %tmp25, i64 8, i1 true), !dbg !6786
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp25) #14, !dbg !6786
  br label %do.cond30, !dbg !6786

do.cond30:                                        ; preds = %do.body24
  br label %do.end31, !dbg !6786

do.end31:                                         ; preds = %do.cond30
  br label %do.cond32, !dbg !6782

do.cond32:                                        ; preds = %do.end31
  br label %do.end33, !dbg !6782

do.end33:                                         ; preds = %do.cond32
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6788
  br label %cleanup, !dbg !6788

cleanup:                                          ; preds = %do.end33, %do.end11
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgd) #14, !dbg !6788
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6788

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_make_p4d(i64 noundef %val) #6 align 16 !dbg !6789 {
entry:
  %retval = alloca %struct.p4d_t, align 8
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6793, metadata !DIExpression()), !dbg !6794
  %p4d = getelementptr inbounds %struct.p4d_t, ptr %retval, i32 0, i32 0, !dbg !6795
  %0 = load i64, ptr %val.addr, align 8, !dbg !6796
  store i64 %0, ptr %p4d, align 8, !dbg !6795
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %retval, i32 0, i32 0, !dbg !6797
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !6797
  ret i64 %1, !dbg !6797
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_p4d_val(i64 %p4d.coerce) #6 align 16 !dbg !6798 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !6802, metadata !DIExpression()), !dbg !6803
  %p4d1 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !6804
  %0 = load i64, ptr %p4d1, align 8, !dbg !6804
  ret i64 %0, !dbg !6805
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pud_offset(ptr noundef %p4d, i64 noundef %address) #6 align 16 !dbg !6806 {
entry:
  %p4d.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  store ptr %p4d, ptr %p4d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d.addr, metadata !6810, metadata !DIExpression()), !dbg !6812
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !6811, metadata !DIExpression()), !dbg !6813
  %0 = load ptr, ptr %p4d.addr, align 8, !dbg !6814
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %0, i32 0, i32 0, !dbg !6815
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !6815
  %call = call ptr @p4d_pgtable(i64 %1) #15, !dbg !6815
  %2 = load i64, ptr %address.addr, align 8, !dbg !6816
  %call1 = call i64 @pud_index(i64 noundef %2) #15, !dbg !6817
  %add.ptr = getelementptr %struct.pud_t, ptr %call, i64 %call1, !dbg !6818
  ret ptr %add.ptr, !dbg !6819
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_set_pud(ptr noundef %pudp, i64 %pud.coerce) #6 align 16 !dbg !6820 {
entry:
  %pud = alloca %struct.pud_t, align 8
  %pudp.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  store ptr %pudp, ptr %pudp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pudp.addr, metadata !6824, metadata !DIExpression()), !dbg !6826
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !6825, metadata !DIExpression()), !dbg !6827
  br label %do.body, !dbg !6828

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6829

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !6831

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !6829

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %pudp.addr, align 8, !dbg !6833
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %pud, i64 8, i1 true), !dbg !6833
  br label %do.end3, !dbg !6833

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !6829

do.end4:                                          ; preds = %do.end3
  ret void, !dbg !6835
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_make_pud(i64 noundef %val) #6 align 16 !dbg !6836 {
entry:
  %retval = alloca %struct.pud_t, align 8
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6840, metadata !DIExpression()), !dbg !6841
  %pud = getelementptr inbounds %struct.pud_t, ptr %retval, i32 0, i32 0, !dbg !6842
  %0 = load i64, ptr %val.addr, align 8, !dbg !6843
  store i64 %0, ptr %pud, align 8, !dbg !6842
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %retval, i32 0, i32 0, !dbg !6844
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !6844
  ret i64 %1, !dbg !6844
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_pud_val(i64 %pud.coerce) #6 align 16 !dbg !6845 {
entry:
  %pud = alloca %struct.pud_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !6849, metadata !DIExpression()), !dbg !6850
  %pud1 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !6851
  %0 = load i64, ptr %pud1, align 8, !dbg !6851
  ret i64 %0, !dbg !6852
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pmd_offset(ptr noundef %pud, i64 noundef %address) #6 align 16 !dbg !6853 {
entry:
  %pud.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  store ptr %pud, ptr %pud.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pud.addr, metadata !6857, metadata !DIExpression()), !dbg !6859
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !6858, metadata !DIExpression()), !dbg !6860
  %0 = load ptr, ptr %pud.addr, align 8, !dbg !6861
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %0, i32 0, i32 0, !dbg !6862
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !6862
  %call = call ptr @pud_pgtable(i64 %1) #15, !dbg !6862
  %2 = load i64, ptr %address.addr, align 8, !dbg !6863
  %call1 = call i64 @pmd_index(i64 noundef %2) #15, !dbg !6864
  %add.ptr = getelementptr %struct.pmd_t, ptr %call, i64 %call1, !dbg !6865
  ret ptr %add.ptr, !dbg !6866
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_set_pmd(ptr noundef %pmdp, i64 %pmd.coerce) #6 align 16 !dbg !6867 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %pmdp.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  store ptr %pmdp, ptr %pmdp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pmdp.addr, metadata !6871, metadata !DIExpression()), !dbg !6873
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !6872, metadata !DIExpression()), !dbg !6874
  br label %do.body, !dbg !6875

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6876

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !6878

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !6876

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %pmdp.addr, align 8, !dbg !6880
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %pmd, i64 8, i1 true), !dbg !6880
  br label %do.end3, !dbg !6880

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !6876

do.end4:                                          ; preds = %do.end3
  ret void, !dbg !6882
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_make_pmd(i64 noundef %val) #6 align 16 !dbg !6883 {
entry:
  %retval = alloca %struct.pmd_t, align 8
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6887, metadata !DIExpression()), !dbg !6888
  %pmd = getelementptr inbounds %struct.pmd_t, ptr %retval, i32 0, i32 0, !dbg !6889
  %0 = load i64, ptr %val.addr, align 8, !dbg !6890
  store i64 %0, ptr %pmd, align 8, !dbg !6889
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %retval, i32 0, i32 0, !dbg !6891
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !6891
  ret i64 %1, !dbg !6891
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_pmd_val(i64 %pmd.coerce) #6 align 16 !dbg !6892 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !6896, metadata !DIExpression()), !dbg !6897
  %pmd1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !6898
  %0 = load i64, ptr %pmd1, align 8, !dbg !6898
  ret i64 %0, !dbg !6899
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @map_vsyscall() #4 section ".init.text" align 16 !dbg !6900 {
entry:
  %physaddr_vsyscall = alloca i64, align 8
  %.compoundliteral = alloca %struct.pgprot, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %physaddr_vsyscall) #14, !dbg !6903
  call void @llvm.dbg.declare(metadata ptr %physaddr_vsyscall, metadata !6902, metadata !DIExpression()), !dbg !6904
  %0 = load i64, ptr @phys_base, align 8, !dbg !6905
  %add = add i64 sub (i64 ptrtoint (ptr @__vsyscall_page to i64), i64 -2147483648), %0, !dbg !6905
  store i64 %add, ptr %physaddr_vsyscall, align 8, !dbg !6904
  %1 = load i32, ptr @vsyscall_mode, align 4, !dbg !6906
  %cmp = icmp eq i32 %1, 0, !dbg !6908
  br i1 %cmp, label %if.then, label %if.end, !dbg !6909

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %physaddr_vsyscall, align 8, !dbg !6910
  %pgprot = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral, i32 0, i32 0, !dbg !6912
  %3 = load i64, ptr @__default_kernel_pte_mask, align 8, !dbg !6912
  %and = and i64 -9223372036854775515, %3, !dbg !6912
  store i64 %and, ptr %pgprot, align 8, !dbg !6912
  %coerce.dive = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral, i32 0, i32 0, !dbg !6913
  %4 = load i64, ptr %coerce.dive, align 8, !dbg !6913
  call void @__set_fixmap(i32 noundef 511, i64 noundef %2, i64 %4) #15, !dbg !6913
  call void @set_vsyscall_pgtable_user_bits(ptr noundef @init_top_pgt) #17, !dbg !6914
  br label %if.end, !dbg !6915

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr @vsyscall_mode, align 4, !dbg !6916
  %cmp1 = icmp eq i32 %5, 1, !dbg !6918
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !6919

if.then2:                                         ; preds = %if.end
  call void @vm_flags_init(ptr noundef @gate_vma, i64 noundef 4) #15, !dbg !6920
  br label %if.end3, !dbg !6920

if.end3:                                          ; preds = %if.then2, %if.end
  br label %do.body, !dbg !6921

do.body:                                          ; preds = %if.end3
  br label %do.cond, !dbg !6922

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6922

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %physaddr_vsyscall) #14, !dbg !6924
  ret void, !dbg !6924
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__set_fixmap(i32 noundef %idx, i64 noundef %phys, i64 %flags.coerce) #6 align 16 !dbg !6925 {
entry:
  %flags = alloca %struct.pgprot, align 8
  %idx.addr = alloca i32, align 4
  %phys.addr = alloca i64, align 8
  %coerce.dive = getelementptr inbounds %struct.pgprot, ptr %flags, i32 0, i32 0
  store i64 %flags.coerce, ptr %coerce.dive, align 8
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !6929, metadata !DIExpression()), !dbg !6932
  store i64 %phys, ptr %phys.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phys.addr, metadata !6930, metadata !DIExpression()), !dbg !6933
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6931, metadata !DIExpression()), !dbg !6934
  %0 = load i32, ptr %idx.addr, align 4, !dbg !6935
  %1 = load i64, ptr %phys.addr, align 8, !dbg !6936
  %coerce.dive1 = getelementptr inbounds %struct.pgprot, ptr %flags, i32 0, i32 0, !dbg !6937
  %2 = load i64, ptr %coerce.dive1, align 8, !dbg !6937
  call void @native_set_fixmap(i32 noundef %0, i64 noundef %1, i64 %2) #15, !dbg !6937
  ret void, !dbg !6938
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @vm_flags_init(ptr noundef %vma, i64 noundef %flags) #6 align 16 !dbg !6939 {
entry:
  %vma.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !6943, metadata !DIExpression()), !dbg !6945
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6944, metadata !DIExpression()), !dbg !6946
  %0 = load i64, ptr %flags.addr, align 8, !dbg !6947
  %1 = load ptr, ptr %vma.addr, align 8, !dbg !6948
  %2 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 3, !dbg !6948
  store i64 %0, ptr %2, align 8, !dbg !6949
  ret void, !dbg !6950
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_trace_event_raw_event_emulate_vsyscall(ptr noundef %__data, i32 noundef %nr) #1 align 16 !dbg !6951 {
entry:
  %__data.addr = alloca ptr, align 8
  %nr.addr = alloca i32, align 4
  %trace_file = alloca ptr, align 8
  %__data_offsets = alloca %struct.trace_event_data_offsets_emulate_vsyscall, align 1
  %fbuffer = alloca %struct.trace_event_buffer, align 8
  %entry1 = alloca ptr, align 8
  %__data_size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %__data, ptr %__data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__data.addr, metadata !6953, metadata !DIExpression()), !dbg !6995
  store i32 %nr, ptr %nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6954, metadata !DIExpression()), !dbg !6995
  call void @llvm.lifetime.start.p0(i64 8, ptr %trace_file) #14, !dbg !6995
  call void @llvm.dbg.declare(metadata ptr %trace_file, metadata !6955, metadata !DIExpression()), !dbg !6995
  %0 = load ptr, ptr %__data.addr, align 8, !dbg !6995
  store ptr %0, ptr %trace_file, align 8, !dbg !6995
  call void @llvm.lifetime.start.p0(i64 0, ptr %__data_offsets) #14, !dbg !6995
  call void @llvm.dbg.declare(metadata ptr %__data_offsets, metadata !6974, metadata !DIExpression()), !dbg !6995
  call void @llvm.lifetime.start.p0(i64 48, ptr %fbuffer) #14, !dbg !6995
  call void @llvm.dbg.declare(metadata ptr %fbuffer, metadata !6975, metadata !DIExpression()), !dbg !6995
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #14, !dbg !6995
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !6993, metadata !DIExpression()), !dbg !6995
  call void @llvm.lifetime.start.p0(i64 4, ptr %__data_size) #14, !dbg !6995
  call void @llvm.dbg.declare(metadata ptr %__data_size, metadata !6994, metadata !DIExpression()), !dbg !6995
  %1 = load ptr, ptr %trace_file, align 8, !dbg !6996
  %call = call zeroext i1 @trace_trigger_soft_disabled(ptr noundef %1) #15, !dbg !6996
  br i1 %call, label %if.then, label %if.end, !dbg !6995

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6996

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %nr.addr, align 4, !dbg !6995
  %call2 = call i32 @trace_event_get_offsets_emulate_vsyscall(ptr noundef %__data_offsets, i32 noundef %2) #15, !dbg !6995
  store i32 %call2, ptr %__data_size, align 4, !dbg !6995
  %3 = load ptr, ptr %trace_file, align 8, !dbg !6995
  %4 = load i32, ptr %__data_size, align 4, !dbg !6995
  %conv = sext i32 %4 to i64, !dbg !6995
  %add = add i64 12, %conv, !dbg !6995
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef %fbuffer, ptr noundef %3, i64 noundef %add) #15, !dbg !6995
  store ptr %call3, ptr %entry1, align 8, !dbg !6995
  %5 = load ptr, ptr %entry1, align 8, !dbg !6998
  %tobool = icmp ne ptr %5, null, !dbg !6998
  br i1 %tobool, label %if.end5, label %if.then4, !dbg !6995

if.then4:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6998

if.end5:                                          ; preds = %if.end
  %6 = load i32, ptr %nr.addr, align 4, !dbg !7000
  %7 = load ptr, ptr %entry1, align 8, !dbg !7000
  %nr6 = getelementptr inbounds %struct.trace_event_raw_emulate_vsyscall, ptr %7, i32 0, i32 1, !dbg !7000
  store i32 %6, ptr %nr6, align 4, !dbg !7000
  call void @trace_event_buffer_commit(ptr noundef %fbuffer) #15, !dbg !6995
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6995
  br label %cleanup, !dbg !6995

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %__data_size) #14, !dbg !6995
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #14, !dbg !6995
  call void @llvm.lifetime.end.p0(i64 48, ptr %fbuffer) #14, !dbg !6995
  call void @llvm.lifetime.end.p0(i64 0, ptr %__data_offsets) #14, !dbg !6995
  call void @llvm.lifetime.end.p0(i64 8, ptr %trace_file) #14, !dbg !6995
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6995

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @trace_trigger_soft_disabled(ptr noundef %file) #10 align 16 !dbg !7002 {
entry:
  %retval = alloca i1, align 1
  %file.addr = alloca ptr, align 8
  %eflags = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !7006, metadata !DIExpression()), !dbg !7008
  call void @llvm.lifetime.start.p0(i64 8, ptr %eflags) #14, !dbg !7009
  call void @llvm.dbg.declare(metadata ptr %eflags, metadata !7007, metadata !DIExpression()), !dbg !7010
  %0 = load ptr, ptr %file.addr, align 8, !dbg !7011
  %flags = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7, !dbg !7012
  %1 = load i64, ptr %flags, align 8, !dbg !7012
  store i64 %1, ptr %eflags, align 8, !dbg !7010
  %2 = load i64, ptr %eflags, align 8, !dbg !7013
  %and = and i64 %2, 704, !dbg !7013
  %tobool = icmp ne i64 %and, 0, !dbg !7013
  %lnot = xor i1 %tobool, true, !dbg !7013
  %lnot1 = xor i1 %lnot, true, !dbg !7013
  %lnot2 = xor i1 %lnot1, true, !dbg !7013
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !7013
  %conv = sext i32 %lnot.ext to i64, !dbg !7013
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !7013
  %tobool3 = icmp ne i64 %expval, 0, !dbg !7013
  br i1 %tobool3, label %if.then, label %if.end, !dbg !7015

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !7016
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7016

if.end:                                           ; preds = %entry
  %3 = load i64, ptr %eflags, align 8, !dbg !7017
  %and4 = and i64 %3, 256, !dbg !7017
  %tobool5 = icmp ne i64 %and4, 0, !dbg !7017
  %lnot6 = xor i1 %tobool5, true, !dbg !7017
  %lnot8 = xor i1 %lnot6, true, !dbg !7017
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !7017
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !7017
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 1), !dbg !7017
  %tobool12 = icmp ne i64 %expval11, 0, !dbg !7017
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !7019

if.then13:                                        ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !7020
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7020

if.end14:                                         ; preds = %if.end
  %4 = load ptr, ptr %file.addr, align 8, !dbg !7021
  %call = call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %4) #15, !dbg !7022
  store i1 %call, ptr %retval, align 1, !dbg !7023
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7023

cleanup:                                          ; preds = %if.end14, %if.then13, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %eflags) #14, !dbg !7024
  %5 = load i1, ptr %retval, align 1, !dbg !7024
  ret i1 %5, !dbg !7024
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @trace_event_get_offsets_emulate_vsyscall(ptr noundef %__data_offsets, i32 noundef %nr) #6 align 16 !dbg !7025 {
entry:
  %__data_offsets.addr = alloca ptr, align 8
  %nr.addr = alloca i32, align 4
  %__data_size = alloca i32, align 4
  %__item_length = alloca i32, align 4
  %entry1 = alloca ptr, align 8
  store ptr %__data_offsets, ptr %__data_offsets.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__data_offsets.addr, metadata !7030, metadata !DIExpression()), !dbg !7035
  store i32 %nr, ptr %nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7031, metadata !DIExpression()), !dbg !7035
  call void @llvm.lifetime.start.p0(i64 4, ptr %__data_size) #14, !dbg !7035
  call void @llvm.dbg.declare(metadata ptr %__data_size, metadata !7032, metadata !DIExpression()), !dbg !7035
  store i32 0, ptr %__data_size, align 4, !dbg !7035
  call void @llvm.lifetime.start.p0(i64 4, ptr %__item_length) #14, !dbg !7035
  call void @llvm.dbg.declare(metadata ptr %__item_length, metadata !7033, metadata !DIExpression()), !dbg !7035
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #14, !dbg !7035
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !7034, metadata !DIExpression()), !dbg !7035
  %0 = load i32, ptr %__data_size, align 4, !dbg !7035
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #14, !dbg !7035
  call void @llvm.lifetime.end.p0(i64 4, ptr %__item_length) #14, !dbg !7035
  call void @llvm.lifetime.end.p0(i64 4, ptr %__data_size) #14, !dbg !7035
  ret i32 %0, !dbg !7035
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7036 dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7040 dso_local void @trace_event_buffer_commit(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7043 dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @trace_raw_output_emulate_vsyscall(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #1 align 16 !dbg !7044 {
entry:
  %retval = alloca i32, align 4
  %iter.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %trace_event.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  %p = alloca ptr, align 8
  %field = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !7046, metadata !DIExpression()), !dbg !7054
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7047, metadata !DIExpression()), !dbg !7054
  store ptr %trace_event, ptr %trace_event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %trace_event.addr, metadata !7048, metadata !DIExpression()), !dbg !7054
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #14, !dbg !7054
  call void @llvm.dbg.declare(metadata ptr %s, metadata !7049, metadata !DIExpression()), !dbg !7054
  %0 = load ptr, ptr %iter.addr, align 8, !dbg !7054
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16, !dbg !7054
  store ptr %seq, ptr %s, align 8, !dbg !7054
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #14, !dbg !7054
  call void @llvm.dbg.declare(metadata ptr %p, metadata !7051, metadata !DIExpression()), !dbg !7054
  %1 = load ptr, ptr %iter.addr, align 8, !dbg !7054
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %1, i32 0, i32 13, !dbg !7054
  store ptr %tmp_seq, ptr %p, align 8, !dbg !7054
  call void @llvm.lifetime.start.p0(i64 8, ptr %field) #14, !dbg !7054
  call void @llvm.dbg.declare(metadata ptr %field, metadata !7052, metadata !DIExpression()), !dbg !7054
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !7054
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !7053, metadata !DIExpression()), !dbg !7054
  %2 = load ptr, ptr %iter.addr, align 8, !dbg !7054
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %2, i32 0, i32 17, !dbg !7054
  %3 = load ptr, ptr %ent, align 8, !dbg !7054
  store ptr %3, ptr %field, align 8, !dbg !7054
  %4 = load ptr, ptr %iter.addr, align 8, !dbg !7054
  %5 = load ptr, ptr %trace_event.addr, align 8, !dbg !7054
  %call = call i32 @trace_raw_output_prep(ptr noundef %4, ptr noundef %5) #15, !dbg !7054
  store i32 %call, ptr %ret, align 4, !dbg !7054
  %6 = load i32, ptr %ret, align 4, !dbg !7055
  %cmp = icmp ne i32 %6, 1, !dbg !7055
  br i1 %cmp, label %if.then, label %if.end, !dbg !7054

if.then:                                          ; preds = %entry
  %7 = load i32, ptr %ret, align 4, !dbg !7055
  store i32 %7, ptr %retval, align 4, !dbg !7055
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7055

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %iter.addr, align 8, !dbg !7054
  %9 = load ptr, ptr %field, align 8, !dbg !7054
  %nr = getelementptr inbounds %struct.trace_event_raw_emulate_vsyscall, ptr %9, i32 0, i32 1, !dbg !7054
  %10 = load i32, ptr %nr, align 4, !dbg !7054
  call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %8, ptr noundef @.str.12, i32 noundef %10) #15, !dbg !7054
  %11 = load ptr, ptr %s, align 8, !dbg !7054
  %call1 = call i32 @trace_handle_return(ptr noundef %11) #15, !dbg !7054
  store i32 %call1, ptr %retval, align 4, !dbg !7054
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7054

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !7054
  call void @llvm.lifetime.end.p0(i64 8, ptr %field) #14, !dbg !7054
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #14, !dbg !7054
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #14, !dbg !7054
  %12 = load i32, ptr %retval, align 4, !dbg !7054
  ret i32 %12, !dbg !7054
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7057 dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7060 dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7063 dso_local i32 @trace_handle_return(ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @bpf_prog_array_valid(ptr noundef %call) #6 align 16 !dbg !7066 {
entry:
  %call.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %call, ptr %call.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %call.addr, metadata !7070, metadata !DIExpression()), !dbg !7071
  br label %do.body, !dbg !7072

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !7074

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %call.addr, align 8, !dbg !7072
  %prog_array = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11, !dbg !7072
  %1 = load volatile ptr, ptr %prog_array, align 8, !dbg !7072
  store ptr %1, ptr %tmp, align 8, !dbg !7074
  %2 = load ptr, ptr %tmp, align 8, !dbg !7072
  %tobool = icmp ne ptr %2, null, !dbg !7076
  %lnot = xor i1 %tobool, true, !dbg !7076
  %lnot1 = xor i1 %lnot, true, !dbg !7077
  ret i1 %lnot1, !dbg !7078
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hlist_empty(ptr noundef %h) #6 align 16 !dbg !7079 {
entry:
  %h.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !7086, metadata !DIExpression()), !dbg !7087
  br label %do.body, !dbg !7088

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !7090

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %h.addr, align 8, !dbg !7088
  %first = getelementptr inbounds %struct.hlist_head, ptr %0, i32 0, i32 0, !dbg !7088
  %1 = load volatile ptr, ptr %first, align 8, !dbg !7088
  store ptr %1, ptr %tmp, align 8, !dbg !7090
  %2 = load ptr, ptr %tmp, align 8, !dbg !7088
  %tobool = icmp ne ptr %2, null, !dbg !7092
  %lnot = xor i1 %tobool, true, !dbg !7092
  %lnot.ext = zext i1 %lnot to i32, !dbg !7092
  ret i32 %lnot.ext, !dbg !7093
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7094 dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @perf_fetch_caller_regs(ptr noundef %regs) #6 align 16 !dbg !7098 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !7102, metadata !DIExpression()), !dbg !7103
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !7104
  %1 = ptrtoint ptr %0 to i64, !dbg !7104
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !7104
  %ip = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 16, !dbg !7104
  store i64 %1, ptr %ip, align 8, !dbg !7104
  %3 = call ptr @llvm.frameaddress.p0(i32 0), !dbg !7104
  %4 = ptrtoint ptr %3 to i64, !dbg !7104
  %5 = load ptr, ptr %regs.addr, align 8, !dbg !7104
  %sp = getelementptr inbounds %struct.pt_regs, ptr %5, i32 0, i32 19, !dbg !7104
  store i64 %4, ptr %sp, align 8, !dbg !7104
  %6 = load ptr, ptr %regs.addr, align 8, !dbg !7104
  %7 = getelementptr inbounds %struct.pt_regs, ptr %6, i32 0, i32 17, !dbg !7104
  store i16 16, ptr %7, align 8, !dbg !7104
  %8 = load ptr, ptr %regs.addr, align 8, !dbg !7104
  %flags = getelementptr inbounds %struct.pt_regs, ptr %8, i32 0, i32 18, !dbg !7104
  store i64 0, ptr %flags, align 8, !dbg !7104
  ret void, !dbg !7106
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7107 dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.frameaddress.p0(i32 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7110 dso_local i32 @strcmp(ptr noundef, ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7114 dso_local i32 @___ratelimit(ptr noundef, ptr noundef) #0

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !7118 dso_local i32 @_printk(ptr noundef, ...) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #10 align 16 !dbg !7122 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #14, !dbg !7133
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !7127, metadata !DIExpression()), !dbg !7133
  br label %do.body, !dbg !7133

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !7134
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !7129, metadata !DIExpression()), !dbg !7134
  store ptr null, ptr %__vpp_verify, align 8, !dbg !7134
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !7134
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !7133
  br label %do.cond, !dbg !7134

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7134

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #14, !dbg !7135
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !7131, metadata !DIExpression()), !dbg !7135
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #18, !dbg !7135, !srcloc !7136
  store i64 %1, ptr %pfo_val__, align 8, !dbg !7135
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !7135
  %3 = inttoptr i64 %2 to ptr, !dbg !7135
  store ptr %3, ptr %tmp, align 8, !dbg !7135
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #14, !dbg !7133
  %4 = load ptr, ptr %tmp, align 8, !dbg !7135
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !7133
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !7133
  store ptr %5, ptr %tmp1, align 8, !dbg !7133
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #14, !dbg !7137
  %6 = load ptr, ptr %tmp1, align 8, !dbg !7133
  ret ptr %6, !dbg !7138
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @task_pid_nr(ptr noundef %tsk) #6 align 16 !dbg !7139 {
entry:
  %tsk.addr = alloca ptr, align 8
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !7143, metadata !DIExpression()), !dbg !7144
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !7145
  %pid = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 62, !dbg !7146
  %1 = load i32, ptr %pid, align 8, !dbg !7146
  ret i32 %1, !dbg !7147
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #10 align 16 !dbg !7148 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !7153, metadata !DIExpression()), !dbg !7154
  %0 = load ptr, ptr %key.addr, align 8, !dbg !7155
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #15, !dbg !7156
  ret i1 %call, !dbg !7157
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpu_online(i32 noundef %cpu) #6 align 16 !dbg !7158 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !7162, metadata !DIExpression()), !dbg !7163
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !7164
  %call = call zeroext i1 @cpumask_test_cpu(i32 noundef %0, ptr noundef @__cpu_online_mask) #15, !dbg !7165
  ret i1 %call, !dbg !7166
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #10 align 16 !dbg !7167 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !7170, metadata !DIExpression()), !dbg !7177
  br label %do.body, !dbg !7178

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #14, !dbg !7179
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !7171, metadata !DIExpression()), !dbg !7179
  %0 = load i32, ptr %val.addr, align 4, !dbg !7179
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !7179
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !7179

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !7179
  %cmp = icmp eq i32 %2, 1, !dbg !7179
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !7179

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !7179
  %cmp1 = icmp eq i32 %3, -1, !dbg !7179
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !7179

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !7179
  br label %cond.end, !dbg !7179

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !7179

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !7179
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !7179
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !7180
  %cmp2 = icmp eq i32 %5, 1, !dbg !7180
  br i1 %cmp2, label %if.then, label %if.else, !dbg !7179

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.34, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.34, ptr @pcpu_hot, i32 0, i32 1)) #14, !dbg !7181, !srcloc !7183
  br label %if.end8, !dbg !7180

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !7184
  %cmp3 = icmp eq i32 %6, -1, !dbg !7184
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !7180

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.34, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.34, ptr @pcpu_hot, i32 0, i32 1)) #14, !dbg !7185, !srcloc !7187
  br label %if.end, !dbg !7184

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !7184

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #14, !dbg !7188
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !7173, metadata !DIExpression()), !dbg !7188
  %7 = load i32, ptr %val.addr, align 4, !dbg !7188
  %conv = sext i32 %7 to i64, !dbg !7188
  %and = and i64 %conv, 4294967295, !dbg !7188
  %conv7 = trunc i64 %and to i32, !dbg !7188
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !7188
  %8 = load i32, ptr %pto_val__, align 4, !dbg !7188
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.34, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.34, ptr @pcpu_hot, i32 0, i32 1)) #14, !dbg !7188, !srcloc !7189
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #14, !dbg !7184
  br label %do.cond, !dbg !7188

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !7188

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #14, !dbg !7178
  br label %do.end10, !dbg !7179

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !7190
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #10 align 16 !dbg !7191 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #14, !dbg !7195
  call void @llvm.dbg.declare(metadata ptr %c, metadata !7193, metadata !DIExpression()), !dbg !7195
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.34, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.34, ptr @pcpu_hot, i32 0, i32 1)) #14, !dbg !7195, !srcloc !7196
  %1 = icmp ult i8 %0, 2, !dbg !7195
  call void @llvm.assume(i1 %1), !dbg !7195
  store i8 %0, ptr %c, align 1, !dbg !7195
  %2 = load i8, ptr %c, align 1, !dbg !7195, !range !7197, !noundef !718
  %tobool = trunc i8 %2 to i1, !dbg !7195
  %frombool = zext i1 %tobool to i8, !dbg !7195
  store i8 %frombool, ptr %tmp, align 1, !dbg !7195
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #14, !dbg !7198
  %3 = load i8, ptr %tmp, align 1, !dbg !7195, !range !7197, !noundef !718
  %tobool1 = trunc i8 %3 to i1, !dbg !7195
  ret i1 %tobool1, !dbg !7199
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #10 align 16 !dbg !7200 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !7205, metadata !DIExpression()), !dbg !7208
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !7206, metadata !DIExpression()), !dbg !7209
  %0 = load ptr, ptr %key.addr, align 8, !dbg !7210
  %1 = load i8, ptr %branch.addr, align 1, !dbg !7211, !range !7197, !noundef !718
  %tobool = trunc i8 %1 to i1, !dbg !7211
  %conv = zext i1 %tobool to i32, !dbg !7211
  %or = or i32 2, %conv, !dbg !7212
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #14
          to label %asm.fallthrough [label %l_yes], !dbg !7213, !srcloc !7214

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !7215
  br label %return, !dbg !7215

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !7207), !dbg !7216
  store i1 true, ptr %retval, align 1, !dbg !7217
  br label %return, !dbg !7217

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !7218
  ret i1 %2, !dbg !7218
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_test_cpu(i32 noundef %cpu, ptr noundef %cpumask) #10 align 16 !dbg !7219 {
entry:
  %cpu.addr = alloca i32, align 4
  %cpumask.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !7223, metadata !DIExpression()), !dbg !7225
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !7224, metadata !DIExpression()), !dbg !7226
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !7227
  %call = call i32 @cpumask_check(i32 noundef %0) #15, !dbg !7227
  %conv = zext i32 %call to i64, !dbg !7227
  %1 = load ptr, ptr %cpumask.addr, align 8, !dbg !7227
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !7227
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !7227
  %call1 = call zeroext i1 @_test_bit(i64 noundef %conv, ptr noundef %arraydecay) #15, !dbg !7227
  ret i1 %call1, !dbg !7228
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_check(i32 noundef %cpu) #10 align 16 !dbg !7229 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !7233, metadata !DIExpression()), !dbg !7234
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !7235
  call void @cpu_max_bits_warn(i32 noundef %0, i32 noundef 64) #15, !dbg !7236
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !7237
  ret i32 %1, !dbg !7238
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_max_bits_warn(i32 noundef %cpu, i32 noundef %bits) #10 align 16 !dbg !7239 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !7243, metadata !DIExpression()), !dbg !7245
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !7244, metadata !DIExpression()), !dbg !7246
  ret void, !dbg !7247
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__access_ok(ptr noundef %ptr, i64 noundef %size) #6 align 16 !dbg !7248 {
entry:
  %retval = alloca i1, align 1
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %sum = alloca i64, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7253, metadata !DIExpression()), !dbg !7258
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7254, metadata !DIExpression()), !dbg !7259
  %0 = load i64, ptr %size.addr, align 8, !dbg !7260
  %cmp = icmp ule i64 %0, 4096, !dbg !7261
  %conv = zext i1 %cmp to i32, !dbg !7261
  %1 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !7262
  br i1 %1, label %land.lhs.true, label %if.else, !dbg !7263

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !7264
  %cmp1 = icmp ule i64 %2, 4096, !dbg !7265
  br i1 %cmp1, label %if.then, label %if.else, !dbg !7266

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %ptr.addr, align 8, !dbg !7267
  %4 = ptrtoint ptr %3 to i64, !dbg !7267
  %cmp3 = icmp sge i64 %4, 0, !dbg !7267
  store i1 %cmp3, ptr %retval, align 1, !dbg !7269
  br label %return, !dbg !7269

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %sum) #14, !dbg !7270
  call void @llvm.dbg.declare(metadata ptr %sum, metadata !7255, metadata !DIExpression()), !dbg !7271
  %5 = load i64, ptr %size.addr, align 8, !dbg !7272
  %6 = load ptr, ptr %ptr.addr, align 8, !dbg !7273
  %7 = ptrtoint ptr %6 to i64, !dbg !7274
  %add = add i64 %5, %7, !dbg !7275
  store i64 %add, ptr %sum, align 8, !dbg !7271
  %8 = load i64, ptr %sum, align 8, !dbg !7276
  %cmp5 = icmp sge i64 %8, 0, !dbg !7276
  br i1 %cmp5, label %land.rhs, label %land.end, !dbg !7277

land.rhs:                                         ; preds = %if.else
  %9 = load i64, ptr %sum, align 8, !dbg !7278
  %10 = load ptr, ptr %ptr.addr, align 8, !dbg !7279
  %11 = ptrtoint ptr %10 to i64, !dbg !7280
  %cmp7 = icmp uge i64 %9, %11, !dbg !7281
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else
  %12 = phi i1 [ false, %if.else ], [ %cmp7, %land.rhs ], !dbg !7282
  store i1 %12, ptr %retval, align 1, !dbg !7283
  call void @llvm.lifetime.end.p0(i64 8, ptr %sum) #14, !dbg !7284
  br label %return

return:                                           ; preds = %land.end, %if.then
  %13 = load i1, ptr %retval, align 1, !dbg !7285
  ret i1 %13, !dbg !7285
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7286 dso_local i32 @force_sig_fault(i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7289 dso_local i32 @__secure_computing(ptr noundef) #0

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #10 align 16 !dbg !7302 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7310, metadata !DIExpression()), !dbg !7312
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7311, metadata !DIExpression()), !dbg !7313
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7314
  %1 = load i64, ptr %size.addr, align 8, !dbg !7315
  %conv = trunc i64 %1 to i32, !dbg !7315
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #15, !dbg !7316
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7317
  %3 = load i64, ptr %size.addr, align 8, !dbg !7317
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #15, !dbg !7317
  ret void, !dbg !7318
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #10 align 16 !dbg !7319 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7322, metadata !DIExpression()), !dbg !7324
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7323, metadata !DIExpression()), !dbg !7325
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7326
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !7327
  br i1 %1, label %cond.true, label %cond.false, !dbg !7327

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7328
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7329
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #15, !dbg !7330
  %conv = zext i1 %call to i32, !dbg !7330
  br label %cond.end, !dbg !7327

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !7331
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !7332
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #15, !dbg !7333
  %conv2 = zext i1 %call1 to i32, !dbg !7333
  br label %cond.end, !dbg !7327

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !7327
  %tobool = icmp ne i32 %cond, 0, !dbg !7327
  ret i1 %tobool, !dbg !7334
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !7335 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7340, metadata !DIExpression()), !dbg !7342
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7341, metadata !DIExpression()), !dbg !7343
  ret i1 true, !dbg !7344
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #6 align 16 !dbg !7345 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7350, metadata !DIExpression()), !dbg !7353
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7351, metadata !DIExpression()), !dbg !7354
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !7352, metadata !DIExpression()), !dbg !7355
  ret void, !dbg !7356
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #10 align 16 !dbg !7357 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7361, metadata !DIExpression()), !dbg !7363
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7362, metadata !DIExpression()), !dbg !7364
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7365
  %and = and i64 %0, 63, !dbg !7366
  %shl = shl i64 1, %and, !dbg !7367
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !7368
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7369
  %shr = ashr i64 %2, 6, !dbg !7370
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !7368
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !7368
  %and1 = and i64 %shl, %3, !dbg !7371
  %cmp = icmp ne i64 %and1, 0, !dbg !7372
  ret i1 %cmp, !dbg !7373
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #10 align 16 !dbg !7374 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7376, metadata !DIExpression()), !dbg !7379
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7377, metadata !DIExpression()), !dbg !7380
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #14, !dbg !7381
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !7378, metadata !DIExpression()), !dbg !7382
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7383
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7384
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #14, !dbg !7385, !srcloc !7386
  %3 = icmp ult i8 %2, 2, !dbg !7385
  call void @llvm.assume(i1 %3), !dbg !7385
  store i8 %2, ptr %oldbit, align 1, !dbg !7385
  %4 = load i8, ptr %oldbit, align 1, !dbg !7387, !range !7197, !noundef !718
  %tobool = trunc i8 %4 to i1, !dbg !7387
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #14, !dbg !7388
  ret i1 %tobool, !dbg !7389
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @gate_vma_name(ptr noundef %vma) #1 align 16 !dbg !7390 {
entry:
  %vma.addr = alloca ptr, align 8
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !7392, metadata !DIExpression()), !dbg !7393
  ret ptr @.str.18, !dbg !7394
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pti_set_user_pgtbl(ptr noundef %pgdp, i64 %pgd.coerce) #6 align 16 !dbg !7395 {
entry:
  %retval = alloca %struct.pgd_t, align 8
  %pgd = alloca %struct.pgd_t, align 8
  %pgdp.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0
  store i64 %pgd.coerce, ptr %coerce.dive, align 8
  store ptr %pgdp, ptr %pgdp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgdp.addr, metadata !7399, metadata !DIExpression()), !dbg !7401
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !7400, metadata !DIExpression()), !dbg !7402
  br i1 false, label %cond.true, label %cond.false2, !dbg !7403

cond.true:                                        ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false, !dbg !7404

cond.true1:                                       ; preds = %cond.true
  br i1 true, label %if.end, label %if.then, !dbg !7404

cond.false:                                       ; preds = %cond.true
  %call = call zeroext i1 @arch_test_bit(i64 noundef 235, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #15, !dbg !7404
  br i1 %call, label %if.end, label %if.then, !dbg !7404

cond.false2:                                      ; preds = %entry
  %call3 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 235) #15, !dbg !7404
  br i1 %call3, label %if.end, label %if.then, !dbg !7403

if.then:                                          ; preds = %cond.false2, %cond.false, %cond.true1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %pgd, i64 8, i1 false), !dbg !7406
  br label %return, !dbg !7407

if.end:                                           ; preds = %cond.false2, %cond.false, %cond.true1
  %0 = load ptr, ptr %pgdp.addr, align 8, !dbg !7408
  %coerce.dive4 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !7409
  %1 = load i64, ptr %coerce.dive4, align 8, !dbg !7409
  %call5 = call i64 @__pti_set_user_pgtbl(ptr noundef %0, i64 %1) #15, !dbg !7409
  %coerce.dive6 = getelementptr inbounds %struct.pgd_t, ptr %retval, i32 0, i32 0, !dbg !7409
  store i64 %call5, ptr %coerce.dive6, align 8, !dbg !7409
  br label %return, !dbg !7410

return:                                           ; preds = %if.end, %if.then
  %coerce.dive7 = getelementptr inbounds %struct.pgd_t, ptr %retval, i32 0, i32 0, !dbg !7411
  %2 = load i64, ptr %coerce.dive7, align 8, !dbg !7411
  ret i64 %2, !dbg !7411
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_static_cpu_has(i16 noundef zeroext %bit) #10 align 16 !dbg !7412 {
entry:
  %retval = alloca i1, align 1
  %bit.addr = alloca i16, align 2
  store i16 %bit, ptr %bit.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !7417, metadata !DIExpression()), !dbg !7420
  %0 = load i16, ptr %bit.addr, align 2, !dbg !7421
  %1 = load i16, ptr %bit.addr, align 2, !dbg !7422
  %conv = zext i16 %1 to i32, !dbg !7422
  %and = and i32 %conv, 7, !dbg !7423
  %shl = shl i32 1, %and, !dbg !7424
  %2 = load i16, ptr %bit.addr, align 2, !dbg !7425
  %conv1 = zext i16 %2 to i32, !dbg !7425
  %shr = ashr i32 %conv1, 3, !dbg !7426
  %idxprom = sext i32 %shr to i64, !dbg !7427
  %arrayidx = getelementptr i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10), i64 %idxprom, !dbg !7427
  callbr void asm sideeffect "# ALT: oldinstr2\0A661:\0A\09jmp 6f\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 3*32+21)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ${0:c}\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09jmp ${4:l}\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09\0A6652:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A testb $1,${2:P} (% rip)\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 %0, i32 %shl, ptr %arrayidx) #14
          to label %asm.fallthrough [label %t_yes, label %t_no], !dbg !7428, !srcloc !7429

asm.fallthrough:                                  ; preds = %entry
  br label %t_yes, !dbg !7428

t_yes:                                            ; preds = %asm.fallthrough, %entry
  call void @llvm.dbg.label(metadata !7418), !dbg !7430
  store i1 true, ptr %retval, align 1, !dbg !7431
  br label %return, !dbg !7431

t_no:                                             ; preds = %entry
  call void @llvm.dbg.label(metadata !7419), !dbg !7432
  store i1 false, ptr %retval, align 1, !dbg !7433
  br label %return, !dbg !7433

return:                                           ; preds = %t_no, %t_yes
  %3 = load i1, ptr %retval, align 1, !dbg !7434
  ret i1 %3, !dbg !7434
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7435 dso_local i64 @__pti_set_user_pgtbl(ptr noundef, i64) #0

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pgd_page_vaddr(i64 %pgd.coerce) #6 align 16 !dbg !7436 {
entry:
  %pgd = alloca %struct.pgd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0
  store i64 %pgd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !7440, metadata !DIExpression()), !dbg !7441
  %coerce.dive1 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !7442
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !7442
  %call = call i64 @native_pgd_val(i64 %0) #15, !dbg !7442
  %and = and i64 %call, 4503599627366400, !dbg !7442
  %1 = load i64, ptr @page_offset_base, align 8, !dbg !7442
  %add = add i64 %and, %1, !dbg !7442
  %2 = inttoptr i64 %add to ptr, !dbg !7442
  %3 = ptrtoint ptr %2 to i64, !dbg !7443
  ret i64 %3, !dbg !7444
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @p4d_index(i64 noundef %address) #6 align 16 !dbg !7445 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !7449, metadata !DIExpression()), !dbg !7450
  %0 = load i64, ptr %address.addr, align 8, !dbg !7451
  %shr = lshr i64 %0, 39, !dbg !7452
  %1 = load i32, ptr @ptrs_per_p4d, align 4, !dbg !7453
  %sub = sub i32 %1, 1, !dbg !7454
  %conv = zext i32 %sub to i64, !dbg !7455
  %and = and i64 %shr, %conv, !dbg !7456
  ret i64 %and, !dbg !7457
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @p4d_pgtable(i64 %p4d.coerce) #6 align 16 !dbg !7458 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !7462, metadata !DIExpression()), !dbg !7463
  %coerce.dive1 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !7464
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !7464
  %call = call i64 @native_p4d_val(i64 %0) #15, !dbg !7464
  %coerce.dive2 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !7464
  %1 = load i64, ptr %coerce.dive2, align 8, !dbg !7464
  %call3 = call i64 @p4d_pfn_mask(i64 %1) #15, !dbg !7464
  %and = and i64 %call, %call3, !dbg !7464
  %2 = load i64, ptr @page_offset_base, align 8, !dbg !7464
  %add = add i64 %and, %2, !dbg !7464
  %3 = inttoptr i64 %add to ptr, !dbg !7464
  ret ptr %3, !dbg !7465
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pud_index(i64 noundef %address) #6 align 16 !dbg !7466 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !7468, metadata !DIExpression()), !dbg !7469
  %0 = load i64, ptr %address.addr, align 8, !dbg !7470
  %shr = lshr i64 %0, 30, !dbg !7471
  %and = and i64 %shr, 511, !dbg !7472
  ret i64 %and, !dbg !7473
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @p4d_pfn_mask(i64 %p4d.coerce) #6 align 16 !dbg !7474 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !7476, metadata !DIExpression()), !dbg !7477
  ret i64 4503599627366400, !dbg !7478
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pud_pgtable(i64 %pud.coerce) #6 align 16 !dbg !7479 {
entry:
  %pud = alloca %struct.pud_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !7483, metadata !DIExpression()), !dbg !7484
  %coerce.dive1 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !7485
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !7485
  %call = call i64 @native_pud_val(i64 %0) #15, !dbg !7485
  %coerce.dive2 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !7485
  %1 = load i64, ptr %coerce.dive2, align 8, !dbg !7485
  %call3 = call i64 @pud_pfn_mask(i64 %1) #15, !dbg !7485
  %and = and i64 %call, %call3, !dbg !7485
  %2 = load i64, ptr @page_offset_base, align 8, !dbg !7485
  %add = add i64 %and, %2, !dbg !7485
  %3 = inttoptr i64 %add to ptr, !dbg !7485
  ret ptr %3, !dbg !7486
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pmd_index(i64 noundef %address) #6 align 16 !dbg !7487 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !7489, metadata !DIExpression()), !dbg !7490
  %0 = load i64, ptr %address.addr, align 8, !dbg !7491
  %shr = lshr i64 %0, 21, !dbg !7492
  %and = and i64 %shr, 511, !dbg !7493
  ret i64 %and, !dbg !7494
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pud_pfn_mask(i64 %pud.coerce) #6 align 16 !dbg !7495 {
entry:
  %retval = alloca i64, align 8
  %pud = alloca %struct.pud_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !7497, metadata !DIExpression()), !dbg !7498
  %coerce.dive1 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !7499
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !7499
  %call = call i64 @native_pud_val(i64 %0) #15, !dbg !7499
  %and = and i64 %call, 128, !dbg !7501
  %tobool = icmp ne i64 %and, 0, !dbg !7501
  br i1 %tobool, label %if.then, label %if.else, !dbg !7502

if.then:                                          ; preds = %entry
  store i64 4503598553628672, ptr %retval, align 8, !dbg !7503
  br label %return, !dbg !7503

if.else:                                          ; preds = %entry
  store i64 4503599627366400, ptr %retval, align 8, !dbg !7504
  br label %return, !dbg !7504

return:                                           ; preds = %if.else, %if.then
  %1 = load i64, ptr %retval, align 8, !dbg !7505
  ret i64 %1, !dbg !7505
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7506 dso_local void @native_set_fixmap(i32 noundef, i64 noundef, i64) #0

attributes #0 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #8 = { nocallback nounwind }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nounwind }
attributes #15 = { noredzone }
attributes #16 = { nounwind memory(read) }
attributes #17 = { cold noredzone }
attributes #18 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!6046}
!llvm.module.flags = !{!6047, !6048, !6049, !6050, !6051, !6052, !6053, !6054}
!llvm.ident = !{!6055}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__tpstrtab_emulate_vsyscall", scope: !2, file: !349, line: 10, type: !6043, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/entry/vsyscall/.vsyscall_64.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/entry/vsyscall/vsyscall_64\22 -D KBUILD_BASENAME=\22vsyscall_64\22 -D KBUILD_MODNAME=\22vsyscall_64\22 -D __KBUILD_MODNAME=kmod_vsyscall_64 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/entry/vsyscall/vsyscall_64.ll arch/x86/entry/vsyscall/vsyscall_64.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !321, globals: !5889, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/entry/vsyscall/vsyscall_64.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0c1c7c6be201c206bbb0be907666f599")
!4 = !{!5, !13, !18, !23, !119, !125, !141, !149, !156, !162, !169, !177, !184, !190, !199, !204, !209, !215, !224, !235, !241, !249, !255, !262, !273, !278, !283, !297, !311}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !6, line: 312, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!10 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!11 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!12 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !14, line: 2052, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!17 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !19, line: 65, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!20 = !{!21, !22}
!21 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!22 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !25, file: !24, line: 147, baseType: !7, size: 32, elements: !116)
!24 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !24, line: 135, size: 512, elements: !26)
!26 = !{!27, !31, !33, !35, !39, !40, !56, !114, !115}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !25, file: !24, line: 136, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !25, file: !24, line: 137, baseType: !32, size: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !25, file: !24, line: 138, baseType: !34, size: 32, offset: 128)
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !25, file: !24, line: 139, baseType: !36, size: 16, offset: 160)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !37, line: 24, baseType: !38)
!37 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!38 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !25, file: !24, line: 150, baseType: !23, size: 32, offset: 192)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !25, file: !24, line: 151, baseType: !41, size: 64, offset: 256)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !24, line: 64, baseType: !43)
!43 = !DISubroutineType(types: !44)
!44 = !{!34, !45, !34, !32, !46, !52}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !37, line: 61, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !49, line: 72, baseType: !50)
!49 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !49, line: 16, baseType: !51)
!51 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !37, line: 52, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !49, line: 88, baseType: !55)
!55 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !25, file: !24, line: 152, baseType: !57, size: 64, offset: 320)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !24, line: 117, size: 256, elements: !59)
!59 = !{!60, !65}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !58, file: !24, line: 118, baseType: !61, size: 32)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !37, line: 174, baseType: !62)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 172, size: 32, elements: !63)
!63 = !{!64}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !62, file: !37, line: 173, baseType: !34, size: 32)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !58, file: !24, line: 119, baseType: !66, size: 192, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !67, line: 41, baseType: !68)
!67 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !67, line: 37, size: 192, elements: !69)
!69 = !{!70, !108}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !68, file: !67, line: 38, baseType: !71, size: 32)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !72, line: 29, baseType: !73)
!72 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !72, line: 17, size: 32, elements: !74)
!74 = !{!75}
!75 = !DIDerivedType(tag: DW_TAG_member, scope: !73, file: !72, line: 18, baseType: !76, size: 32)
!76 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !73, file: !72, line: 18, size: 32, elements: !77)
!77 = !{!78}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !76, file: !72, line: 19, baseType: !79, size: 32)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !80, line: 14, size: 32, elements: !81)
!80 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!81 = !{!82}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !79, file: !80, line: 15, baseType: !83, size: 32)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !84, line: 44, baseType: !85)
!84 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !84, line: 14, size: 32, elements: !86)
!86 = !{!87}
!87 = !DIDerivedType(tag: DW_TAG_member, scope: !85, file: !84, line: 15, baseType: !88, size: 32)
!88 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !85, file: !84, line: 15, size: 32, elements: !89)
!89 = !{!90, !91, !101}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !88, file: !84, line: 16, baseType: !61, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_member, scope: !88, file: !84, line: 24, baseType: !92, size: 16)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !88, file: !84, line: 24, size: 16, elements: !93)
!93 = !{!94, !100}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !92, file: !84, line: 25, baseType: !95, size: 8)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !96, line: 17, baseType: !97)
!96 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !98, line: 21, baseType: !99)
!98 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!99 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !92, file: !84, line: 26, baseType: !95, size: 8, offset: 8)
!101 = !DIDerivedType(tag: DW_TAG_member, scope: !88, file: !84, line: 28, baseType: !102, size: 32)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !88, file: !84, line: 28, size: 32, elements: !103)
!103 = !{!104, !107}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !102, file: !84, line: 29, baseType: !105, size: 16)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !96, line: 19, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !98, line: 24, baseType: !38)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !102, file: !84, line: 30, baseType: !105, size: 16, offset: 16)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !68, file: !67, line: 39, baseType: !109, size: 128, offset: 64)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !37, line: 190, size: 128, elements: !110)
!110 = !{!111, !113}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !109, file: !37, line: 191, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !109, file: !37, line: 191, baseType: !112, size: 64, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !25, file: !24, line: 153, baseType: !32, size: 64, offset: 384)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !25, file: !24, line: 154, baseType: !32, size: 64, offset: 448)
!116 = !{!117, !118}
!117 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!118 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !120, line: 16, baseType: !7, size: 32, elements: !121)
!120 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!121 = !{!122, !123, !124}
!122 = !DIEnumerator(name: "TT_NONE", value: 0)
!123 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!124 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !126, line: 1325, baseType: !7, size: 32, elements: !127)
!126 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!127 = !{!128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140}
!128 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!129 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!130 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!131 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!132 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!133 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!134 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!135 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!136 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!137 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!138 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!139 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!140 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !142, line: 68, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!143 = !{!144, !145, !146, !147, !148}
!144 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!145 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!146 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!147 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!148 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !150, line: 51, baseType: !7, size: 32, elements: !151)
!150 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!151 = !{!152, !153, !154, !155}
!152 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!153 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!154 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!155 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!156 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !157, line: 45, baseType: !7, size: 32, elements: !158)
!157 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!158 = !{!159, !160, !161}
!159 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!160 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!161 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!162 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !163, line: 487, baseType: !7, size: 32, elements: !164)
!163 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!164 = !{!165, !166, !167, !168}
!165 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!166 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!167 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!168 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!169 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !170, line: 620, baseType: !7, size: 32, elements: !171)
!170 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!171 = !{!172, !173, !174, !175, !176}
!172 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!173 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!174 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!175 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!176 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!177 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !170, line: 597, baseType: !34, size: 32, elements: !178)
!178 = !{!179, !180, !181, !182, !183}
!179 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!180 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!181 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!182 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!183 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!184 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !185, line: 26, baseType: !7, size: 32, elements: !186)
!185 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!186 = !{!187, !188, !189}
!187 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!188 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!189 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!190 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !163, line: 547, baseType: !7, size: 32, elements: !191)
!191 = !{!192, !193, !194, !195, !196, !197, !198}
!192 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!193 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!194 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!195 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!196 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!197 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!198 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!199 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !163, line: 564, baseType: !7, size: 32, elements: !200)
!200 = !{!201, !202, !203}
!201 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!202 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!203 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!204 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !163, line: 577, baseType: !7, size: 32, elements: !205)
!205 = !{!206, !207, !208}
!206 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!207 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!208 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!209 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !163, line: 503, baseType: !7, size: 32, elements: !210)
!210 = !{!211, !212, !213, !214}
!211 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!212 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!213 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!214 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!215 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_event_state", file: !216, line: 593, baseType: !34, size: 32, elements: !217)
!216 = !DIFile(filename: "./include/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ce692f6af4d2c300194824e4904b29b")
!217 = !{!218, !219, !220, !221, !222, !223}
!218 = !DIEnumerator(name: "PERF_EVENT_STATE_DEAD", value: -4)
!219 = !DIEnumerator(name: "PERF_EVENT_STATE_EXIT", value: -3)
!220 = !DIEnumerator(name: "PERF_EVENT_STATE_ERROR", value: -2)
!221 = !DIEnumerator(name: "PERF_EVENT_STATE_OFF", value: -1)
!222 = !DIEnumerator(name: "PERF_EVENT_STATE_INACTIVE", value: 0)
!223 = !DIEnumerator(name: "PERF_EVENT_STATE_ACTIVE", value: 1)
!224 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "trace_reg", file: !225, line: 253, baseType: !7, size: 32, elements: !226)
!225 = !DIFile(filename: "./include/linux/trace_events.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85bf8311371fd36a6792d4cca4559454")
!226 = !{!227, !228, !229, !230, !231, !232, !233, !234}
!227 = !DIEnumerator(name: "TRACE_REG_REGISTER", value: 0)
!228 = !DIEnumerator(name: "TRACE_REG_UNREGISTER", value: 1)
!229 = !DIEnumerator(name: "TRACE_REG_PERF_REGISTER", value: 2)
!230 = !DIEnumerator(name: "TRACE_REG_PERF_UNREGISTER", value: 3)
!231 = !DIEnumerator(name: "TRACE_REG_PERF_OPEN", value: 4)
!232 = !DIEnumerator(name: "TRACE_REG_PERF_CLOSE", value: 5)
!233 = !DIEnumerator(name: "TRACE_REG_PERF_ADD", value: 6)
!234 = !DIEnumerator(name: "TRACE_REG_PERF_DEL", value: 7)
!235 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "print_line_t", file: !225, line: 158, baseType: !7, size: 32, elements: !236)
!236 = !{!237, !238, !239, !240}
!237 = !DIEnumerator(name: "TRACE_TYPE_PARTIAL_LINE", value: 0)
!238 = !DIEnumerator(name: "TRACE_TYPE_HANDLED", value: 1)
!239 = !DIEnumerator(name: "TRACE_TYPE_UNHANDLED", value: 2)
!240 = !DIEnumerator(name: "TRACE_TYPE_NO_CONSUME", value: 3)
!241 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !242, line: 9, baseType: !7, size: 32, elements: !243)
!242 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!243 = !{!244, !245, !246, !247, !248}
!244 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!245 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!246 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!247 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!248 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!249 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !250, line: 54, baseType: !7, size: 32, elements: !251)
!250 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!251 = !{!252, !253, !254}
!252 = !DIEnumerator(name: "USRQUOTA", value: 0)
!253 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!254 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!255 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !256, line: 15, baseType: !7, size: 32, elements: !257)
!256 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!257 = !{!258, !259, !260, !261}
!258 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!259 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!260 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!261 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!262 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "x86_pf_error_code", file: !263, line: 17, baseType: !7, size: 32, elements: !264)
!263 = !DIFile(filename: "./arch/x86/include/asm/trap_pf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b79fe506a663fa48e915f7ae5e65673a")
!264 = !{!265, !266, !267, !268, !269, !270, !271, !272}
!265 = !DIEnumerator(name: "X86_PF_PROT", value: 1)
!266 = !DIEnumerator(name: "X86_PF_WRITE", value: 2)
!267 = !DIEnumerator(name: "X86_PF_USER", value: 4)
!268 = !DIEnumerator(name: "X86_PF_RSVD", value: 8)
!269 = !DIEnumerator(name: "X86_PF_INSTR", value: 16)
!270 = !DIEnumerator(name: "X86_PF_PK", value: 32)
!271 = !DIEnumerator(name: "X86_PF_SHSTK", value: 64)
!272 = !DIEnumerator(name: "X86_PF_SGX", value: 32768)
!273 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !274, line: 10, baseType: !7, size: 32, elements: !275)
!274 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!275 = !{!276, !277}
!276 = !DIEnumerator(name: "false", value: 0)
!277 = !DIEnumerator(name: "true", value: 1)
!278 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 45, baseType: !7, size: 32, elements: !279)
!279 = !{!280, !281, !282}
!280 = !DIEnumerator(name: "EMULATE", value: 0)
!281 = !DIEnumerator(name: "XONLY", value: 1)
!282 = !DIEnumerator(name: "NONE", value: 2)
!283 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fixed_addresses", file: !284, line: 81, baseType: !7, size: 32, elements: !285)
!284 = !DIFile(filename: "./arch/x86/include/asm/fixmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f7ee1b51217b4f967bead339632e7de6")
!285 = !{!286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296}
!286 = !DIEnumerator(name: "VSYSCALL_PAGE", value: 511)
!287 = !DIEnumerator(name: "FIX_DBGP_BASE", value: 512)
!288 = !DIEnumerator(name: "FIX_EARLYCON_MEM_BASE", value: 513)
!289 = !DIEnumerator(name: "FIX_OHCI1394_BASE", value: 514)
!290 = !DIEnumerator(name: "FIX_APIC_BASE", value: 515)
!291 = !DIEnumerator(name: "FIX_IO_APIC_BASE_0", value: 516)
!292 = !DIEnumerator(name: "FIX_IO_APIC_BASE_END", value: 643)
!293 = !DIEnumerator(name: "__end_of_permanent_fixed_addresses", value: 644)
!294 = !DIEnumerator(name: "FIX_BTMAP_END", value: 1024)
!295 = !DIEnumerator(name: "FIX_BTMAP_BEGIN", value: 1535)
!296 = !DIEnumerator(name: "__end_of_fixed_addresses", value: 1536)
!297 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !225, line: 640, baseType: !7, size: 32, elements: !298)
!298 = !{!299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310}
!299 = !DIEnumerator(name: "EVENT_FILE_FL_ENABLED", value: 1)
!300 = !DIEnumerator(name: "EVENT_FILE_FL_RECORDED_CMD", value: 2)
!301 = !DIEnumerator(name: "EVENT_FILE_FL_RECORDED_TGID", value: 4)
!302 = !DIEnumerator(name: "EVENT_FILE_FL_FILTERED", value: 8)
!303 = !DIEnumerator(name: "EVENT_FILE_FL_NO_SET_FILTER", value: 16)
!304 = !DIEnumerator(name: "EVENT_FILE_FL_SOFT_MODE", value: 32)
!305 = !DIEnumerator(name: "EVENT_FILE_FL_SOFT_DISABLED", value: 64)
!306 = !DIEnumerator(name: "EVENT_FILE_FL_TRIGGER_MODE", value: 128)
!307 = !DIEnumerator(name: "EVENT_FILE_FL_TRIGGER_COND", value: 256)
!308 = !DIEnumerator(name: "EVENT_FILE_FL_PID_FILTER", value: 512)
!309 = !DIEnumerator(name: "EVENT_FILE_FL_WAS_ENABLED", value: 1024)
!310 = !DIEnumerator(name: "EVENT_FILE_FL_FREED", value: 2048)
!311 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "syscall_work_bit", file: !312, line: 41, baseType: !7, size: 32, elements: !313)
!312 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!313 = !{!314, !315, !316, !317, !318, !319, !320}
!314 = !DIEnumerator(name: "SYSCALL_WORK_BIT_SECCOMP", value: 0)
!315 = !DIEnumerator(name: "SYSCALL_WORK_BIT_SYSCALL_TRACEPOINT", value: 1)
!316 = !DIEnumerator(name: "SYSCALL_WORK_BIT_SYSCALL_TRACE", value: 2)
!317 = !DIEnumerator(name: "SYSCALL_WORK_BIT_SYSCALL_EMU", value: 3)
!318 = !DIEnumerator(name: "SYSCALL_WORK_BIT_SYSCALL_AUDIT", value: 4)
!319 = !DIEnumerator(name: "SYSCALL_WORK_BIT_SYSCALL_USER_DISPATCH", value: 5)
!320 = !DIEnumerator(name: "SYSCALL_WORK_BIT_SYSCALL_EXIT_TRAP", value: 6)
!321 = !{!32, !322, !325, !332, !335, !338, !339, !51, !342, !343, !345, !34, !347, !363, !373, !378, !381, !382, !2455, !5871, !7, !393, !1126, !5873, !5874, !28, !5876, !5882, !5883, !4827, !1871, !5885, !1864, !5887}
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !324)
!324 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !327, line: 26, size: 192, elements: !328)
!327 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!328 = !{!329, !330, !331}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !326, file: !327, line: 27, baseType: !32, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !326, file: !327, line: 28, baseType: !32, size: 64, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !326, file: !327, line: 29, baseType: !34, size: 32, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !334)
!334 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !32)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !32, !34}
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !96, line: 23, baseType: !340)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !98, line: 31, baseType: !341)
!341 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !37, line: 42, baseType: !51)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !346, line: 14, baseType: !51)
!346 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_raw_emulate_vsyscall", file: !349, line: 10, size: 96, elements: !350)
!349 = !DIFile(filename: "arch/x86/entry/vsyscall/vsyscall_trace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "354eca03f086ee33bd6b0bdbc8f2fe30")
!350 = !{!351, !358, !359}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "ent", scope: !348, file: !349, line: 10, baseType: !352, size: 64)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_entry", file: !225, line: 79, size: 64, elements: !353)
!353 = !{!354, !355, !356, !357}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !352, file: !225, line: 80, baseType: !38, size: 16)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !352, file: !225, line: 81, baseType: !99, size: 8, offset: 16)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_count", scope: !352, file: !225, line: 82, baseType: !99, size: 8, offset: 24)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !352, file: !225, line: 83, baseType: !34, size: 32, offset: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !348, file: !349, line: 10, baseType: !34, size: 32, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !348, file: !349, line: 10, baseType: !360, offset: 96)
!360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, elements: !361)
!361 = !{!362}
!362 = !DISubrange(count: -1)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !37, line: 194, size: 64, elements: !365)
!365 = !{!366}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !364, file: !37, line: 195, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !37, line: 198, size: 128, elements: !369)
!369 = !{!370, !371}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !368, file: !37, line: 199, baseType: !367, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !368, file: !37, line: 199, baseType: !372, size: 64, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !375)
!375 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !376)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_prog_array", file: !225, line: 399, flags: DIFlagFwdDecl)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !380)
!380 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !367)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !384, line: 746, size: 58368, elements: !385)
!384 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!385 = !{!386, !396, !397, !398, !404, !405, !406, !407, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !487, !498, !599, !603, !606, !637, !638, !639, !640, !651, !653, !654, !655, !656, !657, !658, !669, !670, !673, !674, !675, !676, !677, !678, !679, !680, !687, !688, !695, !696, !4944, !4945, !4946, !4947, !4948, !4949, !4950, !4951, !4952, !4953, !4954, !4955, !4956, !4957, !4958, !4959, !4960, !4961, !4962, !4963, !4964, !4965, !4966, !5028, !5031, !5032, !5033, !5034, !5035, !5036, !5037, !5038, !5039, !5040, !5041, !5043, !5044, !5045, !5046, !5047, !5048, !5049, !5050, !5051, !5052, !5053, !5054, !5055, !5056, !5057, !5058, !5059, !5071, !5077, !5078, !5079, !5080, !5081, !5083, !5086, !5093, !5098, !5101, !5104, !5107, !5139, !5337, !5364, !5365, !5366, !5367, !5368, !5369, !5370, !5371, !5372, !5375, !5376, !5377, !5386, !5394, !5395, !5396, !5397, !5398, !5403, !5404, !5405, !5408, !5409, !5412, !5415, !5418, !5426, !5429, !5430, !5516, !5517, !5518, !5519, !5520, !5526, !5527, !5528, !5529, !5530, !5531, !5534, !5537, !5538, !5541, !5542, !5543, !5544, !5545, !5546, !5547, !5548, !5549, !5561, !5562, !5563, !5564, !5565, !5566, !5567, !5568, !5569, !5580, !5581, !5587, !5590, !5591, !5592, !5593, !5594, !5595, !5596, !5599, !5671, !5673, !5674, !5675, !5676, !5677, !5678, !5681, !5682, !5683, !5684, !5685, !5686, !5687, !5688, !5689, !5690, !5691, !5695, !5696, !5697}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !383, file: !384, line: 752, baseType: !387, size: 192)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !388, line: 56, size: 192, elements: !389)
!388 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!389 = !{!390, !391, !392, !395}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !387, file: !388, line: 57, baseType: !51, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !387, file: !388, line: 58, baseType: !51, size: 64, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !387, file: !388, line: 59, baseType: !393, size: 32, offset: 128)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !96, line: 21, baseType: !394)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !98, line: 27, baseType: !7)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !387, file: !388, line: 61, baseType: !393, size: 32, offset: 160)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !383, file: !384, line: 754, baseType: !7, size: 32, offset: 192)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !383, file: !384, line: 767, baseType: !32, size: 64, offset: 256)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !383, file: !384, line: 768, baseType: !399, size: 32, offset: 320)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !400, line: 113, baseType: !401)
!400 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !400, line: 111, size: 32, elements: !402)
!402 = !{!403}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !401, file: !400, line: 112, baseType: !61, size: 32)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !383, file: !384, line: 770, baseType: !7, size: 32, offset: 352)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !383, file: !384, line: 771, baseType: !7, size: 32, offset: 384)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !383, file: !384, line: 774, baseType: !34, size: 32, offset: 416)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !383, file: !384, line: 775, baseType: !408, size: 128, offset: 448)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !409, line: 58, size: 128, elements: !410)
!409 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!410 = !{!411, !417, !422, !423}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !408, file: !409, line: 59, baseType: !412, size: 64)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !413, line: 60, size: 64, elements: !414)
!413 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!414 = !{!415}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !412, file: !413, line: 61, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, scope: !408, file: !409, line: 60, baseType: !418, size: 32, offset: 64)
!418 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !408, file: !409, line: 60, size: 32, elements: !419)
!419 = !{!420, !421}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !418, file: !409, line: 61, baseType: !7, size: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !418, file: !409, line: 62, baseType: !61, size: 32)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !408, file: !409, line: 65, baseType: !105, size: 16, offset: 96)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !408, file: !409, line: 65, baseType: !105, size: 16, offset: 112)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !383, file: !384, line: 776, baseType: !7, size: 32, offset: 576)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !383, file: !384, line: 777, baseType: !51, size: 64, offset: 640)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !383, file: !384, line: 778, baseType: !382, size: 64, offset: 704)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !383, file: !384, line: 787, baseType: !34, size: 32, offset: 768)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !383, file: !384, line: 788, baseType: !34, size: 32, offset: 800)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !383, file: !384, line: 790, baseType: !34, size: 32, offset: 832)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !383, file: !384, line: 792, baseType: !34, size: 32, offset: 864)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !383, file: !384, line: 793, baseType: !34, size: 32, offset: 896)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !383, file: !384, line: 794, baseType: !34, size: 32, offset: 928)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !383, file: !384, line: 795, baseType: !7, size: 32, offset: 960)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !383, file: !384, line: 797, baseType: !435, size: 2048, offset: 1024)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !384, line: 551, size: 2048, elements: !436)
!436 = !{!437, !442, !450, !451, !452, !453, !454, !455, !456, !457, !458, !461, !462, !463, !464, !466, !469, !470, !471}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !435, file: !384, line: 553, baseType: !438, size: 128)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !384, line: 411, size: 128, elements: !439)
!439 = !{!440, !441}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !438, file: !384, line: 412, baseType: !51, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !438, file: !384, line: 413, baseType: !393, size: 32, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !435, file: !384, line: 554, baseType: !443, size: 192, align: 64, offset: 128)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !444, line: 5, size: 192, align: 64, elements: !445)
!444 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!445 = !{!446, !447, !449}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !443, file: !444, line: 6, baseType: !51, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !443, file: !444, line: 7, baseType: !448, size: 64, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !443, file: !444, line: 8, baseType: !448, size: 64, offset: 128)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !435, file: !384, line: 555, baseType: !339, size: 64, offset: 320)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !435, file: !384, line: 556, baseType: !339, size: 64, offset: 384)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !435, file: !384, line: 558, baseType: !109, size: 128, offset: 448)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !435, file: !384, line: 559, baseType: !7, size: 32, offset: 576)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !435, file: !384, line: 561, baseType: !339, size: 64, offset: 640)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !435, file: !384, line: 562, baseType: !339, size: 64, offset: 704)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !435, file: !384, line: 563, baseType: !339, size: 64, offset: 768)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !435, file: !384, line: 564, baseType: !339, size: 64, offset: 832)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !435, file: !384, line: 565, baseType: !459, size: 64, offset: 896)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !96, line: 22, baseType: !460)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !98, line: 30, baseType: !55)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !435, file: !384, line: 566, baseType: !339, size: 64, offset: 960)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !435, file: !384, line: 568, baseType: !339, size: 64, offset: 1024)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !435, file: !384, line: 571, baseType: !34, size: 32, offset: 1088)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !435, file: !384, line: 572, baseType: !465, size: 64, offset: 1152)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !435, file: !384, line: 574, baseType: !467, size: 64, offset: 1216)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !384, line: 49, flags: DIFlagFwdDecl)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !435, file: !384, line: 576, baseType: !467, size: 64, offset: 1280)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !435, file: !384, line: 578, baseType: !51, size: 64, offset: 1344)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !435, file: !384, line: 588, baseType: !472, size: 512, align: 512, offset: 1536)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !384, line: 497, size: 512, align: 512, elements: !473)
!473 = !{!474, !475, !476, !477, !478, !479, !480, !481, !482}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !472, file: !384, line: 498, baseType: !339, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !472, file: !384, line: 499, baseType: !339, size: 64, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !472, file: !384, line: 500, baseType: !339, size: 64, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !472, file: !384, line: 501, baseType: !393, size: 32, offset: 192)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !472, file: !384, line: 502, baseType: !393, size: 32, offset: 224)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !472, file: !384, line: 503, baseType: !51, size: 64, offset: 256)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !472, file: !384, line: 504, baseType: !51, size: 64, offset: 320)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !472, file: !384, line: 505, baseType: !51, size: 64, offset: 384)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !472, file: !384, line: 506, baseType: !483, size: 64, align: 64, offset: 448)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !384, line: 445, size: 64, align: 64, elements: !484)
!484 = !{!485, !486}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !483, file: !384, line: 446, baseType: !7, size: 32)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !483, file: !384, line: 447, baseType: !7, size: 32, offset: 32)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !383, file: !384, line: 798, baseType: !488, size: 384, offset: 3072)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !384, line: 592, size: 384, elements: !489)
!489 = !{!490, !491, !492, !493, !494, !495, !496}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !488, file: !384, line: 593, baseType: !109, size: 128)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !488, file: !384, line: 594, baseType: !51, size: 64, offset: 128)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !488, file: !384, line: 595, baseType: !51, size: 64, offset: 192)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !488, file: !384, line: 596, baseType: !7, size: 32, offset: 256)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !488, file: !384, line: 597, baseType: !38, size: 16, offset: 288)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !488, file: !384, line: 598, baseType: !38, size: 16, offset: 304)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !488, file: !384, line: 600, baseType: !497, size: 64, offset: 320)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !383, file: !384, line: 799, baseType: !499, size: 1792, offset: 3456)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !384, line: 610, size: 1792, elements: !500)
!500 = !{!501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !596, !597}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !499, file: !384, line: 611, baseType: !443, size: 192, align: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !499, file: !384, line: 618, baseType: !339, size: 64, offset: 192)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !499, file: !384, line: 619, baseType: !339, size: 64, offset: 256)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !499, file: !384, line: 620, baseType: !339, size: 64, offset: 320)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !499, file: !384, line: 621, baseType: !339, size: 64, offset: 384)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !499, file: !384, line: 622, baseType: !339, size: 64, offset: 448)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !499, file: !384, line: 629, baseType: !459, size: 64, offset: 512)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !499, file: !384, line: 630, baseType: !339, size: 64, offset: 576)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !499, file: !384, line: 631, baseType: !7, size: 32, offset: 640)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !499, file: !384, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !499, file: !384, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !499, file: !384, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !499, file: !384, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !499, file: !384, line: 662, baseType: !515, size: 512, offset: 704)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !19, line: 118, size: 512, elements: !516)
!516 = !{!517, !525, !526, !531, !592, !593, !594, !595}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !515, file: !19, line: 119, baseType: !518, size: 256)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !519, line: 9, size: 256, elements: !520)
!519 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!520 = !{!521, !522}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !518, file: !519, line: 10, baseType: !443, size: 192, align: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !518, file: !519, line: 11, baseType: !523, size: 64, offset: 192)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !524, line: 29, baseType: !459)
!524 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!525 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !515, file: !19, line: 120, baseType: !523, size: 64, offset: 256)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !515, file: !19, line: 121, baseType: !527, size: 64, offset: 320)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!18, !530}
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !515, file: !19, line: 122, baseType: !532, size: 64, offset: 384)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !19, line: 159, size: 512, align: 512, elements: !534)
!534 = !{!535, !561, !562, !565, !575, !576, !587, !591}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !533, file: !19, line: 160, baseType: !536, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !19, line: 215, size: 4608, align: 512, elements: !538)
!538 = !{!539, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !537, file: !19, line: 216, baseType: !540, size: 32)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !80, line: 23, baseType: !79)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !537, file: !19, line: 217, baseType: !7, size: 32, offset: 32)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !537, file: !19, line: 218, baseType: !7, size: 32, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !537, file: !19, line: 219, baseType: !7, size: 32, offset: 96)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !537, file: !19, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !537, file: !19, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !537, file: !19, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !537, file: !19, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !537, file: !19, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !537, file: !19, line: 226, baseType: !7, size: 32, offset: 160)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !537, file: !19, line: 227, baseType: !38, size: 16, offset: 192)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !537, file: !19, line: 228, baseType: !38, size: 16, offset: 208)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !537, file: !19, line: 229, baseType: !7, size: 32, offset: 224)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !537, file: !19, line: 235, baseType: !523, size: 64, offset: 256)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !537, file: !19, line: 236, baseType: !530, size: 64, offset: 320)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !537, file: !19, line: 237, baseType: !523, size: 64, offset: 384)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !537, file: !19, line: 238, baseType: !530, size: 64, offset: 448)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !537, file: !19, line: 239, baseType: !558, size: 4096, align: 512, offset: 512)
!558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !533, size: 4096, align: 512, elements: !559)
!559 = !{!560}
!560 = !DISubrange(count: 8)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !533, file: !19, line: 161, baseType: !7, size: 32, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !533, file: !19, line: 162, baseType: !563, size: 32, offset: 96)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !37, line: 32, baseType: !564)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !49, line: 96, baseType: !34)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !533, file: !19, line: 163, baseType: !566, size: 32, offset: 128)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !567, line: 274, baseType: !568)
!567 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !567, line: 274, size: 32, elements: !569)
!569 = !{!570}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !568, file: !567, line: 274, baseType: !571, size: 32)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !567, line: 69, baseType: !572)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !567, line: 64, size: 32, elements: !573)
!573 = !{!574}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !572, file: !567, line: 65, baseType: !7, size: 32)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !533, file: !19, line: 164, baseType: !530, size: 64, offset: 192)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !533, file: !19, line: 165, baseType: !577, size: 128, offset: 256)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !519, line: 14, size: 128, elements: !578)
!578 = !{!579}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !577, file: !519, line: 15, baseType: !580, size: 128)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !444, line: 26, size: 128, elements: !581)
!581 = !{!582, !586}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !580, file: !444, line: 27, baseType: !583, size: 64)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !444, line: 12, size: 64, elements: !584)
!584 = !{!585}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !583, file: !444, line: 13, baseType: !448, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !580, file: !444, line: 28, baseType: !448, size: 64, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !533, file: !19, line: 166, baseType: !588, size: 64, offset: 384)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DISubroutineType(types: !590)
!590 = !{!523}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !533, file: !19, line: 167, baseType: !523, size: 64, offset: 448)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !515, file: !19, line: 123, baseType: !95, size: 8, offset: 448)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !515, file: !19, line: 124, baseType: !95, size: 8, offset: 456)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !515, file: !19, line: 125, baseType: !95, size: 8, offset: 464)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !515, file: !19, line: 126, baseType: !95, size: 8, offset: 472)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !499, file: !384, line: 671, baseType: !515, size: 512, offset: 1216)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !499, file: !384, line: 679, baseType: !598, size: 64, offset: 1728)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !383, file: !384, line: 800, baseType: !600, size: 64, offset: 5248)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !602)
!602 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !384, line: 800, flags: DIFlagFwdDecl)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !383, file: !384, line: 809, baseType: !604, size: 64, offset: 5312)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !384, line: 70, flags: DIFlagFwdDecl)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !383, file: !384, line: 825, baseType: !607, size: 2048, align: 512, offset: 5632)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !384, line: 509, size: 2048, align: 512, elements: !608)
!608 = !{!609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !607, file: !384, line: 511, baseType: !339, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !607, file: !384, line: 512, baseType: !339, size: 64, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !607, file: !384, line: 513, baseType: !339, size: 64, offset: 128)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !607, file: !384, line: 514, baseType: !339, size: 64, offset: 192)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !607, file: !384, line: 515, baseType: !339, size: 64, offset: 256)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !607, file: !384, line: 516, baseType: !339, size: 64, offset: 320)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !607, file: !384, line: 518, baseType: !339, size: 64, offset: 384)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !607, file: !384, line: 519, baseType: !339, size: 64, offset: 448)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !607, file: !384, line: 520, baseType: !459, size: 64, offset: 512)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !607, file: !384, line: 522, baseType: !339, size: 64, offset: 576)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !607, file: !384, line: 523, baseType: !339, size: 64, offset: 640)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !607, file: !384, line: 524, baseType: !459, size: 64, offset: 704)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !607, file: !384, line: 526, baseType: !459, size: 64, offset: 768)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !607, file: !384, line: 527, baseType: !339, size: 64, offset: 832)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !607, file: !384, line: 529, baseType: !339, size: 64, offset: 896)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !607, file: !384, line: 530, baseType: !339, size: 64, offset: 960)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !607, file: !384, line: 531, baseType: !339, size: 64, offset: 1024)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !607, file: !384, line: 532, baseType: !339, size: 64, offset: 1088)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !607, file: !384, line: 533, baseType: !339, size: 64, offset: 1152)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !607, file: !384, line: 535, baseType: !339, size: 64, offset: 1216)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !607, file: !384, line: 536, baseType: !339, size: 64, offset: 1280)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !607, file: !384, line: 537, baseType: !339, size: 64, offset: 1344)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !607, file: !384, line: 538, baseType: !339, size: 64, offset: 1408)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !607, file: !384, line: 539, baseType: !339, size: 64, offset: 1472)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !607, file: !384, line: 540, baseType: !339, size: 64, offset: 1536)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !607, file: !384, line: 541, baseType: !339, size: 64, offset: 1600)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !607, file: !384, line: 542, baseType: !339, size: 64, offset: 1664)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !607, file: !384, line: 543, baseType: !339, size: 64, offset: 1728)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !383, file: !384, line: 833, baseType: !7, size: 32, offset: 7680)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !383, file: !384, line: 836, baseType: !7, size: 32, offset: 7712)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !383, file: !384, line: 837, baseType: !34, size: 32, offset: 7744)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !383, file: !384, line: 838, baseType: !641, size: 64, offset: 7808)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !643)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !644, line: 19, baseType: !645)
!644 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !644, line: 19, size: 64, elements: !646)
!646 = !{!647}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !645, file: !644, line: 19, baseType: !648, size: 64)
!648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 64, elements: !649)
!649 = !{!650}
!650 = !DISubrange(count: 1)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !383, file: !384, line: 839, baseType: !652, size: 64, offset: 7872)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !383, file: !384, line: 840, baseType: !643, size: 64, offset: 7936)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !383, file: !384, line: 841, baseType: !32, size: 64, offset: 8000)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !383, file: !384, line: 843, baseType: !38, size: 16, offset: 8064)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !383, file: !384, line: 845, baseType: !38, size: 16, offset: 8080)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !383, file: !384, line: 848, baseType: !34, size: 32, offset: 8096)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !383, file: !384, line: 849, baseType: !659, size: 32, offset: 8128)
!659 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !384, line: 718, size: 32, elements: !660)
!660 = !{!661, !668}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !659, file: !384, line: 724, baseType: !662, size: 32)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !659, file: !384, line: 719, size: 32, elements: !663)
!663 = !{!664, !665, !666, !667}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !662, file: !384, line: 720, baseType: !95, size: 8)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !662, file: !384, line: 721, baseType: !95, size: 8, offset: 8)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !662, file: !384, line: 722, baseType: !95, size: 8, offset: 16)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !662, file: !384, line: 723, baseType: !95, size: 8, offset: 24)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !659, file: !384, line: 725, baseType: !393, size: 32)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !383, file: !384, line: 850, baseType: !109, size: 128, offset: 8192)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !383, file: !384, line: 851, baseType: !671, size: 64, offset: 8320)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !384, line: 60, flags: DIFlagFwdDecl)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !383, file: !384, line: 855, baseType: !51, size: 64, offset: 8384)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !383, file: !384, line: 856, baseType: !95, size: 8, offset: 8448)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !383, file: !384, line: 857, baseType: !95, size: 8, offset: 8456)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !383, file: !384, line: 858, baseType: !34, size: 32, offset: 8480)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !383, file: !384, line: 859, baseType: !109, size: 128, offset: 8512)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !383, file: !384, line: 860, baseType: !34, size: 32, offset: 8640)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !383, file: !384, line: 861, baseType: !109, size: 128, offset: 8704)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !383, file: !384, line: 873, baseType: !681, size: 256, offset: 8832)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !384, line: 376, size: 256, elements: !682)
!682 = !{!683, !684, !685, !686}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !681, file: !384, line: 381, baseType: !51, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !681, file: !384, line: 384, baseType: !341, size: 64, offset: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !681, file: !384, line: 389, baseType: !341, size: 64, offset: 128)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !681, file: !384, line: 392, baseType: !341, size: 64, offset: 192)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !383, file: !384, line: 875, baseType: !109, size: 128, offset: 9088)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !383, file: !384, line: 877, baseType: !689, size: 320, offset: 9216)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !690, line: 86, size: 320, elements: !691)
!690 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!691 = !{!692, !693, !694}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !689, file: !690, line: 87, baseType: !34, size: 32)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !689, file: !690, line: 88, baseType: !109, size: 128, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !689, file: !690, line: 89, baseType: !109, size: 128, offset: 192)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !383, file: !384, line: 878, baseType: !443, size: 192, align: 64, offset: 9536)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !383, file: !384, line: 881, baseType: !697, size: 64, offset: 9728)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !126, line: 733, size: 10240, elements: !699)
!699 = !{!700, !4942}
!700 = !DIDerivedType(tag: DW_TAG_member, scope: !698, file: !126, line: 734, baseType: !701, size: 10240)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !698, file: !126, line: 734, size: 10240, elements: !702)
!702 = !{!703, !707, !721, !4821, !4822, !4823, !4824, !4825, !4826, !4833, !4834, !4835, !4841, !4842, !4843, !4844, !4845, !4846, !4847, !4848, !4849, !4850, !4851, !4852, !4853, !4854, !4855, !4856, !4857, !4858, !4859, !4860, !4861, !4862, !4863, !4864, !4865, !4866, !4867, !4868, !4869, !4870, !4874, !4876, !4879, !4922, !4923, !4924, !4927, !4928, !4929, !4932, !4933, !4934, !4940, !4941}
!703 = !DIDerivedType(tag: DW_TAG_member, scope: !701, file: !126, line: 739, baseType: !704, size: 512, align: 512)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !701, file: !126, line: 739, size: 512, align: 512, elements: !705)
!705 = !{!706}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !704, file: !126, line: 747, baseType: !61, size: 32)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !701, file: !126, line: 750, baseType: !708, size: 128, offset: 512)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !709, line: 218, size: 128, elements: !710)
!709 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!710 = !{!711, !719, !720}
!711 = !DIDerivedType(tag: DW_TAG_member, scope: !708, file: !709, line: 219, baseType: !712, size: 32)
!712 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !708, file: !709, line: 219, size: 32, elements: !713)
!713 = !{!714, !715}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !712, file: !709, line: 220, baseType: !71, size: 32)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !712, file: !709, line: 221, baseType: !716)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !709, line: 197, baseType: !717)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !709, line: 197, elements: !718)
!718 = !{}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !708, file: !709, line: 223, baseType: !7, size: 32, offset: 32)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !708, file: !709, line: 224, baseType: !32, size: 64, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !701, file: !126, line: 752, baseType: !722, size: 64, offset: 640)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DISubroutineType(types: !724)
!724 = !{!51, !725, !51, !51, !51, !51}
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !727)
!727 = !{!728, !742, !743, !745, !752, !764, !765, !766, !1137, !1215, !1224, !4812, !4813, !4814, !4815, !4816, !4817, !4818, !4819, !4820}
!728 = !DIDerivedType(tag: DW_TAG_member, scope: !726, file: !14, line: 995, baseType: !729, size: 128)
!729 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !726, file: !14, line: 995, size: 128, elements: !730)
!730 = !{!731, !732, !741}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !729, file: !14, line: 996, baseType: !412, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !729, file: !14, line: 997, baseType: !733, size: 128, align: 64)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !37, line: 232, size: 128, align: 64, elements: !734)
!734 = !{!735, !737}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !733, file: !37, line: 233, baseType: !736, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !733, file: !37, line: 234, baseType: !738, size: 64, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{null, !736}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !729, file: !14, line: 998, baseType: !7, size: 32)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !726, file: !14, line: 1005, baseType: !71, size: 32, offset: 128)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !726, file: !14, line: 1006, baseType: !744, size: 32, offset: 160)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !37, line: 156, baseType: !7)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !726, file: !14, line: 1007, baseType: !746, size: 64, offset: 192)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !747, line: 13, baseType: !748)
!747 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !37, line: 181, baseType: !749)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 179, size: 64, elements: !750)
!750 = !{!751}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !749, file: !37, line: 180, baseType: !459, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !726, file: !14, line: 1008, baseType: !753, size: 256, offset: 256)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !754, line: 66, size: 256, elements: !755)
!754 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!755 = !{!756, !757, !758, !763}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !753, file: !754, line: 67, baseType: !746, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !753, file: !754, line: 68, baseType: !540, size: 32, offset: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !753, file: !754, line: 70, baseType: !759, size: 32, offset: 96)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !760, line: 15, size: 32, elements: !761)
!760 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!761 = !{!762}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !759, file: !760, line: 20, baseType: !61, size: 32)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !753, file: !754, line: 72, baseType: !109, size: 128, offset: 128)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !726, file: !14, line: 1009, baseType: !53, size: 64, offset: 512)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !726, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !726, file: !14, line: 1011, baseType: !767, size: 256, offset: 640)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !768)
!768 = !{!769, !792, !1133, !1134, !1135, !1136}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !767, file: !14, line: 949, baseType: !770, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !771, line: 34, baseType: !772)
!771 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !771, line: 25, size: 64, elements: !773)
!773 = !{!774}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !772, file: !771, line: 26, baseType: !775, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !776, line: 27, baseType: !777)
!776 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !776, line: 13, size: 64, elements: !778)
!778 = !{!779, !791}
!779 = !DIDerivedType(tag: DW_TAG_member, scope: !777, file: !776, line: 14, baseType: !780, size: 32)
!780 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !777, file: !776, line: 14, size: 32, elements: !781)
!781 = !{!782, !783}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !780, file: !776, line: 15, baseType: !61, size: 32)
!783 = !DIDerivedType(tag: DW_TAG_member, scope: !780, file: !776, line: 16, baseType: !784, size: 32)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !780, file: !776, line: 16, size: 32, elements: !785)
!785 = !{!786, !787}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !784, file: !776, line: 18, baseType: !95, size: 8)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !784, file: !776, line: 19, baseType: !788, size: 24, offset: 8)
!788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 24, elements: !789)
!789 = !{!790}
!790 = !DISubrange(count: 3)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !777, file: !776, line: 26, baseType: !83, size: 32, offset: 32)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !767, file: !14, line: 950, baseType: !793, size: 64, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !242, line: 59, size: 768, elements: !795)
!795 = !{!796, !797, !798, !799, !803, !804, !805, !806}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !794, file: !242, line: 61, baseType: !399, size: 32)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !794, file: !242, line: 62, baseType: !7, size: 32, offset: 32)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !794, file: !242, line: 63, baseType: !71, size: 32, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !794, file: !242, line: 65, baseType: !800, size: 256, offset: 128)
!800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, size: 256, elements: !801)
!801 = !{!802}
!802 = !DISubrange(count: 4)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !794, file: !242, line: 66, baseType: !364, size: 64, offset: 384)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !794, file: !242, line: 68, baseType: !66, size: 192, offset: 448)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !794, file: !242, line: 69, baseType: !733, size: 128, align: 64, offset: 640)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !794, file: !242, line: 70, baseType: !807, offset: 768)
!807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !808, elements: !361)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !242, line: 54, size: 128, elements: !809)
!809 = !{!810, !811}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !808, file: !242, line: 55, baseType: !34, size: 32)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !808, file: !242, line: 56, baseType: !812, size: 64, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !814, line: 26, size: 1152, elements: !815)
!814 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!815 = !{!816, !830, !831, !832, !833, !837, !838, !839, !842, !1129, !1130, !1131, !1132}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !813, file: !814, line: 27, baseType: !817, size: 192)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !818, line: 19, size: 192, elements: !819)
!818 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!819 = !{!820, !828, !829}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !817, file: !818, line: 20, baseType: !821, size: 128)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !822, line: 296, size: 128, elements: !823)
!822 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!823 = !{!824, !825, !827}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !821, file: !822, line: 297, baseType: !71, size: 32)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !821, file: !822, line: 299, baseType: !826, size: 32, offset: 32)
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !37, line: 154, baseType: !7)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !821, file: !822, line: 300, baseType: !32, size: 64, offset: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !817, file: !818, line: 21, baseType: !7, size: 32, offset: 128)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !817, file: !818, line: 22, baseType: !7, size: 32, offset: 160)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !813, file: !814, line: 28, baseType: !733, size: 128, align: 64, offset: 192)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !813, file: !814, line: 29, baseType: !7, size: 32, offset: 320)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !813, file: !814, line: 30, baseType: !382, size: 64, offset: 384)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !813, file: !814, line: 31, baseType: !834, size: 64, offset: 448)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !836, line: 325, flags: DIFlagFwdDecl)
!836 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!837 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !813, file: !814, line: 32, baseType: !7, size: 32, offset: 512)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !813, file: !814, line: 33, baseType: !812, size: 64, offset: 576)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !813, file: !814, line: 35, baseType: !840, size: 64, offset: 640)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !814, line: 17, flags: DIFlagFwdDecl)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !813, file: !814, line: 37, baseType: !843, size: 64, offset: 704)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !845, line: 68, size: 4800, elements: !846)
!845 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!846 = !{!847, !869, !870, !871, !872, !873, !881, !888, !899, !900, !903, !904, !1026, !1027, !1039, !1109, !1110, !1124, !1127}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !844, file: !845, line: 69, baseType: !848, size: 576)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !845, line: 23, size: 576, elements: !849)
!849 = !{!850, !851}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !848, file: !845, line: 24, baseType: !393, size: 32)
!851 = !DIDerivedType(tag: DW_TAG_member, scope: !848, file: !845, line: 25, baseType: !852, size: 512, offset: 64)
!852 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !848, file: !845, line: 25, size: 512, elements: !853)
!853 = !{!854, !863}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !852, file: !845, line: 26, baseType: !855, size: 480)
!855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !856, size: 480, elements: !861)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !845, line: 17, size: 96, elements: !857)
!857 = !{!858, !859, !860}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !856, file: !845, line: 18, baseType: !393, size: 32)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !856, file: !845, line: 19, baseType: !393, size: 32, offset: 32)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !856, file: !845, line: 20, baseType: !393, size: 32, offset: 64)
!861 = !{!862}
!862 = !DISubrange(count: 5)
!863 = !DIDerivedType(tag: DW_TAG_member, scope: !852, file: !845, line: 27, baseType: !864, size: 128)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !852, file: !845, line: 27, size: 128, elements: !865)
!865 = !{!866, !868}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !864, file: !845, line: 28, baseType: !867, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !864, file: !845, line: 29, baseType: !867, size: 64, offset: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !844, file: !845, line: 70, baseType: !848, size: 576, offset: 576)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !844, file: !845, line: 71, baseType: !848, size: 576, offset: 1152)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !844, file: !845, line: 72, baseType: !843, size: 64, offset: 1728)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !844, file: !845, line: 73, baseType: !34, size: 32, offset: 1792)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !844, file: !845, line: 74, baseType: !874, size: 32, offset: 1824)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !875, line: 23, baseType: !876)
!875 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !875, line: 21, size: 32, elements: !877)
!877 = !{!878}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !876, file: !875, line: 22, baseType: !879, size: 32)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !37, line: 37, baseType: !880)
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !49, line: 49, baseType: !7)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !844, file: !845, line: 75, baseType: !882, size: 32, offset: 1856)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !875, line: 28, baseType: !883)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !875, line: 26, size: 32, elements: !884)
!884 = !{!885}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !883, file: !875, line: 27, baseType: !886, size: 32)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !37, line: 38, baseType: !887)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !49, line: 50, baseType: !7)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !844, file: !845, line: 76, baseType: !889, size: 192, offset: 1920)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !890, line: 9, size: 192, elements: !891)
!890 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!891 = !{!892, !893, !897, !898}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !889, file: !890, line: 10, baseType: !746, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !889, file: !890, line: 11, baseType: !894, size: 64, offset: 64)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !896)
!896 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !890, line: 7, flags: DIFlagFwdDecl)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !889, file: !890, line: 12, baseType: !7, size: 32, offset: 128)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !889, file: !890, line: 13, baseType: !399, size: 32, offset: 160)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !844, file: !845, line: 77, baseType: !51, size: 64, offset: 2112)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !844, file: !845, line: 80, baseType: !901, size: 8, offset: 2176)
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !37, line: 35, baseType: !902)
!902 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !844, file: !845, line: 88, baseType: !109, size: 128, offset: 2240)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !844, file: !845, line: 89, baseType: !905, size: 64, offset: 2368)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !907, line: 195, size: 1728, elements: !908)
!907 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!908 = !{!909, !910, !915, !920, !929, !932, !933, !940, !941, !942, !943, !946, !947, !948, !950, !951, !990, !1011}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !906, file: !907, line: 196, baseType: !399, size: 32)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !906, file: !907, line: 197, baseType: !911, size: 32, offset: 32)
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !907, line: 28, baseType: !912)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !37, line: 104, baseType: !913)
!913 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !96, line: 20, baseType: !914)
!914 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !98, line: 26, baseType: !34)
!915 = !DIDerivedType(tag: DW_TAG_member, scope: !906, file: !907, line: 198, baseType: !916, size: 192, offset: 64)
!916 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !906, file: !907, line: 198, size: 192, elements: !917)
!917 = !{!918, !919}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !916, file: !907, line: 199, baseType: !109, size: 128)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !916, file: !907, line: 200, baseType: !443, size: 192, align: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !906, file: !907, line: 205, baseType: !921, size: 320, offset: 256)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !922, line: 48, size: 320, elements: !923)
!922 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!923 = !{!924, !925, !926, !927, !928}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !921, file: !922, line: 49, baseType: !746, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !921, file: !922, line: 55, baseType: !746, size: 64, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !921, file: !922, line: 57, baseType: !759, size: 32, offset: 128)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !921, file: !922, line: 59, baseType: !540, size: 32, offset: 160)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !921, file: !922, line: 60, baseType: !109, size: 128, offset: 192)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !906, file: !907, line: 206, baseType: !930, size: 64, offset: 576)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !907, line: 206, flags: DIFlagFwdDecl)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !906, file: !907, line: 207, baseType: !32, size: 64, offset: 640)
!933 = !DIDerivedType(tag: DW_TAG_member, scope: !906, file: !907, line: 208, baseType: !934, size: 64, offset: 704)
!934 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !906, file: !907, line: 208, size: 64, elements: !935)
!935 = !{!936, !939}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !934, file: !907, line: 209, baseType: !937, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !938, line: 8, baseType: !460)
!938 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!939 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !934, file: !907, line: 210, baseType: !937, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !906, file: !907, line: 212, baseType: !937, size: 64, offset: 768)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !906, file: !907, line: 213, baseType: !874, size: 32, offset: 832)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !906, file: !907, line: 214, baseType: !882, size: 32, offset: 864)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !906, file: !907, line: 215, baseType: !944, size: 32, offset: 896)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !907, line: 31, baseType: !945)
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !37, line: 110, baseType: !393)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !906, file: !907, line: 216, baseType: !38, size: 16, offset: 928)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !906, file: !907, line: 217, baseType: !38, size: 16, offset: 944)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !906, file: !907, line: 221, baseType: !949, size: 16, offset: 960)
!949 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !906, file: !907, line: 228, baseType: !51, size: 64, offset: 1024)
!951 = !DIDerivedType(tag: DW_TAG_member, scope: !906, file: !907, line: 245, baseType: !952, size: 320, offset: 1088)
!952 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !906, file: !907, line: 245, size: 320, elements: !953)
!953 = !{!954, !981}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !952, file: !907, line: 246, baseType: !955, size: 320)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !907, line: 114, size: 320, elements: !956)
!956 = !{!957, !958, !970, !973, !980}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !955, file: !907, line: 116, baseType: !51, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, scope: !955, file: !907, line: 117, baseType: !959, size: 64, offset: 64)
!959 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !955, file: !907, line: 117, size: 64, elements: !960)
!960 = !{!961, !969}
!961 = !DIDerivedType(tag: DW_TAG_member, scope: !959, file: !907, line: 118, baseType: !962, size: 64)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !959, file: !907, line: 118, size: 64, elements: !963)
!963 = !{!964, !965}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !962, file: !907, line: 120, baseType: !105, size: 16)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !962, file: !907, line: 121, baseType: !966, size: 48, offset: 16)
!966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 48, elements: !967)
!967 = !{!968}
!968 = !DISubrange(count: 6)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !959, file: !907, line: 127, baseType: !51, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !955, file: !907, line: 129, baseType: !971, size: 64, offset: 128)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !907, line: 102, flags: DIFlagFwdDecl)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !955, file: !907, line: 130, baseType: !974, size: 64, offset: 192)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !907, line: 108, size: 192, elements: !976)
!976 = !{!977, !978, !979}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !975, file: !907, line: 109, baseType: !733, size: 128, align: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !975, file: !907, line: 110, baseType: !399, size: 32, offset: 128)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !975, file: !907, line: 111, baseType: !901, size: 8, offset: 160)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !955, file: !907, line: 131, baseType: !28, size: 64, offset: 256)
!981 = !DIDerivedType(tag: DW_TAG_member, scope: !952, file: !907, line: 247, baseType: !982, size: 320)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !952, file: !907, line: 247, size: 320, elements: !983)
!983 = !{!984, !985, !986, !987, !988}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !982, file: !907, line: 248, baseType: !51, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !982, file: !907, line: 249, baseType: !51, size: 64, offset: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !982, file: !907, line: 250, baseType: !971, size: 64, offset: 128)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !982, file: !907, line: 251, baseType: !974, size: 64, offset: 192)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !982, file: !907, line: 252, baseType: !989, size: 64, offset: 256)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, scope: !906, file: !907, line: 260, baseType: !991, size: 256, offset: 1408)
!991 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !906, file: !907, line: 260, size: 256, elements: !992)
!992 = !{!993, !999}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !991, file: !907, line: 261, baseType: !994, size: 256)
!994 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !907, line: 134, size: 256, elements: !995)
!995 = !{!996, !997}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !994, file: !907, line: 135, baseType: !32, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !994, file: !907, line: 136, baseType: !998, size: 256)
!998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 256, elements: !801)
!999 = !DIDerivedType(tag: DW_TAG_member, scope: !991, file: !907, line: 262, baseType: !1000, size: 256)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !991, file: !907, line: 262, size: 256, elements: !1001)
!1001 = !{!1002, !1003}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1000, file: !907, line: 264, baseType: !109, size: 128)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1000, file: !907, line: 265, baseType: !1004, size: 128, offset: 128)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1005, line: 22, size: 128, elements: !1006)
!1005 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1006 = !{!1007, !1010}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1004, file: !1005, line: 23, baseType: !1008, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1005, line: 23, flags: DIFlagFwdDecl)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1004, file: !1005, line: 24, baseType: !51, size: 64, offset: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !906, file: !907, line: 280, baseType: !1012, size: 64, offset: 1664)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !907, line: 176, size: 192, elements: !1014)
!1014 = !{!1015, !1024, !1025}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1013, file: !907, line: 177, baseType: !1016, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !907, line: 171, baseType: !1017)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!34, !905, !1020, !1022, !905}
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !972)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !994)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1013, file: !907, line: 178, baseType: !905, size: 64, offset: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1013, file: !907, line: 179, baseType: !971, size: 64, offset: 128)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !844, file: !845, line: 90, baseType: !921, size: 320, offset: 2432)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !844, file: !845, line: 97, baseType: !1028, size: 256, offset: 2752)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1029, line: 98, size: 256, elements: !1030)
!1029 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1030 = !{!1031, !1032, !1033}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1028, file: !1029, line: 99, baseType: !746, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1028, file: !1029, line: 100, baseType: !109, size: 128, offset: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1028, file: !1029, line: 101, baseType: !1034, size: 64, offset: 192)
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1029, line: 21, baseType: !1035)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{null, !1038}
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !844, file: !845, line: 99, baseType: !1040, size: 768, offset: 3008)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !24, line: 199, size: 768, elements: !1041)
!1041 = !{!1042, !1047}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1040, file: !24, line: 200, baseType: !1043, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!34, !1046}
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1040, file: !24, line: 201, baseType: !1048, size: 704, offset: 64)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !24, line: 193, size: 704, elements: !1049)
!1049 = !{!1050, !1108}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1048, file: !24, line: 195, baseType: !1051, size: 640)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !24, line: 173, size: 640, elements: !1052)
!1052 = !{!1053, !1065, !1077, !1078, !1098, !1099, !1101, !1107}
!1053 = !DIDerivedType(tag: DW_TAG_member, scope: !1051, file: !24, line: 174, baseType: !1054, size: 192)
!1054 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1051, file: !24, line: 174, size: 192, elements: !1055)
!1055 = !{!1056, !1064}
!1056 = !DIDerivedType(tag: DW_TAG_member, scope: !1054, file: !24, line: 175, baseType: !1057, size: 192)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1054, file: !24, line: 175, size: 192, elements: !1058)
!1058 = !{!1059, !1060, !1061, !1062, !1063}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1057, file: !24, line: 176, baseType: !45, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1057, file: !24, line: 177, baseType: !34, size: 32, offset: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1057, file: !24, line: 178, baseType: !34, size: 32, offset: 96)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1057, file: !24, line: 179, baseType: !34, size: 32, offset: 128)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1057, file: !24, line: 180, baseType: !34, size: 32, offset: 160)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1054, file: !24, line: 182, baseType: !733, size: 128, align: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1051, file: !24, line: 184, baseType: !1066, size: 64, offset: 192)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1068, line: 26, size: 256, elements: !1069)
!1068 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1069 = !{!1070, !1071}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1067, file: !1068, line: 27, baseType: !7, size: 32)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1067, file: !1068, line: 28, baseType: !1072, size: 192, offset: 64)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1073, line: 43, size: 192, elements: !1074)
!1073 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1074 = !{!1075, !1076}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1072, file: !1073, line: 44, baseType: !540, size: 32)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1072, file: !1073, line: 45, baseType: !109, size: 128, offset: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1051, file: !24, line: 185, baseType: !45, size: 64, offset: 256)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1051, file: !24, line: 186, baseType: !1079, size: 64, offset: 320)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !24, line: 204, size: 960, elements: !1081)
!1081 = !{!1082, !1083, !1087, !1094}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1080, file: !24, line: 205, baseType: !1040, size: 768)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1080, file: !24, line: 206, baseType: !1084, size: 64, offset: 768)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!1046, !1079}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1080, file: !24, line: 207, baseType: !1088, size: 64, offset: 832)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{null, !1091, !1092, !1093}
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1080, file: !24, line: 209, baseType: !1095, size: 64, offset: 896)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!34, !1091, !45}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1051, file: !24, line: 187, baseType: !1046, size: 64, offset: 384)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1051, file: !24, line: 188, baseType: !1100, size: 64, offset: 448)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1051, file: !24, line: 189, baseType: !1102, size: 64, offset: 512)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !24, line: 157, size: 256, elements: !1104)
!1104 = !{!1105, !1106}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1103, file: !24, line: 158, baseType: !443, size: 192, align: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1103, file: !24, line: 159, baseType: !1091, size: 64, offset: 192)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1051, file: !24, line: 190, baseType: !364, size: 64, offset: 576)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1048, file: !24, line: 196, baseType: !583, size: 64, offset: 640)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !844, file: !845, line: 100, baseType: !1091, size: 64, offset: 3776)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !844, file: !845, line: 102, baseType: !1111, size: 64, offset: 3840)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !845, line: 107, size: 1152, elements: !1113)
!1113 = !{!1114, !1115, !1116, !1117, !1118, !1122}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1112, file: !845, line: 108, baseType: !368, size: 128)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1112, file: !845, line: 109, baseType: !843, size: 64, offset: 128)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1112, file: !845, line: 110, baseType: !874, size: 32, offset: 192)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1112, file: !845, line: 111, baseType: !61, size: 32, offset: 224)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1112, file: !845, line: 112, baseType: !1119, size: 640, offset: 256)
!1119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !746, size: 640, elements: !1120)
!1120 = !{!1121}
!1121 = !DISubrange(count: 10)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1112, file: !845, line: 113, baseType: !1123, size: 256, offset: 896)
!1123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !746, size: 256, elements: !801)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !844, file: !845, line: 103, baseType: !1125, size: 640, offset: 3904)
!1125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1126, size: 640, elements: !1120)
!1126 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !844, file: !845, line: 104, baseType: !1128, size: 256, offset: 4544)
!1128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1126, size: 256, elements: !801)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !813, file: !814, line: 38, baseType: !1111, size: 64, offset: 768)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !813, file: !814, line: 39, baseType: !34, size: 32, offset: 832)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !813, file: !814, line: 40, baseType: !889, size: 192, offset: 896)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !813, file: !814, line: 42, baseType: !34, size: 32, offset: 1088)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !767, file: !14, line: 951, baseType: !241, size: 32, offset: 128)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !767, file: !14, line: 952, baseType: !874, size: 32, offset: 160)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !767, file: !14, line: 952, baseType: !874, size: 32, offset: 192)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !767, file: !14, line: 953, baseType: !34, size: 32, offset: 224)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !726, file: !14, line: 1012, baseType: !1138, size: 64, offset: 896)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1140)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1141, line: 110, size: 1472, elements: !1142)
!1141 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1142 = !{!1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1200, !1201, !1202, !1210}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1140, file: !1141, line: 111, baseType: !746, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1140, file: !1141, line: 112, baseType: !874, size: 32, offset: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1140, file: !1141, line: 113, baseType: !882, size: 32, offset: 96)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1140, file: !1141, line: 114, baseType: !874, size: 32, offset: 128)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1140, file: !1141, line: 115, baseType: !882, size: 32, offset: 160)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1140, file: !1141, line: 116, baseType: !874, size: 32, offset: 192)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1140, file: !1141, line: 117, baseType: !882, size: 32, offset: 224)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1140, file: !1141, line: 118, baseType: !874, size: 32, offset: 256)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1140, file: !1141, line: 119, baseType: !882, size: 32, offset: 288)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1140, file: !1141, line: 120, baseType: !7, size: 32, offset: 320)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1140, file: !1141, line: 121, baseType: !1154, size: 64, offset: 384)
!1154 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1155, line: 24, baseType: !1156)
!1155 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1155, line: 24, size: 64, elements: !1157)
!1157 = !{!1158}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1156, file: !1155, line: 24, baseType: !339, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1140, file: !1141, line: 122, baseType: !1154, size: 64, offset: 448)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1140, file: !1141, line: 123, baseType: !1154, size: 64, offset: 512)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1140, file: !1141, line: 124, baseType: !1154, size: 64, offset: 576)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1140, file: !1141, line: 125, baseType: !1154, size: 64, offset: 640)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1140, file: !1141, line: 127, baseType: !99, size: 8, offset: 704)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1140, file: !1141, line: 129, baseType: !905, size: 64, offset: 768)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1140, file: !1141, line: 130, baseType: !905, size: 64, offset: 832)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1140, file: !1141, line: 131, baseType: !905, size: 64, offset: 896)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1140, file: !1141, line: 132, baseType: !905, size: 64, offset: 960)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1140, file: !1141, line: 135, baseType: !32, size: 64, offset: 1024)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1140, file: !1141, line: 137, baseType: !1170, size: 64, offset: 1088)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1172, line: 14, size: 1088, elements: !1173)
!1172 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1173 = !{!1174, !1175, !1184, !1185, !1186, !1187, !1188, !1189}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1171, file: !1172, line: 15, baseType: !399, size: 32)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1171, file: !1172, line: 17, baseType: !1176, size: 320, offset: 64)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1177, line: 22, size: 320, elements: !1178)
!1177 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1178 = !{!1179, !1180, !1181, !1182}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1176, file: !1177, line: 23, baseType: !540, size: 32)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1176, file: !1177, line: 24, baseType: !459, size: 64, offset: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1176, file: !1177, line: 26, baseType: !109, size: 128, offset: 128)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1176, file: !1177, line: 28, baseType: !1183, size: 64, offset: 256)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1171, file: !1172, line: 19, baseType: !51, size: 64, offset: 384)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1171, file: !1172, line: 20, baseType: !746, size: 64, offset: 448)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1171, file: !1172, line: 23, baseType: !368, size: 128, offset: 512)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1171, file: !1172, line: 24, baseType: !874, size: 32, offset: 640)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1171, file: !1172, line: 29, baseType: !746, size: 64, offset: 704)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1171, file: !1172, line: 36, baseType: !1190, size: 320, offset: 768)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1191, line: 15, size: 320, elements: !1192)
!1191 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1192 = !{!1193, !1194, !1195, !1196, !1197, !1198, !1199}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1190, file: !1191, line: 16, baseType: !540, size: 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1190, file: !1191, line: 18, baseType: !34, size: 32, offset: 32)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1190, file: !1191, line: 19, baseType: !34, size: 32, offset: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1190, file: !1191, line: 20, baseType: !34, size: 32, offset: 96)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1190, file: !1191, line: 21, baseType: !34, size: 32, offset: 128)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1190, file: !1191, line: 22, baseType: !51, size: 64, offset: 192)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1190, file: !1191, line: 23, baseType: !51, size: 64, offset: 256)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1140, file: !1141, line: 138, baseType: !843, size: 64, offset: 1152)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1140, file: !1141, line: 139, baseType: !1111, size: 64, offset: 1216)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1140, file: !1141, line: 140, baseType: !1203, size: 64, offset: 1280)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1141, line: 25, size: 64, elements: !1205)
!1205 = !{!1206, !1207, !1208}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1204, file: !1141, line: 26, baseType: !61, size: 32)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1204, file: !1141, line: 27, baseType: !34, size: 32, offset: 32)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1204, file: !1141, line: 28, baseType: !1209, offset: 64)
!1209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !882, elements: !361)
!1210 = !DIDerivedType(tag: DW_TAG_member, scope: !1140, file: !1141, line: 142, baseType: !1211, size: 128, offset: 1344)
!1211 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1140, file: !1141, line: 142, size: 128, elements: !1212)
!1212 = !{!1213, !1214}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1211, file: !1141, line: 143, baseType: !34, size: 32)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1211, file: !1141, line: 144, baseType: !733, size: 128, align: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !726, file: !14, line: 1013, baseType: !1216, size: 256, offset: 960)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !1217)
!1217 = !{!1218, !1219, !1220, !1221, !1222, !1223}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1216, file: !14, line: 971, baseType: !51, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1216, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1216, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1216, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1216, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1216, file: !14, line: 976, baseType: !53, size: 64, offset: 192)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !726, file: !14, line: 1014, baseType: !1225, size: 128, offset: 1216)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1226, line: 8, size: 128, elements: !1227)
!1226 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1227 = !{!1228, !4811}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1225, file: !1226, line: 9, baseType: !1229, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1231, line: 70, size: 256, elements: !1232)
!1231 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1232 = !{!1233, !4808, !4809, !4810}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1230, file: !1231, line: 71, baseType: !1234, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1236, line: 82, size: 1536, elements: !1237)
!1236 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1237 = !{!1238, !1239, !1244, !1252, !1253, !1268, !4776, !4778, !4791, !4792, !4793, !4794, !4795, !4800, !4801, !4802}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1235, file: !1236, line: 84, baseType: !7, size: 32)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1235, file: !1236, line: 85, baseType: !1240, size: 32, offset: 32)
!1240 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !567, line: 275, baseType: !1241)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !567, line: 275, size: 32, elements: !1242)
!1242 = !{!1243}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1241, file: !567, line: 275, baseType: !571, size: 32)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1235, file: !1236, line: 86, baseType: !1245, size: 128, offset: 64)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1246, line: 38, size: 128, elements: !1247)
!1246 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1247 = !{!1248, !1250}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1245, file: !1246, line: 39, baseType: !1249, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1245, file: !1246, line: 39, baseType: !1251, size: 64, offset: 64)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1235, file: !1236, line: 87, baseType: !1234, size: 64, offset: 192)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1235, file: !1236, line: 88, baseType: !1254, size: 128, offset: 256)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1236, line: 49, size: 128, elements: !1255)
!1255 = !{!1256, !1265}
!1256 = !DIDerivedType(tag: DW_TAG_member, scope: !1254, file: !1236, line: 50, baseType: !1257, size: 64)
!1257 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1254, file: !1236, line: 50, size: 64, elements: !1258)
!1258 = !{!1259, !1264}
!1259 = !DIDerivedType(tag: DW_TAG_member, scope: !1257, file: !1236, line: 51, baseType: !1260, size: 64)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1257, file: !1236, line: 51, size: 64, elements: !1261)
!1261 = !{!1262, !1263}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1260, file: !1236, line: 52, baseType: !393, size: 32)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1260, file: !1236, line: 52, baseType: !393, size: 32, offset: 32)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1257, file: !1236, line: 54, baseType: !339, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1254, file: !1236, line: 56, baseType: !1266, size: 64, offset: 64)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1235, file: !1236, line: 89, baseType: !1269, size: 64, offset: 384)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !1271)
!1271 = !{!1272, !1273, !1274, !1275, !1276, !1277, !1278, !1281, !1282, !1469, !4591, !4592, !4593, !4594, !4599, !4600, !4601, !4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4617, !4622, !4623, !4624, !4625, !4626, !4627, !4628, !4758, !4761, !4762, !4763, !4772, !4773, !4774, !4775}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1270, file: !14, line: 642, baseType: !36, size: 16)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1270, file: !14, line: 643, baseType: !38, size: 16, offset: 16)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1270, file: !14, line: 644, baseType: !874, size: 32, offset: 32)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1270, file: !14, line: 645, baseType: !109, size: 128, offset: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1270, file: !14, line: 646, baseType: !882, size: 32, offset: 192)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1270, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1270, file: !14, line: 650, baseType: !1279, size: 64, offset: 256)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1270, file: !14, line: 651, baseType: !1279, size: 64, offset: 320)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1270, file: !14, line: 654, baseType: !1283, size: 64, offset: 384)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1285)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !1286)
!1286 = !{!1287, !1291, !1304, !1310, !1314, !1318, !1322, !1326, !1330, !1334, !1338, !1339, !1345, !1349, !1386, !1417, !1424, !1430, !1434, !1438, !1442, !1446, !1450, !1456, !1460}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1285, file: !14, line: 1967, baseType: !1288, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{!1234, !1269, !1234, !7}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1285, file: !14, line: 1968, baseType: !1292, size: 64, offset: 64)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{!28, !1234, !1269, !1295}
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1297, line: 10, size: 128, elements: !1298)
!1297 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1298 = !{!1299, !1303}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1296, file: !1297, line: 11, baseType: !1300, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{null, !32}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1296, file: !1297, line: 12, baseType: !32, size: 64, offset: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1285, file: !14, line: 1969, baseType: !1305, size: 64, offset: 128)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!34, !1308, !1269, !34}
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1155, line: 42, flags: DIFlagFwdDecl)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1285, file: !14, line: 1970, baseType: !1311, size: 64, offset: 192)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{!1279, !1269, !34, !901}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1285, file: !14, line: 1972, baseType: !1315, size: 64, offset: 256)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{!34, !1234, !989, !34}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1285, file: !14, line: 1974, baseType: !1319, size: 64, offset: 320)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{!34, !1308, !1269, !1234, !36, !901}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1285, file: !14, line: 1976, baseType: !1323, size: 64, offset: 384)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{!34, !1234, !1269, !1234}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1285, file: !14, line: 1977, baseType: !1327, size: 64, offset: 448)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!34, !1269, !1234}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1285, file: !14, line: 1978, baseType: !1331, size: 64, offset: 512)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!34, !1308, !1269, !1234, !28}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1285, file: !14, line: 1980, baseType: !1335, size: 64, offset: 576)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{!34, !1308, !1269, !1234, !36}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1285, file: !14, line: 1982, baseType: !1327, size: 64, offset: 640)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1285, file: !14, line: 1983, baseType: !1340, size: 64, offset: 704)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = !DISubroutineType(types: !1342)
!1342 = !{!34, !1308, !1269, !1234, !36, !1343}
!1343 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !37, line: 21, baseType: !1344)
!1344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !37, line: 18, baseType: !393)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1285, file: !14, line: 1985, baseType: !1346, size: 64, offset: 768)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!34, !1308, !1269, !1234, !1269, !1234, !7}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1285, file: !14, line: 1987, baseType: !1350, size: 64, offset: 832)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!34, !1308, !1234, !1353}
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !1355)
!1355 = !{!1356, !1357, !1358, !1368, !1377, !1378, !1383, !1384, !1385}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1354, file: !14, line: 227, baseType: !7, size: 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1354, file: !14, line: 228, baseType: !36, size: 16, offset: 32)
!1358 = !DIDerivedType(tag: DW_TAG_member, scope: !1354, file: !14, line: 241, baseType: !1359, size: 32, offset: 64)
!1359 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1354, file: !14, line: 241, size: 32, elements: !1360)
!1360 = !{!1361, !1362}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1359, file: !14, line: 242, baseType: !874, size: 32)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1359, file: !14, line: 243, baseType: !1363, size: 32)
!1363 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1364, line: 16, baseType: !1365)
!1364 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1364, line: 14, size: 32, elements: !1366)
!1366 = !{!1367}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1365, file: !1364, line: 15, baseType: !879, size: 32)
!1368 = !DIDerivedType(tag: DW_TAG_member, scope: !1354, file: !14, line: 245, baseType: !1369, size: 32, offset: 96)
!1369 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1354, file: !14, line: 245, size: 32, elements: !1370)
!1370 = !{!1371, !1372}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1369, file: !14, line: 246, baseType: !882, size: 32)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1369, file: !14, line: 247, baseType: !1373, size: 32)
!1373 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1364, line: 20, baseType: !1374)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1364, line: 18, size: 32, elements: !1375)
!1375 = !{!1376}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1374, file: !1364, line: 19, baseType: !886, size: 32)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1354, file: !14, line: 249, baseType: !53, size: 64, offset: 128)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1354, file: !14, line: 250, baseType: !1379, size: 128, offset: 192)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !938, line: 13, size: 128, elements: !1380)
!1380 = !{!1381, !1382}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1379, file: !938, line: 14, baseType: !937, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1379, file: !938, line: 15, baseType: !1126, size: 64, offset: 64)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1354, file: !14, line: 251, baseType: !1379, size: 128, offset: 320)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1354, file: !14, line: 252, baseType: !1379, size: 128, offset: 448)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1354, file: !14, line: 259, baseType: !725, size: 64, offset: 576)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1285, file: !14, line: 1988, baseType: !1387, size: 64, offset: 896)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!34, !1308, !1390, !1392, !393, !7}
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1225)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1394, line: 22, size: 1280, elements: !1395)
!1394 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1395 = !{!1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1393, file: !1394, line: 23, baseType: !393, size: 32)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1393, file: !1394, line: 24, baseType: !36, size: 16, offset: 32)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1393, file: !1394, line: 25, baseType: !7, size: 32, offset: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1393, file: !1394, line: 26, baseType: !945, size: 32, offset: 96)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1393, file: !1394, line: 27, baseType: !339, size: 64, offset: 128)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1393, file: !1394, line: 28, baseType: !339, size: 64, offset: 192)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1393, file: !1394, line: 41, baseType: !339, size: 64, offset: 256)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1393, file: !1394, line: 42, baseType: !1343, size: 32, offset: 320)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1393, file: !1394, line: 43, baseType: !1343, size: 32, offset: 352)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1393, file: !1394, line: 44, baseType: !874, size: 32, offset: 384)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1393, file: !1394, line: 45, baseType: !882, size: 32, offset: 416)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1393, file: !1394, line: 46, baseType: !53, size: 64, offset: 448)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1393, file: !1394, line: 47, baseType: !1379, size: 128, offset: 512)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1393, file: !1394, line: 48, baseType: !1379, size: 128, offset: 640)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1393, file: !1394, line: 49, baseType: !1379, size: 128, offset: 768)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1393, file: !1394, line: 50, baseType: !1379, size: 128, offset: 896)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1393, file: !1394, line: 51, baseType: !339, size: 64, offset: 1024)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1393, file: !1394, line: 52, baseType: !339, size: 64, offset: 1088)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1393, file: !1394, line: 53, baseType: !393, size: 32, offset: 1152)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1393, file: !1394, line: 54, baseType: !393, size: 32, offset: 1184)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1393, file: !1394, line: 55, baseType: !339, size: 64, offset: 1216)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1285, file: !14, line: 1990, baseType: !1418, size: 64, offset: 960)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{!1421, !1234, !989, !47}
!1421 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !37, line: 66, baseType: !1422)
!1422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !49, line: 73, baseType: !1423)
!1423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !49, line: 15, baseType: !1126)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1285, file: !14, line: 1991, baseType: !1425, size: 64, offset: 1024)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!34, !1269, !1428, !339, !339}
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1285, file: !14, line: 1993, baseType: !1431, size: 64, offset: 1088)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!34, !1269, !34}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1285, file: !14, line: 1994, baseType: !1435, size: 64, offset: 1152)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{!34, !1269, !1234, !725, !7, !36}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1285, file: !14, line: 1997, baseType: !1439, size: 64, offset: 1216)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{!34, !1308, !1269, !725, !36}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1285, file: !14, line: 1999, baseType: !1443, size: 64, offset: 1280)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DISubroutineType(types: !1445)
!1445 = !{!1279, !1308, !1234, !34}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1285, file: !14, line: 2001, baseType: !1447, size: 64, offset: 1344)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!34, !1308, !1234, !1279, !34}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1285, file: !14, line: 2003, baseType: !1451, size: 64, offset: 1408)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!34, !1308, !1234, !1454}
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1285, file: !14, line: 2005, baseType: !1457, size: 64, offset: 1472)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{!34, !1234, !1454}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1285, file: !14, line: 2006, baseType: !1461, size: 64, offset: 1536)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!1464, !1269}
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !1466)
!1466 = !{!1467, !1468}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1465, file: !14, line: 3193, baseType: !821, size: 128)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1465, file: !14, line: 3194, baseType: !393, size: 32, offset: 128)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1270, file: !14, line: 655, baseType: !1470, size: 64, offset: 448)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !1472)
!1472 = !{!1473, !1474, !1475, !1476, !1477, !1478, !4108, !4240, !4280, !4363, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4380, !4384, !4385, !4388, !4391, !4394, !4397, !4398, !4399, !4440, !4462, !4463, !4464, !4465, !4466, !4467, !4470, !4474, !4483, !4484, !4485, !4486, !4545, !4560, !4561, !4562, !4563, !4564, !4565, !4566, !4567, !4582, !4583, !4584, !4585, !4586, !4587, !4588, !4589, !4590}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1471, file: !14, line: 1191, baseType: !109, size: 128)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1471, file: !14, line: 1192, baseType: !1343, size: 32, offset: 128)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1471, file: !14, line: 1193, baseType: !99, size: 8, offset: 160)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1471, file: !14, line: 1194, baseType: !51, size: 64, offset: 192)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1471, file: !14, line: 1195, baseType: !53, size: 64, offset: 256)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1471, file: !14, line: 1196, baseType: !1479, size: 64, offset: 320)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !1481)
!1481 = !{!1482, !1483, !1484, !1490, !1494, !1498, !1502, !4096, !4097, !4098, !4100, !4101, !4102, !4104, !4105, !4106, !4107}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1480, file: !14, line: 2367, baseType: !28, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1480, file: !14, line: 2368, baseType: !34, size: 32, offset: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1480, file: !14, line: 2376, baseType: !1485, size: 64, offset: 128)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!34, !1488}
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1231, line: 21, flags: DIFlagFwdDecl)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1480, file: !14, line: 2377, baseType: !1491, size: 64, offset: 192)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1493)
!1493 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1480, file: !14, line: 2378, baseType: !1495, size: 64, offset: 256)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{!1234, !1479, !34, !28, !32}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1480, file: !14, line: 2380, baseType: !1499, size: 64, offset: 320)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{null, !1470}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1480, file: !14, line: 2381, baseType: !1503, size: 64, offset: 384)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !1505)
!1505 = !{!1506, !1507, !1508, !1512, !2319, !2345, !2346, !2347, !2348, !2352, !2355, !2356, !2357, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2425, !2429, !2449, !2469, !2470, !2471, !2472, !2481, !2504, !2505, !2508, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2521, !2522, !2621, !2629, !2630, !2631, !2633, !4075, !4076, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1504, file: !6, line: 403, baseType: !5, size: 32)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1504, file: !6, line: 406, baseType: !109, size: 128, offset: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1504, file: !6, line: 409, baseType: !1509, size: 448, offset: 192)
!1509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 448, elements: !1510)
!1510 = !{!1511}
!1511 = !DISubrange(count: 56)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1504, file: !6, line: 417, baseType: !1513, size: 768, offset: 640)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !1514)
!1514 = !{!1515, !2313, !2314, !2315, !2318}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1513, file: !6, line: 46, baseType: !1516, size: 512)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1517, line: 64, size: 512, elements: !1518)
!1517 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1518 = !{!1519, !1520, !1521, !1523, !1567, !2160, !2303, !2308, !2309, !2310, !2311, !2312}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1516, file: !1517, line: 65, baseType: !28, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1516, file: !1517, line: 66, baseType: !109, size: 128, offset: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1516, file: !1517, line: 67, baseType: !1522, size: 64, offset: 192)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1516, file: !1517, line: 68, baseType: !1524, size: 64, offset: 256)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1517, line: 168, size: 768, elements: !1526)
!1526 = !{!1527, !1528, !1529, !1530}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1525, file: !1517, line: 169, baseType: !109, size: 128)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1525, file: !1517, line: 170, baseType: !71, size: 32, offset: 128)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1525, file: !1517, line: 171, baseType: !1516, size: 512, offset: 192)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1525, file: !1517, line: 172, baseType: !1531, size: 64, offset: 704)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1533)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1517, line: 133, size: 192, elements: !1534)
!1534 = !{!1535, !1542, !1547}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1533, file: !1517, line: 134, baseType: !1536, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1537)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!34, !1540}
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1516)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1533, file: !1517, line: 135, baseType: !1543, size: 64, offset: 64)
!1543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1544)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!28, !1540}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1533, file: !1517, line: 136, baseType: !1548, size: 64, offset: 128)
!1548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1549)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{!34, !1540, !1552}
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1517, line: 125, size: 20736, elements: !1554)
!1554 = !{!1555, !1557, !1561, !1562, !1566}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1553, file: !1517, line: 126, baseType: !1556, size: 192)
!1556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !989, size: 192, elements: !789)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1553, file: !1517, line: 127, baseType: !1558, size: 4096, offset: 192)
!1558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !989, size: 4096, elements: !1559)
!1559 = !{!1560}
!1560 = !DISubrange(count: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1553, file: !1517, line: 128, baseType: !34, size: 32, offset: 4288)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1553, file: !1517, line: 129, baseType: !1563, size: 16384, offset: 4320)
!1563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 16384, elements: !1564)
!1564 = !{!1565}
!1565 = !DISubrange(count: 2048)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1553, file: !1517, line: 130, baseType: !34, size: 32, offset: 20704)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1516, file: !1517, line: 69, baseType: !1568, size: 64, offset: 320)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1570)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1517, line: 116, size: 384, elements: !1571)
!1571 = !{!1572, !1576, !1595, !2122, !2152, !2156}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1570, file: !1517, line: 117, baseType: !1573, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{null, !1522}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1570, file: !1517, line: 118, baseType: !1577, size: 64, offset: 64)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1579)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1580, line: 254, size: 128, elements: !1581)
!1580 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1581 = !{!1582, !1591}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1579, file: !1580, line: 255, baseType: !1583, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{!1421, !1522, !1586, !989}
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1580, line: 30, size: 128, elements: !1588)
!1588 = !{!1589, !1590}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1587, file: !1580, line: 31, baseType: !28, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1587, file: !1580, line: 32, baseType: !36, size: 16, offset: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1579, file: !1580, line: 256, baseType: !1592, size: 64, offset: 64)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{!1421, !1522, !1586, !28, !47}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1570, file: !1517, line: 119, baseType: !1596, size: 64, offset: 128)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1599)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1580, line: 84, size: 320, elements: !1600)
!1600 = !{!1601, !1602, !1606, !2118, !2120}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1599, file: !1580, line: 85, baseType: !28, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1599, file: !1580, line: 86, baseType: !1603, size: 64, offset: 64)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{!36, !1522, !1586, !34}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1599, file: !1580, line: 88, baseType: !1607, size: 64, offset: 128)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{!36, !1522, !1610, !34}
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1580, line: 175, size: 512, elements: !1612)
!1612 = !{!1613, !1614, !1615, !1616, !2109, !2113, !2114}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1611, file: !1580, line: 176, baseType: !1587, size: 128)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1611, file: !1580, line: 177, baseType: !47, size: 64, offset: 128)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1611, file: !1580, line: 178, baseType: !32, size: 64, offset: 192)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1611, file: !1580, line: 179, baseType: !1617, size: 64, offset: 256)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{!1620}
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !1622)
!1622 = !{!1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !2101, !2102, !2103, !2106, !2107, !2108}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1621, file: !14, line: 473, baseType: !1269, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1621, file: !14, line: 474, baseType: !821, size: 128, offset: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1621, file: !14, line: 475, baseType: !921, size: 320, offset: 192)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1621, file: !14, line: 476, baseType: !826, size: 32, offset: 512)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1621, file: !14, line: 477, baseType: !61, size: 32, offset: 544)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1621, file: !14, line: 482, baseType: !580, size: 128, offset: 576)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1621, file: !14, line: 483, baseType: !51, size: 64, offset: 704)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1621, file: !14, line: 484, baseType: !51, size: 64, offset: 768)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1621, file: !14, line: 485, baseType: !1632, size: 64, offset: 832)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1634)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !1635)
!1635 = !{!1636, !1926, !1996, !2000, !2004, !2010, !2016, !2020, !2025, !2029, !2033, !2037, !2065, !2069, !2073, !2077, !2082, !2086, !2093, !2097}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1634, file: !14, line: 405, baseType: !1637, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{!34, !1640, !1924}
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !126, line: 74, size: 512, align: 128, elements: !1642)
!1642 = !{!1643, !1644, !1918, !1923}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1641, file: !126, line: 75, baseType: !51, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, scope: !1641, file: !126, line: 83, baseType: !1645, size: 320, offset: 64)
!1645 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1641, file: !126, line: 83, size: 320, elements: !1646)
!1646 = !{!1647, !1668, !1682, !1686, !1917}
!1647 = !DIDerivedType(tag: DW_TAG_member, scope: !1645, file: !126, line: 84, baseType: !1648, size: 320)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1645, file: !126, line: 84, size: 320, elements: !1649)
!1649 = !{!1650, !1661, !1662, !1667}
!1650 = !DIDerivedType(tag: DW_TAG_member, scope: !1648, file: !126, line: 90, baseType: !1651, size: 128)
!1651 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1648, file: !126, line: 90, size: 128, elements: !1652)
!1652 = !{!1653, !1654, !1659, !1660}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1651, file: !126, line: 91, baseType: !109, size: 128)
!1654 = !DIDerivedType(tag: DW_TAG_member, scope: !1651, file: !126, line: 94, baseType: !1655, size: 128)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1651, file: !126, line: 94, size: 128, elements: !1656)
!1656 = !{!1657, !1658}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1655, file: !126, line: 96, baseType: !32, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1655, file: !126, line: 98, baseType: !7, size: 32, offset: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1651, file: !126, line: 102, baseType: !109, size: 128)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1651, file: !126, line: 103, baseType: !109, size: 128)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1648, file: !126, line: 106, baseType: !1620, size: 64, offset: 128)
!1662 = !DIDerivedType(tag: DW_TAG_member, scope: !1648, file: !126, line: 107, baseType: !1663, size: 64, offset: 192)
!1663 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1648, file: !126, line: 107, size: 64, elements: !1664)
!1664 = !{!1665, !1666}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1663, file: !126, line: 108, baseType: !51, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1663, file: !126, line: 109, baseType: !51, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1648, file: !126, line: 117, baseType: !51, size: 64, offset: 256)
!1668 = !DIDerivedType(tag: DW_TAG_member, scope: !1645, file: !126, line: 119, baseType: !1669, size: 320)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1645, file: !126, line: 119, size: 320, elements: !1670)
!1670 = !{!1671, !1672, !1675, !1676, !1677}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1669, file: !126, line: 124, baseType: !51, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1669, file: !126, line: 125, baseType: !1673, size: 64, offset: 64)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !126, line: 125, flags: DIFlagFwdDecl)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1669, file: !126, line: 126, baseType: !51, size: 64, offset: 128)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1669, file: !126, line: 127, baseType: !51, size: 64, offset: 192)
!1677 = !DIDerivedType(tag: DW_TAG_member, scope: !1669, file: !126, line: 128, baseType: !1678, size: 64, offset: 256)
!1678 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1669, file: !126, line: 128, size: 64, elements: !1679)
!1679 = !{!1680, !1681}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1678, file: !126, line: 133, baseType: !51, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1678, file: !126, line: 138, baseType: !746, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, scope: !1645, file: !126, line: 141, baseType: !1683, size: 64)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1645, file: !126, line: 141, size: 64, elements: !1684)
!1684 = !{!1685}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1683, file: !126, line: 142, baseType: !51, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, scope: !1645, file: !126, line: 144, baseType: !1687, size: 128)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1645, file: !126, line: 144, size: 128, elements: !1688)
!1688 = !{!1689, !1916}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1687, file: !126, line: 146, baseType: !1690, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !142, line: 126, size: 1216, elements: !1692)
!1692 = !{!1693, !1702, !1723, !1724, !1725, !1726, !1727, !1898, !1899, !1900}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1691, file: !142, line: 127, baseType: !1694, size: 384)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !142, line: 21, size: 384, elements: !1695)
!1695 = !{!1696, !1697, !1698, !1699, !1700, !1701}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1694, file: !142, line: 22, baseType: !51, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1694, file: !142, line: 23, baseType: !344, size: 64, offset: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1694, file: !142, line: 24, baseType: !344, size: 64, offset: 128)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1694, file: !142, line: 25, baseType: !51, size: 64, offset: 192)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1694, file: !142, line: 26, baseType: !51, size: 64, offset: 256)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1694, file: !142, line: 27, baseType: !51, size: 64, offset: 320)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1691, file: !142, line: 128, baseType: !1703, size: 128, offset: 384)
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1704, line: 105, size: 128, elements: !1705)
!1704 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1705 = !{!1706, !1707}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1703, file: !1704, line: 110, baseType: !51, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1703, file: !1704, line: 118, baseType: !1708, size: 64, offset: 64)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1704, line: 95, size: 448, elements: !1710)
!1710 = !{!1711, !1712, !1718, !1719, !1720, !1721, !1722}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1709, file: !1704, line: 96, baseType: !746, size: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1709, file: !1704, line: 97, baseType: !1713, size: 64, offset: 64)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1704, line: 60, baseType: !1715)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{null, !1717}
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1709, file: !1704, line: 98, baseType: !1713, size: 64, offset: 128)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1709, file: !1704, line: 99, baseType: !901, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1709, file: !1704, line: 100, baseType: !901, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1709, file: !1704, line: 101, baseType: !733, size: 128, align: 64, offset: 256)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1709, file: !1704, line: 102, baseType: !1717, size: 64, offset: 384)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1691, file: !142, line: 129, baseType: !1067, size: 256, offset: 512)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1691, file: !142, line: 130, baseType: !141, size: 32, offset: 768)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1691, file: !142, line: 131, baseType: !7, size: 32, offset: 800)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1691, file: !142, line: 132, baseType: !51, size: 64, offset: 832)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1691, file: !142, line: 133, baseType: !1728, size: 64, offset: 896)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1730)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !142, line: 77, size: 192, elements: !1731)
!1731 = !{!1732, !1736, !1894}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1730, file: !142, line: 83, baseType: !1733, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{null, !1640}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1730, file: !142, line: 89, baseType: !1737, size: 64, offset: 64)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!1740, !1741}
!1740 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !126, line: 1184, baseType: !7)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1743, line: 512, size: 896, elements: !1744)
!1743 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1744 = !{!1745, !1862, !1863, !1870, !1877, !1886, !1887, !1888, !1890, !1892}
!1745 = !DIDerivedType(tag: DW_TAG_member, scope: !1742, file: !1743, line: 513, baseType: !1746, size: 320)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1742, file: !1743, line: 513, size: 320, elements: !1747)
!1747 = !{!1748, !1858, !1859, !1860, !1861}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1746, file: !1743, line: 514, baseType: !1749, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !126, line: 625, size: 1344, elements: !1751)
!1751 = !{!1752, !1761, !1762, !1769, !1776, !1777, !1782, !1783, !1788, !1789, !1792, !1851, !1852, !1853, !1854, !1855, !1856}
!1752 = !DIDerivedType(tag: DW_TAG_member, scope: !1750, file: !126, line: 628, baseType: !1753, size: 128)
!1753 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1750, file: !126, line: 628, size: 128, elements: !1754)
!1754 = !{!1755, !1760}
!1755 = !DIDerivedType(tag: DW_TAG_member, scope: !1753, file: !126, line: 629, baseType: !1756, size: 128)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1753, file: !126, line: 629, size: 128, elements: !1757)
!1757 = !{!1758, !1759}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1756, file: !126, line: 631, baseType: !51, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1756, file: !126, line: 632, baseType: !51, size: 64, offset: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1753, file: !126, line: 635, baseType: !733, size: 128, align: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1750, file: !126, line: 639, baseType: !697, size: 64, offset: 128)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1750, file: !126, line: 640, baseType: !1763, size: 64, offset: 192)
!1763 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1764, line: 297, baseType: !1765)
!1764 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1764, line: 297, size: 64, elements: !1766)
!1766 = !{!1767}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1765, file: !1764, line: 297, baseType: !1768, size: 64)
!1768 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !346, line: 19, baseType: !51)
!1769 = !DIDerivedType(tag: DW_TAG_member, scope: !1750, file: !126, line: 646, baseType: !1770, size: 64, offset: 256)
!1770 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1750, file: !126, line: 646, size: 64, elements: !1771)
!1771 = !{!1772, !1775}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1770, file: !126, line: 647, baseType: !1773, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1774)
!1774 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !126, line: 542, baseType: !51)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1770, file: !126, line: 648, baseType: !1774, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1750, file: !126, line: 666, baseType: !34, size: 32, offset: 320)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1750, file: !126, line: 667, baseType: !1778, size: 64, offset: 384)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !126, line: 579, size: 320, elements: !1780)
!1780 = !{!1781}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1779, file: !126, line: 580, baseType: !921, size: 320)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1750, file: !126, line: 670, baseType: !901, size: 8, offset: 448)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1750, file: !126, line: 681, baseType: !1784, size: 256, offset: 512)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1750, file: !126, line: 678, size: 256, elements: !1785)
!1785 = !{!1786, !1787}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1784, file: !126, line: 679, baseType: !443, size: 192, align: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1784, file: !126, line: 680, baseType: !51, size: 64, offset: 192)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1750, file: !126, line: 689, baseType: !109, size: 128, offset: 768)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1750, file: !126, line: 691, baseType: !1790, size: 64, offset: 896)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !126, line: 691, flags: DIFlagFwdDecl)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1750, file: !126, line: 694, baseType: !1793, size: 64, offset: 960)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1795)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1743, line: 563, size: 1024, elements: !1796)
!1796 = !{!1797, !1801, !1802, !1806, !1810, !1814, !1815, !1819, !1823, !1827, !1828, !1829, !1833, !1837, !1843, !1847}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1795, file: !1743, line: 564, baseType: !1798, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{null, !1749}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1795, file: !1743, line: 569, baseType: !1798, size: 64, offset: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1795, file: !1743, line: 571, baseType: !1803, size: 64, offset: 128)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DISubroutineType(types: !1805)
!1805 = !{!34, !1749, !51}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1795, file: !1743, line: 572, baseType: !1807, size: 64, offset: 192)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DISubroutineType(types: !1809)
!1809 = !{!34, !1749}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1795, file: !1743, line: 578, baseType: !1811, size: 64, offset: 256)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DISubroutineType(types: !1813)
!1813 = !{!34, !1749, !51, !51, !51}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1795, file: !1743, line: 580, baseType: !1737, size: 64, offset: 320)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1795, file: !1743, line: 581, baseType: !1816, size: 64, offset: 384)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DISubroutineType(types: !1818)
!1818 = !{!1740, !1741, !7}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1795, file: !1743, line: 582, baseType: !1820, size: 64, offset: 448)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!1740, !1741, !51, !51}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1795, file: !1743, line: 584, baseType: !1824, size: 64, offset: 512)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{!51, !1749}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1795, file: !1743, line: 588, baseType: !1737, size: 64, offset: 576)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1795, file: !1743, line: 591, baseType: !1737, size: 64, offset: 640)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1795, file: !1743, line: 597, baseType: !1830, size: 64, offset: 704)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{!34, !1749, !51, !32, !34, !34}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1795, file: !1743, line: 603, baseType: !1834, size: 64, offset: 768)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DISubroutineType(types: !1836)
!1836 = !{!28, !1749}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1795, file: !1743, line: 613, baseType: !1838, size: 64, offset: 832)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DISubroutineType(types: !1840)
!1840 = !{!34, !1749, !1841}
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !384, line: 54, flags: DIFlagFwdDecl)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1795, file: !1743, line: 625, baseType: !1844, size: 64, offset: 896)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{!1841, !1749, !51}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1795, file: !1743, line: 633, baseType: !1848, size: 64, offset: 960)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{!1640, !1749, !51}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1750, file: !126, line: 697, baseType: !51, size: 64, offset: 1024)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1750, file: !126, line: 699, baseType: !725, size: 64, offset: 1088)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1750, file: !126, line: 700, baseType: !32, size: 64, offset: 1152)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1750, file: !126, line: 711, baseType: !746, size: 64, offset: 1216)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1750, file: !126, line: 717, baseType: !1841, size: 64, offset: 1280)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1750, file: !126, line: 722, baseType: !1857, offset: 1344)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !126, line: 570, elements: !718)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1746, file: !1743, line: 515, baseType: !826, size: 32, offset: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1746, file: !1743, line: 516, baseType: !51, size: 64, offset: 128)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1746, file: !1743, line: 517, baseType: !51, size: 64, offset: 192)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1746, file: !1743, line: 518, baseType: !51, size: 64, offset: 256)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1742, file: !1743, line: 520, baseType: !125, size: 32, offset: 320)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1742, file: !1743, line: 522, baseType: !1864, size: 64, offset: 384)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !346, line: 22, baseType: !1866)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !346, line: 22, size: 64, elements: !1867)
!1867 = !{!1868}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1866, file: !346, line: 22, baseType: !1869, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !346, line: 15, baseType: !51)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1742, file: !1743, line: 524, baseType: !1871, size: 64, offset: 448)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1764, line: 372, baseType: !1873)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1764, line: 372, size: 64, elements: !1874)
!1874 = !{!1875}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1873, file: !1764, line: 372, baseType: !1876, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !346, line: 16, baseType: !51)
!1877 = !DIDerivedType(tag: DW_TAG_member, scope: !1742, file: !1743, line: 527, baseType: !1878, size: 64, offset: 512)
!1878 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1742, file: !1743, line: 527, size: 64, elements: !1879)
!1879 = !{!1880, !1885}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1878, file: !1743, line: 528, baseType: !1881, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !346, line: 21, baseType: !1882)
!1882 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !346, line: 21, size: 64, elements: !1883)
!1883 = !{!1884}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1882, file: !346, line: 21, baseType: !345, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1878, file: !1743, line: 529, baseType: !1865, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1742, file: !1743, line: 534, baseType: !1640, size: 64, offset: 576)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1742, file: !1743, line: 535, baseType: !1640, size: 64, offset: 640)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1742, file: !1743, line: 541, baseType: !1889, size: 64, offset: 704)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1742, file: !1743, line: 545, baseType: !1891, size: 64, offset: 768)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1742, file: !1743, line: 549, baseType: !1893, size: 64, offset: 832)
!1893 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1764, line: 520, baseType: !1640)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1730, file: !142, line: 100, baseType: !1895, size: 64, offset: 128)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{!34, !1690, !51, !51, !34}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1691, file: !142, line: 134, baseType: !32, size: 64, offset: 960)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1691, file: !142, line: 135, baseType: !34, size: 32, offset: 1024)
!1900 = !DIDerivedType(tag: DW_TAG_member, scope: !1691, file: !142, line: 136, baseType: !1901, size: 128, offset: 1088)
!1901 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1691, file: !142, line: 136, size: 128, elements: !1902)
!1902 = !{!1903, !1909}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1901, file: !142, line: 137, baseType: !1904, size: 128)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1905, line: 6, size: 128, elements: !1906)
!1905 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1906 = !{!1907, !1908}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1904, file: !1905, line: 7, baseType: !339, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1904, file: !1905, line: 8, baseType: !339, size: 64, offset: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, scope: !1901, file: !142, line: 138, baseType: !1910)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1901, file: !142, line: 138, elements: !1911)
!1911 = !{!1912, !1914}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1910, file: !142, line: 138, baseType: !1913)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1910, file: !142, line: 138, elements: !718)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1910, file: !142, line: 138, baseType: !1915)
!1915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1904, elements: !361)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1687, file: !126, line: 147, baseType: !32, size: 64, offset: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1645, file: !126, line: 161, baseType: !733, size: 128, align: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, scope: !1641, file: !126, line: 164, baseType: !1919, size: 32, offset: 384)
!1919 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1641, file: !126, line: 164, size: 32, elements: !1920)
!1920 = !{!1921, !1922}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1919, file: !126, line: 169, baseType: !61, size: 32)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1919, file: !126, line: 177, baseType: !7, size: 32)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1641, file: !126, line: 181, baseType: !61, size: 32, offset: 416)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1634, file: !14, line: 406, baseType: !1927, size: 64, offset: 64)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!34, !725, !1930}
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !126, line: 293, size: 1536, elements: !1932)
!1932 = !{!1933, !1963, !1977}
!1933 = !DIDerivedType(tag: DW_TAG_member, scope: !1931, file: !126, line: 295, baseType: !1934, size: 512)
!1934 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1931, file: !126, line: 295, size: 512, elements: !1935)
!1935 = !{!1936, !1962}
!1936 = !DIDerivedType(tag: DW_TAG_member, scope: !1934, file: !126, line: 296, baseType: !1937, size: 448)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1934, file: !126, line: 296, size: 448, elements: !1938)
!1938 = !{!1939, !1940, !1949, !1950, !1951, !1960, !1961}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1937, file: !126, line: 298, baseType: !51, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, scope: !1937, file: !126, line: 299, baseType: !1941, size: 128, offset: 64)
!1941 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1937, file: !126, line: 299, size: 128, elements: !1942)
!1942 = !{!1943, !1944}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1941, file: !126, line: 300, baseType: !109, size: 128)
!1944 = !DIDerivedType(tag: DW_TAG_member, scope: !1941, file: !126, line: 302, baseType: !1945, size: 128)
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1941, file: !126, line: 302, size: 128, elements: !1946)
!1946 = !{!1947, !1948}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1945, file: !126, line: 303, baseType: !32, size: 64)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1945, file: !126, line: 305, baseType: !7, size: 32, offset: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1937, file: !126, line: 310, baseType: !1620, size: 64, offset: 192)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1937, file: !126, line: 311, baseType: !51, size: 64, offset: 256)
!1951 = !DIDerivedType(tag: DW_TAG_member, scope: !1937, file: !126, line: 312, baseType: !1952, size: 64, offset: 320)
!1952 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1937, file: !126, line: 312, size: 64, elements: !1953)
!1953 = !{!1954, !1955}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1952, file: !126, line: 313, baseType: !32, size: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1952, file: !126, line: 314, baseType: !1956, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !126, line: 257, baseType: !1957)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !126, line: 255, size: 64, elements: !1958)
!1958 = !{!1959}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1957, file: !126, line: 256, baseType: !51, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1937, file: !126, line: 316, baseType: !61, size: 32, offset: 384)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1937, file: !126, line: 317, baseType: !61, size: 32, offset: 416)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1934, file: !126, line: 323, baseType: !1641, size: 512, align: 128)
!1963 = !DIDerivedType(tag: DW_TAG_member, scope: !1931, file: !126, line: 325, baseType: !1964, size: 512, offset: 512)
!1964 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1931, file: !126, line: 325, size: 512, elements: !1965)
!1965 = !{!1966, !1976}
!1966 = !DIDerivedType(tag: DW_TAG_member, scope: !1964, file: !126, line: 326, baseType: !1967, size: 320)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1964, file: !126, line: 326, size: 320, elements: !1968)
!1968 = !{!1969, !1970, !1971, !1972, !1973, !1974, !1975}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1967, file: !126, line: 327, baseType: !51, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1967, file: !126, line: 328, baseType: !51, size: 64, offset: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1967, file: !126, line: 329, baseType: !51, size: 64, offset: 128)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1967, file: !126, line: 331, baseType: !61, size: 32, offset: 192)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1967, file: !126, line: 332, baseType: !61, size: 32, offset: 224)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1967, file: !126, line: 333, baseType: !61, size: 32, offset: 256)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1967, file: !126, line: 335, baseType: !7, size: 32, offset: 288)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1964, file: !126, line: 339, baseType: !1641, size: 512, align: 128)
!1977 = !DIDerivedType(tag: DW_TAG_member, scope: !1931, file: !126, line: 341, baseType: !1978, size: 512, offset: 1024)
!1978 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1931, file: !126, line: 341, size: 512, elements: !1979)
!1979 = !{!1980, !1989, !1995}
!1980 = !DIDerivedType(tag: DW_TAG_member, scope: !1978, file: !126, line: 342, baseType: !1981, size: 384)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1978, file: !126, line: 342, size: 384, elements: !1982)
!1982 = !{!1983, !1984, !1985, !1986, !1987, !1988}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1981, file: !126, line: 343, baseType: !51, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1981, file: !126, line: 344, baseType: !51, size: 64, offset: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1981, file: !126, line: 346, baseType: !32, size: 64, offset: 128)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1981, file: !126, line: 347, baseType: !32, size: 64, offset: 192)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1981, file: !126, line: 348, baseType: !32, size: 64, offset: 256)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1981, file: !126, line: 349, baseType: !32, size: 64, offset: 320)
!1989 = !DIDerivedType(tag: DW_TAG_member, scope: !1978, file: !126, line: 352, baseType: !1990, size: 256)
!1990 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1978, file: !126, line: 352, size: 256, elements: !1991)
!1991 = !{!1992, !1993, !1994}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1990, file: !126, line: 353, baseType: !51, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1990, file: !126, line: 354, baseType: !51, size: 64, offset: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1990, file: !126, line: 356, baseType: !109, size: 128, offset: 128)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1978, file: !126, line: 359, baseType: !1641, size: 512, align: 128)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1634, file: !14, line: 409, baseType: !1997, size: 64, offset: 128)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{!34, !1620, !1924}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1634, file: !14, line: 412, baseType: !2001, size: 64, offset: 192)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!901, !1620, !1930}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1634, file: !14, line: 414, baseType: !2005, size: 64, offset: 256)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{null, !2008}
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1634, file: !14, line: 416, baseType: !2011, size: 64, offset: 320)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!34, !725, !1620, !53, !7, !2014, !2015}
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1634, file: !14, line: 419, baseType: !2017, size: 64, offset: 384)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!34, !725, !1620, !53, !7, !7, !1640, !32}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1634, file: !14, line: 424, baseType: !2021, size: 64, offset: 448)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{!2024, !1620, !2024}
!2024 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !37, line: 131, baseType: !339)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1634, file: !14, line: 425, baseType: !2026, size: 64, offset: 512)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DISubroutineType(types: !2028)
!2028 = !{null, !1930, !47, !47}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1634, file: !14, line: 426, baseType: !2030, size: 64, offset: 576)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{!901, !1930, !826}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1634, file: !14, line: 427, baseType: !2034, size: 64, offset: 640)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{null, !1930}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1634, file: !14, line: 428, baseType: !2038, size: 64, offset: 704)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{!1421, !2041, !2063}
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !2043)
!2043 = !{!2044, !2045, !2046, !2050, !2051, !2052, !2053}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2042, file: !14, line: 374, baseType: !725, size: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2042, file: !14, line: 375, baseType: !53, size: 64, offset: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2042, file: !14, line: 376, baseType: !2047, size: 64, offset: 128)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{null, !2041, !1126}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2042, file: !14, line: 377, baseType: !32, size: 64, offset: 192)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2042, file: !14, line: 378, baseType: !34, size: 32, offset: 256)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2042, file: !14, line: 379, baseType: !105, size: 16, offset: 288)
!2053 = !DIDerivedType(tag: DW_TAG_member, scope: !2042, file: !14, line: 380, baseType: !2054, size: 64, offset: 320)
!2054 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2042, file: !14, line: 380, size: 64, elements: !2055)
!2055 = !{!2056, !2059}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2054, file: !14, line: 386, baseType: !2057, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2054, file: !14, line: 395, baseType: !2060, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{!1421, !32}
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !14, line: 69, flags: DIFlagFwdDecl)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1634, file: !14, line: 433, baseType: !2066, size: 64, offset: 768)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{!34, !1620, !1930, !1930, !255}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1634, file: !14, line: 435, baseType: !2070, size: 64, offset: 832)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DISubroutineType(types: !2072)
!2072 = !{!34, !1930}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1634, file: !14, line: 436, baseType: !2074, size: 64, offset: 896)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{!901, !1930, !47, !47}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1634, file: !14, line: 438, baseType: !2078, size: 64, offset: 960)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{null, !1930, !2081, !2081}
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1634, file: !14, line: 439, baseType: !2083, size: 64, offset: 1024)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DISubroutineType(types: !2085)
!2085 = !{!34, !1620, !1640}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1634, file: !14, line: 442, baseType: !2087, size: 64, offset: 1088)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!34, !2090, !725, !2092}
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1634, file: !14, line: 444, baseType: !2094, size: 64, offset: 1152)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{null, !725}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1634, file: !14, line: 445, baseType: !2098, size: 64, offset: 1216)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{!34, !2041, !2063}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1621, file: !14, line: 486, baseType: !51, size: 64, offset: 896)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1621, file: !14, line: 487, baseType: !921, size: 320, offset: 960)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1621, file: !14, line: 488, baseType: !2104, size: 32, offset: 1280)
!2104 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2105, line: 8, baseType: !393)
!2105 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1621, file: !14, line: 489, baseType: !71, size: 32, offset: 1312)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1621, file: !14, line: 490, baseType: !109, size: 128, offset: 1344)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1621, file: !14, line: 491, baseType: !32, size: 64, offset: 1472)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1611, file: !1580, line: 180, baseType: !2110, size: 64, offset: 320)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = !DISubroutineType(types: !2112)
!2112 = !{!1421, !725, !1522, !1610, !989, !53, !47}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1611, file: !1580, line: 182, baseType: !2110, size: 64, offset: 384)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1611, file: !1580, line: 184, baseType: !2115, size: 64, offset: 448)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{!34, !725, !1522, !1610, !1749}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1599, file: !1580, line: 90, baseType: !2119, size: 64, offset: 192)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1599, file: !1580, line: 91, baseType: !2121, size: 64, offset: 256)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1570, file: !1517, line: 120, baseType: !2123, size: 64, offset: 192)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!2126, !1540}
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2128)
!2128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !185, line: 39, size: 384, elements: !2129)
!2129 = !{!2130, !2131, !2135, !2139, !2147, !2151}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2128, file: !185, line: 40, baseType: !184, size: 32)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2128, file: !185, line: 41, baseType: !2132, size: 64, offset: 64)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!901}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2128, file: !185, line: 42, baseType: !2136, size: 64, offset: 128)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{!32}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2128, file: !185, line: 43, baseType: !2140, size: 64, offset: 192)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DISubroutineType(types: !2142)
!2142 = !{!2143, !2145}
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !185, line: 19, flags: DIFlagFwdDecl)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2128, file: !185, line: 44, baseType: !2148, size: 64, offset: 256)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{!2143}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2128, file: !185, line: 45, baseType: !1300, size: 64, offset: 320)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1570, file: !1517, line: 121, baseType: !2153, size: 64, offset: 256)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!2143, !1540}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1570, file: !1517, line: 122, baseType: !2157, size: 64, offset: 320)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{null, !1540, !1092, !1093}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1516, file: !1517, line: 70, baseType: !2161, size: 64, offset: 384)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2163, line: 190, size: 1152, elements: !2164)
!2163 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!2164 = !{!2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2295, !2296, !2297, !2298, !2299, !2302}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2162, file: !2163, line: 191, baseType: !61, size: 32)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2162, file: !2163, line: 192, baseType: !61, size: 32, offset: 32)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2162, file: !2163, line: 202, baseType: !2161, size: 64, offset: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2162, file: !2163, line: 203, baseType: !28, size: 64, offset: 128)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2162, file: !2163, line: 205, baseType: !443, size: 192, align: 64, offset: 192)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2162, file: !2163, line: 207, baseType: !2143, size: 64, offset: 384)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2162, file: !2163, line: 208, baseType: !7, size: 32, offset: 448)
!2172 = !DIDerivedType(tag: DW_TAG_member, scope: !2162, file: !2163, line: 209, baseType: !2173, size: 256, offset: 512)
!2173 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2162, file: !2163, line: 209, size: 256, elements: !2174)
!2174 = !{!2175, !2184, !2188}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2173, file: !2163, line: 210, baseType: !2176, size: 256)
!2176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2163, line: 153, size: 256, elements: !2177)
!2177 = !{!2178, !2179, !2180, !2183}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2176, file: !2163, line: 154, baseType: !51, size: 64)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2176, file: !2163, line: 156, baseType: !583, size: 64, offset: 64)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2176, file: !2163, line: 162, baseType: !2181, size: 64, offset: 128)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2163, line: 162, flags: DIFlagFwdDecl)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2176, file: !2163, line: 167, baseType: !51, size: 64, offset: 192)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2173, file: !2163, line: 211, baseType: !2185, size: 64)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2163, line: 170, size: 64, elements: !2186)
!2186 = !{!2187}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2185, file: !2163, line: 171, baseType: !2161, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2173, file: !2163, line: 212, baseType: !2189, size: 256)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2163, line: 174, size: 256, elements: !2190)
!2190 = !{!2191, !2290, !2293, !2294}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2189, file: !2163, line: 175, baseType: !2192, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2194)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2163, line: 271, size: 768, elements: !2195)
!2195 = !{!2196, !2254, !2258, !2259, !2260, !2261, !2262, !2266, !2267, !2268, !2269, !2286}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2194, file: !2163, line: 276, baseType: !2197, size: 64)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{!34, !2200}
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2163, line: 251, size: 1216, elements: !2202)
!2202 = !{!2203, !2204, !2205, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2201, file: !2163, line: 253, baseType: !2161, size: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2201, file: !2163, line: 254, baseType: !725, size: 64, offset: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2201, file: !2163, line: 255, baseType: !2206, size: 64, offset: 128)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2208, line: 17, size: 960, elements: !2209)
!2208 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!2209 = !{!2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2239, !2240, !2243}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2207, file: !2208, line: 18, baseType: !989, size: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2207, file: !2208, line: 19, baseType: !47, size: 64, offset: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !2207, file: !2208, line: 20, baseType: !47, size: 64, offset: 128)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2207, file: !2208, line: 21, baseType: !47, size: 64, offset: 192)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !2207, file: !2208, line: 22, baseType: !47, size: 64, offset: 256)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2207, file: !2208, line: 23, baseType: !53, size: 64, offset: 320)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !2207, file: !2208, line: 24, baseType: !53, size: 64, offset: 384)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2207, file: !2208, line: 25, baseType: !753, size: 256, offset: 448)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2207, file: !2208, line: 26, baseType: !2219, size: 64, offset: 704)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2221)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !2208, line: 32, size: 256, elements: !2222)
!2222 = !{!2223, !2227, !2231, !2235}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2221, file: !2208, line: 33, baseType: !2224, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{!32, !2206, !52}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2221, file: !2208, line: 34, baseType: !2228, size: 64, offset: 64)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = !DISubroutineType(types: !2230)
!2230 = !{null, !2206, !32}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2221, file: !2208, line: 35, baseType: !2232, size: 64, offset: 128)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{!32, !2206, !32, !52}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2221, file: !2208, line: 36, baseType: !2236, size: 64, offset: 192)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{!34, !2206, !32}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !2207, file: !2208, line: 27, baseType: !34, size: 32, offset: 768)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2207, file: !2208, line: 28, baseType: !2241, size: 64, offset: 832)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !726)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2207, file: !2208, line: 29, baseType: !32, size: 64, offset: 896)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2201, file: !2163, line: 256, baseType: !32, size: 64, offset: 192)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2201, file: !2163, line: 259, baseType: !753, size: 256, offset: 256)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2201, file: !2163, line: 260, baseType: !753, size: 256, offset: 512)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2201, file: !2163, line: 261, baseType: !34, size: 32, offset: 768)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2201, file: !2163, line: 262, baseType: !109, size: 128, offset: 832)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2201, file: !2163, line: 263, baseType: !989, size: 64, offset: 960)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2201, file: !2163, line: 265, baseType: !47, size: 64, offset: 1024)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2201, file: !2163, line: 266, baseType: !901, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2201, file: !2163, line: 267, baseType: !901, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2201, file: !2163, line: 268, baseType: !1793, size: 64, offset: 1152)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2194, file: !2163, line: 277, baseType: !2255, size: 64, offset: 64)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{null, !2200}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2194, file: !2163, line: 290, baseType: !2236, size: 64, offset: 128)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2194, file: !2163, line: 292, baseType: !2224, size: 64, offset: 192)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2194, file: !2163, line: 293, baseType: !2232, size: 64, offset: 256)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2194, file: !2163, line: 294, baseType: !2228, size: 64, offset: 320)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2194, file: !2163, line: 296, baseType: !2263, size: 64, offset: 384)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{!1421, !2200, !989, !47, !53}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2194, file: !2163, line: 306, baseType: !47, size: 64, offset: 448)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2194, file: !2163, line: 313, baseType: !901, size: 8, offset: 512)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2194, file: !2163, line: 314, baseType: !2263, size: 64, offset: 576)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2194, file: !2163, line: 317, baseType: !2270, size: 64, offset: 640)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = !DISubroutineType(types: !2272)
!2272 = !{!2273, !2200, !2275}
!2273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2274, line: 59, baseType: !7)
!2274 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2277, line: 37, size: 128, elements: !2278)
!2277 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2278 = !{!2279, !2285}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2276, file: !2277, line: 38, baseType: !2280, size: 64)
!2280 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2277, line: 31, baseType: !2281)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{null, !725, !2284, !2275}
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2276, file: !2277, line: 39, baseType: !2273, size: 32, offset: 64)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2194, file: !2163, line: 320, baseType: !2287, size: 64, offset: 704)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = !DISubroutineType(types: !2289)
!2289 = !{!34, !2200, !1749}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2189, file: !2163, line: 176, baseType: !2291, size: 64, offset: 64)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2163, line: 35, flags: DIFlagFwdDecl)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2189, file: !2163, line: 177, baseType: !53, size: 64, offset: 128)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2189, file: !2163, line: 178, baseType: !2161, size: 64, offset: 192)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2162, file: !2163, line: 215, baseType: !32, size: 64, offset: 768)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2162, file: !2163, line: 221, baseType: !339, size: 64, offset: 832)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2162, file: !2163, line: 223, baseType: !38, size: 16, offset: 896)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2162, file: !2163, line: 224, baseType: !36, size: 16, offset: 912)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2162, file: !2163, line: 225, baseType: !2300, size: 64, offset: 960)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2163, line: 36, flags: DIFlagFwdDecl)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2162, file: !2163, line: 227, baseType: !733, size: 128, align: 64, offset: 1024)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1516, file: !1517, line: 71, baseType: !2304, size: 32, offset: 448)
!2304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2305, line: 19, size: 32, elements: !2306)
!2305 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2306 = !{!2307}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2304, file: !2305, line: 20, baseType: !399, size: 32)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1516, file: !1517, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1516, file: !1517, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1516, file: !1517, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1516, file: !1517, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1516, file: !1517, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1513, file: !6, line: 47, baseType: !1503, size: 64, offset: 512)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1513, file: !6, line: 48, baseType: !1522, size: 64, offset: 576)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1513, file: !6, line: 49, baseType: !2316, size: 64, offset: 640)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1513, file: !6, line: 50, baseType: !1066, size: 64, offset: 704)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1504, file: !6, line: 418, baseType: !2320, size: 64, offset: 1408)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !2322)
!2322 = !{!2323, !2324, !2329, !2333, !2337, !2341}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2321, file: !6, line: 54, baseType: !1587, size: 128)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2321, file: !6, line: 55, baseType: !2325, size: 64, offset: 128)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{!1421, !2320, !2328, !989}
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2321, file: !6, line: 57, baseType: !2330, size: 64, offset: 192)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{!1421, !2320, !2328, !28, !47}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2321, file: !6, line: 59, baseType: !2334, size: 64, offset: 256)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = !DISubroutineType(types: !2336)
!2336 = !{null, !1503, !28}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2321, file: !6, line: 60, baseType: !2338, size: 64, offset: 320)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{!34, !1503}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2321, file: !6, line: 61, baseType: !2342, size: 64, offset: 384)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = !DISubroutineType(types: !2344)
!2344 = !{null, !1503}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1504, file: !6, line: 419, baseType: !28, size: 64, offset: 1472)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1504, file: !6, line: 420, baseType: !28, size: 64, offset: 1536)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1504, file: !6, line: 421, baseType: !1522, size: 64, offset: 1600)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1504, file: !6, line: 424, baseType: !2349, size: 64, offset: 1664)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2351)
!2351 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1504, file: !6, line: 425, baseType: !2353, size: 64, offset: 1728)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !913)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1504, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1504, file: !6, line: 435, baseType: !753, size: 256, offset: 1856)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1504, file: !6, line: 437, baseType: !2358, size: 64, offset: 2112)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2360, line: 69, size: 320, elements: !2361)
!2360 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2361 = !{!2362, !2363, !2364, !2381, !2383, !2387, !2388}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2359, file: !2360, line: 70, baseType: !28, size: 64)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2359, file: !2360, line: 71, baseType: !1503, size: 64, offset: 64)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2359, file: !2360, line: 72, baseType: !2365, size: 64, offset: 128)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2367)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2360, line: 47, size: 256, elements: !2368)
!2368 = !{!2369, !2370, !2376, !2380}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2367, file: !2360, line: 49, baseType: !7, size: 32)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2367, file: !2360, line: 51, baseType: !2371, size: 64, offset: 64)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!34, !28, !2374}
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2359)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2367, file: !2360, line: 53, baseType: !2377, size: 64, offset: 128)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!34, !989, !2374}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2367, file: !2360, line: 55, baseType: !1300, size: 64, offset: 192)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2359, file: !2360, line: 73, baseType: !2382, size: 16, offset: 192)
!2382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2359, file: !2360, line: 74, baseType: !2384, size: 8, offset: 208)
!2384 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !96, line: 16, baseType: !2385)
!2385 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !98, line: 20, baseType: !2386)
!2386 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2359, file: !2360, line: 75, baseType: !95, size: 8, offset: 216)
!2388 = !DIDerivedType(tag: DW_TAG_member, scope: !2359, file: !2360, line: 76, baseType: !2389, size: 64, offset: 256)
!2389 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2359, file: !2360, line: 76, size: 64, elements: !2390)
!2390 = !{!2391, !2392, !2399}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2389, file: !2360, line: 77, baseType: !32, size: 64)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2389, file: !2360, line: 78, baseType: !2393, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2395)
!2395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2360, line: 86, size: 128, elements: !2396)
!2396 = !{!2397, !2398}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2395, file: !2360, line: 87, baseType: !7, size: 32)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2395, file: !2360, line: 88, baseType: !989, size: 64, offset: 64)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2389, file: !2360, line: 79, baseType: !2400, size: 64)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2402)
!2402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2360, line: 92, size: 256, elements: !2403)
!2403 = !{!2404, !2405, !2406, !2408, !2409}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2402, file: !2360, line: 94, baseType: !7, size: 32)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2402, file: !2360, line: 95, baseType: !7, size: 32, offset: 32)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2402, file: !2360, line: 96, baseType: !2407, size: 64, offset: 64)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2402, file: !2360, line: 97, baseType: !2365, size: 64, offset: 128)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2402, file: !2360, line: 98, baseType: !32, size: 64, offset: 192)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1504, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1504, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1504, file: !6, line: 442, baseType: !2349, size: 64, offset: 2240)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1504, file: !6, line: 443, baseType: !2353, size: 64, offset: 2304)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1504, file: !6, line: 444, baseType: !901, size: 8, offset: 2368)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1504, file: !6, line: 451, baseType: !901, size: 8, offset: 2376)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1504, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1504, file: !6, line: 455, baseType: !2418, size: 64, offset: 2432)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2420, line: 23, size: 96, elements: !2421)
!2420 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2421 = !{!2422, !2423, !2424}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2419, file: !2420, line: 24, baseType: !34, size: 32)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2419, file: !2420, line: 24, baseType: !34, size: 32, offset: 32)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2419, file: !2420, line: 24, baseType: !34, size: 32, offset: 64)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1504, file: !6, line: 458, baseType: !2426, size: 64, offset: 2496)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{!34}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1504, file: !6, line: 460, baseType: !2430, size: 4032, align: 512, offset: 2560)
!2430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2431, size: 4032, elements: !2447)
!2431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !2432)
!2432 = !{!2433, !2434, !2435}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2431, file: !6, line: 363, baseType: !32, size: 64)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2431, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2431, file: !6, line: 367, baseType: !2436, size: 448, offset: 128)
!2436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !2437)
!2437 = !{!2438, !2439}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2436, file: !6, line: 320, baseType: !1503, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2436, file: !6, line: 321, baseType: !2440, size: 384, offset: 64)
!2440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2441, line: 40, size: 384, elements: !2442)
!2441 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2442 = !{!2443}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2440, file: !2441, line: 41, baseType: !2444, size: 384, align: 64)
!2444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !443, size: 384, align: 64, elements: !2445)
!2445 = !{!2446}
!2446 = !DISubrange(count: 2)
!2447 = !{!2448}
!2448 = !DISubrange(count: 7)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1504, file: !6, line: 463, baseType: !2450, size: 192, offset: 6592)
!2450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2451, line: 8, size: 192, elements: !2452)
!2451 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2452 = !{!2453, !2454, !2456}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2450, file: !2451, line: 10, baseType: !7, size: 32)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2450, file: !2451, line: 11, baseType: !2455, size: 64, offset: 64)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2450, file: !2451, line: 12, baseType: !2457, size: 64, offset: 128)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2459, line: 59, size: 48, elements: !2460)
!2459 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2460 = !{!2461, !2464, !2465, !2466, !2467, !2468}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2458, file: !2459, line: 60, baseType: !2462, size: 16)
!2462 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !96, line: 18, baseType: !2463)
!2463 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !98, line: 23, baseType: !949)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2458, file: !2459, line: 61, baseType: !2462, size: 16, offset: 16)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2458, file: !2459, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2458, file: !2459, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2458, file: !2459, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2458, file: !2459, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1504, file: !6, line: 465, baseType: !51, size: 64, offset: 6784)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1504, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1504, file: !6, line: 470, baseType: !109, size: 128, offset: 6912)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1504, file: !6, line: 471, baseType: !2473, size: 64, offset: 7040)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2475, line: 33, size: 96, elements: !2476)
!2475 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2476 = !{!2477, !2478, !2479, !2480}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2474, file: !2475, line: 37, baseType: !34, size: 32)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2474, file: !2475, line: 43, baseType: !34, size: 32, offset: 32)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2474, file: !2475, line: 45, baseType: !38, size: 16, offset: 64)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2474, file: !2475, line: 47, baseType: !38, size: 16, offset: 80)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1504, file: !6, line: 476, baseType: !2482, size: 64, offset: 7104)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !2484)
!2484 = !{!2485, !2501, !2502, !2503}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2483, file: !6, line: 379, baseType: !2486, size: 64)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2488, line: 204, baseType: !2489)
!2488 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2488, line: 197, size: 192, elements: !2490)
!2490 = !{!2491, !2493, !2494, !2495, !2497, !2499}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2489, file: !2488, line: 198, baseType: !2492, size: 32)
!2492 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2488, line: 21, baseType: !394)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2489, file: !2488, line: 199, baseType: !99, size: 8, offset: 32)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2489, file: !2488, line: 200, baseType: !99, size: 8, offset: 40)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2489, file: !2488, line: 201, baseType: !2496, size: 16, offset: 48)
!2496 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2488, line: 17, baseType: !106)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2489, file: !2488, line: 202, baseType: !2498, size: 64, offset: 64)
!2498 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2488, line: 16, baseType: !340)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2489, file: !2488, line: 203, baseType: !2500, size: 64, offset: 128)
!2500 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2488, line: 22, baseType: !340)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2483, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2483, file: !6, line: 381, baseType: !989, size: 64, offset: 128)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2483, file: !6, line: 382, baseType: !989, size: 64, offset: 192)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1504, file: !6, line: 477, baseType: !2483, size: 256, offset: 7168)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1504, file: !6, line: 480, baseType: !2506, size: 64, offset: 7424)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1504, file: !6, line: 483, baseType: !2509, size: 64, offset: 7488)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1504, file: !6, line: 488, baseType: !989, size: 64, offset: 7552)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1504, file: !6, line: 492, baseType: !32, size: 64, offset: 7616)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1504, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1504, file: !6, line: 495, baseType: !32, size: 64, offset: 7744)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1504, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1504, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1504, file: !6, line: 500, baseType: !2518, size: 64, offset: 7872)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !327, line: 45, baseType: !2520)
!2520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1504, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1504, file: !6, line: 504, baseType: !2523, size: 64, offset: 8000)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2526, line: 96, size: 192, elements: !2527)
!2526 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2527 = !{!2528, !2529, !2582, !2585}
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2525, file: !2526, line: 97, baseType: !7, size: 32)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2525, file: !2526, line: 98, baseType: !2530, size: 64, offset: 64)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2526, line: 24, size: 3072, elements: !2532)
!2532 = !{!2533, !2535, !2536, !2537, !2538, !2551, !2552, !2553, !2554, !2566, !2567, !2568, !2579, !2580, !2581}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2531, file: !2526, line: 26, baseType: !2534, size: 128)
!2534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !746, size: 128, elements: !2445)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2531, file: !2526, line: 27, baseType: !2534, size: 128, offset: 128)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2531, file: !2526, line: 28, baseType: !34, size: 32, offset: 256)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2531, file: !2526, line: 31, baseType: !71, size: 32, align: 512, offset: 512)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2531, file: !2526, line: 32, baseType: !2539, size: 960, offset: 576)
!2539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2540, line: 206, size: 960, elements: !2541)
!2540 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2541 = !{!2542, !2543, !2546, !2548, !2549, !2550}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2539, file: !2540, line: 207, baseType: !736, size: 64)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2539, file: !2540, line: 208, baseType: !2544, size: 256, offset: 64)
!2544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2545, size: 256, elements: !801)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2539, file: !2540, line: 209, baseType: !2547, size: 256, offset: 320)
!2547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 256, elements: !801)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2539, file: !2540, line: 213, baseType: !1126, size: 64, offset: 576)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2539, file: !2540, line: 215, baseType: !1128, size: 256, offset: 640)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2539, file: !2540, line: 216, baseType: !95, size: 8, offset: 896)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2531, file: !2526, line: 33, baseType: !51, size: 64, offset: 1536)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2531, file: !2526, line: 34, baseType: !51, size: 64, offset: 1600)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2531, file: !2526, line: 35, baseType: !901, size: 8, offset: 1664)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2531, file: !2526, line: 36, baseType: !2555, size: 320, offset: 1728)
!2555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2556, line: 11, size: 320, elements: !2557)
!2556 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2557 = !{!2558, !2559, !2560, !2565}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2555, file: !2556, line: 16, baseType: !368, size: 128)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2555, file: !2556, line: 17, baseType: !51, size: 64, offset: 128)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2555, file: !2556, line: 18, baseType: !2561, size: 64, offset: 192)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DISubroutineType(types: !2563)
!2563 = !{null, !2564}
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2555, file: !2556, line: 19, baseType: !393, size: 32, offset: 256)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2531, file: !2526, line: 37, baseType: !1028, size: 256, offset: 2048)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2531, file: !2526, line: 38, baseType: !733, size: 128, align: 64, offset: 2304)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2531, file: !2526, line: 39, baseType: !2569, size: 64, offset: 2432)
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2526, line: 49, size: 768, elements: !2571)
!2571 = !{!2572, !2573, !2574, !2575, !2576, !2577, !2578}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2570, file: !2526, line: 50, baseType: !71, size: 32)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2570, file: !2526, line: 51, baseType: !2547, size: 256, offset: 64)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2570, file: !2526, line: 53, baseType: !2547, size: 256, offset: 320)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2570, file: !2526, line: 54, baseType: !51, size: 64, offset: 576)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2570, file: !2526, line: 55, baseType: !2569, size: 64, offset: 640)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2570, file: !2526, line: 56, baseType: !34, size: 32, offset: 704)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2570, file: !2526, line: 57, baseType: !34, size: 32, offset: 736)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2531, file: !2526, line: 40, baseType: !51, size: 64, offset: 2496)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2531, file: !2526, line: 42, baseType: !34, size: 32, offset: 2560)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2531, file: !2526, line: 43, baseType: !2524, size: 64, offset: 2624)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2525, file: !2526, line: 99, baseType: !2583, offset: 128)
!2583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2584, line: 211, elements: !718)
!2584 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2525, file: !2526, line: 100, baseType: !2586, size: 64, offset: 128)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2526, line: 63, size: 3008, elements: !2588)
!2588 = !{!2589, !2590, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2620}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2587, file: !2526, line: 64, baseType: !2569, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2587, file: !2526, line: 65, baseType: !2591, size: 192, offset: 64)
!2591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2569, size: 192, elements: !789)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2587, file: !2526, line: 67, baseType: !34, size: 32, offset: 256)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2587, file: !2526, line: 68, baseType: !753, size: 256, offset: 320)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2587, file: !2526, line: 69, baseType: !71, size: 32, offset: 576)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2587, file: !2526, line: 70, baseType: !753, size: 256, offset: 640)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2587, file: !2526, line: 71, baseType: !51, size: 64, offset: 896)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2587, file: !2526, line: 72, baseType: !51, size: 64, offset: 960)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2587, file: !2526, line: 73, baseType: !51, size: 64, offset: 1024)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2587, file: !2526, line: 74, baseType: !51, size: 64, offset: 1088)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2587, file: !2526, line: 75, baseType: !51, size: 64, offset: 1152)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2587, file: !2526, line: 76, baseType: !51, size: 64, offset: 1216)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2587, file: !2526, line: 77, baseType: !51, size: 64, offset: 1280)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2587, file: !2526, line: 78, baseType: !51, size: 64, offset: 1344)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2587, file: !2526, line: 79, baseType: !901, size: 8, offset: 1408)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2587, file: !2526, line: 80, baseType: !51, size: 64, offset: 1472)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2587, file: !2526, line: 81, baseType: !753, size: 256, offset: 1536)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2587, file: !2526, line: 82, baseType: !1067, size: 256, offset: 1792)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2587, file: !2526, line: 84, baseType: !61, size: 32, offset: 2048)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2587, file: !2526, line: 87, baseType: !51, size: 64, offset: 2112)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2587, file: !2526, line: 88, baseType: !51, size: 64, offset: 2176)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2587, file: !2526, line: 89, baseType: !2612, size: 704, offset: 2240)
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1029, line: 111, size: 704, elements: !2613)
!2613 = !{!2614, !2615, !2616, !2619}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2612, file: !1029, line: 112, baseType: !1028, size: 256)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2612, file: !1029, line: 113, baseType: !2555, size: 320, offset: 256)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2612, file: !1029, line: 116, baseType: !2617, size: 64, offset: 576)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1029, line: 18, flags: DIFlagFwdDecl)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2612, file: !1029, line: 117, baseType: !34, size: 32, offset: 640)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2587, file: !2526, line: 90, baseType: !2524, size: 64, offset: 2944)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1504, file: !6, line: 515, baseType: !2622, size: 64, offset: 8064)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2624, line: 117, size: 128, elements: !2625)
!2624 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2625 = !{!2626, !2627, !2628}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2623, file: !2624, line: 118, baseType: !913, size: 32)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2623, file: !2624, line: 119, baseType: !913, size: 32, offset: 32)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2623, file: !2624, line: 120, baseType: !1126, size: 64, offset: 64)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1504, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1504, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1504, file: !6, line: 520, baseType: !2632, size: 64, offset: 8192)
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1504, file: !6, line: 523, baseType: !2634, size: 64, offset: 8256)
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2635, size: 64)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !225, line: 372, size: 1024, elements: !2637)
!2637 = !{!2638, !2639, !2679, !2733, !2808, !2809, !2812, !2817, !2818, !2819, !2820, !2821, !2822}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2636, file: !225, line: 373, baseType: !109, size: 128)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2636, file: !225, line: 374, baseType: !2640, size: 64, offset: 128)
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_class", file: !225, line: 291, size: 576, elements: !2642)
!2642 = !{!2643, !2644, !2645, !2646, !2650, !2673, !2677, !2678}
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !2641, file: !225, line: 292, baseType: !28, size: 64)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2641, file: !225, line: 293, baseType: !32, size: 64, offset: 64)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "perf_probe", scope: !2641, file: !225, line: 295, baseType: !32, size: 64, offset: 128)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !2641, file: !225, line: 297, baseType: !2647, size: 64, offset: 192)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = !DISubroutineType(types: !2649)
!2649 = !{!34, !2635, !224, !32}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "fields_array", scope: !2641, file: !225, line: 299, baseType: !2651, size: 64, offset: 256)
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_fields", file: !225, line: 275, size: 320, elements: !2653)
!2653 = !{!2654, !2655}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2652, file: !225, line: 276, baseType: !28, size: 64)
!2655 = !DIDerivedType(tag: DW_TAG_member, scope: !2652, file: !225, line: 277, baseType: !2656, size: 256, offset: 64)
!2656 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2652, file: !225, line: 277, size: 256, elements: !2657)
!2657 = !{!2658, !2669}
!2658 = !DIDerivedType(tag: DW_TAG_member, scope: !2656, file: !225, line: 278, baseType: !2659, size: 256)
!2659 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2656, file: !225, line: 278, size: 256, elements: !2660)
!2660 = !{!2661, !2662, !2663, !2664, !2666, !2667, !2668}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2659, file: !225, line: 279, baseType: !28, size: 64)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2659, file: !225, line: 280, baseType: !2520, size: 32, offset: 64)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2659, file: !225, line: 281, baseType: !2520, size: 32, offset: 96)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "is_signed", scope: !2659, file: !225, line: 282, baseType: !2665, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "needs_test", scope: !2659, file: !225, line: 283, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "filter_type", scope: !2659, file: !225, line: 284, baseType: !2520, size: 32, offset: 160)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2659, file: !225, line: 285, baseType: !2520, size: 32, offset: 192)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "define_fields", scope: !2656, file: !225, line: 287, baseType: !2670, size: 64)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = !DISubroutineType(types: !2672)
!2672 = !{!34, !2635}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "get_fields", scope: !2641, file: !225, line: 300, baseType: !2674, size: 64, offset: 320)
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64)
!2675 = !DISubroutineType(types: !2676)
!2676 = !{!112, !2635}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !2641, file: !225, line: 301, baseType: !109, size: 128, offset: 384)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "raw_init", scope: !2641, file: !225, line: 302, baseType: !2670, size: 64, offset: 512)
!2679 = !DIDerivedType(tag: DW_TAG_member, scope: !2636, file: !225, line: 375, baseType: !2680, size: 64, offset: 192)
!2680 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2636, file: !225, line: 375, size: 64, elements: !2681)
!2681 = !{!2682, !2683}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2680, file: !225, line: 376, baseType: !28, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "tp", scope: !2680, file: !225, line: 378, baseType: !2684, size: 64)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint", file: !327, line: 32, size: 640, elements: !2686)
!2686 = !{!2687, !2688, !2700, !2724, !2725, !2726, !2727, !2728, !2732}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2685, file: !327, line: 33, baseType: !28, size: 64)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2685, file: !327, line: 34, baseType: !2689, size: 128, offset: 64)
!2689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !2624, line: 85, size: 128, elements: !2690)
!2690 = !{!2691, !2692}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2689, file: !2624, line: 86, baseType: !61, size: 32)
!2692 = !DIDerivedType(tag: DW_TAG_member, scope: !2689, file: !2624, line: 101, baseType: !2693, size: 64, offset: 64)
!2693 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2689, file: !2624, line: 101, size: 64, elements: !2694)
!2694 = !{!2695, !2696, !2697}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2693, file: !2624, line: 102, baseType: !51, size: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !2693, file: !2624, line: 103, baseType: !2622, size: 64)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2693, file: !2624, line: 104, baseType: !2698, size: 64)
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !2624, line: 104, flags: DIFlagFwdDecl)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_key", scope: !2685, file: !327, line: 35, baseType: !2701, size: 64, offset: 192)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_key", file: !2703, line: 61, size: 128, elements: !2704)
!2703 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2704 = !{!2705, !2706}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2702, file: !2703, line: 62, baseType: !32, size: 64)
!2706 = !DIDerivedType(tag: DW_TAG_member, scope: !2702, file: !2703, line: 63, baseType: !2707, size: 64, offset: 64)
!2707 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2702, file: !2703, line: 63, size: 64, elements: !2708)
!2708 = !{!2709, !2710, !2723}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2707, file: !2703, line: 65, baseType: !51, size: 64)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "mods", scope: !2707, file: !2703, line: 66, baseType: !2711, size: 64)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_mod", file: !2713, line: 169, size: 192, elements: !2714)
!2713 = !DIFile(filename: "./include/linux/static_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4f20b8b91766caa416ca409c84dcc807")
!2714 = !{!2715, !2716, !2717}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2712, file: !2713, line: 170, baseType: !2711, size: 64)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2712, file: !2713, line: 171, baseType: !1503, size: 64, offset: 64)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !2712, file: !2713, line: 172, baseType: !2718, size: 64, offset: 128)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2703, line: 32, size: 64, elements: !2720)
!2720 = !{!2721, !2722}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2719, file: !2703, line: 33, baseType: !913, size: 32)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2719, file: !2703, line: 34, baseType: !913, size: 32, offset: 32)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !2707, file: !2703, line: 67, baseType: !2718, size: 64)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_tramp", scope: !2685, file: !327, line: 36, baseType: !32, size: 64, offset: 256)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "iterator", scope: !2685, file: !327, line: 37, baseType: !32, size: 64, offset: 320)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "probestub", scope: !2685, file: !327, line: 38, baseType: !32, size: 64, offset: 384)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "regfunc", scope: !2685, file: !327, line: 39, baseType: !2426, size: 64, offset: 448)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "unregfunc", scope: !2685, file: !327, line: 40, baseType: !2729, size: 64, offset: 512)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{null}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !2685, file: !327, line: 41, baseType: !325, size: 64, offset: 576)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2636, file: !225, line: 380, baseType: !2734, size: 256, offset: 256)
!2734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event", file: !225, line: 148, size: 256, elements: !2735)
!2735 = !{!2736, !2737, !2738}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2734, file: !225, line: 149, baseType: !368, size: 128)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2734, file: !225, line: 150, baseType: !34, size: 32, offset: 128)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !2734, file: !225, line: 151, baseType: !2739, size: 64, offset: 192)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_functions", file: !225, line: 141, size: 256, elements: !2741)
!2741 = !{!2742, !2805, !2806, !2807}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !2740, file: !225, line: 142, baseType: !2743, size: 64)
!2743 = !DIDerivedType(tag: DW_TAG_typedef, name: "trace_print_func", file: !225, line: 138, baseType: !2744)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{!235, !2747, !34, !2804}
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_iterator", file: !225, line: 93, size: 67776, elements: !2749)
!2749 = !{!2750, !2753, !2756, !2759, !2760, !2761, !2762, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2790, !2793, !2794, !2795, !2797, !2798, !2799, !2800, !2801, !2802, !2803}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !2748, file: !225, line: 94, baseType: !2751, size: 64)
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!2752 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_array", file: !225, line: 13, flags: DIFlagFwdDecl)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !2748, file: !225, line: 95, baseType: !2754, size: 64, offset: 64)
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = !DICompositeType(tag: DW_TAG_structure_type, name: "tracer", file: !225, line: 15, flags: DIFlagFwdDecl)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "array_buffer", scope: !2748, file: !225, line: 96, baseType: !2757, size: 64, offset: 128)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DICompositeType(tag: DW_TAG_structure_type, name: "array_buffer", file: !225, line: 14, flags: DIFlagFwdDecl)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2748, file: !225, line: 97, baseType: !32, size: 64, offset: 192)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_file", scope: !2748, file: !225, line: 98, baseType: !34, size: 32, offset: 256)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2748, file: !225, line: 99, baseType: !753, size: 256, offset: 320)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_iter", scope: !2748, file: !225, line: 100, baseType: !2763, size: 64, offset: 576)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2765, size: 64)
!2765 = !DICompositeType(tag: DW_TAG_structure_type, name: "ring_buffer_iter", file: !2766, line: 10, flags: DIFlagFwdDecl)
!2766 = !DIFile(filename: "./include/linux/ring_buffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6b33fcbb5a7a42a82ce834d9b0e18658")
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "iter_flags", scope: !2748, file: !225, line: 101, baseType: !51, size: 64, offset: 640)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !2748, file: !225, line: 102, baseType: !32, size: 64, offset: 704)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "temp_size", scope: !2748, file: !225, line: 103, baseType: !7, size: 32, offset: 768)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !2748, file: !225, line: 104, baseType: !989, size: 64, offset: 832)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "fmt_size", scope: !2748, file: !225, line: 105, baseType: !7, size: 32, offset: 896)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "wait_index", scope: !2748, file: !225, line: 106, baseType: !1126, size: 64, offset: 960)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_seq", scope: !2748, file: !225, line: 109, baseType: !2774, size: 33088, offset: 1024)
!2774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_seq", file: !2775, line: 14, size: 33088, elements: !2776)
!2775 = !DIFile(filename: "./include/linux/trace_seq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cf71e515adc12762081b96266f67a26")
!2776 = !{!2777, !2781, !2788, !2789}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2774, file: !2775, line: 15, baseType: !2778, size: 32768)
!2778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 32768, elements: !2779)
!2779 = !{!2780}
!2780 = !DISubrange(count: 4096)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2774, file: !2775, line: 16, baseType: !2782, size: 192, offset: 32768)
!2782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_buf", file: !2783, line: 18, size: 192, elements: !2784)
!2783 = !DIFile(filename: "./include/linux/seq_buf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca9012ec0d31d1c4540dcb3f58de70c8")
!2784 = !{!2785, !2786, !2787}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2782, file: !2783, line: 19, baseType: !989, size: 64)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2782, file: !2783, line: 20, baseType: !47, size: 64, offset: 64)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2782, file: !2783, line: 21, baseType: !47, size: 64, offset: 128)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "readpos", scope: !2774, file: !2775, line: 17, baseType: !47, size: 64, offset: 32960)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !2774, file: !2775, line: 18, baseType: !34, size: 32, offset: 33024)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "started", scope: !2748, file: !225, line: 111, baseType: !2791, size: 64, offset: 34112)
!2791 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !644, line: 913, baseType: !2792)
!2792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !645, size: 64, elements: !649)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot", scope: !2748, file: !225, line: 114, baseType: !901, size: 8, offset: 34176)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2748, file: !225, line: 117, baseType: !2774, size: 33088, offset: 34240)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "ent", scope: !2748, file: !225, line: 118, baseType: !2796, size: 64, offset: 67328)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "lost_events", scope: !2748, file: !225, line: 119, baseType: !51, size: 64, offset: 67392)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "leftover", scope: !2748, file: !225, line: 120, baseType: !34, size: 32, offset: 67456)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "ent_size", scope: !2748, file: !225, line: 121, baseType: !34, size: 32, offset: 67488)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2748, file: !225, line: 122, baseType: !34, size: 32, offset: 67520)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !2748, file: !225, line: 123, baseType: !339, size: 64, offset: 67584)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2748, file: !225, line: 125, baseType: !53, size: 64, offset: 67648)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !2748, file: !225, line: 126, baseType: !1126, size: 64, offset: 67712)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !2740, file: !225, line: 143, baseType: !2743, size: 64, offset: 64)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "hex", scope: !2740, file: !225, line: 144, baseType: !2743, size: 64, offset: 128)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "binary", scope: !2740, file: !225, line: 145, baseType: !2743, size: 64, offset: 192)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "print_fmt", scope: !2636, file: !225, line: 381, baseType: !989, size: 64, offset: 512)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2636, file: !225, line: 382, baseType: !2810, size: 64, offset: 576)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_filter", file: !216, line: 821, flags: DIFlagFwdDecl)
!2812 = !DIDerivedType(tag: DW_TAG_member, scope: !2636, file: !225, line: 387, baseType: !2813, size: 64, offset: 640)
!2813 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2636, file: !225, line: 387, size: 64, elements: !2814)
!2814 = !{!2815, !2816}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !2813, file: !225, line: 388, baseType: !32, size: 64)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2813, file: !225, line: 389, baseType: !61, size: 32)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2636, file: !225, line: 391, baseType: !32, size: 64, offset: 704)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2636, file: !225, line: 394, baseType: !34, size: 32, offset: 768)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "perf_refcount", scope: !2636, file: !225, line: 397, baseType: !34, size: 32, offset: 800)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "perf_events", scope: !2636, file: !225, line: 398, baseType: !363, size: 64, offset: 832)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "prog_array", scope: !2636, file: !225, line: 399, baseType: !376, size: 64, offset: 896)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "perf_perm", scope: !2636, file: !225, line: 401, baseType: !2823, size: 64, offset: 960)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{!34, !2635, !2826}
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !216, line: 671, size: 8512, elements: !2828)
!2828 = !{!2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !3361, !3362, !3363, !3364, !3370, !3371, !3372, !3373, !3374, !3458, !3459, !3460, !3461, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3581, !3582, !3583, !3584, !3585, !3586, !3601, !3602, !3603, !3604, !3605, !3611, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3628, !3799, !3800, !3801, !3802, !4072, !4073, !4074}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "event_entry", scope: !2827, file: !216, line: 678, baseType: !109, size: 128)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_list", scope: !2827, file: !216, line: 684, baseType: !109, size: 128, offset: 128)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "active_list", scope: !2827, file: !216, line: 685, baseType: !109, size: 128, offset: 256)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2827, file: !216, line: 689, baseType: !443, size: 192, align: 64, offset: 384)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "group_index", scope: !2827, file: !216, line: 690, baseType: !339, size: 64, offset: 576)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_entry", scope: !2827, file: !216, line: 696, baseType: !109, size: 128, offset: 640)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "hlist_entry", scope: !2827, file: !216, line: 698, baseType: !368, size: 128, offset: 768)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "active_entry", scope: !2827, file: !216, line: 699, baseType: !109, size: 128, offset: 896)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "nr_siblings", scope: !2827, file: !216, line: 700, baseType: !34, size: 32, offset: 1024)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "event_caps", scope: !2827, file: !216, line: 703, baseType: !34, size: 32, offset: 1056)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "group_caps", scope: !2827, file: !216, line: 705, baseType: !34, size: 32, offset: 1088)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "group_generation", scope: !2827, file: !216, line: 707, baseType: !7, size: 32, offset: 1120)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2827, file: !216, line: 708, baseType: !2826, size: 64, offset: 1152)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !2827, file: !216, line: 714, baseType: !2843, size: 64, offset: 1216)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pmu", file: !216, line: 302, size: 2432, elements: !2845)
!2845 = !{!2846, !2847, !2848, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3271, !3272, !3273, !3274, !3275, !3279, !3280, !3284, !3288, !3289, !3293, !3297, !3298, !3299, !3303, !3307, !3311, !3312, !3313, !3317, !3318, !3322, !3326, !3327, !3347, !3351, !3352, !3353, !3357}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2844, file: !216, line: 303, baseType: !109, size: 128)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !2844, file: !216, line: 305, baseType: !1503, size: 64, offset: 128)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2844, file: !216, line: 306, baseType: !2849, size: 64, offset: 192)
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !163, line: 705, size: 5824, elements: !2851)
!2851 = !{!2852, !2853, !2854, !2857, !2858, !2911, !2981, !2982, !2983, !2984, !2985, !2992, !3084, !3097, !3107, !3111, !3113, !3114, !3115, !3119, !3126, !3127, !3130, !3133, !3137, !3140, !3141, !3142, !3143, !3144, !3145, !3175, !3176, !3177, !3180, !3183, !3192, !3193, !3194, !3195, !3196, !3197}
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2850, file: !163, line: 706, baseType: !1516, size: 512)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2850, file: !163, line: 707, baseType: !2849, size: 64, offset: 512)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2850, file: !163, line: 709, baseType: !2855, size: 64, offset: 576)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !163, line: 37, flags: DIFlagFwdDecl)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2850, file: !163, line: 711, baseType: !28, size: 64, offset: 640)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2850, file: !163, line: 712, baseType: !2859, size: 64, offset: 704)
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2860 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2861)
!2861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !163, line: 89, size: 384, elements: !2862)
!2862 = !{!2863, !2864, !2865, !2871, !2876, !2880}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2861, file: !163, line: 90, baseType: !28, size: 64)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2861, file: !163, line: 91, baseType: !1596, size: 64, offset: 64)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2861, file: !163, line: 92, baseType: !2866, size: 64, offset: 128)
!2866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2867, size: 64)
!2867 = !DISubroutineType(types: !2868)
!2868 = !{!34, !2869, !1552}
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2850)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2861, file: !163, line: 93, baseType: !2872, size: 64, offset: 192)
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{!989, !2869, !2875, !1092, !1093}
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2861, file: !163, line: 95, baseType: !2877, size: 64, offset: 256)
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2878 = !DISubroutineType(types: !2879)
!2879 = !{null, !2849}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2861, file: !163, line: 97, baseType: !2881, size: 64, offset: 320)
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2882, size: 64)
!2882 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2883)
!2883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !170, line: 286, size: 1472, elements: !2884)
!2884 = !{!2885, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2883, file: !170, line: 287, baseType: !2886, size: 64)
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{!34, !2849}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2883, file: !170, line: 288, baseType: !2877, size: 64, offset: 64)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2883, file: !170, line: 289, baseType: !2886, size: 64, offset: 128)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2883, file: !170, line: 290, baseType: !2886, size: 64, offset: 192)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2883, file: !170, line: 291, baseType: !2886, size: 64, offset: 256)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2883, file: !170, line: 292, baseType: !2886, size: 64, offset: 320)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2883, file: !170, line: 293, baseType: !2886, size: 64, offset: 384)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2883, file: !170, line: 294, baseType: !2886, size: 64, offset: 448)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2883, file: !170, line: 295, baseType: !2886, size: 64, offset: 512)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2883, file: !170, line: 296, baseType: !2886, size: 64, offset: 576)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2883, file: !170, line: 297, baseType: !2886, size: 64, offset: 640)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2883, file: !170, line: 298, baseType: !2886, size: 64, offset: 704)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2883, file: !170, line: 299, baseType: !2886, size: 64, offset: 768)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2883, file: !170, line: 300, baseType: !2886, size: 64, offset: 832)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2883, file: !170, line: 301, baseType: !2886, size: 64, offset: 896)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2883, file: !170, line: 302, baseType: !2886, size: 64, offset: 960)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2883, file: !170, line: 303, baseType: !2886, size: 64, offset: 1024)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2883, file: !170, line: 304, baseType: !2886, size: 64, offset: 1088)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2883, file: !170, line: 305, baseType: !2886, size: 64, offset: 1152)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2883, file: !170, line: 306, baseType: !2886, size: 64, offset: 1216)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2883, file: !170, line: 307, baseType: !2886, size: 64, offset: 1280)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2883, file: !170, line: 308, baseType: !2886, size: 64, offset: 1344)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2883, file: !170, line: 309, baseType: !2886, size: 64, offset: 1408)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2850, file: !163, line: 714, baseType: !2912, size: 64, offset: 768)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2914)
!2914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2915, line: 80, size: 1344, elements: !2916)
!2915 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2916 = !{!2917, !2918, !2919, !2920, !2921, !2922, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2980}
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2914, file: !2915, line: 81, baseType: !28, size: 64)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2914, file: !2915, line: 82, baseType: !28, size: 64, offset: 64)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2914, file: !2915, line: 83, baseType: !1596, size: 64, offset: 128)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2914, file: !2915, line: 84, baseType: !1596, size: 64, offset: 192)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2914, file: !2915, line: 85, baseType: !1596, size: 64, offset: 256)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2914, file: !2915, line: 87, baseType: !2923, size: 64, offset: 320)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = !DISubroutineType(types: !2925)
!2925 = !{!34, !2849, !2926}
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !157, line: 96, size: 1152, elements: !2928)
!2928 = !{!2929, !2930, !2931, !2932, !2933, !2934, !2935, !2939, !2943, !2944, !2945, !2946, !2947, !2955, !2956, !2957, !2958, !2959, !2960}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2927, file: !157, line: 97, baseType: !28, size: 64)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2927, file: !157, line: 98, baseType: !2912, size: 64, offset: 64)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2927, file: !157, line: 100, baseType: !1503, size: 64, offset: 128)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2927, file: !157, line: 101, baseType: !28, size: 64, offset: 192)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2927, file: !157, line: 103, baseType: !901, size: 8, offset: 256)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2927, file: !157, line: 104, baseType: !156, size: 32, offset: 288)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2927, file: !157, line: 106, baseType: !2936, size: 64, offset: 320)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2938)
!2938 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !157, line: 106, flags: DIFlagFwdDecl)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2927, file: !157, line: 107, baseType: !2940, size: 64, offset: 384)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2942)
!2942 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !157, line: 107, flags: DIFlagFwdDecl)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2927, file: !157, line: 109, baseType: !2886, size: 64, offset: 448)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2927, file: !157, line: 110, baseType: !2877, size: 64, offset: 512)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2927, file: !157, line: 111, baseType: !2886, size: 64, offset: 576)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2927, file: !157, line: 112, baseType: !2877, size: 64, offset: 640)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2927, file: !157, line: 113, baseType: !2948, size: 64, offset: 704)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = !DISubroutineType(types: !2950)
!2950 = !{!34, !2849, !2951}
!2951 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !170, line: 60, baseType: !2952)
!2952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !170, line: 58, size: 32, elements: !2953)
!2953 = !{!2954}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2952, file: !170, line: 59, baseType: !34, size: 32)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2927, file: !157, line: 114, baseType: !2886, size: 64, offset: 768)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2927, file: !157, line: 115, baseType: !1596, size: 64, offset: 832)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2927, file: !157, line: 116, baseType: !1596, size: 64, offset: 896)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2927, file: !157, line: 118, baseType: !2881, size: 64, offset: 960)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2927, file: !157, line: 119, baseType: !2877, size: 64, offset: 1024)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2927, file: !157, line: 121, baseType: !2961, size: 64, offset: 1088)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !157, line: 121, flags: DIFlagFwdDecl)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2914, file: !2915, line: 88, baseType: !2866, size: 64, offset: 384)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2914, file: !2915, line: 89, baseType: !2886, size: 64, offset: 448)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2914, file: !2915, line: 90, baseType: !2877, size: 64, offset: 512)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2914, file: !2915, line: 91, baseType: !2877, size: 64, offset: 576)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2914, file: !2915, line: 92, baseType: !2877, size: 64, offset: 640)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2914, file: !2915, line: 94, baseType: !2886, size: 64, offset: 704)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2914, file: !2915, line: 95, baseType: !2886, size: 64, offset: 768)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2914, file: !2915, line: 97, baseType: !2948, size: 64, offset: 832)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2914, file: !2915, line: 98, baseType: !2886, size: 64, offset: 896)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2914, file: !2915, line: 100, baseType: !2886, size: 64, offset: 960)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2914, file: !2915, line: 102, baseType: !2886, size: 64, offset: 1024)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2914, file: !2915, line: 103, baseType: !2877, size: 64, offset: 1088)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2914, file: !2915, line: 105, baseType: !2881, size: 64, offset: 1152)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2914, file: !2915, line: 107, baseType: !2977, size: 64, offset: 1216)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2979)
!2979 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2915, line: 107, flags: DIFlagFwdDecl)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2914, file: !2915, line: 109, baseType: !901, size: 8, offset: 1280)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2850, file: !163, line: 715, baseType: !2926, size: 64, offset: 832)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2850, file: !163, line: 717, baseType: !32, size: 64, offset: 896)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2850, file: !163, line: 719, baseType: !32, size: 64, offset: 960)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2850, file: !163, line: 721, baseType: !753, size: 256, offset: 1024)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2850, file: !163, line: 725, baseType: !2986, size: 448, offset: 1280)
!2986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !163, line: 517, size: 448, elements: !2987)
!2987 = !{!2988, !2989, !2990, !2991}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2986, file: !163, line: 518, baseType: !109, size: 128)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2986, file: !163, line: 519, baseType: !109, size: 128, offset: 128)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2986, file: !163, line: 520, baseType: !109, size: 128, offset: 256)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2986, file: !163, line: 521, baseType: !162, size: 32, offset: 384)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2850, file: !163, line: 726, baseType: !2993, size: 2496, offset: 1728)
!2993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !170, line: 663, size: 2496, elements: !2994)
!2994 = !{!2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3077, !3081}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2993, file: !170, line: 664, baseType: !2951, size: 32)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2993, file: !170, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2993, file: !170, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2993, file: !170, line: 667, baseType: !901, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2993, file: !170, line: 668, baseType: !901, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2993, file: !170, line: 669, baseType: !901, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2993, file: !170, line: 670, baseType: !901, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2993, file: !170, line: 671, baseType: !901, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2993, file: !170, line: 672, baseType: !901, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2993, file: !170, line: 673, baseType: !901, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2993, file: !170, line: 674, baseType: !901, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2993, file: !170, line: 675, baseType: !393, size: 32, offset: 64)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2993, file: !170, line: 676, baseType: !71, size: 32, offset: 96)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2993, file: !170, line: 678, baseType: !109, size: 128, offset: 128)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2993, file: !170, line: 679, baseType: !1067, size: 256, offset: 256)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2993, file: !170, line: 680, baseType: !3011, size: 64, offset: 512)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3013, line: 43, size: 1536, elements: !3014)
!3013 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!3014 = !{!3015, !3016, !3017, !3018, !3019, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3012, file: !3013, line: 44, baseType: !28, size: 64)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3012, file: !3013, line: 45, baseType: !34, size: 32, offset: 64)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3012, file: !3013, line: 46, baseType: !109, size: 128, offset: 128)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3012, file: !3013, line: 47, baseType: !71, size: 32, offset: 256)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3012, file: !3013, line: 48, baseType: !3020, size: 64, offset: 320)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !170, line: 629, flags: DIFlagFwdDecl)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3012, file: !3013, line: 49, baseType: !2555, size: 320, offset: 384)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3012, file: !3013, line: 50, baseType: !51, size: 64, offset: 704)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3012, file: !3013, line: 51, baseType: !523, size: 64, offset: 768)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3012, file: !3013, line: 52, baseType: !523, size: 64, offset: 832)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3012, file: !3013, line: 53, baseType: !523, size: 64, offset: 896)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3012, file: !3013, line: 54, baseType: !523, size: 64, offset: 960)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3012, file: !3013, line: 55, baseType: !523, size: 64, offset: 1024)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3012, file: !3013, line: 56, baseType: !51, size: 64, offset: 1088)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3012, file: !3013, line: 57, baseType: !51, size: 64, offset: 1152)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3012, file: !3013, line: 58, baseType: !51, size: 64, offset: 1216)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3012, file: !3013, line: 59, baseType: !51, size: 64, offset: 1280)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3012, file: !3013, line: 60, baseType: !51, size: 64, offset: 1344)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3012, file: !3013, line: 61, baseType: !2849, size: 64, offset: 1408)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3012, file: !3013, line: 62, baseType: !901, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3012, file: !3013, line: 63, baseType: !901, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2993, file: !170, line: 681, baseType: !901, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2993, file: !170, line: 682, baseType: !901, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2993, file: !170, line: 683, baseType: !901, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2993, file: !170, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2993, file: !170, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2993, file: !170, line: 690, baseType: !515, size: 512, offset: 640)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2993, file: !170, line: 691, baseType: !339, size: 64, offset: 1152)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2993, file: !170, line: 692, baseType: !1028, size: 256, offset: 1216)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2993, file: !170, line: 693, baseType: !66, size: 192, offset: 1472)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2993, file: !170, line: 694, baseType: !3020, size: 64, offset: 1664)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2993, file: !170, line: 695, baseType: !61, size: 32, offset: 1728)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2993, file: !170, line: 696, baseType: !61, size: 32, offset: 1760)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2993, file: !170, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2993, file: !170, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2993, file: !170, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2993, file: !170, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2993, file: !170, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2993, file: !170, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2993, file: !170, line: 703, baseType: !901, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2993, file: !170, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2993, file: !170, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2993, file: !170, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2993, file: !170, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2993, file: !170, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2993, file: !170, line: 709, baseType: !7, size: 32, offset: 1824)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2993, file: !170, line: 710, baseType: !169, size: 32, offset: 1856)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2993, file: !170, line: 711, baseType: !177, size: 32, offset: 1888)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2993, file: !170, line: 712, baseType: !177, size: 32, offset: 1920)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2993, file: !170, line: 713, baseType: !34, size: 32, offset: 1952)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2993, file: !170, line: 714, baseType: !34, size: 32, offset: 1984)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2993, file: !170, line: 715, baseType: !339, size: 64, offset: 2048)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2993, file: !170, line: 716, baseType: !339, size: 64, offset: 2112)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2993, file: !170, line: 717, baseType: !339, size: 64, offset: 2176)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2993, file: !170, line: 718, baseType: !339, size: 64, offset: 2240)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2993, file: !170, line: 720, baseType: !3072, size: 64, offset: 2304)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !170, line: 632, size: 64, elements: !3074)
!3074 = !{!3075, !3076}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3073, file: !170, line: 633, baseType: !71, size: 32)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3073, file: !170, line: 634, baseType: !7, size: 32, offset: 32)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2993, file: !170, line: 721, baseType: !3078, size: 64, offset: 2368)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{null, !2849, !913}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2993, file: !170, line: 722, baseType: !3082, size: 64, offset: 2432)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !170, line: 722, flags: DIFlagFwdDecl)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2850, file: !163, line: 727, baseType: !3085, size: 64, offset: 4224)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !170, line: 742, size: 1792, elements: !3087)
!3087 = !{!3088, !3089, !3090, !3094, !3095, !3096}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3086, file: !170, line: 743, baseType: !2883, size: 1472)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3086, file: !170, line: 744, baseType: !2886, size: 64, offset: 1472)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3086, file: !170, line: 745, baseType: !3091, size: 64, offset: 1536)
!3091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3092, size: 64)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{null, !2849, !901}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3086, file: !170, line: 746, baseType: !2886, size: 64, offset: 1600)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3086, file: !170, line: 747, baseType: !2877, size: 64, offset: 1664)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3086, file: !170, line: 748, baseType: !2877, size: 64, offset: 1728)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2850, file: !163, line: 736, baseType: !3098, size: 128, offset: 4288)
!3098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !163, line: 529, size: 128, elements: !3099)
!3099 = !{!3100, !3104}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3098, file: !163, line: 531, baseType: !3101, size: 64)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3103, line: 13, flags: DIFlagFwdDecl)
!3103 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3098, file: !163, line: 532, baseType: !3105, size: 64, offset: 64)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !163, line: 49, flags: DIFlagFwdDecl)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2850, file: !163, line: 738, baseType: !3108, size: 64, offset: 4416)
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3110)
!3110 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !163, line: 738, flags: DIFlagFwdDecl)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2850, file: !163, line: 740, baseType: !3112, size: 64, offset: 4480)
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2850, file: !163, line: 741, baseType: !339, size: 64, offset: 4544)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2850, file: !163, line: 746, baseType: !339, size: 64, offset: 4608)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2850, file: !163, line: 747, baseType: !3116, size: 64, offset: 4672)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3118)
!3118 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !163, line: 747, flags: DIFlagFwdDecl)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2850, file: !163, line: 749, baseType: !3120, size: 64, offset: 4736)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !163, line: 428, size: 128, elements: !3122)
!3122 = !{!3123, !3124, !3125}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3121, file: !163, line: 433, baseType: !7, size: 32)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3121, file: !163, line: 434, baseType: !7, size: 32, offset: 32)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3121, file: !163, line: 435, baseType: !51, size: 64, offset: 64)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2850, file: !163, line: 751, baseType: !109, size: 128, offset: 4800)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2850, file: !163, line: 762, baseType: !3128, size: 64, offset: 4928)
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !163, line: 762, flags: DIFlagFwdDecl)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2850, file: !163, line: 770, baseType: !3131, offset: 4992)
!3131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3132, line: 5, elements: !718)
!3132 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2850, file: !163, line: 772, baseType: !3134, size: 64, offset: 4992)
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3135 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3136, line: 18, flags: DIFlagFwdDecl)
!3136 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2850, file: !163, line: 773, baseType: !3138, size: 64, offset: 5056)
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2915, line: 22, flags: DIFlagFwdDecl)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2850, file: !163, line: 776, baseType: !34, size: 32, offset: 5120)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2850, file: !163, line: 778, baseType: !1343, size: 32, offset: 5152)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2850, file: !163, line: 779, baseType: !393, size: 32, offset: 5184)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2850, file: !163, line: 781, baseType: !71, size: 32, offset: 5216)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2850, file: !163, line: 782, baseType: !109, size: 128, offset: 5248)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2850, file: !163, line: 784, baseType: !3146, size: 64, offset: 5376)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3148)
!3148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3149, line: 52, size: 768, elements: !3150)
!3149 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3150 = !{!3151, !3152, !3153, !3154, !3155, !3159, !3163, !3164, !3165, !3166, !3170, !3174}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3148, file: !3149, line: 53, baseType: !28, size: 64)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3148, file: !3149, line: 55, baseType: !1596, size: 64, offset: 64)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3148, file: !3149, line: 56, baseType: !1596, size: 64, offset: 128)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3148, file: !3149, line: 58, baseType: !2866, size: 64, offset: 192)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3148, file: !3149, line: 59, baseType: !3156, size: 64, offset: 256)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{!989, !2869, !2875}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3148, file: !3149, line: 61, baseType: !3160, size: 64, offset: 320)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = !DISubroutineType(types: !3162)
!3162 = !{null, !3146}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3148, file: !3149, line: 62, baseType: !2877, size: 64, offset: 384)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3148, file: !3149, line: 64, baseType: !2886, size: 64, offset: 448)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3148, file: !3149, line: 66, baseType: !2126, size: 64, offset: 512)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3148, file: !3149, line: 67, baseType: !3167, size: 64, offset: 576)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{!2143, !2869}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3148, file: !3149, line: 69, baseType: !3171, size: 64, offset: 640)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = !DISubroutineType(types: !3173)
!3173 = !{null, !2869, !1092, !1093}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3148, file: !3149, line: 71, baseType: !2881, size: 64, offset: 704)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2850, file: !163, line: 785, baseType: !1596, size: 64, offset: 5440)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2850, file: !163, line: 787, baseType: !2877, size: 64, offset: 5504)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2850, file: !163, line: 788, baseType: !3178, size: 64, offset: 5568)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !163, line: 46, flags: DIFlagFwdDecl)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2850, file: !163, line: 789, baseType: !3181, size: 64, offset: 5632)
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !163, line: 48, flags: DIFlagFwdDecl)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2850, file: !163, line: 791, baseType: !3184, size: 64, offset: 5696)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !163, line: 597, size: 128, elements: !3186)
!3186 = !{!3187, !3188, !3189, !3190, !3191}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3185, file: !163, line: 598, baseType: !190, size: 32)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3185, file: !163, line: 599, baseType: !199, size: 32, offset: 32)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3185, file: !163, line: 600, baseType: !204, size: 32, offset: 64)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3185, file: !163, line: 601, baseType: !901, size: 8, offset: 96)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3185, file: !163, line: 602, baseType: !901, size: 8, offset: 104)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2850, file: !163, line: 793, baseType: !209, size: 32, offset: 5760)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2850, file: !163, line: 795, baseType: !901, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2850, file: !163, line: 796, baseType: !901, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2850, file: !163, line: 797, baseType: !901, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2850, file: !163, line: 798, baseType: !901, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2850, file: !163, line: 799, baseType: !901, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2844, file: !216, line: 307, baseType: !2849, size: 64, offset: 256)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "attr_groups", scope: !2844, file: !216, line: 308, baseType: !1596, size: 64, offset: 320)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "attr_update", scope: !2844, file: !216, line: 309, baseType: !1596, size: 64, offset: 384)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2844, file: !216, line: 310, baseType: !28, size: 64, offset: 448)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2844, file: !216, line: 311, baseType: !34, size: 32, offset: 512)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !2844, file: !216, line: 316, baseType: !34, size: 32, offset: 544)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable_count", scope: !2844, file: !216, line: 318, baseType: !2455, size: 64, offset: 576)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_pmu_context", scope: !2844, file: !216, line: 319, baseType: !3206, size: 64, offset: 640)
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cpu_pmu_context", file: !216, line: 977, size: 1856, elements: !3208)
!3208 = !{!3209, !3261, !3263, !3264, !3265, !3266, !3267, !3268, !3269, !3270}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "epc", scope: !3207, file: !216, line: 978, baseType: !3210, size: 896)
!3210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_pmu_context", file: !216, line: 873, size: 896, elements: !3211)
!3211 = !{!3212, !3213, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !3210, file: !216, line: 874, baseType: !2843, size: 64)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3210, file: !216, line: 875, baseType: !3214, size: 64, offset: 64)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !216, line: 912, size: 1792, elements: !3216)
!3216 = !{!3217, !3218, !3219, !3220, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3215, file: !216, line: 917, baseType: !540, size: 32)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3215, file: !216, line: 923, baseType: !753, size: 256, offset: 64)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_list", scope: !3215, file: !216, line: 925, baseType: !109, size: 128, offset: 320)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_groups", scope: !3215, file: !216, line: 926, baseType: !3221, size: 128, offset: 448)
!3221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_groups", file: !216, line: 901, size: 128, elements: !3222)
!3222 = !{!3223, !3224}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !3221, file: !216, line: 902, baseType: !583, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3221, file: !216, line: 903, baseType: !339, size: 64, offset: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_groups", scope: !3215, file: !216, line: 927, baseType: !3221, size: 128, offset: 576)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !3215, file: !216, line: 928, baseType: !109, size: 128, offset: 704)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3215, file: !216, line: 930, baseType: !34, size: 32, offset: 832)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "nr_user", scope: !3215, file: !216, line: 931, baseType: !34, size: 32, offset: 864)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "is_active", scope: !3215, file: !216, line: 932, baseType: !34, size: 32, offset: 896)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "nr_task_data", scope: !3215, file: !216, line: 934, baseType: !34, size: 32, offset: 928)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "nr_stat", scope: !3215, file: !216, line: 935, baseType: !34, size: 32, offset: 960)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "nr_freq", scope: !3215, file: !216, line: 936, baseType: !34, size: 32, offset: 992)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_disable", scope: !3215, file: !216, line: 937, baseType: !34, size: 32, offset: 1024)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3215, file: !216, line: 939, baseType: !399, size: 32, offset: 1056)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3215, file: !216, line: 940, baseType: !382, size: 64, offset: 1088)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3215, file: !216, line: 945, baseType: !339, size: 64, offset: 1152)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3215, file: !216, line: 946, baseType: !339, size: 64, offset: 1216)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !3215, file: !216, line: 947, baseType: !339, size: 64, offset: 1280)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ctx", scope: !3215, file: !216, line: 953, baseType: !3214, size: 64, offset: 1344)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "parent_gen", scope: !3215, file: !216, line: 954, baseType: !339, size: 64, offset: 1408)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !3215, file: !216, line: 955, baseType: !339, size: 64, offset: 1472)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "pin_count", scope: !3215, file: !216, line: 956, baseType: !34, size: 32, offset: 1536)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3215, file: !216, line: 958, baseType: !34, size: 32, offset: 1568)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3215, file: !216, line: 960, baseType: !733, size: 128, align: 64, offset: 1600)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pending", scope: !3215, file: !216, line: 968, baseType: !3246, size: 64, offset: 1728)
!3246 = !DIDerivedType(tag: DW_TAG_typedef, name: "local_t", file: !3247, line: 12, baseType: !3248)
!3247 = !DIFile(filename: "./arch/x86/include/asm/local.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1295a17343a8a36946da0822a5548474")
!3248 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3247, line: 10, size: 64, elements: !3249)
!3249 = !{!3250}
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3248, file: !3247, line: 11, baseType: !746, size: 64)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_entry", scope: !3210, file: !216, line: 877, baseType: !109, size: 128, offset: 128)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_active", scope: !3210, file: !216, line: 879, baseType: !109, size: 128, offset: 256)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_active", scope: !3210, file: !216, line: 880, baseType: !109, size: 128, offset: 384)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "embedded", scope: !3210, file: !216, line: 883, baseType: !7, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3210, file: !216, line: 885, baseType: !7, size: 32, offset: 544)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3210, file: !216, line: 886, baseType: !7, size: 32, offset: 576)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3210, file: !216, line: 888, baseType: !61, size: 32, offset: 608)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3210, file: !216, line: 889, baseType: !733, size: 128, align: 64, offset: 640)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_data", scope: !3210, file: !216, line: 891, baseType: !32, size: 64, offset: 768)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_necessary", scope: !3210, file: !216, line: 898, baseType: !34, size: 32, offset: 832)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "task_epc", scope: !3207, file: !216, line: 979, baseType: !3262, size: 64, offset: 896)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_entry", scope: !3207, file: !216, line: 981, baseType: !109, size: 128, offset: 960)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_usage", scope: !3207, file: !216, line: 982, baseType: !34, size: 32, offset: 1088)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "active_oncpu", scope: !3207, file: !216, line: 984, baseType: !34, size: 32, offset: 1120)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3207, file: !216, line: 985, baseType: !34, size: 32, offset: 1152)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_lock", scope: !3207, file: !216, line: 987, baseType: !540, size: 32, offset: 1184)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3207, file: !216, line: 988, baseType: !515, size: 512, offset: 1216)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval", scope: !3207, file: !216, line: 989, baseType: !523, size: 64, offset: 1728)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_active", scope: !3207, file: !216, line: 990, baseType: !7, size: 32, offset: 1792)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive_cnt", scope: !2844, file: !216, line: 320, baseType: !61, size: 32, offset: 704)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_nr", scope: !2844, file: !216, line: 321, baseType: !34, size: 32, offset: 736)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval_ms", scope: !2844, file: !216, line: 322, baseType: !34, size: 32, offset: 768)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "nr_addr_filters", scope: !2844, file: !216, line: 325, baseType: !7, size: 32, offset: 800)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_enable", scope: !2844, file: !216, line: 331, baseType: !3276, size: 64, offset: 832)
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3277, size: 64)
!3277 = !DISubroutineType(types: !3278)
!3278 = !{null, !2843}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable", scope: !2844, file: !216, line: 332, baseType: !3276, size: 64, offset: 896)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "event_init", scope: !2844, file: !216, line: 350, baseType: !3281, size: 64, offset: 960)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{!34, !2826}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "event_mapped", scope: !2844, file: !216, line: 356, baseType: !3285, size: 64, offset: 1024)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{null, !2826, !697}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "event_unmapped", scope: !2844, file: !216, line: 357, baseType: !3285, size: 64, offset: 1088)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !2844, file: !216, line: 385, baseType: !3290, size: 64, offset: 1152)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{!34, !2826, !34}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "del", scope: !2844, file: !216, line: 386, baseType: !3294, size: 64, offset: 1216)
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3295, size: 64)
!3295 = !DISubroutineType(types: !3296)
!3296 = !{null, !2826, !34}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2844, file: !216, line: 406, baseType: !3294, size: 64, offset: 1280)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2844, file: !216, line: 407, baseType: !3294, size: 64, offset: 1344)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2844, file: !216, line: 415, baseType: !3300, size: 64, offset: 1408)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = !DISubroutineType(types: !3302)
!3302 = !{null, !2826}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "start_txn", scope: !2844, file: !216, line: 427, baseType: !3304, size: 64, offset: 1472)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = !DISubroutineType(types: !3306)
!3306 = !{null, !2843, !7}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "commit_txn", scope: !2844, file: !216, line: 436, baseType: !3308, size: 64, offset: 1536)
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = !DISubroutineType(types: !3310)
!3310 = !{!34, !2843}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_txn", scope: !2844, file: !216, line: 443, baseType: !3276, size: 64, offset: 1600)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "event_idx", scope: !2844, file: !216, line: 450, baseType: !3281, size: 64, offset: 1664)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task", scope: !2844, file: !216, line: 455, baseType: !3314, size: 64, offset: 1728)
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3315 = !DISubroutineType(types: !3316)
!3316 = !{null, !3262, !901}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_cache", scope: !2844, file: !216, line: 461, baseType: !834, size: 64, offset: 1792)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "swap_task_ctx", scope: !2844, file: !216, line: 469, baseType: !3319, size: 64, offset: 1856)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{null, !3262, !3262}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "setup_aux", scope: !2844, file: !216, line: 476, baseType: !3323, size: 64, offset: 1920)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = !DISubroutineType(types: !3325)
!3325 = !{!32, !2826, !2015, !34, !901}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "free_aux", scope: !2844, file: !216, line: 483, baseType: !1300, size: 64, offset: 1984)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot_aux", scope: !2844, file: !216, line: 494, baseType: !3328, size: 64, offset: 2048)
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3329 = !DISubroutineType(types: !3330)
!3330 = !{!1126, !2826, !3331, !51}
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_output_handle", file: !216, line: 1014, size: 448, elements: !3333)
!3333 = !{!3334, !3335, !3338, !3339, !3340, !3341, !3346}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3332, file: !216, line: 1015, baseType: !2826, size: 64)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3332, file: !216, line: 1016, baseType: !3336, size: 64, offset: 64)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3337 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_buffer", file: !216, line: 641, flags: DIFlagFwdDecl)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3332, file: !216, line: 1017, baseType: !51, size: 64, offset: 128)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3332, file: !216, line: 1018, baseType: !51, size: 64, offset: 192)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "aux_flags", scope: !3332, file: !216, line: 1019, baseType: !339, size: 64, offset: 256)
!3341 = !DIDerivedType(tag: DW_TAG_member, scope: !3332, file: !216, line: 1020, baseType: !3342, size: 64, offset: 320)
!3342 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3332, file: !216, line: 1020, size: 64, elements: !3343)
!3343 = !{!3344, !3345}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3342, file: !216, line: 1021, baseType: !32, size: 64)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3342, file: !216, line: 1022, baseType: !51, size: 64)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3332, file: !216, line: 1024, baseType: !34, size: 32, offset: 384)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_validate", scope: !2844, file: !216, line: 506, baseType: !3348, size: 64, offset: 2112)
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = !DISubroutineType(types: !3350)
!3350 = !{!34, !112}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_sync", scope: !2844, file: !216, line: 520, baseType: !3300, size: 64, offset: 2176)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output_match", scope: !2844, file: !216, line: 530, baseType: !3281, size: 64, offset: 2240)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2844, file: !216, line: 537, baseType: !3354, size: 64, offset: 2304)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{!901, !2843, !34}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "check_period", scope: !2844, file: !216, line: 542, baseType: !3358, size: 64, offset: 2368)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!34, !2826, !339}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_private", scope: !2827, file: !216, line: 715, baseType: !32, size: 64, offset: 1280)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2827, file: !216, line: 717, baseType: !215, size: 32, offset: 1344)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "attach_state", scope: !2827, file: !216, line: 718, baseType: !7, size: 32, offset: 1376)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2827, file: !216, line: 719, baseType: !3365, size: 64, offset: 1408)
!3365 = !DIDerivedType(tag: DW_TAG_typedef, name: "local64_t", file: !3366, line: 26, baseType: !3367)
!3366 = !DIFile(filename: "./include/asm-generic/local64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df4d146c32c49eaacbf0050bc72e4892")
!3367 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3366, line: 24, size: 64, elements: !3368)
!3368 = !{!3369}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3367, file: !3366, line: 25, baseType: !3246, size: 64)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2827, file: !216, line: 720, baseType: !748, size: 64, offset: 1472)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_enabled", scope: !2827, file: !216, line: 728, baseType: !339, size: 64, offset: 1536)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_running", scope: !2827, file: !216, line: 729, baseType: !339, size: 64, offset: 1600)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !2827, file: !216, line: 730, baseType: !339, size: 64, offset: 1664)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2827, file: !216, line: 732, baseType: !3375, size: 1088, offset: 1728)
!3375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_attr", file: !3376, line: 385, size: 1088, elements: !3377)
!3376 = !DIFile(filename: "./include/uapi/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bcad89ece8f79f502358c5429db5ebf0")
!3377 = !{!3378, !3379, !3380, !3381, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3431, !3432, !3439, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3375, file: !3376, line: 390, baseType: !394, size: 32)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3375, file: !3376, line: 395, baseType: !394, size: 32, offset: 32)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3375, file: !3376, line: 400, baseType: !340, size: 64, offset: 64)
!3381 = !DIDerivedType(tag: DW_TAG_member, scope: !3375, file: !3376, line: 402, baseType: !3382, size: 64, offset: 128)
!3382 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3375, file: !3376, line: 402, size: 64, elements: !3383)
!3383 = !{!3384, !3385}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3382, file: !3376, line: 403, baseType: !340, size: 64)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "sample_freq", scope: !3382, file: !3376, line: 404, baseType: !340, size: 64)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "sample_type", scope: !3375, file: !3376, line: 407, baseType: !340, size: 64, offset: 192)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "read_format", scope: !3375, file: !3376, line: 408, baseType: !340, size: 64, offset: 256)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !3375, file: !3376, line: 410, baseType: !340, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "inherit", scope: !3375, file: !3376, line: 411, baseType: !340, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "pinned", scope: !3375, file: !3376, line: 412, baseType: !340, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3375, file: !3376, line: 413, baseType: !340, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_user", scope: !3375, file: !3376, line: 414, baseType: !340, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_kernel", scope: !3375, file: !3376, line: 415, baseType: !340, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_hv", scope: !3375, file: !3376, line: 416, baseType: !340, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_idle", scope: !3375, file: !3376, line: 417, baseType: !340, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3375, file: !3376, line: 418, baseType: !340, size: 1, offset: 328, flags: DIFlagBitField, extraData: i64 320)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3375, file: !3376, line: 419, baseType: !340, size: 1, offset: 329, flags: DIFlagBitField, extraData: i64 320)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !3375, file: !3376, line: 420, baseType: !340, size: 1, offset: 330, flags: DIFlagBitField, extraData: i64 320)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_stat", scope: !3375, file: !3376, line: 421, baseType: !340, size: 1, offset: 331, flags: DIFlagBitField, extraData: i64 320)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "enable_on_exec", scope: !3375, file: !3376, line: 422, baseType: !340, size: 1, offset: 332, flags: DIFlagBitField, extraData: i64 320)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3375, file: !3376, line: 423, baseType: !340, size: 1, offset: 333, flags: DIFlagBitField, extraData: i64 320)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !3375, file: !3376, line: 424, baseType: !340, size: 1, offset: 334, flags: DIFlagBitField, extraData: i64 320)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "precise_ip", scope: !3375, file: !3376, line: 435, baseType: !340, size: 2, offset: 335, flags: DIFlagBitField, extraData: i64 320)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_data", scope: !3375, file: !3376, line: 436, baseType: !340, size: 1, offset: 337, flags: DIFlagBitField, extraData: i64 320)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "sample_id_all", scope: !3375, file: !3376, line: 437, baseType: !340, size: 1, offset: 338, flags: DIFlagBitField, extraData: i64 320)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_host", scope: !3375, file: !3376, line: 439, baseType: !340, size: 1, offset: 339, flags: DIFlagBitField, extraData: i64 320)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_guest", scope: !3375, file: !3376, line: 440, baseType: !340, size: 1, offset: 340, flags: DIFlagBitField, extraData: i64 320)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_kernel", scope: !3375, file: !3376, line: 442, baseType: !340, size: 1, offset: 341, flags: DIFlagBitField, extraData: i64 320)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_user", scope: !3375, file: !3376, line: 443, baseType: !340, size: 1, offset: 342, flags: DIFlagBitField, extraData: i64 320)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "mmap2", scope: !3375, file: !3376, line: 444, baseType: !340, size: 1, offset: 343, flags: DIFlagBitField, extraData: i64 320)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "comm_exec", scope: !3375, file: !3376, line: 445, baseType: !340, size: 1, offset: 344, flags: DIFlagBitField, extraData: i64 320)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "use_clockid", scope: !3375, file: !3376, line: 446, baseType: !340, size: 1, offset: 345, flags: DIFlagBitField, extraData: i64 320)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "context_switch", scope: !3375, file: !3376, line: 447, baseType: !340, size: 1, offset: 346, flags: DIFlagBitField, extraData: i64 320)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "write_backward", scope: !3375, file: !3376, line: 448, baseType: !340, size: 1, offset: 347, flags: DIFlagBitField, extraData: i64 320)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !3375, file: !3376, line: 449, baseType: !340, size: 1, offset: 348, flags: DIFlagBitField, extraData: i64 320)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "ksymbol", scope: !3375, file: !3376, line: 450, baseType: !340, size: 1, offset: 349, flags: DIFlagBitField, extraData: i64 320)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "bpf_event", scope: !3375, file: !3376, line: 451, baseType: !340, size: 1, offset: 350, flags: DIFlagBitField, extraData: i64 320)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output", scope: !3375, file: !3376, line: 452, baseType: !340, size: 1, offset: 351, flags: DIFlagBitField, extraData: i64 320)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3375, file: !3376, line: 453, baseType: !340, size: 1, offset: 352, flags: DIFlagBitField, extraData: i64 320)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "text_poke", scope: !3375, file: !3376, line: 454, baseType: !340, size: 1, offset: 353, flags: DIFlagBitField, extraData: i64 320)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "build_id", scope: !3375, file: !3376, line: 455, baseType: !340, size: 1, offset: 354, flags: DIFlagBitField, extraData: i64 320)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_thread", scope: !3375, file: !3376, line: 456, baseType: !340, size: 1, offset: 355, flags: DIFlagBitField, extraData: i64 320)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "remove_on_exec", scope: !3375, file: !3376, line: 457, baseType: !340, size: 1, offset: 356, flags: DIFlagBitField, extraData: i64 320)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "sigtrap", scope: !3375, file: !3376, line: 458, baseType: !340, size: 1, offset: 357, flags: DIFlagBitField, extraData: i64 320)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_1", scope: !3375, file: !3376, line: 459, baseType: !340, size: 26, offset: 358, flags: DIFlagBitField, extraData: i64 320)
!3426 = !DIDerivedType(tag: DW_TAG_member, scope: !3375, file: !3376, line: 461, baseType: !3427, size: 32, offset: 384)
!3427 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3375, file: !3376, line: 461, size: 32, elements: !3428)
!3428 = !{!3429, !3430}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_events", scope: !3427, file: !3376, line: 462, baseType: !394, size: 32)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_watermark", scope: !3427, file: !3376, line: 463, baseType: !394, size: 32)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "bp_type", scope: !3375, file: !3376, line: 466, baseType: !394, size: 32, offset: 416)
!3432 = !DIDerivedType(tag: DW_TAG_member, scope: !3375, file: !3376, line: 467, baseType: !3433, size: 64, offset: 448)
!3433 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3375, file: !3376, line: 467, size: 64, elements: !3434)
!3434 = !{!3435, !3436, !3437, !3438}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "bp_addr", scope: !3433, file: !3376, line: 468, baseType: !340, size: 64)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_func", scope: !3433, file: !3376, line: 469, baseType: !340, size: 64)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe_path", scope: !3433, file: !3376, line: 470, baseType: !340, size: 64)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "config1", scope: !3433, file: !3376, line: 471, baseType: !340, size: 64)
!3439 = !DIDerivedType(tag: DW_TAG_member, scope: !3375, file: !3376, line: 473, baseType: !3440, size: 64, offset: 512)
!3440 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3375, file: !3376, line: 473, size: 64, elements: !3441)
!3441 = !{!3442, !3443, !3444, !3445}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "bp_len", scope: !3440, file: !3376, line: 474, baseType: !340, size: 64)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_addr", scope: !3440, file: !3376, line: 475, baseType: !340, size: 64)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "probe_offset", scope: !3440, file: !3376, line: 476, baseType: !340, size: 64)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "config2", scope: !3440, file: !3376, line: 477, baseType: !340, size: 64)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "branch_sample_type", scope: !3375, file: !3376, line: 479, baseType: !340, size: 64, offset: 576)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_user", scope: !3375, file: !3376, line: 485, baseType: !340, size: 64, offset: 640)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "sample_stack_user", scope: !3375, file: !3376, line: 490, baseType: !394, size: 32, offset: 704)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3375, file: !3376, line: 492, baseType: !914, size: 32, offset: 736)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_intr", scope: !3375, file: !3376, line: 501, baseType: !340, size: 64, offset: 768)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "aux_watermark", scope: !3375, file: !3376, line: 506, baseType: !394, size: 32, offset: 832)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "sample_max_stack", scope: !3375, file: !3376, line: 507, baseType: !106, size: 16, offset: 864)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_2", scope: !3375, file: !3376, line: 508, baseType: !106, size: 16, offset: 880)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "aux_sample_size", scope: !3375, file: !3376, line: 509, baseType: !394, size: 32, offset: 896)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_3", scope: !3375, file: !3376, line: 510, baseType: !394, size: 32, offset: 928)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "sig_data", scope: !3375, file: !3376, line: 518, baseType: !340, size: 64, offset: 960)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "config3", scope: !3375, file: !3376, line: 520, baseType: !340, size: 64, offset: 1024)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !2827, file: !216, line: 733, baseType: !105, size: 16, offset: 2816)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "id_header_size", scope: !2827, file: !216, line: 734, baseType: !105, size: 16, offset: 2832)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "read_size", scope: !2827, file: !216, line: 735, baseType: !105, size: 16, offset: 2848)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !2827, file: !216, line: 736, baseType: !3462, size: 1536, offset: 2880)
!3462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event", file: !216, line: 155, size: 1536, elements: !3463)
!3463 = !{!3464, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3548, !3549, !3550, !3551}
!3464 = !DIDerivedType(tag: DW_TAG_member, scope: !3462, file: !216, line: 157, baseType: !3465, size: 768)
!3465 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3462, file: !216, line: 157, size: 768, elements: !3466)
!3466 = !{!3467, !3486, !3490, !3494, !3499, !3521}
!3467 = !DIDerivedType(tag: DW_TAG_member, scope: !3465, file: !216, line: 158, baseType: !3468, size: 768)
!3468 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3465, file: !216, line: 158, size: 768, elements: !3469)
!3469 = !{!3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3485}
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3468, file: !216, line: 159, baseType: !339, size: 64)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "last_tag", scope: !3468, file: !216, line: 160, baseType: !339, size: 64, offset: 64)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "config_base", scope: !3468, file: !216, line: 161, baseType: !51, size: 64, offset: 128)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !3468, file: !216, line: 162, baseType: !51, size: 64, offset: 192)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "event_base_rdpmc", scope: !3468, file: !216, line: 163, baseType: !34, size: 32, offset: 256)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3468, file: !216, line: 164, baseType: !34, size: 32, offset: 288)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3468, file: !216, line: 165, baseType: !34, size: 32, offset: 320)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3468, file: !216, line: 166, baseType: !34, size: 32, offset: 352)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "extra_reg", scope: !3468, file: !216, line: 168, baseType: !3479, size: 192, offset: 384)
!3479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event_extra", file: !216, line: 134, size: 192, elements: !3480)
!3480 = !{!3481, !3482, !3483, !3484}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3479, file: !216, line: 135, baseType: !339, size: 64)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !3479, file: !216, line: 136, baseType: !7, size: 32, offset: 64)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3479, file: !216, line: 137, baseType: !34, size: 32, offset: 96)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3479, file: !216, line: 138, baseType: !34, size: 32, offset: 128)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "branch_reg", scope: !3468, file: !216, line: 169, baseType: !3479, size: 192, offset: 576)
!3486 = !DIDerivedType(tag: DW_TAG_member, scope: !3465, file: !216, line: 171, baseType: !3487, size: 512)
!3487 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3465, file: !216, line: 171, size: 512, elements: !3488)
!3488 = !{!3489}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3487, file: !216, line: 172, baseType: !515, size: 512)
!3490 = !DIDerivedType(tag: DW_TAG_member, scope: !3465, file: !216, line: 174, baseType: !3491, size: 128)
!3491 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3465, file: !216, line: 174, size: 128, elements: !3492)
!3492 = !{!3493}
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "tp_list", scope: !3491, file: !216, line: 176, baseType: !109, size: 128)
!3494 = !DIDerivedType(tag: DW_TAG_member, scope: !3465, file: !216, line: 178, baseType: !3495, size: 128)
!3495 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3465, file: !216, line: 178, size: 128, elements: !3496)
!3496 = !{!3497, !3498}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "pwr_acc", scope: !3495, file: !216, line: 179, baseType: !339, size: 64)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "ptsc", scope: !3495, file: !216, line: 180, baseType: !339, size: 64, offset: 64)
!3499 = !DIDerivedType(tag: DW_TAG_member, scope: !3465, file: !216, line: 183, baseType: !3500, size: 320)
!3500 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3465, file: !216, line: 183, size: 320, elements: !3501)
!3501 = !{!3502, !3510}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3500, file: !216, line: 189, baseType: !3503, size: 192)
!3503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_hw_breakpoint", file: !3504, line: 14, size: 192, elements: !3505)
!3504 = !DIFile(filename: "./arch/x86/include/asm/hw_breakpoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "107c509acefbbe18efeb522731cf3028")
!3505 = !{!3506, !3507, !3508, !3509}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !3503, file: !3504, line: 15, baseType: !51, size: 64)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3503, file: !3504, line: 16, baseType: !51, size: 64, offset: 64)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3503, file: !3504, line: 17, baseType: !95, size: 8, offset: 128)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3503, file: !3504, line: 18, baseType: !95, size: 8, offset: 136)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "bp_list", scope: !3500, file: !216, line: 190, baseType: !3511, size: 128, offset: 192)
!3511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhlist_head", file: !3512, line: 21, size: 128, elements: !3513)
!3512 = !DIFile(filename: "./include/linux/rhashtable-types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99b3652a01a9d39bb1c8b53f50a53014")
!3513 = !{!3514, !3519}
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "rhead", scope: !3511, file: !3512, line: 22, baseType: !3515, size: 64)
!3515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhash_head", file: !3512, line: 17, size: 64, elements: !3516)
!3516 = !{!3517}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3515, file: !3512, line: 18, baseType: !3518, size: 64)
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3515, size: 64)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3511, file: !3512, line: 23, baseType: !3520, size: 64, offset: 64)
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3511, size: 64)
!3521 = !DIDerivedType(tag: DW_TAG_member, scope: !3465, file: !216, line: 193, baseType: !3522, size: 192)
!3522 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3465, file: !216, line: 193, size: 192, elements: !3523)
!3523 = !{!3524, !3525, !3526, !3527, !3528}
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_bank", scope: !3522, file: !216, line: 194, baseType: !95, size: 8)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_cntr", scope: !3522, file: !216, line: 195, baseType: !95, size: 8, offset: 8)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3522, file: !216, line: 196, baseType: !105, size: 16, offset: 16)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !3522, file: !216, line: 197, baseType: !339, size: 64, offset: 64)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "conf1", scope: !3522, file: !216, line: 198, baseType: !339, size: 64, offset: 128)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3462, file: !216, line: 205, baseType: !382, size: 64, offset: 768)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !3462, file: !216, line: 211, baseType: !32, size: 64, offset: 832)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !3462, file: !216, line: 214, baseType: !51, size: 64, offset: 896)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3462, file: !216, line: 223, baseType: !34, size: 32, offset: 960)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "prev_count", scope: !3462, file: !216, line: 229, baseType: !3365, size: 64, offset: 1024)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3462, file: !216, line: 234, baseType: !339, size: 64, offset: 1088)
!3535 = !DIDerivedType(tag: DW_TAG_member, scope: !3462, file: !216, line: 236, baseType: !3536, size: 128, offset: 1152)
!3536 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3462, file: !216, line: 236, size: 128, elements: !3537)
!3537 = !{!3538, !3543}
!3538 = !DIDerivedType(tag: DW_TAG_member, scope: !3536, file: !216, line: 237, baseType: !3539, size: 128)
!3539 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3536, file: !216, line: 237, size: 128, elements: !3540)
!3540 = !{!3541, !3542}
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "last_period", scope: !3539, file: !216, line: 241, baseType: !339, size: 64)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "period_left", scope: !3539, file: !216, line: 249, baseType: !3365, size: 64, offset: 64)
!3543 = !DIDerivedType(tag: DW_TAG_member, scope: !3536, file: !216, line: 251, baseType: !3544, size: 128)
!3544 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3536, file: !216, line: 251, size: 128, elements: !3545)
!3545 = !{!3546, !3547}
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "saved_metric", scope: !3544, file: !216, line: 252, baseType: !339, size: 64)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "saved_slots", scope: !3544, file: !216, line: 253, baseType: !339, size: 64, offset: 64)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts_seq", scope: !3462, file: !216, line: 261, baseType: !339, size: 64, offset: 1280)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !3462, file: !216, line: 262, baseType: !339, size: 64, offset: 1344)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "freq_time_stamp", scope: !3462, file: !216, line: 268, baseType: !339, size: 64, offset: 1408)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "freq_count_stamp", scope: !3462, file: !216, line: 269, baseType: !339, size: 64, offset: 1472)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !2827, file: !216, line: 738, baseType: !3214, size: 64, offset: 4416)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx", scope: !2827, file: !216, line: 744, baseType: !3262, size: 64, offset: 4480)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2827, file: !216, line: 745, baseType: !746, size: 64, offset: 4544)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_enabled", scope: !2827, file: !216, line: 751, baseType: !748, size: 64, offset: 4608)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_running", scope: !2827, file: !216, line: 752, baseType: !748, size: 64, offset: 4672)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "child_mutex", scope: !2827, file: !216, line: 757, baseType: !753, size: 256, offset: 4736)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "child_list", scope: !2827, file: !216, line: 758, baseType: !109, size: 128, offset: 4992)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2827, file: !216, line: 759, baseType: !2826, size: 64, offset: 5120)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "oncpu", scope: !2827, file: !216, line: 761, baseType: !34, size: 32, offset: 5184)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2827, file: !216, line: 762, baseType: !34, size: 32, offset: 5216)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "owner_entry", scope: !2827, file: !216, line: 764, baseType: !109, size: 128, offset: 5248)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2827, file: !216, line: 765, baseType: !382, size: 64, offset: 5376)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_mutex", scope: !2827, file: !216, line: 768, baseType: !753, size: 256, offset: 5440)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_count", scope: !2827, file: !216, line: 769, baseType: !61, size: 32, offset: 5696)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2827, file: !216, line: 771, baseType: !3336, size: 64, offset: 5760)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "rb_entry", scope: !2827, file: !216, line: 772, baseType: !109, size: 128, offset: 5824)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_batches", scope: !2827, file: !216, line: 773, baseType: !51, size: 64, offset: 5952)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_pending", scope: !2827, file: !216, line: 774, baseType: !34, size: 32, offset: 6016)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !2827, file: !216, line: 777, baseType: !66, size: 192, offset: 6080)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2827, file: !216, line: 778, baseType: !3572, size: 64, offset: 6272)
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64)
!3573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !14, line: 1083, size: 384, elements: !3574)
!3574 = !{!3575, !3576, !3577, !3578, !3579, !3580}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3573, file: !14, line: 1084, baseType: !770, size: 64)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3573, file: !14, line: 1085, baseType: !34, size: 32, offset: 64)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3573, file: !14, line: 1086, baseType: !34, size: 32, offset: 96)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3573, file: !14, line: 1087, baseType: !3572, size: 64, offset: 128)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3573, file: !14, line: 1088, baseType: !725, size: 64, offset: 192)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3573, file: !14, line: 1089, baseType: !733, size: 128, align: 64, offset: 256)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "pending_wakeup", scope: !2827, file: !216, line: 781, baseType: !7, size: 32, offset: 6336)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "pending_kill", scope: !2827, file: !216, line: 782, baseType: !7, size: 32, offset: 6368)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "pending_disable", scope: !2827, file: !216, line: 783, baseType: !7, size: 32, offset: 6400)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "pending_sigtrap", scope: !2827, file: !216, line: 784, baseType: !7, size: 32, offset: 6432)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "pending_addr", scope: !2827, file: !216, line: 785, baseType: !51, size: 64, offset: 6464)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "pending_irq", scope: !2827, file: !216, line: 786, baseType: !3587, size: 256, offset: 6528)
!3587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !3588, line: 17, size: 256, elements: !3589)
!3588 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!3589 = !{!3590, !3591, !3596}
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3587, file: !3588, line: 18, baseType: !408, size: 128)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3587, file: !3588, line: 19, baseType: !3592, size: 64, offset: 128)
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3593 = !DISubroutineType(types: !3594)
!3594 = !{null, !3595}
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3587, size: 64)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !3587, file: !3588, line: 20, baseType: !3597, size: 64, offset: 192)
!3597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3598, line: 16, size: 64, elements: !3599)
!3598 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3599 = !{!3600}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3597, file: !3598, line: 17, baseType: !382, size: 64)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "pending_task", scope: !2827, file: !216, line: 787, baseType: !733, size: 128, align: 64, offset: 6784)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work", scope: !2827, file: !216, line: 788, baseType: !7, size: 32, offset: 6912)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work_wait", scope: !2827, file: !216, line: 789, baseType: !3597, size: 64, offset: 6976)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "event_limit", scope: !2827, file: !216, line: 791, baseType: !61, size: 32, offset: 7040)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !2827, file: !216, line: 794, baseType: !3606, size: 192, offset: 7104)
!3606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filters_head", file: !216, line: 579, size: 192, elements: !3607)
!3607 = !{!3608, !3609, !3610}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3606, file: !216, line: 580, baseType: !109, size: 128)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3606, file: !216, line: 581, baseType: !540, size: 32, offset: 128)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "nr_file_filters", scope: !3606, file: !216, line: 582, baseType: !7, size: 32, offset: 160)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filter_ranges", scope: !2827, file: !216, line: 796, baseType: !3612, size: 64, offset: 7296)
!3612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3613, size: 64)
!3613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filter_range", file: !216, line: 585, size: 128, elements: !3614)
!3614 = !{!3615, !3616}
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3613, file: !216, line: 586, baseType: !51, size: 64)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3613, file: !216, line: 587, baseType: !51, size: 64, offset: 64)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !2827, file: !216, line: 797, baseType: !51, size: 64, offset: 7360)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "aux_event", scope: !2827, file: !216, line: 800, baseType: !2826, size: 64, offset: 7424)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !2827, file: !216, line: 802, baseType: !3300, size: 64, offset: 7488)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2827, file: !216, line: 803, baseType: !733, size: 128, align: 64, offset: 7552)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2827, file: !216, line: 805, baseType: !812, size: 64, offset: 7680)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2827, file: !216, line: 806, baseType: !339, size: 64, offset: 7744)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "lost_samples", scope: !2827, file: !216, line: 808, baseType: !748, size: 64, offset: 7808)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !2827, file: !216, line: 810, baseType: !3625, size: 64, offset: 7872)
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3626 = !DISubroutineType(types: !3627)
!3627 = !{!339}
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler", scope: !2827, file: !216, line: 811, baseType: !3629, size: 64, offset: 7936)
!3629 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_overflow_handler_t", file: !216, line: 605, baseType: !3630)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = !DISubroutineType(types: !3632)
!3632 = !{null, !2826, !3633, !3738}
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_sample_data", file: !216, line: 1148, size: 2048, align: 512, elements: !3635)
!3635 = !{!3636, !3637, !3638, !3639, !3640, !3645, !3646, !3647, !3652, !3653, !3660, !3681, !3703, !3713, !3731, !3732, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "sample_flags", scope: !3634, file: !216, line: 1153, baseType: !339, size: 64)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3634, file: !216, line: 1154, baseType: !339, size: 64, offset: 64)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_size", scope: !3634, file: !216, line: 1155, baseType: !339, size: 64, offset: 128)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3634, file: !216, line: 1161, baseType: !339, size: 64, offset: 192)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "tid_entry", scope: !3634, file: !216, line: 1165, baseType: !3641, size: 64, offset: 256)
!3641 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3634, file: !216, line: 1162, size: 64, elements: !3642)
!3642 = !{!3643, !3644}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3641, file: !216, line: 1163, baseType: !393, size: 32)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !3641, file: !216, line: 1164, baseType: !393, size: 32, offset: 32)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3634, file: !216, line: 1166, baseType: !339, size: 64, offset: 320)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3634, file: !216, line: 1167, baseType: !339, size: 64, offset: 384)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_entry", scope: !3634, file: !216, line: 1171, baseType: !3648, size: 64, offset: 448)
!3648 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3634, file: !216, line: 1168, size: 64, elements: !3649)
!3649 = !{!3650, !3651}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3648, file: !216, line: 1169, baseType: !393, size: 32)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3648, file: !216, line: 1170, baseType: !393, size: 32, offset: 32)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3634, file: !216, line: 1177, baseType: !339, size: 64, offset: 512)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "callchain", scope: !3634, file: !216, line: 1178, baseType: !3654, size: 64, offset: 576)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_callchain_entry", file: !216, line: 67, size: 64, elements: !3656)
!3656 = !{!3657, !3658}
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3655, file: !216, line: 68, baseType: !340, size: 64)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3655, file: !216, line: 69, baseType: !3659, offset: 64)
!3659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, elements: !361)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !3634, file: !216, line: 1179, baseType: !3661, size: 64, offset: 640)
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_record", file: !216, line: 93, size: 256, elements: !3663)
!3663 = !{!3664, !3680}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "frag", scope: !3662, file: !216, line: 94, baseType: !3665, size: 224)
!3665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_frag", file: !216, line: 83, size: 224, elements: !3666)
!3666 = !{!3667, !3673, !3678, !3679}
!3667 = !DIDerivedType(tag: DW_TAG_member, scope: !3665, file: !216, line: 84, baseType: !3668, size: 64)
!3668 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3665, file: !216, line: 84, size: 64, elements: !3669)
!3669 = !{!3670, !3672}
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3668, file: !216, line: 85, baseType: !3671, size: 64)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !3668, file: !216, line: 86, baseType: !51, size: 64)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !3665, file: !216, line: 88, baseType: !3674, size: 64, offset: 64)
!3674 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_copy_f", file: !216, line: 80, baseType: !3675)
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = !DISubroutineType(types: !3677)
!3677 = !{!51, !32, !2143, !51, !51}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3665, file: !216, line: 89, baseType: !32, size: 64, offset: 128)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3665, file: !216, line: 90, baseType: !393, size: 32, offset: 192)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3662, file: !216, line: 95, baseType: !393, size: 32, offset: 224)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "br_stack", scope: !3634, file: !216, line: 1180, baseType: !3682, size: 64, offset: 704)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_stack", file: !216, line: 123, size: 128, elements: !3684)
!3684 = !{!3685, !3686, !3687}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3683, file: !216, line: 124, baseType: !340, size: 64)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "hw_idx", scope: !3683, file: !216, line: 125, baseType: !340, size: 64, offset: 64)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !3683, file: !216, line: 126, baseType: !3688, offset: 128)
!3688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3689, elements: !361)
!3689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_entry", file: !3376, line: 1415, size: 192, elements: !3690)
!3690 = !{!3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !3689, file: !3376, line: 1416, baseType: !340, size: 64)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !3689, file: !3376, line: 1417, baseType: !340, size: 64, offset: 64)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "mispred", scope: !3689, file: !3376, line: 1418, baseType: !340, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "predicted", scope: !3689, file: !3376, line: 1419, baseType: !340, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "in_tx", scope: !3689, file: !3376, line: 1420, baseType: !340, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !3689, file: !3376, line: 1421, baseType: !340, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "cycles", scope: !3689, file: !3376, line: 1422, baseType: !340, size: 16, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3689, file: !3376, line: 1423, baseType: !340, size: 4, offset: 148, flags: DIFlagBitField, extraData: i64 128)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !3689, file: !3376, line: 1424, baseType: !340, size: 2, offset: 152, flags: DIFlagBitField, extraData: i64 128)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "new_type", scope: !3689, file: !3376, line: 1425, baseType: !340, size: 4, offset: 154, flags: DIFlagBitField, extraData: i64 128)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3689, file: !3376, line: 1426, baseType: !340, size: 3, offset: 158, flags: DIFlagBitField, extraData: i64 128)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3689, file: !3376, line: 1427, baseType: !340, size: 31, offset: 161, flags: DIFlagBitField, extraData: i64 128)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3634, file: !216, line: 1181, baseType: !3704, size: 64, offset: 768)
!3704 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_sample_weight", file: !3376, line: 1430, size: 64, elements: !3705)
!3705 = !{!3706, !3707}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !3704, file: !3376, line: 1431, baseType: !340, size: 64)
!3707 = !DIDerivedType(tag: DW_TAG_member, scope: !3704, file: !3376, line: 1433, baseType: !3708, size: 64)
!3708 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3704, file: !3376, line: 1433, size: 64, elements: !3709)
!3709 = !{!3710, !3711, !3712}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "var1_dw", scope: !3708, file: !3376, line: 1434, baseType: !394, size: 32)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "var2_w", scope: !3708, file: !3376, line: 1435, baseType: !106, size: 16, offset: 32)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "var3_w", scope: !3708, file: !3376, line: 1436, baseType: !106, size: 16, offset: 48)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "data_src", scope: !3634, file: !216, line: 1182, baseType: !3714, size: 64, offset: 832)
!3714 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_mem_data_src", file: !3376, line: 1267, size: 64, elements: !3715)
!3715 = !{!3716, !3717}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3714, file: !3376, line: 1268, baseType: !340, size: 64)
!3717 = !DIDerivedType(tag: DW_TAG_member, scope: !3714, file: !3376, line: 1269, baseType: !3718, size: 64)
!3718 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3714, file: !3376, line: 1269, size: 64, elements: !3719)
!3719 = !{!3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "mem_op", scope: !3718, file: !3376, line: 1270, baseType: !340, size: 5, flags: DIFlagBitField, extraData: i64 0)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl", scope: !3718, file: !3376, line: 1271, baseType: !340, size: 14, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoop", scope: !3718, file: !3376, line: 1272, baseType: !340, size: 5, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lock", scope: !3718, file: !3376, line: 1273, baseType: !340, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "mem_dtlb", scope: !3718, file: !3376, line: 1274, baseType: !340, size: 7, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl_num", scope: !3718, file: !3376, line: 1275, baseType: !340, size: 4, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "mem_remote", scope: !3718, file: !3376, line: 1276, baseType: !340, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoopx", scope: !3718, file: !3376, line: 1277, baseType: !340, size: 2, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "mem_blk", scope: !3718, file: !3376, line: 1278, baseType: !340, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "mem_hops", scope: !3718, file: !3376, line: 1279, baseType: !340, size: 3, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "mem_rsvd", scope: !3718, file: !3376, line: 1280, baseType: !340, size: 18, offset: 46, flags: DIFlagBitField, extraData: i64 0)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "txn", scope: !3634, file: !216, line: 1183, baseType: !339, size: 64, offset: 896)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "regs_user", scope: !3634, file: !216, line: 1185, baseType: !3733, size: 128, offset: 960)
!3733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_regs", file: !3734, line: 7, size: 128, elements: !3735)
!3734 = !DIFile(filename: "./include/linux/perf_regs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ddec4c01469dcac1787a884df1c79d64")
!3735 = !{!3736, !3737}
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "abi", scope: !3733, file: !3734, line: 8, baseType: !340, size: 64)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3733, file: !3734, line: 9, baseType: !3738, size: 64, offset: 64)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3740, line: 103, size: 1344, elements: !3741)
!3740 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3741 = !{!3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3770, !3771, !3772}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3739, file: !3740, line: 109, baseType: !51, size: 64)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3739, file: !3740, line: 110, baseType: !51, size: 64, offset: 64)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3739, file: !3740, line: 111, baseType: !51, size: 64, offset: 128)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3739, file: !3740, line: 112, baseType: !51, size: 64, offset: 192)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3739, file: !3740, line: 113, baseType: !51, size: 64, offset: 256)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3739, file: !3740, line: 114, baseType: !51, size: 64, offset: 320)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3739, file: !3740, line: 117, baseType: !51, size: 64, offset: 384)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3739, file: !3740, line: 118, baseType: !51, size: 64, offset: 448)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3739, file: !3740, line: 119, baseType: !51, size: 64, offset: 512)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3739, file: !3740, line: 120, baseType: !51, size: 64, offset: 576)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3739, file: !3740, line: 121, baseType: !51, size: 64, offset: 640)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3739, file: !3740, line: 122, baseType: !51, size: 64, offset: 704)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3739, file: !3740, line: 123, baseType: !51, size: 64, offset: 768)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3739, file: !3740, line: 124, baseType: !51, size: 64, offset: 832)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3739, file: !3740, line: 125, baseType: !51, size: 64, offset: 896)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3739, file: !3740, line: 139, baseType: !51, size: 64, offset: 960)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3739, file: !3740, line: 142, baseType: !51, size: 64, offset: 1024)
!3759 = !DIDerivedType(tag: DW_TAG_member, scope: !3739, file: !3740, line: 144, baseType: !3760, size: 64, offset: 1088)
!3760 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3739, file: !3740, line: 144, size: 64, elements: !3761)
!3761 = !{!3762, !3763, !3764}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3760, file: !3740, line: 146, baseType: !105, size: 16)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3760, file: !3740, line: 148, baseType: !339, size: 64)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3760, file: !3740, line: 150, baseType: !3765, size: 64)
!3765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3740, line: 59, size: 64, elements: !3766)
!3766 = !{!3767, !3768, !3769}
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3765, file: !3740, line: 61, baseType: !339, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3765, file: !3740, line: 63, baseType: !339, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3765, file: !3740, line: 65, baseType: !339, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3739, file: !3740, line: 153, baseType: !51, size: 64, offset: 1152)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3739, file: !3740, line: 154, baseType: !51, size: 64, offset: 1216)
!3772 = !DIDerivedType(tag: DW_TAG_member, scope: !3739, file: !3740, line: 156, baseType: !3773, size: 64, offset: 1280)
!3773 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3739, file: !3740, line: 156, size: 64, elements: !3774)
!3774 = !{!3775, !3776, !3777}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3773, file: !3740, line: 158, baseType: !105, size: 16)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3773, file: !3740, line: 160, baseType: !339, size: 64)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3773, file: !3740, line: 162, baseType: !3778, size: 64)
!3778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3740, line: 69, size: 64, elements: !3779)
!3779 = !{!3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3778, file: !3740, line: 71, baseType: !339, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3778, file: !3740, line: 73, baseType: !339, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3778, file: !3740, line: 75, baseType: !339, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3778, file: !3740, line: 77, baseType: !339, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3778, file: !3740, line: 80, baseType: !339, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3778, file: !3740, line: 83, baseType: !339, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3778, file: !3740, line: 86, baseType: !339, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3778, file: !3740, line: 88, baseType: !339, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3778, file: !3740, line: 93, baseType: !339, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3778, file: !3740, line: 100, baseType: !339, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "regs_intr", scope: !3634, file: !216, line: 1186, baseType: !3733, size: 128, offset: 1088)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "stack_user_size", scope: !3634, file: !216, line: 1187, baseType: !339, size: 64, offset: 1216)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !3634, file: !216, line: 1189, baseType: !339, size: 64, offset: 1280)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3634, file: !216, line: 1190, baseType: !339, size: 64, offset: 1344)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3634, file: !216, line: 1191, baseType: !339, size: 64, offset: 1408)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3634, file: !216, line: 1192, baseType: !339, size: 64, offset: 1472)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "data_page_size", scope: !3634, file: !216, line: 1193, baseType: !339, size: 64, offset: 1536)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "code_page_size", scope: !3634, file: !216, line: 1194, baseType: !339, size: 64, offset: 1600)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "aux_size", scope: !3634, file: !216, line: 1195, baseType: !339, size: 64, offset: 1664)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler_context", scope: !2827, file: !216, line: 812, baseType: !32, size: 64, offset: 8000)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "tp_event", scope: !2827, file: !216, line: 820, baseType: !2635, size: 64, offset: 8064)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2827, file: !216, line: 821, baseType: !2810, size: 64, offset: 8128)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !2827, file: !216, line: 828, baseType: !3803, size: 64, offset: 8192)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup", file: !216, line: 1046, size: 1664, elements: !3805)
!3805 = !{!3806, !4064}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "css", scope: !3804, file: !216, line: 1047, baseType: !3807, size: 1600)
!3807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !3808, line: 152, size: 1600, elements: !3809)
!3808 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!3809 = !{!3810, !3920, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4063}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3807, file: !3808, line: 154, baseType: !3811, size: 64)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !3808, line: 389, size: 7872, elements: !3813)
!3813 = !{!3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3833, !3834, !3838, !3839, !3840, !3841, !3842, !3847, !3863, !3864, !3866, !3867, !3868, !3890, !3891, !3892, !3893, !3899, !3900, !3901, !3902, !3903, !3907, !3910, !3911, !3918}
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !3812, file: !3808, line: 391, baseType: !3807, size: 1600)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3812, file: !3808, line: 393, baseType: !51, size: 64, offset: 1600)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3812, file: !3808, line: 401, baseType: !34, size: 32, offset: 1664)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !3812, file: !3808, line: 404, baseType: !34, size: 32, offset: 1696)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !3812, file: !3808, line: 417, baseType: !34, size: 32, offset: 1728)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !3812, file: !3808, line: 418, baseType: !34, size: 32, offset: 1760)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !3812, file: !3808, line: 419, baseType: !34, size: 32, offset: 1792)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !3812, file: !3808, line: 432, baseType: !34, size: 32, offset: 1824)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !3812, file: !3808, line: 433, baseType: !34, size: 32, offset: 1856)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !3812, file: !3808, line: 434, baseType: !34, size: 32, offset: 1888)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !3812, file: !3808, line: 436, baseType: !34, size: 32, offset: 1920)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !3812, file: !3808, line: 439, baseType: !7, size: 32, offset: 1952)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3812, file: !3808, line: 441, baseType: !2161, size: 64, offset: 1984)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !3812, file: !3808, line: 442, baseType: !3828, size: 448, offset: 2048)
!3828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !3808, line: 138, size: 448, elements: !3829)
!3829 = !{!3830, !3831, !3832}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3828, file: !3808, line: 140, baseType: !2161, size: 64)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !3828, file: !3808, line: 141, baseType: !51, size: 64, offset: 64)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !3828, file: !3808, line: 142, baseType: !2555, size: 320, offset: 128)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !3812, file: !3808, line: 443, baseType: !3828, size: 448, offset: 2496)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !3812, file: !3808, line: 446, baseType: !3835, offset: 2944)
!3835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3828, elements: !3836)
!3836 = !{!3837}
!3837 = !DISubrange(count: 0)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !3812, file: !3808, line: 455, baseType: !105, size: 16, offset: 2944)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !3812, file: !3808, line: 456, baseType: !105, size: 16, offset: 2960)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !3812, file: !3808, line: 457, baseType: !105, size: 16, offset: 2976)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !3812, file: !3808, line: 458, baseType: !105, size: 16, offset: 2992)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3812, file: !3808, line: 461, baseType: !3843, size: 896, offset: 3008)
!3843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3844, size: 896, elements: !3845)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3845 = !{!3846}
!3846 = !DISubrange(count: 14)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3812, file: !3808, line: 463, baseType: !3848, size: 64, offset: 3904)
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !3808, line: 537, size: 41664, elements: !3850)
!3850 = !{!3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !3849, file: !3808, line: 538, baseType: !2181, size: 64)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !3849, file: !3808, line: 541, baseType: !7, size: 32, offset: 64)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !3849, file: !3808, line: 544, baseType: !34, size: 32, offset: 96)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !3849, file: !3808, line: 547, baseType: !109, size: 128, offset: 128)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3849, file: !3808, line: 548, baseType: !733, size: 128, align: 64, offset: 256)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !3849, file: !3808, line: 555, baseType: !3812, size: 7872, offset: 384)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !3849, file: !3808, line: 558, baseType: !3811, size: 64, offset: 8256)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !3849, file: !3808, line: 561, baseType: !61, size: 32, offset: 8320)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3849, file: !3808, line: 564, baseType: !7, size: 32, offset: 8352)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !3849, file: !3808, line: 567, baseType: !2778, size: 32768, offset: 8384)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3849, file: !3808, line: 570, baseType: !3862, size: 512, offset: 41152)
!3862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 512, elements: !1559)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !3812, file: !3808, line: 469, baseType: !109, size: 128, offset: 3968)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !3812, file: !3808, line: 478, baseType: !3865, size: 1792, offset: 4096)
!3865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 1792, elements: !3845)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !3812, file: !3808, line: 487, baseType: !3811, size: 64, offset: 5888)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !3812, file: !3808, line: 488, baseType: !3811, size: 64, offset: 5952)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !3812, file: !3808, line: 491, baseType: !3869, size: 64, offset: 6016)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !3808, line: 327, size: 896, elements: !3871)
!3871 = !{!3872, !3875, !3885, !3886, !3887, !3888, !3889}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !3870, file: !3808, line: 332, baseType: !3873)
!3873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !3874, line: 64, elements: !718)
!3874 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3870, file: !3808, line: 333, baseType: !3876, size: 192)
!3876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !3808, line: 299, size: 192, elements: !3877)
!3877 = !{!3878}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !3876, file: !3808, line: 300, baseType: !3879, size: 192)
!3879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !3880, line: 17, size: 192, elements: !3881)
!3880 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!3881 = !{!3882, !3883, !3884}
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3879, file: !3880, line: 18, baseType: !339, size: 64)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3879, file: !3880, line: 19, baseType: !339, size: 64, offset: 64)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3879, file: !3880, line: 20, baseType: !341, size: 64, offset: 128)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3870, file: !3808, line: 339, baseType: !3876, size: 192, offset: 192)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !3870, file: !3808, line: 347, baseType: !3876, size: 192, offset: 384)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !3870, file: !3808, line: 353, baseType: !3876, size: 192, offset: 576)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !3870, file: !3808, line: 366, baseType: !3811, size: 64, offset: 768)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !3870, file: !3808, line: 367, baseType: !3811, size: 64, offset: 832)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !3812, file: !3808, line: 492, baseType: !109, size: 128, offset: 6080)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3812, file: !3808, line: 495, baseType: !3876, size: 192, offset: 6208)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3812, file: !3808, line: 496, baseType: !3876, size: 192, offset: 6400)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3812, file: !3808, line: 497, baseType: !3894, size: 192, offset: 6592)
!3894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !384, line: 324, size: 192, elements: !3895)
!3895 = !{!3896, !3897, !3898}
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3894, file: !384, line: 326, baseType: !339, size: 64)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3894, file: !384, line: 327, baseType: !339, size: 64, offset: 64)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3894, file: !384, line: 328, baseType: !540, size: 32, offset: 128)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !3812, file: !3808, line: 503, baseType: !109, size: 128, offset: 6784)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !3812, file: !3808, line: 504, baseType: !753, size: 256, offset: 6912)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !3812, file: !3808, line: 507, baseType: !66, size: 192, offset: 7168)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !3812, file: !3808, line: 510, baseType: !1028, size: 256, offset: 7360)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !3812, file: !3808, line: 513, baseType: !3904, size: 64, offset: 7616)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !3906, line: 214, elements: !718)
!3906 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !3812, file: !3808, line: 516, baseType: !3908, offset: 7680)
!3908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !3909, line: 76, elements: !718)
!3909 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !3812, file: !3808, line: 519, baseType: !61, size: 32, offset: 7680)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !3812, file: !3808, line: 522, baseType: !3912, size: 128, offset: 7712)
!3912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !3808, line: 370, size: 128, elements: !3913)
!3913 = !{!3914, !3915, !3916, !3917}
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3912, file: !3808, line: 372, baseType: !901, size: 8)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !3912, file: !3808, line: 375, baseType: !34, size: 32, offset: 32)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !3912, file: !3808, line: 380, baseType: !34, size: 32, offset: 64)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !3912, file: !3808, line: 386, baseType: !34, size: 32, offset: 96)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !3812, file: !3808, line: 529, baseType: !3919, offset: 7872)
!3919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3811, elements: !361)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3807, file: !3808, line: 157, baseType: !3921, size: 64, offset: 64)
!3921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3922, size: 64)
!3922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !3808, line: 669, size: 1984, elements: !3923)
!3923 = !{!3924, !3928, !3932, !3936, !3937, !3938, !3939, !3943, !3947, !3948, !3954, !3958, !3959, !3960, !3989, !3993, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4046, !4047}
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !3922, file: !3808, line: 670, baseType: !3925, size: 64)
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = !DISubroutineType(types: !3927)
!3927 = !{!3844, !3844}
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !3922, file: !3808, line: 671, baseType: !3929, size: 64, offset: 64)
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3930, size: 64)
!3930 = !DISubroutineType(types: !3931)
!3931 = !{!34, !3844}
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !3922, file: !3808, line: 672, baseType: !3933, size: 64, offset: 128)
!3933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3934, size: 64)
!3934 = !DISubroutineType(types: !3935)
!3935 = !{null, !3844}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !3922, file: !3808, line: 673, baseType: !3933, size: 64, offset: 192)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !3922, file: !3808, line: 674, baseType: !3933, size: 64, offset: 256)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !3922, file: !3808, line: 675, baseType: !3933, size: 64, offset: 320)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !3922, file: !3808, line: 676, baseType: !3940, size: 64, offset: 384)
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3941, size: 64)
!3941 = !DISubroutineType(types: !3942)
!3942 = !{null, !3844, !34}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !3922, file: !3808, line: 677, baseType: !3944, size: 64, offset: 448)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{!34, !2206, !3844}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !3922, file: !3808, line: 679, baseType: !3944, size: 64, offset: 512)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !3922, file: !3808, line: 682, baseType: !3949, size: 64, offset: 576)
!3949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3950, size: 64)
!3950 = !DISubroutineType(types: !3951)
!3951 = !{!34, !3952}
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !3808, line: 30, flags: DIFlagFwdDecl)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !3922, file: !3808, line: 683, baseType: !3955, size: 64, offset: 640)
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = !DISubroutineType(types: !3957)
!3957 = !{null, !3952}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !3922, file: !3808, line: 684, baseType: !3955, size: 64, offset: 704)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !3922, file: !3808, line: 685, baseType: !2729, size: 64, offset: 768)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !3922, file: !3808, line: 686, baseType: !3961, size: 64, offset: 832)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3962, size: 64)
!3962 = !DISubroutineType(types: !3963)
!3963 = !{!34, !382, !3964}
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3965, size: 64)
!3965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !3808, line: 209, size: 4736, elements: !3966)
!3966 = !{!3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988}
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3965, file: !3808, line: 215, baseType: !3843, size: 896)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3965, file: !3808, line: 218, baseType: !399, size: 32, offset: 896)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !3965, file: !3808, line: 226, baseType: !3964, size: 64, offset: 960)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !3965, file: !3808, line: 229, baseType: !3811, size: 64, offset: 1024)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !3965, file: !3808, line: 232, baseType: !34, size: 32, offset: 1088)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3965, file: !3808, line: 241, baseType: !109, size: 128, offset: 1152)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !3965, file: !3808, line: 242, baseType: !109, size: 128, offset: 1280)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !3965, file: !3808, line: 243, baseType: !109, size: 128, offset: 1408)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !3965, file: !3808, line: 246, baseType: !109, size: 128, offset: 1536)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !3965, file: !3808, line: 255, baseType: !3865, size: 1792, offset: 1664)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !3965, file: !3808, line: 258, baseType: !109, size: 128, offset: 3456)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !3965, file: !3808, line: 259, baseType: !109, size: 128, offset: 3584)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !3965, file: !3808, line: 265, baseType: !368, size: 128, offset: 3712)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !3965, file: !3808, line: 271, baseType: !109, size: 128, offset: 3840)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !3965, file: !3808, line: 277, baseType: !109, size: 128, offset: 3968)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !3965, file: !3808, line: 278, baseType: !109, size: 128, offset: 4096)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !3965, file: !3808, line: 279, baseType: !109, size: 128, offset: 4224)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !3965, file: !3808, line: 288, baseType: !3811, size: 64, offset: 4352)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !3965, file: !3808, line: 289, baseType: !3811, size: 64, offset: 4416)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !3965, file: !3808, line: 290, baseType: !3964, size: 64, offset: 4480)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !3965, file: !3808, line: 293, baseType: !901, size: 8, offset: 4544)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3965, file: !3808, line: 296, baseType: !733, size: 128, align: 64, offset: 4608)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !3922, file: !3808, line: 688, baseType: !3990, size: 64, offset: 896)
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = !DISubroutineType(types: !3992)
!3992 = !{null, !382, !3964}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !3922, file: !3808, line: 689, baseType: !3994, size: 64, offset: 960)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = !DISubroutineType(types: !3996)
!3996 = !{null, !382}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !3922, file: !3808, line: 690, baseType: !3994, size: 64, offset: 1024)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3922, file: !3808, line: 691, baseType: !3994, size: 64, offset: 1088)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !3922, file: !3808, line: 692, baseType: !3933, size: 64, offset: 1152)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3922, file: !3808, line: 694, baseType: !901, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !3922, file: !3808, line: 707, baseType: !901, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !3922, file: !3808, line: 719, baseType: !901, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3922, file: !3808, line: 722, baseType: !34, size: 32, offset: 1248)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3922, file: !3808, line: 723, baseType: !28, size: 64, offset: 1280)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !3922, file: !3808, line: 726, baseType: !28, size: 64, offset: 1344)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3922, file: !3808, line: 729, baseType: !3848, size: 64, offset: 1408)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !3922, file: !3808, line: 732, baseType: !817, size: 192, offset: 1472)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !3922, file: !3808, line: 738, baseType: !109, size: 128, offset: 1664)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !3922, file: !3808, line: 744, baseType: !4010, size: 64, offset: 1792)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !3808, line: 580, size: 1728, elements: !4012)
!4012 = !{!4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020, !4022, !4023, !4024, !4028, !4032, !4033, !4034, !4035, !4036, !4040, !4044, !4045}
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4011, file: !3808, line: 586, baseType: !3862, size: 512)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4011, file: !3808, line: 587, baseType: !51, size: 64, offset: 512)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4011, file: !3808, line: 593, baseType: !47, size: 64, offset: 576)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4011, file: !3808, line: 596, baseType: !7, size: 32, offset: 640)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !4011, file: !3808, line: 604, baseType: !7, size: 32, offset: 672)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4011, file: !3808, line: 610, baseType: !3921, size: 64, offset: 704)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4011, file: !3808, line: 611, baseType: !109, size: 128, offset: 768)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !4011, file: !3808, line: 612, baseType: !4021, size: 64, offset: 896)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4011, file: !3808, line: 614, baseType: !2197, size: 64, offset: 960)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4011, file: !3808, line: 615, baseType: !2255, size: 64, offset: 1024)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !4011, file: !3808, line: 621, baseType: !4025, size: 64, offset: 1088)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = !DISubroutineType(types: !4027)
!4027 = !{!339, !3844, !4010}
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !4011, file: !3808, line: 625, baseType: !4029, size: 64, offset: 1152)
!4029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4030, size: 64)
!4030 = !DISubroutineType(types: !4031)
!4031 = !{!459, !3844, !4010}
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4011, file: !3808, line: 628, baseType: !2236, size: 64, offset: 1216)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4011, file: !3808, line: 631, baseType: !2224, size: 64, offset: 1280)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4011, file: !3808, line: 632, baseType: !2232, size: 64, offset: 1344)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4011, file: !3808, line: 633, baseType: !2228, size: 64, offset: 1408)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !4011, file: !3808, line: 640, baseType: !4037, size: 64, offset: 1472)
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4038, size: 64)
!4038 = !DISubroutineType(types: !4039)
!4039 = !{!34, !3844, !4010, !339}
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !4011, file: !3808, line: 645, baseType: !4041, size: 64, offset: 1536)
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = !DISubroutineType(types: !4043)
!4043 = !{!34, !3844, !4010, !459}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4011, file: !3808, line: 654, baseType: !2263, size: 64, offset: 1600)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4011, file: !3808, line: 657, baseType: !2270, size: 64, offset: 1664)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !3922, file: !3808, line: 745, baseType: !4010, size: 64, offset: 1856)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !3922, file: !3808, line: 754, baseType: !7, size: 32, offset: 1920)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3807, file: !3808, line: 160, baseType: !1703, size: 128, offset: 128)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3807, file: !3808, line: 163, baseType: !109, size: 128, offset: 256)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3807, file: !3808, line: 164, baseType: !109, size: 128, offset: 384)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !3807, file: !3808, line: 167, baseType: !109, size: 128, offset: 512)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3807, file: !3808, line: 173, baseType: !34, size: 32, offset: 640)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3807, file: !3808, line: 175, baseType: !7, size: 32, offset: 672)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !3807, file: !3808, line: 183, baseType: !339, size: 64, offset: 704)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !3807, file: !3808, line: 189, baseType: !61, size: 32, offset: 768)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !3807, file: !3808, line: 192, baseType: !1028, size: 256, offset: 832)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !3807, file: !3808, line: 193, baseType: !4058, size: 448, offset: 1088)
!4058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !1029, line: 120, size: 448, elements: !4059)
!4059 = !{!4060, !4061, !4062}
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4058, file: !1029, line: 121, baseType: !1028, size: 256)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4058, file: !1029, line: 122, baseType: !733, size: 128, align: 64, offset: 256)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4058, file: !1029, line: 125, baseType: !2617, size: 64, offset: 384)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3807, file: !3808, line: 199, baseType: !3844, size: 64, offset: 1536)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3804, file: !216, line: 1048, baseType: !4065, size: 64, offset: 1600)
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup_info", file: !216, line: 1039, size: 256, elements: !4067)
!4067 = !{!4068, !4069, !4070, !4071}
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4066, file: !216, line: 1040, baseType: !339, size: 64)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4066, file: !216, line: 1041, baseType: !339, size: 64, offset: 64)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !4066, file: !216, line: 1042, baseType: !339, size: 64, offset: 128)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4066, file: !216, line: 1043, baseType: !34, size: 32, offset: 192)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2827, file: !216, line: 832, baseType: !32, size: 64, offset: 8256)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "sb_list", scope: !2827, file: !216, line: 834, baseType: !109, size: 128, offset: 8320)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !2827, file: !216, line: 842, baseType: !394, size: 32, offset: 8448)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1504, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1504, file: !6, line: 525, baseType: !4077, size: 64, offset: 8384)
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4078, size: 64)
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !4080, line: 28, size: 192, elements: !4081)
!4080 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!4081 = !{!4082, !4083, !4084}
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !4079, file: !4080, line: 29, baseType: !28, size: 64)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !4079, file: !4080, line: 30, baseType: !28, size: 64, offset: 64)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !4079, file: !4080, line: 31, baseType: !51, size: 64, offset: 128)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1504, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1504, file: !6, line: 533, baseType: !32, size: 64, offset: 8512)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1504, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1504, file: !6, line: 535, baseType: !338, size: 64, offset: 8640)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1504, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1504, file: !6, line: 539, baseType: !34, size: 32, offset: 8736)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1504, file: !6, line: 540, baseType: !2718, size: 64, offset: 8768)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1504, file: !6, line: 563, baseType: !109, size: 128, offset: 8832)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1504, file: !6, line: 565, baseType: !109, size: 128, offset: 8960)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1504, file: !6, line: 568, baseType: !2729, size: 64, offset: 9088)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1504, file: !6, line: 570, baseType: !61, size: 32, offset: 9152)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1480, file: !14, line: 2382, baseType: !1479, size: 64, offset: 448)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1480, file: !14, line: 2383, baseType: !364, size: 64, offset: 512)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1480, file: !14, line: 2385, baseType: !4099, offset: 576)
!4099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2584, line: 206, elements: !718)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1480, file: !14, line: 2386, baseType: !4099, offset: 576)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1480, file: !14, line: 2387, baseType: !4099, offset: 576)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1480, file: !14, line: 2388, baseType: !4103, offset: 576)
!4103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4099, elements: !789)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1480, file: !14, line: 2390, baseType: !4099, offset: 576)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1480, file: !14, line: 2391, baseType: !4099, offset: 576)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1480, file: !14, line: 2392, baseType: !4099, offset: 576)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1480, file: !14, line: 2393, baseType: !4099, offset: 576)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1471, file: !14, line: 1197, baseType: !4109, size: 64, offset: 384)
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4110, size: 64)
!4110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4111)
!4111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !4112)
!4112 = !{!4113, !4117, !4121, !4122, !4126, !4130, !4134, !4135, !4136, !4140, !4144, !4148, !4149, !4150, !4156, !4160, !4161, !4165, !4166, !4167, !4168, !4172, !4176, !4223, !4238, !4239}
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !4111, file: !14, line: 2058, baseType: !4114, size: 64)
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4115 = !DISubroutineType(types: !4116)
!4116 = !{!1269, !1470}
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !4111, file: !14, line: 2059, baseType: !4118, size: 64, offset: 64)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = !DISubroutineType(types: !4120)
!4120 = !{null, !1269}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4111, file: !14, line: 2060, baseType: !4118, size: 64, offset: 128)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !4111, file: !14, line: 2062, baseType: !4123, size: 64, offset: 192)
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4124 = !DISubroutineType(types: !4125)
!4125 = !{null, !1269, !34}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !4111, file: !14, line: 2063, baseType: !4127, size: 64, offset: 256)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = !DISubroutineType(types: !4129)
!4129 = !{!34, !1269, !1924}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !4111, file: !14, line: 2064, baseType: !4131, size: 64, offset: 320)
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4132 = !DISubroutineType(types: !4133)
!4133 = !{!34, !1269}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !4111, file: !14, line: 2065, baseType: !4118, size: 64, offset: 384)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !4111, file: !14, line: 2066, baseType: !1499, size: 64, offset: 448)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !4111, file: !14, line: 2067, baseType: !4137, size: 64, offset: 512)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = !DISubroutineType(types: !4139)
!4139 = !{!34, !1470, !34}
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !4111, file: !14, line: 2068, baseType: !4141, size: 64, offset: 576)
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4142, size: 64)
!4142 = !DISubroutineType(types: !4143)
!4143 = !{!34, !1470, !13}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !4111, file: !14, line: 2069, baseType: !4145, size: 64, offset: 640)
!4145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4146, size: 64)
!4146 = !DISubroutineType(types: !4147)
!4147 = !{!34, !1470}
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !4111, file: !14, line: 2070, baseType: !4141, size: 64, offset: 704)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !4111, file: !14, line: 2071, baseType: !4145, size: 64, offset: 768)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !4111, file: !14, line: 2072, baseType: !4151, size: 64, offset: 832)
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4152, size: 64)
!4152 = !DISubroutineType(types: !4153)
!4153 = !{!34, !1234, !4154}
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4155, size: 64)
!4155 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !4111, file: !14, line: 2073, baseType: !4157, size: 64, offset: 896)
!4157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4158, size: 64)
!4158 = !DISubroutineType(types: !4159)
!4159 = !{!34, !1470, !2455, !989}
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !4111, file: !14, line: 2074, baseType: !1499, size: 64, offset: 960)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !4111, file: !14, line: 2076, baseType: !4162, size: 64, offset: 1024)
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4163, size: 64)
!4163 = !DISubroutineType(types: !4164)
!4164 = !{!34, !2206, !1234}
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !4111, file: !14, line: 2077, baseType: !4162, size: 64, offset: 1088)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !4111, file: !14, line: 2078, baseType: !4162, size: 64, offset: 1152)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !4111, file: !14, line: 2079, baseType: !4162, size: 64, offset: 1216)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !4111, file: !14, line: 2081, baseType: !4169, size: 64, offset: 1280)
!4169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4170, size: 64)
!4170 = !DISubroutineType(types: !4171)
!4171 = !{!1421, !1470, !34, !989, !47, !53}
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !4111, file: !14, line: 2082, baseType: !4173, size: 64, offset: 1344)
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4174, size: 64)
!4174 = !DISubroutineType(types: !4175)
!4175 = !{!1421, !1470, !34, !28, !47, !53}
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !4111, file: !14, line: 2083, baseType: !4177, size: 64, offset: 1408)
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4178, size: 64)
!4178 = !DISubroutineType(types: !4179)
!4179 = !{!4180, !1269}
!4180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4181, size: 64)
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !250, line: 296, size: 1664, elements: !4183)
!4183 = !{!4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4192, !4208, !4209, !4210}
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !4182, file: !250, line: 297, baseType: !368, size: 128)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !4182, file: !250, line: 298, baseType: !109, size: 128, offset: 128)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !4182, file: !250, line: 299, baseType: !109, size: 128, offset: 256)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !4182, file: !250, line: 300, baseType: !109, size: 128, offset: 384)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !4182, file: !250, line: 301, baseType: !753, size: 256, offset: 512)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !4182, file: !250, line: 302, baseType: !71, size: 32, offset: 768)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !4182, file: !250, line: 303, baseType: !61, size: 32, offset: 800)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !4182, file: !250, line: 304, baseType: !1470, size: 64, offset: 832)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !4182, file: !250, line: 305, baseType: !4193, size: 64, offset: 896)
!4193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !250, line: 68, size: 64, elements: !4194)
!4194 = !{!4195, !4207}
!4195 = !DIDerivedType(tag: DW_TAG_member, scope: !4193, file: !250, line: 69, baseType: !4196, size: 32)
!4196 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4193, file: !250, line: 69, size: 32, elements: !4197)
!4197 = !{!4198, !4199, !4200}
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4196, file: !250, line: 70, baseType: !874, size: 32)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4196, file: !250, line: 71, baseType: !882, size: 32)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !4196, file: !250, line: 72, baseType: !4201, size: 32)
!4201 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !4202, line: 24, baseType: !4203)
!4202 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!4203 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4202, line: 22, size: 32, elements: !4204)
!4204 = !{!4205}
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4203, file: !4202, line: 23, baseType: !4206, size: 32)
!4206 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !4202, line: 20, baseType: !880)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4193, file: !250, line: 74, baseType: !249, size: 32, offset: 32)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !4182, file: !250, line: 306, baseType: !53, size: 64, offset: 960)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !4182, file: !250, line: 307, baseType: !51, size: 64, offset: 1024)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !4182, file: !250, line: 308, baseType: !4211, size: 576, offset: 1088)
!4211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !250, line: 205, size: 576, elements: !4212)
!4212 = !{!4213, !4215, !4216, !4217, !4218, !4219, !4220, !4221, !4222}
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !4211, file: !250, line: 206, baseType: !4214, size: 64)
!4214 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !250, line: 66, baseType: !55)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !4211, file: !250, line: 207, baseType: !4214, size: 64, offset: 64)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !4211, file: !250, line: 208, baseType: !4214, size: 64, offset: 128)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !4211, file: !250, line: 209, baseType: !4214, size: 64, offset: 192)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !4211, file: !250, line: 210, baseType: !4214, size: 64, offset: 256)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !4211, file: !250, line: 211, baseType: !4214, size: 64, offset: 320)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !4211, file: !250, line: 212, baseType: !4214, size: 64, offset: 384)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !4211, file: !250, line: 213, baseType: !937, size: 64, offset: 448)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !4211, file: !250, line: 214, baseType: !937, size: 64, offset: 512)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !4111, file: !14, line: 2085, baseType: !4224, size: 64, offset: 1472)
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4225, size: 64)
!4225 = !DISubroutineType(types: !4226)
!4226 = !{!1126, !1470, !4227}
!4227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4228, size: 64)
!4228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !4229, line: 15, size: 256, elements: !4230)
!4229 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!4230 = !{!4231, !4232, !4233, !4234, !4235}
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !4228, file: !4229, line: 16, baseType: !826, size: 32)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !4228, file: !4229, line: 19, baseType: !34, size: 32, offset: 32)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !4228, file: !4229, line: 26, baseType: !51, size: 64, offset: 64)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !4228, file: !4229, line: 33, baseType: !51, size: 64, offset: 128)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !4228, file: !4229, line: 36, baseType: !4236, size: 64, offset: 192)
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4237 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !126, line: 33, flags: DIFlagFwdDecl)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !4111, file: !14, line: 2087, baseType: !4224, size: 64, offset: 1536)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4111, file: !14, line: 2089, baseType: !1499, size: 64, offset: 1600)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1471, file: !14, line: 1198, baseType: !4241, size: 64, offset: 448)
!4241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4242, size: 64)
!4242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4243)
!4243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !250, line: 324, size: 704, elements: !4244)
!4244 = !{!4245, !4249, !4253, !4257, !4258, !4259, !4260, !4261, !4266, !4271, !4275}
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !4243, file: !250, line: 325, baseType: !4246, size: 64)
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4247 = !DISubroutineType(types: !4248)
!4248 = !{!34, !4181}
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !4243, file: !250, line: 326, baseType: !4250, size: 64, offset: 64)
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4251, size: 64)
!4251 = !DISubroutineType(types: !4252)
!4252 = !{!4181, !1470, !34}
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !4243, file: !250, line: 327, baseType: !4254, size: 64, offset: 128)
!4254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4255, size: 64)
!4255 = !DISubroutineType(types: !4256)
!4256 = !{null, !4181}
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !4243, file: !250, line: 328, baseType: !4246, size: 64, offset: 192)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !4243, file: !250, line: 329, baseType: !4246, size: 64, offset: 256)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !4243, file: !250, line: 330, baseType: !4246, size: 64, offset: 320)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !4243, file: !250, line: 331, baseType: !4137, size: 64, offset: 384)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !4243, file: !250, line: 334, baseType: !4262, size: 64, offset: 448)
!4262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4263, size: 64)
!4263 = !DISubroutineType(types: !4264)
!4264 = !{!4265, !1269}
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4214, size: 64)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !4243, file: !250, line: 335, baseType: !4267, size: 64, offset: 512)
!4267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4268, size: 64)
!4268 = !DISubroutineType(types: !4269)
!4269 = !{!34, !1269, !4270}
!4270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4201, size: 64)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !4243, file: !250, line: 337, baseType: !4272, size: 64, offset: 576)
!4272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4273, size: 64)
!4273 = !DISubroutineType(types: !4274)
!4274 = !{!34, !1269, !4265}
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4243, file: !250, line: 339, baseType: !4276, size: 64, offset: 640)
!4276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4277, size: 64)
!4277 = !DISubroutineType(types: !4278)
!4278 = !{!34, !1470, !4279}
!4279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1471, file: !14, line: 1199, baseType: !4281, size: 64, offset: 512)
!4281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4282, size: 64)
!4282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4283)
!4283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !250, line: 430, size: 704, elements: !4284)
!4284 = !{!4285, !4289, !4290, !4294, !4295, !4296, !4311, !4334, !4338, !4339, !4362}
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !4283, file: !250, line: 431, baseType: !4286, size: 64)
!4286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4287, size: 64)
!4287 = !DISubroutineType(types: !4288)
!4288 = !{!34, !1470, !34, !34, !1390}
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !4283, file: !250, line: 432, baseType: !4137, size: 64, offset: 64)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !4283, file: !250, line: 433, baseType: !4291, size: 64, offset: 128)
!4291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4292, size: 64)
!4292 = !DISubroutineType(types: !4293)
!4293 = !{!34, !1470, !7}
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !4283, file: !250, line: 434, baseType: !4291, size: 64, offset: 192)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !4283, file: !250, line: 435, baseType: !4137, size: 64, offset: 256)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !4283, file: !250, line: 436, baseType: !4297, size: 64, offset: 320)
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4298, size: 64)
!4298 = !DISubroutineType(types: !4299)
!4299 = !{!34, !1470, !34, !4300}
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4301, size: 64)
!4301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !250, line: 417, size: 256, elements: !4302)
!4302 = !{!4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310}
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !4301, file: !250, line: 418, baseType: !34, size: 32)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !4301, file: !250, line: 419, baseType: !7, size: 32, offset: 32)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !4301, file: !250, line: 420, baseType: !7, size: 32, offset: 64)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !4301, file: !250, line: 422, baseType: !7, size: 32, offset: 96)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !4301, file: !250, line: 423, baseType: !7, size: 32, offset: 128)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !4301, file: !250, line: 424, baseType: !7, size: 32, offset: 160)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !4301, file: !250, line: 425, baseType: !7, size: 32, offset: 192)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !4301, file: !250, line: 426, baseType: !7, size: 32, offset: 224)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !4283, file: !250, line: 437, baseType: !4312, size: 64, offset: 384)
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4313, size: 64)
!4313 = !DISubroutineType(types: !4314)
!4314 = !{!34, !1470, !4193, !4315}
!4315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4316, size: 64)
!4316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !250, line: 345, size: 960, elements: !4317)
!4317 = !{!4318, !4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4332, !4333}
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !4316, file: !250, line: 346, baseType: !34, size: 32)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !4316, file: !250, line: 347, baseType: !339, size: 64, offset: 64)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !4316, file: !250, line: 348, baseType: !339, size: 64, offset: 128)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !4316, file: !250, line: 349, baseType: !339, size: 64, offset: 192)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !4316, file: !250, line: 350, baseType: !339, size: 64, offset: 256)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !4316, file: !250, line: 351, baseType: !339, size: 64, offset: 320)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !4316, file: !250, line: 352, baseType: !339, size: 64, offset: 384)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !4316, file: !250, line: 353, baseType: !459, size: 64, offset: 448)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !4316, file: !250, line: 355, baseType: !459, size: 64, offset: 512)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !4316, file: !250, line: 356, baseType: !34, size: 32, offset: 576)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !4316, file: !250, line: 357, baseType: !34, size: 32, offset: 608)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !4316, file: !250, line: 358, baseType: !339, size: 64, offset: 640)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !4316, file: !250, line: 359, baseType: !339, size: 64, offset: 704)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !4316, file: !250, line: 360, baseType: !339, size: 64, offset: 768)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !4316, file: !250, line: 361, baseType: !459, size: 64, offset: 832)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !4316, file: !250, line: 362, baseType: !34, size: 32, offset: 896)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !4283, file: !250, line: 438, baseType: !4335, size: 64, offset: 448)
!4335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4336, size: 64)
!4336 = !DISubroutineType(types: !4337)
!4337 = !{!34, !1470, !4279, !4315}
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !4283, file: !250, line: 440, baseType: !4312, size: 64, offset: 512)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !4283, file: !250, line: 441, baseType: !4340, size: 64, offset: 576)
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4341, size: 64)
!4341 = !DISubroutineType(types: !4342)
!4342 = !{!34, !1470, !4343}
!4343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4344, size: 64)
!4344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !250, line: 411, size: 1408, elements: !4345)
!4345 = !{!4346, !4347}
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !4344, file: !250, line: 412, baseType: !7, size: 32)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !4344, file: !250, line: 413, baseType: !4348, size: 1344, offset: 64)
!4348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4349, size: 1344, elements: !789)
!4349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !250, line: 397, size: 448, elements: !4350)
!4350 = !{!4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4359, !4361}
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4349, file: !250, line: 398, baseType: !7, size: 32)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !4349, file: !250, line: 399, baseType: !7, size: 32, offset: 32)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !4349, file: !250, line: 401, baseType: !7, size: 32, offset: 64)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !4349, file: !250, line: 402, baseType: !7, size: 32, offset: 96)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !4349, file: !250, line: 403, baseType: !7, size: 32, offset: 128)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !4349, file: !250, line: 404, baseType: !7, size: 32, offset: 160)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !4349, file: !250, line: 405, baseType: !7, size: 32, offset: 192)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4349, file: !250, line: 406, baseType: !341, size: 64, offset: 256)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4349, file: !250, line: 407, baseType: !4360, size: 64, offset: 320)
!4360 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !37, line: 132, baseType: !339)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !4349, file: !250, line: 408, baseType: !4360, size: 64, offset: 384)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !4283, file: !250, line: 442, baseType: !4291, size: 64, offset: 640)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1471, file: !14, line: 1200, baseType: !4364, size: 64, offset: 576)
!4364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4365, size: 64)
!4365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4366)
!4366 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1471, file: !14, line: 1201, baseType: !51, size: 64, offset: 640)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1471, file: !14, line: 1202, baseType: !51, size: 64, offset: 704)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1471, file: !14, line: 1203, baseType: !51, size: 64, offset: 768)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1471, file: !14, line: 1204, baseType: !1234, size: 64, offset: 832)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1471, file: !14, line: 1205, baseType: !921, size: 320, offset: 896)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1471, file: !14, line: 1206, baseType: !34, size: 32, offset: 1216)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1471, file: !14, line: 1207, baseType: !61, size: 32, offset: 1248)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1471, file: !14, line: 1209, baseType: !32, size: 64, offset: 1280)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1471, file: !14, line: 1211, baseType: !4376, size: 64, offset: 1344)
!4376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4377, size: 64)
!4377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4378, size: 64)
!4378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4379)
!4379 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1471, file: !14, line: 1223, baseType: !4381, size: 64, offset: 1408)
!4381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1246, line: 34, size: 64, elements: !4382)
!4382 = !{!4383}
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4381, file: !1246, line: 35, baseType: !1249, size: 64)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1471, file: !14, line: 1224, baseType: !109, size: 128, offset: 1472)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1471, file: !14, line: 1225, baseType: !4386, size: 64, offset: 1600)
!4386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4387, size: 64)
!4387 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1471, file: !14, line: 1226, baseType: !4389, size: 64, offset: 1664)
!4389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4390, size: 64)
!4390 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1471, file: !14, line: 1227, baseType: !4392, size: 64, offset: 1728)
!4392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4393, size: 64)
!4393 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1471, file: !14, line: 1228, baseType: !4395, size: 64, offset: 1792)
!4395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4396, size: 64)
!4396 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1471, file: !14, line: 1229, baseType: !368, size: 128, offset: 1856)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1471, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1471, file: !14, line: 1231, baseType: !4400, size: 2496, offset: 2048)
!4400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !250, line: 521, size: 2496, elements: !4401)
!4401 = !{!4402, !4403, !4404, !4406, !4438}
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4400, file: !250, line: 522, baseType: !7, size: 32)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !4400, file: !250, line: 523, baseType: !921, size: 320, offset: 64)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !4400, file: !250, line: 524, baseType: !4405, size: 192, offset: 384)
!4405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1269, size: 192, elements: !789)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4400, file: !250, line: 525, baseType: !4407, size: 1728, offset: 576)
!4407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4408, size: 1728, elements: !789)
!4408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !250, line: 222, size: 576, elements: !4409)
!4409 = !{!4410, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437}
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !4408, file: !250, line: 223, baseType: !4411, size: 64)
!4411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4412, size: 64)
!4412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !250, line: 445, size: 256, elements: !4413)
!4413 = !{!4414, !4415, !4428, !4429}
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !4412, file: !250, line: 446, baseType: !34, size: 32)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !4412, file: !250, line: 447, baseType: !4416, size: 64, offset: 64)
!4416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4417, size: 64)
!4417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4418)
!4418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !250, line: 312, size: 512, elements: !4419)
!4419 = !{!4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427}
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !4418, file: !250, line: 313, baseType: !4137, size: 64)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !4418, file: !250, line: 314, baseType: !4137, size: 64, offset: 64)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !4418, file: !250, line: 315, baseType: !4137, size: 64, offset: 128)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !4418, file: !250, line: 316, baseType: !4137, size: 64, offset: 192)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !4418, file: !250, line: 317, baseType: !4246, size: 64, offset: 256)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !4418, file: !250, line: 318, baseType: !4246, size: 64, offset: 320)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !4418, file: !250, line: 319, baseType: !4246, size: 64, offset: 384)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4418, file: !250, line: 320, baseType: !4276, size: 64, offset: 448)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !4412, file: !250, line: 448, baseType: !1503, size: 64, offset: 128)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !4412, file: !250, line: 449, baseType: !4411, size: 64, offset: 192)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !4408, file: !250, line: 224, baseType: !34, size: 32, offset: 64)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !4408, file: !250, line: 226, baseType: !109, size: 128, offset: 128)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !4408, file: !250, line: 227, baseType: !51, size: 64, offset: 256)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !4408, file: !250, line: 228, baseType: !7, size: 32, offset: 320)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !4408, file: !250, line: 229, baseType: !7, size: 32, offset: 352)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !4408, file: !250, line: 230, baseType: !4214, size: 64, offset: 384)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !4408, file: !250, line: 231, baseType: !4214, size: 64, offset: 448)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !4408, file: !250, line: 232, baseType: !32, size: 64, offset: 512)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4400, file: !250, line: 526, baseType: !4439, size: 192, offset: 2304)
!4439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4416, size: 192, elements: !789)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1471, file: !14, line: 1233, baseType: !4441, size: 2368, offset: 4544)
!4441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !4442)
!4442 = !{!4443, !4444, !4445}
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !4441, file: !14, line: 1185, baseType: !38, size: 16)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !4441, file: !14, line: 1186, baseType: !38, size: 16, offset: 16)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !4441, file: !14, line: 1187, baseType: !4446, size: 2304, offset: 64)
!4446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4447, size: 2304, elements: !789)
!4447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !4448, line: 12, size: 768, elements: !4449)
!4448 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!4449 = !{!4450, !4458, !4459, !4460, !4461}
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !4447, file: !4448, line: 13, baseType: !4451, size: 384)
!4451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !4452, line: 17, size: 384, elements: !4453)
!4452 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!4453 = !{!4454, !4455, !4456, !4457}
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !4451, file: !4452, line: 18, baseType: !34, size: 32)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !4451, file: !4452, line: 19, baseType: !34, size: 32, offset: 32)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !4451, file: !4452, line: 20, baseType: !66, size: 192, offset: 64)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !4451, file: !4452, line: 22, baseType: !733, size: 128, align: 64, offset: 256)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !4447, file: !4448, line: 14, baseType: !2407, size: 64, offset: 384)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !4447, file: !4448, line: 15, baseType: !3597, size: 64, offset: 448)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4447, file: !4448, line: 16, baseType: !66, size: 192, offset: 512)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4447, file: !4448, line: 17, baseType: !61, size: 32, offset: 704)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1471, file: !14, line: 1240, baseType: !32, size: 64, offset: 6912)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1471, file: !14, line: 1243, baseType: !393, size: 32, offset: 6976)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1471, file: !14, line: 1245, baseType: !937, size: 64, offset: 7040)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1471, file: !14, line: 1246, baseType: !937, size: 64, offset: 7104)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1471, file: !14, line: 1248, baseType: !394, size: 32, offset: 7168)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1471, file: !14, line: 1249, baseType: !4468, size: 64, offset: 7232)
!4468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4469, size: 64)
!4469 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1471, file: !14, line: 1252, baseType: !4471, size: 256, offset: 7296)
!4471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 256, elements: !4472)
!4472 = !{!4473}
!4473 = !DISubrange(count: 32)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1471, file: !14, line: 1253, baseType: !4475, size: 128, offset: 7552)
!4475 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4476, line: 21, baseType: !4477)
!4476 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4477 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4476, line: 19, size: 128, elements: !4478)
!4478 = !{!4479}
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4477, file: !4476, line: 20, baseType: !4480, size: 128)
!4480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 128, elements: !4481)
!4481 = !{!4482}
!4482 = !DISubrange(count: 16)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1471, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1471, file: !14, line: 1261, baseType: !753, size: 256, offset: 7744)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1471, file: !14, line: 1267, baseType: !28, size: 64, offset: 8000)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1471, file: !14, line: 1269, baseType: !4487, size: 64, offset: 8064)
!4487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4488, size: 64)
!4488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4489)
!4489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1236, line: 128, size: 1024, align: 512, elements: !4490)
!4490 = !{!4491, !4495, !4496, !4503, !4509, !4513, !4517, !4521, !4522, !4526, !4530, !4535, !4539}
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !4489, file: !1236, line: 129, baseType: !4492, size: 64)
!4492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4493, size: 64)
!4493 = !DISubroutineType(types: !4494)
!4494 = !{!34, !1234, !7}
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !4489, file: !1236, line: 130, baseType: !4492, size: 64, offset: 64)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !4489, file: !1236, line: 131, baseType: !4497, size: 64, offset: 128)
!4497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4498 = !DISubroutineType(types: !4499)
!4499 = !{!34, !4500, !4502}
!4500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4501, size: 64)
!4501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1235)
!4502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !4489, file: !1236, line: 132, baseType: !4504, size: 64, offset: 192)
!4504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4505, size: 64)
!4505 = !DISubroutineType(types: !4506)
!4506 = !{!34, !4500, !7, !28, !4507}
!4507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4508, size: 64)
!4508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1254)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !4489, file: !1236, line: 134, baseType: !4510, size: 64, offset: 256)
!4510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4511, size: 64)
!4511 = !DISubroutineType(types: !4512)
!4512 = !{!34, !4500}
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !4489, file: !1236, line: 135, baseType: !4514, size: 64, offset: 320)
!4514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4515, size: 64)
!4515 = !DISubroutineType(types: !4516)
!4516 = !{!34, !1234}
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !4489, file: !1236, line: 136, baseType: !4518, size: 64, offset: 384)
!4518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4519, size: 64)
!4519 = !DISubroutineType(types: !4520)
!4520 = !{null, !1234}
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !4489, file: !1236, line: 137, baseType: !4518, size: 64, offset: 448)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !4489, file: !1236, line: 138, baseType: !4523, size: 64, offset: 512)
!4523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4524, size: 64)
!4524 = !DISubroutineType(types: !4525)
!4525 = !{null, !1234, !1269}
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !4489, file: !1236, line: 139, baseType: !4527, size: 64, offset: 576)
!4527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4528, size: 64)
!4528 = !DISubroutineType(types: !4529)
!4529 = !{!989, !1234, !989, !34}
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !4489, file: !1236, line: 140, baseType: !4531, size: 64, offset: 640)
!4531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4532, size: 64)
!4532 = !DISubroutineType(types: !4533)
!4533 = !{!1229, !4534}
!4534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !4489, file: !1236, line: 141, baseType: !4536, size: 64, offset: 704)
!4536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4537, size: 64)
!4537 = !DISubroutineType(types: !4538)
!4538 = !{!34, !1390, !901}
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !4489, file: !1236, line: 142, baseType: !4540, size: 64, offset: 768)
!4540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4541, size: 64)
!4541 = !DISubroutineType(types: !4542)
!4542 = !{!1234, !1234, !4543}
!4543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4544, size: 64)
!4544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1270)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1471, file: !14, line: 1271, baseType: !4546, size: 448, offset: 8128)
!4546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !4229, line: 63, size: 448, elements: !4547)
!4547 = !{!4548, !4553, !4554, !4555, !4556, !4557, !4558}
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4546, file: !4229, line: 64, baseType: !4549, size: 64)
!4549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4550, size: 64)
!4550 = !DISubroutineType(types: !4551)
!4551 = !{!51, !4552, !4227}
!4552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4546, size: 64)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4546, file: !4229, line: 66, baseType: !4549, size: 64, offset: 64)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4546, file: !4229, line: 69, baseType: !1126, size: 64, offset: 128)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4546, file: !4229, line: 70, baseType: !34, size: 32, offset: 192)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4546, file: !4229, line: 71, baseType: !7, size: 32, offset: 224)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4546, file: !4229, line: 74, baseType: !109, size: 128, offset: 256)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4546, file: !4229, line: 85, baseType: !4559, size: 64, offset: 384)
!4559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1471, file: !14, line: 1274, baseType: !746, size: 64, offset: 8576)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1471, file: !14, line: 1280, baseType: !746, size: 64, offset: 8640)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1471, file: !14, line: 1283, baseType: !34, size: 32, offset: 8704)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1471, file: !14, line: 1286, baseType: !2104, size: 32, offset: 8736)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1471, file: !14, line: 1289, baseType: !2617, size: 64, offset: 8768)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1471, file: !14, line: 1290, baseType: !364, size: 64, offset: 8832)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1471, file: !14, line: 1297, baseType: !843, size: 64, offset: 8896)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1471, file: !14, line: 1304, baseType: !4568, size: 64, offset: 8960)
!4568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4569, line: 49, size: 64, elements: !4570)
!4569 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4570 = !{!4571}
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4568, file: !4569, line: 50, baseType: !4572, size: 64)
!4572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4573, size: 64)
!4573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4569, line: 41, size: 512, align: 512, elements: !4574)
!4574 = !{!4575, !4576, !4581}
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4573, file: !4569, line: 43, baseType: !71, size: 32)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4573, file: !4569, line: 45, baseType: !4577, size: 192, offset: 64)
!4577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4569, line: 29, size: 192, elements: !4578)
!4578 = !{!4579, !4580}
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4577, file: !4569, line: 30, baseType: !109, size: 128)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4577, file: !4569, line: 32, baseType: !1126, size: 64, offset: 128)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4573, file: !4569, line: 46, baseType: !1126, size: 64, offset: 256)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1471, file: !14, line: 1305, baseType: !4568, size: 64, offset: 9024)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1471, file: !14, line: 1306, baseType: !733, size: 128, align: 64, offset: 9088)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1471, file: !14, line: 1307, baseType: !1028, size: 256, offset: 9216)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1471, file: !14, line: 1309, baseType: !753, size: 256, offset: 9472)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1471, file: !14, line: 1314, baseType: !34, size: 32, offset: 9728)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1471, file: !14, line: 1317, baseType: !71, size: 32, align: 512, offset: 10240)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1471, file: !14, line: 1318, baseType: !109, size: 128, offset: 10304)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1471, file: !14, line: 1320, baseType: !71, size: 32, offset: 10432)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1471, file: !14, line: 1321, baseType: !109, size: 128, offset: 10496)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1270, file: !14, line: 656, baseType: !1620, size: 64, offset: 512)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1270, file: !14, line: 659, baseType: !32, size: 64, offset: 576)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1270, file: !14, line: 663, baseType: !51, size: 64, offset: 640)
!4594 = !DIDerivedType(tag: DW_TAG_member, scope: !1270, file: !14, line: 671, baseType: !4595, size: 32, offset: 704)
!4595 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1270, file: !14, line: 671, size: 32, elements: !4596)
!4596 = !{!4597, !4598}
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4595, file: !14, line: 672, baseType: !2665, size: 32)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4595, file: !14, line: 673, baseType: !7, size: 32)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1270, file: !14, line: 675, baseType: !1343, size: 32, offset: 736)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1270, file: !14, line: 676, baseType: !53, size: 64, offset: 768)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1270, file: !14, line: 677, baseType: !1379, size: 128, offset: 832)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1270, file: !14, line: 678, baseType: !1379, size: 128, offset: 960)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1270, file: !14, line: 679, baseType: !1379, size: 128, offset: 1088)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1270, file: !14, line: 680, baseType: !71, size: 32, offset: 1216)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1270, file: !14, line: 681, baseType: !38, size: 16, offset: 1248)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1270, file: !14, line: 682, baseType: !95, size: 8, offset: 1264)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1270, file: !14, line: 683, baseType: !95, size: 8, offset: 1272)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1270, file: !14, line: 684, baseType: !4360, size: 64, offset: 1280)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1270, file: !14, line: 691, baseType: !51, size: 64, offset: 1344)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1270, file: !14, line: 692, baseType: !921, size: 320, offset: 1408)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1270, file: !14, line: 694, baseType: !51, size: 64, offset: 1728)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1270, file: !14, line: 695, baseType: !51, size: 64, offset: 1792)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1270, file: !14, line: 697, baseType: !368, size: 128, offset: 1856)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1270, file: !14, line: 698, baseType: !109, size: 128, offset: 1984)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1270, file: !14, line: 707, baseType: !109, size: 128, offset: 2112)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1270, file: !14, line: 708, baseType: !109, size: 128, offset: 2240)
!4617 = !DIDerivedType(tag: DW_TAG_member, scope: !1270, file: !14, line: 709, baseType: !4618, size: 128, offset: 2368)
!4618 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1270, file: !14, line: 709, size: 128, elements: !4619)
!4619 = !{!4620, !4621}
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4618, file: !14, line: 710, baseType: !364, size: 64)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4618, file: !14, line: 711, baseType: !733, size: 128, align: 64)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1270, file: !14, line: 713, baseType: !748, size: 64, offset: 2496)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1270, file: !14, line: 714, baseType: !748, size: 64, offset: 2560)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1270, file: !14, line: 715, baseType: !61, size: 32, offset: 2624)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1270, file: !14, line: 716, baseType: !61, size: 32, offset: 2656)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1270, file: !14, line: 717, baseType: !61, size: 32, offset: 2688)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1270, file: !14, line: 719, baseType: !61, size: 32, offset: 2720)
!4628 = !DIDerivedType(tag: DW_TAG_member, scope: !1270, file: !14, line: 721, baseType: !4629, size: 64, offset: 2752)
!4629 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1270, file: !14, line: 721, size: 64, elements: !4630)
!4630 = !{!4631, !4757}
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4629, file: !14, line: 722, baseType: !4632, size: 64)
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4633, size: 64)
!4633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4634)
!4634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !4635)
!4635 = !{!4636, !4637, !4641, !4645, !4649, !4650, !4651, !4657, !4670, !4674, !4678, !4679, !4683, !4684, !4688, !4693, !4694, !4698, !4702, !4708, !4709, !4713, !4714, !4720, !4724, !4725, !4730, !4734, !4738, !4742, !4746, !4747, !4753}
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4634, file: !14, line: 1915, baseType: !1503, size: 64)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4634, file: !14, line: 1916, baseType: !4638, size: 64, offset: 64)
!4638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4639, size: 64)
!4639 = !DISubroutineType(types: !4640)
!4640 = !{!53, !725, !53, !34}
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4634, file: !14, line: 1917, baseType: !4642, size: 64, offset: 128)
!4642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4643, size: 64)
!4643 = !DISubroutineType(types: !4644)
!4644 = !{!1421, !725, !989, !47, !52}
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4634, file: !14, line: 1918, baseType: !4646, size: 64, offset: 192)
!4646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4647, size: 64)
!4647 = !DISubroutineType(types: !4648)
!4648 = !{!1421, !725, !28, !47, !52}
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !4634, file: !14, line: 1919, baseType: !2038, size: 64, offset: 256)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !4634, file: !14, line: 1920, baseType: !2038, size: 64, offset: 320)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !4634, file: !14, line: 1921, baseType: !4652, size: 64, offset: 384)
!4652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4653, size: 64)
!4653 = !DISubroutineType(types: !4654)
!4654 = !{!34, !2041, !4655, !7}
!4655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4656, size: 64)
!4656 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !4634, file: !14, line: 1923, baseType: !4658, size: 64, offset: 448)
!4658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4659, size: 64)
!4659 = !DISubroutineType(types: !4660)
!4660 = !{!34, !725, !4661}
!4661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4662, size: 64)
!4662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !4663)
!4663 = !{!4664, !4669}
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4662, file: !14, line: 1859, baseType: !4665, size: 64)
!4665 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !4666)
!4666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4667, size: 64)
!4667 = !DISubroutineType(types: !4668)
!4668 = !{!901, !4661, !28, !34, !53, !339, !7}
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4662, file: !14, line: 1860, baseType: !53, size: 64, offset: 64)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4634, file: !14, line: 1924, baseType: !4671, size: 64, offset: 512)
!4671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4672, size: 64)
!4672 = !DISubroutineType(types: !4673)
!4673 = !{!2273, !725, !2275}
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4634, file: !14, line: 1925, baseType: !4675, size: 64, offset: 576)
!4675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4676, size: 64)
!4676 = !DISubroutineType(types: !4677)
!4677 = !{!1126, !725, !7, !51}
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4634, file: !14, line: 1926, baseType: !4675, size: 64, offset: 640)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4634, file: !14, line: 1927, baseType: !4680, size: 64, offset: 704)
!4680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4681, size: 64)
!4681 = !DISubroutineType(types: !4682)
!4682 = !{!34, !725, !1749}
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !4634, file: !14, line: 1928, baseType: !51, size: 64, offset: 768)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4634, file: !14, line: 1929, baseType: !4685, size: 64, offset: 832)
!4685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4686, size: 64)
!4686 = !DISubroutineType(types: !4687)
!4687 = !{!34, !1269, !725}
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4634, file: !14, line: 1930, baseType: !4689, size: 64, offset: 896)
!4689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4690, size: 64)
!4690 = !DISubroutineType(types: !4691)
!4691 = !{!34, !725, !4692}
!4692 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !32)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4634, file: !14, line: 1931, baseType: !4685, size: 64, offset: 960)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !4634, file: !14, line: 1932, baseType: !4695, size: 64, offset: 1024)
!4695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4696, size: 64)
!4696 = !DISubroutineType(types: !4697)
!4697 = !{!34, !725, !53, !53, !34}
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !4634, file: !14, line: 1933, baseType: !4699, size: 64, offset: 1088)
!4699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4700, size: 64)
!4700 = !DISubroutineType(types: !4701)
!4701 = !{!34, !34, !725, !34}
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4634, file: !14, line: 1934, baseType: !4703, size: 64, offset: 1152)
!4703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4704, size: 64)
!4704 = !DISubroutineType(types: !4705)
!4705 = !{!34, !725, !34, !4706}
!4706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4707, size: 64)
!4707 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !4634, file: !14, line: 1935, baseType: !722, size: 64, offset: 1216)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !4634, file: !14, line: 1936, baseType: !4710, size: 64, offset: 1280)
!4710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4711, size: 64)
!4711 = !DISubroutineType(types: !4712)
!4712 = !{!34, !34}
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !4634, file: !14, line: 1937, baseType: !4703, size: 64, offset: 1344)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !4634, file: !14, line: 1938, baseType: !4715, size: 64, offset: 1408)
!4715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4716, size: 64)
!4716 = !DISubroutineType(types: !4717)
!4717 = !{!1421, !4718, !725, !52, !47, !7}
!4718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4719, size: 64)
!4719 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !384, line: 59, flags: DIFlagFwdDecl)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !4634, file: !14, line: 1939, baseType: !4721, size: 64, offset: 1472)
!4721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4722, size: 64)
!4722 = !DISubroutineType(types: !4723)
!4723 = !{!1421, !725, !52, !4718, !47, !7}
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !4634, file: !14, line: 1940, baseType: !2094, size: 64, offset: 1536)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !4634, file: !14, line: 1941, baseType: !4726, size: 64, offset: 1600)
!4726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4727, size: 64)
!4727 = !DISubroutineType(types: !4728)
!4728 = !{!34, !725, !34, !4729, !2015}
!4729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4706, size: 64)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !4634, file: !14, line: 1942, baseType: !4731, size: 64, offset: 1664)
!4731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4732, size: 64)
!4732 = !DISubroutineType(types: !4733)
!4733 = !{!1126, !725, !34, !53, !53}
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4634, file: !14, line: 1944, baseType: !4735, size: 64, offset: 1728)
!4735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4736, size: 64)
!4736 = !DISubroutineType(types: !4737)
!4737 = !{null, !2206, !725}
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !4634, file: !14, line: 1948, baseType: !4739, size: 64, offset: 1792)
!4739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4740, size: 64)
!4740 = !DISubroutineType(types: !4741)
!4741 = !{!1421, !725, !53, !725, !53, !47, !7}
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !4634, file: !14, line: 1950, baseType: !4743, size: 64, offset: 1856)
!4743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4744, size: 64)
!4744 = !DISubroutineType(types: !4745)
!4745 = !{!53, !725, !53, !725, !53, !53, !7}
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !4634, file: !14, line: 1953, baseType: !4695, size: 64, offset: 1920)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !4634, file: !14, line: 1954, baseType: !4748, size: 64, offset: 1984)
!4748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4749, size: 64)
!4749 = !DISubroutineType(types: !4750)
!4750 = !{!34, !4751, !7}
!4751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4752, size: 64)
!4752 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !4634, file: !14, line: 1955, baseType: !4754, size: 64, offset: 2048)
!4754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4755, size: 64)
!4755 = !DISubroutineType(types: !4756)
!4756 = !{!34, !4751, !4655, !7}
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4629, file: !14, line: 723, baseType: !4118, size: 64)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1270, file: !14, line: 725, baseType: !4759, size: 64, offset: 2816)
!4759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4760, size: 64)
!4760 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1270, file: !14, line: 726, baseType: !1621, size: 1536, align: 64, offset: 2880)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1270, file: !14, line: 727, baseType: !109, size: 128, offset: 4416)
!4763 = !DIDerivedType(tag: DW_TAG_member, scope: !1270, file: !14, line: 728, baseType: !4764, size: 64, offset: 4544)
!4764 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1270, file: !14, line: 728, size: 64, elements: !4765)
!4765 = !{!4766, !4767, !4770, !4771}
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4764, file: !14, line: 729, baseType: !4718, size: 64)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4764, file: !14, line: 730, baseType: !4768, size: 64)
!4768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4769, size: 64)
!4769 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4764, file: !14, line: 731, baseType: !989, size: 64)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4764, file: !14, line: 732, baseType: !7, size: 32)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1270, file: !14, line: 735, baseType: !394, size: 32, offset: 4608)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1270, file: !14, line: 738, baseType: !394, size: 32, offset: 4640)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1270, file: !14, line: 739, baseType: !4468, size: 64, offset: 4672)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1270, file: !14, line: 750, baseType: !32, size: 64, offset: 4736)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1235, file: !1236, line: 91, baseType: !4777, size: 256, offset: 448)
!4777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 256, elements: !4472)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1235, file: !1236, line: 94, baseType: !4779, size: 64, offset: 704)
!4779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4780, line: 25, size: 64, elements: !4781)
!4780 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!4781 = !{!4782}
!4782 = !DIDerivedType(tag: DW_TAG_member, scope: !4779, file: !4780, line: 26, baseType: !4783, size: 64)
!4783 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4779, file: !4780, line: 26, size: 64, elements: !4784)
!4784 = !{!4785, !4786}
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !4783, file: !4780, line: 28, baseType: !340, size: 64, align: 64)
!4786 = !DIDerivedType(tag: DW_TAG_member, scope: !4783, file: !4780, line: 30, baseType: !4787, size: 64)
!4787 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4783, file: !4780, line: 30, size: 64, elements: !4788)
!4788 = !{!4789, !4790}
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4787, file: !4780, line: 31, baseType: !71, size: 32)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4787, file: !4780, line: 32, baseType: !34, size: 32, offset: 32)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1235, file: !1236, line: 95, baseType: !4487, size: 64, offset: 768)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1235, file: !1236, line: 96, baseType: !1470, size: 64, offset: 832)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1235, file: !1236, line: 97, baseType: !51, size: 64, offset: 896)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1235, file: !1236, line: 98, baseType: !32, size: 64, offset: 960)
!4795 = !DIDerivedType(tag: DW_TAG_member, scope: !1235, file: !1236, line: 100, baseType: !4796, size: 128, offset: 1024)
!4796 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1235, file: !1236, line: 100, size: 128, elements: !4797)
!4797 = !{!4798, !4799}
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4796, file: !1236, line: 101, baseType: !109, size: 128)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4796, file: !1236, line: 102, baseType: !2284, size: 64)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1235, file: !1236, line: 104, baseType: !109, size: 128, offset: 1152)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1235, file: !1236, line: 105, baseType: !109, size: 128, offset: 1280)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1235, file: !1236, line: 113, baseType: !4803, size: 128, offset: 1408)
!4803 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1235, file: !1236, line: 109, size: 128, elements: !4804)
!4804 = !{!4805, !4806, !4807}
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4803, file: !1236, line: 110, baseType: !368, size: 128)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4803, file: !1236, line: 111, baseType: !1245, size: 128)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4803, file: !1236, line: 112, baseType: !733, size: 128, align: 64)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1230, file: !1231, line: 72, baseType: !1470, size: 64, offset: 64)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1230, file: !1231, line: 73, baseType: !34, size: 32, offset: 128)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1230, file: !1231, line: 74, baseType: !1308, size: 64, offset: 192)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1225, file: !1226, line: 10, baseType: !1234, size: 64, offset: 64)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !726, file: !14, line: 1015, baseType: !1269, size: 64, offset: 1344)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !726, file: !14, line: 1016, baseType: !4632, size: 64, offset: 1408)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !726, file: !14, line: 1018, baseType: !339, size: 64, offset: 1472)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !726, file: !14, line: 1020, baseType: !32, size: 64, offset: 1536)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !726, file: !14, line: 1023, baseType: !32, size: 64, offset: 1600)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !726, file: !14, line: 1027, baseType: !363, size: 64, offset: 1664)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !726, file: !14, line: 1029, baseType: !1620, size: 64, offset: 1728)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !726, file: !14, line: 1030, baseType: !2104, size: 32, offset: 1792)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !726, file: !14, line: 1031, baseType: !2104, size: 32, offset: 1824)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !701, file: !126, line: 756, baseType: !51, size: 64, offset: 704)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !701, file: !126, line: 757, baseType: !51, size: 64, offset: 768)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !701, file: !126, line: 760, baseType: !51, size: 64, offset: 832)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !701, file: !126, line: 761, baseType: !51, size: 64, offset: 896)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !701, file: !126, line: 763, baseType: !51, size: 64, offset: 960)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !701, file: !126, line: 764, baseType: !4827, size: 64, offset: 1024)
!4827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4828, size: 64)
!4828 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1764, line: 299, baseType: !4829)
!4829 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1764, line: 299, size: 64, elements: !4830)
!4830 = !{!4831}
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !4829, file: !1764, line: 299, baseType: !4832, size: 64)
!4832 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !346, line: 18, baseType: !51)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !701, file: !126, line: 773, baseType: !61, size: 32, offset: 1088)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !701, file: !126, line: 785, baseType: !61, size: 32, offset: 1120)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !701, file: !126, line: 795, baseType: !4836, size: 64, offset: 1152)
!4836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4837, size: 64)
!4837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !126, line: 726, size: 128, elements: !4838)
!4838 = !{!4839, !4840}
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4837, file: !126, line: 727, baseType: !339, size: 64)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !4837, file: !126, line: 728, baseType: !34, size: 32, offset: 64)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !701, file: !126, line: 801, baseType: !51, size: 64, offset: 1216)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !701, file: !126, line: 804, baseType: !746, size: 64, offset: 1280)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !701, file: !126, line: 806, baseType: !34, size: 32, offset: 1344)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !701, file: !126, line: 808, baseType: !71, size: 32, offset: 1376)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !701, file: !126, line: 823, baseType: !921, size: 320, offset: 1408)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !701, file: !126, line: 825, baseType: !109, size: 128, offset: 1728)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !701, file: !126, line: 845, baseType: !34, size: 32, offset: 1856)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !701, file: !126, line: 849, baseType: !51, size: 64, offset: 1920)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !701, file: !126, line: 850, baseType: !51, size: 64, offset: 1984)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !701, file: !126, line: 852, baseType: !51, size: 64, offset: 2048)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !701, file: !126, line: 853, baseType: !51, size: 64, offset: 2112)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !701, file: !126, line: 854, baseType: !748, size: 64, offset: 2176)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !701, file: !126, line: 855, baseType: !51, size: 64, offset: 2240)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !701, file: !126, line: 856, baseType: !51, size: 64, offset: 2304)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !701, file: !126, line: 857, baseType: !51, size: 64, offset: 2368)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !701, file: !126, line: 858, baseType: !51, size: 64, offset: 2432)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !701, file: !126, line: 865, baseType: !571, size: 32, offset: 2496)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !701, file: !126, line: 867, baseType: !71, size: 32, offset: 2528)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !701, file: !126, line: 869, baseType: !51, size: 64, offset: 2560)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !701, file: !126, line: 869, baseType: !51, size: 64, offset: 2624)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !701, file: !126, line: 869, baseType: !51, size: 64, offset: 2688)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !701, file: !126, line: 869, baseType: !51, size: 64, offset: 2752)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !701, file: !126, line: 870, baseType: !51, size: 64, offset: 2816)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !701, file: !126, line: 870, baseType: !51, size: 64, offset: 2880)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !701, file: !126, line: 870, baseType: !51, size: 64, offset: 2944)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !701, file: !126, line: 871, baseType: !51, size: 64, offset: 3008)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !701, file: !126, line: 871, baseType: !51, size: 64, offset: 3072)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !701, file: !126, line: 871, baseType: !51, size: 64, offset: 3136)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !701, file: !126, line: 871, baseType: !51, size: 64, offset: 3200)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !701, file: !126, line: 873, baseType: !4871, size: 3328, offset: 3264)
!4871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 3328, elements: !4872)
!4872 = !{!4873}
!4873 = !DISubrange(count: 52)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !701, file: !126, line: 875, baseType: !4875, size: 1280, offset: 6592)
!4875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1176, size: 1280, elements: !801)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !701, file: !126, line: 877, baseType: !4877, size: 64, offset: 7872)
!4877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4878, size: 64)
!4878 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !126, line: 877, flags: DIFlagFwdDecl)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !701, file: !126, line: 880, baseType: !4880, size: 1088, offset: 7936)
!4880 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !4881, line: 72, baseType: !4882)
!4881 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!4882 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4881, line: 23, size: 1088, elements: !4883)
!4883 = !{!4884, !4885, !4886, !4887, !4888, !4891, !4892, !4893, !4894, !4919, !4920, !4921}
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !4882, file: !4881, line: 28, baseType: !339, size: 64)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !4882, file: !4881, line: 38, baseType: !748, size: 64, offset: 64)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !4882, file: !4881, line: 40, baseType: !51, size: 64, offset: 128)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !4882, file: !4881, line: 43, baseType: !921, size: 320, offset: 192)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !4882, file: !4881, line: 44, baseType: !4889, size: 64, offset: 512)
!4889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4890, size: 64)
!4890 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !4881, line: 44, flags: DIFlagFwdDecl)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4882, file: !4881, line: 48, baseType: !51, size: 64, offset: 576)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4882, file: !4881, line: 59, baseType: !753, size: 256, offset: 640)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !4882, file: !4881, line: 60, baseType: !32, size: 64, offset: 896)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !4882, file: !4881, line: 61, baseType: !4895, size: 64, offset: 960)
!4895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4896, size: 64)
!4896 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4897)
!4897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !4898, line: 13, size: 1216, elements: !4899)
!4898 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!4899 = !{!4900, !4901, !4902, !4903, !4904, !4905, !4906, !4907, !4908, !4909, !4910, !4911, !4912, !4913, !4914, !4915, !4916, !4917, !4918}
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4897, file: !4898, line: 14, baseType: !32, size: 64)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4897, file: !4898, line: 15, baseType: !51, size: 64, offset: 64)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !4897, file: !4898, line: 17, baseType: !51, size: 64, offset: 128)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !4897, file: !4898, line: 17, baseType: !51, size: 64, offset: 192)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !4897, file: !4898, line: 18, baseType: !51, size: 64, offset: 256)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !4897, file: !4898, line: 18, baseType: !51, size: 64, offset: 320)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !4897, file: !4898, line: 19, baseType: !2143, size: 64, offset: 384)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !4897, file: !4898, line: 21, baseType: !1126, size: 64, offset: 448)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !4897, file: !4898, line: 23, baseType: !1126, size: 64, offset: 512)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !4897, file: !4898, line: 24, baseType: !1126, size: 64, offset: 576)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !4897, file: !4898, line: 25, baseType: !1126, size: 64, offset: 640)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !4897, file: !4898, line: 26, baseType: !1126, size: 64, offset: 704)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !4897, file: !4898, line: 27, baseType: !1126, size: 64, offset: 768)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !4897, file: !4898, line: 28, baseType: !1126, size: 64, offset: 832)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !4897, file: !4898, line: 29, baseType: !1126, size: 64, offset: 896)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !4897, file: !4898, line: 30, baseType: !1126, size: 64, offset: 960)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !4897, file: !4898, line: 31, baseType: !1126, size: 64, offset: 1024)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !4897, file: !4898, line: 32, baseType: !1126, size: 64, offset: 1088)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !4897, file: !4898, line: 33, baseType: !1126, size: 64, offset: 1152)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !4882, file: !4881, line: 63, baseType: !61, size: 32, offset: 1024)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !4882, file: !4881, line: 69, baseType: !105, size: 16, offset: 1056)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !4882, file: !4881, line: 70, baseType: !2462, size: 16, offset: 1072)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !701, file: !126, line: 882, baseType: !51, size: 64, offset: 9024)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !701, file: !126, line: 885, baseType: !71, size: 32, offset: 9088)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !701, file: !126, line: 886, baseType: !4925, size: 64, offset: 9152)
!4925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4926, size: 64)
!4926 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !126, line: 732, flags: DIFlagFwdDecl)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !701, file: !126, line: 901, baseType: !843, size: 64, offset: 9216)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !701, file: !126, line: 904, baseType: !725, size: 64, offset: 9280)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !701, file: !126, line: 906, baseType: !4930, size: 64, offset: 9344)
!4930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4931, size: 64)
!4931 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !126, line: 906, flags: DIFlagFwdDecl)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !701, file: !126, line: 930, baseType: !61, size: 32, offset: 9408)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !701, file: !126, line: 933, baseType: !61, size: 32, offset: 9440)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !701, file: !126, line: 935, baseType: !4935, size: 64, offset: 9472)
!4935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !150, line: 103, size: 64, elements: !4936)
!4936 = !{!4937}
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !4935, file: !150, line: 104, baseType: !4938, size: 64)
!4938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4939, size: 64)
!4939 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !150, line: 101, flags: DIFlagFwdDecl)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !701, file: !126, line: 940, baseType: !746, size: 64, offset: 9536)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !701, file: !126, line: 942, baseType: !1028, size: 256, offset: 9600)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !698, file: !126, line: 986, baseType: !4943, offset: 10240)
!4943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, elements: !361)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !383, file: !384, line: 882, baseType: !697, size: 64, offset: 9792)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !383, file: !384, line: 884, baseType: !34, size: 32, offset: 9856)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !383, file: !384, line: 885, baseType: !34, size: 32, offset: 9888)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !383, file: !384, line: 886, baseType: !34, size: 32, offset: 9920)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !383, file: !384, line: 888, baseType: !34, size: 32, offset: 9952)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !383, file: !384, line: 890, baseType: !51, size: 64, offset: 9984)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !383, file: !384, line: 893, baseType: !7, size: 32, offset: 10048)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !383, file: !384, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !383, file: !384, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !383, file: !384, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !383, file: !384, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !383, file: !384, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !383, file: !384, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !383, file: !384, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !383, file: !384, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !383, file: !384, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !383, file: !384, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !383, file: !384, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !383, file: !384, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !383, file: !384, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !383, file: !384, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !383, file: !384, line: 969, baseType: !51, size: 64, offset: 10176)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !383, file: !384, line: 971, baseType: !4967, size: 448, offset: 10240)
!4967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !120, line: 25, size: 448, elements: !4968)
!4968 = !{!4969, !4970, !4975}
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !4967, file: !120, line: 26, baseType: !51, size: 64)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4967, file: !120, line: 27, baseType: !4971, size: 64, offset: 64)
!4971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4972, size: 64)
!4972 = !DISubroutineType(types: !4973)
!4973 = !{!1126, !4974}
!4974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4967, size: 64)
!4975 = !DIDerivedType(tag: DW_TAG_member, scope: !4967, file: !120, line: 28, baseType: !4976, size: 320, offset: 128)
!4976 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4967, file: !120, line: 28, size: 320, elements: !4977)
!4977 = !{!4978, !4988, !5013}
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !4976, file: !120, line: 37, baseType: !4979, size: 320)
!4979 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4976, file: !120, line: 30, size: 320, elements: !4980)
!4980 = !{!4981, !4983, !4984, !4985, !4986, !4987}
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !4979, file: !120, line: 31, baseType: !4982, size: 64)
!4982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4979, file: !120, line: 32, baseType: !393, size: 32, offset: 64)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4979, file: !120, line: 33, baseType: !393, size: 32, offset: 96)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !4979, file: !120, line: 34, baseType: !393, size: 32, offset: 128)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4979, file: !120, line: 35, baseType: !339, size: 64, offset: 192)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !4979, file: !120, line: 36, baseType: !4982, size: 64, offset: 256)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !4976, file: !120, line: 47, baseType: !4989, size: 192)
!4989 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4976, file: !120, line: 39, size: 192, elements: !4990)
!4990 = !{!4991, !4992, !4993, !5012}
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !4989, file: !120, line: 40, baseType: !563, size: 32)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4989, file: !120, line: 41, baseType: !119, size: 32, offset: 32)
!4993 = !DIDerivedType(tag: DW_TAG_member, scope: !4989, file: !120, line: 42, baseType: !4994, size: 64, offset: 64)
!4994 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4989, file: !120, line: 42, size: 64, elements: !4995)
!4995 = !{!4996, !5004}
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !4994, file: !120, line: 43, baseType: !4997, size: 64)
!4997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4998, size: 64)
!4998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !4999, line: 7, size: 128, elements: !5000)
!4999 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!5000 = !{!5001, !5003}
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4998, file: !4999, line: 8, baseType: !5002, size: 64)
!5002 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !49, line: 93, baseType: !55)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4998, file: !4999, line: 9, baseType: !55, size: 64, offset: 64)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !4994, file: !120, line: 44, baseType: !5005, size: 64)
!5005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5006, size: 64)
!5006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !5007, line: 7, size: 64, elements: !5008)
!5007 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!5008 = !{!5009, !5011}
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5006, file: !5007, line: 8, baseType: !5010, size: 32)
!5010 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !5007, line: 5, baseType: !913)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5006, file: !5007, line: 9, baseType: !913, size: 32, offset: 32)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4989, file: !120, line: 46, baseType: !339, size: 64, offset: 128)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4976, file: !120, line: 55, baseType: !5014, size: 256)
!5014 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4976, file: !120, line: 49, size: 256, elements: !5015)
!5015 = !{!5016, !5024, !5025, !5026, !5027}
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !5014, file: !120, line: 50, baseType: !5017, size: 64)
!5017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5018, size: 64)
!5018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !5019, line: 36, size: 64, elements: !5020)
!5019 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!5020 = !{!5021, !5022, !5023}
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !5018, file: !5019, line: 37, baseType: !34, size: 32)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !5018, file: !5019, line: 38, baseType: !949, size: 16, offset: 32)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !5018, file: !5019, line: 39, baseType: !949, size: 16, offset: 48)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !5014, file: !120, line: 51, baseType: !34, size: 32, offset: 64)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !5014, file: !120, line: 52, baseType: !34, size: 32, offset: 96)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5014, file: !120, line: 53, baseType: !51, size: 64, offset: 128)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5014, file: !120, line: 54, baseType: !51, size: 64, offset: 192)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !383, file: !384, line: 973, baseType: !5029, size: 32, offset: 10688)
!5029 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !37, line: 27, baseType: !5030)
!5030 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !49, line: 28, baseType: !34)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !383, file: !384, line: 974, baseType: !5029, size: 32, offset: 10720)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !383, file: !384, line: 978, baseType: !51, size: 64, offset: 10752)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !383, file: !384, line: 987, baseType: !382, size: 64, offset: 10816)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !383, file: !384, line: 990, baseType: !382, size: 64, offset: 10880)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !383, file: !384, line: 995, baseType: !109, size: 128, offset: 10944)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !383, file: !384, line: 996, baseType: !109, size: 128, offset: 11072)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !383, file: !384, line: 997, baseType: !382, size: 64, offset: 11200)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !383, file: !384, line: 1005, baseType: !109, size: 128, offset: 11264)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !383, file: !384, line: 1006, baseType: !109, size: 128, offset: 11392)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !383, file: !384, line: 1009, baseType: !793, size: 64, offset: 11520)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !383, file: !384, line: 1010, baseType: !5042, size: 512, offset: 11584)
!5042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 512, elements: !801)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !383, file: !384, line: 1011, baseType: !109, size: 128, offset: 12096)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !383, file: !384, line: 1012, baseType: !109, size: 128, offset: 12224)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !383, file: !384, line: 1014, baseType: !1066, size: 64, offset: 12352)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !383, file: !384, line: 1017, baseType: !2455, size: 64, offset: 12416)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !383, file: !384, line: 1020, baseType: !2455, size: 64, offset: 12480)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !383, file: !384, line: 1023, baseType: !32, size: 64, offset: 12544)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !383, file: !384, line: 1025, baseType: !339, size: 64, offset: 12608)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !383, file: !384, line: 1026, baseType: !339, size: 64, offset: 12672)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !383, file: !384, line: 1031, baseType: !339, size: 64, offset: 12736)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !383, file: !384, line: 1032, baseType: !3894, size: 192, offset: 12800)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !383, file: !384, line: 1041, baseType: !51, size: 64, offset: 12992)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !383, file: !384, line: 1042, baseType: !51, size: 64, offset: 13056)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !383, file: !384, line: 1045, baseType: !339, size: 64, offset: 13120)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !383, file: !384, line: 1048, baseType: !339, size: 64, offset: 13184)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !383, file: !384, line: 1051, baseType: !51, size: 64, offset: 13248)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !383, file: !384, line: 1052, baseType: !51, size: 64, offset: 13312)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !383, file: !384, line: 1055, baseType: !5060, size: 640, offset: 13376)
!5060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !5061, line: 132, size: 640, elements: !5062)
!5061 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!5062 = !{!5063, !5069, !5070}
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !5060, file: !5061, line: 133, baseType: !5064, size: 576)
!5064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5065, size: 576, elements: !789)
!5065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !5061, line: 117, size: 192, elements: !5066)
!5066 = !{!5067, !5068}
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !5065, file: !5061, line: 118, baseType: !339, size: 64)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !5065, file: !5061, line: 119, baseType: !577, size: 128, offset: 64)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !5060, file: !5061, line: 134, baseType: !7, size: 32, offset: 576)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !5060, file: !5061, line: 135, baseType: !7, size: 32, offset: 608)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !383, file: !384, line: 1058, baseType: !5072, size: 448, offset: 14016)
!5072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !5061, line: 144, size: 448, elements: !5073)
!5073 = !{!5074, !5075, !5076}
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5072, file: !5061, line: 145, baseType: !733, size: 128, align: 64)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5072, file: !5061, line: 146, baseType: !753, size: 256, offset: 128)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !5072, file: !5061, line: 147, baseType: !7, size: 32, offset: 384)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !383, file: !384, line: 1064, baseType: !1138, size: 64, offset: 14464)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !383, file: !384, line: 1067, baseType: !1138, size: 64, offset: 14528)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !383, file: !384, line: 1070, baseType: !1138, size: 64, offset: 14592)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !383, file: !384, line: 1074, baseType: !905, size: 64, offset: 14656)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !383, file: !384, line: 1084, baseType: !5082, size: 128, offset: 14720)
!5082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 128, elements: !4481)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !383, file: !384, line: 1086, baseType: !5084, size: 64, offset: 14848)
!5084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5085, size: 64)
!5085 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !384, line: 55, flags: DIFlagFwdDecl)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !383, file: !384, line: 1089, baseType: !5087, size: 64, offset: 14912)
!5087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !5088, line: 12, size: 64, elements: !5089)
!5088 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!5089 = !{!5090}
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !5087, file: !5088, line: 13, baseType: !5091, size: 64)
!5091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5092, size: 64)
!5092 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !5088, line: 8, flags: DIFlagFwdDecl)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !383, file: !384, line: 1090, baseType: !5094, size: 128, offset: 14976)
!5094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !5095, line: 13, size: 128, elements: !5096)
!5095 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!5096 = !{!5097}
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !5094, file: !5095, line: 14, baseType: !109, size: 128)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !383, file: !384, line: 1097, baseType: !5099, size: 64, offset: 15104)
!5099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5100, size: 64)
!5100 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !384, line: 50, flags: DIFlagFwdDecl)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !383, file: !384, line: 1100, baseType: !5102, size: 64, offset: 15168)
!5102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5103, size: 64)
!5103 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !384, line: 1100, flags: DIFlagFwdDecl)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !383, file: !384, line: 1103, baseType: !5105, size: 64, offset: 15232)
!5105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5106, size: 64)
!5106 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !384, line: 53, flags: DIFlagFwdDecl)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !383, file: !384, line: 1107, baseType: !5108, size: 64, offset: 15296)
!5108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5109, size: 64)
!5109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !5110, line: 31, size: 576, elements: !5111)
!5110 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!5111 = !{!5112, !5113, !5116, !5119, !5122, !5123, !5126, !5129, !5130}
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5109, file: !5110, line: 32, baseType: !399, size: 32)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !5109, file: !5110, line: 33, baseType: !5114, size: 64, offset: 64)
!5114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5115, size: 64)
!5115 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !5110, line: 9, flags: DIFlagFwdDecl)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !5109, file: !5110, line: 34, baseType: !5117, size: 64, offset: 128)
!5117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5118, size: 64)
!5118 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !5110, line: 10, flags: DIFlagFwdDecl)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !5109, file: !5110, line: 35, baseType: !5120, size: 64, offset: 192)
!5120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5121, size: 64)
!5121 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !5110, line: 8, flags: DIFlagFwdDecl)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !5109, file: !5110, line: 36, baseType: !812, size: 64, offset: 256)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !5109, file: !5110, line: 37, baseType: !5124, size: 64, offset: 320)
!5124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5125, size: 64)
!5125 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !907, line: 34, flags: DIFlagFwdDecl)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !5109, file: !5110, line: 38, baseType: !5127, size: 64, offset: 384)
!5127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5128, size: 64)
!5128 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !5110, line: 38, flags: DIFlagFwdDecl)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !5109, file: !5110, line: 39, baseType: !5127, size: 64, offset: 448)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !5109, file: !5110, line: 40, baseType: !5131, size: 64, offset: 512)
!5131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5132, size: 64)
!5132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !5133, line: 771, size: 384, elements: !5134)
!5133 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!5134 = !{!5135, !5136, !5137, !5138}
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !5132, file: !5133, line: 772, baseType: !889, size: 192)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !5132, file: !5133, line: 773, baseType: !843, size: 64, offset: 192)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !5132, file: !5133, line: 774, baseType: !1111, size: 64, offset: 256)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !5132, file: !5133, line: 775, baseType: !3964, size: 64, offset: 320)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !383, file: !384, line: 1110, baseType: !5140, size: 64, offset: 15360)
!5140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5141, size: 64)
!5141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !5142, line: 93, size: 8768, elements: !5143)
!5142 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!5143 = !{!5144, !5145, !5146, !5147, !5148, !5149, !5150, !5151, !5162, !5163, !5164, !5165, !5166, !5167, !5168, !5180, !5181, !5182, !5183, !5184, !5185, !5186, !5192, !5201, !5202, !5204, !5205, !5206, !5209, !5215, !5216, !5217, !5218, !5219, !5220, !5221, !5222, !5223, !5224, !5225, !5226, !5227, !5228, !5229, !5230, !5231, !5232, !5233, !5234, !5235, !5236, !5247, !5248, !5255, !5265, !5327, !5328, !5331, !5332, !5333, !5334, !5335, !5336}
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !5141, file: !5142, line: 94, baseType: !399, size: 32)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !5141, file: !5142, line: 95, baseType: !61, size: 32, offset: 32)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5141, file: !5142, line: 96, baseType: !34, size: 32, offset: 64)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !5141, file: !5142, line: 97, baseType: !34, size: 32, offset: 96)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !5141, file: !5142, line: 98, baseType: !109, size: 128, offset: 128)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !5141, file: !5142, line: 100, baseType: !66, size: 192, offset: 256)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !5141, file: !5142, line: 103, baseType: !382, size: 64, offset: 448)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !5141, file: !5142, line: 106, baseType: !5152, size: 192, offset: 512)
!5152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !5153, line: 32, size: 192, elements: !5154)
!5153 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!5154 = !{!5155, !5156}
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5152, file: !5153, line: 33, baseType: !109, size: 128)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !5152, file: !5153, line: 34, baseType: !5157, size: 64, offset: 128)
!5157 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !5158, line: 25, baseType: !5159)
!5158 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!5159 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5158, line: 23, size: 64, elements: !5160)
!5160 = !{!5161}
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !5159, file: !5158, line: 24, baseType: !648, size: 64)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !5141, file: !5142, line: 109, baseType: !364, size: 64, offset: 704)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !5141, file: !5142, line: 112, baseType: !34, size: 32, offset: 768)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !5141, file: !5142, line: 114, baseType: !34, size: 32, offset: 800)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !5141, file: !5142, line: 115, baseType: !382, size: 64, offset: 832)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !5141, file: !5142, line: 118, baseType: !34, size: 32, offset: 896)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5141, file: !5142, line: 119, baseType: !7, size: 32, offset: 928)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !5141, file: !5142, line: 121, baseType: !5169, size: 64, offset: 960)
!5169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5170, size: 64)
!5170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !5142, line: 80, size: 448, elements: !5171)
!5171 = !{!5172, !5173, !5179}
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5170, file: !5142, line: 81, baseType: !61, size: 32)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !5170, file: !5142, line: 82, baseType: !5174, size: 128, offset: 64)
!5174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !5142, line: 75, size: 128, elements: !5175)
!5175 = !{!5176, !5177}
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !5174, file: !5142, line: 76, baseType: !382, size: 64)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5174, file: !5142, line: 77, baseType: !5178, size: 64, offset: 64)
!5178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5174, size: 64)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !5170, file: !5142, line: 83, baseType: !1067, size: 256, offset: 192)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !5141, file: !5142, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !5141, file: !5142, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !5141, file: !5142, line: 138, baseType: !7, size: 32, offset: 1056)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !5141, file: !5142, line: 139, baseType: !109, size: 128, offset: 1088)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !5141, file: !5142, line: 142, baseType: !515, size: 512, offset: 1216)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !5141, file: !5142, line: 143, baseType: !523, size: 64, offset: 1728)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !5141, file: !5142, line: 150, baseType: !5187, size: 256, offset: 1792)
!5187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5188, size: 256, elements: !2445)
!5188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !5142, line: 38, size: 128, elements: !5189)
!5189 = !{!5190, !5191}
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !5188, file: !5142, line: 39, baseType: !339, size: 64)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !5188, file: !5142, line: 40, baseType: !339, size: 64, offset: 64)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !5141, file: !5142, line: 156, baseType: !5193, size: 192, offset: 2048)
!5193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !5142, line: 66, size: 192, elements: !5194)
!5194 = !{!5195}
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !5193, file: !5142, line: 67, baseType: !5196, size: 192)
!5196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !5142, line: 47, size: 192, elements: !5197)
!5197 = !{!5198, !5199, !5200}
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5196, file: !5142, line: 48, baseType: !748, size: 64)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5196, file: !5142, line: 49, baseType: !748, size: 64, offset: 64)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !5196, file: !5142, line: 50, baseType: !748, size: 64, offset: 128)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !5141, file: !5142, line: 160, baseType: !5060, size: 640, offset: 2240)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !5141, file: !5142, line: 163, baseType: !5203, size: 256, offset: 2880)
!5203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !793, size: 256, elements: !801)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !5141, file: !5142, line: 169, baseType: !793, size: 64, offset: 3136)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !5141, file: !5142, line: 172, baseType: !34, size: 32, offset: 3200)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !5141, file: !5142, line: 174, baseType: !5207, size: 64, offset: 3264)
!5207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5208, size: 64)
!5208 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !5142, line: 174, flags: DIFlagFwdDecl)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !5141, file: !5142, line: 185, baseType: !5210, size: 64, offset: 3328)
!5210 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !567, line: 860, baseType: !5211)
!5211 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !567, line: 853, size: 64, elements: !5212)
!5212 = !{!5213, !5214}
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !5211, file: !567, line: 858, baseType: !1240, size: 32)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5211, file: !567, line: 859, baseType: !71, size: 32, offset: 32)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5141, file: !5142, line: 186, baseType: !339, size: 64, offset: 3392)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5141, file: !5142, line: 186, baseType: !339, size: 64, offset: 3456)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !5141, file: !5142, line: 186, baseType: !339, size: 64, offset: 3520)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !5141, file: !5142, line: 186, baseType: !339, size: 64, offset: 3584)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !5141, file: !5142, line: 187, baseType: !339, size: 64, offset: 3648)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !5141, file: !5142, line: 188, baseType: !339, size: 64, offset: 3712)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !5141, file: !5142, line: 189, baseType: !3894, size: 192, offset: 3776)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5141, file: !5142, line: 190, baseType: !51, size: 64, offset: 3968)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5141, file: !5142, line: 190, baseType: !51, size: 64, offset: 4032)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !5141, file: !5142, line: 190, baseType: !51, size: 64, offset: 4096)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !5141, file: !5142, line: 190, baseType: !51, size: 64, offset: 4160)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !5141, file: !5142, line: 191, baseType: !51, size: 64, offset: 4224)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !5141, file: !5142, line: 191, baseType: !51, size: 64, offset: 4288)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !5141, file: !5142, line: 191, baseType: !51, size: 64, offset: 4352)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !5141, file: !5142, line: 191, baseType: !51, size: 64, offset: 4416)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !5141, file: !5142, line: 192, baseType: !51, size: 64, offset: 4480)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !5141, file: !5142, line: 192, baseType: !51, size: 64, offset: 4544)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !5141, file: !5142, line: 192, baseType: !51, size: 64, offset: 4608)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !5141, file: !5142, line: 192, baseType: !51, size: 64, offset: 4672)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !5141, file: !5142, line: 193, baseType: !51, size: 64, offset: 4736)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !5141, file: !5142, line: 193, baseType: !51, size: 64, offset: 4800)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !5141, file: !5142, line: 194, baseType: !5237, size: 448, offset: 4864)
!5237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !5238, line: 12, size: 448, elements: !5239)
!5238 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!5239 = !{!5240, !5241, !5242, !5243, !5244, !5245, !5246}
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !5237, file: !5238, line: 15, baseType: !339, size: 64)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !5237, file: !5238, line: 17, baseType: !339, size: 64, offset: 64)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !5237, file: !5238, line: 19, baseType: !339, size: 64, offset: 128)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !5237, file: !5238, line: 21, baseType: !339, size: 64, offset: 192)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5237, file: !5238, line: 29, baseType: !339, size: 64, offset: 256)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5237, file: !5238, line: 35, baseType: !339, size: 64, offset: 320)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5237, file: !5238, line: 44, baseType: !339, size: 64, offset: 384)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !5141, file: !5142, line: 202, baseType: !341, size: 64, offset: 5312)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !5141, file: !5142, line: 213, baseType: !5249, size: 2048, offset: 5376)
!5249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5250, size: 2048, elements: !4481)
!5250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !5251, line: 43, size: 128, elements: !5252)
!5251 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!5252 = !{!5253, !5254}
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !5250, file: !5251, line: 44, baseType: !50, size: 64)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !5250, file: !5251, line: 45, baseType: !50, size: 64, offset: 64)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !5141, file: !5142, line: 216, baseType: !5256, size: 448, offset: 7424)
!5256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !5142, line: 30, size: 448, elements: !5257)
!5257 = !{!5258, !5259, !5260, !5261, !5262, !5263, !5264}
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5256, file: !5142, line: 31, baseType: !34, size: 32)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5256, file: !5142, line: 32, baseType: !1126, size: 64, offset: 64)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !5256, file: !5142, line: 33, baseType: !51, size: 64, offset: 128)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5256, file: !5142, line: 34, baseType: !339, size: 64, offset: 192)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5256, file: !5142, line: 34, baseType: !339, size: 64, offset: 256)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5256, file: !5142, line: 35, baseType: !51, size: 64, offset: 320)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5256, file: !5142, line: 35, baseType: !51, size: 64, offset: 384)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !5141, file: !5142, line: 219, baseType: !5266, size: 64, offset: 7872)
!5266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5267, size: 64)
!5267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !5268, line: 41, size: 3456, elements: !5269)
!5268 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!5269 = !{!5270, !5271, !5272, !5273, !5274, !5275, !5276, !5277, !5278, !5279, !5280, !5281, !5282, !5283, !5284, !5286, !5287, !5288, !5289, !5290, !5291, !5292, !5293, !5294, !5295, !5296, !5297, !5298, !5299, !5300, !5301, !5302, !5303, !5304, !5305, !5306, !5307, !5308, !5309, !5310, !5311, !5312, !5313, !5314, !5315, !5316, !5317, !5318, !5319, !5320, !5321, !5322, !5323, !5324, !5325, !5326}
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !5267, file: !5268, line: 47, baseType: !106, size: 16)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5267, file: !5268, line: 48, baseType: !394, size: 32, offset: 32)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5267, file: !5268, line: 54, baseType: !97, size: 8, offset: 64)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !5267, file: !5268, line: 55, baseType: !97, size: 8, offset: 72)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !5267, file: !5268, line: 73, baseType: !340, size: 64, align: 64, offset: 128)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !5267, file: !5268, line: 74, baseType: !340, size: 64, offset: 192)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !5267, file: !5268, line: 81, baseType: !340, size: 64, offset: 256)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !5267, file: !5268, line: 82, baseType: !340, size: 64, offset: 320)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !5267, file: !5268, line: 85, baseType: !340, size: 64, offset: 384)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !5267, file: !5268, line: 86, baseType: !340, size: 64, offset: 448)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !5267, file: !5268, line: 94, baseType: !340, size: 64, offset: 512)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !5267, file: !5268, line: 102, baseType: !340, size: 64, offset: 576)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !5267, file: !5268, line: 107, baseType: !4471, size: 256, offset: 640)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !5267, file: !5268, line: 108, baseType: !97, size: 8, align: 64, offset: 896)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !5267, file: !5268, line: 110, baseType: !5285, size: 24, offset: 904)
!5285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 24, elements: !789)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !5267, file: !5268, line: 111, baseType: !394, size: 32, align: 64, offset: 960)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !5267, file: !5268, line: 113, baseType: !394, size: 32, offset: 992)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !5267, file: !5268, line: 114, baseType: !394, size: 32, offset: 1024)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !5267, file: !5268, line: 115, baseType: !394, size: 32, offset: 1056)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !5267, file: !5268, line: 117, baseType: !394, size: 32, offset: 1088)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !5267, file: !5268, line: 118, baseType: !340, size: 64, align: 64, offset: 1152)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5267, file: !5268, line: 120, baseType: !340, size: 64, offset: 1216)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5267, file: !5268, line: 121, baseType: !340, size: 64, offset: 1280)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5267, file: !5268, line: 122, baseType: !340, size: 64, offset: 1344)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5267, file: !5268, line: 123, baseType: !340, size: 64, offset: 1408)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !5267, file: !5268, line: 133, baseType: !340, size: 64, offset: 1472)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !5267, file: !5268, line: 137, baseType: !340, size: 64, offset: 1536)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !5267, file: !5268, line: 142, baseType: !340, size: 64, offset: 1600)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !5267, file: !5268, line: 143, baseType: !340, size: 64, offset: 1664)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !5267, file: !5268, line: 146, baseType: !340, size: 64, offset: 1728)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !5267, file: !5268, line: 147, baseType: !340, size: 64, offset: 1792)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !5267, file: !5268, line: 148, baseType: !340, size: 64, offset: 1856)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !5267, file: !5268, line: 149, baseType: !340, size: 64, offset: 1920)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5267, file: !5268, line: 154, baseType: !340, size: 64, offset: 1984)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5267, file: !5268, line: 155, baseType: !340, size: 64, offset: 2048)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5267, file: !5268, line: 156, baseType: !340, size: 64, offset: 2112)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5267, file: !5268, line: 158, baseType: !340, size: 64, offset: 2176)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5267, file: !5268, line: 159, baseType: !340, size: 64, offset: 2240)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !5267, file: !5268, line: 162, baseType: !340, size: 64, offset: 2304)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !5267, file: !5268, line: 163, baseType: !340, size: 64, offset: 2368)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !5267, file: !5268, line: 164, baseType: !340, size: 64, offset: 2432)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !5267, file: !5268, line: 167, baseType: !340, size: 64, offset: 2496)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !5267, file: !5268, line: 168, baseType: !340, size: 64, offset: 2560)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !5267, file: !5268, line: 171, baseType: !340, size: 64, offset: 2624)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !5267, file: !5268, line: 172, baseType: !340, size: 64, offset: 2688)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !5267, file: !5268, line: 175, baseType: !340, size: 64, offset: 2752)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !5267, file: !5268, line: 178, baseType: !340, size: 64, offset: 2816)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !5267, file: !5268, line: 179, baseType: !340, size: 64, offset: 2880)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !5267, file: !5268, line: 182, baseType: !394, size: 32, offset: 2944)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !5267, file: !5268, line: 186, baseType: !340, size: 64, align: 64, offset: 3008)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !5267, file: !5268, line: 194, baseType: !340, size: 64, offset: 3072)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !5267, file: !5268, line: 195, baseType: !340, size: 64, offset: 3136)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !5267, file: !5268, line: 199, baseType: !340, size: 64, offset: 3200)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !5267, file: !5268, line: 200, baseType: !340, size: 64, offset: 3264)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !5267, file: !5268, line: 203, baseType: !340, size: 64, offset: 3328)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !5267, file: !5268, line: 204, baseType: !340, size: 64, offset: 3392)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !5141, file: !5142, line: 222, baseType: !7, size: 32, offset: 7936)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !5141, file: !5142, line: 223, baseType: !5329, size: 64, offset: 8000)
!5329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5330, size: 64)
!5330 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !5142, line: 223, flags: DIFlagFwdDecl)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !5141, file: !5142, line: 230, baseType: !901, size: 8, offset: 8064)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !5141, file: !5142, line: 231, baseType: !949, size: 16, offset: 8080)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !5141, file: !5142, line: 232, baseType: !949, size: 16, offset: 8096)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !5141, file: !5142, line: 234, baseType: !697, size: 64, offset: 8128)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !5141, file: !5142, line: 237, baseType: !753, size: 256, offset: 8192)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !5141, file: !5142, line: 243, baseType: !921, size: 320, offset: 8448)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !383, file: !384, line: 1111, baseType: !5338, size: 64, offset: 15424)
!5338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5339, size: 64)
!5339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !5142, line: 20, size: 16640, elements: !5340)
!5340 = !{!5341, !5342, !5343, !5344}
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !5339, file: !5142, line: 21, baseType: !71, size: 32)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5339, file: !5142, line: 22, baseType: !399, size: 32, offset: 32)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !5339, file: !5142, line: 23, baseType: !66, size: 192, offset: 64)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !5339, file: !5142, line: 24, baseType: !5345, size: 16384, offset: 256)
!5345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5346, size: 16384, elements: !1559)
!5346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !5153, line: 51, size: 256, elements: !5347)
!5347 = !{!5348}
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !5346, file: !5153, line: 52, baseType: !5349, size: 256)
!5349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !5153, line: 37, size: 256, elements: !5350)
!5350 = !{!5351, !5358, !5359, !5363}
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !5349, file: !5153, line: 39, baseType: !5352, size: 64)
!5352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !5353, line: 83, baseType: !5354)
!5353 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!5354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5355, size: 64)
!5355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !5353, line: 82, baseType: !5356)
!5356 = !DISubroutineType(types: !5357)
!5357 = !{null, !34}
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !5349, file: !5153, line: 40, baseType: !51, size: 64, offset: 64)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !5349, file: !5153, line: 46, baseType: !5360, size: 64, offset: 128)
!5360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !5353, line: 86, baseType: !5361)
!5361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5362, size: 64)
!5362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !5353, line: 85, baseType: !2730)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !5349, file: !5153, line: 48, baseType: !5157, size: 64, offset: 192)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !383, file: !384, line: 1112, baseType: !5157, size: 64, offset: 15488)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !383, file: !384, line: 1113, baseType: !5157, size: 64, offset: 15552)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !383, file: !384, line: 1115, baseType: !5157, size: 64, offset: 15616)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !383, file: !384, line: 1116, baseType: !5152, size: 192, offset: 15680)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !383, file: !384, line: 1117, baseType: !51, size: 64, offset: 15872)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !383, file: !384, line: 1118, baseType: !47, size: 64, offset: 15936)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !383, file: !384, line: 1119, baseType: !7, size: 32, offset: 16000)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !383, file: !384, line: 1121, baseType: !736, size: 64, offset: 16064)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !383, file: !384, line: 1125, baseType: !5373, size: 64, offset: 16128)
!5373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5374, size: 64)
!5374 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !384, line: 43, flags: DIFlagFwdDecl)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !383, file: !384, line: 1127, baseType: !874, size: 32, offset: 16192)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !383, file: !384, line: 1128, baseType: !7, size: 32, offset: 16224)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !383, file: !384, line: 1130, baseType: !5378, size: 128, offset: 16256)
!5378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !5379, line: 37, size: 128, elements: !5380)
!5379 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!5380 = !{!5381, !5382, !5383}
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5378, file: !5379, line: 38, baseType: !34, size: 32)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !5378, file: !5379, line: 39, baseType: !61, size: 32, offset: 32)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !5378, file: !5379, line: 40, baseType: !5384, size: 64, offset: 64)
!5384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5385, size: 64)
!5385 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !5379, line: 24, flags: DIFlagFwdDecl)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !383, file: !384, line: 1131, baseType: !5387, size: 256, offset: 16384)
!5387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !5388, line: 12, size: 256, elements: !5389)
!5388 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!5389 = !{!5390, !5391, !5392, !5393}
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !5387, file: !5388, line: 13, baseType: !989, size: 64)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5387, file: !5388, line: 14, baseType: !51, size: 64, offset: 64)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5387, file: !5388, line: 15, baseType: !51, size: 64, offset: 128)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !5387, file: !5388, line: 16, baseType: !901, size: 8, offset: 192)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !383, file: !384, line: 1134, baseType: !339, size: 64, offset: 16640)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !383, file: !384, line: 1135, baseType: !339, size: 64, offset: 16704)
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !383, file: !384, line: 1138, baseType: !71, size: 32, offset: 16768)
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !383, file: !384, line: 1141, baseType: !540, size: 32, offset: 16800)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !383, file: !384, line: 1143, baseType: !5399, size: 64, offset: 16832)
!5399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !384, line: 735, size: 64, elements: !5400)
!5400 = !{!5401}
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5399, file: !384, line: 736, baseType: !5402, size: 64)
!5402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5399, size: 64)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !383, file: !384, line: 1147, baseType: !580, size: 128, offset: 16896)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !383, file: !384, line: 1149, baseType: !382, size: 64, offset: 17024)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !383, file: !384, line: 1151, baseType: !5406, size: 64, offset: 17088)
!5406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5407, size: 64)
!5407 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !384, line: 1151, flags: DIFlagFwdDecl)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !383, file: !384, line: 1188, baseType: !32, size: 64, offset: 17152)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !383, file: !384, line: 1191, baseType: !5410, size: 64, offset: 17216)
!5410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5411, size: 64)
!5411 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !384, line: 44, flags: DIFlagFwdDecl)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !383, file: !384, line: 1194, baseType: !5413, size: 64, offset: 17280)
!5413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5414, size: 64)
!5414 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !384, line: 45, flags: DIFlagFwdDecl)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !383, file: !384, line: 1197, baseType: !5416, size: 64, offset: 17344)
!5416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5417, size: 64)
!5417 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !384, line: 61, flags: DIFlagFwdDecl)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !383, file: !384, line: 1199, baseType: !5419, size: 64, offset: 17408)
!5419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5420, size: 64)
!5420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !5421, line: 99, size: 128, elements: !5422)
!5421 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!5422 = !{!5423, !5424, !5425}
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5420, file: !5421, line: 100, baseType: !746, size: 64)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !5420, file: !5421, line: 101, baseType: !61, size: 32, offset: 64)
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !5420, file: !5421, line: 103, baseType: !38, size: 16, offset: 96)
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !383, file: !384, line: 1202, baseType: !5427, size: 64, offset: 17472)
!5427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5428, size: 64)
!5428 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !384, line: 48, flags: DIFlagFwdDecl)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !383, file: !384, line: 1205, baseType: !51, size: 64, offset: 17536)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !383, file: !384, line: 1206, baseType: !5431, size: 64, offset: 17600)
!5431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5432, size: 64)
!5432 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !5153, line: 14, baseType: !5433)
!5433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !5153, line: 12, size: 384, elements: !5434)
!5434 = !{!5435}
!5435 = !DIDerivedType(tag: DW_TAG_member, scope: !5433, file: !5153, line: 13, baseType: !5436, size: 384)
!5436 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5433, file: !5153, line: 13, size: 384, elements: !5437)
!5437 = !{!5438, !5439, !5440, !5441}
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !5436, file: !5153, line: 13, baseType: !34, size: 32)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !5436, file: !5153, line: 13, baseType: !34, size: 32, offset: 32)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !5436, file: !5153, line: 13, baseType: !34, size: 32, offset: 64)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !5436, file: !5153, line: 13, baseType: !5442, size: 256, offset: 128)
!5442 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !5443, line: 37, size: 256, elements: !5444)
!5443 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!5444 = !{!5445, !5450, !5463, !5469, !5478, !5505, !5510}
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !5442, file: !5443, line: 42, baseType: !5446, size: 64)
!5446 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5442, file: !5443, line: 39, size: 64, elements: !5447)
!5447 = !{!5448, !5449}
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5446, file: !5443, line: 40, baseType: !5030, size: 32)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5446, file: !5443, line: 41, baseType: !880, size: 32, offset: 32)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !5442, file: !5443, line: 50, baseType: !5451, size: 192)
!5451 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5442, file: !5443, line: 45, size: 192, elements: !5452)
!5452 = !{!5453, !5455, !5456, !5462}
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !5451, file: !5443, line: 46, baseType: !5454, size: 32)
!5454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !49, line: 95, baseType: !34)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !5451, file: !5443, line: 47, baseType: !34, size: 32, offset: 32)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5451, file: !5443, line: 48, baseType: !5457, size: 64, offset: 64)
!5457 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !5443, line: 11, baseType: !5458)
!5458 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !5443, line: 8, size: 64, elements: !5459)
!5459 = !{!5460, !5461}
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !5458, file: !5443, line: 9, baseType: !34, size: 32)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !5458, file: !5443, line: 10, baseType: !32, size: 64)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !5451, file: !5443, line: 49, baseType: !34, size: 32, offset: 128)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !5442, file: !5443, line: 57, baseType: !5464, size: 128)
!5464 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5442, file: !5443, line: 53, size: 128, elements: !5465)
!5465 = !{!5466, !5467, !5468}
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5464, file: !5443, line: 54, baseType: !5030, size: 32)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5464, file: !5443, line: 55, baseType: !880, size: 32, offset: 32)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5464, file: !5443, line: 56, baseType: !5457, size: 64, offset: 64)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !5442, file: !5443, line: 66, baseType: !5470, size: 256)
!5470 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5442, file: !5443, line: 60, size: 256, elements: !5471)
!5471 = !{!5472, !5473, !5474, !5475, !5477}
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5470, file: !5443, line: 61, baseType: !5030, size: 32)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5470, file: !5443, line: 62, baseType: !880, size: 32, offset: 32)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !5470, file: !5443, line: 63, baseType: !34, size: 32, offset: 64)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !5470, file: !5443, line: 64, baseType: !5476, size: 64, offset: 128)
!5476 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !49, line: 94, baseType: !1423)
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !5470, file: !5443, line: 65, baseType: !5476, size: 64, offset: 192)
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !5442, file: !5443, line: 105, baseType: !5479, size: 256)
!5479 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5442, file: !5443, line: 69, size: 256, elements: !5480)
!5480 = !{!5481, !5482}
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !5479, file: !5443, line: 70, baseType: !32, size: 64)
!5482 = !DIDerivedType(tag: DW_TAG_member, scope: !5479, file: !5443, line: 79, baseType: !5483, size: 192, offset: 64)
!5483 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5479, file: !5443, line: 79, size: 192, elements: !5484)
!5484 = !{!5485, !5486, !5487, !5494, !5499}
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !5483, file: !5443, line: 81, baseType: !34, size: 32)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !5483, file: !5443, line: 86, baseType: !949, size: 16)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !5483, file: !5443, line: 92, baseType: !5488, size: 192)
!5488 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5483, file: !5443, line: 88, size: 192, elements: !5489)
!5489 = !{!5490, !5492, !5493}
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !5488, file: !5443, line: 89, baseType: !5491, size: 64)
!5491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 64, elements: !559)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !5488, file: !5443, line: 90, baseType: !32, size: 64, offset: 64)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !5488, file: !5443, line: 91, baseType: !32, size: 64, offset: 128)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !5483, file: !5443, line: 97, baseType: !5495, size: 96)
!5495 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5483, file: !5443, line: 94, size: 96, elements: !5496)
!5496 = !{!5497, !5498}
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !5495, file: !5443, line: 95, baseType: !5491, size: 64)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !5495, file: !5443, line: 96, baseType: !394, size: 32, offset: 64)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !5483, file: !5443, line: 103, baseType: !5500, size: 128)
!5500 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5483, file: !5443, line: 99, size: 128, elements: !5501)
!5501 = !{!5502, !5503, !5504}
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !5500, file: !5443, line: 100, baseType: !51, size: 64)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !5500, file: !5443, line: 101, baseType: !394, size: 32, offset: 64)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5500, file: !5443, line: 102, baseType: !394, size: 32, offset: 96)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !5442, file: !5443, line: 111, baseType: !5506, size: 128)
!5506 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5442, file: !5443, line: 108, size: 128, elements: !5507)
!5507 = !{!5508, !5509}
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !5506, file: !5443, line: 109, baseType: !1126, size: 64)
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !5506, file: !5443, line: 110, baseType: !34, size: 32, offset: 64)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !5442, file: !5443, line: 118, baseType: !5511, size: 128)
!5511 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5442, file: !5443, line: 114, size: 128, elements: !5512)
!5512 = !{!5513, !5514, !5515}
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !5511, file: !5443, line: 115, baseType: !32, size: 64)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !5511, file: !5443, line: 116, baseType: !34, size: 32, offset: 64)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !5511, file: !5443, line: 117, baseType: !7, size: 32, offset: 96)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !383, file: !384, line: 1208, baseType: !5237, size: 448, offset: 17664)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !383, file: !384, line: 1215, baseType: !339, size: 64, offset: 18112)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !383, file: !384, line: 1217, baseType: !339, size: 64, offset: 18176)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !383, file: !384, line: 1219, baseType: !339, size: 64, offset: 18240)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !383, file: !384, line: 1223, baseType: !5521, size: 64, offset: 18304)
!5521 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !5522, line: 99, baseType: !5523)
!5522 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!5523 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5522, line: 99, size: 64, elements: !5524)
!5524 = !{!5525}
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !5523, file: !5522, line: 99, baseType: !648, size: 64)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !383, file: !384, line: 1225, baseType: !1240, size: 32, offset: 18368)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !383, file: !384, line: 1226, baseType: !34, size: 32, offset: 18400)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !383, file: !384, line: 1227, baseType: !34, size: 32, offset: 18432)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !383, file: !384, line: 1231, baseType: !3964, size: 64, offset: 18496)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !383, file: !384, line: 1233, baseType: !109, size: 128, offset: 18560)
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !383, file: !384, line: 1240, baseType: !5532, size: 64, offset: 18688)
!5532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5533, size: 64)
!5533 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !384, line: 62, flags: DIFlagFwdDecl)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !383, file: !384, line: 1242, baseType: !5535, size: 64, offset: 18752)
!5535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5536, size: 64)
!5536 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !384, line: 1242, flags: DIFlagFwdDecl)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !383, file: !384, line: 1244, baseType: !109, size: 128, offset: 18816)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !383, file: !384, line: 1245, baseType: !5539, size: 64, offset: 18944)
!5539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5540, size: 64)
!5540 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !384, line: 51, flags: DIFlagFwdDecl)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !383, file: !384, line: 1246, baseType: !753, size: 256, offset: 19008)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !383, file: !384, line: 1247, baseType: !7, size: 32, offset: 19264)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !383, file: !384, line: 1250, baseType: !3214, size: 64, offset: 19328)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !383, file: !384, line: 1251, baseType: !753, size: 256, offset: 19392)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !383, file: !384, line: 1252, baseType: !109, size: 128, offset: 19648)
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !383, file: !384, line: 1259, baseType: !1841, size: 64, offset: 19776)
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !383, file: !384, line: 1260, baseType: !949, size: 16, offset: 19840)
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !383, file: !384, line: 1261, baseType: !949, size: 16, offset: 19856)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !383, file: !384, line: 1314, baseType: !5550, size: 64, offset: 19904)
!5550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5551, size: 64)
!5551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !5552, line: 62, size: 256, align: 256, elements: !5553)
!5552 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!5553 = !{!5554, !5555, !5556, !5557, !5558, !5559, !5560}
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !5551, file: !5552, line: 75, baseType: !394, size: 32)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !5551, file: !5552, line: 90, baseType: !394, size: 32, offset: 32)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !5551, file: !5552, line: 112, baseType: !340, size: 64, offset: 64)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5551, file: !5552, line: 132, baseType: !394, size: 32, offset: 128)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !5551, file: !5552, line: 140, baseType: !394, size: 32, offset: 160)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !5551, file: !5552, line: 149, baseType: !394, size: 32, offset: 192)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5551, file: !5552, line: 154, baseType: !360, offset: 224)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !383, file: !384, line: 1315, baseType: !393, size: 32, offset: 19968)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !383, file: !384, line: 1316, baseType: !393, size: 32, offset: 20000)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !383, file: !384, line: 1321, baseType: !51, size: 64, offset: 20032)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !383, file: !384, line: 1325, baseType: !34, size: 32, offset: 20096)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !383, file: !384, line: 1326, baseType: !34, size: 32, offset: 20128)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !383, file: !384, line: 1327, baseType: !34, size: 32, offset: 20160)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !383, file: !384, line: 1328, baseType: !34, size: 32, offset: 20192)
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !383, file: !384, line: 1329, baseType: !733, size: 128, align: 64, offset: 20224)
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !383, file: !384, line: 1332, baseType: !5570, size: 128, offset: 20352)
!5570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !5571, line: 51, size: 128, elements: !5572)
!5571 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!5572 = !{!5573, !5578, !5579}
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !5570, file: !5571, line: 60, baseType: !5574, size: 64)
!5574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !5575, line: 7, size: 64, elements: !5576)
!5575 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!5576 = !{!5577}
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !5574, file: !5575, line: 12, baseType: !645, size: 64)
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !5570, file: !5571, line: 63, baseType: !901, size: 8, offset: 64)
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !5570, file: !5571, line: 70, baseType: !901, size: 8, offset: 72)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !383, file: !384, line: 1335, baseType: !4718, size: 64, offset: 20480)
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !383, file: !384, line: 1337, baseType: !5582, size: 128, offset: 20544)
!5582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !5571, line: 39, size: 128, elements: !5583)
!5583 = !{!5584, !5585, !5586}
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5582, file: !5571, line: 40, baseType: !1640, size: 64)
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5582, file: !5571, line: 42, baseType: !394, size: 32, offset: 64)
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5582, file: !5571, line: 43, baseType: !394, size: 32, offset: 96)
!5587 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !383, file: !384, line: 1340, baseType: !5588, size: 64, offset: 20672)
!5588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5589, size: 64)
!5589 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !384, line: 69, flags: DIFlagFwdDecl)
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !383, file: !384, line: 1351, baseType: !34, size: 32, offset: 20736)
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !383, file: !384, line: 1352, baseType: !34, size: 32, offset: 20768)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !383, file: !384, line: 1354, baseType: !51, size: 64, offset: 20800)
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !383, file: !384, line: 1364, baseType: !339, size: 64, offset: 20864)
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !383, file: !384, line: 1365, baseType: !339, size: 64, offset: 20928)
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !383, file: !384, line: 1412, baseType: !51, size: 64, offset: 20992)
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !383, file: !384, line: 1453, baseType: !5597, size: 64, offset: 21056)
!5597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5598, size: 64)
!5598 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !384, line: 1453, flags: DIFlagFwdDecl)
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !383, file: !384, line: 1457, baseType: !5600, size: 64, offset: 21120)
!5600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5601, size: 64)
!5601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !150, line: 61, size: 576, elements: !5602)
!5602 = !{!5603, !5604, !5623, !5626, !5627, !5660, !5670}
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5601, file: !150, line: 62, baseType: !149, size: 32)
!5604 = !DIDerivedType(tag: DW_TAG_member, scope: !5601, file: !150, line: 64, baseType: !5605, size: 192, offset: 64)
!5605 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5601, file: !150, line: 64, size: 192, elements: !5606)
!5606 = !{!5607, !5618}
!5607 = !DIDerivedType(tag: DW_TAG_member, scope: !5605, file: !150, line: 65, baseType: !5608, size: 192)
!5608 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5605, file: !150, line: 65, size: 192, elements: !5609)
!5609 = !{!5610, !5617}
!5610 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !5608, file: !150, line: 66, baseType: !5611, size: 128)
!5611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !5612, line: 50, size: 128, elements: !5613)
!5612 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!5613 = !{!5614, !5615, !5616}
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !5611, file: !5612, line: 52, baseType: !51, size: 64)
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !5611, file: !5612, line: 54, baseType: !7, size: 32, offset: 64)
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !5611, file: !5612, line: 55, baseType: !7, size: 32, offset: 96)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !5608, file: !150, line: 67, baseType: !51, size: 64, offset: 128)
!5618 = !DIDerivedType(tag: DW_TAG_member, scope: !5605, file: !150, line: 70, baseType: !5619, size: 192)
!5619 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5605, file: !150, line: 70, size: 192, elements: !5620)
!5620 = !{!5621, !5622}
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !5619, file: !150, line: 71, baseType: !733, size: 128, align: 64)
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !5619, file: !150, line: 72, baseType: !51, size: 64, offset: 128)
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !5601, file: !150, line: 76, baseType: !5624, size: 64, offset: 256)
!5624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5625, size: 64)
!5625 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !150, line: 76, flags: DIFlagFwdDecl)
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !5601, file: !150, line: 77, baseType: !51, size: 64, offset: 320)
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !5601, file: !150, line: 79, baseType: !5628, size: 64, offset: 384)
!5628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5629, size: 64)
!5629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !5612, line: 25, size: 256, elements: !5630)
!5630 = !{!5631, !5637, !5641}
!5631 = !DIDerivedType(tag: DW_TAG_member, scope: !5629, file: !5612, line: 26, baseType: !5632, size: 128)
!5632 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5629, file: !5612, line: 26, size: 128, elements: !5633)
!5633 = !{!5634, !5636}
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !5632, file: !5612, line: 27, baseType: !5635, size: 128)
!5635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 128, elements: !4481)
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !5632, file: !5612, line: 28, baseType: !5635, size: 128)
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5629, file: !5612, line: 31, baseType: !5638, size: 64, offset: 128)
!5638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5639, size: 64)
!5639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5640)
!5640 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !5612, line: 23, flags: DIFlagFwdDecl)
!5641 = !DIDerivedType(tag: DW_TAG_member, scope: !5629, file: !5612, line: 33, baseType: !5642, size: 64, offset: 192)
!5642 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5629, file: !5612, line: 33, size: 64, elements: !5643)
!5643 = !{!5644, !5650, !5655}
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !5642, file: !5612, line: 38, baseType: !5645, size: 64)
!5645 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5642, file: !5612, line: 34, size: 64, elements: !5646)
!5646 = !{!5647, !5648, !5649}
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !5645, file: !5612, line: 35, baseType: !913, size: 32)
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5645, file: !5612, line: 36, baseType: !95, size: 8, offset: 32)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !5645, file: !5612, line: 37, baseType: !95, size: 8, offset: 40)
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !5642, file: !5612, line: 42, baseType: !5651, size: 16)
!5651 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5642, file: !5612, line: 39, size: 16, elements: !5652)
!5652 = !{!5653, !5654}
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !5651, file: !5612, line: 40, baseType: !95, size: 8)
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5651, file: !5612, line: 41, baseType: !95, size: 8, offset: 8)
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !5642, file: !5612, line: 46, baseType: !5656, size: 16)
!5656 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5642, file: !5612, line: 43, size: 16, elements: !5657)
!5657 = !{!5658, !5659}
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !5656, file: !5612, line: 44, baseType: !95, size: 8)
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5656, file: !5612, line: 45, baseType: !95, size: 8, offset: 8)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !5601, file: !150, line: 81, baseType: !5661, size: 64, offset: 448)
!5661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5662, size: 64)
!5662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !150, line: 85, size: 384, elements: !5663)
!5663 = !{!5664, !5665, !5666, !5667, !5668, !5669}
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !5662, file: !150, line: 86, baseType: !5624, size: 64)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5662, file: !150, line: 87, baseType: !51, size: 64, offset: 64)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !5662, file: !150, line: 88, baseType: !51, size: 64, offset: 128)
!5667 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !5662, file: !150, line: 89, baseType: !51, size: 64, offset: 192)
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !5662, file: !150, line: 90, baseType: !901, size: 8, offset: 256)
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5662, file: !150, line: 92, baseType: !5661, size: 64, offset: 320)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !5601, file: !150, line: 82, baseType: !7, size: 32, offset: 512)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !383, file: !384, line: 1463, baseType: !5672, offset: 21184)
!5672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !384, line: 739, elements: !718)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !383, file: !384, line: 1470, baseType: !733, size: 128, align: 64, offset: 21184)
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !383, file: !384, line: 1471, baseType: !399, size: 32, offset: 21312)
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !383, file: !384, line: 1472, baseType: !34, size: 32, offset: 21344)
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !383, file: !384, line: 1474, baseType: !382, size: 64, offset: 21376)
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !383, file: !384, line: 1475, baseType: !2555, size: 320, offset: 21440)
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !383, file: !384, line: 1478, baseType: !5679, size: 64, offset: 21760)
!5679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5680, size: 64)
!5680 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !384, line: 1478, flags: DIFlagFwdDecl)
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !383, file: !384, line: 1482, baseType: !399, size: 32, offset: 21824)
!5682 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !383, file: !384, line: 1489, baseType: !32, size: 64, offset: 21888)
!5683 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !383, file: !384, line: 1504, baseType: !32, size: 64, offset: 21952)
!5684 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !383, file: !384, line: 1505, baseType: !340, size: 64, offset: 22016)
!5685 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !383, file: !384, line: 1506, baseType: !339, size: 64, offset: 22080)
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !383, file: !384, line: 1507, baseType: !340, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !383, file: !384, line: 1508, baseType: !340, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !383, file: !384, line: 1509, baseType: !340, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !383, file: !384, line: 1510, baseType: !733, size: 128, align: 64, offset: 22208)
!5690 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !383, file: !384, line: 1511, baseType: !34, size: 32, offset: 22336)
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !383, file: !384, line: 1515, baseType: !5692, size: 64, offset: 22400)
!5692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !413, line: 56, size: 64, elements: !5693)
!5693 = !{!5694}
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !5692, file: !413, line: 57, baseType: !416, size: 64)
!5695 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !383, file: !384, line: 1518, baseType: !5692, size: 64, offset: 22464)
!5696 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !383, file: !384, line: 1528, baseType: !733, size: 128, align: 64, offset: 22528)
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !383, file: !384, line: 1552, baseType: !5698, size: 35328, offset: 23040)
!5698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !5699, line: 430, size: 35328, elements: !5700)
!5699 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!5700 = !{!5701, !5719, !5720, !5721, !5722, !5723, !5724, !5725, !5726, !5728, !5729, !5730, !5731, !5732, !5733, !5745, !5746, !5747, !5748}
!5701 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !5698, file: !5699, line: 432, baseType: !5702, size: 192)
!5702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5703, size: 192, elements: !789)
!5703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !5704, line: 16, size: 64, elements: !5705)
!5704 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!5705 = !{!5706, !5707, !5708, !5709, !5710, !5711, !5712, !5713, !5714, !5715, !5716, !5717, !5718}
!5706 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !5703, file: !5704, line: 17, baseType: !105, size: 16)
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !5703, file: !5704, line: 18, baseType: !105, size: 16, offset: 16)
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !5703, file: !5704, line: 19, baseType: !105, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5703, file: !5704, line: 19, baseType: !105, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !5703, file: !5704, line: 19, baseType: !105, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !5703, file: !5704, line: 19, baseType: !105, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5703, file: !5704, line: 19, baseType: !105, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !5703, file: !5704, line: 20, baseType: !105, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !5703, file: !5704, line: 20, baseType: !105, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !5703, file: !5704, line: 20, baseType: !105, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !5703, file: !5704, line: 20, baseType: !105, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !5703, file: !5704, line: 20, baseType: !105, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !5703, file: !5704, line: 20, baseType: !105, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5698, file: !5699, line: 436, baseType: !51, size: 64, offset: 192)
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !5698, file: !5699, line: 440, baseType: !38, size: 16, offset: 256)
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !5698, file: !5699, line: 441, baseType: !38, size: 16, offset: 272)
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !5698, file: !5699, line: 442, baseType: !38, size: 16, offset: 288)
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !5698, file: !5699, line: 443, baseType: !38, size: 16, offset: 304)
!5724 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !5698, file: !5699, line: 447, baseType: !51, size: 64, offset: 320)
!5725 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !5698, file: !5699, line: 448, baseType: !51, size: 64, offset: 384)
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !5698, file: !5699, line: 459, baseType: !5727, size: 256, offset: 448)
!5727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2826, size: 256, elements: !801)
!5728 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !5698, file: !5699, line: 461, baseType: !51, size: 64, offset: 704)
!5729 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !5698, file: !5699, line: 463, baseType: !51, size: 64, offset: 768)
!5730 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !5698, file: !5699, line: 465, baseType: !51, size: 64, offset: 832)
!5731 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !5698, file: !5699, line: 466, baseType: !51, size: 64, offset: 896)
!5732 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !5698, file: !5699, line: 467, baseType: !51, size: 64, offset: 960)
!5733 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !5698, file: !5699, line: 473, baseType: !5734, size: 64, offset: 1024)
!5734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5735, size: 64)
!5735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !5736, line: 8, size: 65664, elements: !5737)
!5736 = !DIFile(filename: "./arch/x86/include/asm/io_bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36640faa64453937c301d851a5713796")
!5737 = !{!5738, !5739, !5740, !5741}
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !5735, file: !5736, line: 9, baseType: !339, size: 64)
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !5735, file: !5736, line: 10, baseType: !399, size: 32, offset: 64)
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !5735, file: !5736, line: 12, baseType: !7, size: 32, offset: 96)
!5741 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap", scope: !5735, file: !5736, line: 13, baseType: !5742, size: 65536, offset: 128)
!5742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 65536, elements: !5743)
!5743 = !{!5744}
!5744 = !DISubrange(count: 1024)
!5745 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !5698, file: !5699, line: 480, baseType: !51, size: 64, offset: 1088)
!5746 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !5698, file: !5699, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!5747 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !5698, file: !5699, line: 491, baseType: !393, size: 32, offset: 1184)
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !5698, file: !5699, line: 501, baseType: !5749, size: 33792, offset: 1536)
!5749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !5750, line: 448, size: 33792, elements: !5751)
!5750 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!5751 = !{!5752, !5753, !5754, !5862, !5863, !5869, !5870}
!5752 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !5749, file: !5750, line: 461, baseType: !7, size: 32)
!5753 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !5749, file: !5750, line: 468, baseType: !51, size: 64, offset: 64)
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !5749, file: !5750, line: 476, baseType: !5755, size: 64, offset: 128)
!5755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5756, size: 64)
!5756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !5750, line: 356, size: 33280, align: 512, elements: !5757)
!5757 = !{!5758, !5759, !5760, !5761, !5762, !5763, !5764, !5765, !5766, !5767}
!5758 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5756, file: !5750, line: 358, baseType: !7, size: 32)
!5759 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !5756, file: !5750, line: 361, baseType: !7, size: 32, offset: 32)
!5760 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5756, file: !5750, line: 364, baseType: !339, size: 64, offset: 64)
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !5756, file: !5750, line: 367, baseType: !339, size: 64, offset: 128)
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !5756, file: !5750, line: 370, baseType: !339, size: 64, offset: 192)
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !5756, file: !5750, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !5756, file: !5750, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!5765 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !5756, file: !5750, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!5766 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !5756, file: !5750, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!5767 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5756, file: !5750, line: 397, baseType: !5768, size: 32768, offset: 512)
!5768 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !5750, line: 348, size: 32768, elements: !5769)
!5769 = !{!5770, !5785, !5822, !5847, !5860}
!5770 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !5768, file: !5750, line: 349, baseType: !5771, size: 896)
!5771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !5750, line: 12, size: 896, elements: !5772)
!5772 = !{!5773, !5774, !5775, !5776, !5777, !5778, !5779, !5780, !5784}
!5773 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5771, file: !5750, line: 13, baseType: !393, size: 32)
!5774 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5771, file: !5750, line: 14, baseType: !393, size: 32, offset: 32)
!5775 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5771, file: !5750, line: 15, baseType: !393, size: 32, offset: 64)
!5776 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5771, file: !5750, line: 16, baseType: !393, size: 32, offset: 96)
!5777 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5771, file: !5750, line: 17, baseType: !393, size: 32, offset: 128)
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5771, file: !5750, line: 18, baseType: !393, size: 32, offset: 160)
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5771, file: !5750, line: 19, baseType: !393, size: 32, offset: 192)
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5771, file: !5750, line: 22, baseType: !5781, size: 640, offset: 224)
!5781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, size: 640, elements: !5782)
!5782 = !{!5783}
!5783 = !DISubrange(count: 20)
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5771, file: !5750, line: 25, baseType: !393, size: 32, offset: 864)
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !5768, file: !5750, line: 350, baseType: !5786, size: 4096, align: 128)
!5786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !5750, line: 34, size: 4096, align: 128, elements: !5787)
!5787 = !{!5788, !5789, !5790, !5791, !5792, !5807, !5808, !5809, !5811, !5813, !5817}
!5788 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5786, file: !5750, line: 35, baseType: !105, size: 16)
!5789 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5786, file: !5750, line: 36, baseType: !105, size: 16, offset: 16)
!5790 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5786, file: !5750, line: 37, baseType: !105, size: 16, offset: 32)
!5791 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !5786, file: !5750, line: 38, baseType: !105, size: 16, offset: 48)
!5792 = !DIDerivedType(tag: DW_TAG_member, scope: !5786, file: !5750, line: 39, baseType: !5793, size: 128, offset: 64)
!5793 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5786, file: !5750, line: 39, size: 128, elements: !5794)
!5794 = !{!5795, !5800}
!5795 = !DIDerivedType(tag: DW_TAG_member, scope: !5793, file: !5750, line: 40, baseType: !5796, size: 128)
!5796 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5793, file: !5750, line: 40, size: 128, elements: !5797)
!5797 = !{!5798, !5799}
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !5796, file: !5750, line: 41, baseType: !339, size: 64)
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !5796, file: !5750, line: 42, baseType: !339, size: 64, offset: 64)
!5800 = !DIDerivedType(tag: DW_TAG_member, scope: !5793, file: !5750, line: 44, baseType: !5801, size: 128)
!5801 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5793, file: !5750, line: 44, size: 128, elements: !5802)
!5802 = !{!5803, !5804, !5805, !5806}
!5803 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5801, file: !5750, line: 45, baseType: !393, size: 32)
!5804 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5801, file: !5750, line: 46, baseType: !393, size: 32, offset: 32)
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5801, file: !5750, line: 47, baseType: !393, size: 32, offset: 64)
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5801, file: !5750, line: 48, baseType: !393, size: 32, offset: 96)
!5807 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !5786, file: !5750, line: 51, baseType: !393, size: 32, offset: 192)
!5808 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !5786, file: !5750, line: 52, baseType: !393, size: 32, offset: 224)
!5809 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5786, file: !5750, line: 55, baseType: !5810, size: 1024, offset: 256)
!5810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, size: 1024, elements: !4472)
!5811 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !5786, file: !5750, line: 58, baseType: !5812, size: 2048, offset: 1280)
!5812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, size: 2048, elements: !1559)
!5813 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !5786, file: !5750, line: 60, baseType: !5814, size: 384, offset: 3328)
!5814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, size: 384, elements: !5815)
!5815 = !{!5816}
!5816 = !DISubrange(count: 12)
!5817 = !DIDerivedType(tag: DW_TAG_member, scope: !5786, file: !5750, line: 62, baseType: !5818, size: 384, offset: 3712)
!5818 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5786, file: !5750, line: 62, size: 384, elements: !5819)
!5819 = !{!5820, !5821}
!5820 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !5818, file: !5750, line: 63, baseType: !5814, size: 384)
!5821 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !5818, file: !5750, line: 64, baseType: !5814, size: 384)
!5822 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !5768, file: !5750, line: 351, baseType: !5823, size: 1088)
!5823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !5750, line: 79, size: 1088, elements: !5824)
!5824 = !{!5825, !5826, !5827, !5828, !5829, !5830, !5831, !5832, !5833, !5834, !5835, !5836, !5837, !5838, !5839, !5846}
!5825 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5823, file: !5750, line: 80, baseType: !393, size: 32)
!5826 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5823, file: !5750, line: 81, baseType: !393, size: 32, offset: 32)
!5827 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5823, file: !5750, line: 82, baseType: !393, size: 32, offset: 64)
!5828 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5823, file: !5750, line: 83, baseType: !393, size: 32, offset: 96)
!5829 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5823, file: !5750, line: 84, baseType: !393, size: 32, offset: 128)
!5830 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5823, file: !5750, line: 85, baseType: !393, size: 32, offset: 160)
!5831 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5823, file: !5750, line: 86, baseType: !393, size: 32, offset: 192)
!5832 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5823, file: !5750, line: 88, baseType: !5781, size: 640, offset: 224)
!5833 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !5823, file: !5750, line: 89, baseType: !95, size: 8, offset: 864)
!5834 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !5823, file: !5750, line: 90, baseType: !95, size: 8, offset: 872)
!5835 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !5823, file: !5750, line: 91, baseType: !95, size: 8, offset: 880)
!5836 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !5823, file: !5750, line: 92, baseType: !95, size: 8, offset: 888)
!5837 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !5823, file: !5750, line: 93, baseType: !95, size: 8, offset: 896)
!5838 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !5823, file: !5750, line: 94, baseType: !95, size: 8, offset: 904)
!5839 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5823, file: !5750, line: 95, baseType: !5840, size: 64, offset: 960)
!5840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5841, size: 64)
!5841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !5842, line: 11, size: 128, elements: !5843)
!5842 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!5843 = !{!5844, !5845}
!5844 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !5841, file: !5842, line: 12, baseType: !1126, size: 64)
!5845 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5841, file: !5842, line: 13, baseType: !3738, size: 64, offset: 64)
!5846 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !5823, file: !5750, line: 96, baseType: !393, size: 32, offset: 1024)
!5847 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !5768, file: !5750, line: 352, baseType: !5848, size: 4608, align: 512)
!5848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !5750, line: 333, size: 4608, align: 512, elements: !5849)
!5849 = !{!5850, !5851, !5858}
!5850 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !5848, file: !5750, line: 334, baseType: !5786, size: 4096, align: 128)
!5851 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !5848, file: !5750, line: 335, baseType: !5852, size: 512, offset: 4096)
!5852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !5750, line: 312, size: 512, elements: !5853)
!5853 = !{!5854, !5855, !5856}
!5854 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5852, file: !5750, line: 313, baseType: !339, size: 64)
!5855 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !5852, file: !5750, line: 314, baseType: !339, size: 64, offset: 64)
!5856 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5852, file: !5750, line: 315, baseType: !5857, size: 384, offset: 128)
!5857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 384, elements: !967)
!5858 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !5848, file: !5750, line: 336, baseType: !5859, offset: 4608)
!5859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, elements: !361)
!5860 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !5768, file: !5750, line: 353, baseType: !5861, size: 32768)
!5861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 32768, elements: !2779)
!5862 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !5749, file: !5750, line: 484, baseType: !5755, size: 64, offset: 192)
!5863 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !5749, file: !5750, line: 491, baseType: !5864, size: 128, offset: 256)
!5864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !5750, line: 404, size: 128, elements: !5865)
!5865 = !{!5866, !5867, !5868}
!5866 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !5864, file: !5750, line: 424, baseType: !339, size: 64)
!5867 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !5864, file: !5750, line: 432, baseType: !7, size: 32, offset: 64)
!5868 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !5864, file: !5750, line: 440, baseType: !7, size: 32, offset: 96)
!5869 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !5749, file: !5750, line: 498, baseType: !5864, size: 128, offset: 384)
!5870 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !5749, file: !5750, line: 508, baseType: !5756, size: 33280, align: 512, offset: 512)
!5871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5872, size: 64)
!5872 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !645)
!5873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!5874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5875, size: 64)
!5875 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !4828)
!5876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5877, size: 64)
!5877 = !DIDerivedType(tag: DW_TAG_typedef, name: "p4d_t", file: !1764, line: 346, baseType: !5878)
!5878 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1764, line: 346, size: 64, elements: !5879)
!5879 = !{!5880}
!5880 = !DIDerivedType(tag: DW_TAG_member, name: "p4d", scope: !5878, file: !1764, line: 346, baseType: !5881, size: 64)
!5881 = !DIDerivedType(tag: DW_TAG_typedef, name: "p4dval_t", file: !346, line: 17, baseType: !51)
!5882 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !37, line: 159, baseType: !339)
!5883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5884, size: 64)
!5884 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !5877)
!5885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5886, size: 64)
!5886 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1872)
!5887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5888, size: 64)
!5888 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1865)
!5889 = !{!5890, !5892, !5894, !5896, !5898, !5900, !5911, !5914, !5919, !5924, !5926, !5928, !5933, !5938, !5940, !5945, !0, !5950, !5956, !5959, !5961, !5964, !5966, !5969, !5974, !5976, !5978, !5980, !5983, !5985, !5994, !5999, !6004, !6006, !6032, !6034, !6036, !6038}
!5890 = !DIGlobalVariableExpression(var: !5891, expr: !DIExpression())
!5891 = distinct !DIGlobalVariable(name: "__tracepoint_emulate_vsyscall", scope: !2, file: !349, line: 10, type: !2685, isLocal: false, isDefinition: true)
!5892 = !DIGlobalVariableExpression(var: !5893, expr: !DIExpression())
!5893 = distinct !DIGlobalVariable(name: "__SCK__tp_func_emulate_vsyscall", scope: !2, file: !349, line: 10, type: !2702, isLocal: false, isDefinition: true)
!5894 = !DIGlobalVariableExpression(var: !5895, expr: !DIExpression())
!5895 = distinct !DIGlobalVariable(name: "event_class_emulate_vsyscall", scope: !2, file: !349, line: 10, type: !2641, isLocal: true, isDefinition: true)
!5896 = !DIGlobalVariableExpression(var: !5897, expr: !DIExpression())
!5897 = distinct !DIGlobalVariable(name: "event_emulate_vsyscall", scope: !2, file: !349, line: 10, type: !2636, isLocal: true, isDefinition: true, align: 32)
!5898 = !DIGlobalVariableExpression(var: !5899, expr: !DIExpression())
!5899 = distinct !DIGlobalVariable(name: "__event_emulate_vsyscall", scope: !2, file: !349, line: 10, type: !2635, isLocal: true, isDefinition: true)
!5900 = !DIGlobalVariableExpression(var: !5901, expr: !DIExpression())
!5901 = distinct !DIGlobalVariable(name: "__setup_vsyscall_setup", scope: !2, file: !3, line: 71, type: !5902, isLocal: true, isDefinition: true, align: 64)
!5902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !5903, line: 324, size: 192, elements: !5904)
!5903 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!5904 = !{!5905, !5906, !5910}
!5905 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !5902, file: !5903, line: 325, baseType: !28, size: 64)
!5906 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !5902, file: !5903, line: 326, baseType: !5907, size: 64, offset: 64)
!5907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5908, size: 64)
!5908 = !DISubroutineType(types: !5909)
!5909 = !{!34, !989}
!5910 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !5902, file: !5903, line: 327, baseType: !34, size: 32, offset: 128)
!5911 = !DIGlobalVariableExpression(var: !5912, expr: !DIExpression())
!5912 = distinct !DIGlobalVariable(scope: null, file: !3, line: 135, type: !5913, isLocal: true, isDefinition: true)
!5913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 24, elements: !789)
!5914 = !DIGlobalVariableExpression(var: !5915, expr: !DIExpression())
!5915 = distinct !DIGlobalVariable(scope: null, file: !3, line: 135, type: !5916, isLocal: true, isDefinition: true)
!5916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 760, elements: !5917)
!5917 = !{!5918}
!5918 = !DISubrange(count: 95)
!5919 = !DIGlobalVariableExpression(var: !5920, expr: !DIExpression())
!5920 = distinct !DIGlobalVariable(scope: null, file: !3, line: 144, type: !5921, isLocal: true, isDefinition: true)
!5921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 304, elements: !5922)
!5922 = !{!5923}
!5923 = !DISubrange(count: 38)
!5924 = !DIGlobalVariableExpression(var: !5925, expr: !DIExpression())
!5925 = distinct !DIGlobalVariable(scope: null, file: !3, line: 148, type: !5921, isLocal: true, isDefinition: true)
!5926 = !DIGlobalVariableExpression(var: !5927, expr: !DIExpression())
!5927 = distinct !DIGlobalVariable(scope: null, file: !3, line: 157, type: !5913, isLocal: true, isDefinition: true)
!5928 = !DIGlobalVariableExpression(var: !5929, expr: !DIExpression())
!5929 = distinct !DIGlobalVariable(scope: null, file: !3, line: 158, type: !5930, isLocal: true, isDefinition: true)
!5930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 968, elements: !5931)
!5931 = !{!5932}
!5932 = !DISubrange(count: 121)
!5933 = !DIGlobalVariableExpression(var: !5934, expr: !DIExpression())
!5934 = distinct !DIGlobalVariable(scope: null, file: !3, line: 164, type: !5935, isLocal: true, isDefinition: true)
!5935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 344, elements: !5936)
!5936 = !{!5937}
!5937 = !DISubrange(count: 43)
!5938 = !DIGlobalVariableExpression(var: !5939, expr: !DIExpression())
!5939 = distinct !DIGlobalVariable(scope: null, file: !3, line: 218, type: !5913, isLocal: true, isDefinition: true)
!5940 = !DIGlobalVariableExpression(var: !5941, expr: !DIExpression())
!5941 = distinct !DIGlobalVariable(scope: null, file: !3, line: 219, type: !5942, isLocal: true, isDefinition: true)
!5942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 328, elements: !5943)
!5943 = !{!5944}
!5944 = !DISubrange(count: 41)
!5945 = !DIGlobalVariableExpression(var: !5946, expr: !DIExpression())
!5946 = distinct !DIGlobalVariable(scope: null, file: !3, line: 256, type: !5947, isLocal: true, isDefinition: true)
!5947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 272, elements: !5948)
!5948 = !{!5949}
!5949 = !DISubrange(count: 34)
!5950 = !DIGlobalVariableExpression(var: !5951, expr: !DIExpression())
!5951 = distinct !DIGlobalVariable(name: "str__vsyscall__trace_system_name", scope: !2, file: !5952, line: 11, type: !5953, isLocal: true, isDefinition: true)
!5952 = !DIFile(filename: "./include/trace/stages/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b6fe39f4189f752573bd7bb8760fdf7e")
!5953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 72, elements: !5954)
!5954 = !{!5955}
!5955 = !DISubrange(count: 9)
!5956 = !DIGlobalVariableExpression(var: !5957, expr: !DIExpression())
!5957 = distinct !DIGlobalVariable(scope: null, file: !349, line: 10, type: !5958, isLocal: true, isDefinition: true)
!5958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 32, elements: !801)
!5959 = !DIGlobalVariableExpression(var: !5960, expr: !DIExpression())
!5960 = distinct !DIGlobalVariable(scope: null, file: !349, line: 10, type: !5913, isLocal: true, isDefinition: true)
!5961 = !DIGlobalVariableExpression(var: !5962, expr: !DIExpression())
!5962 = distinct !DIGlobalVariable(name: "trace_event_fields_emulate_vsyscall", scope: !2, file: !349, line: 10, type: !5963, isLocal: true, isDefinition: true)
!5963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2652, size: 640, elements: !2445)
!5964 = !DIGlobalVariableExpression(var: !5965, expr: !DIExpression())
!5965 = distinct !DIGlobalVariable(name: "trace_event_type_funcs_emulate_vsyscall", scope: !2, file: !349, line: 10, type: !2740, isLocal: true, isDefinition: true)
!5966 = !DIGlobalVariableExpression(var: !5967, expr: !DIExpression())
!5967 = distinct !DIGlobalVariable(scope: null, file: !349, line: 10, type: !5968, isLocal: true, isDefinition: true)
!5968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 72, elements: !5954)
!5969 = !DIGlobalVariableExpression(var: !5970, expr: !DIExpression())
!5970 = distinct !DIGlobalVariable(name: "print_fmt_emulate_vsyscall", scope: !2, file: !349, line: 10, type: !5971, isLocal: true, isDefinition: true)
!5971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 152, elements: !5972)
!5972 = !{!5973}
!5973 = !DISubrange(count: 19)
!5974 = !DIGlobalVariableExpression(var: !5975, expr: !DIExpression())
!5975 = distinct !DIGlobalVariable(name: "__setup_str_vsyscall_setup", scope: !2, file: !3, line: 71, type: !5953, isLocal: true, isDefinition: true, align: 8)
!5976 = !DIGlobalVariableExpression(var: !5977, expr: !DIExpression())
!5977 = distinct !DIGlobalVariable(scope: null, file: !3, line: 57, type: !5491, isLocal: true, isDefinition: true)
!5978 = !DIGlobalVariableExpression(var: !5979, expr: !DIExpression())
!5979 = distinct !DIGlobalVariable(scope: null, file: !3, line: 59, type: !966, isLocal: true, isDefinition: true)
!5980 = !DIGlobalVariableExpression(var: !5981, expr: !DIExpression())
!5981 = distinct !DIGlobalVariable(scope: null, file: !3, line: 61, type: !5982, isLocal: true, isDefinition: true)
!5982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 40, elements: !861)
!5983 = !DIGlobalVariableExpression(var: !5984, expr: !DIExpression())
!5984 = distinct !DIGlobalVariable(name: "vsyscall_mode", scope: !2, file: !3, line: 45, type: !278, isLocal: true, isDefinition: true)
!5985 = !DIGlobalVariableExpression(var: !5986, expr: !DIExpression())
!5986 = distinct !DIGlobalVariable(name: "_rs", scope: !5987, file: !3, line: 79, type: !1190, isLocal: true, isDefinition: true)
!5987 = distinct !DISubprogram(name: "warn_bad_vsyscall", scope: !3, file: !3, line: 73, type: !5988, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5990)
!5988 = !DISubroutineType(types: !5989)
!5989 = !{null, !28, !3738, !28}
!5990 = !{!5991, !5992, !5993}
!5991 = !DILocalVariable(name: "level", arg: 1, scope: !5987, file: !3, line: 73, type: !28)
!5992 = !DILocalVariable(name: "regs", arg: 2, scope: !5987, file: !3, line: 73, type: !3738)
!5993 = !DILocalVariable(name: "message", arg: 3, scope: !5987, file: !3, line: 74, type: !28)
!5994 = !DIGlobalVariableExpression(var: !5995, expr: !DIExpression())
!5995 = distinct !DIGlobalVariable(scope: null, file: !3, line: 79, type: !5996, isLocal: true, isDefinition: true)
!5996 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 144, elements: !5997)
!5997 = !{!5998}
!5998 = !DISubrange(count: 18)
!5999 = !DIGlobalVariableExpression(var: !6000, expr: !DIExpression())
!6000 = distinct !DIGlobalVariable(scope: null, file: !3, line: 79, type: !6001, isLocal: true, isDefinition: true)
!6001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 432, elements: !6002)
!6002 = !{!6003}
!6003 = !DISubrange(count: 54)
!6004 = !DIGlobalVariableExpression(var: !6005, expr: !DIExpression())
!6005 = distinct !DIGlobalVariable(scope: null, file: !349, line: 10, type: !5942, isLocal: true, isDefinition: true)
!6006 = !DIGlobalVariableExpression(var: !6007, expr: !DIExpression())
!6007 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_emulate_vsyscall323", scope: !6008, file: !349, line: 10, type: !32, isLocal: true, isDefinition: true)
!6008 = distinct !DISubprogram(name: "trace_emulate_vsyscall", scope: !349, file: !349, line: 10, type: !5356, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6009)
!6009 = !{!6010, !6011, !6014, !6017, !6019, !6021, !6024, !6027, !6029, !6030}
!6010 = !DILocalVariable(name: "nr", arg: 1, scope: !6008, file: !349, line: 10, type: !34)
!6011 = !DILocalVariable(name: "__idx", scope: !6012, file: !349, line: 10, type: !34)
!6012 = distinct !DILexicalBlock(scope: !6013, file: !349, line: 10, column: 1)
!6013 = distinct !DILexicalBlock(scope: !6008, file: !349, line: 10, column: 1)
!6014 = !DILocalVariable(name: "pscr_ret__", scope: !6015, file: !349, line: 10, type: !34)
!6015 = distinct !DILexicalBlock(scope: !6016, file: !349, line: 10, column: 1)
!6016 = distinct !DILexicalBlock(scope: !6012, file: !349, line: 10, column: 1)
!6017 = !DILocalVariable(name: "__vpp_verify", scope: !6018, file: !349, line: 10, type: !2143)
!6018 = distinct !DILexicalBlock(scope: !6015, file: !349, line: 10, column: 1)
!6019 = !DILocalVariable(name: "pfo_val__", scope: !6020, file: !349, line: 10, type: !393)
!6020 = distinct !DILexicalBlock(scope: !6015, file: !349, line: 10, column: 1)
!6021 = !DILocalVariable(name: "__ret_warn_on", scope: !6022, file: !349, line: 10, type: !34)
!6022 = distinct !DILexicalBlock(scope: !6023, file: !349, line: 10, column: 1)
!6023 = distinct !DILexicalBlock(scope: !6012, file: !349, line: 10, column: 1)
!6024 = !DILocalVariable(name: "__flags", scope: !6025, file: !349, line: 10, type: !34)
!6025 = distinct !DILexicalBlock(scope: !6026, file: !349, line: 10, column: 1)
!6026 = distinct !DILexicalBlock(scope: !6022, file: !349, line: 10, column: 1)
!6027 = !DILocalVariable(name: "it_func_ptr", scope: !6028, file: !349, line: 10, type: !325)
!6028 = distinct !DILexicalBlock(scope: !6012, file: !349, line: 10, column: 1)
!6029 = !DILocalVariable(name: "__data", scope: !6028, file: !349, line: 10, type: !32)
!6030 = !DILocalVariable(name: "__UNIQUE_ID_rcu321", scope: !6031, file: !349, line: 10, type: !325)
!6031 = distinct !DILexicalBlock(scope: !6028, file: !349, line: 10, column: 1)
!6032 = !DIGlobalVariableExpression(var: !6033, expr: !DIExpression())
!6033 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace324", scope: !6008, file: !349, line: 10, type: !32, isLocal: true, isDefinition: true)
!6034 = !DIGlobalVariableExpression(var: !6035, expr: !DIExpression())
!6035 = distinct !DIGlobalVariable(name: "gate_vma", scope: !2, file: !3, line: 285, type: !1750, isLocal: true, isDefinition: true)
!6036 = !DIGlobalVariableExpression(var: !6037, expr: !DIExpression())
!6037 = distinct !DIGlobalVariable(name: "gate_vma_ops", scope: !2, file: !3, line: 282, type: !1794, isLocal: true, isDefinition: true)
!6038 = !DIGlobalVariableExpression(var: !6039, expr: !DIExpression())
!6039 = distinct !DIGlobalVariable(scope: null, file: !3, line: 280, type: !6040, isLocal: true, isDefinition: true)
!6040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 88, elements: !6041)
!6041 = !{!6042}
!6042 = !DISubrange(count: 11)
!6043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 136, elements: !6044)
!6044 = !{!6045}
!6045 = !DISubrange(count: 17)
!6046 = !{!"rsp"}
!6047 = !{i32 7, !"Dwarf Version", i32 5}
!6048 = !{i32 2, !"Debug Info Version", i32 3}
!6049 = !{i32 1, !"wchar_size", i32 2}
!6050 = !{i32 8, !"cf-protection-branch", i32 1}
!6051 = !{i32 4, !"function_return_thunk_extern", i32 1}
!6052 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!6053 = !{i32 1, !"Code Model", i32 2}
!6054 = !{i32 1, !"override-stack-alignment", i32 8}
!6055 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6056 = distinct !DISubprogram(name: "__traceiter_emulate_vsyscall", scope: !349, file: !349, line: 10, type: !6057, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6059)
!6057 = !DISubroutineType(types: !6058)
!6058 = !{!34, !32, !34}
!6059 = !{!6060, !6061, !6062, !6063, !6064}
!6060 = !DILocalVariable(name: "__data", arg: 1, scope: !6056, file: !349, line: 10, type: !32)
!6061 = !DILocalVariable(name: "nr", arg: 2, scope: !6056, file: !349, line: 10, type: !34)
!6062 = !DILocalVariable(name: "it_func_ptr", scope: !6056, file: !349, line: 10, type: !325)
!6063 = !DILocalVariable(name: "it_func", scope: !6056, file: !349, line: 10, type: !32)
!6064 = !DILocalVariable(name: "__UNIQUE_ID_rcu329", scope: !6065, file: !349, line: 10, type: !325)
!6065 = distinct !DILexicalBlock(scope: !6056, file: !349, line: 10, column: 1)
!6066 = !DILocation(line: 10, column: 1, scope: !6056)
!6067 = !DILocation(line: 10, column: 1, scope: !6065)
!6068 = !DILocation(line: 10, column: 1, scope: !6069)
!6069 = distinct !DILexicalBlock(scope: !6065, file: !349, line: 10, column: 1)
!6070 = !DILocation(line: 10, column: 1, scope: !6071)
!6071 = distinct !DILexicalBlock(scope: !6069, file: !349, line: 10, column: 1)
!6072 = !DILocation(line: 10, column: 1, scope: !6073)
!6073 = distinct !DILexicalBlock(scope: !6056, file: !349, line: 10, column: 1)
!6074 = !DILocation(line: 10, column: 1, scope: !6075)
!6075 = distinct !DILexicalBlock(scope: !6073, file: !349, line: 10, column: 1)
!6076 = !DILocation(line: 10, column: 1, scope: !6077)
!6077 = distinct !DILexicalBlock(scope: !6078, file: !349, line: 10, column: 1)
!6078 = distinct !DILexicalBlock(scope: !6075, file: !349, line: 10, column: 1)
!6079 = !DILocation(line: 10, column: 1, scope: !6080)
!6080 = distinct !DILexicalBlock(scope: !6077, file: !349, line: 10, column: 1)
!6081 = !DILocation(line: 10, column: 1, scope: !6078)
!6082 = distinct !{!6082, !6074, !6074, !6083, !6084}
!6083 = !{!"llvm.loop.mustprogress"}
!6084 = !{!"llvm.loop.unroll.disable"}
!6085 = distinct !DISubprogram(name: "__probestub_emulate_vsyscall", scope: !349, file: !349, line: 10, type: !336, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6086)
!6086 = !{!6087, !6088}
!6087 = !DILocalVariable(name: "__data", arg: 1, scope: !6085, file: !349, line: 10, type: !32)
!6088 = !DILocalVariable(name: "nr", arg: 2, scope: !6085, file: !349, line: 10, type: !34)
!6089 = !DILocation(line: 10, column: 1, scope: !6085)
!6090 = distinct !DISubprogram(name: "trace_event_raw_event_emulate_vsyscall", scope: !349, file: !349, line: 10, type: !336, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6091)
!6091 = !{!6092, !6093}
!6092 = !DILocalVariable(name: "__data", arg: 1, scope: !6090, file: !349, line: 10, type: !32)
!6093 = !DILocalVariable(name: "nr", arg: 2, scope: !6090, file: !349, line: 10, type: !34)
!6094 = !DILocation(line: 10, column: 1, scope: !6090)
!6095 = distinct !DISubprogram(name: "perf_trace_emulate_vsyscall", scope: !349, file: !349, line: 10, type: !336, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6096)
!6096 = !{!6097, !6098, !6099, !6100, !6102, !6103, !6104, !6105, !6106, !6107, !6108, !6109, !6110, !6113}
!6097 = !DILocalVariable(name: "__data", arg: 1, scope: !6095, file: !349, line: 10, type: !32)
!6098 = !DILocalVariable(name: "nr", arg: 2, scope: !6095, file: !349, line: 10, type: !34)
!6099 = !DILocalVariable(name: "event_call", scope: !6095, file: !349, line: 10, type: !2635)
!6100 = !DILocalVariable(name: "__data_offsets", scope: !6095, file: !349, line: 10, type: !6101)
!6101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_data_offsets_emulate_vsyscall", file: !349, line: 10, elements: !718)
!6102 = !DILocalVariable(name: "entry", scope: !6095, file: !349, line: 10, type: !347)
!6103 = !DILocalVariable(name: "__regs", scope: !6095, file: !349, line: 10, type: !3738)
!6104 = !DILocalVariable(name: "__count", scope: !6095, file: !349, line: 10, type: !339)
!6105 = !DILocalVariable(name: "__task", scope: !6095, file: !349, line: 10, type: !382)
!6106 = !DILocalVariable(name: "head", scope: !6095, file: !349, line: 10, type: !363)
!6107 = !DILocalVariable(name: "__entry_size", scope: !6095, file: !349, line: 10, type: !34)
!6108 = !DILocalVariable(name: "__data_size", scope: !6095, file: !349, line: 10, type: !34)
!6109 = !DILocalVariable(name: "rctx", scope: !6095, file: !349, line: 10, type: !34)
!6110 = !DILocalVariable(name: "__vpp_verify", scope: !6111, file: !349, line: 10, type: !2143)
!6111 = distinct !DILexicalBlock(scope: !6112, file: !349, line: 10, column: 1)
!6112 = distinct !DILexicalBlock(scope: !6095, file: !349, line: 10, column: 1)
!6113 = !DILocalVariable(name: "tcp_ptr__", scope: !6114, file: !349, line: 10, type: !51)
!6114 = distinct !DILexicalBlock(scope: !6112, file: !349, line: 10, column: 1)
!6115 = !DILocation(line: 10, column: 1, scope: !6095)
!6116 = !DILocation(line: 10, column: 1, scope: !6112)
!6117 = !DILocation(line: 10, column: 1, scope: !6111)
!6118 = !DILocation(line: 10, column: 1, scope: !6114)
!6119 = !{i64 2156128585}
!6120 = !DILocation(line: 10, column: 1, scope: !6121)
!6121 = distinct !DILexicalBlock(scope: !6095, file: !349, line: 10, column: 1)
!6122 = !DILocation(line: 10, column: 1, scope: !6123)
!6123 = distinct !DILexicalBlock(scope: !6095, file: !349, line: 10, column: 1)
!6124 = !DILocation(line: 10, column: 1, scope: !6125)
!6125 = distinct !DILexicalBlock(scope: !6095, file: !349, line: 10, column: 1)
!6126 = distinct !DISubprogram(name: "vsyscall_setup", scope: !3, file: !3, line: 54, type: !5908, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6127)
!6127 = !{!6128}
!6128 = !DILocalVariable(name: "str", arg: 1, scope: !6126, file: !3, line: 54, type: !989)
!6129 = !DILocation(line: 54, column: 40, scope: !6126)
!6130 = !DILocation(line: 56, column: 6, scope: !6131)
!6131 = distinct !DILexicalBlock(scope: !6126, file: !3, line: 56, column: 6)
!6132 = !DILocation(line: 56, column: 6, scope: !6126)
!6133 = !DILocation(line: 57, column: 26, scope: !6134)
!6134 = distinct !DILexicalBlock(scope: !6135, file: !3, line: 57, column: 7)
!6135 = distinct !DILexicalBlock(scope: !6131, file: !3, line: 56, column: 11)
!6136 = !DILocation(line: 57, column: 8, scope: !6134)
!6137 = !DILocation(line: 57, column: 7, scope: !6135)
!6138 = !DILocation(line: 58, column: 18, scope: !6134)
!6139 = !DILocation(line: 58, column: 4, scope: !6134)
!6140 = !DILocation(line: 59, column: 29, scope: !6141)
!6141 = distinct !DILexicalBlock(scope: !6134, file: !3, line: 59, column: 12)
!6142 = !DILocation(line: 59, column: 13, scope: !6141)
!6143 = !DILocation(line: 59, column: 12, scope: !6134)
!6144 = !DILocation(line: 60, column: 18, scope: !6141)
!6145 = !DILocation(line: 60, column: 4, scope: !6141)
!6146 = !DILocation(line: 61, column: 28, scope: !6147)
!6147 = distinct !DILexicalBlock(scope: !6141, file: !3, line: 61, column: 12)
!6148 = !DILocation(line: 61, column: 13, scope: !6147)
!6149 = !DILocation(line: 61, column: 12, scope: !6141)
!6150 = !DILocation(line: 62, column: 18, scope: !6147)
!6151 = !DILocation(line: 62, column: 4, scope: !6147)
!6152 = !DILocation(line: 64, column: 4, scope: !6147)
!6153 = !DILocation(line: 66, column: 3, scope: !6135)
!6154 = !DILocation(line: 69, column: 2, scope: !6126)
!6155 = !DILocation(line: 70, column: 1, scope: !6126)
!6156 = distinct !DISubprogram(name: "emulate_vsyscall", scope: !3, file: !3, line: 115, type: !6157, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6159)
!6157 = !DISubroutineType(types: !6158)
!6158 = !{!901, !51, !3738, !51}
!6159 = !{!6160, !6161, !6162, !6163, !6164, !6165, !6166, !6167, !6168, !6169, !6171, !6174, !6178, !6179, !6181, !6182, !6183}
!6160 = !DILocalVariable(name: "error_code", arg: 1, scope: !6156, file: !3, line: 115, type: !51)
!6161 = !DILocalVariable(name: "regs", arg: 2, scope: !6156, file: !3, line: 116, type: !3738)
!6162 = !DILocalVariable(name: "address", arg: 3, scope: !6156, file: !3, line: 116, type: !51)
!6163 = !DILocalVariable(name: "caller", scope: !6156, file: !3, line: 118, type: !51)
!6164 = !DILocalVariable(name: "vsyscall_nr", scope: !6156, file: !3, line: 119, type: !34)
!6165 = !DILocalVariable(name: "syscall_nr", scope: !6156, file: !3, line: 119, type: !34)
!6166 = !DILocalVariable(name: "tmp", scope: !6156, file: !3, line: 119, type: !34)
!6167 = !DILocalVariable(name: "ret", scope: !6156, file: !3, line: 120, type: !1126)
!6168 = !DILocalVariable(name: "orig_dx", scope: !6156, file: !3, line: 121, type: !51)
!6169 = !DILocalVariable(name: "__ret_warn_on", scope: !6170, file: !3, line: 144, type: !34)
!6170 = distinct !DILexicalBlock(scope: !6156, file: !3, line: 144, column: 2)
!6171 = !DILocalVariable(name: "__flags", scope: !6172, file: !3, line: 144, type: !34)
!6172 = distinct !DILexicalBlock(scope: !6173, file: !3, line: 144, column: 2)
!6173 = distinct !DILexicalBlock(scope: !6170, file: !3, line: 144, column: 2)
!6174 = !DILocalVariable(name: "__ret_gu", scope: !6175, file: !3, line: 162, type: !34)
!6175 = distinct !DILexicalBlock(scope: !6176, file: !3, line: 162, column: 6)
!6176 = distinct !DILexicalBlock(scope: !6177, file: !3, line: 162, column: 6)
!6177 = distinct !DILexicalBlock(scope: !6156, file: !3, line: 162, column: 6)
!6178 = !DILocalVariable(name: "__val_gu", scope: !6175, file: !3, line: 162, type: !51)
!6179 = !DILocalVariable(name: "__tmp", scope: !6180, file: !3, line: 162, type: !339)
!6180 = distinct !DILexicalBlock(scope: !6175, file: !3, line: 162, column: 6)
!6181 = !DILabel(scope: !6156, name: "check_fault", file: !3, line: 252)
!6182 = !DILabel(scope: !6156, name: "do_ret", file: !3, line: 262)
!6183 = !DILabel(scope: !6156, name: "sigsegv", file: !3, line: 268)
!6184 = !DILocation(line: 115, column: 37, scope: !6156)
!6185 = !DILocation(line: 116, column: 25, scope: !6156)
!6186 = !DILocation(line: 116, column: 45, scope: !6156)
!6187 = !DILocation(line: 118, column: 2, scope: !6156)
!6188 = !DILocation(line: 118, column: 16, scope: !6156)
!6189 = !DILocation(line: 119, column: 2, scope: !6156)
!6190 = !DILocation(line: 119, column: 6, scope: !6156)
!6191 = !DILocation(line: 119, column: 19, scope: !6156)
!6192 = !DILocation(line: 119, column: 31, scope: !6156)
!6193 = !DILocation(line: 120, column: 2, scope: !6156)
!6194 = !DILocation(line: 120, column: 7, scope: !6156)
!6195 = !DILocation(line: 121, column: 2, scope: !6156)
!6196 = !DILocation(line: 121, column: 16, scope: !6156)
!6197 = !DILocation(line: 124, column: 7, scope: !6198)
!6198 = distinct !DILexicalBlock(scope: !6156, file: !3, line: 124, column: 6)
!6199 = !DILocation(line: 124, column: 18, scope: !6198)
!6200 = !DILocation(line: 124, column: 50, scope: !6198)
!6201 = !DILocation(line: 124, column: 6, scope: !6156)
!6202 = !DILocation(line: 125, column: 3, scope: !6198)
!6203 = !DILocation(line: 127, column: 8, scope: !6204)
!6204 = distinct !DILexicalBlock(scope: !6156, file: !3, line: 127, column: 6)
!6205 = !DILocation(line: 127, column: 19, scope: !6204)
!6206 = !DILocation(line: 127, column: 6, scope: !6156)
!6207 = !DILocation(line: 129, column: 7, scope: !6208)
!6208 = distinct !DILexicalBlock(scope: !6209, file: !3, line: 129, column: 7)
!6209 = distinct !DILexicalBlock(scope: !6204, file: !3, line: 127, column: 36)
!6210 = !DILocation(line: 129, column: 21, scope: !6208)
!6211 = !DILocation(line: 129, column: 7, scope: !6209)
!6212 = !DILocation(line: 130, column: 4, scope: !6208)
!6213 = !DILocation(line: 135, column: 32, scope: !6209)
!6214 = !DILocation(line: 135, column: 3, scope: !6209)
!6215 = !DILocation(line: 136, column: 3, scope: !6209)
!6216 = !DILocation(line: 144, column: 2, scope: !6170)
!6217 = !DILocation(line: 144, column: 2, scope: !6173)
!6218 = !DILocation(line: 144, column: 2, scope: !6172)
!6219 = !DILocation(line: 144, column: 2, scope: !6220)
!6220 = distinct !DILexicalBlock(scope: !6172, file: !3, line: 144, column: 2)
!6221 = !DILocation(line: 144, column: 2, scope: !6222)
!6222 = distinct !DILexicalBlock(scope: !6172, file: !3, line: 144, column: 2)
!6223 = !{i64 2156141621, i64 2156141650, i64 2156141696, i64 2156141754, i64 2156141808, i64 2156141862, i64 2156141917, i64 2156141948, i64 2156142256, i64 2156142262, i64 2156142309, i64 2156142332, i64 2156142358}
!6224 = !DILocation(line: 144, column: 2, scope: !6225)
!6225 = distinct !DILexicalBlock(scope: !6172, file: !3, line: 144, column: 2)
!6226 = !DILocation(line: 144, column: 2, scope: !6156)
!6227 = !DILocation(line: 146, column: 6, scope: !6228)
!6228 = distinct !DILexicalBlock(scope: !6156, file: !3, line: 146, column: 6)
!6229 = !DILocation(line: 146, column: 20, scope: !6228)
!6230 = !DILocation(line: 146, column: 6, scope: !6156)
!6231 = !DILocation(line: 147, column: 32, scope: !6232)
!6232 = distinct !DILexicalBlock(scope: !6228, file: !3, line: 146, column: 29)
!6233 = !DILocation(line: 147, column: 3, scope: !6232)
!6234 = !DILocation(line: 149, column: 3, scope: !6232)
!6235 = !DILocation(line: 152, column: 36, scope: !6156)
!6236 = !DILocation(line: 152, column: 16, scope: !6156)
!6237 = !DILocation(line: 152, column: 14, scope: !6156)
!6238 = !DILocation(line: 154, column: 25, scope: !6156)
!6239 = !DILocation(line: 154, column: 2, scope: !6156)
!6240 = !DILocation(line: 156, column: 6, scope: !6241)
!6241 = distinct !DILexicalBlock(scope: !6156, file: !3, line: 156, column: 6)
!6242 = !DILocation(line: 156, column: 18, scope: !6241)
!6243 = !DILocation(line: 156, column: 6, scope: !6156)
!6244 = !DILocation(line: 157, column: 35, scope: !6245)
!6245 = distinct !DILexicalBlock(scope: !6241, file: !3, line: 156, column: 23)
!6246 = !DILocation(line: 157, column: 3, scope: !6245)
!6247 = !DILocation(line: 159, column: 3, scope: !6245)
!6248 = !DILocation(line: 162, column: 6, scope: !6176)
!6249 = !DILocation(line: 162, column: 6, scope: !6175)
!6250 = !{i64 2156142907}
!6251 = !DILocation(line: 162, column: 6, scope: !6180)
!6252 = !DILocation(line: 162, column: 57, scope: !6177)
!6253 = !DILocation(line: 162, column: 6, scope: !6156)
!6254 = !DILocation(line: 163, column: 35, scope: !6255)
!6255 = distinct !DILexicalBlock(scope: !6177, file: !3, line: 162, column: 63)
!6256 = !DILocation(line: 163, column: 3, scope: !6255)
!6257 = !DILocation(line: 165, column: 3, scope: !6255)
!6258 = !DILocation(line: 176, column: 10, scope: !6156)
!6259 = !DILocation(line: 176, column: 2, scope: !6156)
!6260 = !DILocation(line: 178, column: 25, scope: !6261)
!6261 = distinct !DILexicalBlock(scope: !6262, file: !3, line: 178, column: 7)
!6262 = distinct !DILexicalBlock(scope: !6156, file: !3, line: 176, column: 23)
!6263 = !DILocation(line: 178, column: 31, scope: !6261)
!6264 = !DILocation(line: 178, column: 8, scope: !6261)
!6265 = !DILocation(line: 178, column: 72, scope: !6261)
!6266 = !DILocation(line: 179, column: 25, scope: !6261)
!6267 = !DILocation(line: 179, column: 31, scope: !6261)
!6268 = !DILocation(line: 179, column: 8, scope: !6261)
!6269 = !DILocation(line: 178, column: 7, scope: !6262)
!6270 = !DILocation(line: 180, column: 8, scope: !6271)
!6271 = distinct !DILexicalBlock(scope: !6261, file: !3, line: 179, column: 61)
!6272 = !DILocation(line: 181, column: 4, scope: !6271)
!6273 = !DILocation(line: 184, column: 14, scope: !6262)
!6274 = !DILocation(line: 185, column: 3, scope: !6262)
!6275 = !DILocation(line: 188, column: 25, scope: !6276)
!6276 = distinct !DILexicalBlock(scope: !6262, file: !3, line: 188, column: 7)
!6277 = !DILocation(line: 188, column: 31, scope: !6276)
!6278 = !DILocation(line: 188, column: 8, scope: !6276)
!6279 = !DILocation(line: 188, column: 7, scope: !6262)
!6280 = !DILocation(line: 189, column: 8, scope: !6281)
!6281 = distinct !DILexicalBlock(scope: !6276, file: !3, line: 188, column: 65)
!6282 = !DILocation(line: 190, column: 4, scope: !6281)
!6283 = !DILocation(line: 193, column: 14, scope: !6262)
!6284 = !DILocation(line: 194, column: 3, scope: !6262)
!6285 = !DILocation(line: 197, column: 25, scope: !6286)
!6286 = distinct !DILexicalBlock(scope: !6262, file: !3, line: 197, column: 7)
!6287 = !DILocation(line: 197, column: 31, scope: !6286)
!6288 = !DILocation(line: 197, column: 8, scope: !6286)
!6289 = !DILocation(line: 197, column: 53, scope: !6286)
!6290 = !DILocation(line: 198, column: 25, scope: !6286)
!6291 = !DILocation(line: 198, column: 31, scope: !6286)
!6292 = !DILocation(line: 198, column: 8, scope: !6286)
!6293 = !DILocation(line: 197, column: 7, scope: !6262)
!6294 = !DILocation(line: 199, column: 8, scope: !6295)
!6295 = distinct !DILexicalBlock(scope: !6286, file: !3, line: 198, column: 54)
!6296 = !DILocation(line: 200, column: 4, scope: !6295)
!6297 = !DILocation(line: 203, column: 14, scope: !6262)
!6298 = !DILocation(line: 204, column: 3, scope: !6262)
!6299 = !DILocation(line: 214, column: 18, scope: !6156)
!6300 = !DILocation(line: 214, column: 2, scope: !6156)
!6301 = !DILocation(line: 214, column: 8, scope: !6156)
!6302 = !DILocation(line: 214, column: 16, scope: !6156)
!6303 = !DILocation(line: 215, column: 2, scope: !6156)
!6304 = !DILocation(line: 215, column: 8, scope: !6156)
!6305 = !DILocation(line: 215, column: 11, scope: !6156)
!6306 = !DILocation(line: 216, column: 8, scope: !6156)
!6307 = !DILocation(line: 216, column: 6, scope: !6156)
!6308 = !DILocation(line: 217, column: 8, scope: !6309)
!6309 = distinct !DILexicalBlock(scope: !6156, file: !3, line: 217, column: 6)
!6310 = !DILocation(line: 217, column: 12, scope: !6309)
!6311 = !DILocation(line: 217, column: 15, scope: !6309)
!6312 = !DILocation(line: 217, column: 21, scope: !6309)
!6313 = !DILocation(line: 217, column: 32, scope: !6309)
!6314 = !DILocation(line: 217, column: 29, scope: !6309)
!6315 = !DILocation(line: 217, column: 44, scope: !6309)
!6316 = !DILocation(line: 217, column: 47, scope: !6309)
!6317 = !DILocation(line: 217, column: 53, scope: !6309)
!6318 = !DILocation(line: 217, column: 59, scope: !6309)
!6319 = !DILocation(line: 217, column: 56, scope: !6309)
!6320 = !DILocation(line: 217, column: 6, scope: !6156)
!6321 = !DILocation(line: 218, column: 33, scope: !6322)
!6322 = distinct !DILexicalBlock(scope: !6309, file: !3, line: 217, column: 68)
!6323 = !DILocation(line: 218, column: 3, scope: !6322)
!6324 = !DILocation(line: 220, column: 3, scope: !6322)
!6325 = !DILocation(line: 221, column: 3, scope: !6322)
!6326 = !DILocation(line: 223, column: 2, scope: !6156)
!6327 = !DILocation(line: 223, column: 8, scope: !6156)
!6328 = !DILocation(line: 223, column: 16, scope: !6156)
!6329 = !DILocation(line: 224, column: 6, scope: !6330)
!6330 = distinct !DILexicalBlock(scope: !6156, file: !3, line: 224, column: 6)
!6331 = !DILocation(line: 224, column: 6, scope: !6156)
!6332 = !DILocation(line: 225, column: 3, scope: !6330)
!6333 = !DILocation(line: 230, column: 6, scope: !6156)
!6334 = !DILocation(line: 231, column: 10, scope: !6156)
!6335 = !DILocation(line: 231, column: 2, scope: !6156)
!6336 = !DILocation(line: 234, column: 32, scope: !6337)
!6337 = distinct !DILexicalBlock(scope: !6156, file: !3, line: 231, column: 23)
!6338 = !DILocation(line: 234, column: 9, scope: !6337)
!6339 = !DILocation(line: 234, column: 7, scope: !6337)
!6340 = !DILocation(line: 235, column: 3, scope: !6337)
!6341 = !DILocation(line: 239, column: 24, scope: !6337)
!6342 = !DILocation(line: 239, column: 9, scope: !6337)
!6343 = !DILocation(line: 239, column: 7, scope: !6337)
!6344 = !DILocation(line: 240, column: 3, scope: !6337)
!6345 = !DILocation(line: 244, column: 13, scope: !6337)
!6346 = !DILocation(line: 244, column: 19, scope: !6337)
!6347 = !DILocation(line: 244, column: 11, scope: !6337)
!6348 = !DILocation(line: 245, column: 3, scope: !6337)
!6349 = !DILocation(line: 245, column: 9, scope: !6337)
!6350 = !DILocation(line: 245, column: 12, scope: !6337)
!6351 = !DILocation(line: 247, column: 26, scope: !6337)
!6352 = !DILocation(line: 247, column: 9, scope: !6337)
!6353 = !DILocation(line: 247, column: 7, scope: !6337)
!6354 = !DILocation(line: 248, column: 14, scope: !6337)
!6355 = !DILocation(line: 248, column: 3, scope: !6337)
!6356 = !DILocation(line: 248, column: 9, scope: !6337)
!6357 = !DILocation(line: 248, column: 12, scope: !6337)
!6358 = !DILocation(line: 249, column: 3, scope: !6337)
!6359 = !DILocation(line: 250, column: 2, scope: !6337)
!6360 = !DILocation(line: 252, column: 1, scope: !6156)
!6361 = !DILocation(line: 253, column: 6, scope: !6362)
!6362 = distinct !DILexicalBlock(scope: !6156, file: !3, line: 253, column: 6)
!6363 = !DILocation(line: 253, column: 10, scope: !6362)
!6364 = !DILocation(line: 253, column: 6, scope: !6156)
!6365 = !DILocation(line: 255, column: 32, scope: !6366)
!6366 = distinct !DILexicalBlock(scope: !6362, file: !3, line: 253, column: 22)
!6367 = !DILocation(line: 255, column: 3, scope: !6366)
!6368 = !DILocation(line: 257, column: 3, scope: !6366)
!6369 = !DILocation(line: 260, column: 13, scope: !6156)
!6370 = !DILocation(line: 260, column: 2, scope: !6156)
!6371 = !DILocation(line: 260, column: 8, scope: !6156)
!6372 = !DILocation(line: 260, column: 11, scope: !6156)
!6373 = !DILocation(line: 262, column: 1, scope: !6156)
!6374 = !DILocation(line: 264, column: 13, scope: !6156)
!6375 = !DILocation(line: 264, column: 2, scope: !6156)
!6376 = !DILocation(line: 264, column: 8, scope: !6156)
!6377 = !DILocation(line: 264, column: 11, scope: !6156)
!6378 = !DILocation(line: 265, column: 2, scope: !6156)
!6379 = !DILocation(line: 265, column: 8, scope: !6156)
!6380 = !DILocation(line: 265, column: 11, scope: !6156)
!6381 = !DILocation(line: 266, column: 2, scope: !6156)
!6382 = !DILocation(line: 268, column: 1, scope: !6156)
!6383 = !DILocation(line: 269, column: 2, scope: !6156)
!6384 = !DILocation(line: 270, column: 2, scope: !6156)
!6385 = !DILocation(line: 271, column: 1, scope: !6156)
!6386 = !DILocation(line: 73, column: 43, scope: !5987)
!6387 = !DILocation(line: 73, column: 66, scope: !5987)
!6388 = !DILocation(line: 74, column: 22, scope: !5987)
!6389 = !DILocation(line: 76, column: 7, scope: !6390)
!6390 = distinct !DILexicalBlock(scope: !5987, file: !3, line: 76, column: 6)
!6391 = !DILocation(line: 76, column: 6, scope: !5987)
!6392 = !DILocation(line: 77, column: 3, scope: !6390)
!6393 = !DILocation(line: 79, column: 2, scope: !6394)
!6394 = distinct !DILexicalBlock(scope: !6395, file: !3, line: 79, column: 2)
!6395 = distinct !DILexicalBlock(scope: !5987, file: !3, line: 79, column: 2)
!6396 = !DILocation(line: 79, column: 2, scope: !6395)
!6397 = !DILocation(line: 79, column: 2, scope: !6398)
!6398 = distinct !DILexicalBlock(scope: !6394, file: !3, line: 79, column: 2)
!6399 = !DILocation(line: 79, column: 2, scope: !6400)
!6400 = distinct !DILexicalBlock(scope: !6398, file: !3, line: 79, column: 2)
!6401 = !DILocation(line: 83, column: 1, scope: !5987)
!6402 = distinct !DISubprogram(name: "addr_to_vsyscall_nr", scope: !3, file: !3, line: 85, type: !6403, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6405)
!6403 = !DISubroutineType(types: !6404)
!6404 = !{!34, !51}
!6405 = !{!6406, !6407}
!6406 = !DILocalVariable(name: "addr", arg: 1, scope: !6402, file: !3, line: 85, type: !51)
!6407 = !DILocalVariable(name: "nr", scope: !6402, file: !3, line: 87, type: !34)
!6408 = !DILocation(line: 85, column: 46, scope: !6402)
!6409 = !DILocation(line: 87, column: 2, scope: !6402)
!6410 = !DILocation(line: 87, column: 6, scope: !6402)
!6411 = !DILocation(line: 89, column: 7, scope: !6412)
!6412 = distinct !DILexicalBlock(scope: !6402, file: !3, line: 89, column: 6)
!6413 = !DILocation(line: 89, column: 12, scope: !6412)
!6414 = !DILocation(line: 89, column: 24, scope: !6412)
!6415 = !DILocation(line: 89, column: 6, scope: !6402)
!6416 = !DILocation(line: 90, column: 3, scope: !6412)
!6417 = !DILocation(line: 92, column: 8, scope: !6402)
!6418 = !DILocation(line: 92, column: 13, scope: !6402)
!6419 = !DILocation(line: 92, column: 24, scope: !6402)
!6420 = !DILocation(line: 92, column: 7, scope: !6402)
!6421 = !DILocation(line: 92, column: 5, scope: !6402)
!6422 = !DILocation(line: 93, column: 6, scope: !6423)
!6423 = distinct !DILexicalBlock(scope: !6402, file: !3, line: 93, column: 6)
!6424 = !DILocation(line: 93, column: 9, scope: !6423)
!6425 = !DILocation(line: 93, column: 6, scope: !6402)
!6426 = !DILocation(line: 94, column: 3, scope: !6423)
!6427 = !DILocation(line: 96, column: 9, scope: !6402)
!6428 = !DILocation(line: 96, column: 2, scope: !6402)
!6429 = !DILocation(line: 97, column: 1, scope: !6402)
!6430 = !DILocation(line: 10, column: 1, scope: !6008)
!6431 = !DILocation(line: 10, column: 1, scope: !6013)
!6432 = !DILocation(line: 10, column: 1, scope: !6012)
!6433 = !DILocation(line: 10, column: 1, scope: !6015)
!6434 = !DILocation(line: 10, column: 1, scope: !6018)
!6435 = !DILocation(line: 10, column: 1, scope: !6020)
!6436 = !{i64 2155770962}
!6437 = !DILocation(line: 10, column: 1, scope: !6016)
!6438 = !DILocation(line: 10, column: 1, scope: !6022)
!6439 = !DILocation(line: 10, column: 1, scope: !6026)
!6440 = !DILocation(line: 10, column: 1, scope: !6025)
!6441 = !DILocation(line: 10, column: 1, scope: !6442)
!6442 = distinct !DILexicalBlock(scope: !6025, file: !349, line: 10, column: 1)
!6443 = !DILocation(line: 10, column: 1, scope: !6444)
!6444 = distinct !DILexicalBlock(scope: !6025, file: !349, line: 10, column: 1)
!6445 = !{i64 2155772146, i64 2155772175, i64 2155772221, i64 2155772279, i64 2155772333, i64 2155772387, i64 2155772442, i64 2155772473, i64 2155772781, i64 2155772787, i64 2155772834, i64 2155772857, i64 2155772883}
!6446 = !DILocation(line: 10, column: 1, scope: !6447)
!6447 = distinct !DILexicalBlock(scope: !6025, file: !349, line: 10, column: 1)
!6448 = !DILocation(line: 10, column: 1, scope: !6023)
!6449 = !DILocation(line: 10, column: 1, scope: !6450)
!6450 = distinct !DILexicalBlock(scope: !6012, file: !349, line: 10, column: 1)
!6451 = !{i64 2155773247}
!6452 = !DILocation(line: 10, column: 1, scope: !6028)
!6453 = !DILocation(line: 10, column: 1, scope: !6031)
!6454 = !DILocation(line: 10, column: 1, scope: !6455)
!6455 = distinct !DILexicalBlock(scope: !6031, file: !349, line: 10, column: 1)
!6456 = !DILocation(line: 10, column: 1, scope: !6457)
!6457 = distinct !DILexicalBlock(scope: !6455, file: !349, line: 10, column: 1)
!6458 = !DILocation(line: 10, column: 1, scope: !6459)
!6459 = distinct !DILexicalBlock(scope: !6028, file: !349, line: 10, column: 1)
!6460 = !DILocation(line: 10, column: 1, scope: !6461)
!6461 = distinct !DILexicalBlock(scope: !6459, file: !349, line: 10, column: 1)
!6462 = !DILocation(line: 10, column: 1, scope: !6463)
!6463 = distinct !DILexicalBlock(scope: !6461, file: !349, line: 10, column: 1)
!6464 = !DILocation(line: 10, column: 1, scope: !6465)
!6465 = distinct !DILexicalBlock(scope: !6012, file: !349, line: 10, column: 1)
!6466 = !{i64 2155779714}
!6467 = !DILocation(line: 10, column: 1, scope: !6468)
!6468 = distinct !DILexicalBlock(scope: !6465, file: !349, line: 10, column: 1)
!6469 = !DILocation(line: 10, column: 1, scope: !6470)
!6470 = distinct !DILexicalBlock(scope: !6468, file: !349, line: 10, column: 1)
!6471 = !{i64 2155779873}
!6472 = distinct !DISubprogram(name: "might_fault", scope: !6473, file: !6473, line: 202, type: !2730, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6473 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!6474 = !DILocation(line: 202, column: 40, scope: !6472)
!6475 = distinct !DISubprogram(name: "kmsan_unpoison_memory", scope: !6476, file: !6476, line: 70, type: !6477, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6479)
!6476 = !DIFile(filename: "./include/linux/kmsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cfeb6fcb47441b7815b086def457771")
!6477 = !DISubroutineType(types: !6478)
!6478 = !{null, !2143, !47}
!6479 = !{!6480, !6481}
!6480 = !DILocalVariable(name: "address", arg: 1, scope: !6475, file: !6476, line: 70, type: !2143)
!6481 = !DILocalVariable(name: "size", arg: 2, scope: !6475, file: !6476, line: 70, type: !47)
!6482 = !DILocation(line: 70, column: 54, scope: !6475)
!6483 = !DILocation(line: 70, column: 70, scope: !6475)
!6484 = !DILocation(line: 72, column: 1, scope: !6475)
!6485 = distinct !DISubprogram(name: "write_ok_or_segv", scope: !3, file: !3, line: 99, type: !6486, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6488)
!6486 = !DISubroutineType(types: !6487)
!6487 = !{!901, !51, !47}
!6488 = !{!6489, !6490, !6491}
!6489 = !DILocalVariable(name: "ptr", arg: 1, scope: !6485, file: !3, line: 99, type: !51)
!6490 = !DILocalVariable(name: "size", arg: 2, scope: !6485, file: !3, line: 99, type: !47)
!6491 = !DILocalVariable(name: "thread", scope: !6492, file: !3, line: 102, type: !6494)
!6492 = distinct !DILexicalBlock(scope: !6493, file: !3, line: 101, column: 44)
!6493 = distinct !DILexicalBlock(scope: !6485, file: !3, line: 101, column: 6)
!6494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5698, size: 64)
!6495 = !DILocation(line: 99, column: 44, scope: !6485)
!6496 = !DILocation(line: 99, column: 56, scope: !6485)
!6497 = !DILocation(line: 101, column: 7, scope: !6493)
!6498 = !DILocation(line: 101, column: 6, scope: !6485)
!6499 = !DILocation(line: 102, column: 3, scope: !6492)
!6500 = !DILocation(line: 102, column: 25, scope: !6492)
!6501 = !DILocation(line: 102, column: 35, scope: !6492)
!6502 = !DILocation(line: 102, column: 44, scope: !6492)
!6503 = !DILocation(line: 104, column: 3, scope: !6492)
!6504 = !DILocation(line: 104, column: 11, scope: !6492)
!6505 = !DILocation(line: 104, column: 22, scope: !6492)
!6506 = !DILocation(line: 105, column: 18, scope: !6492)
!6507 = !DILocation(line: 105, column: 3, scope: !6492)
!6508 = !DILocation(line: 105, column: 11, scope: !6492)
!6509 = !DILocation(line: 105, column: 16, scope: !6492)
!6510 = !DILocation(line: 106, column: 3, scope: !6492)
!6511 = !DILocation(line: 106, column: 11, scope: !6492)
!6512 = !DILocation(line: 106, column: 20, scope: !6492)
!6513 = !DILocation(line: 108, column: 56, scope: !6492)
!6514 = !DILocation(line: 108, column: 41, scope: !6492)
!6515 = !DILocation(line: 108, column: 3, scope: !6492)
!6516 = !DILocation(line: 109, column: 3, scope: !6492)
!6517 = !DILocation(line: 110, column: 2, scope: !6493)
!6518 = !DILocation(line: 111, column: 3, scope: !6519)
!6519 = distinct !DILexicalBlock(scope: !6493, file: !3, line: 110, column: 9)
!6520 = !DILocation(line: 113, column: 1, scope: !6485)
!6521 = distinct !DISubprogram(name: "secure_computing", scope: !5379, file: !5379, line: 45, type: !2427, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6522 = !DILocation(line: 47, column: 6, scope: !6523)
!6523 = distinct !DILexicalBlock(scope: !6521, file: !5379, line: 47, column: 6)
!6524 = !DILocation(line: 47, column: 6, scope: !6521)
!6525 = !DILocation(line: 48, column: 11, scope: !6523)
!6526 = !DILocation(line: 48, column: 3, scope: !6523)
!6527 = !DILocation(line: 49, column: 2, scope: !6521)
!6528 = !DILocation(line: 50, column: 1, scope: !6521)
!6529 = !DISubprogram(name: "force_exit_sig", scope: !5142, file: !5142, line: 347, type: !5356, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6530 = !DISubprogram(name: "__x64_sys_gettimeofday", scope: !6531, file: !6531, line: 261, type: !6532, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6531 = !DIFile(filename: "./arch/x86/include/asm/syscall_wrapper.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e2bff4090ff7875904841a8bb7a6573")
!6532 = !DISubroutineType(types: !6533)
!6533 = !{!1126, !6534}
!6534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6535, size: 64)
!6535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3739)
!6536 = !DISubprogram(name: "__x64_sys_time", scope: !6531, file: !6531, line: 262, type: !6532, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6537 = !DISubprogram(name: "__x64_sys_getcpu", scope: !6531, file: !6531, line: 260, type: !6532, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6538 = !DISubprogram(name: "force_sig", scope: !5142, file: !5142, line: 345, type: !5356, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6539 = distinct !DISubprogram(name: "get_gate_vma", scope: !3, file: !3, line: 293, type: !6540, scopeLine: 294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6542)
!6540 = !DISubroutineType(types: !6541)
!6541 = !{!1749, !697}
!6542 = !{!6543}
!6543 = !DILocalVariable(name: "mm", arg: 1, scope: !6539, file: !3, line: 293, type: !697)
!6544 = !DILocation(line: 293, column: 55, scope: !6539)
!6545 = !DILocation(line: 296, column: 7, scope: !6546)
!6546 = distinct !DILexicalBlock(scope: !6539, file: !3, line: 296, column: 6)
!6547 = !DILocation(line: 296, column: 10, scope: !6546)
!6548 = !DILocation(line: 296, column: 14, scope: !6546)
!6549 = !DILocation(line: 296, column: 6, scope: !6539)
!6550 = !DILocation(line: 297, column: 3, scope: !6546)
!6551 = !DILocation(line: 299, column: 6, scope: !6552)
!6552 = distinct !DILexicalBlock(scope: !6539, file: !3, line: 299, column: 6)
!6553 = !DILocation(line: 299, column: 20, scope: !6552)
!6554 = !DILocation(line: 299, column: 6, scope: !6539)
!6555 = !DILocation(line: 300, column: 3, scope: !6552)
!6556 = !DILocation(line: 301, column: 2, scope: !6539)
!6557 = !DILocation(line: 302, column: 1, scope: !6539)
!6558 = distinct !DISubprogram(name: "const_test_bit", scope: !6559, file: !6559, line: 166, type: !6560, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6565)
!6559 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!6560 = !DISubroutineType(types: !6561)
!6561 = !{!901, !51, !6562}
!6562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6563, size: 64)
!6563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6564)
!6564 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !51)
!6565 = !{!6566, !6567, !6568, !6569, !6570}
!6566 = !DILocalVariable(name: "nr", arg: 1, scope: !6558, file: !6559, line: 166, type: !51)
!6567 = !DILocalVariable(name: "addr", arg: 2, scope: !6558, file: !6559, line: 166, type: !6562)
!6568 = !DILocalVariable(name: "p", scope: !6558, file: !6559, line: 168, type: !343)
!6569 = !DILocalVariable(name: "mask", scope: !6558, file: !6559, line: 169, type: !51)
!6570 = !DILocalVariable(name: "val", scope: !6558, file: !6559, line: 170, type: !51)
!6571 = !DILocation(line: 166, column: 30, scope: !6558)
!6572 = !DILocation(line: 166, column: 64, scope: !6558)
!6573 = !DILocation(line: 168, column: 2, scope: !6558)
!6574 = !DILocation(line: 168, column: 23, scope: !6558)
!6575 = !DILocation(line: 168, column: 50, scope: !6558)
!6576 = !DILocation(line: 168, column: 57, scope: !6558)
!6577 = !DILocation(line: 168, column: 55, scope: !6558)
!6578 = !DILocation(line: 169, column: 2, scope: !6558)
!6579 = !DILocation(line: 169, column: 16, scope: !6558)
!6580 = !DILocation(line: 169, column: 23, scope: !6558)
!6581 = !DILocation(line: 170, column: 2, scope: !6558)
!6582 = !DILocation(line: 170, column: 16, scope: !6558)
!6583 = !DILocation(line: 170, column: 23, scope: !6558)
!6584 = !DILocation(line: 170, column: 22, scope: !6558)
!6585 = !DILocation(line: 172, column: 12, scope: !6558)
!6586 = !DILocation(line: 172, column: 18, scope: !6558)
!6587 = !DILocation(line: 172, column: 16, scope: !6558)
!6588 = !DILocation(line: 172, column: 10, scope: !6558)
!6589 = !DILocation(line: 172, column: 9, scope: !6558)
!6590 = !DILocation(line: 173, column: 1, scope: !6558)
!6591 = !DILocation(line: 172, column: 2, scope: !6558)
!6592 = distinct !DISubprogram(name: "_test_bit", scope: !6593, file: !6593, line: 139, type: !6560, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6594)
!6593 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!6594 = !{!6595, !6596}
!6595 = !DILocalVariable(name: "nr", arg: 1, scope: !6592, file: !6593, line: 139, type: !51)
!6596 = !DILocalVariable(name: "addr", arg: 2, scope: !6592, file: !6593, line: 139, type: !6562)
!6597 = !DILocation(line: 139, column: 25, scope: !6592)
!6598 = !DILocation(line: 139, column: 59, scope: !6592)
!6599 = !DILocation(line: 141, column: 25, scope: !6592)
!6600 = !DILocation(line: 141, column: 32, scope: !6592)
!6601 = !DILocation(line: 141, column: 30, scope: !6592)
!6602 = !DILocation(line: 141, column: 2, scope: !6592)
!6603 = !DILocation(line: 142, column: 23, scope: !6592)
!6604 = !DILocation(line: 142, column: 27, scope: !6592)
!6605 = !DILocation(line: 142, column: 9, scope: !6592)
!6606 = !DILocation(line: 142, column: 2, scope: !6592)
!6607 = distinct !DISubprogram(name: "in_gate_area", scope: !3, file: !3, line: 304, type: !6608, scopeLine: 305, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6610)
!6608 = !DISubroutineType(types: !6609)
!6609 = !{!34, !697, !51}
!6610 = !{!6611, !6612, !6613}
!6611 = !DILocalVariable(name: "mm", arg: 1, scope: !6607, file: !3, line: 304, type: !697)
!6612 = !DILocalVariable(name: "addr", arg: 2, scope: !6607, file: !3, line: 304, type: !51)
!6613 = !DILocalVariable(name: "vma", scope: !6607, file: !3, line: 306, type: !1749)
!6614 = !DILocation(line: 304, column: 36, scope: !6607)
!6615 = !DILocation(line: 304, column: 54, scope: !6607)
!6616 = !DILocation(line: 306, column: 2, scope: !6607)
!6617 = !DILocation(line: 306, column: 25, scope: !6607)
!6618 = !DILocation(line: 306, column: 44, scope: !6607)
!6619 = !DILocation(line: 306, column: 31, scope: !6607)
!6620 = !DILocation(line: 308, column: 7, scope: !6621)
!6621 = distinct !DILexicalBlock(scope: !6607, file: !3, line: 308, column: 6)
!6622 = !DILocation(line: 308, column: 6, scope: !6607)
!6623 = !DILocation(line: 309, column: 3, scope: !6621)
!6624 = !DILocation(line: 311, column: 10, scope: !6607)
!6625 = !DILocation(line: 311, column: 18, scope: !6607)
!6626 = !DILocation(line: 311, column: 23, scope: !6607)
!6627 = !DILocation(line: 311, column: 15, scope: !6607)
!6628 = !DILocation(line: 311, column: 33, scope: !6607)
!6629 = !DILocation(line: 311, column: 37, scope: !6607)
!6630 = !DILocation(line: 311, column: 44, scope: !6607)
!6631 = !DILocation(line: 311, column: 49, scope: !6607)
!6632 = !DILocation(line: 311, column: 42, scope: !6607)
!6633 = !DILocation(line: 0, scope: !6607)
!6634 = !DILocation(line: 311, column: 2, scope: !6607)
!6635 = !DILocation(line: 312, column: 1, scope: !6607)
!6636 = distinct !DISubprogram(name: "in_gate_area_no_mm", scope: !3, file: !3, line: 319, type: !6403, scopeLine: 320, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6637)
!6637 = !{!6638}
!6638 = !DILocalVariable(name: "addr", arg: 1, scope: !6636, file: !3, line: 319, type: !51)
!6639 = !DILocation(line: 319, column: 38, scope: !6636)
!6640 = !DILocation(line: 321, column: 9, scope: !6636)
!6641 = !DILocation(line: 321, column: 23, scope: !6636)
!6642 = !DILocation(line: 321, column: 31, scope: !6636)
!6643 = !DILocation(line: 321, column: 35, scope: !6636)
!6644 = !DILocation(line: 321, column: 40, scope: !6636)
!6645 = !DILocation(line: 321, column: 53, scope: !6636)
!6646 = !DILocation(line: 0, scope: !6636)
!6647 = !DILocation(line: 321, column: 2, scope: !6636)
!6648 = distinct !DISubprogram(name: "set_vsyscall_pgtable_user_bits", scope: !3, file: !3, line: 334, type: !6649, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6651)
!6649 = !DISubroutineType(types: !6650)
!6650 = !{null, !4827}
!6651 = !{!6652, !6653, !6654, !6655, !6656}
!6652 = !DILocalVariable(name: "root", arg: 1, scope: !6648, file: !3, line: 334, type: !4827)
!6653 = !DILocalVariable(name: "pgd", scope: !6648, file: !3, line: 336, type: !4827)
!6654 = !DILocalVariable(name: "p4d", scope: !6648, file: !3, line: 337, type: !5876)
!6655 = !DILocalVariable(name: "pud", scope: !6648, file: !3, line: 338, type: !1871)
!6656 = !DILocalVariable(name: "pmd", scope: !6648, file: !3, line: 339, type: !1864)
!6657 = !DILocation(line: 334, column: 51, scope: !6648)
!6658 = !DILocation(line: 336, column: 2, scope: !6648)
!6659 = !DILocation(line: 336, column: 9, scope: !6648)
!6660 = !DILocation(line: 337, column: 2, scope: !6648)
!6661 = !DILocation(line: 337, column: 9, scope: !6648)
!6662 = !DILocation(line: 338, column: 2, scope: !6648)
!6663 = !DILocation(line: 338, column: 9, scope: !6648)
!6664 = !DILocation(line: 339, column: 2, scope: !6648)
!6665 = !DILocation(line: 339, column: 9, scope: !6648)
!6666 = !DILocation(line: 341, column: 23, scope: !6648)
!6667 = !DILocation(line: 341, column: 8, scope: !6648)
!6668 = !DILocation(line: 341, column: 6, scope: !6648)
!6669 = !DILocation(line: 342, column: 2, scope: !6648)
!6670 = !DILocation(line: 343, column: 19, scope: !6648)
!6671 = !DILocation(line: 343, column: 8, scope: !6648)
!6672 = !DILocation(line: 343, column: 6, scope: !6648)
!6673 = !DILocation(line: 345, column: 2, scope: !6648)
!6674 = !DILocation(line: 347, column: 19, scope: !6648)
!6675 = !DILocation(line: 347, column: 8, scope: !6648)
!6676 = !DILocation(line: 347, column: 6, scope: !6648)
!6677 = !DILocation(line: 348, column: 2, scope: !6648)
!6678 = !DILocation(line: 349, column: 19, scope: !6648)
!6679 = !DILocation(line: 349, column: 8, scope: !6648)
!6680 = !DILocation(line: 349, column: 6, scope: !6648)
!6681 = !DILocation(line: 350, column: 2, scope: !6648)
!6682 = !DILocation(line: 351, column: 1, scope: !6648)
!6683 = distinct !DISubprogram(name: "pgd_offset_pgd", scope: !6684, file: !6684, line: 136, type: !6685, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6687)
!6684 = !DIFile(filename: "./include/linux/pgtable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "42556a9f65ab908dd6bd67424d19f5be")
!6685 = !DISubroutineType(types: !6686)
!6686 = !{!4827, !4827, !51}
!6687 = !{!6688, !6689}
!6688 = !DILocalVariable(name: "pgd", arg: 1, scope: !6683, file: !6684, line: 136, type: !4827)
!6689 = !DILocalVariable(name: "address", arg: 2, scope: !6683, file: !6684, line: 136, type: !51)
!6690 = !DILocation(line: 136, column: 44, scope: !6683)
!6691 = !DILocation(line: 136, column: 63, scope: !6683)
!6692 = !DILocation(line: 138, column: 10, scope: !6683)
!6693 = !DILocation(line: 138, column: 16, scope: !6683)
!6694 = !DILocation(line: 138, column: 14, scope: !6683)
!6695 = !DILocation(line: 138, column: 2, scope: !6683)
!6696 = distinct !DISubprogram(name: "native_set_pgd", scope: !6697, file: !6697, line: 161, type: !6698, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6700)
!6697 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2362587396c42a8ad932bab8fed5cb38")
!6698 = !DISubroutineType(types: !6699)
!6699 = !{null, !4827, !4828}
!6700 = !{!6701, !6702}
!6701 = !DILocalVariable(name: "pgdp", arg: 1, scope: !6696, file: !6697, line: 161, type: !4827)
!6702 = !DILocalVariable(name: "pgd", arg: 2, scope: !6696, file: !6697, line: 161, type: !4828)
!6703 = !DILocation(line: 161, column: 42, scope: !6696)
!6704 = !DILocation(line: 161, column: 54, scope: !6696)
!6705 = !DILocation(line: 163, column: 2, scope: !6696)
!6706 = !DILocation(line: 163, column: 2, scope: !6707)
!6707 = distinct !DILexicalBlock(scope: !6696, file: !6697, line: 163, column: 2)
!6708 = !DILocation(line: 163, column: 2, scope: !6709)
!6709 = distinct !DILexicalBlock(scope: !6707, file: !6697, line: 163, column: 2)
!6710 = !DILocation(line: 163, column: 2, scope: !6711)
!6711 = distinct !DILexicalBlock(scope: !6707, file: !6697, line: 163, column: 2)
!6712 = !DILocation(line: 164, column: 1, scope: !6696)
!6713 = distinct !DISubprogram(name: "native_make_pgd", scope: !1764, file: !1764, line: 330, type: !6714, scopeLine: 331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6716)
!6714 = !DISubroutineType(types: !6715)
!6715 = !{!4828, !4832}
!6716 = !{!6717}
!6717 = !DILocalVariable(name: "val", arg: 1, scope: !6713, file: !1764, line: 330, type: !4832)
!6718 = !DILocation(line: 330, column: 46, scope: !6713)
!6719 = !DILocation(line: 332, column: 17, scope: !6713)
!6720 = !DILocation(line: 332, column: 19, scope: !6713)
!6721 = !DILocation(line: 332, column: 23, scope: !6713)
!6722 = !DILocation(line: 332, column: 2, scope: !6713)
!6723 = distinct !DISubprogram(name: "native_pgd_val", scope: !1764, file: !1764, line: 335, type: !6724, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6726)
!6724 = !DISubroutineType(types: !6725)
!6725 = !{!4832, !4828}
!6726 = !{!6727}
!6727 = !DILocalVariable(name: "pgd", arg: 1, scope: !6723, file: !1764, line: 335, type: !4828)
!6728 = !DILocation(line: 335, column: 45, scope: !6723)
!6729 = !DILocation(line: 337, column: 13, scope: !6723)
!6730 = !DILocation(line: 337, column: 17, scope: !6723)
!6731 = !DILocation(line: 337, column: 2, scope: !6723)
!6732 = distinct !DISubprogram(name: "p4d_offset", scope: !6733, file: !6733, line: 1149, type: !6734, scopeLine: 1150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6736)
!6733 = !DIFile(filename: "./arch/x86/include/asm/pgtable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "40a9f4cb2b1b2fff495e3ab16a522abc")
!6734 = !DISubroutineType(types: !6735)
!6735 = !{!5876, !4827, !51}
!6736 = !{!6737, !6738}
!6737 = !DILocalVariable(name: "pgd", arg: 1, scope: !6732, file: !6733, line: 1149, type: !4827)
!6738 = !DILocalVariable(name: "address", arg: 2, scope: !6732, file: !6733, line: 1149, type: !51)
!6739 = !DILocation(line: 1149, column: 40, scope: !6732)
!6740 = !DILocation(line: 1149, column: 59, scope: !6732)
!6741 = !DILocation(line: 1151, column: 6, scope: !6732)
!6742 = !DILocation(line: 1151, column: 7, scope: !6743)
!6743 = distinct !DILexicalBlock(scope: !6732, file: !6733, line: 1151, column: 6)
!6744 = !DILocation(line: 1152, column: 19, scope: !6743)
!6745 = !DILocation(line: 1152, column: 3, scope: !6743)
!6746 = !DILocation(line: 1153, column: 34, scope: !6732)
!6747 = !DILocation(line: 1153, column: 18, scope: !6732)
!6748 = !DILocation(line: 1153, column: 9, scope: !6732)
!6749 = !DILocation(line: 1153, column: 51, scope: !6732)
!6750 = !DILocation(line: 1153, column: 41, scope: !6732)
!6751 = !DILocation(line: 1153, column: 39, scope: !6732)
!6752 = !DILocation(line: 1153, column: 2, scope: !6732)
!6753 = !DILocation(line: 1154, column: 1, scope: !6732)
!6754 = distinct !DISubprogram(name: "native_set_p4d", scope: !6697, file: !6697, line: 142, type: !6755, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6757)
!6755 = !DISubroutineType(types: !6756)
!6756 = !{null, !5876, !5877}
!6757 = !{!6758, !6759, !6760}
!6758 = !DILocalVariable(name: "p4dp", arg: 1, scope: !6754, file: !6697, line: 142, type: !5876)
!6759 = !DILocalVariable(name: "p4d", arg: 2, scope: !6754, file: !6697, line: 142, type: !5877)
!6760 = !DILocalVariable(name: "pgd", scope: !6754, file: !6697, line: 144, type: !4828)
!6761 = !DILocation(line: 142, column: 42, scope: !6754)
!6762 = !DILocation(line: 142, column: 54, scope: !6754)
!6763 = !DILocation(line: 144, column: 2, scope: !6754)
!6764 = !DILocation(line: 144, column: 8, scope: !6754)
!6765 = !DILocation(line: 146, column: 6, scope: !6754)
!6766 = !DILocation(line: 146, column: 6, scope: !6767)
!6767 = distinct !DILexicalBlock(scope: !6754, file: !6697, line: 146, column: 6)
!6768 = !DILocation(line: 147, column: 3, scope: !6769)
!6769 = distinct !DILexicalBlock(scope: !6767, file: !6697, line: 146, column: 72)
!6770 = !DILocation(line: 147, column: 3, scope: !6771)
!6771 = distinct !DILexicalBlock(scope: !6769, file: !6697, line: 147, column: 3)
!6772 = !DILocation(line: 147, column: 3, scope: !6773)
!6773 = distinct !DILexicalBlock(scope: !6771, file: !6697, line: 147, column: 3)
!6774 = !DILocation(line: 147, column: 3, scope: !6775)
!6775 = distinct !DILexicalBlock(scope: !6771, file: !6697, line: 147, column: 3)
!6776 = !DILocation(line: 148, column: 3, scope: !6769)
!6777 = !DILocation(line: 151, column: 8, scope: !6754)
!6778 = !DILocation(line: 151, column: 24, scope: !6754)
!6779 = !DILocation(line: 152, column: 8, scope: !6754)
!6780 = !DILocation(line: 152, column: 36, scope: !6754)
!6781 = !DILocation(line: 153, column: 2, scope: !6754)
!6782 = !DILocation(line: 153, column: 2, scope: !6783)
!6783 = distinct !DILexicalBlock(scope: !6754, file: !6697, line: 153, column: 2)
!6784 = !DILocation(line: 153, column: 2, scope: !6785)
!6785 = distinct !DILexicalBlock(scope: !6783, file: !6697, line: 153, column: 2)
!6786 = !DILocation(line: 153, column: 2, scope: !6787)
!6787 = distinct !DILexicalBlock(scope: !6783, file: !6697, line: 153, column: 2)
!6788 = !DILocation(line: 154, column: 1, scope: !6754)
!6789 = distinct !DISubprogram(name: "native_make_p4d", scope: !1764, file: !1764, line: 348, type: !6790, scopeLine: 349, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6792)
!6790 = !DISubroutineType(types: !6791)
!6791 = !{!5877, !1876}
!6792 = !{!6793}
!6793 = !DILocalVariable(name: "val", arg: 1, scope: !6789, file: !1764, line: 348, type: !1876)
!6794 = !DILocation(line: 348, column: 46, scope: !6789)
!6795 = !DILocation(line: 350, column: 17, scope: !6789)
!6796 = !DILocation(line: 350, column: 19, scope: !6789)
!6797 = !DILocation(line: 350, column: 2, scope: !6789)
!6798 = distinct !DISubprogram(name: "native_p4d_val", scope: !1764, file: !1764, line: 353, type: !6799, scopeLine: 354, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6801)
!6799 = !DISubroutineType(types: !6800)
!6800 = !{!5881, !5877}
!6801 = !{!6802}
!6802 = !DILocalVariable(name: "p4d", arg: 1, scope: !6798, file: !1764, line: 353, type: !5877)
!6803 = !DILocation(line: 353, column: 45, scope: !6798)
!6804 = !DILocation(line: 355, column: 13, scope: !6798)
!6805 = !DILocation(line: 355, column: 2, scope: !6798)
!6806 = distinct !DISubprogram(name: "pud_offset", scope: !6684, file: !6684, line: 129, type: !6807, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6809)
!6807 = !DISubroutineType(types: !6808)
!6808 = !{!1871, !5876, !51}
!6809 = !{!6810, !6811}
!6810 = !DILocalVariable(name: "p4d", arg: 1, scope: !6806, file: !6684, line: 129, type: !5876)
!6811 = !DILocalVariable(name: "address", arg: 2, scope: !6806, file: !6684, line: 129, type: !51)
!6812 = !DILocation(line: 129, column: 40, scope: !6806)
!6813 = !DILocation(line: 129, column: 59, scope: !6806)
!6814 = !DILocation(line: 131, column: 22, scope: !6806)
!6815 = !DILocation(line: 131, column: 9, scope: !6806)
!6816 = !DILocation(line: 131, column: 39, scope: !6806)
!6817 = !DILocation(line: 131, column: 29, scope: !6806)
!6818 = !DILocation(line: 131, column: 27, scope: !6806)
!6819 = !DILocation(line: 131, column: 2, scope: !6806)
!6820 = distinct !DISubprogram(name: "native_set_pud", scope: !6697, file: !6697, line: 117, type: !6821, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6823)
!6821 = !DISubroutineType(types: !6822)
!6822 = !{null, !1871, !1872}
!6823 = !{!6824, !6825}
!6824 = !DILocalVariable(name: "pudp", arg: 1, scope: !6820, file: !6697, line: 117, type: !1871)
!6825 = !DILocalVariable(name: "pud", arg: 2, scope: !6820, file: !6697, line: 117, type: !1872)
!6826 = !DILocation(line: 117, column: 42, scope: !6820)
!6827 = !DILocation(line: 117, column: 54, scope: !6820)
!6828 = !DILocation(line: 119, column: 2, scope: !6820)
!6829 = !DILocation(line: 119, column: 2, scope: !6830)
!6830 = distinct !DILexicalBlock(scope: !6820, file: !6697, line: 119, column: 2)
!6831 = !DILocation(line: 119, column: 2, scope: !6832)
!6832 = distinct !DILexicalBlock(scope: !6830, file: !6697, line: 119, column: 2)
!6833 = !DILocation(line: 119, column: 2, scope: !6834)
!6834 = distinct !DILexicalBlock(scope: !6830, file: !6697, line: 119, column: 2)
!6835 = !DILocation(line: 120, column: 1, scope: !6820)
!6836 = distinct !DISubprogram(name: "native_make_pud", scope: !1764, file: !1764, line: 374, type: !6837, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6839)
!6837 = !DISubroutineType(types: !6838)
!6838 = !{!1872, !1869}
!6839 = !{!6840}
!6840 = !DILocalVariable(name: "val", arg: 1, scope: !6836, file: !1764, line: 374, type: !1869)
!6841 = !DILocation(line: 374, column: 46, scope: !6836)
!6842 = !DILocation(line: 376, column: 17, scope: !6836)
!6843 = !DILocation(line: 376, column: 19, scope: !6836)
!6844 = !DILocation(line: 376, column: 2, scope: !6836)
!6845 = distinct !DISubprogram(name: "native_pud_val", scope: !1764, file: !1764, line: 379, type: !6846, scopeLine: 380, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6848)
!6846 = !DISubroutineType(types: !6847)
!6847 = !{!1876, !1872}
!6848 = !{!6849}
!6849 = !DILocalVariable(name: "pud", arg: 1, scope: !6845, file: !1764, line: 379, type: !1872)
!6850 = !DILocation(line: 379, column: 45, scope: !6845)
!6851 = !DILocation(line: 381, column: 13, scope: !6845)
!6852 = !DILocation(line: 381, column: 2, scope: !6845)
!6853 = distinct !DISubprogram(name: "pmd_offset", scope: !6684, file: !6684, line: 121, type: !6854, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6856)
!6854 = !DISubroutineType(types: !6855)
!6855 = !{!1864, !1871, !51}
!6856 = !{!6857, !6858}
!6857 = !DILocalVariable(name: "pud", arg: 1, scope: !6853, file: !6684, line: 121, type: !1871)
!6858 = !DILocalVariable(name: "address", arg: 2, scope: !6853, file: !6684, line: 121, type: !51)
!6859 = !DILocation(line: 121, column: 40, scope: !6853)
!6860 = !DILocation(line: 121, column: 59, scope: !6853)
!6861 = !DILocation(line: 123, column: 22, scope: !6853)
!6862 = !DILocation(line: 123, column: 9, scope: !6853)
!6863 = !DILocation(line: 123, column: 39, scope: !6853)
!6864 = !DILocation(line: 123, column: 29, scope: !6853)
!6865 = !DILocation(line: 123, column: 27, scope: !6853)
!6866 = !DILocation(line: 123, column: 2, scope: !6853)
!6867 = distinct !DISubprogram(name: "native_set_pmd", scope: !6697, file: !6697, line: 81, type: !6868, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6870)
!6868 = !DISubroutineType(types: !6869)
!6869 = !{null, !1864, !1865}
!6870 = !{!6871, !6872}
!6871 = !DILocalVariable(name: "pmdp", arg: 1, scope: !6867, file: !6697, line: 81, type: !1864)
!6872 = !DILocalVariable(name: "pmd", arg: 2, scope: !6867, file: !6697, line: 81, type: !1865)
!6873 = !DILocation(line: 81, column: 42, scope: !6867)
!6874 = !DILocation(line: 81, column: 54, scope: !6867)
!6875 = !DILocation(line: 83, column: 2, scope: !6867)
!6876 = !DILocation(line: 83, column: 2, scope: !6877)
!6877 = distinct !DILexicalBlock(scope: !6867, file: !6697, line: 83, column: 2)
!6878 = !DILocation(line: 83, column: 2, scope: !6879)
!6879 = distinct !DILexicalBlock(scope: !6877, file: !6697, line: 83, column: 2)
!6880 = !DILocation(line: 83, column: 2, scope: !6881)
!6881 = distinct !DILexicalBlock(scope: !6877, file: !6697, line: 83, column: 2)
!6882 = !DILocation(line: 84, column: 1, scope: !6867)
!6883 = distinct !DISubprogram(name: "native_make_pmd", scope: !1764, file: !1764, line: 398, type: !6884, scopeLine: 399, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6886)
!6884 = !DISubroutineType(types: !6885)
!6885 = !{!1865, !1869}
!6886 = !{!6887}
!6887 = !DILocalVariable(name: "val", arg: 1, scope: !6883, file: !1764, line: 398, type: !1869)
!6888 = !DILocation(line: 398, column: 46, scope: !6883)
!6889 = !DILocation(line: 400, column: 17, scope: !6883)
!6890 = !DILocation(line: 400, column: 26, scope: !6883)
!6891 = !DILocation(line: 400, column: 2, scope: !6883)
!6892 = distinct !DISubprogram(name: "native_pmd_val", scope: !1764, file: !1764, line: 403, type: !6893, scopeLine: 404, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6895)
!6893 = !DISubroutineType(types: !6894)
!6894 = !{!1869, !1865}
!6895 = !{!6896}
!6896 = !DILocalVariable(name: "pmd", arg: 1, scope: !6892, file: !1764, line: 403, type: !1865)
!6897 = !DILocation(line: 403, column: 45, scope: !6892)
!6898 = !DILocation(line: 405, column: 13, scope: !6892)
!6899 = !DILocation(line: 405, column: 2, scope: !6892)
!6900 = distinct !DISubprogram(name: "map_vsyscall", scope: !3, file: !3, line: 353, type: !2730, scopeLine: 354, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6901)
!6901 = !{!6902}
!6902 = !DILocalVariable(name: "physaddr_vsyscall", scope: !6900, file: !3, line: 356, type: !51)
!6903 = !DILocation(line: 356, column: 2, scope: !6900)
!6904 = !DILocation(line: 356, column: 16, scope: !6900)
!6905 = !DILocation(line: 356, column: 36, scope: !6900)
!6906 = !DILocation(line: 363, column: 6, scope: !6907)
!6907 = distinct !DILexicalBlock(scope: !6900, file: !3, line: 363, column: 6)
!6908 = !DILocation(line: 363, column: 20, scope: !6907)
!6909 = !DILocation(line: 363, column: 6, scope: !6900)
!6910 = !DILocation(line: 364, column: 31, scope: !6911)
!6911 = distinct !DILexicalBlock(scope: !6907, file: !3, line: 363, column: 32)
!6912 = !DILocation(line: 365, column: 9, scope: !6911)
!6913 = !DILocation(line: 364, column: 3, scope: !6911)
!6914 = !DILocation(line: 366, column: 3, scope: !6911)
!6915 = !DILocation(line: 367, column: 2, scope: !6911)
!6916 = !DILocation(line: 369, column: 6, scope: !6917)
!6917 = distinct !DILexicalBlock(scope: !6900, file: !3, line: 369, column: 6)
!6918 = !DILocation(line: 369, column: 20, scope: !6917)
!6919 = !DILocation(line: 369, column: 6, scope: !6900)
!6920 = !DILocation(line: 370, column: 3, scope: !6917)
!6921 = !DILocation(line: 372, column: 2, scope: !6900)
!6922 = !DILocation(line: 372, column: 2, scope: !6923)
!6923 = distinct !DILexicalBlock(scope: !6900, file: !3, line: 372, column: 2)
!6924 = !DILocation(line: 374, column: 1, scope: !6900)
!6925 = distinct !DISubprogram(name: "__set_fixmap", scope: !284, file: !284, line: 164, type: !6926, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6928)
!6926 = !DISubroutineType(types: !6927)
!6927 = !{null, !283, !5882, !1763}
!6928 = !{!6929, !6930, !6931}
!6929 = !DILocalVariable(name: "idx", arg: 1, scope: !6925, file: !284, line: 164, type: !283)
!6930 = !DILocalVariable(name: "phys", arg: 2, scope: !6925, file: !284, line: 165, type: !5882)
!6931 = !DILocalVariable(name: "flags", arg: 3, scope: !6925, file: !284, line: 165, type: !1763)
!6932 = !DILocation(line: 164, column: 54, scope: !6925)
!6933 = !DILocation(line: 165, column: 17, scope: !6925)
!6934 = !DILocation(line: 165, column: 32, scope: !6925)
!6935 = !DILocation(line: 167, column: 20, scope: !6925)
!6936 = !DILocation(line: 167, column: 25, scope: !6925)
!6937 = !DILocation(line: 167, column: 2, scope: !6925)
!6938 = !DILocation(line: 168, column: 1, scope: !6925)
!6939 = distinct !DISubprogram(name: "vm_flags_init", scope: !1743, file: !1743, line: 819, type: !6940, scopeLine: 821, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6942)
!6940 = !DISubroutineType(types: !6941)
!6941 = !{null, !1749, !1774}
!6942 = !{!6943, !6944}
!6943 = !DILocalVariable(name: "vma", arg: 1, scope: !6939, file: !1743, line: 819, type: !1749)
!6944 = !DILocalVariable(name: "flags", arg: 2, scope: !6939, file: !1743, line: 820, type: !1774)
!6945 = !DILocation(line: 819, column: 57, scope: !6939)
!6946 = !DILocation(line: 820, column: 17, scope: !6939)
!6947 = !DILocation(line: 822, column: 36, scope: !6939)
!6948 = !DILocation(line: 822, column: 2, scope: !6939)
!6949 = !DILocation(line: 822, column: 34, scope: !6939)
!6950 = !DILocation(line: 823, column: 1, scope: !6939)
!6951 = distinct !DISubprogram(name: "do_trace_event_raw_event_emulate_vsyscall", scope: !349, file: !349, line: 10, type: !336, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6952)
!6952 = !{!6953, !6954, !6955, !6974, !6975, !6993, !6994}
!6953 = !DILocalVariable(name: "__data", arg: 1, scope: !6951, file: !349, line: 10, type: !32)
!6954 = !DILocalVariable(name: "nr", arg: 2, scope: !6951, file: !349, line: 10, type: !34)
!6955 = !DILocalVariable(name: "trace_file", scope: !6951, file: !349, line: 10, type: !6956)
!6956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6957, size: 64)
!6957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_file", file: !225, line: 655, size: 768, elements: !6958)
!6958 = !{!6959, !6960, !6961, !6962, !6965, !6966, !6969, !6970, !6971, !6972, !6973}
!6959 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !6957, file: !225, line: 656, baseType: !109, size: 128)
!6960 = !DIDerivedType(tag: DW_TAG_member, name: "event_call", scope: !6957, file: !225, line: 657, baseType: !2635, size: 64, offset: 128)
!6961 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !6957, file: !225, line: 658, baseType: !2810, size: 64, offset: 192)
!6962 = !DIDerivedType(tag: DW_TAG_member, name: "ei", scope: !6957, file: !225, line: 659, baseType: !6963, size: 64, offset: 256)
!6963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6964, size: 64)
!6964 = !DICompositeType(tag: DW_TAG_structure_type, name: "eventfs_inode", file: !225, line: 659, flags: DIFlagFwdDecl)
!6965 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !6957, file: !225, line: 660, baseType: !2751, size: 64, offset: 320)
!6966 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !6957, file: !225, line: 661, baseType: !6967, size: 64, offset: 384)
!6967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6968, size: 64)
!6968 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_subsystem_dir", file: !225, line: 485, flags: DIFlagFwdDecl)
!6969 = !DIDerivedType(tag: DW_TAG_member, name: "triggers", scope: !6957, file: !225, line: 662, baseType: !109, size: 128, offset: 448)
!6970 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6957, file: !225, line: 680, baseType: !51, size: 64, offset: 576)
!6971 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !6957, file: !225, line: 681, baseType: !61, size: 32, offset: 640)
!6972 = !DIDerivedType(tag: DW_TAG_member, name: "sm_ref", scope: !6957, file: !225, line: 682, baseType: !61, size: 32, offset: 672)
!6973 = !DIDerivedType(tag: DW_TAG_member, name: "tm_ref", scope: !6957, file: !225, line: 683, baseType: !61, size: 32, offset: 704)
!6974 = !DILocalVariable(name: "__data_offsets", scope: !6951, file: !349, line: 10, type: !6101)
!6975 = !DILocalVariable(name: "fbuffer", scope: !6951, file: !349, line: 10, type: !6976)
!6976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_buffer", file: !225, line: 308, size: 384, elements: !6977)
!6977 = !{!6978, !6981, !6989, !6990, !6991, !6992}
!6978 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !6976, file: !225, line: 309, baseType: !6979, size: 64)
!6979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6980, size: 64)
!6980 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_buffer", file: !2766, line: 9, flags: DIFlagFwdDecl)
!6981 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !6976, file: !225, line: 310, baseType: !6982, size: 64, offset: 64)
!6982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6983, size: 64)
!6983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ring_buffer_event", file: !2766, line: 15, size: 32, elements: !6984)
!6984 = !{!6985, !6986, !6987}
!6985 = !DIDerivedType(tag: DW_TAG_member, name: "type_len", scope: !6983, file: !2766, line: 16, baseType: !393, size: 5, flags: DIFlagBitField, extraData: i64 0)
!6986 = !DIDerivedType(tag: DW_TAG_member, name: "time_delta", scope: !6983, file: !2766, line: 16, baseType: !393, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!6987 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !6983, file: !2766, line: 18, baseType: !6988, offset: 32)
!6988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, elements: !361)
!6989 = !DIDerivedType(tag: DW_TAG_member, name: "trace_file", scope: !6976, file: !225, line: 311, baseType: !6956, size: 64, offset: 128)
!6990 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !6976, file: !225, line: 312, baseType: !32, size: 64, offset: 192)
!6991 = !DIDerivedType(tag: DW_TAG_member, name: "trace_ctx", scope: !6976, file: !225, line: 313, baseType: !7, size: 32, offset: 256)
!6992 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !6976, file: !225, line: 314, baseType: !3738, size: 64, offset: 320)
!6993 = !DILocalVariable(name: "entry", scope: !6951, file: !349, line: 10, type: !347)
!6994 = !DILocalVariable(name: "__data_size", scope: !6951, file: !349, line: 10, type: !34)
!6995 = !DILocation(line: 10, column: 1, scope: !6951)
!6996 = !DILocation(line: 10, column: 1, scope: !6997)
!6997 = distinct !DILexicalBlock(scope: !6951, file: !349, line: 10, column: 1)
!6998 = !DILocation(line: 10, column: 1, scope: !6999)
!6999 = distinct !DILexicalBlock(scope: !6951, file: !349, line: 10, column: 1)
!7000 = !DILocation(line: 10, column: 1, scope: !7001)
!7001 = distinct !DILexicalBlock(scope: !6951, file: !349, line: 10, column: 1)
!7002 = distinct !DISubprogram(name: "trace_trigger_soft_disabled", scope: !225, file: !225, line: 746, type: !7003, scopeLine: 747, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7005)
!7003 = !DISubroutineType(types: !7004)
!7004 = !{!901, !6956}
!7005 = !{!7006, !7007}
!7006 = !DILocalVariable(name: "file", arg: 1, scope: !7002, file: !225, line: 746, type: !6956)
!7007 = !DILocalVariable(name: "eflags", scope: !7002, file: !225, line: 748, type: !51)
!7008 = !DILocation(line: 746, column: 54, scope: !7002)
!7009 = !DILocation(line: 748, column: 2, scope: !7002)
!7010 = !DILocation(line: 748, column: 16, scope: !7002)
!7011 = !DILocation(line: 748, column: 25, scope: !7002)
!7012 = !DILocation(line: 748, column: 31, scope: !7002)
!7013 = !DILocation(line: 750, column: 6, scope: !7014)
!7014 = distinct !DILexicalBlock(scope: !7002, file: !225, line: 750, column: 6)
!7015 = !DILocation(line: 750, column: 6, scope: !7002)
!7016 = !DILocation(line: 753, column: 3, scope: !7014)
!7017 = !DILocation(line: 755, column: 6, scope: !7018)
!7018 = distinct !DILexicalBlock(scope: !7002, file: !225, line: 755, column: 6)
!7019 = !DILocation(line: 755, column: 6, scope: !7002)
!7020 = !DILocation(line: 756, column: 3, scope: !7018)
!7021 = !DILocation(line: 758, column: 39, scope: !7002)
!7022 = !DILocation(line: 758, column: 9, scope: !7002)
!7023 = !DILocation(line: 758, column: 2, scope: !7002)
!7024 = !DILocation(line: 759, column: 1, scope: !7002)
!7025 = distinct !DISubprogram(name: "trace_event_get_offsets_emulate_vsyscall", scope: !349, file: !349, line: 10, type: !7026, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7029)
!7026 = !DISubroutineType(types: !7027)
!7027 = !{!34, !7028, !34}
!7028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6101, size: 64)
!7029 = !{!7030, !7031, !7032, !7033, !7034}
!7030 = !DILocalVariable(name: "__data_offsets", arg: 1, scope: !7025, file: !349, line: 10, type: !7028)
!7031 = !DILocalVariable(name: "nr", arg: 2, scope: !7025, file: !349, line: 10, type: !34)
!7032 = !DILocalVariable(name: "__data_size", scope: !7025, file: !349, line: 10, type: !34)
!7033 = !DILocalVariable(name: "__item_length", scope: !7025, file: !349, line: 10, type: !34)
!7034 = !DILocalVariable(name: "entry", scope: !7025, file: !349, line: 10, type: !347)
!7035 = !DILocation(line: 10, column: 1, scope: !7025)
!7036 = !DISubprogram(name: "trace_event_buffer_reserve", scope: !225, file: !225, line: 317, type: !7037, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7037 = !DISubroutineType(types: !7038)
!7038 = !{!32, !7039, !6956, !51}
!7039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6976, size: 64)
!7040 = !DISubprogram(name: "trace_event_buffer_commit", scope: !225, file: !225, line: 321, type: !7041, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7041 = !DISubroutineType(types: !7042)
!7042 = !{null, !7039}
!7043 = !DISubprogram(name: "__trace_trigger_soft_disabled", scope: !225, file: !225, line: 734, type: !7003, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7044 = distinct !DISubprogram(name: "trace_raw_output_emulate_vsyscall", scope: !349, file: !349, line: 10, type: !2745, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7045)
!7045 = !{!7046, !7047, !7048, !7049, !7051, !7052, !7053}
!7046 = !DILocalVariable(name: "iter", arg: 1, scope: !7044, file: !349, line: 10, type: !2747)
!7047 = !DILocalVariable(name: "flags", arg: 2, scope: !7044, file: !349, line: 10, type: !34)
!7048 = !DILocalVariable(name: "trace_event", arg: 3, scope: !7044, file: !349, line: 10, type: !2804)
!7049 = !DILocalVariable(name: "s", scope: !7044, file: !349, line: 10, type: !7050)
!7050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!7051 = !DILocalVariable(name: "p", scope: !7044, file: !349, line: 10, type: !7050)
!7052 = !DILocalVariable(name: "field", scope: !7044, file: !349, line: 10, type: !347)
!7053 = !DILocalVariable(name: "ret", scope: !7044, file: !349, line: 10, type: !34)
!7054 = !DILocation(line: 10, column: 1, scope: !7044)
!7055 = !DILocation(line: 10, column: 1, scope: !7056)
!7056 = distinct !DILexicalBlock(scope: !7044, file: !349, line: 10, column: 1)
!7057 = !DISubprogram(name: "trace_raw_output_prep", scope: !225, file: !225, line: 57, type: !7058, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7058 = !DISubroutineType(types: !7059)
!7059 = !{!34, !2747, !2804}
!7060 = !DISubprogram(name: "trace_event_printf", scope: !225, file: !225, line: 60, type: !7061, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7061 = !DISubroutineType(types: !7062)
!7062 = !{null, !2747, !28, null}
!7063 = !DISubprogram(name: "trace_handle_return", scope: !225, file: !225, line: 165, type: !7064, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7064 = !DISubroutineType(types: !7065)
!7065 = !{!235, !7050}
!7066 = distinct !DISubprogram(name: "bpf_prog_array_valid", scope: !225, file: !225, line: 443, type: !7067, scopeLine: 444, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7069)
!7067 = !DISubroutineType(types: !7068)
!7068 = !{!901, !2635}
!7069 = !{!7070}
!7070 = !DILocalVariable(name: "call", arg: 1, scope: !7066, file: !225, line: 443, type: !2635)
!7071 = !DILocation(line: 443, column: 66, scope: !7066)
!7072 = !DILocation(line: 462, column: 11, scope: !7073)
!7073 = distinct !DILexicalBlock(scope: !7066, file: !225, line: 462, column: 11)
!7074 = !DILocation(line: 462, column: 11, scope: !7075)
!7075 = distinct !DILexicalBlock(scope: !7073, file: !225, line: 462, column: 11)
!7076 = !DILocation(line: 462, column: 10, scope: !7066)
!7077 = !DILocation(line: 462, column: 9, scope: !7066)
!7078 = !DILocation(line: 462, column: 2, scope: !7066)
!7079 = distinct !DISubprogram(name: "hlist_empty", scope: !7080, file: !7080, line: 970, type: !7081, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7085)
!7080 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!7081 = !DISubroutineType(types: !7082)
!7082 = !{!34, !7083}
!7083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7084, size: 64)
!7084 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !364)
!7085 = !{!7086}
!7086 = !DILocalVariable(name: "h", arg: 1, scope: !7079, file: !7080, line: 970, type: !7083)
!7087 = !DILocation(line: 970, column: 56, scope: !7079)
!7088 = !DILocation(line: 972, column: 10, scope: !7089)
!7089 = distinct !DILexicalBlock(scope: !7079, file: !7080, line: 972, column: 10)
!7090 = !DILocation(line: 972, column: 10, scope: !7091)
!7091 = distinct !DILexicalBlock(scope: !7089, file: !7080, line: 972, column: 10)
!7092 = !DILocation(line: 972, column: 9, scope: !7079)
!7093 = !DILocation(line: 972, column: 2, scope: !7079)
!7094 = !DISubprogram(name: "perf_trace_buf_alloc", scope: !225, file: !225, line: 904, type: !7095, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7095 = !DISubroutineType(types: !7096)
!7096 = !{!32, !34, !7097, !2455}
!7097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!7098 = distinct !DISubprogram(name: "perf_fetch_caller_regs", scope: !216, file: !216, line: 1427, type: !7099, scopeLine: 1428, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7101)
!7099 = !DISubroutineType(types: !7100)
!7100 = !{null, !3738}
!7101 = !{!7102}
!7102 = !DILocalVariable(name: "regs", arg: 1, scope: !7098, file: !216, line: 1427, type: !3738)
!7103 = !DILocation(line: 1427, column: 59, scope: !7098)
!7104 = !DILocation(line: 1429, column: 2, scope: !7105)
!7105 = distinct !DILexicalBlock(scope: !7098, file: !216, line: 1429, column: 2)
!7106 = !DILocation(line: 1430, column: 1, scope: !7098)
!7107 = !DISubprogram(name: "perf_trace_run_bpf_submit", scope: !225, file: !225, line: 936, type: !7108, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7108 = !DISubroutineType(types: !7109)
!7109 = !{null, !32, !34, !34, !2635, !339, !3738, !363, !382}
!7110 = !DISubprogram(name: "strcmp", scope: !7111, file: !7111, line: 88, type: !7112, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7111 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!7112 = !DISubroutineType(types: !7113)
!7113 = !{!34, !28, !28}
!7114 = !DISubprogram(name: "___ratelimit", scope: !1191, file: !1191, line: 44, type: !7115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7115 = !DISubroutineType(types: !7116)
!7116 = !{!34, !7117, !28}
!7117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!7118 = !DISubprogram(name: "_printk", scope: !7119, file: !7119, line: 153, type: !7120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7119 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!7120 = !DISubroutineType(types: !7121)
!7121 = !{!34, !28, null}
!7122 = distinct !DISubprogram(name: "get_current", scope: !7123, file: !7123, line: 39, type: !7124, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7126)
!7123 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!7124 = !DISubroutineType(types: !7125)
!7125 = !{!382}
!7126 = !{!7127, !7129, !7131}
!7127 = !DILocalVariable(name: "pscr_ret__", scope: !7128, file: !7123, line: 41, type: !382)
!7128 = distinct !DILexicalBlock(scope: !7122, file: !7123, line: 41, column: 9)
!7129 = !DILocalVariable(name: "__vpp_verify", scope: !7130, file: !7123, line: 41, type: !2143)
!7130 = distinct !DILexicalBlock(scope: !7128, file: !7123, line: 41, column: 9)
!7131 = !DILocalVariable(name: "pfo_val__", scope: !7132, file: !7123, line: 41, type: !339)
!7132 = distinct !DILexicalBlock(scope: !7128, file: !7123, line: 41, column: 9)
!7133 = !DILocation(line: 41, column: 9, scope: !7128)
!7134 = !DILocation(line: 41, column: 9, scope: !7130)
!7135 = !DILocation(line: 41, column: 9, scope: !7132)
!7136 = !{i64 2148514294}
!7137 = !DILocation(line: 41, column: 9, scope: !7122)
!7138 = !DILocation(line: 41, column: 2, scope: !7122)
!7139 = distinct !DISubprogram(name: "task_pid_nr", scope: !384, file: !384, line: 1580, type: !7140, scopeLine: 1581, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7142)
!7140 = !DISubroutineType(types: !7141)
!7141 = !{!5029, !382}
!7142 = !{!7143}
!7143 = !DILocalVariable(name: "tsk", arg: 1, scope: !7139, file: !384, line: 1580, type: !382)
!7144 = !DILocation(line: 1580, column: 53, scope: !7139)
!7145 = !DILocation(line: 1582, column: 9, scope: !7139)
!7146 = !DILocation(line: 1582, column: 14, scope: !7139)
!7147 = !DILocation(line: 1582, column: 2, scope: !7139)
!7148 = distinct !DISubprogram(name: "static_key_false", scope: !2624, file: !2624, line: 205, type: !7149, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7152)
!7149 = !DISubroutineType(types: !7150)
!7150 = !{!901, !7151}
!7151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2689, size: 64)
!7152 = !{!7153}
!7153 = !DILocalVariable(name: "key", arg: 1, scope: !7148, file: !2624, line: 205, type: !7151)
!7154 = !DILocation(line: 205, column: 65, scope: !7148)
!7155 = !DILocation(line: 207, column: 28, scope: !7148)
!7156 = !DILocation(line: 207, column: 9, scope: !7148)
!7157 = !DILocation(line: 207, column: 2, scope: !7148)
!7158 = distinct !DISubprogram(name: "cpu_online", scope: !644, file: !644, line: 1080, type: !7159, scopeLine: 1081, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7161)
!7159 = !DISubroutineType(types: !7160)
!7160 = !{!901, !7}
!7161 = !{!7162}
!7162 = !DILocalVariable(name: "cpu", arg: 1, scope: !7158, file: !644, line: 1080, type: !7)
!7163 = !DILocation(line: 1080, column: 44, scope: !7158)
!7164 = !DILocation(line: 1082, column: 26, scope: !7158)
!7165 = !DILocation(line: 1082, column: 9, scope: !7158)
!7166 = !DILocation(line: 1082, column: 2, scope: !7158)
!7167 = distinct !DISubprogram(name: "__preempt_count_add", scope: !7168, file: !7168, line: 78, type: !5356, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7169)
!7168 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!7169 = !{!7170, !7171, !7173}
!7170 = !DILocalVariable(name: "val", arg: 1, scope: !7167, file: !7168, line: 78, type: !34)
!7171 = !DILocalVariable(name: "pao_ID__", scope: !7172, file: !7168, line: 80, type: !2520)
!7172 = distinct !DILexicalBlock(scope: !7167, file: !7168, line: 80, column: 2)
!7173 = !DILocalVariable(name: "pto_val__", scope: !7174, file: !7168, line: 80, type: !393)
!7174 = distinct !DILexicalBlock(scope: !7175, file: !7168, line: 80, column: 2)
!7175 = distinct !DILexicalBlock(scope: !7176, file: !7168, line: 80, column: 2)
!7176 = distinct !DILexicalBlock(scope: !7172, file: !7168, line: 80, column: 2)
!7177 = !DILocation(line: 78, column: 53, scope: !7167)
!7178 = !DILocation(line: 80, column: 2, scope: !7167)
!7179 = !DILocation(line: 80, column: 2, scope: !7172)
!7180 = !DILocation(line: 80, column: 2, scope: !7176)
!7181 = !DILocation(line: 80, column: 2, scope: !7182)
!7182 = distinct !DILexicalBlock(scope: !7176, file: !7168, line: 80, column: 2)
!7183 = !{i64 2149591697}
!7184 = !DILocation(line: 80, column: 2, scope: !7175)
!7185 = !DILocation(line: 80, column: 2, scope: !7186)
!7186 = distinct !DILexicalBlock(scope: !7175, file: !7168, line: 80, column: 2)
!7187 = !{i64 2149591992}
!7188 = !DILocation(line: 80, column: 2, scope: !7174)
!7189 = !{i64 2149592697}
!7190 = !DILocation(line: 81, column: 1, scope: !7167)
!7191 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !7168, file: !7168, line: 93, type: !2133, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7192)
!7192 = !{!7193}
!7193 = !DILocalVariable(name: "c", scope: !7194, file: !7168, line: 95, type: !901)
!7194 = distinct !DILexicalBlock(scope: !7191, file: !7168, line: 95, column: 9)
!7195 = !DILocation(line: 95, column: 9, scope: !7194)
!7196 = !{i64 2149596053, i64 2149596146}
!7197 = !{i8 0, i8 2}
!7198 = !DILocation(line: 95, column: 9, scope: !7191)
!7199 = !DILocation(line: 95, column: 2, scope: !7191)
!7200 = distinct !DISubprogram(name: "arch_static_branch", scope: !7201, file: !7201, line: 25, type: !7202, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7204)
!7201 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!7202 = !DISubroutineType(types: !7203)
!7203 = !{!901, !7151, !901}
!7204 = !{!7205, !7206, !7207}
!7205 = !DILocalVariable(name: "key", arg: 1, scope: !7200, file: !7201, line: 25, type: !7151)
!7206 = !DILocalVariable(name: "branch", arg: 2, scope: !7200, file: !7201, line: 25, type: !901)
!7207 = !DILabel(scope: !7200, name: "l_yes", file: !7201, line: 33)
!7208 = !DILocation(line: 25, column: 67, scope: !7200)
!7209 = !DILocation(line: 25, column: 77, scope: !7200)
!7210 = !DILocation(line: 30, column: 13, scope: !7200)
!7211 = !DILocation(line: 30, column: 28, scope: !7200)
!7212 = !DILocation(line: 30, column: 26, scope: !7200)
!7213 = !DILocation(line: 27, column: 2, scope: !7200)
!7214 = !{i64 912906, i64 912950, i64 2148397633, i64 2148397654, i64 2148397680, i64 2148397713, i64 2148397747, i64 2148397771}
!7215 = !DILocation(line: 32, column: 2, scope: !7200)
!7216 = !DILocation(line: 33, column: 1, scope: !7200)
!7217 = !DILocation(line: 34, column: 2, scope: !7200)
!7218 = !DILocation(line: 35, column: 1, scope: !7200)
!7219 = distinct !DISubprogram(name: "cpumask_test_cpu", scope: !644, file: !644, line: 502, type: !7220, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7222)
!7220 = !DISubroutineType(types: !7221)
!7221 = !{!901, !34, !5871}
!7222 = !{!7223, !7224}
!7223 = !DILocalVariable(name: "cpu", arg: 1, scope: !7219, file: !644, line: 502, type: !34)
!7224 = !DILocalVariable(name: "cpumask", arg: 2, scope: !7219, file: !644, line: 502, type: !5871)
!7225 = !DILocation(line: 502, column: 50, scope: !7219)
!7226 = !DILocation(line: 502, column: 77, scope: !7219)
!7227 = !DILocation(line: 504, column: 9, scope: !7219)
!7228 = !DILocation(line: 504, column: 2, scope: !7219)
!7229 = distinct !DISubprogram(name: "cpumask_check", scope: !644, file: !644, line: 148, type: !7230, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7232)
!7230 = !DISubroutineType(types: !7231)
!7231 = !{!7, !7}
!7232 = !{!7233}
!7233 = !DILocalVariable(name: "cpu", arg: 1, scope: !7229, file: !644, line: 148, type: !7)
!7234 = !DILocation(line: 148, column: 64, scope: !7229)
!7235 = !DILocation(line: 150, column: 20, scope: !7229)
!7236 = !DILocation(line: 150, column: 2, scope: !7229)
!7237 = !DILocation(line: 151, column: 9, scope: !7229)
!7238 = !DILocation(line: 151, column: 2, scope: !7229)
!7239 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !644, file: !644, line: 140, type: !7240, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7242)
!7240 = !DISubroutineType(types: !7241)
!7241 = !{null, !7, !7}
!7242 = !{!7243, !7244}
!7243 = !DILocalVariable(name: "cpu", arg: 1, scope: !7239, file: !644, line: 140, type: !7)
!7244 = !DILocalVariable(name: "bits", arg: 2, scope: !7239, file: !644, line: 140, type: !7)
!7245 = !DILocation(line: 140, column: 60, scope: !7239)
!7246 = !DILocation(line: 140, column: 78, scope: !7239)
!7247 = !DILocation(line: 145, column: 1, scope: !7239)
!7248 = distinct !DISubprogram(name: "__access_ok", scope: !7249, file: !7249, line: 85, type: !7250, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7252)
!7249 = !DIFile(filename: "./arch/x86/include/asm/uaccess_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c63bf78a3e0eae48ab190f2bbecab5d")
!7250 = !DISubroutineType(types: !7251)
!7251 = !{!901, !2143, !51}
!7252 = !{!7253, !7254, !7255}
!7253 = !DILocalVariable(name: "ptr", arg: 1, scope: !7248, file: !7249, line: 85, type: !2143)
!7254 = !DILocalVariable(name: "size", arg: 2, scope: !7248, file: !7249, line: 85, type: !51)
!7255 = !DILocalVariable(name: "sum", scope: !7256, file: !7249, line: 90, type: !51)
!7256 = distinct !DILexicalBlock(scope: !7257, file: !7249, line: 89, column: 9)
!7257 = distinct !DILexicalBlock(scope: !7248, file: !7249, line: 87, column: 6)
!7258 = !DILocation(line: 85, column: 51, scope: !7248)
!7259 = !DILocation(line: 85, column: 70, scope: !7248)
!7260 = !DILocation(line: 87, column: 27, scope: !7257)
!7261 = !DILocation(line: 87, column: 32, scope: !7257)
!7262 = !DILocation(line: 87, column: 6, scope: !7257)
!7263 = !DILocation(line: 87, column: 46, scope: !7257)
!7264 = !DILocation(line: 87, column: 49, scope: !7257)
!7265 = !DILocation(line: 87, column: 54, scope: !7257)
!7266 = !DILocation(line: 87, column: 6, scope: !7248)
!7267 = !DILocation(line: 88, column: 10, scope: !7268)
!7268 = distinct !DILexicalBlock(scope: !7257, file: !7249, line: 87, column: 68)
!7269 = !DILocation(line: 88, column: 3, scope: !7268)
!7270 = !DILocation(line: 90, column: 3, scope: !7256)
!7271 = !DILocation(line: 90, column: 17, scope: !7256)
!7272 = !DILocation(line: 90, column: 23, scope: !7256)
!7273 = !DILocation(line: 90, column: 45, scope: !7256)
!7274 = !DILocation(line: 90, column: 30, scope: !7256)
!7275 = !DILocation(line: 90, column: 28, scope: !7256)
!7276 = !DILocation(line: 91, column: 10, scope: !7256)
!7277 = !DILocation(line: 91, column: 34, scope: !7256)
!7278 = !DILocation(line: 91, column: 37, scope: !7256)
!7279 = !DILocation(line: 91, column: 59, scope: !7256)
!7280 = !DILocation(line: 91, column: 44, scope: !7256)
!7281 = !DILocation(line: 91, column: 41, scope: !7256)
!7282 = !DILocation(line: 0, scope: !7256)
!7283 = !DILocation(line: 91, column: 3, scope: !7256)
!7284 = !DILocation(line: 92, column: 2, scope: !7257)
!7285 = !DILocation(line: 93, column: 1, scope: !7248)
!7286 = !DISubprogram(name: "force_sig_fault", scope: !5142, file: !5142, line: 315, type: !7287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7287 = !DISubroutineType(types: !7288)
!7288 = !{!34, !34, !34, !32}
!7289 = !DISubprogram(name: "__secure_computing", scope: !5379, file: !5379, line: 44, type: !7290, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7290 = !DISubroutineType(types: !7291)
!7291 = !{!34, !7292}
!7292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7293, size: 64)
!7293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7294)
!7294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_data", file: !7295, line: 62, size: 512, elements: !7296)
!7295 = !DIFile(filename: "./include/uapi/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54d8e37801456b8ce6a0ef36c469a545")
!7296 = !{!7297, !7298, !7299, !7300}
!7297 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !7294, file: !7295, line: 63, baseType: !34, size: 32)
!7298 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !7294, file: !7295, line: 64, baseType: !394, size: 32, offset: 32)
!7299 = !DIDerivedType(tag: DW_TAG_member, name: "instruction_pointer", scope: !7294, file: !7295, line: 65, baseType: !340, size: 64, offset: 64)
!7300 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !7294, file: !7295, line: 66, baseType: !7301, size: 384, offset: 128)
!7301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 384, elements: !967)
!7302 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !7303, file: !7303, line: 66, type: !7304, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7309)
!7303 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!7304 = !DISubroutineType(types: !7305)
!7305 = !{null, !7306, !47}
!7306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7307, size: 64)
!7307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7308)
!7308 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!7309 = !{!7310, !7311}
!7310 = !DILocalVariable(name: "v", arg: 1, scope: !7302, file: !7303, line: 66, type: !7306)
!7311 = !DILocalVariable(name: "size", arg: 2, scope: !7302, file: !7303, line: 66, type: !47)
!7312 = !DILocation(line: 66, column: 73, scope: !7302)
!7313 = !DILocation(line: 66, column: 83, scope: !7302)
!7314 = !DILocation(line: 68, column: 19, scope: !7302)
!7315 = !DILocation(line: 68, column: 22, scope: !7302)
!7316 = !DILocation(line: 68, column: 2, scope: !7302)
!7317 = !DILocation(line: 69, column: 2, scope: !7302)
!7318 = !DILocation(line: 70, column: 1, scope: !7302)
!7319 = distinct !DISubprogram(name: "arch_test_bit", scope: !7320, file: !7320, line: 237, type: !6560, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7321)
!7320 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!7321 = !{!7322, !7323}
!7322 = !DILocalVariable(name: "nr", arg: 1, scope: !7319, file: !7320, line: 237, type: !51)
!7323 = !DILocalVariable(name: "addr", arg: 2, scope: !7319, file: !7320, line: 237, type: !6562)
!7324 = !DILocation(line: 237, column: 29, scope: !7319)
!7325 = !DILocation(line: 237, column: 63, scope: !7319)
!7326 = !DILocation(line: 239, column: 30, scope: !7319)
!7327 = !DILocation(line: 239, column: 9, scope: !7319)
!7328 = !DILocation(line: 239, column: 54, scope: !7319)
!7329 = !DILocation(line: 239, column: 58, scope: !7319)
!7330 = !DILocation(line: 239, column: 36, scope: !7319)
!7331 = !DILocation(line: 240, column: 26, scope: !7319)
!7332 = !DILocation(line: 240, column: 30, scope: !7319)
!7333 = !DILocation(line: 240, column: 8, scope: !7319)
!7334 = !DILocation(line: 239, column: 2, scope: !7319)
!7335 = distinct !DISubprogram(name: "kasan_check_read", scope: !7336, file: !7336, line: 40, type: !7337, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7339)
!7336 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!7337 = !DISubroutineType(types: !7338)
!7338 = !{!901, !7306, !7}
!7339 = !{!7340, !7341}
!7340 = !DILocalVariable(name: "p", arg: 1, scope: !7335, file: !7336, line: 40, type: !7306)
!7341 = !DILocalVariable(name: "size", arg: 2, scope: !7335, file: !7336, line: 40, type: !7)
!7342 = !DILocation(line: 40, column: 58, scope: !7335)
!7343 = !DILocation(line: 40, column: 74, scope: !7335)
!7344 = !DILocation(line: 42, column: 2, scope: !7335)
!7345 = distinct !DISubprogram(name: "kcsan_check_access", scope: !7346, file: !7346, line: 229, type: !7347, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7349)
!7346 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!7347 = !DISubroutineType(types: !7348)
!7348 = !{null, !7306, !47, !34}
!7349 = !{!7350, !7351, !7352}
!7350 = !DILocalVariable(name: "ptr", arg: 1, scope: !7345, file: !7346, line: 229, type: !7306)
!7351 = !DILocalVariable(name: "size", arg: 2, scope: !7345, file: !7346, line: 229, type: !47)
!7352 = !DILocalVariable(name: "type", arg: 3, scope: !7345, file: !7346, line: 230, type: !34)
!7353 = !DILocation(line: 229, column: 60, scope: !7345)
!7354 = !DILocation(line: 229, column: 72, scope: !7345)
!7355 = !DILocation(line: 230, column: 15, scope: !7345)
!7356 = !DILocation(line: 230, column: 23, scope: !7345)
!7357 = distinct !DISubprogram(name: "constant_test_bit", scope: !7320, file: !7320, line: 204, type: !7358, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7360)
!7358 = !DISubroutineType(types: !7359)
!7359 = !{!901, !1126, !6562}
!7360 = !{!7361, !7362}
!7361 = !DILocalVariable(name: "nr", arg: 1, scope: !7357, file: !7320, line: 204, type: !1126)
!7362 = !DILocalVariable(name: "addr", arg: 2, scope: !7357, file: !7320, line: 204, type: !6562)
!7363 = !DILocation(line: 204, column: 52, scope: !7357)
!7364 = !DILocation(line: 204, column: 86, scope: !7357)
!7365 = !DILocation(line: 206, column: 19, scope: !7357)
!7366 = !DILocation(line: 206, column: 22, scope: !7357)
!7367 = !DILocation(line: 206, column: 15, scope: !7357)
!7368 = !DILocation(line: 207, column: 4, scope: !7357)
!7369 = !DILocation(line: 207, column: 9, scope: !7357)
!7370 = !DILocation(line: 207, column: 12, scope: !7357)
!7371 = !DILocation(line: 206, column: 44, scope: !7357)
!7372 = !DILocation(line: 207, column: 37, scope: !7357)
!7373 = !DILocation(line: 206, column: 2, scope: !7357)
!7374 = distinct !DISubprogram(name: "variable_test_bit", scope: !7320, file: !7320, line: 224, type: !7358, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7375)
!7375 = !{!7376, !7377, !7378}
!7376 = !DILocalVariable(name: "nr", arg: 1, scope: !7374, file: !7320, line: 224, type: !1126)
!7377 = !DILocalVariable(name: "addr", arg: 2, scope: !7374, file: !7320, line: 224, type: !6562)
!7378 = !DILocalVariable(name: "oldbit", scope: !7374, file: !7320, line: 226, type: !901)
!7379 = !DILocation(line: 224, column: 52, scope: !7374)
!7380 = !DILocation(line: 224, column: 86, scope: !7374)
!7381 = !DILocation(line: 226, column: 2, scope: !7374)
!7382 = !DILocation(line: 226, column: 7, scope: !7374)
!7383 = !DILocation(line: 231, column: 33, scope: !7374)
!7384 = !DILocation(line: 231, column: 46, scope: !7374)
!7385 = !DILocation(line: 228, column: 2, scope: !7374)
!7386 = !{i64 2147807598, i64 2147807672}
!7387 = !DILocation(line: 233, column: 9, scope: !7374)
!7388 = !DILocation(line: 234, column: 1, scope: !7374)
!7389 = !DILocation(line: 233, column: 2, scope: !7374)
!7390 = distinct !DISubprogram(name: "gate_vma_name", scope: !3, file: !3, line: 278, type: !1835, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7391)
!7391 = !{!7392}
!7392 = !DILocalVariable(name: "vma", arg: 1, scope: !7390, file: !3, line: 278, type: !1749)
!7393 = !DILocation(line: 278, column: 57, scope: !7390)
!7394 = !DILocation(line: 280, column: 2, scope: !7390)
!7395 = distinct !DISubprogram(name: "pti_set_user_pgtbl", scope: !6733, file: !6733, line: 903, type: !7396, scopeLine: 904, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7398)
!7396 = !DISubroutineType(types: !7397)
!7397 = !{!4828, !4827, !4828}
!7398 = !{!7399, !7400}
!7399 = !DILocalVariable(name: "pgdp", arg: 1, scope: !7395, file: !6733, line: 903, type: !4827)
!7400 = !DILocalVariable(name: "pgd", arg: 2, scope: !7395, file: !6733, line: 903, type: !4828)
!7401 = !DILocation(line: 903, column: 47, scope: !7395)
!7402 = !DILocation(line: 903, column: 59, scope: !7395)
!7403 = !DILocation(line: 905, column: 6, scope: !7395)
!7404 = !DILocation(line: 905, column: 7, scope: !7405)
!7405 = distinct !DILexicalBlock(scope: !7395, file: !6733, line: 905, column: 6)
!7406 = !DILocation(line: 906, column: 10, scope: !7405)
!7407 = !DILocation(line: 906, column: 3, scope: !7405)
!7408 = !DILocation(line: 907, column: 30, scope: !7395)
!7409 = !DILocation(line: 907, column: 9, scope: !7395)
!7410 = !DILocation(line: 907, column: 2, scope: !7395)
!7411 = !DILocation(line: 908, column: 1, scope: !7395)
!7412 = distinct !DISubprogram(name: "_static_cpu_has", scope: !7413, file: !7413, line: 173, type: !7414, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7416)
!7413 = !DIFile(filename: "./arch/x86/include/asm/cpufeature.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90439827e3f106d11a8d96ab90603ff3")
!7414 = !DISubroutineType(types: !7415)
!7415 = !{!901, !105}
!7416 = !{!7417, !7418, !7419}
!7417 = !DILocalVariable(name: "bit", arg: 1, scope: !7412, file: !7413, line: 173, type: !105)
!7418 = !DILabel(scope: !7412, name: "t_yes", file: !7413, line: 187)
!7419 = !DILabel(scope: !7412, name: "t_no", file: !7413, line: 189)
!7420 = !DILocation(line: 173, column: 49, scope: !7412)
!7421 = !DILocation(line: 183, column: 24, scope: !7412)
!7422 = !DILocation(line: 184, column: 30, scope: !7412)
!7423 = !DILocation(line: 184, column: 34, scope: !7412)
!7424 = !DILocation(line: 184, column: 26, scope: !7412)
!7425 = !DILocation(line: 185, column: 70, scope: !7412)
!7426 = !DILocation(line: 185, column: 74, scope: !7412)
!7427 = !DILocation(line: 185, column: 25, scope: !7412)
!7428 = !DILocation(line: 175, column: 2, scope: !7412)
!7429 = !{i64 2149423511, i64 2149423544, i64 2149423550, i64 2149423566, i64 2149423585, i64 2149423616, i64 2149424569, i64 2149423158, i64 2149424575, i64 2149424623, i64 2149424687, i64 2149424751, i64 2149424808, i64 2149425015, i64 2149425063, i64 2149425127, i64 2149425191, i64 2149425248, i64 2149423276, i64 2149423301, i64 2149425458, i64 2149425586, i64 2149425519, i64 2149425600, i64 2149425614, i64 2149425730, i64 2149425675, i64 2149425744, i64 2149423435, i64 1937932, i64 1937972, i64 1937981, i64 1938031, i64 1938052, i64 1938072}
!7430 = !DILocation(line: 187, column: 1, scope: !7412)
!7431 = !DILocation(line: 188, column: 2, scope: !7412)
!7432 = !DILocation(line: 189, column: 1, scope: !7412)
!7433 = !DILocation(line: 190, column: 2, scope: !7412)
!7434 = !DILocation(line: 191, column: 1, scope: !7412)
!7435 = !DISubprogram(name: "__pti_set_user_pgtbl", scope: !6733, file: !6733, line: 896, type: !7396, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7436 = distinct !DISubprogram(name: "pgd_page_vaddr", scope: !6733, file: !6733, line: 1137, type: !7437, scopeLine: 1138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7439)
!7437 = !DISubroutineType(types: !7438)
!7438 = !{!51, !4828}
!7439 = !{!7440}
!7440 = !DILocalVariable(name: "pgd", arg: 1, scope: !7436, file: !6733, line: 1137, type: !4828)
!7441 = !DILocation(line: 1137, column: 50, scope: !7436)
!7442 = !DILocation(line: 1139, column: 24, scope: !7436)
!7443 = !DILocation(line: 1139, column: 9, scope: !7436)
!7444 = !DILocation(line: 1139, column: 2, scope: !7436)
!7445 = distinct !DISubprogram(name: "p4d_index", scope: !6733, file: !6733, line: 1124, type: !7446, scopeLine: 1125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7448)
!7446 = !DISubroutineType(types: !7447)
!7447 = !{!51, !51}
!7448 = !{!7449}
!7449 = !DILocalVariable(name: "address", arg: 1, scope: !7445, file: !6733, line: 1124, type: !51)
!7450 = !DILocation(line: 1124, column: 53, scope: !7445)
!7451 = !DILocation(line: 1126, column: 10, scope: !7445)
!7452 = !DILocation(line: 1126, column: 18, scope: !7445)
!7453 = !DILocation(line: 1126, column: 35, scope: !7445)
!7454 = !DILocation(line: 1126, column: 48, scope: !7445)
!7455 = !DILocation(line: 1126, column: 34, scope: !7445)
!7456 = !DILocation(line: 1126, column: 32, scope: !7445)
!7457 = !DILocation(line: 1126, column: 2, scope: !7445)
!7458 = distinct !DISubprogram(name: "p4d_pgtable", scope: !6733, file: !6733, line: 1102, type: !7459, scopeLine: 1103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7461)
!7459 = !DISubroutineType(types: !7460)
!7460 = !{!1871, !5877}
!7461 = !{!7462}
!7462 = !DILocalVariable(name: "p4d", arg: 1, scope: !7458, file: !6733, line: 1102, type: !5877)
!7463 = !DILocation(line: 1102, column: 40, scope: !7458)
!7464 = !DILocation(line: 1104, column: 18, scope: !7458)
!7465 = !DILocation(line: 1104, column: 2, scope: !7458)
!7466 = distinct !DISubprogram(name: "pud_index", scope: !6684, file: !6684, line: 79, type: !7446, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7467)
!7467 = !{!7468}
!7468 = !DILocalVariable(name: "address", arg: 1, scope: !7466, file: !6684, line: 79, type: !51)
!7469 = !DILocation(line: 79, column: 53, scope: !7466)
!7470 = !DILocation(line: 81, column: 10, scope: !7466)
!7471 = !DILocation(line: 81, column: 18, scope: !7466)
!7472 = !DILocation(line: 81, column: 32, scope: !7466)
!7473 = !DILocation(line: 81, column: 2, scope: !7466)
!7474 = distinct !DISubprogram(name: "p4d_pfn_mask", scope: !1764, file: !1764, line: 421, type: !6799, scopeLine: 422, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7475)
!7475 = !{!7476}
!7476 = !DILocalVariable(name: "p4d", arg: 1, scope: !7474, file: !1764, line: 421, type: !5877)
!7477 = !DILocation(line: 421, column: 43, scope: !7474)
!7478 = !DILocation(line: 424, column: 2, scope: !7474)
!7479 = distinct !DISubprogram(name: "pud_pgtable", scope: !6733, file: !6733, line: 1061, type: !7480, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7482)
!7480 = !DISubroutineType(types: !7481)
!7481 = !{!1864, !1872}
!7482 = !{!7483}
!7483 = !DILocalVariable(name: "pud", arg: 1, scope: !7479, file: !6733, line: 1061, type: !1872)
!7484 = !DILocation(line: 1061, column: 40, scope: !7479)
!7485 = !DILocation(line: 1063, column: 18, scope: !7479)
!7486 = !DILocation(line: 1063, column: 2, scope: !7479)
!7487 = distinct !DISubprogram(name: "pmd_index", scope: !6684, file: !6684, line: 71, type: !7446, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7488)
!7488 = !{!7489}
!7489 = !DILocalVariable(name: "address", arg: 1, scope: !7487, file: !6684, line: 71, type: !51)
!7490 = !DILocation(line: 71, column: 53, scope: !7487)
!7491 = !DILocation(line: 73, column: 10, scope: !7487)
!7492 = !DILocation(line: 73, column: 18, scope: !7487)
!7493 = !DILocation(line: 73, column: 32, scope: !7487)
!7494 = !DILocation(line: 73, column: 2, scope: !7487)
!7495 = distinct !DISubprogram(name: "pud_pfn_mask", scope: !1764, file: !1764, line: 437, type: !6846, scopeLine: 438, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7496)
!7496 = !{!7497}
!7497 = !DILocalVariable(name: "pud", arg: 1, scope: !7495, file: !1764, line: 437, type: !1872)
!7498 = !DILocation(line: 437, column: 43, scope: !7495)
!7499 = !DILocation(line: 439, column: 6, scope: !7500)
!7500 = distinct !DILexicalBlock(scope: !7495, file: !1764, line: 439, column: 6)
!7501 = !DILocation(line: 439, column: 26, scope: !7500)
!7502 = !DILocation(line: 439, column: 6, scope: !7495)
!7503 = !DILocation(line: 440, column: 3, scope: !7500)
!7504 = !DILocation(line: 442, column: 3, scope: !7500)
!7505 = !DILocation(line: 443, column: 1, scope: !7495)
!7506 = !DISubprogram(name: "native_set_fixmap", scope: !284, file: !284, line: 160, type: !7507, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7507 = !DISubroutineType(types: !7508)
!7508 = !{null, !7, !5882, !1763}
